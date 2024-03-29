# -*- coding: utf-8 -*-
"""
@Time       : 2023/3/23 19:22
@Author     : Juxin Niu (juxin.niu@outlook.com)
@FileName   : isa.py
@Description: 
"""
import re
from enum import Enum, auto
from typing import Sequence

class Re_LoadStore_Ins:
    
    #去除地址中的0
    addr_nozero_pat = r"(0*)([1-9a-fA-F][0-9a-fA-F]*)"
    # 区分指令类型
    loadstore_pat = r"ldr|ldp|lda|ldu|str|stp|stl|stu" 
    lsp_pat = r"ldp|stp"

    add_pat = r"add|sub"

class Re_LoadStore_Operand:
    #按照类型规整过的字符串
    reg_str = r"((?:(?:x|w|s|v|r|s|d|q)\d{1,2})|wzr|xzr|sp)"
    spacedot = r"\s*\,\s*"
    space = r"\s*"
    anyword = r"(.*)"
    immoffset_str = r"((?:[1-9]\d*)|(?:0x[0-9a-fA-F]*))"   
    
    #adrp
    operand_adrp_access_pat = r"([0-9a-fA-F]*)\s*(<.*>)"
    
    #特殊情况
    ls_split_pat = space+reg_str+spacedot+anyword
    ls_bracket_pat = r"\[.*\]"
    ls_bracketUpdate_pat = r"\[.*\]!"
    ls_bracketUpdateAft_pat = r"\[.*\]"+spacedot+anyword
    #ls_bracketUpdateAft_pat = r"^\[.*\]\s*\,\s*(?:[\s\S]*)\s*"
    ls_sp_pat = r"(sp)"
    ls_immOffset_pat = r"\#"+immoffset_str
    ls_shift_pat = r"(lsl|lsr|adr|ror)"
    #偏移寻址
    ls_base_pat = r"^\["+reg_str+r"\]$"
    ls_immeOffset_pat = r"\["+reg_str+spacedot+r"\#(-?)"+immoffset_str+r"\]"
    ls_regOffset_pat = r"\["+reg_str+spacedot+r"(-?)"+reg_str+r"\]"
    ls_regShift_pat = r"\["+reg_str+spacedot+r"(-?)"+reg_str+spacedot+ls_shift_pat+r"\s*\#(-?)"+immoffset_str+r"\]"
    #先更新寻址
    ls_immeBef_pat = r"\["+reg_str+spacedot+r"\#(-?)"+immoffset_str+r"\]!"
    ls_regBef_pat = r"\["+reg_str+spacedot+r"(-?)"+reg_str+r"\]!"
    ls_regShiftBef_pat = r"\["+reg_str+spacedot+r"(-?)"+reg_str+spacedot+ls_shift_pat+r"\s*\#(-?)"+immoffset_str+r"\]!"
    #后更新寻址  
    ls_immeAft_pat = r"\["+reg_str+r"\]"+spacedot+r"\#(-?)"+immoffset_str
    ls_regAft_pat = r"\["+reg_str+r"\]"+spacedot+r"(-?)"+reg_str
    ls_regShiftAft_pat = r"\["+reg_str+r"\]"+spacedot+r"(-?)"+reg_str+spacedot+ls_shift_pat+r"\s*\#(-?)"+immoffset_str


class Address:
    def __init__(self, addr_hex: str):
        self.__hex = addr_hex
        self.__int = int(addr_hex, 16)
    
    def hex_str(self):
        return self.__hex

    def val(self):
        return self.__int

    def __hash__(self):
        return self.__int

    def __eq__(self, other):
        if isinstance(other, int):
            return self.__int == other
        elif isinstance(other, str):
            return self.__int == int(other, 16)
        elif isinstance(other, Address):
            return self.__int == other.__int


class InstructionType(Enum):
    # TODO: Add more instruction types.
    Branch = auto()
    LoadStore = auto()
    Adrp = auto()
    Mov = auto()
    Add = auto()
    Unknown = auto()

class AddrMode(Enum):

    Base = auto()
    ImmeOffset = auto()
    RegOffset = auto()
    RegShift = auto()

    ImmeBef = auto()
    RegBef= auto()
    RegShiftBef= auto()

    ImmeAft = auto()
    RegAft= auto()
    RegShiftAft= auto()


class Instruction:
    restr_b_imm_target = r"([0-9a-fA-F]+)\s*<([^+-]*?)([+-][^+-]*?)?>"


    #编译指令
    __loadstore_cpat = re.compile(Re_LoadStore_Ins.loadstore_pat)
    __lsp_cpat = re.compile(Re_LoadStore_Ins.lsp_pat)


    __add_cpat = re.compile(Re_LoadStore_Ins.add_pat)
    #编译操作数
    __operand_adrp_access_cpat = re.compile(Re_LoadStore_Operand.operand_adrp_access_pat)
    __ls_split_cpat = re.compile(Re_LoadStore_Operand.ls_split_pat)
    __ls_bracket_cpat = re.compile(Re_LoadStore_Operand.ls_bracket_pat)
    __ls_bracketUpdate_cpat = re.compile(Re_LoadStore_Operand.ls_bracketUpdate_pat)
    __ls_bracketUpdateAft_cpat = re.compile(Re_LoadStore_Operand.ls_bracketUpdateAft_pat)
    __ls_sp_cpat = re.compile(Re_LoadStore_Operand.ls_sp_pat)
    __ls_immOffset_cpat = re.compile(Re_LoadStore_Operand.ls_immOffset_pat)
    __ls_shift_cpat = re.compile(Re_LoadStore_Operand.ls_shift_pat)

    __ls_base_cpat = re.compile(Re_LoadStore_Operand.ls_base_pat)
    __ls_immeOffset_cpat = re.compile(Re_LoadStore_Operand.ls_immeOffset_pat)
    __ls_regOffset_cpat = re.compile(Re_LoadStore_Operand.ls_regOffset_pat)
    __ls_regShift_cpat = re.compile(Re_LoadStore_Operand.ls_regShift_pat)
    __ls_immeBef_cpat = re.compile(Re_LoadStore_Operand.ls_immeBef_pat)
    __ls_regBef_cpat = re.compile(Re_LoadStore_Operand.ls_regBef_pat)
    __ls_regShiftBef_cpat = re.compile(Re_LoadStore_Operand.ls_regShiftBef_pat)
    __ls_immeAft_cpat = re.compile(Re_LoadStore_Operand.ls_immeAft_pat)
    __ls_regAft_cpat = re.compile(Re_LoadStore_Operand.ls_regAft_pat)
    __ls_regShiftAft_cpat = re.compile(Re_LoadStore_Operand.ls_regShiftAft_pat)

    def __init__(self, tokens: Sequence[str]):
        
        self.tokens = tokens
        self.__addr = Address(tokens[0])
        self.__opcode = tokens[1]
        self.__name, self.__sub_name = tokens[2], tokens[3]#name就是指令名，subname则是例如b.eq这类
        self.__operands = tokens[4]
        #self.__operand = tokens[4]
        self.__type = InstructionType.Unknown


        self.__branch_identify()
        self.__load_store_identify()
        self.__adrp_identify()
        self.__mov_identity()
        self.__add_identity()

    @property
    def addr(self):
        return self.__addr

    @property
    def opcode(self):
        return self.__opcode

    @property
    def name(self):
        return self.__name

    @property
    def operands(self):
        return self.__operands

    @property
    def ins_type(self):
        return self.__type
    
    def __branch_identify(self):
        self.__is_b = False
        self.__b_conditional = False
        self.__b_imm_target_label = None
        self.__b_imm_target_offset = None
        self.__b_imm_target_addr = None

        if self.__name in ('b', 'bl', 'bc', 'cbnz', 'cbz'):
            self.__operands = [o.strip() for o in self.tokens[4].split(',')]
            self.__type = InstructionType.Branch
            self.__is_b = True
            if self.__name in ('cbnz', 'cbz') or self.__sub_name is not None:
                self.__b_conditional = True
            # TODO: Not all branch instructions is immediate-addressing.
            addr, label, offset = re.match(self.restr_b_imm_target, self.__operands[-1]).groups()
            self.__b_imm_target_addr = Address(addr)
            self.__b_imm_target_label, self.__b_imm_target_offset = label, offset

    @property
    def is_branch(self):
        return self.__is_b

    @property
    def branch_info(self):
        """ Return [bool] if is branch instruction, [bool] if is conditional,
        [None|str] immediate-addressing target label, [None|str] immediate-addressing target offset,
        [None|Address] immediate-addressing target address. """
        return (self.__is_b, self.__b_conditional,
                self.__b_imm_target_label, self.__b_imm_target_offset, self.__b_imm_target_addr)

    def __load_store_identify(self):
        self.__is_ls = False
        self.__is_nsp = False#用于判断是否是sp寄存器
        self.__ls_handle = False
        self.__find_target = False
        self.is_data_group = False#用于判断是否需要读入一个数组

        self.__ls_addr_mode = None
        self.__ls_data_width = 32
        self.__ls_first_opperand = None
        self.__ls_target_num = 1
        self.__ls_reg_target = None
        self.__ls_reg_target_list = list()#如果需要寻找的目标寄存器超过一个，则需要启用list
        self.__ls_addr_offset = 0
        
        #final_addr会在ls分析之后设置，是可以用于交付的值
        self.__ls_final_addr = 0
        self.__ls_local_offset = 0
        self.ls_final_addr = 0

        is_loadstore = re.match(self.__loadstore_cpat,self.__name)
        if is_loadstore:

            #print(self.tokens)
            self.__type = InstructionType.LoadStore
            self.__is_ls = True
            
            #TODO: LSP处理流程
            is_lsp = re.match(self.__lsp_cpat,self.__name)
            if is_lsp:
                pass

            else:
                #print(self.tokens)
                self.__ls_handle = True

                ls_op_slip = re.match(self.__ls_split_cpat,self.tokens[4])
                #print(self.tokens)
                temp_op = ls_op_slip.groups()
                self.__ls_first_opperand = temp_op[0]
                self.addrmode = temp_op[1]

                is_base = re.match(self.__ls_base_cpat,self.addrmode)
                is_bracket = re.match(self.__ls_bracket_cpat,self.addrmode)
                is_bracket_upgrade = re.match(self.__ls_bracketUpdate_cpat,self.addrmode)
                is_bracket_upgrade_aft = re.match(self.__ls_bracketUpdateAft_cpat,self.addrmode)
                
                if is_base:
                    self.__ls_addr_mode = AddrMode.Base

                    temp = is_base.groups()
                    self.__ls_reg_target = temp[0]

                    if self.__ls_reg_target == "sp":
                        self.__is_nsp = False
                        self.__ls_local_offset = 0#说明是真的没有偏移
                    else:
                        self.__is_nsp = True
                
                elif is_bracket_upgrade_aft:
                    
                    is_immAft = re.match(self.__ls_immeAft_cpat,self.addrmode)
                    is_regAft = re.match(self.__ls_regAft_cpat,self.addrmode)
                    is_regShiftAft = re.match(self.__ls_regShiftAft_cpat,self.addrmode)
                    
                    if is_immAft:
                        self.__ls_addr_mode = AddrMode.ImmeAft

                        temp = is_immAft.groups()
                        target_reg = temp[0]
                        pm = temp[1]
                        strOffset = temp[2]

                        self.__immOffsetTypeProc(target_reg,pm,strOffset)
                    
                    elif is_regAft:
                        self.__ls_target_num = 2
                        self.__ls_addr_mode = AddrMode.RegAft

                        temp = is_regAft.groups()
                        target_reg1 = temp[0]
                        target_reg2 = [temp[1],temp[2]]

                        self.__regOffsetPorc(target_reg1,target_reg2)

                    
                    elif is_regShiftAft:
                        self.__ls_target_num = 2
                        self.__ls_addr_mode = AddrMode.RegShiftAft

                        temp = is_regShiftAft.groups()
                        target_reg1 = temp[0]
                        target_reg2 = [temp[1],temp[2]]

                        self.__regOffsetPorc(target_reg1,target_reg2)

                        
                
                elif is_bracket_upgrade:

                    is_immBef = re.match(self.__ls_immeBef_cpat,self.addrmode)
                    is_regBef = re.match(self.__ls_regBef_cpat,self.addrmode)
                    is_regShiftBef = re.match(self.__ls_regShiftBef_cpat,self.addrmode)

                    if is_immBef:
                        self.__ls_addr_mode = AddrMode.ImmeBef

                        temp = is_immBef.groups()
                        target_reg = temp[0]
                        pm = temp[1]
                        strOffset = temp[2]

                        self.__immOffsetTypeProc(target_reg,pm,strOffset)

                    elif is_regBef:
                        self.__ls_target_num = 2
                        self.__ls_addr_mode = AddrMode.RegBef

                        temp = is_regBef.groups()
                        target_reg1 = temp[0]
                        target_reg2 = [temp[1],temp[2]]

                        self.__regOffsetPorc(target_reg1,target_reg2)

                    elif is_regShiftBef:
                        self.__ls_target_num = 2
                        self.__ls_addr_mode = AddrMode.RegShiftBef

                        temp = is_regShiftBef.groups()
                        target_reg1 = temp[0]
                        target_reg2 = [temp[1],temp[2]]

                        self.__regOffsetPorc(target_reg1,target_reg2)
                
                elif is_bracket:

                    is_immOffset = re.match(self.__ls_immeOffset_cpat,self.addrmode)
                    is_regOffset = re.match(self.__ls_regOffset_cpat,self.addrmode)
                    is_regShift = re.match(self.__ls_regShift_cpat,self.addrmode)

                    if is_immOffset:
                        self.__ls_addr_mode = AddrMode.ImmeOffset

                        temp = is_immOffset.groups()
                        target_reg = temp[0]
                        pm = temp[1]
                        strOffset = temp[2]

                        self.__immOffsetTypeProc(target_reg,pm,strOffset)

                    elif is_regOffset:
                        self.__ls_target_num = 2
                        self.__ls_addr_mode = AddrMode.RegOffset

                        temp = is_regOffset.groups()
                        target_reg1 = temp[0]
                        target_reg2 = [temp[1],temp[2]]

                        self.__regOffsetPorc(target_reg1,target_reg2)

                    elif is_regShift:
                        self.__ls_target_num = 2
                        self.__ls_addr_mode = AddrMode.RegShift

                        temp = is_regShift.groups()
                        target_reg1 = temp[0]
                        target_reg2 = [temp[1],temp[2]]

                        self.__regOffsetPorc(target_reg1,target_reg2)

    def __is_sp(self,matchworld):
        re_sp = re.match(self.__ls_sp_cpat,matchworld)
        if re_sp:
            self.__is_nsp = True
                  
    def __immOffsetTypeProc(self,reg_target,offset_pm,offset_str):
        self.__ls_reg_target = reg_target
        pm = offset_pm
        strOffset = offset_str

        if pm == '':
            if strOffset[0:2] == "0x":
                self.__ls_addr_offset = int(strOffset,16)
            else:
                self.__ls_addr_offset = int(strOffset)
        else:
            if strOffset[0:2] == "0x":
                self.__ls_addr_offset = -int(strOffset,16)
            else:
                self.__ls_addr_offset = -int(strOffset)

        if self.__ls_reg_target == "sp":
            self.__is_nsp = False
            self.__ls_local_offset += self.__ls_addr_offset
        else:
            self.__is_nsp = True

    def __regOffsetPorc(self,reg_target1,reg_target2):
        self.__ls_reg_target_list.append(reg_target1)
        self.__ls_reg_target_list.append(reg_target2)
        pass

    def __regShiftPorc(self,reg_target1,reg_target2):
        self.__ls_reg_target_list.append(reg_target1)
        self.__ls_reg_target_list.append(reg_target2)
        pass


    @property
    def is_ls(self):
        return self.__is_ls
    
    @property
    def is_nsp(self):
        return self.__is_nsp

    @property
    def ls_handle(self):
        return self.__ls_handle  
    
    def set_find_target(self):
        self.__find_target = True

    @property
    def ls_addr_mode(self):
        return self.__ls_addr_mode
    
    @property
    def ls_data_width(self):
        return self.__ls_data_width
    
    @property
    def ls_first_opperand(self):
        return self.__ls_first_opperand

    @property
    def ls_target_num(self):
        return self.__ls_target_num
      
    @property
    def ls_reg_target(self):
        return self.__ls_reg_target
    
    @property
    def ls_reg_target_list(self):
        return self.__ls_reg_target_list
    
    @property
    def ls_addr_offset(self):
        return self.__ls_addr_offset
    
    @property
    def final_addr(self):
        return self.__ls_final_addr
    
    def set_final_addr(self,num):
        self.__ls_final_addr = num

    @property
    def local_offset(self):
        return self.__ls_local_offset
    
    def set_local_offset(self,num):
        self.__ls_local_offset = num

    def __adrp_identify(self):

        self.__is_adrp = False
        self.__adrp_addr = None
        self.__adrp_label = None
        self.__adrp_first_opperand = None

        if self.__name == "adrp":
            self.__type = InstructionType.Adrp
            self.__is_adrp = True

            ls_op_slip = re.match(self.__ls_split_cpat,self.tokens[4])
            temp_op = ls_op_slip.groups()
            self.__adrp_first_opperand = temp_op[0]
            addr = temp_op[1]

            re_adrp_addr = re.match(self.__operand_adrp_access_cpat,addr)
            temp = re_adrp_addr.groups()
            self.__adrp_addr = temp[0]
            self.__adrp_label = temp[1]
            
    @property
    def is_adrp(self):
        return self.__is_adrp
    
    @property
    def adrp_addr(self):
        return self.__adrp_addr
    
    @property
    def adrp_label(self):
        return self.__adrp_label
    
    @property
    def adrp_first_opperand(self):
        return self.__adrp_first_opperand

    def __mov_identity(self):

        self.__is_mov = False
        self.__mov_first_opperand = None
        self.__mov_target = None

        if self.__name in ('mov'):
            self.__type = InstructionType.Mov
            self.__is_mov = True

            temp = [o.strip() for o in self.tokens[4].split(',')]
            self.__mov_first_opperand = temp[0]
            self.__mov_target = temp[1]
    
    @property
    def is_mov(self):
        return self.__is_mov
    
    @property
    def mov_first_opperand(self):
        return self.__mov_first_opperand
    
    @property
    def mov_target(self):
        return self.__mov_target
    
    def __add_identity(self):
        self.__is_add = False
        self.__add_same = False
        self.__add_imm = False
        self.__add_1op = None
        self.__add_2op = None
        self.__add_3op = None

        is_add = re.match(self.__add_cpat,self.__name)

        if is_add:
            self.__type = InstructionType.Add
            self.__is_add = True

            temp = [o.strip() for o in self.tokens[4].split(',')]
            self.__add_1op = temp[0]
            self.__add_2op = temp[1]
            self.__add_3op = temp[2]

            if self.__add_1op == self.__add_2op:
                self.__add_same = True

            re_imm = re.match(self.__ls_immOffset_cpat,self.__add_3op)
            if re_imm:
                self.__add_imm = True
                temp = re_imm.groups()[0]
                if temp[0:2] == "0x":
                    self.__add_3op = int(temp,16)
                else:
                    self.__add_3op = int(temp)
    
    @property
    def is_add(self):
        return self.__is_add
    
    @property
    def add_same(self):
        return self.__add_same
    
    @property
    def add_imm(self):
        return self.__add_imm
    
    @property
    def add_1op(self):
        return self.__add_1op
    
    @property
    def add_2op(self):
        return self.__add_2op

    @property
    def add_3op(self):
        return self.__add_3op



