# -*- coding: utf-8 -*-
"""
@Time       : 2023/4/6 17:34
@Author     : Juxin Niu (juxin.niu@outlook.com)
@FileName   : gui_backend.py
@Description: 
"""
import os
from typing import Callable, Tuple

from cache_analysis.cache_risk_level import CacheRisk
from cache_analysis.read_segment import segmentReader
from newCFG.cfg import CallGraph, TCfg, find_cycle, has_cycle, proc_draw_edges, proc_identify
from newCFG.heat_analysis import loop_heat
from newCFG.isa import Instruction
from newCFG.read_asm import AsmFileReader, StatementType
from rwcond_out import loadstore_Obj


def processing(c_f, asm_f, progress_cb, c_cb: Callable, asm_cb: Callable, cfg_cb: Callable, result_cb: Callable):
    """
    Main processing function.
    """

    progress_cb(0, "Cleaning...")

    c_cb("")
    asm_cb("")
    cfg_cb()

    progress_cb(10, "Read C and ASM code...")

    if c_f:
        with open(c_f, 'r', encoding='utf-8') as f:
            c_text = f.read()
        c_cb(c_text)
    with open(asm_f, 'r', encoding='utf-8') as f:
        asm_text = f.read()
        asm_cb(asm_text)

    progress_cb(20, "Processing code...")

    reader = AsmFileReader(asm_f)
    statements = list()
    for s in reader.statements:
        s: Tuple[StatementType, tuple]
        if s[0] == StatementType.Instruction:
            statements.append((s[0], Instruction(s[1])))
        elif s[0] == StatementType.SubProcedure:
            statements.append(s)

    progress_cb(40, "Building procedures and control flow graph...")

    procs = proc_identify(statements)
    proc_draw_edges(procs)
    is_cycle = has_cycle(procs)
    if is_cycle:
        c = [p.name for p in find_cycle(procs)]
        raise RuntimeError("Loop between procedures is not allowed: {}.".format(c))
    call_graph = CallGraph(procs)
    tcfg = TCfg(call_graph)
    tcfg.build_tcfg()

    progress_cb(60, "Drawing control flow graph...")

    g = tcfg.draw_graph()
    target = g.render(filename='tcfg', directory='./output', format='svg')
    cfg_cb(os.path.abspath(target.replace("\\", "/")).replace("\\", "/"))

    progress_cb(80, "Doing analysis...")

    tcfg.build_loop_hrchy()
    tcfg.add_loop_bound(r'D:\workspace\hw-memory\benchmarks\loop_bound.txt')

    seg_fp = r'./benchmarks/final_benchmark/spec_benchmarkD.asm'
    segreader = segmentReader(seg_fp)
    lds_obj = loadstore_Obj(segreader, tcfg)
    lsproc = lds_obj.lsproc
    ls_loop_info = lds_obj.loop_info

    test = loop_heat(tcfg, lsproc, r'./benchmarks/final_benchmark/spec_benchmarkD.asm')
    heat_dict = {k: v for k, v in test.do_it()}

    f1 = r"./benchmarks/final_benchmark/spec_benchmarkD.asm"
    f2 = r"./cache_analysis/new_cache/input/cache_information.in"
    cache_test = CacheRisk(tcfg, lsproc, f1, f2)
    cache_list = cache_test.test()
    cache_dict = {k: list() for k in set([k for k, _, _ in cache_list])}
    for k, p, r in cache_list:
        cache_dict[k].append((p, r))
    for k in cache_dict.keys():
        cache_dict[k] = {_k: _v for _k, _v in cache_dict[k]}

    loop_keys = list(ls_loop_info.keys())
    rlt_dict = dict()
    for lp_k in loop_keys:
        pg_rlt_list = list()
        lp_ls_dict, lp_heat_dict, lp_cache_dict = ls_loop_info[lp_k], heat_dict[lp_k], cache_dict[lp_k]
        page_set = set(lp_ls_dict.keys()).union(set(lp_heat_dict.keys())).union(lp_cache_dict.keys())
        for pg in page_set:
            ls_val = str(lp_ls_dict.get(pg, None))
            heat_val = str(lp_heat_dict.get(pg, None))
            cache_val = str(lp_cache_dict.get(pg, None))
            pg_rlt_list.append((str(pg), ls_val, heat_val, cache_val))
        rlt_dict[lp_k] = pg_rlt_list
    result_cb(loop_keys, rlt_dict)

    progress_cb(100)
