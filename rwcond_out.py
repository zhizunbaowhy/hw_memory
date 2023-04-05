import random
from newCFG.loadstore import LSProc
from newCFG.rw_condition import RWProc, RWType
from newCFG.rw_condition_out import RWOut_Proc


class loadstore_Obj:
   def __init__(self,segreader,tcfg):
        tcfg_nodes = tcfg.all_nodes
        tcfg_edges = tcfg.edges
        
        for l in tcfg.loops:
            l.back_edge.is_backEdge = True
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
                e.loop_value = random.randint(0,10)
                e.edge_value = 2

        self.lsproc = LSProc(tcfg_nodes)

        lds_table = self.lsproc.ls_table

        for i in lds_table:
            i.final_addr
            i.local_offset

        #for i in lds_table:
        #    if i.target_num == 1:
        #       pass
                #print(i.ins.tokens,i.reg_target,i.addr_offset) 
        #   else:
                #print(i.ins.tokens,i.reg_target_list[0],i.reg_target_list[1],i.addr_offset,i.final_addr)

        self.rwproc = RWProc(lds_table)

        Global_Tolerant_value = 0
        Global_Intolerant_value = 0

        for rwu in self.rwproc.rw_table:
            #print(rwu.ins.tokens,rwu.find_cycle,rwu.ins.final_addr,rwu.is_torrent)
            if rwu.is_torrent == RWType.Global_Tolerant:
                Global_Tolerant_value += rwu.find_cycle
                
                #print(rwu.ins.tokens,rwu.ins.final_addr,rwu.node.name)
        #print()
        for rwu in self.rwproc.rw_table:
            #print(rwu.ins.tokens,rwu.find_cycle,rwu.ins.final_addr,rwu.is_torrent)
            if rwu.is_torrent == RWType.Global_Intolerant:
                Global_Intolerant_value += rwu.find_cycle
                #print(rwu.ins.tokens,rwu.ins.final_addr,rwu.node.name)

        #print("全局的容错路径为：",Global_Tolerant_value)
        #print("全局的非容错路径为：",Global_Intolerant_value)  

        rwout = RWOut_Proc(tcfg_nodes,segreader,self.rwproc.rw_table,tcfg.loops)

        self.loop_info = rwout.loopinfo

        #for k,v in self.loop_info.items():
        #    print(k,v)
