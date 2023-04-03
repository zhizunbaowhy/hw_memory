"""
    目前在mem_tr一起实现了, debug之后 无误程序在移植到此 封装为类,对象
"""
from newCFG.cfg import TCfg
from newCFG.cfg import TCfg
from newCFG.loadstore import LSProc
from newCFG.rw_condition import RWProc
from newCFG.cfg import proc_identify
from newCFG.isa import Instruction, AddrMode
from typing import Tuple
from newCFG.read_asm import AsmFileReader, StatementType
from graphviz import Digraph
from newCFG.cfg import draw_proc, find_cycle, has_cycle, proc_draw_edges
from read_segment import segmentReader
from cache_analysis.new_cache.fixponit import *
import sys

class CacheRiskLevel():

    fp = r"D:\workspace\Gitdocuments\hw-memory\benchmarks\old_benchmark\spec_example\spec2006_470.lbm\lbm_part.asm"
    reader = AsmFileReader(fp)

    def __init__(self, TCFG, LSProc, segmentReader) -> None:
        self.lsproc = LSProc(tcfg_nodes)
        self.lds_table = self.lsproc.ls_table
        self.tcfg = TCfg(call_graph)
        # self.a=segmentReader.getbss()
        # self.b=segmentReader.getdata()
        self.D=segmentReader.getbss()+segmentReader.getdata()
        self.tcfg=TCFG
        self.addr_length={i.final_addr : i.ins.ls_data_width for i in self.lds_table}



    lsproc = LSProc(tcfg_nodes)


for i in lds_table:
    print("node", i.node.name, "指令", i.ins.tokens, "是否是SP", i.is_sp, "指令地址", i.ins.addr.val(), "访存地址",
          i.final_addr, "数据宽度", i.ins.ls_data_width, "访存类型", i.ins.ls_addr_mode)

rwproc = RWProc(lds_table)
