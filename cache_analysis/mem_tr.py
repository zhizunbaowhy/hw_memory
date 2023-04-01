fp = r"D:\workspace\Gitdocuments\hw-memory\benchmarks\old_benchmark\spec_example\spec2006_470.lbm\lbm_part.asm"
from cache_analysis import read_segment

# fp = r"C:\Users\51777\Desktop\华为memory\test\objdump\-dmanytest.asm"

from newCFG.cfg import proc_identify
from newCFG.isa import Instruction, AddrMode
from typing import Tuple
from newCFG.read_asm import AsmFileReader, StatementType
from graphviz import Digraph
from newCFG.cfg import draw_proc, find_cycle, has_cycle, proc_draw_edges
from read_segment import segmentReader

reader = AsmFileReader(fp)

statements = list()
temp_stat = list()
for s in reader.statements:
    s: Tuple[StatementType, tuple]
    if s[0] == StatementType.Instruction:
        statements.append((s[0], Instruction(s[1])))
        temp_stat.append(Instruction(s[1]))
    elif s[0] == StatementType.SubProcedure:
        statements.append(s)

# for i in temp_stat:
#    booltemp = i.is_ls
#    if booltemp:
#        if i.ls_addr_mode == AddrMode.ImmeAft:
#            print(i.ls_reg_traget)

procs = proc_identify(statements)
for proc in procs:
    print(proc.name, proc.beg_addr.hex_str())
    if False and proc.name == 'main':
        for inst in proc.instruction:
            print(inst.addr.hex_str(), inst.opcode, inst.name, inst.operands, inst.branch_info)
        print()

# ------------------------------------------------------------------------------------
proc_draw_edges(procs)

is_cycle = has_cycle(procs)
if is_cycle:
    c = [p.name for p in find_cycle(procs)]
    raise RuntimeError("Loop between procedures is not allowed: {}.".format(c))

g: Digraph = draw_proc(procs)
g.render(filename='procedures', directory='./output', format='svg')

# ------------------------------------------------------------------------------------
from newCFG.cfg import CallGraph

call_graph = CallGraph(procs)

g = call_graph.draw_graph()
g.render(filename='call_graph', directory='./output', format='svg')

# ------------------------------------------------------------------------------------
from newCFG.cfg import TCfg
import random

tcfg = TCfg(call_graph)
tcfg.build_tcfg()

tcfg_nodes = tcfg.all_nodes
tcfg_edges = tcfg.edges

g = tcfg.draw_graph()
g.render(filename='tcfg', directory='./output', format='svg')

# for node in tcfg_nodes:
#    node.set_rw_condition()
#    #print(node.name, node.base_proc.name, node.inst_range)
#    print(node.name, node.base_proc.name)
#    print("出边")
#    for i in node.outgoing_edge:
#        print(i.dst.name)
#    print("入边")
#    for i in node.incoming_edge:
#        print(i.src.name)
#
#    print()

tcfg.build_loop_hrchy()
for l in tcfg.loops:
    # print("{} (in {} children {}): {}->{} {}".format(l.name, l.father.name if l.father is not None else "None", [sub_l.name for sub_l in l.children], l.back_edge.src.name, l.back_edge.dst.name, [n.name for n in l.all_nodes]))
    # print(l.back_edge.src.name,l.back_edge.dst.name)
    l.back_edge.is_backEdge = True

# for n in tcfg.all_nodes:
#    temp = n.inside_loop.name if n.inside_loop is not None else 'None'
#    print("{} {}".format(n.name, temp))

for n in tcfg_nodes:
    n.set_rw_data()

temp_bool = True

while temp_bool:
    no_end = False

    for n in tcfg_nodes:
        n.set_rw_value()
        if not n.no_out:
            no_end = True
        temp_bool = no_end

for e in tcfg_edges:
    if e.is_backEdge:
        e.loop_value = random.randint(0, 10)
        e.edge_value = 2

for e in tcfg_edges:
    print(e.src.name, e.dst.name, e.edge_value)

# for n in tcfg_nodes:
#    print(n.name,"n的值",n.node_value)


# for e in tcfg_edges:
#    print(e.src.name,e.dst.name,e.is_backEdge)

# ------------------------------------------------------------------------------------
from newCFG.cfg import TCfg
from newCFG.loadstore import LSProc
from newCFG.rw_condition import RWProc

lsproc = LSProc(tcfg_nodes)

lds_table = lsproc.ls_table

for i in lds_table:
    print("node", i.node.name, "指令", i.ins.tokens, "是否是SP", i.is_sp, "指令地址", i.ins.addr.val(), "访存地址",
          i.final_addr, "数据宽度", i.ins.ls_data_width)

rwproc = RWProc(lds_table)

# for rwu in rwproc.rw_table:
#    print(rwu.ins.tokens,rwu.find_cycle,rwu.ins.final_addr,rwu.is_torrent)


# ------------------------------------------------------------------------------------
mem_ls = []
for i in lds_table:
    if i.is_sp is False:
        # node + address(string) + address(int) + load/store address(int) + data width(Byte=bit/8)
        mem_ls.append([i.node.name] + [i.ins.tokens[0]] + [i.ins.addr.val()] + [i.final_addr] + [int(i.ins.ls_data_width/8)])
print(mem_ls)
# print(mem_ls[0][2])

mem_node = []
mem_head = []
result = {}

# 获取每个node的指令
for i in tcfg_nodes:
    # print(i.name)
    # print(i.instructions)
    # 获取cache分析所需要的node序列
    mem_node.append(i.name)
    for m in i.instructions:
        # print(m.addr.hex_str())
        # 整个asm的所有指令; 所有长度默认为4
        mem_head.append([i.name] + [m.addr.val()] + [m.addr.val()] + [4])

# print(mem_ls)
# print(mem_head)
# 判断load and store指令 如果是load/store将后面的值改为访存地址值(int)
for n in range(len(mem_ls)):
    for i in range(len(mem_head)):
        # 第一个条件是判断是否同一 node; 第二个条件判断地址是不是load/store的
        if mem_ls[n][0] == mem_head[i][0] and mem_ls[n][2] == mem_head[i][1]:
            # 将第三个元素替换为数据的访存地址
            mem_head[i][2] = mem_ls[n][3]
            # 将长度替换为load/store传过来的长度
            mem_head[i][3] = mem_ls[n][4]

print(mem_head)
# cache分析所需要的memory node信息
print(mem_node)

# 在这里提前获得.bss & .data segment信息
segment = segmentReader(r'C:\Users\51777\Desktop\华为memory\test\objdump\-D manytest.asm')
bss = segment.getbss()
data = segment.getdata()
# 将.bss 和 .data 合成一个 一般是 .data在前 .bss在后
ALL = []
for i in range(len(bss)):
    ALL.append(bss[i])
for i in range(len(data)):
    ALL.append(data[i])
# print(ALL)

# 对于同一node 如果前后地址一致，则append tuple(start,end); 前后地址不一致说明是l/s指令，则append tuple(start,start), tuple(end,end)
# 这里的tuple(end,end) 应该是tuple(end,end+len) len单独一个list传进来，根据指令长度决定，如果是寄存器则通过寻找segement确定 先默认长度为4
for item in mem_head:
    key = item[0]
    if key not in result:
        result[key] = []
    # 预想的是 这边mem_head中会从（mem_ls会从load and store那里获取长度属性）然后将其添加到mem_ls 变成类似 ['n0', 1920, 1920, 4] 4即为长度 然后直接加长度即可 item[2]+item[3]
    # TODO 这里item[3]如果是寄存器 比如这里用-1记录, 或用特定的值(不可能是长度的值)比如 3; 提前判断:如果是寄存器,则从另一个获得长度的list中替换item[3]
    if item[1] == item[2]:
        # 指令默认为4
        result[key].append((item[1], item[2]+4))
    else:
        # 指令默认为4
        result[key].append((item[1], item[1]+4))
        # load and store加长度
        # TODO 找到的segment传过来的LIST是 ['0000000000420028', 'i', 4325416, 4325420] ---> if item[3] == -1 and item[2] == LIST[2] ---> result[key].append((item[2], LSIT[3])) 将尾部加进来就行
        for i in range(len(ALL)):
            if item[3] == -1 and item[2] == ALL[i][2]:
                result[key].append((item[2], ALL[i][3]))
            else:
                result[key].append((item[2], item[2]+item[3]))

for key in result:
    result[key] = tuple(result[key])
# cache分析所需要memory trace信息
print(result)

mem_edge = []
for i in tcfg_edges:
    # print(i.src.name, i.dst.name)
    mem_edge.append((i.src.name, i.dst.name))
# cache分析所需要的边信息 node--->node 有向边
print(mem_edge)


'''
    将memory trace按照in格式打印到文件里 方便分析
        用 -> 匹配edge信息
        用 [] 匹配access
        用 : 匹配cache信息配置
'''
max_width = max(len(key) for key in result.keys()) # 定义最宽字符 为了后面做准备
with open('new_cache/input/cache_information.in', 'w') as f:
    f.write("entry: n0   ;\n\n")
    for node in mem_node:
        f.write(node + ';' + '\n')
    for edge_in, edge_out in mem_edge:
        f.write(f"{edge_in} -> {edge_out}" + ';' + '\n')
    for key, values in result.items():
        f.write(f"[{key:<{max_width}}] ")
        for i, (start, end) in enumerate(values):
            f.write(f"{start}-{end}")
            if i != len(values) - 1: # 如果不是最后一个元组，则加上逗号
                f.write(", ")
        f.write(";\n")
    # TODO 考虑cache基本信息从哪里得到? e.g.,cache信息从一个config读入; 暂时直接指定
    f.write("cache_offset: 6     ;\ncache_set_index: 8  ;\ncache_assoc: 4      ;")
