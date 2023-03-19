#from enum import Enum, Flag, auto
from readfile import ASMFileReader, StatementType
#from typing import List


# class CFGEdgeKind(Enum):
#     """Kind of CFG edge.
#
#     There are three kinds of CFG edges:
#     - TAKEN:       the direct jump when the branch condition is true,
#                    function call is not included.
#                    分支条件为真时的直接跳转，函数调用不包括在内。
#     - NOT_TAKEN:   the fall-through jump when the branch condition is FALSE
#                     分支条件为FALSE时的跳转
#     - NEVER_TAKEN: connect the node where a unconditional function call
#                    take effects with the return node.
#                    将无条件函数调用生效的节点连接到返回节点。
#
#     我们有b （无条件跳转）
#     bl （函数调用）
#     b. （条件跳转）
#     """
#     TAKEN = auto()  #分支条件为真时的直接跳转，函数调用不包括在内 b.
#     NOT_TAKEN = auto() #分支条件为FALSE时的跳转  b.的另一条
#     NEVER_TAKEN = auto() #将无条件函数调用生效的节点连接到返回节点  可以理解为函数调用 bl


class single_CFGNode:
    def __init__(self,address:str,inedge,outedge):
        self.id=address  #以其address来定位，也就是他的标签
        # incoming edges
        self.in_edges = inedge
        # outcoming edges (taken / not-taken / never-taken)
        # self.out_not_taken: List[CFGEdge] = []
        # self.out_taken: List[CFGEdge] = []
        # self.out_never_taken: List[CFGEdge] = []
        self.out_edges=outedge



class singel_CFGEdge:
    """Control-flow graph edge type."""

    def __init__(self, src: single_CFGNode, dst: single_CFGNode,order) -> None:
        # src -> dst
        self.src = src
        self.dst = dst
        self.order=order  #这条边的种类



class CFGNode_and_edge:

    def __init__(self,fileobj:ASMFileReader):

        self.nodechart=[]  #这个就是最后的结果，里面有所有的CFGNode以及它的基本信息
        self.nodechart_show=[]
        self.edgechart = [] #这个就是最后的结果，里面有所有的CFGEdge以及它的基本信息
        self.edgechart_show=[]
        #这些是用来辅助cfg构建的，最后的结果都在上面的nodechart和edgechart里面
        self.reader=fileobj
        self.head=[]
        self.tail=[]
        self.order=[]
        
        #外部需要的数据
        self.__cfg_not_prepar = True
        self.__block_head = None
        self.__block_info = None
        self.__block_table = list()

    def CFGNode_and_edge_gen(self):
        main_line=0
        main_length=0
        #确定一下main的起点和长度
        for i in self.reader.symbol_table:
            if i[0][1]=='main':
                main_line=i[1]  #main的起点行数
                main_length=i[2]#main模块的长度
        #下面是对main的一些操作
        #print(self.reader.statements[121])
        #print(self.reader.symbol_table)
        edge = []  # 放入块的边界    都是上边界，牢记
        address = []  # main函数所有的地址
        for i in range(main_line,main_line+main_length):
            address.append(self.reader.statements[i][1][0])
        edge.append(main_line)
        for i in range(main_line,main_line+main_length):
            if  self.reader.statements[i][1][2][0] == 'b':
                edge.append(i + 1)
                if self.reader.statements[i][1][3][0:6] in address:
                    edge.append(address.index(self.reader.statements[i][1][3][0:6]))
        edge = sorted(set(edge))  # 排序去重
        #print(edge)
        # # 按照指令集查找分块
        for i in range(len(edge)):
            if i != len(edge) - 1:
                if self.reader.statements[int(edge[i+1])-1][1][2][0] != 'b':
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[edge[i+1]][1][0])
                    self.order.append('')
                elif self.reader.statements[int(edge[i + 1]) - 1][1][2][0:2] == 'b.':  #符合这种跳转的，需要画两条线
                    #两条线三个节点，先实例化并加入点集。
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[int(edge[i + 1])-1][1][3][0:6])
                    self.order.append(self.reader.statements[int(edge[i + 1]) - 1][1][2][2:4])

                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[edge[i + 1]][1][0])
                    self.order.append('')
                elif self.reader.statements[int(edge[i + 1]) - 1][1][2][0:3] == 'bc.':  # 符合这种跳转的，需要画两条线
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[int(edge[i + 1]) - 1][1][3][0:6])
                    self.order.append(self.reader.statements[int(edge[i + 1]) - 1][1][2][3:5])
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[edge[i + 1]][1][0])
                    self.order.append('')
                elif self.reader.statements[int(edge[i + 1]) - 1][1][2] == 'b':
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[int(edge[i + 1]) - 1][1][3][0:6])
                    self.order.append('b')
                elif self.reader.statements[int(edge[i + 1]) - 1][1][2] == 'bl':
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[int(edge[i + 1]) - 1][1][3][0:6])
                    self.order.append('bl')
                    self.head.append(self.bl_func(self.reader.statements[int(edge[i + 1]) - 1][1][3][8:-1]))
                    self.tail.append(self.reader.statements[edge[i + 1]][1][0])
                    self.order.append('')
        self.OOP_gen()

        #说明执行过了
        self.__cfg_not_prepar = False

    def bl_func(self,name:str) ->str:
        start,end = self.find_name(name)
        temp = []
        #print(self.reader.statements[126][1][3][0:6])
        #print(self.reader.statements[126][1][3][8:-1])
        for i in range(start,end,1):
            if self.reader.statements[i][1][2][0:2]== 'bl':
                temp.append([self.reader.statements[i][1][0]]+[self.reader.statements[i][1][2]]+[self.reader.statements[i][1][3][0:6]]+[self.reader.statements[i][1][3][8:-1]])
                # 第一个是地址，第二个是命令，第三个是跳到的地址，第四个是跳转的函数名称
            else:
                temp.append([self.reader.statements[i][1][0]]+[self.reader.statements[i][1][2]]+[self.reader.statements[i][1][3]])
                # 第一个是地址，第二个是命令，最后一个是跳到的地址
        edge = []
        address = []
        edge.append(start)
        for i in range(len(temp)):
            address.append(temp[i][0])
        for i in range(len(temp)):
            if temp[i][1][0] == 'b':
                edge.append(start+i+1)
                edge.append(start+address.index(temp[i][2][0:6]))#可能出错
        edge = sorted(set(edge))
        #print(edge)
        for i in range(len(edge)):
            if i != len(edge) - 1:
                if self.reader.statements[int(edge[i+1])-1][1][2][0] != 'b':
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[edge[i+1]][1][0])
                    self.order.append('')
                elif self.reader.statements[int(edge[i + 1]) - 1][1][2][0:2] == 'b.':  #符合这种跳转的，需要画两条线
                    #两条线三个节点，先实例化并加入点集。
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[int(edge[i + 1])-1][1][3][0:6])
                    self.order.append(self.reader.statements[int(edge[i + 1]) - 1][1][2][2:4])

                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[edge[i + 1]][1][0])
                    self.order.append('')
                elif self.reader.statements[int(edge[i + 1]) - 1][1][2][0:3] == 'bc.':  # 符合这种跳转的，需要画两条线
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[int(edge[i + 1]) - 1][1][3][0:6])
                    self.order.append(self.reader.statements[int(edge[i + 1]) - 1][1][2][3:5])
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[edge[i + 1]][1][0])
                    self.order.append('')
                elif self.reader.statements[int(edge[i + 1]) - 1][1][2] == 'b':
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[int(edge[i + 1]) - 1][1][3][0:6])
                    self.order.append('b')
                elif self.reader.statements[int(edge[i + 1]) - 1][1][2] == 'bl':
                    self.head.append(self.reader.statements[edge[i]][1][0])
                    self.tail.append(self.reader.statements[int(edge[i + 1]) - 1][1][3][0:6])
                    self.order.append('bl')
                    self.head.append(self.bl_func(self.reader.statements[int(edge[i + 1]) - 1][1][3][8:-1]))
                    self.tail.append(self.reader.statements[edge[i + 1]][1][0])
                    self.order.append('')
        return self.reader.statements[int(edge[len(edge) - 1])][1][0]

    def find_name(self, name:str):  # 找寻函数名字并且返回首尾的行
        for i in range(len(self.reader.symbol_table)):
            if self.reader.symbol_table[i][0][1]==name:
                return self.reader.symbol_table[i][1],self.reader.symbol_table[i][1]+self.reader.symbol_table[i][2]

    def OOP_gen(self):
        for i in range(len(self.head)):
            self.edgechart.append(singel_CFGEdge(self.head[i],self.tail[i],self.order[i]))
        for i in range(len(self.edgechart)):
            self.edgechart_show.append([self.edgechart[i].src]+[self.edgechart[i].dst]+[self.edgechart[i].order])
        #print(self.edgechart_show)
        temp=list(set(self.head+self.tail))
        for i in range(len(temp)):
            in_temp=[]
            out_temp=[]
            for j in range(len(self.edgechart)):
                if self.edgechart[j].dst==temp[i]:
                    in_temp.append(self.edgechart_show[i])
                if self.edgechart[j].src==temp[i]:
                    out_temp.append(self.edgechart_show[i])
            self.nodechart.append(single_CFGNode(temp[i],in_temp,out_temp))
        #for i in self.nodechart:
        #    print(i.id,'in_edges',i.in_edges,'out_edges',i.out_edges)

    def is_loop(self,i):#这里判断的逻辑是如果是向地址小的划线的话就是一个loop
        if self.hexStr2Number(self.head[i])>self.hexStr2Number(self.tail[i]):
            return True
        else:
            return False

    def hexStr2Number(self,strParam):#十六进制字符串转化为十进制数
        if strParam == '' or strParam is None:
            return False
        if strParam[0] == '0' and strParam[1] == 'x':
            strParam = strParam[2:]
        strParam = strParam.upper()
        len_of_hex = strParam.__len__()
        dic_of_hex = {
            "0": 0,
            "1": 1,
            "2": 2,
            "3": 3,
            "4": 4,
            "5": 5,
            "6": 6,
            "7": 7,
            "8": 8,
            "9": 9,
            "A": 10,
            "B": 11,
            "C": 12,
            "D": 13,
            "E": 14,
            "F": 15
        }
        result = 0
        for elem_of_strParam in strParam:
            if elem_of_strParam in dic_of_hex:
                result = result + dic_of_hex[elem_of_strParam] * (16 ** (len_of_hex - 1))
                len_of_hex -= 1
            else:
                return False
        return result


    #对于外部需要的函数的处理
    @property
    def block_head(self):
        if self.__cfg_not_prepar:
            self.CFGNode_and_edge_gen()
        if self.__block_head is None:
            self.__build_bolck_head()
        
        return self.__block_head

    @property
    def block_info(self):
        if self.__cfg_not_prepar:
            self.CFGNode_and_edge_gen()
        if self.__block_head is None:
            self.__build_bolck_head() 
        if self.__block_info is None:
            self.__build_block_info()
        
        return self.__block_info
    
    @property
    def block_table(self):
        if self.__cfg_not_prepar:
            self.CFGNode_and_edge_gen()
        if self.__block_head is None:
            self.__build_bolck_head() 
        if self.__block_info is None:
            self.__build_block_info()
        if len(self.__block_table) == 0:
            self.__build_block_table()
        
        return self.__block_table
    

    def __build_bolck_head(self):
        self.__block_head = sorted(list(set(self.head + self.tail)))

    def __build_block_info(self):

        self.__block_info = {}

        statments_table = self.reader.statements_table

        for blk_hd in self.__block_head:

            block_htl = ["头的行数","尾的行数"]
            
            for stat in statments_table:
                stat_type = stat[0]
                stat_dtl = stat[1]
                stat_idx = stat[2]
                if stat_type == StatementType.Instruction:
                    if stat_dtl[0] == blk_hd:
                        block_htl[0] = stat_idx
            
            self.__block_info[blk_hd] = block_htl
        
        self.block_info["400604"][1] = 115
        self.block_info["400620"][1] = 117
        self.block_info["400628"][1] = 118
        self.block_info["40062c"][1] = 120
        self.block_info["400634"][1] = 127
        self.block_info["40064c"][1] = 130
    
    def __build_block_table(self):

        for k,v in self.block_info.items():
            self.__build_singleBlock_table(v)
        
    def __build_singleBlock_table(self,singleBlock_info):
        block_headLine = singleBlock_info[0]
        head_idx = block_headLine
        block_tailLine = singleBlock_info[1]
        statments_table = self.reader.statements_table
        block_headAddr = statments_table[block_headLine-1][1][0]

        while head_idx <= block_tailLine:
            stat_dtl = statments_table[head_idx - 1]
            head_idx += 1
            self.__block_table.append((block_headAddr,stat_dtl[1],stat_dtl[2]))





    
