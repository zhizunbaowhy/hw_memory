# -*- coding: utf-8 -*-
"""
@Time       : 2023/3/23 18:55
@Author     : Juxin Niu (juxin.niu@outlook.com)
@FileName   : cfg.py
@Description: 
"""
import types
from collections import deque
from enum import Enum, auto
from typing import Dict, List, Optional, Sequence, Set, Tuple

from graphviz import Digraph
from graphviz.dot import Dot

from sample.isa import Address, Instruction
from sample.read_asm import StatementType


class Procedure:
    def __init__(self, name: str, beg_addr: Address, instructions: list):
        self.__name = name
        self.__beg_addr = beg_addr
        self.__instructions = tuple(instructions)

        self.from_proc: Set[Procedure] = set()
        self.to_proc: Set[Procedure] = set()

    @property
    def name(self):
        """ Return the name/label of procedure. """
        return self.__name

    @property
    def beg_addr(self):
        """ Return the beginning address of procedure. The returned is an instance of type ``Address``. """
        return self.__beg_addr

    @property
    def instruction(self) -> Tuple[Instruction]:
        """ Return a tuple containing all instructions of the procedure in order. Modifications to it is illegal. """
        return self.__instructions


def proc_identify(statements: list):

    all_proc: List[Procedure] = list()

    proc_name, proc_addr, proc_inst = None, None, list()
    for s in statements:
        s: Tuple[StatementType, tuple]
        if s[0] == StatementType.Instruction:
            proc_inst.append(s[1])
        elif s[0] == StatementType.SubProcedure:
            if proc_name is not None and proc_addr is not None:
                all_proc.append(Procedure(proc_name, proc_addr, proc_inst))
            proc_addr, proc_name = Address(s[1][0]), s[1][1]
            proc_inst.clear()
    else:
        if proc_name is not None and proc_addr is not None:
            all_proc.append(Procedure(proc_name, proc_addr, proc_inst))

    return all_proc


def proc_draw_edges(procedures: List[Procedure]):

    for proc in procedures:
        proc.from_proc.clear()
        proc.to_proc.clear()
    proc_mapping: Dict[str, Procedure] = {proc.name: proc for proc in procedures}

    for proc in proc_mapping.values():
        instructions = proc.instruction
        for inst in instructions:
            b, _, label, _, _ = inst.branch_info
            if b and (label != proc.name):
                proc.to_proc.add(proc_mapping[label])
                proc_mapping[label].from_proc.add(proc)


def has_cycle(procedures: List[Procedure]) -> bool:
    in_degree = {p: 0 for p in procedures}
    for p in procedures:
        for to_p in p.to_proc:
            in_degree[to_p] += 1
    queue = [p for p in procedures if in_degree[p] == 0]
    while queue:
        p = queue.pop(0)
        for to_p in p.to_proc:
            in_degree[to_p] -= 1
            if in_degree[to_p] == 0:
                queue.append(to_p)
    return any(in_degree.values())


def find_cycle(procedures: List[Procedure]) -> Optional[List[Procedure]]:
    def dfs(proc, visited_proc, path):
        visited_proc.add(proc)
        path.append(proc)
        for to_p in proc.to_proc:
            if to_p in path:
                return path[path.index(to_p):]
            elif to_p not in visited_proc:
                f_cycle = dfs(to_p, visited_proc, path)
                if f_cycle:
                    return f_cycle
        path.pop()
        return None

    cycle = None
    visited = set()
    for p in procedures:
        if p not in visited:
            cycle = dfs(p, visited, [])
            if cycle:
                break
    return cycle


def draw_proc(procedures: List[Procedure], filename='procedure_graph.gv', fmt='svg') -> Digraph:
    g = Digraph('Procedure Graph', filename=filename, format=fmt)
    for proc in procedures:
        g.node(proc.name)
    for proc in procedures:
        for to_proc in proc.to_proc:
            g.edge(proc.name, to_proc.name)
    return g


class CallGraphNode:
    def __init__(self, name: str, proc: Procedure):
        self.__name = name
        self.__proc = proc
        self.__is_plt = proc.name.endswith('@plt')

        self.from_edges = list()
        self.to_edges = list()
        self.rtn_return = True

    @property
    def name(self):
        return self.__name

    @property
    def procedure(self):
        return self.__proc

    @property
    def is_plt(self):
        return self.__is_plt


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
    def __init__(self, procedures: list, start_label: str = 'main'):
        self.__proc: List[Procedure] = procedures
        self.__start_label = start_label

        self.__nodes: Tuple[CallGraphNode] = tuple()
        self.__edges: Tuple[CallGraphEdge] = tuple()
        self.__build()

    def __build(self):
        proc_mapping = {p.name: p for p in self.__proc}
        if self.__start_label not in proc_mapping:
            raise KeyError("Unknown start label {}.".format(self.__start_label))

        nodes_list, edges_list = list(), list()

        bfs_q = deque([CallGraphNode(proc_mapping[self.__start_label].name, proc_mapping[self.__start_label])])
        while len(bfs_q) != 0:
            node: CallGraphNode = bfs_q.popleft()
            nodes_list.append(node)
            proc = node.procedure
            for inst in proc.instruction:
                b, _, label, _, _ = inst.branch_info
                if b and (label != proc.name):
                    new_node = CallGraphNode("{}|{}#{}".format(node.name, inst.addr.hex_str(), label), proc_mapping[label])
                    edge = CallGraphEdge(node, new_node)
                    node.to_edges.append(edge)
                    new_node.from_edges.append(edge)
                    bfs_q.append(new_node)
                    edges_list.append(edge)

        self.__nodes = tuple(nodes_list)
        self.__edges = tuple(edges_list)

    @property
    def nodes(self):
        return self.__nodes

    @property
    def edges(self):
        return self.__edges

    def draw_graph(self, filename='call_graph.gv', fmt='svg') -> Digraph:
        g = Digraph('Call Graph', filename=filename, format=fmt)
        for node in self.__nodes:
            g.node(node.name)
        for edge in self.__edges:
            g.edge(edge.src.name, edge.dst.name)
        return g


class TCfgNode:
    def __init__(self, name, base_proc: CallGraphNode, instructions: Sequence[Instruction]):
        self.__name = name
        self.__base_proc = base_proc
        self.__instructions = tuple(instructions)

        self.from_edge: List[TCfgEdge] = list()
        self.to_edge: List[TCfgEdge] = list()

    @property
    def name(self):
        return self.__name

    @property
    def base_proc(self):
        return self.__base_proc

    @property
    def inst_range(self):
        return self.__instructions[0].addr, self.__instructions[-1].addr

    @property
    def instructions(self):
        return self.__instructions


class TCfgEdgeType(Enum):
    Textual = auto()
    BranchTaken = auto()
    BranchNoTaken = auto()
    ProcReturn = auto()
    Believed = auto()


class TCfgEdge:
    def __init__(self, src: TCfgNode, dst: TCfgNode, kind: TCfgEdgeType):
        self.__src = src
        self.__dst = dst
        self.__kind = kind

    @property
    def src(self):
        return self.__src

    @property
    def dst(self):
        return self.__dst

    @property
    def kind(self):
        return self.__kind


class TCfg:
    def __init__(self, call_graph: CallGraph):
        self.__call_graph = call_graph

        self.__nodes_mapping: Dict[CallGraphNode, List[TCfgNode]] = dict()
        self.__edges: List[TCfgEdge] = list()

        self.__build()

    def __new_edge(self, src: TCfgNode, dst: TCfgNode, kind: TCfgEdgeType):
        new_edge = TCfgEdge(src, dst, kind)
        src.from_edge.append(new_edge)
        dst.to_edge.append(new_edge)
        self.__edges.append(new_edge)

    def __build(self):
        global_idx = 0
        finish_node_mapping: Dict[CallGraphNode, TCfgNode] = dict()
        call_proc_mapping: Dict[str, CallGraphNode] = {p.name: p for p in self.__call_graph.nodes}

        for call_proc in self.__call_graph.nodes:
            proc = call_proc.procedure

            # Segmentation because of branched to.
            seg_addr = set()
            for inst in proc.instruction:
                b, _, label, offset, addr = inst.branch_info
                addr: Address
                if b and (label == proc.name):
                    seg_addr.add(addr.val())

            # Slice sub-procedure into several TCfg nodes.
            inst_slicing = list()
            all_nodes = list()
            for inst in proc.instruction:
                if (inst.addr.val() in seg_addr) and len(inst_slicing) != 0:
                    new_node = TCfgNode("n{}".format(global_idx), call_proc, inst_slicing)
                    global_idx += 1
                    all_nodes.append(new_node)
                    inst_slicing.clear()
                inst_slicing.append(inst)
                if inst.name == 'ret' or inst.is_branch:
                    new_node = TCfgNode('n{}'.format(global_idx), call_proc, inst_slicing)
                    global_idx += 1
                    all_nodes.append(new_node)
                    inst_slicing.clear()
                    # Check if current node has a ``ret`` instruction.
                    if inst.name == 'ret':
                        if call_proc in finish_node_mapping:
                            raise RuntimeError("Multi-return statement in one procedure is not allowed.")
                        finish_node_mapping[call_proc] = new_node
                        call_proc.rtn_return = True
            else:
                if len(inst_slicing) != 0:
                    new_node = TCfgNode('n{}'.format(global_idx), call_proc, inst_slicing)
                    global_idx += 1
                    all_nodes.append(new_node)

            self.__nodes_mapping[call_proc] = all_nodes
            if call_proc not in finish_node_mapping:
                finish_node_mapping[call_proc] = all_nodes[-1]
                call_proc.rtn_return = False

        for call_proc, cfg_nodes in self.__nodes_mapping.items():
            proc = call_proc.procedure
            for node_idx, node in enumerate(cfg_nodes):
                # For a node in TCfg, if it has branch instruction, then the last one is branch instruction.
                final_inst = node.instructions[-1]
                b, cond, label, offset, addr = final_inst.branch_info
                if not b:
                    try:
                        next_node = cfg_nodes[node_idx + 1]
                    except IndexError:
                        # This node is the last one in this sub-procedure.
                        pass
                    else:
                        self.__new_edge(node, next_node, TCfgEdgeType.Textual)
                else:
                    if label == proc.name:
                        """ For node with branch targeting current sub-procedure """
                        target_addr = addr.val()
                        target_node: TCfgNode
                        for check_node in cfg_nodes:
                            if check_node.inst_range[0].val() == target_addr:
                                target_node = check_node
                                break
                        else:
                            raise KeyError("Do not found target node with start address {} in sub-procedure {}.".format(addr.hex_str(), call_proc.name))
                        self.__new_edge(node, target_node, TCfgEdgeType.BranchTaken)

                    else:
                        """ For node with branch targeting different sub-procedure """
                        target_call_proc_name = "{}|{}#{}".format(call_proc.name, final_inst.addr.hex_str(), label)
                        if target_call_proc_name not in call_proc_mapping:
                            raise KeyError("Do not found target sub-procedure with name {}.".format(target_call_proc_name))
                        target_call_proc = call_proc_mapping[target_call_proc_name]
                        # Edge from current node to start node of target sub-procedure
                        self.__new_edge(node, self.__nodes_mapping[target_call_proc][0], TCfgEdgeType.BranchTaken)
                        # Edge from finish node of target sub-procedure to next of current node
                        try:
                            next_node = cfg_nodes[node_idx + 1]
                        except IndexError:
                            # This node is the last one in this procedure.
                            pass
                        else:
                            kind = TCfgEdgeType.ProcReturn if target_call_proc.rtn_return else TCfgEdgeType.Believed
                            self.__new_edge(finish_node_mapping[target_call_proc], next_node, kind)

                    # For conditional branch, a non-taken edge should be added.
                    if cond:
                        try:
                            next_node = cfg_nodes[node_idx + 1]
                        except IndexError:
                            # This node is the last one in this sub-procedure.
                            pass
                        else:
                            self.__new_edge(node, next_node, TCfgEdgeType.BranchNoTaken)

    @property
    def nodes_mapping(self):
        return types.MappingProxyType(self.__nodes_mapping)

    @property
    def all_nodes(self):
        return sum(list(self.__nodes_mapping.values()), list())

    @property
    def edges(self):
        return tuple(self.__edges)

    def draw_graph(self, filename='tcfg.gv', fmt='svg') -> Digraph:
        g = Digraph('TCFG', filename=filename, format=fmt)
        for call_proc, cfg_nodes in self.__nodes_mapping.items():
            for node in cfg_nodes:
                r = node.inst_range
                g.node(node.name, "{}\n({},{})".format(node.base_proc.procedure.name, r[0].hex_str(), r[1].hex_str()))
        for edge in self.__edges:
            kind = edge.kind
            if kind == TCfgEdgeType.Textual:
                g.edge(edge.src.name, edge.dst.name)
            elif kind == TCfgEdgeType.BranchTaken:
                g.edge(edge.src.name, edge.dst.name, color='green')
            elif kind == TCfgEdgeType.BranchNoTaken:
                g.edge(edge.src.name, edge.dst.name, color='red')
            elif kind == TCfgEdgeType.ProcReturn:
                g.edge(edge.src.name, edge.dst.name, color='purple')
            elif kind == TCfgEdgeType.Believed:
                g.edge(edge.src.name, edge.dst.name, style='dashed')
        return g
