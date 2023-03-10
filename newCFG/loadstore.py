import re
from readfile import ASMFileReader,StatementType

class ReString:
    
    loadIns_pat = r"ldr｜ldp"
    storeIns_pat = r"str|stp"

class Load:

    __loadIns_cpat = re.compile(ReString.loadIns_pat)
    __storeIns_cpat = re.compile(ReString.storeIns_pat)
    
    def __init__(self):
        fileObj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")
        self.tokens = fileObj.statements
        self.tokens_len = len(self.tokens)

    def find_ins_load(self):
        load_tokens = self.find_ins(self.__loadIns_cpat)

        for i in load_tokens:
            print(i)
        return load_tokens
    
    def find_ins_store(self):
        store_tokens = self.find_ins(self.__storeIns_cpat)

        for i in store_tokens:
            print(i)
        return store_tokens
    
    def find_ins(self,re_pat):
        
        entries = list()

        stat_idx= 0
        stat_sum = self.tokens_len

        while stat_idx < stat_sum:
            stat_type,stat_details = self.tokens[stat_idx]
            if stat_type == StatementType.Instruction:
                is_loadIns = re.match(re_pat,stat_details[2])
                if is_loadIns:
                    entries.append((stat_type, stat_details))
            stat_idx += 1
            
        return entries
    
    def class_print(self):
        temp = self.findLoadIns()

        for i in temp:
            print(i)


test = Load()
test.find_ins_store()