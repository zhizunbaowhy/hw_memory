import random
from rw_analysis.loadstore import LSProc
from rw_analysis.rw_condition import RWProc, RWType
from rw_analysis.rw_condition_out import RWOut_Proc


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
                e.loop_value = 500
                e.edge_value = 2

        self.lsproc = LSProc(tcfg_nodes)

        lds_table = self.lsproc.ls_table

        for i in lds_table:
            i.final_addr
            i.local_offset

        #for i in lds_table:
        #    if i.target_num == 1:
        #       print(i.ins.tokens,i.reg_target,i.final_addr,i.addr_offset,"是否找到",i.is_find,i.node.name) 
        #    else:
        #        print(i.ins.tokens,i.reg_target_list[0],i.reg_target_list[1],i.addr_offset,i.final_addr,"是否找到",i.is_find,i.node.name)

        self.rwproc = RWProc(lds_table)

        Global_Tolerant_value = 0
        Global_Intolerant_value = 0

        #for rwu in self.rwproc.rw_table:
            #print(rwu.ins.tokens,rwu.find_cycle,rwu.ins.final_addr,rwu.is_torrent,rwu.node.name)
            #if rwu.is_torrent == RWType.Global_Tolerant:
            #    Global_Tolerant_value += rwu.find_cycle
            #    print(rwu.ins.tokens,rwu.ins.final_addr,rwu.node.name,rwu.is_torrent,rwu.find_cycle,rwu.ins.is_data_group)
        #print()
        #for rwu in self.rwproc.rw_table:
            #print(rwu.ins.tokens,rwu.find_cycle,rwu.ins.final_addr,rwu.is_torrent)
            #if rwu.is_torrent == RWType.Global_Intolerant:
            #    Global_Intolerant_value += rwu.find_cycle
            #    print(rwu.ins.tokens,rwu.ins.final_addr,rwu.node.name,rwu.is_torrent,rwu.find_cycle,rwu.ins.is_data_group)

        #print("全局的容错路径为：",Global_Tolerant_value)
        #print("全局的非容错路径为：",Global_Intolerant_value)  

        rwout = RWOut_Proc(tcfg_nodes,segreader,self.rwproc.rw_table,tcfg.loops)

        self.loop_info = rwout.loopinfo

        #for k,v in self.loop_info.items():
        #    print(k,v)
