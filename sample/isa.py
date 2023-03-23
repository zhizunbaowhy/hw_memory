# -*- coding: utf-8 -*-
"""
@Time       : 2023/3/23 19:22
@Author     : Juxin Niu (juxin.niu@outlook.com)
@FileName   : isa.py
@Description: 
"""
import re
from enum import auto
from typing import Sequence


class Address:
    def __init__(self, addr_hex: str):
        self.__hex = addr_hex
        self.__int = int(addr_hex, 16)

    def hex_str(self):
        return self.__hex

    def val(self):
        return self.__int

    def __eq__(self, other):
        if isinstance(other, int):
            return self.__int == other
        elif isinstance(other, str):
            return self.__int == int(other, 16)
        elif isinstance(other, Address):
            return self.__int == other.__int


class InstructionType:
    # TODO: Add more instruction types.
    Branch = auto()
    Unknown = auto()


class Instruction:
    restr_b_imm_target = r"([0-9a-fA-F]+)\s*<([^+-]*?)([+-][^+-]*?)?>"

    def __init__(self, tokens: Sequence[str]):
        self.__addr = Address(tokens[0])
        self.__opcode = tokens[1]
        self.__name, self.__sub_name = tokens[2], tokens[3]
        self.__operands = [o.strip() for o in tokens[4].split(',')]
        self.__type = InstructionType.Unknown

        self.__branch_identify()
        self.__load_store_identify()

    def __branch_identify(self):
        self.__b = False
        self.__b_conditional = False
        self.__b_imm_target_label = None
        self.__b_imm_target_offset = None
        self.__b_imm_target_addr = None

        if self.__name in ('b', 'bc', 'cbnz', 'cbz'):
            self.__type = InstructionType.Branch
            self.__b = True
            if self.__name in ('cbnz', 'cbz') or self.__sub_name is not None:
                self.__b_conditional = True
            # TODO: Not all branch instructions is immediate-addressing.
            addr, label, offset = re.match(self.restr_b_imm_target, self.__operands[-1]).groups()
            self.__b_imm_target_addr = Address(addr)
            self.__b_imm_target_label, self.__b_imm_target_offset = label, offset

    @property
    def branch_info(self):
        """ Return [bool] if is branch instruction, [bool] if is conditional,
        [None|str] immediate-addressing target label, [None|Address] immediate-addressing target address. """
        return (self.__b, self.__b_conditional,
                self.__b_imm_target_label, self.__b_imm_target_offset, self.__b_imm_target_addr)

    def __load_store_identify(self):
        pass

    # TODO: Add more identify functions and call them in ``__init__()``.

