from queue import Queue

class LSUnit:
    def __init__(self,ins,node):
        self.__ins = ins
        self.__node = node
        self.__addr = self.__ins.addr.val
        self.target_num = self.__ins.ls_target_num
        if self.target_num == 1:
            self.__reg_target = self.__ins.ls_reg_target
        else:
            self.__reg_target_list = self.ins.ls_reg_target_list
        self.__addr_offset = self.__ins.ls_addr_offset
        self.__is_find = False
        self.__is_sp = False
        self.__final_addr = 0

        if self.__reg_target == "sp":
            self.__is_find = True
            self.__is_sp = True

    @property
    def is_find(self):
        return self.__is_find
    
    def set_is_find(self):
        self.__is_find = True

    @property
    def is_sp(self):
        return self.__is_sp
    
    def set_sp_true(self):
        self.__is_sp = True

    @property
    def node(self):
        return self.__node
    
    @property
    def reg_target(self):
        return self.__reg_target
    
    def set_reg_target(self,addr):
        self.__reg_target = addr

    @property
    def final_addr(self):
        if self.__is_find:
            if self.__is_sp:
                pass
            else:
                self.__final_addr = int(self.reg_target,16)
                self.__final_addr += self.__addr_offset

        self.__ins.set_final_addr(self.__final_addr)
        return self.__final_addr
    
    @property
    def ins(self):
        return self.__ins
    
    @property
    def ins_addr(self):
        return self.__addr
    
    @property
    def node(self):
        return self.__node
    
    @property
    def addr_offset(self):
        return self.__addr_offset

    def add_addr_offset(self,num):
        self.__addr_offset += num

class LSProc:
    def __init__(self,cfg_list):
        self.__tcfg_nodes = cfg_list
        self.__ls_table = list()

        for node in self.__tcfg_nodes:
            for ins in node.instructions:
                if ins.is_ls and ins.ls_handle:
                    temp_lsunit = LSUnit(ins,node)
                    self.__ls_table.append(temp_lsunit)
        

        for lsunit in self.__ls_table:

            find_queue= Queue(0)
            find_queue.put(lsunit.node)
            temp_node = find_queue.get()

            find_ins_self = False

            for ins in reversed(temp_node.instructions):
                if ins.addr.val == lsunit.ins.addr.val:
                        find_ins_self = True
                        continue
                if find_ins_self:
                    # print(ins.tokens)
                    self.__each_ins_prco(lsunit,ins)
            if temp_node.in_num == 0:
                pass
            else:
                for e in temp_node.incoming_edge:
                    if e.is_backEdge:
                        continue
                    else:
                        find_queue.put(e.src)
                while not lsunit.is_find:
                    temp_node = find_queue.get()

                    for e in temp_node.incoming_edge:
                        if e.is_backEdge:
                            continue
                        else:
                            find_queue.put(e.src)
                    
                    for ins in reversed(temp_node.instructions):
                        self.__each_ins_prco(lsunit,ins)
                    if find_queue.empty():
                        break
                            







    def __each_ins_prco(self,lsunit,ins):
        if ins.is_mov:
            if lsunit.reg_target == ins.mov_first_opperand:
                lsunit.set_reg_target(ins.mov_target)
                if ins.mov_target == "sp":
                    lsunit.set_is_find()
                    lsunit.set_sp_true()
        if ins.is_adrp:
            if lsunit.reg_target == ins.adrp_first_opperand:
                lsunit.set_reg_target(ins.adrp_addr)
                lsunit.set_is_find()
        if ins.is_add:
            if lsunit.reg_target == ins.add_1op:
                if ins.add_same:
                    lsunit.add_addr_offset(ins.add_3op)
                    # print(lsunit.addr_offset)
    
    @property
    def ls_table(self):
        return self.__ls_table