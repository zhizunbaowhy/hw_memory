"""
    目前在mem_tr一起实现了, debug之后 无误程序在移植到此 封装为类,对象
"""
import sys
import time

from cache_analysis.new_cache.fixponit import *
from cache_analysis.read_segment import segmentReader
from newCFG.cfg import TCfg, TCfgLoopHrchy


class CacheRisk:
    def __init__(self, tcfg: TCfg, LSProc, filepath, cachefile) -> None:
        self.lsproc = LSProc
        self.lds_table = self.lsproc.ls_table
        self.bread = segmentReader(filepath)
        self.cachefile = cachefile
        self.tcfg = tcfg

    def preprocessing(self):

        tcfg_nodes = self.tcfg.all_nodes
        tcfg_edges = self.tcfg.edges
        mem_ls = []
        for i in self.lds_table:
            if i.is_sp is False:
                mem_ls.append(
                    [i.node.name] + [i.ins.tokens[0]] + [i.ins.addr.val()] + [i.final_addr] + [int(i.ins.ls_data_width / 8)] + [str(i.ins.is_data_group)])

        # 如果AddressMode是寄存器则赋值 -1
        for item in mem_ls:
            if item[5] == "True":
                item[4] = -1

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
        # print("mem_head: ", mem_head)
        # 判断load and store指令 如果是load/store将后面的值改为访存地址值(int)
        for n in range(len(mem_ls)):
            for i in range(len(mem_head)):
                # 第一个条件是判断是否同一 node; 第二个条件判断地址是不是load/store的
                if mem_ls[n][0] == mem_head[i][0] and mem_ls[n][2] == mem_head[i][1]:
                    # 将第三个元素替换为数据的访存地址
                    mem_head[i][2] = mem_ls[n][3]
                    # 将长度替换为load/store传过来的长度
                    mem_head[i][3] = mem_ls[n][4]

        # print("mem_head_222: ", mem_head)
        # cache分析所需要的memory node信息
        # print(mem_node)

        # 在这里提前获得.bss & .data segment信息
        # segment = segmentReader(r'C:\Users\51777\Desktop\华为memory\test\objdump\-D manytest.asm')
        # segment = segmentReader(r'D:\workspace\Gitdocuments\hw-memory\benchmarks\final_benchmark\spec_benchD.asm')
        bss = self.bread.getbss()
        data = self.bread.getdata()
        # 将.bss 和 .data 合成一个 一般是 .data在前 .bss在后; 但是为了方便处理.data的最后一个数据长度,将其反过来
        ALL = []
        for i in range(len(bss)):
            ALL.append(bss[i])
        for i in range(len(data)):
            ALL.append(data[i])
        # print("ALL:", ALL)

        # 处理.data的最后一个数据长度, 就是.bss段开始标志的'completed.0'地址
        ALL[-1][3] = ALL[0][2]
        # print("ALL_Last:", ALL)

        # 直接把.bss/.data中全局变量长度 替换到mem_head里,更方便
        for i in ALL:
            for item in mem_head:
                # 这里item[3]如果是寄存器 比如这里用-1记录; 提前判断:如果是寄存器,则用tail-head得到的长度替换item[3]
                if i[2] <= item[2] and item[2] < i[3] and item[3] == -1:  # 如果访存地址是在这个数组之间 且是加入数组(sp作为中间变量 偏移)
                    item[2] = i[2]  # 如果
                    item[3] = i[3] - i[2]
        # print("mem_head_Last: ", mem_head)

        # 对于同一node 如果前后地址一致，则append tuple(start,end); 前后地址不一致说明是l/s指令，则append tuple(start,start), tuple(end,end)
        # 这里的tuple(end,end) 应该是tuple(end,end+len) len单独一个list传进来，根据指令长度决定，如果是寄存器则通过寻找segement确定 先默认长度为4
        for item in mem_head:
            key = item[0]
            if key not in result:
                result[key] = []
            # 这边mem_head中会从（mem_ls会从load and store那里获取长度属性）然后将其添加到mem_ls 变成类似 ['n0', 1920, 1920, 4] 4即为长度 然后直接加长度即可 item[2] +item[3]
            if item[1] == item[2]:
                # 指令默认为4
                result[key].append((item[1], item[2] + 4))
            else:
                # 指令默认为4
                result[key].append((item[1], item[1] + 4))
                # load and store加长度
                result[key].append((item[2], item[2] + item[3]))


        for key in result:
            result[key] = tuple(result[key])
        # cache分析所需要memory trace信息
        # print(result)

        mem_edge = []
        for i in tcfg_edges:
            # print(i.src.name, i.dst.name)
            mem_edge.append((i.src.name, i.dst.name))

        # print test information of cache analysis
        # cache分析所需要的边信息 node--->node 有向边
        # print(mem_edge)
        # # cache分析所需要的memory node信息
        # print(mem_node)
        # # cache分析所需要memory trace信息
        # print(result)

        '''
            将memory trace按照in格式打印到文件里 方便分析
                用 -> 匹配edge信息
                用 [] 匹配access
                用 : 匹配cache信息配置
        '''
        max_width = max(len(key) for key in result.keys())  # 定义最宽字符 为了后面做准备
        # f = self.cachefile
        with open(self.cachefile, 'w') as f:
            f.write("\nentry: n0   ;\n\n")
            for node in mem_node:
                f.write(node + ';' + '\n')
            for edge_in, edge_out in mem_edge:
                f.write(f"{edge_in} -> {edge_out}" + ';' + '\n')
            for key, values in result.items():
                f.write(f"[{key:<{max_width}}] ")
                for i, (start, end) in enumerate(values):
                    f.write(f"{start}-{end}")
                    if i != len(values) - 1:  # 如果不是最后一个元组，则加上逗号
                        f.write(", ")
                f.write(";\n")
            # TODO 考虑cache基本信息从哪里得到? e.g.,cache信息从一个config读入; 暂时直接指定
            f.write("cache_offset: 6     ;\ncache_set_index: 8  ;\ncache_assoc: 4      ;")

        # ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        # cache_risk_level_analysis ---> TODO LIST[[loop*, risk*], ...]

        # loop_information ---> Dict{}: loop_list{'loop.name':[node_set], ...}
        self.loop_list = {}
        for loop in self.tcfg.loops:
            # print(loop.name)
            key = loop.name
            if key not in result:
                self.loop_list[key] = []

            for n in loop.all_nodes:
                self.loop_list[key].append(n.name)

        # 根据loop获取该loop的memory access
        loop_memory_access = {key: [v for k, v in result.items() if k in values] for key, values in self.loop_list.items()}
        loop_memory_access = {key: tuple(item for sublist in value for item in sublist) for key, value in loop_memory_access.items()}
        # 这里验证以lbm.asm为例, 只有n0和n14访存了更大的page, 但是三个loop中没有包含这两个node的情况, 所以生成的是对的
        # print(loop_memory_access)

        # 根据所得到的loop_memory_access来具体划分每个loop的memory pages
        page_size = 4096

        self.page_loop_access = {}  # 用于保存页面序列的字典

        # TODO
        # 遍历所有层级的地址序列
        for level, address_list in loop_memory_access.items():
            visited_pages = set()  # 用来保存已经访问过的内存页面
            page_list = []  # 用于保存属于当前地址序列的内存页面
            # print("=========================", level, address_list)
            # 遍历地址序列中的每一个地址并转换为页面编号
            for addr_start, addr_end in address_list:
                page_start, page_end = (addr_start // page_size) * page_size, ((addr_end - 1) // page_size + 1) * page_size  # 地址所在的内存页面范围
                # if page_start in visited_pages:  # 如果该页面已经在当前地址序列的处理过程中，直接跳过
                # if (page_start, page_end) in visited_pages:
                if page_start in visited_pages:
                    continue
                visited_pages.add(page_start)  # 将该页面标记为已处理
                # visited_pages.add((page_start, page_start + page_size))
                while page_start < page_end:
                    if page_start + page_size < page_end:
                        page_list.append((page_start, page_start + page_size))
                        page_start = page_start + page_size
                        # visited_pages.add((page_start, page_start + page_size))
                    else:
                        page_list.append((page_start, page_end))
                        # visited_pages.add((page_start, page_start + page_size))
                        break
            # print(page_list)
            self.page_loop_access[level] = tuple(page_list)  # 添加当前层级的页面列表到结果字典中


    def fixpoint(self):

        self.config, graph, user_kwargs = read_from_file(self.cachefile)

        self.graph_must, self.graph_may, self.graph_pers = deepcopy(graph), deepcopy(graph), deepcopy(graph)

        fixpoint(self.config, self.graph_must, 'must', **user_kwargs)
        fixpoint(self.config, self.graph_may, 'may', **user_kwargs)
        fixpoint(self.config, self.graph_pers, 'persistent', **user_kwargs)

    def analysis(self):

        loop_bound_list = {}
        for loop in self.tcfg.loops:
            loop_bound_list[loop.name] = loop.bound

        end_output = list()
        nodes2loop = {tuple(sorted([n.name for n in lp.all_nodes])): lp for lp in self.tcfg.loops}

        for node_list in self.loop_list.values():

            loop = nodes2loop.get(tuple(sorted(node_list)))
            page_range = self.page_loop_access.get((loop_name := loop.name))

            page_mapping: Dict[int, Dict[str, list]] = {range_start // 4096: {'hit': [], 'miss': [], 'persistent': [], 'uc': []}
                                                        for range_start, _ in page_range}

            for n_must, n_may, n_pers in zip(self.graph_must.all_nodes, self.graph_may.all_nodes, self.graph_pers.all_nodes):
                if n_must.ident not in node_list:
                    continue
                for rlt_must, rlt_may, rlt_pers in zip(n_must.analysis_result(), n_may.analysis_result(), n_pers.analysis_result()):
                    for mb, must_f, may_f, pers_f in zip(rlt_must[1], rlt_must[2], rlt_may[2], rlt_pers[2]):
                        mapped_dict = page_mapping.get(self.config.block2address(mb) // 4096, None)
                        if must_f:
                            mapped_dict['hit'].append(mb)
                        elif pers_f:
                            mapped_dict['persistent'].append(mb)
                        elif may_f:
                            mapped_dict['miss'].append(mb)
                        else:
                            mapped_dict['uc'].append(mb)

            for p_beg, _ in page_range:
                lb = loop_bound_list.get(loop_name)
                p_num = p_beg // 4096
                p_map = page_mapping.get(p_num, None)
                hit_num = len(p_map['hit']) * lb + (len_pers := len(p_map['persistent'])) * (lb - 1) + (tmp := (0.5 * len(p_map['uc']) * lb))
                miss_num = len_pers + len(p_map['miss']) * lb + tmp
                try:
                    rlt = hit_num / miss_num
                except ZeroDivisionError as _:
                    rlt = -1
                end_output.append([loop_name, p_num, rlt])

        return end_output
