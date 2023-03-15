import re
from enum import Enum, auto
from typing import Tuple, Optional
import warnings
import os.path


# TODO(GuGuJi):异常处理流程

# 标记语句类型用的枚举类
class StatementType(Enum):
    
    Instruction = auto()
    Symbol = auto()
    Section = auto()

# 正则表达式
class ReString:
    
    # 指令识别的第一行是地址+指令，往后是每一行都是一位操作数，如果不存在操作数，就会匹配成None
    re_operator = r"([0-9a-fA-F]*\s*<.*>|(?:x|w)\d*|\[.*\]!?|\#0x[0-9a-fA-F]*|\#\d*|sp)?"
    instruction_pat = r"\s*([0-9a-fA-F]*):\s*([0-9a-fA-F]*)\s*([\w\.]*)" \
                    r"(?:\s*)?"\
                    r"([0-9a-fA-F]*\s*<.*>|(?:x|w)\d*|\[.*\]!?|\#0x[0-9a-fA-F]*|\#\d*|sp)?" \
                    r"(?:\,\s*)?"\
                    r"([0-9a-fA-F]*\s*<.*>|(?:x|w)\d*|\[.*\]!?|\#0x[0-9a-fA-F]*|\#\d*|sp)?" \
                    r"(?:\,\s*)?"\
                    r"([0-9a-fA-F]*\s*<.*>|(?:x|w)\d*|\[.*\]!?|\#0x[0-9a-fA-F]*|\#\d*|sp)?" \
                    r"(?:\,\s*)?"\
                    r"([0-9a-fA-F]*\s*<.*>|(?:x|w)\d*|\[.*\]!?|\#0x[0-9a-fA-F]*|\#\d*|sp)?" 
    symbol_pat = r"([0-9a-fA-F]{16})\s*(?:<(.*)>)"
    section_pat = r"Disassembly\s*of\s*section\s*(\.\s*\w*)"


class ASMFileReader:
    
    # 一次编译，全局共享
    __instruction_cpat = re.compile(ReString.instruction_pat)
    __symbol_cpat = re.compile(ReString.symbol_pat)
    __section_cpat = re.compile(ReString.section_pat)    
    
    def __init__(self, file_path: str):
        
        self.__fp = file_path
           
        self.__stat_tokens = tuple()#Tuple(Tuple（tokens append进来的玩意）(StatementType, Tuple(groups返回的)(Optional(str), ...)))
        self.__stat_tabl = None
        self.__symbol_tabl = None#形如(('00000000004004d0', '_init'), 2, 7)，其中第一个是信息，第二个是在__stat_tokens的顺序，第三个是symbol的大小
        self.__section_tabl = None#形如(('.init',), 1, 8)，意义同上
        
        with open(file_path, 'rt', encoding='utf-8') as f:
            tokens = list()
            stat_idx = 0
            for stat in f.readlines():
                if len(stat.strip()) == 0:
                    continue    

                is_instruction = re.match(self.__instruction_cpat,stat)
                is_symbol = re.match(self.__symbol_cpat,stat)
                is_section = re.match(self.__section_cpat,stat)

                ty = [is_instruction is not None, is_symbol is not None, is_section is not None]

                stat_idx += 1
                if is_instruction:
                    tokens.append((StatementType.Instruction, is_instruction.groups()))
                elif is_symbol:
                    tokens.append((StatementType.Symbol, is_symbol.groups()))
                elif is_section:
                    tokens.append((StatementType.Section, is_section.groups()))
            
            self.__stat_tokens = tuple(tokens)
            
            
            self.__build_section_table()
            self.__build_symbol_table()
            #print(self.__section_tabl)
            #print(self.__symbol_tabl)
            #print(self.__stat_tokens)
            #for i in self.__symbol_tabl:
            #    if(i[0][1] == "main"):
            #        print(i)
    
    @property
    def file_path(self):
        return self.__fp

    @property
    def statements(self):
        return self.__stat_tokens
    
    @property
    def instructions(self):
        return [o[1] for o in self.__stat_tokens if o[0] == StatementType.Instruction]

    @property
    def sections(self):
        return [o[1] for o in self.__stat_tokens if o[0] == StatementType.Section]

    @property
    def symbols(self):
        return [o[1] for o in self.__stat_tokens if o[0] == StatementType.Symbol]
    
    @property
    def statements_table(self):
        if self.__stat_tabl is None:
            self.__build_statment_table()
        return self.__stat_tabl
    
    @property
    def section_table(self) -> Tuple[tuple, int, int]:
        if self.__section_tabl is None:
            self.__build_section_table()
        return self.__section_tabl

    @property
    def symbol_table(self) -> Tuple[tuple, int, int]:
        if self.__symbol_tabl is None:
            self.__build_symbol_table()
        return self.__symbol_tabl
    
    def find_addr(self,addr):
        stat_dtl = None
        for i in self.__stat_tabl:
            if addr == i[1][0]:
                stat_dtl = i
        return stat_dtl

    def __build_statment_table(self):
        entries = list()
        
        stat_idx= 0
        stat_sum = len(self.__stat_tokens)

        while stat_idx < stat_sum:
            stat_type,stat_details = self.__stat_tokens[stat_idx]

            stat_idx += 1
            
            entries.append((stat_type,stat_details,stat_idx))    
        
        self.__stat_tabl = tuple(entries)

    def __build_section_table(self):
        
        entries = list()
        
        stat_idx= 0
        stat_sum = len(self.__stat_tokens)
        
        while stat_idx < stat_sum:
            
            stat_type,stat_details = self.__stat_tokens[stat_idx]

            if stat_type == StatementType.Section:
                
                new_section = stat_details
                section_begin = stat_idx + 1
                section_len = 0

                stat_idx += 1
                
                while stat_idx < stat_sum:
                    
                    next_type,next_dtl = self.__stat_tokens[stat_idx]
                    
                    if next_type == StatementType.Section:
                        break
                    
                    section_len += 1
                    stat_idx += 1
                
                entries.append((new_section, section_begin, section_len))    
        
        self.__section_tabl = tuple(entries)
    

    def __build_symbol_table(self):
        entries = list()
        
        stat_idx= 0
        stat_sum = len(self.__stat_tokens)

        while stat_idx < stat_sum:

            stat_type,stat_details = self.__stat_tokens[stat_idx]

            if stat_type == StatementType.Section:

                stat_idx += 1

            elif stat_type == StatementType.Symbol:

                paralleled_symbol = list()

                while stat_idx < stat_sum:

                    statType,statDtl = self.__stat_tokens[stat_idx]
                    
                    if statType == StatementType.Symbol:

                        paralleled_symbol.append(statDtl)
                        stat_idx+=1

                    elif statType == StatementType.Instruction or statType == StatementType.Section or statType == StatementType.InlineData:
                        break
                
                symbol_begin = stat_idx
                symbol_len = 0

                while stat_idx < stat_sum:

                    next_type,next_dtl = self.__stat_tokens[stat_idx]

                    if next_type == StatementType.Symbol or next_type == StatementType.Section:
                        break

                    symbol_len += 1
                    stat_idx += 1

                entries.extend([(s, symbol_begin, symbol_len) for s in paralleled_symbol])
        
        self.__symbol_tabl = tuple(entries)


    

    



