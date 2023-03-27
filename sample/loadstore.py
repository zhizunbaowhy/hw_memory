from queue import Queue,LifoQueue,PriorityQueue

class LSunit:
    def __init__(self,instr,node):
        self.__ins = instr
        self.__node = node
        self.reg_traget = instr.ls_reg_traget
        self.__addr_offset = instr.ls_addr_offset
        self.findtarget = False
        self.__is_sp = False

        if self.reg_traget == "sp":
            self.findtarget = True
            self.__is_sp = True

    def set_sp_true(self):
        self.__is_sp = True
    
    @property
    def is_sp(self):
        return self.__is_sp
    
    @property
    def global_addr(self):
        pass
    
    @property
    def ins(self):
        return self.__ins
    
    @property
    def node(self):
        return self.__node
    
    @property
    def addr_offset(self):
        return self.__addr_offset



class LSPrco:
    def __init__(self,cfg_list):
        
        self.__tcfg_nodes = cfg_list
        self.__ls_table = list()
        
        for node in self.__tcfg_nodes:
            for ins in node.instructions:
                if ins.is_ls and ins.ls_handle:
                    temp_lsunit = LSunit(ins,node)
                    self.__ls_table.append(temp_lsunit)
        #for node in self.__tcfg_nodes:
        #    for ins in node.instructions:
        #        if ins.is_adrp:
        #            print(ins.tokens)

        for lsunit in self.__ls_table:

            find_queue= Queue(0)
            find_queue.put(lsunit.node)
            temp_node = find_queue.get()
            # print("this is in node",temp_node.name)

            for i in temp_node.to_edge:
                find_queue.put(i.src)
            
            find_ins_self = False
            for ins in reversed(temp_node.instructions):
                
                if ins.addr.val == lsunit.ins.addr.val:
                    find_ins_self = True
                    continue
                
                if find_ins_self:
                    # print(ins.tokens)
                    if ins.is_mov:
                        if lsunit.reg_traget == ins.mov_first_opperand:
                            lsunit.reg_traget = ins.mov_target
                    if ins.is_adrp:
                        if lsunit.reg_traget == ins.adrp_first_opperand:
                            lsunit.reg_traget = ins.adrp_addr
                            lsunit.findtarget = True
                    
            while not lsunit.findtarget:
                temp_node = find_queue.get()
                # print(temp_node.name)
                
                for i in temp_node.to_edge:
                    find_queue.put(i.src)
                
                for ins in reversed(temp_node.instructions):
                    # print(ins.tokens)
                    if ins.is_mov:
                        if lsunit.reg_traget == ins.mov_first_opperand:
                            lsunit.reg_traget = ins.mov_target
                            if ins.mov_target == "sp":
                                lsunit.findtarget = True
                                lsunit.set_sp_true()
                    if ins.is_adrp:
                        if lsunit.reg_traget == ins.adrp_first_opperand:
                            lsunit.reg_traget = ins.adrp_addr
                            lsunit.findtarget = True
                if find_queue.empty():
                    break
            
            # print(lsunit.reg_traget,lsunit.findtarget,lsunit.ins.tokens)
            # print()



    
    @property
    def ls_table(self):
        return self.__ls_table
    
    #def find_backtrace(self):
        
