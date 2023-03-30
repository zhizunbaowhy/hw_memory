import os.path
import re
from enum import Enum, auto

class BssReader:
    def __init__(self, fp):
        self.__fpath = fp
        self.__statements = list()

        with open(self.__fpath, 'rt', encoding='utf-8') as fp:
            statements = [s.strip() for s in fp.readlines() if len(s.strip()) != 0]
        
        self.data_section = list()

        data_section_start = False
        bss_section_start = False
        for s in statements:


            is__section_data = re.match(r"Disassembly of section .data",s)
            is__section_bss = re.match(r"Disassembly of section .bss",s)
            is__section_other = re.match(r"Disassembly of section",s)
            is__data_symbol = re.match(r"([0-9a-fA-F]*)\s*(<.*>)",s)
            is__data_detail = re.match(r"\s*([0-9a-fA-F]*)\:\s*([0-9a-fA-F]*)\s*(\S*)\s*(.*)",s)

            if is__section_data:
                self.data_section.append("this is data_section_head")
                data_section_start = True
                bss_section_start = False
            elif is__section_bss:
                self.data_section.append("this is bss_section_head")
                bss_section_start = True
                data_section_start = False
            elif is__section_other:
                bss_section_start = False
                data_section_start = False
            if data_section_start:
                if is__data_symbol:
                    self.data_section.append(("data_symbol",is__data_symbol.groups()))
                elif is__data_detail:
                    self.data_section.append(("data_data_detail",is__data_detail.groups()))



bread = BssReader(r"/Users/gugujixiao/workspace/project/HWMemory/Code/newCFG/hw-memory/benchmarks/objdump-D/-D manytest.asm")

for i in bread.data_section:
    print(i)