import re
from readfile import ASMFileReader,StatementType

class ReString:
    
    loadIns_pat = r"ldr|ldp"
    storeIns_pat = r"str|stp"

class LoadStore:

    __loadIns_cpat = re.compile(ReString.loadIns_pat)
    __storeIns_cpat = re.compile(ReString.storeIns_pat)
    
    def __init__(self,fileObj):

        #fileObj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")
        self.tokens = fileObj.statements
        self.tokens_len = len(self.tokens)
        self.__load_table = None
        self.__store_table = None

    def __build_load_table(self):
        
        self.__load_table = self.find_ins(self.__loadIns_cpat)

    
    def __build_store_table(self):

        self.__store_table = self.find_ins(self.__storeIns_cpat)

    

    def find_ins(self,re_pat):
        
        entries = list()
        
        stat_idx= 0
        stat_sum = self.tokens_len
        
        while stat_idx < stat_sum:
            stat_type,stat_details = self.tokens[stat_idx]
            if stat_type == StatementType.Instruction:
                is_loadIns = re.match(re_pat,stat_details[2])
                if is_loadIns:
                    entries.append((stat_type, "tag",stat_details))
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
    
    
    


