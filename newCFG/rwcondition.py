import queue

class CFG_Node:
    def __init__(self,nodeObj):
        node_from = None
        node_to = None
        loop_from = None
        loop_to = None

        stat_rang = None
        re_value = 0
        loop_bound = None

        is_from = False
        is_to = False
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