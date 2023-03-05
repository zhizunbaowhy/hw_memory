from graphviz import Digraph
import os
#import numpy as np
import queue


class Prog:
    def __init__(self):
        # 用于装载整个asm文件
        self.asmFile = []
        # 抽取asm文件中需要用到的指令集部分，组成[地址][指令][寄存器][寄存器]格式的数组
        self.allInstr = []  # 整个部分指令集  res
        self.mainInstr = []  # main函数的部分的指令集  temp
        # 各个块的头
        self.blockHead = []
        # 各个块的尾
        self.blockEnd = []
        # blockHead对应在allInstr的行号
        self.headLine = []
        # blockEnd对应在allInstr的行号
        self.endLine = []
        self.headLineDir = {}
        self.endLineDir = {}
        self.headendDir = {}
        self.blockInfo = {}#bolckHead：[headline][endline][[fromwhere1][fromwhere2]...]

        self.line2head = {}#line:blockhead
        self.head2line = {}
        self.ldrList = []
        self.simpleldrList = []#上述的化简版，结构是[][][]
        self.strList = []
        self.simplestrList = []

        # Branch部分graphviz参数
        self.head = []  # 图中边edge的起点
        self.tail = []  # 图中边edge的终点
        self.order = []  # 连线上写着的指令集
        self.shoot={}  #每个顶点与某个常数的对应关系
        self.graph=[]  #用[1,3]这种形式画出的图
        self.loop = []      #我们把所有的loop存在这里面，然后进行子环的判断
        self.loop_figure=0  #一个计数器用来计数loop的数量
        self.inter = []     #目前没什么用
        self.graph_neigh={} #记录图中所有节点的入口都是谁
        # LoadStore部分graphviz参数
        self.loadHead = []
        self.loadTail = []
        self.loadOrder = []
        self.storeHead = []
        self.storeTail = []
        self.storeOrder = []   

    def draw(self):#创建dot画图，并且对loop数量进行计数
        dot = Digraph('single_block')
        for i in range(len(self.head)):
            if self.is_loop(i):
                self.order[i]+=' and loop'   #如果order中含有loop我们就loop数加一
                self.loop_figure+=1
            dot.edge(self.head[i], self.tail[i], self.order[i])

        for i in range (len(self.loadHead)):
            for a in range (len(self.loadHead[i])):
                if len(self.loadTail[i]) == 0:
                    continue
                else:
                    dot.edge(self.loadHead[i][a],self.loadTail[i][a],self.loadOrder[i][a])
        
        for i in range (len(self.storeHead)):
            for a in range (len(self.storeHead[i])):
                if len(self.storeTail[i]) == 0:
                    continue
                else:
                    dot.edge(self.storeHead[i][a],self.storeTail[i][a],self.storeOrder[i][a])

        dot.view()#画图

    # 将asm文件处理成能用的格式
    def read_file(self, file_name):
        with open(file_name, 'r', encoding='utf8') as file:
            f = file.readlines()
            for i in f:
                i = i.replace('\n', '')
                self.asmFile.append(i)  # 添加进去  #这一步就是读文件
            print(self.asmFile)

        #抽取asm文件中需要用到的指令集部分，处理成[地址][指令][待定][待定][待定][待定]格式的数组
        #由于实际指令集中格式变化很大，不能使用处理mainIntrs的方式分类，需要对于字符串进行进一步的处理
        for i in range(len(self.asmFile)):
            #空行直接扔掉
            if self.asmFile[i] == '':
                continue
            #观察asm文件，可知直到寄存器之前，都是可以和mainInstr共用的，关键在意第三个和第四个参数的具体位置，判断的标准就是“,”符号
            #这一块用于处理可用的指令集
            if self.asmFile[i][0] == ' ':
                tempAddr = self.asmFile[i][2:8]#装地址
                tempIntrs = self.asmFile[i][32:36]#装指令集

                regList = ["","","",""]#装后面的寄存器，视情况而定，目前看到最多四个参数
                regBlockState = False#用于判断结构类似于“[sp, #-16]!”的字符串，遇到左括号直接当成一整块处理，只到遇到右括号
                regNum = 0#用于确定此时处于regList中的第几个参数，并以此索引
                for a in self.asmFile[i][37:len(self.asmFile[i])]: 
                    if a == '[':
                        regBlockState = True
                        #regList[regNum] = regList[regNum]+a #这句不用，不然会多一个括号出来
                    elif a == ']':
                        regBlockState = False
                        #regList[regNum] = regList[regNum]+a
                    
                    if regBlockState:
                        regList[regNum] = regList[regNum]+a
                    else:
                        if a == ' ':
                            continue
                        elif a == ',':
                            regNum += 1
                            continue
                        else:
                            regList[regNum] = regList[regNum]+a
                self.allInstr.append([tempAddr] + [tempIntrs] + [regList[0]] + [regList[1]] + [regList[2]] + [regList[3]]) 
        
    #对asm进行分块

    def branchBlock(self):
        # 确定main函数在asm文件中的位置
        start = 0  # main函数的开始的行
        end = 0  # main函数的结束的行
        for i in range(len(self.asmFile)):
            if self.asmFile[i] == '':
                continue
            if self.asmFile[i][18:22] == 'main':
                start = i + 1
                break  #确定开始
        for i in range(start, len(self.asmFile), 1):
            if self.asmFile[i][32:33] == 'r':
                end = i  #确定结束
                break

        # 对main所在的分块，每一个小列表中含有地址、明令、跳转地址，这些构成一个大列表
        for i in range(start, end + 1, 1):
            # temp.append([res[i][2:8]]+[res[i][16:24]]+[res[i][32:36]]+[res[i][40:46]])
            if self.asmFile[i][32:34] == 'bl':
                self.mainInstr.append([self.asmFile[i][2:8]] + [self.asmFile[i][32:36]] + [self.asmFile[i][40:46]] + [
                    self.asmFile[i][48:len(self.asmFile[i]) - 1]])  # 第一个是地址，第二个是命令，第三个是具体操作，第四个是跳转的函数名称
            else:
                self.mainInstr.append([self.asmFile[i][2:8]] + [self.asmFile[i][32:36]] + [
                    self.asmFile[i][40:46]])  # 第一个是地址，第二个是命令，最后一个是具体操作

        # 这一段针对main函数
        edge = []  # 放入块的边界
        address = []  # main函数所有的地址
        for i in range(len(self.mainInstr)):
            address.append(self.mainInstr[i][0])
        edge.append(0)
        for i in range(len(self.mainInstr)):
            if self.mainInstr[i][1][0] == 'b':
                # edge.append(i)
                edge.append(i + 1)
                # edge.append(address.index(temp[i][2])-1)
                if self.mainInstr[i][2] in address:
                    edge.append(address.index(self.mainInstr[i][2]))
        # edge=sorted(set(edge),key=edge.index)#排序去重
        edge = sorted(set(edge))  # 排序去重

        # 按照指令集查找分块
        for i in range(len(edge)):
            if i != len(edge) - 1:
                if self.mainInstr[int(edge[i + 1]) - 1][1][0] != 'b':
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1])][0])
                    self.head.append(self.mainInstr[int(edge[i])][0])
                    self.tail.append(self.mainInstr[int(edge[i + 1])][0])
                    self.order.append('')
                elif self.mainInstr[int(edge[i + 1]) - 1][1][:2] == 'b.':
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1]) - 1][2], temp[int(edge[i + 1]) - 1][1][2:4])
                    self.head.append(self.mainInstr[int(edge[i])][0])
                    self.tail.append(self.mainInstr[int(edge[i + 1]) - 1][2])
                    self.order.append(self.mainInstr[int(edge[i + 1]) - 1][1][2:4])
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1])][0])
                    self.head.append(self.mainInstr[int(edge[i])][0])
                    self.tail.append(self.mainInstr[int(edge[i + 1])][0])
                    self.order.append('')
                elif self.mainInstr[int(edge[i + 1]) - 1][1][:3] == 'bc.':
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1]) - 1][2], temp[int(edge[i + 1]) - 1][1][3:5])
                    self.head.append(self.mainInstr[int(edge[i])][0])
                    self.tail.append(self.mainInstr[int(edge[i + 1]) - 1][2])
                    self.order.append(self.mainInstr[int(edge[i + 1]) - 1][1][3:5])
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1])][0])
                    self.head.append(self.mainInstr[int(edge[i])][0])
                    self.tail.append(self.mainInstr[int(edge[i + 1])][0])
                    self.order.append('')
                elif self.mainInstr[int(edge[i + 1]) - 1][1][0:3] == 'b  ':
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1]) - 1][2], 'b')
                    self.head.append(self.mainInstr[int(edge[i])][0])
                    self.tail.append(self.mainInstr[int(edge[i + 1]) - 1][2])
                    self.order.append('b')
                elif self.mainInstr[int(edge[i + 1]) - 1][1][:2] == 'bl':
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1]) - 1][2], 'bl')
                    self.head.append(self.mainInstr[int(edge[i])][0])
                    self.tail.append(self.mainInstr[int(edge[i + 1]) - 1][2])
                    self.order.append('bl')
                    # self.lianxian(self.bl_func(temp[int(edge[i + 1]) - 1][3]), temp[int(edge[i + 1])][0])
                    self.head.append(self.bl_func(self.mainInstr[int(edge[i + 1]) - 1][3]))
                    self.tail.append(self.mainInstr[int(edge[i + 1])][0])
                    self.order.append('')
                    # 这里注意要把函数返回值和下一个节点链接起来重点

        # 将head和tail合并并去重排序，生成blockHead
        self.blockHead = sorted(list(set(self.head + self.tail)))
        #print(self.blockHead)

        for i in range(1,len(self.blockHead)):
            # 转成十进制然后int型-4然后再转为16进制然后去掉0x
            self.blockEnd.append(hex(int("0x"+self.blockHead[i],16) - 4)[2:])
            # TODO: 单行成块 判断 ---> 头尾都应该是同一地址 判断一下Head里下一个元素是不是上一个元素+4即可,如果不是就照常,如果是则首尾地址相同 Head里本元素append到s1中
            # NEW: 如果是单行成块 下一个块的开头地址-4就是这个单行块的尾(也是头) 所以这个逻辑没有问题,不需要再判断了

        # 最后一个尾地址需不需要再判断一下? 如果最后一个块是单条指令成块,那么Head里最后一个元素和mainInstr(len(self.mainInstr)-1][0])是一样的 但是之前的判断已经可以判断出是否是单行成块,那么如果再添加mainInstr则会出现两个重复的, 简单去重一下就ok ---> set一下
        self.blockEnd.append(self.mainInstr[len(self.mainInstr)-1][0])
        self.blockEnd = sorted(set(self.blockEnd))

        #print(self.blockEnd)
        # print(len(self.allInstr[0][0][0:6]))
        # print(len(self.allInstr))

        # 还需要找blockHead和blockEnd中地址对应在allInstr的第几行
        for i in range(len(self.blockHead)):
            for j in range(len(self.allInstr)):
                if self.blockHead[i] == self.allInstr[j][0][0:6]:
                    self.headLine.append(j)
                if self.blockEnd[i] == self.allInstr[j][0][0:6]:
                    self.endLine.append(j)
        
        for i in range((len(self.blockHead))):
            self.headLineDir[self.blockHead[i]] = self.headLine[i]
            self.endLineDir[self.blockEnd[i]] = self.endLine[i]
            self.headendDir[self.blockHead[i]] = self.blockEnd[i]


        #print(self.headLine)
        #print(self.endLine)



    # 从这往后应该是loop部分
    def find_name(self, name):  #找寻函数名字
        for i in range(len(self.asmFile)):
            if self.asmFile[i] == '':
                continue
            if self.asmFile[i][18:18 + len(name)] == name:
                start = i
                break
        for i in range(start, len(self.asmFile), 1):
            if self.asmFile[i][32:33] == 'r':
                end = i
                break
        return start, end   #每一次返回的都是汇编语言里面这个函数的起始行
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
    def is_loop(self,i):#这里判断的逻辑是如果是向地址小的划线的话就是一个loop
        if self.hexStr2Number(self.head[i])>self.hexStr2Number(self.tail[i]):
            return True
        else:
            return False
    def gen_graph(self,): #创建图，就是列表形式的图，比如[1,3]就是第一个点连接到第三个点
        sun_temp = self.head + self.tail
        sun_temp = list(set(sun_temp))
        # print(sun_temp)# 这是所有的节点，我要做一个映射，方便进行画图
        for i in range(len(sun_temp)):
            self.shoot[sun_temp[i]] = int(i)
        #print(shoot)
        for i in range(len(self.head)):
            self.graph.append([self.shoot[self.head[i]], self.shoot[self.tail[i]]])
        #print(self.graph)

    # 原版count_graph_neigh
    # def count_graph_neigh(self):
    #     for i in range(len(self.graph)):
    #         self.graph_neigh[int(i)] = []
    #     for i in range(len(self.graph)):
    #         self.graph_neigh[int(self.graph[i][1])]+=[self.graph[i][0]]
    #     print(self.graph_neigh)

    # debug by why
    #def count_graph_neigh(self):
    #    for i in range(len(self.blockHead)):
    #        self.graph_neigh[int(i)] = []
    #    for i in range(len(self.blockHead)):
    #        self.graph_neigh[int(self.graph[i][1])]+=[self.graph[i][0]]
        #print(self.graph_neigh)

    def count_graph_neigh(self):
        temp={}
        for i in range(len(self.head)):
            temp[int(i)] = []
        for i in range(len(self.head)):
            temp[int(self.graph[i][1])]+=[self.graph[i][0]]
        temp_values=list(temp.values())
        shoot_key=list(self.shoot.keys())
        for i in range(len(temp)):
            self.graph_neigh[shoot_key[i]]=[]
        for i in range(len(temp)):
            if temp_values[i]==[]:
                continue
            for j in range(len(temp_values[i])):
                self.graph_neigh[shoot_key[i]]+=[shoot_key[int(temp_values[i][j])]]
        #print(self.graph_neigh)


    #深搜时候的函数
    #反向图，这个就是我们换一种思路，如果是搜寻一个环路的话，那么我们把最后一个点也就是终点的上一个找出来，我们只要
    #在遍历的时候的只要找到终点的前一个就可以找寻成功
    def convert(self,data):
        l = []
        d = {}
        for line in data:
            l.append(line[0])
            l.append(line[1])
        st = list(set(l))
        st.sort()
        for i in range(len(st)):
            d[st[i]] = i
        for i in range(len(data)):
            data[i][0] = d[data[i][0]]
            data[i][1] = d[data[i][1]]
        trans1 = [str(v) + ',' for v in st]
        trans2 = [str(v) + '\n' for v in st]
        return trans1, trans2, data

    #创建一个图
    def createGraph(self,data, n):
        g = [[] for i in range(n)]
        g1 = [[] for i in range(n)]
        for line in data:
            g[line[0]].append(line[1])
            g1[line[1]].append(line[0])
        for i in range(n):
            g[i].sort()
            g1[i].sort()
        return g, g1

    # -------------------深度遍历找环--------------------------

    def dfs(self,g, k, p_o, visit, visit1, res, path):
        for i in range(len(g[k])):
            if g[k][i] == p_o:  # 如果下一个点是查询点，则找到了环
                if len(path) > 1:
                    res.append(path.copy())
                    # print(path)
                continue
            if visit[g[k][i]] == 1 or g[k][i] < p_o or visit1[g[k][i]] != p_o:  # 如果下一个点是已经访问过的点，或者已经查询过的点
                continue
            # if len(path) == 11:
            # continue
            visit[g[k][i]] = 1  # 将下一个点设置为已访问，将点加入路径中
            path.append(g[k][i])
            self.dfs(g, g[k][i], p_o, visit, visit1, res, path)  # 访问下一个点
            path.pop()
            visit[g[k][i]] = 0

    # ----------------------剪枝操作-----------------------------
    #如果我们已知环的最大长度，那么我们就知道最远的两个点不可能比max/2还远，运用这个进行剪枝操作
    def dfs1(self,g, k, p_o, visit, visit1, length):
        for i in range(len(g[k])):
            if g[k][i] < p_o or visit[g[k][i]] == 1:
                continue
            visit1[g[k][i]] = p_o
            if length == 9:
                continue
            visit[g[k][i]] = 1
            self.dfs1(g, g[k][i], p_o, visit, visit1, length + 1)
            visit[g[k][i]] = 0


    #计算两个数组之间有多少相同的元素
    def count_fig(self,array1, array2):
        res = 0
        for i in range(len(array1)):
            for j in range(len(array2)):
                if array1[i] == array2[j]:
                    res += 1
        # print(res)
        return res
    #找子环
    def find_son_loop(self):
        loop=sorted(self.loop,key=lambda x:len(x))
        #print(loop)
        son=[]
        for i in range(len(loop)):
            for j in range(i+1,len(loop),1):
                if self.count_fig(loop[i],loop[j])!=0:
                    son.append([i,j])
        for i in range(len(son)):
            print(loop[son[i][0]],'is the son of',loop[son[i][1]])
    #找寻那些loop的路径
    def find_loop_way(self):
        t1, t2, data = self.convert(self.graph)
        n = len(t1)
        g, g1 = self.createGraph(data, n)
        visit = [0 for i in range(n)]
        visit1 = [-1 for i in range(n)]
        path = []
        res = []
        for i in range(n):
            path.append(i)
            self.dfs1(g, i, i, visit, visit1, 1)
            self.dfs1(g1, i, i, visit, visit1, 1)
            self.dfs(g, i, i, visit, visit1, res, path)
            path.pop()
            # if i % 100 == 0:
            #     print(i)

        # ---------------------输出-------------------------
        res1 = []
        res2 = []
        # print(len(res))
        res.sort(key=lambda x: len(x))
        for r in res:
            for i in range(len(r) - 1):
                res1.append(t1[r[i]])
                #print(t1[r[i]], end='')
            res1.append(t2[r[len(r) - 1]])
            #print(t2[r[len(r) - 1]])
            res2.append(res1)
            res1 = []
        # print(res2)
        for i in range(len(res2)):
            for j in range(len(res2[i])):
                if j != len(res2[i]):
                    res2[i][j] = res2[i][j][:-1]
                else:
                    res2[i][j] = res2[i][j][:-2]
        #print(res2)
        # if it has 2-elements loop:
        loop = []
        for i in range(len(res2)):
            for j in range(i + 1, len(res2), 1):
                if self.count_fig(res2[i], res2[j]) == 1:
                    loop.append([i, j])

        #print(loop)
        # put 2-elements into big loop
        for i in range(len(loop)):
            if len(res2[loop[i][0]]) < len(res2[loop[i][1]]):
                array1 = res2[loop[i][0]]
                array2 = res2[loop[i][1]]
            else:
                array1 = res2[loop[i][1]]
                array2 = res2[loop[i][0]]
            # print(array1)
            # print(array2)
            temp_add = []
            for j in range(len(array1)):
                for k in range(len(array2)):
                    if array1[j] == array2[k]:
                        # temp_add =copy.deepcopy(array2)
                        temp_add = array2[:]
                        x = k + 1
                        y = j + 1
                        for m in range(len(array1)):
                            # print(array1[y % len(array1)])
                            temp_add.insert(x, array1[y % len(array1)])
                            x += 1
                            y += 1
                        res2.append(temp_add)
        # res2--->real address
        trans=[]
        for i in range(len(res2)):
            for j in range(len(res2[i])):
                if j != len(res2[i]) - 1:
                    print(list(self.shoot.keys())[list(self.shoot.values()).index(int(res2[i][j]))], end='---->')
                    trans.append(list(self.shoot.keys())[list(self.shoot.values()).index(int(res2[i][j]))])
                else:
                    trans.append(list(self.shoot.keys())[list(self.shoot.values()).index(int(res2[i][j]))])
                    print(list(self.shoot.keys())[list(self.shoot.values()).index(int(res2[i][j]))])
            print(' ')
            self.loop.append(trans)
            trans=[]
    # 我们只需要跳转函数的名称即可
    def bl_func(self, name):
        start, end = self.find_name(name)
        temp = []
        for i in range(start + 1, end + 1, 1):
            if self.asmFile[i][32:34] == 'bl':
                temp.append([self.asmFile[i][2:8]] + [self.asmFile[i][32:36]] + [self.asmFile[i][40:46]] + [
                    self.asmFile[i][48:len(self.asmFile[i]) - 1]])  # 第一个是地址，第二个是命令，第三个是具体操作，第四个是跳转的函数名称
            else:
                temp.append([self.asmFile[i][2:8]] + [self.asmFile[i][32:36]] + [
                    self.asmFile[i][40:46]])  # 第一个是地址，第二个是命令，最后一个是具体操作
        edge = []
        address = []
        for i in range(len(temp)):
            address.append(temp[i][0])
        edge.append(0)
        for i in range(len(temp)):
            if temp[i][1][0] == 'b':
                edge.append(i + 1)
                edge.append(address.index(temp[i][2]))
        edge = sorted(set(edge))
        # print(edge)
        for i in range(len(edge)):
            if i != len(edge) - 1:
                if temp[int(edge[i + 1]) - 1][1][0] != 'b':
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1])][0])
                    self.head.append(temp[int(edge[i])][0])
                    self.tail.append(temp[int(edge[i + 1])][0])
                    self.order.append('')
                elif temp[int(edge[i + 1]) - 1][1][:2] == 'b.':
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1]) - 1][2], temp[int(edge[i + 1]) - 1][1][2:4])
                    self.head.append(temp[int(edge[i])][0])
                    self.tail.append(temp[int(edge[i + 1]) - 1][2])
                    self.order.append(temp[int(edge[i + 1]) - 1][1][2:4])
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1])][0])
                    self.head.append(temp[int(edge[i])][0])
                    self.tail.append(temp[int(edge[i + 1])][0])
                    self.order.append('')
                elif temp[int(edge[i + 1]) - 1][1][:3] == 'bc.':
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1]) - 1][2], temp[int(edge[i + 1]) - 1][1][3:5])
                    self.head.append(temp[int(edge[i])][0])
                    self.tail.append(temp[int(edge[i + 1]) - 1][2])
                    self.order.append(temp[int(edge[i + 1]) - 1][1][3:5])
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1])][0])
                    self.head.append(temp[int(edge[i])][0])
                    self.tail.append(temp[int(edge[i + 1])][0])
                    self.order.append('')
                elif temp[int(edge[i + 1]) - 1][1][0:3] == 'b  ':
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1]) - 1][2], 'b')
                    self.head.append(temp[int(edge[i])][0])
                    self.tail.append(temp[int(edge[i + 1]) - 1][2])
                    self.order.append('b')
                elif temp[int(edge[i + 1]) - 1][1][:2] == 'bl':
                    # self.lianxian(temp[int(edge[i])][0], temp[int(edge[i + 1]) - 1][2], 'bl')
                    self.head.append(temp[int(edge[i])][0])
                    self.tail.append(temp[int(edge[i + 1]) - 1][2])
                    self.order.append('bl')
                    # self.lianxian(self.bl_func(temp[int(edge[i + 1]) - 1][3]), temp[int(edge[i + 1])][0])
                    self.head.append(self.bl_func(temp[int(edge[i + 1]) - 1][3]))
                    self.tail.append(temp[int(edge[i + 1])][0])
                    self.order.append('')
        return temp[int(edge[len(edge) - 1])][0]

    # load&store数据预处理部分
    def loadsotre(self):
        # todo：未来改成链表做准备

        # 统计l&s指令集的数量
        ldrNum = []
        strNum = []
        for a in range(len(self.blockHead)):
            ldrNum.append(0)
            strNum.append(0)

        for a in range(len(self.allInstr)):
            if self.allInstr[a][1][:2] == 'ld':
                for i in range(len(self.blockHead)):
                    if self.allInstr[a][0] < self.blockHead[i]:
                        ldrNum[i] += 1
                        break
            elif self.allInstr[a][1][:2] == 'st':
                for i in range(len(self.blockHead)):
                    if self.allInstr[a][0] < self.blockHead[i]:
                        strNum[i] += 1
                        break

        #收纳指令集成为链表的格式

        for a in range(len(self.blockHead)):
            ldrIns=[]
            strIns=[]
            ldrIns.append([self.blockHead[a],"Line","instr","para1","para2","para3","para4"])
            strIns.append([self.blockHead[a],"Line","instr","para1","para2","para3","para4"])
            #ldrList的结构[head地址][本条的地址][指令][para][para][para][para]
            self.ldrList.append(ldrIns)
            self.strList.append(strIns)
            
        for a in range(len(self.allInstr)):
            if self.allInstr[a][1][:2] == 'ld':
                for i in range(len(self.blockHead)):
                    #说明在所有block前，不作处理
                    if self.allInstr[a][0] < self.blockHead[0]:  
                        continue
                    #就是blockhead本身
                    elif self.allInstr[a][0] == self.blockHead[i]:
                        self.ldrList[i].append([self.blockHead[i],a,self.allInstr[a][1],self.allInstr[a][2],self.allInstr[a][3],self.allInstr[a][4],self.allInstr[a][5]])
                    #在blockhead后面
                    elif self.allInstr[a][0] > self.blockHead[i]:
                        #就是最后一个blockhead里面的，不用考虑了
                        if i+1 == len(self.blockHead):
                            self.ldrList[i].append([self.blockHead[i],a,self.allInstr[a][1],self.allInstr[a][2],self.allInstr[a][3],self.allInstr[a][4],self.allInstr[a][5]])
                        else:
                            #如果比下一个还大，说明不在这个block，跳到下一个循环
                            if self.allInstr[a][0] > self.blockHead[i+1]:
                                continue
                            #如果和下一个相等，说明不在这个block，跳到下一个循环
                            elif self.allInstr[a][0] == self.blockHead[i+1]:
                                continue
                            else:
                                self.ldrList[i].append([self.blockHead[i],a,self.allInstr[a][1],self.allInstr[a][2],self.allInstr[a][3],self.allInstr[a][4],self.allInstr[a][5]])
                                #break
            elif self.allInstr[a][1][:2] == 'st':
                for i in range(len(self.blockHead)):
                    if self.allInstr[a][0] < self.blockHead[0]:
                        continue
                    elif self.allInstr[a][0] == self.blockHead[i]:
                        self.strList[i].append([self.blockHead[i],a,self.allInstr[a][1],self.allInstr[a][2],self.allInstr[a][3],self.allInstr[a][4],self.allInstr[a][5]])
                    elif self.allInstr[a][0] > self.blockHead[i]:
                        if i+1 == len(self.blockHead):
                            self.strList[i].append([self.blockHead[i],a,self.allInstr[a][1],self.allInstr[a][2],self.allInstr[a][3],self.allInstr[a][4],self.allInstr[a][5]])
                        else:
                            if self.allInstr[a][0] > self.blockHead[i+1]:
                                continue
                            elif self.allInstr[a][0] > self.blockHead[i+1]:
                                continue
                            else:
                                self.strList[i].append([self.blockHead[i],a,self.allInstr[a][1],self.allInstr[a][2],self.allInstr[a][3],self.allInstr[a][4],self.allInstr[a][5]])
                                #break
        
        #画图的部分
        for i in range(len(self.ldrList)):
            self.loadHead.append([])
            self.loadTail.append([])
            self.loadOrder.append([])
            a = 0
            while a < len(self.ldrList[i]):
                if a == 0:
                    self.loadHead[i].append(" "+self.ldrList[i][a][0])
                elif a == (len(self.ldrList[i]) - 1):
                    self.loadTail[i].append(" "+self.ldrList[i][a][3]+self.ldrList[i][a][4]+self.ldrList[i][a][5]+self.ldrList[i][a][6])
                    self.loadOrder[i].append(self.ldrList[i][a][2])
                else:
                    self.loadHead[i].append(" "+self.ldrList[i][a][3]+self.ldrList[i][a][4]+self.ldrList[i][a][5]+self.ldrList[i][a][6])
                    self.loadTail[i].append(" "+self.ldrList[i][a][3]+self.ldrList[i][a][4]+self.ldrList[i][a][5]+self.ldrList[i][a][6])
                    self.loadOrder[i].append(self.ldrList[i][a][2])
                a = a+1
        #for i in range(len(self.loadTail)):
        #    if len(self.loadTail[i]) == 0:
        #        self.loadTail[i].append("block "+self.loadHead[i][0]+" don't load")
        #        self.loadOrder[i].append("Null")
        
        for i in range(len(self.strList)):
            self.storeHead.append([])
            self.storeTail.append([])
            self.storeOrder.append([])
            a = 0
            while a < len(self.strList[i]):
                if a == 0:
                    self.storeHead[i].append(" "+self.strList[i][a][0])
                elif a == (len(self.strList[i]) - 1):
                    self.storeTail[i].append(" "+self.strList[i][a][3]+self.strList[i][a][4]+self.strList[i][a][5]+self.strList[i][a][6])
                    self.storeOrder[i].append(self.strList[i][a][2])
                else:
                    self.storeHead[i].append(" "+self.strList[i][a][3]+self.strList[i][a][4]+self.strList[i][a][5]+self.strList[i][a][6])
                    self.storeTail[i].append(" "+self.strList[i][a][3]+self.strList[i][a][4]+self.strList[i][a][5]+self.strList[i][a][6])
                    self.storeOrder[i].append(self.strList[i][a][2])
                a = a+1
        #for i in range(len(self.storeTail)):
        #    if len(self.storeTail[i]) == 0:
        #        self.storeTail[i].append("block "+self.storeHead[i][0]+" don't store")
        #        self.storeOrder[i].append("Null")
        
        #print(self.blockHead)
        #for i in range(len(self.ldrList)):
        #    print(self.ldrList[i])
        #print("self.loadHead包括：")
        #print(self.loadHead)
        #print("self.loadTail包括：")
        #print(self.loadTail)
        #print("self.loadOrder包括：")
        #print(self.loadOrder)

        #print("self.storeHead包括：")
        #print(self.storeHead)
        #print("self.storeTail包括：")
        #print(self.storeTail)
        #print("self.storeOrder包括：")
        #print(self.storeOrder)
                    

        #for i in range(len(strList)):
        #    print(strList[i])
        #处理blockinfo以得到形如 bolckHead：[headline][endline][[fromwhere1][fromwhere2]...]的数据
        #self.blockInfo.append(["bolckHead","headline","endline","fromwhere"])
        for i in range(len(self.blockHead)):
            #tempdata = ["",0,0,[]]
            tempdata = [0,0,[]]
            #tempdata[0] = self.blockHead[i]
            tempdata[0] = self.headLine[i]
            tempdata[1] = self.endLine[i]
            blockfromLine = []
            for a in range(len(self.graph_neigh[self.blockHead[i]])):
                blockfromLine.append(self.headLineDir[self.graph_neigh[self.blockHead[i]][a]])
            
            tempdata[2] = blockfromLine
            self.blockInfo[self.blockHead[i]] = tempdata
        #for i in range(len(self.blockInfo)):
        #    print(self.blockInfo[i])
        
        #处理得到line-address关系
        for i in range(len(self.headLine)):
            self.line2head[self.headLine[i]] = self.blockHead[i]
        for i in range(len(self.blockHead)):
            self.head2line[self.blockHead[i]] = self.headLine[i]

        
        #处理以得到简化版的ldrList，补上strlist
        for a in range(len(self.blockHead)):
            simpleldrIns = []
            simpleldrIns.append(["BlockHead","Ins","Line","reg"])
            simplestrIns = []
            simplestrIns.append(["BlockHead","Ins","Line","reg"])
            #验证用simpleldrIns.append([self.blockHead[a],"Ins","addr"])
            self.simpleldrList.append(simpleldrIns)
            self.simplestrList.append(simplestrIns)
        #print(self.simpleldrList)
        
        
            

        #一步实现十六字符串进制转十进制数字
        #print("0x"+ldrList[0][0])
        #print(int("0x"+ldrList[0][0],16))
        #print(type(int("0x"+ldrList[0][0],16)))
        

    def loadstoreAddrrss(self):

        for i in range(len(self.ldrList)):
            for a in range(len(self.ldrList[i])): 
                #找到的是用作索引的块头，不用考虑
                if a == 0:
                    continue
                elif self.ldrList[i][a][2][:3] == "ldr":
                    if self.ldrList[i][a][4][0] == "[":
                        #用来判断ldr本身的访存是不是sp+偏移，如果是，就不用找了,可以直接处理
                        if self.ldrList[i][a][4][1:3] == "sp":
                            self.simpleldrList[i].append([self.ldrList[i][a][0],self.ldrList[i][a][2],self.ldrList[i][a][1],self.ldrList[i][a][4]])
                        #用来判断ldr本身的访存是不是sp+偏移，用于类似情况的占位
                        #elif self.ldrList[i][a][4][:3] == "[sp":
                        #    pass

                        #处理结果读取结果是寄存器的情况
                        elif self.ldrList[i][a][4][1] == "x":
                            print("here")
                            #下标是个位数的寄存器
                            if self.ldrList[i][a][4][3] == "]" or self.ldrList[i][a][4][3] == ",":#把逗号也加上
                                reg = self.ldrList[i][a][4][1:3]
                            #下标是十位数的寄存器
                            elif self.ldrList[i][a][4][4] == "]" or self.ldrList[i][a][4][4] == ",":
                                reg = self.ldrList[i][a][4][1:4]

                            que = self.backTraceBlock(self.ldrList[i][a][0])
                            tempList = que.get()

                            headline = tempList[0]
                            endline = self.ldrList[i][a][1]
                            targetAddress = self.backTraceInstr(headline,endline,reg)
                            print(targetAddress)
                            #while not targetAddress[1]:
                                #self.simpleldrList[i].append([self.ldrList[i][a][0],self.ldrList[i][a][2],self.ldrList[i][a][1],"targetAddress[0]"])
                            #else 
                            #self.backTraceBlock()
                            #self.backTraceInstr(head,end,reg)
                            #if is true
                            self.simpleldrList[i].append([self.ldrList[i][a][0],self.ldrList[i][a][2],self.ldrList[i][a][1],targetAddress[0]])
                            pass
                elif self.ldrList[i][a][2][:3] == "ldp":
                    #用来判断ldp本身的访存是不是sp+偏移，如果是，就不用找了,可以直接处理
                    if self.ldrList[i][a][5][:3] == "[sp":
                        self.simpleldrList[i].append([self.ldrList[i][a][0],self.ldrList[i][a][2],self.ldrList[i][a][1],self.ldrList[i][a][5]])
        for i in range(len(self.strList)):
            for s in range(len(self.strList)):
                #找到的是用作索引的块头，不用考虑
                if a == 0:
                    continue
                #elif
        #for i in range(len(self.simpleldrList)):
        #    print(self.simpleldrList[i])
        
        
    def backTraceInstr(self,head,end,reg):
        listHead = head 
        listEnd = end 

        #[目标地址，是否找到，全局/局部]
        targetAddress = [reg,False,""]
        #print(targetAddress)
        while listHead <= listEnd:
            #print(self.allInstr[listEnd])
            if targetAddress[0] == self.allInstr[listEnd][2]:
                #print("yes is " + targetAddress[0])
                if self.allInstr[listEnd][1][:3] == "mov":
                    #print("yes is mov")
                    targetAddress[0] = self.allInstr[listEnd][3]
                    #print(targetAddress)
                    pass
                #全局变量判断流程，找到ADRP算直接成功成功
                elif self.allInstr[listEnd][1] == "adrp":
                        targetAddress[0] = self.allInstr[listEnd][3]
                        targetAddress[1] = True
                        targetAddress[2] = "global"
                        break#调用全局变量
            else:
                pass
            listEnd = listEnd - 1
        #TODO:此处增加判断局部变量读取成功的函数
        if targetAddress[0][:2] == "sp" or targetAddress[0][:3] == "[sp":
            targetAddress[1] = True
            targetAddress[2] = "local"
        #print("finished")
        return targetAddress
    
    #深度优先搜索，搜索指向该节点的图，并形成以行数为索引的搜索队列
    def backTraceBlock(self,headAddr):
        blockAccess = {}#用于判断是否访问过

        for i in range(len(self.blockHead)):
            blockAccess[self.blockHead[i]] = True
        
        q=queue.Queue()
        p=queue.Queue()
        searchLine = queue.Queue()
        q.put(headAddr)
        p.put(headAddr)
        searchLine.put([self.blockInfo[headAddr][0],self.blockInfo[headAddr][1]])
        blockAccess[headAddr] = False

        #q.get()
        #print(searchLine.get())
        #print(q.get())
        while not q.empty():
            temp = q.get()
            for i in range(len(self.graph_neigh[temp])):
                if blockAccess[self.graph_neigh[temp][i]]:
                    q.put(self.graph_neigh[temp][i])
                    p.put(self.graph_neigh[temp][i])
                    searchLine.put([self.blockInfo[self.graph_neigh[temp][i]][0],self.blockInfo[self.graph_neigh[temp][i]][1]])
                    blockAccess[self.graph_neigh[temp][i]] = False
            #temp = q.get()
        #print(q.get())
        #templist = []
        #while not searchLine.empty():
            #searchLine.get()
            #templist.append(searchLine.get())
            #templist.append(p.get())
        #print(templist)
        #if self.graph_neigh[headAddr] != []:
        #    print(self.graph_neigh[headAddr])
        #else:
        #    print("yes")
        #    print(self.graph_neigh[headAddr])
        #for kv in self.graph_neigh.items():
        #    print(kv)
        return searchLine
    

test = Prog()
test.read_file(r'/Users/gugujixiao/workspace/project/HWMemory/Code/newCFG/func.asm')
test.branchBlock()
#for i in range(len(test.allInstr)):
#    print(test.allInstr[i][1])
test.gen_graph()
test.find_loop_way()
# print(test.loop)
test.find_son_loop()
#print(test.shoot)
#print(test.graph)
test.count_graph_neigh()

test.loadsotre()
print(test.simpleldrList)
print(test.simplestrList)

test.loadstoreAddrrss()
#test.draw()