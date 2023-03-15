import re
from readfile import ASMFileReader,StatementType

class ReString:

    #判断指令用的
    #一类指令
    ins_load_pat = r"ldr|ldp|lda|ldu"
    ins_store_pat = r"str|stp|stl|stu"
    ins_adrp_pat = r"adrp"
    ins_move_pat = r"mov"
    #具体指令
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
    
    
    def __init__(self,fileObj,cfgObj):

        #读文件的结果
        self.__fileObj = fileObj
        self.__tokens = self.__fileObj.statements
        self.__tokens_len = len(self.__tokens)
        self.__state_table = fileObj.statements_table
        #cfg建立之后得到的信息
        self.__cfgObj = cfgObj
        self.__block_info = self.__cfgObj.block_info
        #自己用到的或者是生成的
        self.__load_table = None
        self.__store_table = None
        self.__block_load_table = []
        self.__block_store_table = []
    

    def test_func(self):
        for i in self.__block_info.items():
            print(i)
    
    
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
        if len(self.__block_load_table) == 0:
            self.__build_block_load_table()
        return self.__block_load_table
    
    @property
    def block_store_table(self):
        if len(self.__block_store_table) == 0:
            self.__build_block_store_table()
        return self.__block_store_table




    def __build_load_table(self):
        self.__load_table = self.__find_ins(self.__ins_load_cpat)

    
    def __build_store_table(self):
        self.__store_table = self.__find_ins(self.__ins_store_cpat)
    
    
    def __build_block_load_table(self):
        entries = list()
        for k,v in self.__block_info.items():
            res = self.__find_ins_range(v[0],v[1],self.__ins_load_cpat)
            for i in res:
                entries.append((k,i))
        self.__block_load_table = entries
            


    def __build_block_store_table(self):
        entries = list()
        for k,v in self.__block_info.items():
            res = self.__find_ins_range(v[0],v[1],self.__ins_store_cpat)
            for i in res:
                entries.append((k,i))
        self.__block_store_table = entries

    def __find_ins(self,re_pat):
        
        entries = list()
        
        stat_idx= 1
        stat_sum = self.__tokens_len

        entries = self.__find_ins_range(stat_idx,stat_sum,re_pat)
            
        return entries
    
    
    def __find_ins_range(self,head,end,re_pat):
        entries = list()
        
        stat_idx= head - 1
        stat_sum = end
        
        while stat_idx < stat_sum:
            stat_type,stat_details,stat_line = self.__state_table[stat_idx]
            if stat_type == StatementType.Instruction:
                is_ins = re.match(re_pat,stat_details[2])
                if is_ins:
                    entries.append((stat_type,stat_details,stat_line))
            stat_idx += 1
            
        return entries
    




    def __addr_backtrace(self):
        i = 1

    def __loadstore_operator_which_idx(self,stat_details):
        
        target_stat_details = stat_details
        target_stat_details_ins = stat_details[2]

        is_ldp = re.match(self.__ins_ldp_cpat,target_stat_details_ins)
        is_stp = re.match(self.__ins_stp_cpat,target_stat_details_ins)

        if is_ldp:
            target_idx = 5
        elif is_stp:
            target_idx = 5
        else:
            target_idx = 4
        return target_idx

    def instr_operator_num(self,stat_details):
        target_stat_details = stat_details
        if target_stat_details[3] == None:
            return 0
        elif  target_stat_details[4] == None:
            return 1
        elif  target_stat_details[5] == None:
            return 2
        elif  target_stat_details[6] == None:
            return 3


    def __addr_find_range(self,startline,endline,targetline):
        
        #因为是从后往前找，所以需要反一下
        find_idx = endline 
        find_end = startline
        res = [None,False,"don't know"]


        target_stat_details = self.__state_table[targetline][1]
        target_operator_idx = self.__loadstore_operator_which_idx(target_stat_details)
        target_operator = target_stat_details[target_operator_idx]

        is_offset = re.match(self.__operator_offset_cpat,target_operator)
        is_bracket = re.match(self.__operator_bracket_cpat,target_operator)

        #说明是立即数
        if is_offset:
            res = [target_operator,True,"offset"]
        #有括号，说明是寄存器间接寻址或者寄存器变址寻址
        if is_bracket:
            res = [None,True,"bracketAddr"]
        #剩下的应该算是寄存器寻址
        else:
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

    def __addr_proc_move(self,stat_details):
        ins_statment = stat_details
        temp_addr = None
        is_final_addr = False
        addr_type = None
        
        is_addr_sp = re.match(self.__addr_sp_cpat,ins_statment[4])
        
        if is_addr_sp:
            temp_addr = is_addr_sp.group()
            is_final_addr = True
            addr_type = "local"
        else:
            temp_addr = ins_statment[4]
            is_final_addr = False

        return [temp_addr,is_final_addr,addr_type]
    
    def __addr_proc_adrp(self,stat_details):
        ins_statment = stat_details
        temp_addr = None
        is_final_addr = False
        addr_type = None

        is_addr_adrp = re.match(self.__addr_adrp_cpat,ins_statment[4])
        temp_addr = is_addr_adrp.group()
        addr_type = "global"
        is_final_addr = True

        return [temp_addr,is_final_addr,addr_type]
        


    
    
    

