import queue

class hw_CFG_Node:
    def __init__(self,tCFGnode):

        self.__self = tCFGnode
        self.__name = tCFGnode.name
        self.instr = tCFGnode.instructions
        
        self.node_from = list()#来的tcfgnode
        self.node_to = list()#去的tcfgnode
        self.node_from_num = 0
        self.is_head = True
        self.node_to_num = 0
        self.is_end = True       

        self.node_value = 0
        self.edge_value = 0
        self.loop_value = 0    

        self.is_from = False#标识是否统计完入边，说明入边统计完了，出边那边可以放行了
        self.is_to = False#说明出边统计完了不用再传递了
        self.is_loop = False


        for i in self.__self.incoming_edge:
            self.node_from.append(i.src)
            self.node_from_num += 1
        for i in self.__self.outgoing_edge:
            self.node_to.append(i.dst)
            self.node_to_num += 1

        if self.node_from_num == 0:
            self.is_head = True
            self.node_value = 1
        else:
            self.is_head = False
        if self.node_to_num == 0:
            self.is_end = True
            self.edge_value = 0
        else:
            self.is_end = False
        
    @property
    def node_self(self):
        return self.__self
    
    @property   
    def name(self):
        return self.__name
    
    @property
    def node_get_value(self,from_edge_value):
        self.node_value += from_edge_value

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