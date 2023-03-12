import re
from readfile import ASMFileReader,StatementType

class ReString:

    #判断指令用的
    ins_load_pat = r"ldr|ldp"
    ins_store_pat = r"str|stp"
    ins_adrp_pat = r"adrp"
    ins_move_pat = r"mov"

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
    addr_sp_pat = r"sp|\[sp\]|\[sp\s*\,\s*\#(?:-)?[0-9a-fA-F]*hua shu]!?"

    

class LoadStore:

    #ins
    __ins_load_cpat = re.compile(ReString.ins_load_pat)
    __ins_store_cpat = re.compile(ReString.ins_store_pat)
    __ins_adrp_cpat = re.compile(ReString.ins_adrp_pat)
    __ins_move_cpat = re.compile(ReString.ins_move_pat)

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
        self.__load_table = None
        self.__store_table = None
    

    def test_func(self) -> list[str,bool]:
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
                is_target = re.match(self.__ins_move_cpat,stat_details[2])
                if is_target:
                    entries.append((stat_type, stat_len,stat_details))
            stat_idx += 1
            
        return entries
    
    
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
                is_loadIns = re.match(re_pat,stat_details[2])
                if is_loadIns:
                    entries.append((stat_type, stat_len,stat_details))
            stat_idx += 1
            
        return entries
    

    def backtrace(self):
        i = 1


    def findAddress(self,head,end,stat_details):
        find_idx ,find_end = head,end
        while find_idx < find_end:
            find_idx += 1
    

    def processAddress(self,stat_details) ->list[str,bool]:

        ins_statment = stat_details
        temp_addr = None
        is_final_addr = False

        is_adrp = re.match(self.__ins_adrp_cpat,ins_statment[2])
        is_move = re.match(self.__ins_move_cpat,ins_statment[2])

        if is_adrp:
            is_addr_adrp = re.match(self.__addr_adrp_cpat,ins_statment[4])
            temp_addr = is_addr_adrp.group()
            is_final_addr = True
        
        if is_move:
            is_addr_sp = re.match(self.__addr_sp_cpat,ins_statment[4])
            if is_addr_sp:
                temp_addr = is_addr_sp.group()
                is_final_addr = True
            else:
                temp_addr = ins_statment[4]
                is_final_addr = False
                
        return [temp_addr,is_final_addr]
    


    
    
    


