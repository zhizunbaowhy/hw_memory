
from newCFG.rw_condition import RWType
class RWOut_Proc:

    def __init__(self,tcfgnodes,segReader,rwtable):
        self.tcfg_nodes = tcfgnodes
        self.segreader = segReader
        self.rw_table = rwtable

        self.bss_res = self.segreader.getbss()
        self.data_res = self.segreader.getdata()

        for i in self.bss_res:
            print(i[2],i[3])
        for i in self.data_res:
            print(i[2],i[3])

        node_access_addr = {}
        for node in self.tcfg_nodes:
            node_access_addr[node.name] = list()
        print(node_access_addr)

        for rwu in self.rw_table:
            if rwu.is_torrent == RWType.Global_Tolerant:
                if rwu.ins.is_data_group:
                    print(rwu.ins.final_addr,rwu.find_cycle,rwu.node.name)
            if rwu.is_torrent == RWType.Global_Intolerant:
                pass#print(rwu.ins.tokens,rwu.ins.final_addr)
