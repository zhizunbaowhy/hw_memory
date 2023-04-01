class loop_heat:
    def __init__(self,TCFG,LSProc,segmentReader) -> None:
        self.lsproc = LSProc
        self.lds_table = self.lsproc.ls_table
        self.a=segmentReader.getbss()
        self.b=segmentReader.getdata()
        self.tcfg=TCFG
        self.addr_length={i.final_addr : i.ins.ls_data_width for i in self.lds_table}
        ###以下变量用来承接结果

    def find_range(self,addr:int):
        if self.addr_length[addr]!=-1:
            return addr+int(self.addr_length[addr]/8)
        for i in self.a:
            if int(addr)==i[2]:
                return i[3]
        for i in self.b:
            if int(addr)==i[2]:
                return i[3]
    def loop_heat_analysis(self):
        for l in self.tcfg.loops:
            #print("{} (in {} children {}): {}->{} {}".format(l.name, l.father.name if l.father is not None else "None", [sub_l.name for sub_l in l.children], l.back_edge.src.name, l.back_edge.dst.name, [n.name for n in l.all_nodes]))
            l.back_edge.is_backEdge = True
        for n in self.tcfg.all_nodes:
            temp = n.inside_loop.name if n.inside_loop is not None else 'None'
            print("{} {}".format(n.name, temp))
        #将对应的指令添加到node的热度信息表中
        for i in self.lds_table:
            if i.ins.name[0:1] == "l":
                #print(i.ins.tokens)
                i.node.loadlist.append((i.ins,i.final_addr))
            elif i.ins.name[0:1] == "s":
                i.node.storelist.append((i.ins,i.final_addr))

        for node in self.tcfg.all_nodes:
            for i in node.loadlist:
                node.heat_ld_result[i[1],self.find_range(i[1])]=0
            for i in node.loadlist:
                node.heat_ld_result[i[1],self.find_range(i[1])]+=1
            for i in node.storelist:
                node.heat_st_result[i[1],self.find_range(i[1])]=0
            for i in node.storelist:
                node.heat_st_result[i[1],self.find_range(i[1])]+=1

        # for node in self.tcfg.all_nodes:
        #     print(node.name)
        #     print('load',node.heat_ld_result)
        #     print('store',node.heat_st_result)
        for l in self.tcfg.loops:
            print("{} (in {} children {}): {}->{} {}".format(l.name, l.father.name if l.father is not None else "None", [sub_l.name for sub_l in l.children], l.back_edge.src.name, l.back_edge.dst.name, [n.name for n in l.all_nodes]))
            l.back_edge.is_backEdge = True
            for j in l.all_nodes:
                print(j.name,j.heat_ld_result,j.heat_st_result)
                for key,value in j.heat_ld_result.items():
                    if key in l.loop_ld_heat:
                        l.loop_ld_heat[key]+=value
                    else:
                        l.loop_ld_heat[key]=value
                for key,value in j.heat_st_result.items():
                    if key in l.loop_st_heat:
                        l.loop_st_heat[key]+=value
                    else:
                        l.loop_st_heat[key]=value
            
            print(l.name,'ld_heat_analysis',l.loop_ld_heat,'st_heat_analysis',l.loop_st_heat)




















# from cache_analysis.read_segment import segmentReader
# from newCFG.heat_analysis import loop_heat
# bread = segmentReader(r'C:\Users\13377\Desktop\hw-memory-master (1)\hw-memory-master\benchmarks\objdump-D\-D manytest.asm')
# test=loop_heat(tcfg,lsproc,bread)
# test.loop_heat_analysis()























































































































































































