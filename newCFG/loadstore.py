import re
from readfile import ASMFileReader,StatementType

class ReString:

    #判断指令用的
    ins_load_pat = r"ldr|ldp"
    ins_store_pat = r"str|stp"
    ins_adrp_pat = r"adrp"

    #判断操作数属于什么类型用的
    #特殊类型的操作数
    operator_adrpAddr_pat = r"[0-9a-fA-F]*\s*<.*>"
    #独立匹配的
    operator_generalReg_pat = r"(?:x|w)\d*"
    operator_offset_pat = r"\#(?:\d*|0x[0-9a-fA-F]*)"
    operator_sp_pat = r"\#(sp)"
    #带括号的
    operator_bracket_pat = r"\[.*\]!?"


    #特殊类型的匹配关系
    addr_adrp = r"([0-9a-fA-F]*)\s"#匹配adrp的具体地址

    

class LoadStore:

    #ins
    __ins_load_cpat = re.compile(ReString.ins_load_pat)
    __ins_store_cpat = re.compile(ReString.ins_store_pat)
    __ins_adrp_cpat = re.compile(ReString.ins_adrp_pat)
    #operator
    __operator_adrpAddr_cpat = re.compile(ReString.operator_adrpAddr_pat)
    __operator_generalReg_cpat = re.compile(ReString.operator_generalReg_pat)
    __operator_offset_cpat = re.compile(ReString.operator_offset_pat)
    __operator_sp_cpat = re.compile(ReString.operator_sp_pat)
    __operator_bracket_cpat = re.compile(ReString.operator_bracket_pat)
    #special
    __addr_adrp_cpat = re.compile(ReString.addr_adrp)
    
    
    def __init__(self,fileObj):

        #fileObj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")
        self.tokens = fileObj.statements
        self.tokens_len = len(self.tokens)
        self.__load_table = None
        self.__store_table = None
    
    
    def test_func(self):
        entries = list()
        
        stat_idx= 0
        stat_sum = self.tokens_len
        
        while stat_idx < stat_sum:
            stat_type,stat_details = self.tokens[stat_idx]
            stat_len = 0
            for i in stat_details:
                if i == None:
                    break
                stat_len += 1
            if stat_type == StatementType.Instruction:
                is_target = re.match(self.__ins_adrp_cpat,stat_details[2])
                if is_target:
                    entries.append((stat_type, stat_len,stat_details))
            stat_idx += 1
            
        return entries


    def processAddress(self,stat_details):

        ins_statment = stat_details
        temp_addr = None
        is_final_addr = False

        is_adrp = re.match(self.__ins_adrp_cpat,ins_statment[2])

        if is_adrp:
            is_adrp_driectAddr = re.match(self.__addr_adrp_cpat,ins_statment[4])
            print(is_adrp_driectAddr)
            print(ins_statment[4])
            temp_addr = is_adrp_driectAddr.group()
            is_final_addr = True
        print(is_final_addr)
        return temp_addr
    
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
        self.__load_table = self.find_ins(self.__ins_load_cpat)

    
    def __build_store_table(self):
        self.__store_table = self.find_ins(self.__ins_store_cpat)
    

    def find_ins(self,re_pat):
        
        entries = list()
        
        stat_idx= 0
        stat_sum = self.tokens_len
        
        while stat_idx < stat_sum:
            stat_type,stat_details = self.tokens[stat_idx]
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
    

    def findAddress(self):
        i = 1
    

    def backtrace(self):
        i = 1
    


    
    
    


