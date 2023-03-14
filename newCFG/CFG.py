import graphviz
from graphviz import Digraph

from cfg_preparation  import CFGNode_and_edge

class CFG:
    def __init__(self,filename:str):
        self.isa=CFGNode_and_edge(filename)
    def CFG_gen(self):
        self.isa.CFGNode_and_edge_gen()
        dot = Digraph('single_block')
        for i in range(len(self.isa.head)):
            if self.isa.is_loop(i):
                self.isa.order[i] += ' and loop'  # 如果order中含有loop我们就loop数加一

            dot.edge(self.isa.head[i], self.isa.tail[i], self.isa.order[i])
        dot.view()  # 画图
    #TODO:要把loop移植过来






a=CFG(r"/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")
a.CFG_gen()