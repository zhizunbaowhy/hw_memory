# -*- coding: utf-8 -*-
"""
@Time       : 2023/3/23 18:55
@Author     : Juxin Niu (juxin.niu@outlook.com)
@FileName   : cfg.py
@Description: 
"""
import types
from typing import List, Tuple

from sample.isa import Address
from sample.read_asm import StatementType


class Procedure:
    def __init__(self, name: str, beg_addr: Address, instructions: list):
        self.__name = name
        self.__beg_addr = beg_addr
        self.__instructions = tuple(instructions)
        self.__intra_jump = dict()  # Intra-procedure jump records
        self.__inter_jump = dict()  # Inter-procedure jump records

    @property
    def name(self):
        """ Return the name/label of procedure. """
        return self.__name

    @property
    def beg_addr(self):
        """ Return the beginning address of procedure. The returned is an instance of type ``Address``. """
        return self.__beg_addr

    @property
    def instruction(self):
        """ Return a tuple containing all instructions of the procedure in order. Modifications to it is illegal. """
        return self.__instructions

    def __build_jump_mapping(self):
        pass

    @property
    def intra_jump(self):
        """ Return a read-only proxy of a dict containing all intra-procedure jump records. """
        return types.MappingProxyType(self.__intra_jump)

    @property
    def inter_jump(self):
        """ Return a read-only proxy of a dict containing all inter-procedure jump records. """
        return types.MappingProxyType(self.__inter_jump)


def proc_identify(statements: list):

    all_proc: List[Procedure] = list()

    proc_name, proc_addr, proc_inst = None, None, list()
    for s in statements:
        s: Tuple[StatementType, tuple]
        if s[0] == StatementType.Instruction:
            proc_inst.append(s[1])  # TODO: change to class ``Instruction``.
        elif s[0] == StatementType.SubProcedure:
            if proc_name is not None and proc_addr is not None:
                all_proc.append(Procedure(proc_name, proc_addr, proc_inst))
            proc_addr, proc_name = Address(s[1][0]), s[1][1]
            proc_inst.clear()
    else:
        if proc_name is not None and proc_addr is not None:
            all_proc.append(Procedure(proc_name, proc_addr, proc_inst))

    return all_proc


class CallGraphNode:
    def __init__(self, name: str, proc: Procedure):
        self.__name = name
        self.__proc = proc
        self.from_edges = list()
        self.to_edges = list()

    @property
    def name(self):
        return self.__name

    @property
    def procedure(self):
        return self.__proc


class CallGraphEdge:
    def __init__(self, src: CallGraphNode, dst: CallGraphNode):
        self.__src = src
        self.__dst = dst

    @property
    def src(self):
        return self.__src

    @property
    def dst(self):
        return self.__dst


class CallGraph:
    def __init__(self, procedures: list):
        pass

    def __build(self):
        pass


class TCfgNode:
    def __init__(self):
        pass


class TCfgEdge:
    def __init__(self):
        pass


def proc_segmentation(proc: Procedure):
    pass


class TCfg:
    def __init__(self):
        pass
