import re
from enum import Enum, auto
from typing import Tuple, Optional

# 标记语句类型用的枚举类
class AddressMode(Enum):
    
    IMM_OFFSET = auto()
    REG_OFFSET = auto()
    REG_SHIFT = auto()
    IMM_BEF = auto()
    REF_BEF = auto()
    REG_SHIFT_BEF = auto()
    IMM_AFTER  = auto()
    REG_AFTER  = auto()
    REG_SHIFT_AFTER  = auto()

# 标记语句类型用的枚举类
class InsType(Enum):
    
    BRANCH = auto()
    LOAD = auto()
    STORE = auto()
    ADR = auto()
    MOV = auto()
    OTHER = auto()

class Re_Ins_Type:
    

    #去除地址中的0
    addr_nozero_pat = r"(0*)([1-9a-fA-F][0-9a-fA-F]*)"
    # 区分指令类型
    branch_pat = r"b|b.|bl|bc.|cbnz|cbz|tbnz|tbz|ret"\
                r"|bx|blx|blr|br|brk|hlt"
    branch_original_pat = r"b|b.|bl|bc."
    branch_reg_pat = r"cbnz|cbz|tbnz|tbz"

    load_pat = r"ldr|ldp|lda|ldu" 
    store_pat = r"str|stp|stl|stu"
    lsp_pat = r"ldp|stp"

    adrp_pat = r"adrp"
    move_pat = r"mov"

class RE_Operand_Type:
    #branch，看上去和adrp一样
    operand_branch_access_pat = r"([0-9a-fA-F]*)\s*(<.*>)"
    #adrp
    operand_adrp_access_pat = r"([0-9a-fA-F]*)\s*(<.*>)"
    #ls判断流程
    #特殊情况
    ls_bracket_pat = r"\[.*\]"
    ls_bracketUpdate_pat = r"\[.*\]!"
    ls_bracket_sp_pat = r"\[[\s\S]*sp[\s\S]*\]"
    ls_bracket_reg_pat = r"(\[((?:x|w)\d*)\])"
    ls_sp_pat = r"(sp)"
    ls_immOffset_pat = r"\#(?:\d*|0x[0-9a-fA-F]*)"
    ls_reg_pat = r"((?:x|w)\d*)"
    ls_shift_pat = r"(LSL|LSR|ASR|ROR)"
    #偏移寻址
    ls_immeOffset_pat = r"\[((?:x|w)\d*)\s*\,\s*\#(-?)((?:\d*|0x[0-9a-fA-F]*))\]"
    ls_regOffset_pat = r"\[((?:x|w)\d*)\s*\,\s*(-?)((?:x|w)\d*)\]"
    ls_regShift_pat = r"\[((?:x|w)\d*)\s*\,\s*(-?)((?:x|w)\d*)\s*\,\s*(LSL|LSR|ASR|ROR)\s*\#(-?)((?:\d*|0x[0-9a-fA-F]*))\]"
    #先更新寻址
    ls_immeBef_pat = r"\[((?:x|w)\d*)\s*\,\s*\#(-?)((?:\d*|0x[0-9a-fA-F]*))\]!"
    ls_regBef_pat = r"\[((?:x|w)\d*)\s*\,\s*(-?)((?:x|w)\d*)\]!"
    ls_regShiftBef_pat = r"\[((?:x|w)\d*)\s*\,\s*(-?)((?:x|w)\d*)\s*\,\s*(LSL|LSR|ASR|ROR)\s*\#(-?)((?:\d*|0x[0-9a-fA-F]*))\]!"

class Symbol:
    __addr_nozero_cpat = re.compile(Re_Ins_Type.addr_nozero_pat)


    def __init__(self,statment_dtl,line):
        tempaddr = statment_dtl[0]
        print(tempaddr)
        re_addr_nozero =re.match(self.__addr_nozero_cpat,tempaddr)
        tempaddr = re_addr_nozero.groups()
        self.addr_hex = tempaddr[1]
        self.addr = int(self.addr_hex,16)
        self.label = statment_dtl[1]
        self.line = line





class Ins:
    #编译指令
    __branch_cpat = re.compile(Re_Ins_Type.branch_pat)
    __branch_original_cpat = re.compile(Re_Ins_Type.branch_original_pat)
    __branch_reg_cpat = re.compile(Re_Ins_Type.branch_reg_pat)

    __load_cpat = re.compile(Re_Ins_Type.load_pat)
    __store_cpat = re.compile(Re_Ins_Type.store_pat)
    __lsp_cpat = re.compile(Re_Ins_Type.lsp_pat)

    __adrp_cpat = re.compile(Re_Ins_Type.adrp_pat)
    __move_cpat = re.compile(Re_Ins_Type.move_pat)
    #编译操作数
    __operand_branch_access_cpat = re.compile(RE_Operand_Type.operand_branch_access_pat)
    __operand_adrp_access_cpat = re.compile(RE_Operand_Type.operand_adrp_access_pat)

    __ls_bracket_cpat = re.compile(RE_Operand_Type.ls_bracket_pat)
    __ls_bracketUpdate_cpat = re.compile(RE_Operand_Type.ls_bracketUpdate_pat)
    __ls_bracket_sp_cpat = re.compile(RE_Operand_Type.ls_bracket_sp_pat)
    __ls_bracket_reg_cpat = re.compile(RE_Operand_Type.ls_bracket_reg_pat)
    __ls_sp_cpat = re.compile(RE_Operand_Type.ls_sp_pat)
    __ls_immOffset_cpat = re.compile(RE_Operand_Type.ls_immOffset_pat)
    __ls_reg_cpat = re.compile(RE_Operand_Type.ls_reg_pat)
    __ls_shift_cpat = re.compile(RE_Operand_Type.ls_shift_pat)

    __ls_immeOffset_cpat = re.compile(RE_Operand_Type.ls_immeOffset_pat)
    __ls_regOffset_cpat = re.compile(RE_Operand_Type.ls_regOffset_pat)
    __ls_regShift_cpat = re.compile(RE_Operand_Type.ls_regShift_pat)
    __ls_immeBef_cpat = re.compile(RE_Operand_Type.ls_immeBef_pat)
    __ls_regBef_cpat = re.compile(RE_Operand_Type.ls_regBef_pat)
    __ls_regShiftBef_cpat = re.compile(RE_Operand_Type.ls_regShiftBef_pat)
    


    def __init__(self,statment_dtl,line):

        self.dtl = statment_dtl
        self.addr_hex = statment_dtl[0]
        self.addr = int(self.addr_hex,16)
        self.opcode = statment_dtl[1]
        self.ins = statment_dtl[2]
        self.stat_line = line
       
        self.operand_num = 0
        self.type = None
        self.is_handle = False

        self.branch_addr_hex = None
        self.branch_addr = None
        self.branch_label = None
        
        self.is_lsp = False
        self.is_sp = False      
        self.ls_reg = None
        self.ls_addrMode = None
           
        self.adrp_addr_hex = None
        self.adrp_addr = None
        self.adrp_label = None
        
        self.move_from = None
        self.move_to = None

        self.instr_operand_num()
        self.ins_type()
        
    
    def instr_operand_num(self):
        
        if self.dtl[3] == None:
            self.operand_num = 0
        elif  self.dtl[4] == None:
            self.operand_num = 1
        elif  self.dtl[5] == None:
            self.operand_num = 2
        elif  self.dtl[6] == None:
            self.operand_num = 3
    
    def ins_type(self):
        
        re_branch = re.match(self.__branch_cpat,self.ins)
        re_load = re.match(self.__load_cpat,self.ins)
        re_store = re.match(self.__store_cpat,self.ins)
        re_adrp = re.match(self.__adrp_cpat,self.ins)
        re_move = re.match(self.__move_cpat,self.ins)
        
        if re_branch:
            self.type = InsType.BRANCH
            self.__branch_proc()
        elif re_load:
            self.type = InsType.LOAD
            self.__ls_proc()
        elif re_store:
            self.type = InsType.STORE
            self.__ls_proc()
        elif re_adrp:
            self.type = InsType.ADR
            self.__adrp_proc()
        elif re_move:
            self.type = InsType.MOV
            print(self.is_move)
            self.__move_proc()
        else:
            self.is_other = True
            self.type = InsType.OTHER
    
    


    def __branch_proc(self):
        print(self.instr_operand_num)
        if self.operand_num == 0:
            print("here")
            if self.ins == "ret":
                self.branch_addr_hex = "return"
                self.branch_addr = "return"
                self.branch_label = "return"
                self.is_handle = True
            else :
                self.is_handle = False
        elif self.operand_num == 1:
            re_branch_original = re.match(self.__branch_original_cpat,self.ins)
            if re_branch_original:
                re_branch_addr = re.match(self.__operand_branch_access_cpat,self.dtl[3])
                temp = re_branch_addr.groups()
                self.branch_addr_hex = temp[0]
                self.branch_addr = int(self.branch_addr_hex,16)
                self.branch_label = temp[1]
                self.is_handle = True
            else:
                self.is_handle = False
        elif self.operand_num == 2:
            re_branch_reg = re.match(self.__branch_reg_cpat,self.ins)
            if re_branch_reg:
                re_branch_addr = re.match(self.__operand_branch_access_cpat,self.dtl[4])
                temp = re_branch_addr.groups()
                self.branch_addr_hex = temp[0]
                self.branch_addr = int(self.branch_addr_hex,16)
                self.branch_label = temp[1]
                self.is_handle = True
            else:
                self.is_handle = False


    def __ls_proc(self):
        re_lsp = re.match(self.__lsp_cpat,self.ins)

        if re_lsp:
            self.is_lsp = True
        else:
            pass
    


    
    def __adrp_proc(self):
        re_adrp_addr = re.match(self.__operand_adrp_access_cpat,self.dtl[4])
        temp = re_adrp_addr.groups()
        self.adrp_addr_hex = temp[0]
        self.adrp_addr = int(self.adrp_addr_hex,16)
        self.adrp_label = temp[1]
        self.is_handle = True



    def __move_proc(self):
        self.move_to = self.dtl[3]
        self.move_from = self.dtl[4]
        self.is_handle = True
        
        
        
        
        
        
        
