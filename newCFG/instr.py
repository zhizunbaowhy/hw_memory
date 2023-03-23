import re
from typing import Tuple, Optional


# 正则表达式
class ins_type:
    
    # 区分指令类型
    branch_pat = r"b|b.|bl|bc."
    load_pat = r"ldr|ldp|lda|ldu" 
    store_pat = r"str|stp|stl|stu"
    adrp_pat = r"adrp"
    move_pat = r"mov"

class operand_type:
    #branch，看上去和adrp一样
    operand_branch_access_pat = r"([0-9a-fA-F]*)\s*(<.*>)"
    #adrp
    operand_adrp_access_pat = r"([0-9a-fA-F]*)\s*(<.*>)"
    #带括号的
    operand_bracket_pat = r"\[.*\]!?"
    operand_bracket_sp_pat = r"\[[\s\S]*sp[\s\S]*\]!?"
    operand_bracket_simpleReg_pat = r"\[((?:x|w)\d*)\]!?"
    operand_bracket_regOffset_pat = r"\[((?:x|w)\d*)\s*\,\s*\#((?:\d*|0x[0-9a-fA-F]*))\]!?"
    operand_bracket_regdotreg_pat = r"\[((?:x|w)\d*)\s*\,\s*((?:x|w)\d*)\]!?"
    operand_bracket_regplusreg_pat = r"\[((?:x|w)\d*)\s*\+\s*((?:x|w)\d*)\]!?"

class isa:
    #编译指令
    __branch_cpat = re.compile(ins_type.branch_pat)
    __load_cpat = re.compile(ins_type.load_pat)
    __store_cpat = re.compile(ins_type.store_pat)
    __adrp_cpat = re.compile(ins_type.adrp_pat)
    __move_cpat = re.compile(ins_type.move_pat)
    #编译操作数
    __operand_branch_access_cpat = re.compile(operand_type.operand_branch_access_pat)
    __operand_adrp_access_cpat = re.compile(operand_type.operand_adrp_access_pat)
    


    def __init__(self,statment_dtl,line):

        self.addr = statment_dtl[0]
        self.opcode = statment_dtl[1]
        self.ins = statment_dtl[2]
        self.dtl = statment_dtl
        self.stat_line = line

        self.is_other = False

        self.is_branch = False
        self.branch_addr = None
        self.branch_label = None
        
        self.__is_load = False
        self.__is_store = False      
        self.__ls_reg = None
        self.__ls_addrMode = None
        
        self.is_adrp = False    
        self.adrp_addr = None
        self.adrp_label = None
        
        self.is_move = False
        self.move_from = None
        self.move_to = None

        self.ins_type()
    
    def ins_type(self):
        
        re_branch = re.match(self.__branch_cpat,self.ins)
        re_load = re.match(self.__load_cpat,self.ins)
        re_store = re.match(self.__store_cpat,self.ins)
        re_adrp = re.match(self.__adrp_cpat,self.ins)
        re_move = re.match(self.__move_cpat,self.ins)
        
        if re_branch:
            self.is_branch = True
            self.__branch_proc()
        elif re_load:
            self.__is_load = True
            self.__ls_proc()
        elif re_store:
            self.__is_store = True
            self.__ls_proc()
        elif re_adrp:
            self.is_adrp = True
            self.__adrp_proc()
        elif re_move:
            self.is_move = True
            print(self.is_move)
            self.__move_proc()
        else:
            self.is_other = True
    
    def __branch_proc(self):
        re_branch_addr = re.match(self.__operand_branch_access_cpat,self.dtl[3])
        print(self.dtl[3])
        print(re_branch_addr)
        temp = re_branch_addr.groups()
        self.branch_addr = temp[0]
        self.branch_label = temp[1]
    def __ls_proc(self):
        pass
    def __adrp_proc(self):
        re_adrp_addr = re.match(self.__operand_adrp_access_cpat,self.dtl[4])
        print(self.dtl[4])
        print(re_adrp_addr)
        temp = re_adrp_addr.groups()
        self.adrp_addr = temp[0]
        self.adrp_label = temp[1]

    def __move_proc(self):
        self.move_to = self.dtl[3]
        self.move_from = self.dtl[4]
        
        
        
        
        
        
        
