import queue

class hw_CFG_Node:
    def __init__(self,node):
        self.node_self = node
        self.node_from = list()#来的点
        self.node_to = list()#出去的点
        self.instr = node.instructions


        for i in self.node_self.to_edge:
            self.node_from.append(i.src)
        for i in self.node_self.from_edge:
            self.node_to.append(i.dst)
        

        node_from_num = 0
        is_head = False
        node_to_num = 0
        is_end = False


        stat_rang = None
        re_value = 0
        loop_bound = None

        is_from = False#说明入边统计完了，出边那边可以放行了
        is_to = False#说明出边统计完了
        is_loop = False

class RW_Model:
    def __init__(self,cfgObj):
        self.tor_value = 0
        self.intor_value = 0
        # 将cfg_node简化成我们想要的
        # 给每个节点把包括：从哪儿来，到哪儿去，有无loop



    def backtrace():
        #
        pass

    def find_target_load_or_store(self,start,end,last_idx,target):
        
        # while
        # 
        #   idx += 1
        #   if
        #       
        #       self.append[]
        #       
        #       break
        
        pass