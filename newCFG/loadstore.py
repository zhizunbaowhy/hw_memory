import re
from readfile import ASMFileReader,StatementType

class ReString:

    #判断指令用的
    ins_load_pat = r"ldr|ldp"
    ins_store_pat = r"str|stp"
    ins_adrp_pat = r"adrp"
    ins_move_pat = r"mov"

    ins_ldp_pat = r"ldp"
    ins_stp_pat = r"stp"

    #判断操作数属于什么类型用的
    #特殊类型的操作数
    operator_adrpAddr_pat = r"[0-9a-fA-F]*\s*<.*>"
    #独立匹配的
    operator_generalReg_pat = r"(?:x|w)\d*"
    operator_offset_pat = r"\#(?:\d*|0x[0-9a-fA-F]*)"
    operator_sp_pat = r"sp"
    #带括号的
    operator_bracket_pat = r"\[.*\]!?"


    #特殊类型的匹配关系
    addr_adrp_pat = r"([0-9a-fA-F]*)\s"#匹配adrp的具体地址
    addr_sp_pat = r"sp|\[sp\]|\[sp\s*\,\s*\#(?:-)?[0-9a-fA-F]*]!?"

    

class LoadStore:

    #ins
    __ins_load_cpat = re.compile(ReString.ins_load_pat)
    __ins_store_cpat = re.compile(ReString.ins_store_pat)
    __ins_adrp_cpat = re.compile(ReString.ins_adrp_pat)
    __ins_move_cpat = re.compile(ReString.ins_move_pat)

    __ins_ldp_cpat = re.compile(ReString.ins_ldp_pat)
    __ins_stp_cpat = re.compile(ReString.ins_stp_pat)


    #operator
    __operator_adrpAddr_cpat = re.compile(ReString.operator_adrpAddr_pat)
    __operator_generalReg_cpat = re.compile(ReString.operator_generalReg_pat)
    __operator_offset_cpat = re.compile(ReString.operator_offset_pat)
    __operator_sp_cpat = re.compile(ReString.operator_sp_pat)
    __operator_bracket_cpat = re.compile(ReString.operator_bracket_pat)
    
    #special
    __addr_adrp_cpat = re.compile(ReString.addr_adrp_pat)
    __addr_sp_cpat = re.compile(ReString.addr_sp_pat)
    
    
    def __init__(self,fileObj):

        #fileObj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")
        self.__fileObj = fileObj
        self.__tokens = fileObj.statements
        self.__tokens_len = len(self.__tokens)
        self.__state_table = fileObj.statements_table
        self.__load_table = None
        self.__store_table = None
        self.__block_load_table = None
        self.__block_store_table = None
    

    def test_func(self):
        temp = self.__addr_find_range(2,6,6)
        return temp
    
    
    @property
    def load_table(self):
        if self.__load_table == None:
            self.__build_load_table()
        return self.__load_table
    
    @property
    def store_table(self):
        if self.__store_table == None:
            self.__build_store_table()
        return self.__store_table
    

    @property
    def block_load_table(self):
        if self.__block_load_table == None:
            self.__build_block_load_table()
        return self.__block_load_table
    
    @property
    def block_store_table(self):
        if self.__block_store_table == None:
            self.__build_block_store_table()
        return self.__block_store_table

    def __build_load_table(self):
        self.__load_table = self.__find_ins(self.__ins_load_cpat)

    
    def __build_store_table(self):
        self.__store_table = self.__find_ins(self.__ins_store_cpat)
    

    def __find_ins(self,re_pat):
        
        entries = list()
        
        stat_idx= 0
        stat_sum = self.__tokens_len
        
        while stat_idx < stat_sum:
            stat_type,stat_details = self.__tokens[stat_idx]
            stat_len = 0
            for i in stat_details:
                if i == None:
                    break
                stat_len += 1
            if stat_type == StatementType.Instruction:
                is_ins = re.match(re_pat,stat_details[2])
                if is_ins:
                    entries.append((stat_type, stat_len,stat_details))
            stat_idx += 1
            
        return entries
    

    def __build_block_load_table(self):
        pass

    def __build_block_store_table(self):
        pass


    def __addr_backtrace(self):
        i = 1

    def __stat_operator_which_idx(self,stat_details):
        
        target_idx = 4
        target_stat_details = stat_details
        target_stat_details_ins = stat_details[2]

        is_ldp = re.match(self.__ins_ldp_cpat,target_stat_details_ins)
        is_stp = re.match(self.__ins_stp_cpat,target_stat_details_ins)

        if is_ldp:
            target_idx = 5
        elif is_stp:
            target_idx = 5
        
        return target_idx


    def __addr_find_range(self,startline,endline,targetline):
        
        #因为是从后往前找，所以需要反一下
        find_idx = endline 
        find_end = startline
        
        res = [None,False]
        target_stat_details = self.__state_table[targetline][1]
        target_operator_idx = self.__stat_operator_which_idx(target_stat_details)
        target_operator = target_stat_details[target_operator_idx]
        print(target_stat_details)
        print(target_operator)

        while find_idx > find_end:

            find_stat_detail = self.__state_table[find_idx][1]
            find_stat_detail_operator = find_stat_detail[3]

            is_adrp = re.match(self.__ins_adrp_cpat,find_stat_detail[2])
            is_move = re.match(self.__ins_move_cpat,find_stat_detail[2])
            
            if find_stat_detail_operator == target_operator:
                if is_adrp:
                    res = self.__addr_proc_adrp(find_stat_detail)
                elif is_move:
                    res = self.__addr_proc_move(find_stat_detail)

            if res[1]:
                break
            
            find_idx -= 1
        return res

    def __addr_proc_move(self,stat_details) -> list[str,bool]:
        ins_statment = stat_details
        temp_addr = None
        is_final_addr = False
        
        is_addr_sp = re.match(self.__addr_sp_cpat,ins_statment[4])
        if is_addr_sp:
            temp_addr = is_addr_sp.group()
            is_final_addr = True
        else:
            temp_addr = ins_statment[4]
            is_final_addr = False

        return [temp_addr,is_final_addr]
    
    def __addr_proc_adrp(self,stat_details) -> list[str,bool]:
        ins_statment = stat_details
        temp_addr = None
        is_final_addr = False

        is_addr_adrp = re.match(self.__addr_adrp_cpat,ins_statment[4])
        temp_addr = is_addr_adrp.group()
        is_final_addr = True

        return [temp_addr,is_final_addr]
        


    
    
    


