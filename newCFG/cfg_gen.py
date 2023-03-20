from graphviz import Digraph
from copy import deepcopy as dc
class cfg_gen:
    
    def __init__(self,cfg_pre):

        self.isa=cfg_pre
        self.draw_cfg()
        self.loop=set()
        self.graph=[]   #这个用gen_graph来生成，用来记录图
        self.shoot={}   #这是一个映射，用来记录由地址到数字的映射，方便画出上面的图
        self.shoot_graph={}  #{1: [2], 2: [3], 3: [1,4,5], 4: [1], 5:[3]}

    def draw_cfg(self):
        dot = Digraph('single_block')
        for i in range(len(self.isa.head)):
            if self.isa.is_loop(i):
                self.isa.order[i] += ' loop'  # 如果order中含有loop我们就loop数加一

            dot.edge(self.isa.head[i], self.isa.tail[i], self.isa.order[i])
        #dot.view()  # 画图

    def gen_graph_shoot(self): #创建图，就是列表形式的图，比如[1,3]就是第一个点连接到第三个点,先抽象出一个图的数据结构
        sun_temp = self.isa.head + self.isa.tail
        sun_temp = list(set(sun_temp))
        # print(sun_temp)# 这是所有的节点，我要做一个映射，方便进行画图
        for i in range(len(sun_temp)):
            self.shoot[sun_temp[i]] = int(i)
        #print(shoot)
        for i in range(len(self.isa.head)):
            self.graph.append([self.shoot[self.isa.head[i]], self.shoot[self.isa.tail[i]]])
        print(self.shoot)
        print(self.graph)
        for i in range(len(self.shoot)):
            self.shoot_graph[i]=[]
        for i in range(len(self.shoot)):
            self.shoot_graph[self.graph[i][0]].append(self.graph[i][1])
        print(self.shoot_graph)

    def dfs(self,graph,trace,start):
        #print(int(self.shoot[self.isa.head[0]]))
        trace = dc(trace)  # 深拷贝，对不同起点，走过的路径不同
        # 如果下一个点在trace中，则返回环
        if start in trace:
            index = trace.index(start)
            tmp = [str(i) for i in trace[index:]]
            self.loop.add(str(' '.join(tmp)))
            # print(trace[index:])
            return
        trace.append(start)
        # 深度优先递归递归
        for i in graph[start]:
            self.dfs(graph, trace, i)


    # # 深搜时候的函数
    # '''反向图，这个就是我们换一种思路，如果是搜寻一个环路的话，那么我们把最后一个点也就是终点的上一个找出来，我们只要
    #  在遍历的时候的只要找到终点的前一个就可以找寻成功'''
    # def convert(self, data):
    #         l = []
    #         d = {}
    #         for line in data:
    #             l.append(line[0])
    #             l.append(line[1])
    #         st = list(set(l))
    #         st.sort()
    #         for i in range(len(st)):
    #             d[st[i]] = i
    #         for i in range(len(data)):
    #             data[i][0] = d[data[i][0]]
    #             data[i][1] = d[data[i][1]]
    #         trans1 = [str(v) + ',' for v in st]
    #         trans2 = [str(v) + '\n' for v in st]
    #         return trans1, trans2, data
    #
    # # 创建一个图
    # def createGraph(self, data, n):
    #     g = [[] for i in range(n)]
    #     g1 = [[] for i in range(n)]
    #     for line in data:
    #         g[line[0]].append(line[1])
    #         g1[line[1]].append(line[0])
    #     for i in range(n):
    #         g[i].sort()
    #         g1[i].sort()
    #     return g, g1
    #
    # # -------------------深度遍历找环--------------------------
    # def dfs(self, g, k, p_o, visit, visit1, res, path):
    #     for i in range(len(g[k])):
    #         if g[k][i] == p_o:  # 如果下一个点是查询点，则找到了环
    #             if len(path) > 1:
    #                 res.append(path.copy())
    #                 # print(path)
    #             continue
    #         if visit[g[k][i]] == 1 or g[k][i] < p_o or visit1[g[k][i]] != p_o:  # 如果下一个点是已经访问过的点，或者已经查询过的点
    #             continue
    #         # if len(path) == 11:
    #         # continue
    #         visit[g[k][i]] = 1  # 将下一个点设置为已访问，将点加入路径中
    #         path.append(g[k][i])
    #         self.dfs(g, g[k][i], p_o, visit, visit1, res, path)  # 访问下一个点
    #         path.pop()
    #         visit[g[k][i]] = 0

#     # ----------------------剪枝操作-----------------------------
#     # 如果我们已知环的最大长度，那么我们就知道最远的两个点不可能比max/2还远，运用这个进行剪枝操作
#     def dfs1(self, g, k, p_o, visit, visit1, length):
#         for i in range(len(g[k])):
#             if g[k][i] < p_o or visit[g[k][i]] == 1:
#                 continue
#             visit1[g[k][i]] = p_o
#             if length == 9:
#                 continue
#             visit[g[k][i]] = 1
#             self.dfs1(g, g[k][i], p_o, visit, visit1, length + 1)
#             visit[g[k][i]] = 0
#
#     # 计算两个数组之间有多少相同的元素
#     def count_fig(self, array1, array2):
#         res = 0
#         for i in range(len(array1)):
#             for j in range(len(array2)):
#                 if array1[i] == array2[j]:
#                     res += 1
#         # print(res)
#         return res
#
#     # 找子环
#     def find_son_loop(self):
#         loop = sorted(self.loop, key=lambda x: len(x))
#         # print(loop)
#         son = []
#         for i in range(len(loop)):
#             for j in range(i + 1, len(loop), 1):
#                 if self.count_fig(loop[i], loop[j]) != 0:
#                     son.append([i, j])
#         for i in range(len(son)):
#             print(loop[son[i][0]], 'is the son of', loop[son[i][1]])
#
#     # 找寻那些loop的路径
#     def find_loop_way(self):
#         t1, t2, data = self.convert(self.graph)
#         n = len(t1)
#         g, g1 = self.createGraph(data, n)
#         visit = [0 for i in range(n)]
#         visit1 = [-1 for i in range(n)]
#         path = []
#         res = []
#         for i in range(n):
#             path.append(i)
#             self.dfs1(g, i, i, visit, visit1, 1)
#             self.dfs1(g1, i, i, visit, visit1, 1)
#             self.dfs(g, i, i, visit, visit1, res, path)
#             path.pop()
#             # if i % 100 == 0:
#             #     print(i)
#
#         # ---------------------输出-------------------------
#         res1 = []
#         res2 = []
#         # print(len(res))
#         res.sort(key=lambda x: len(x))
#         for r in res:
#             for i in range(len(r) - 1):
#                 res1.append(t1[r[i]])
#                 # print(t1[r[i]], end='')
#             res1.append(t2[r[len(r) - 1]])
#             # print(t2[r[len(r) - 1]])
#             res2.append(res1)
#             res1 = []
#         # print(res2)
#         for i in range(len(res2)):
#             for j in range(len(res2[i])):
#                 if j != len(res2[i]):
#                     res2[i][j] = res2[i][j][:-1]
#                 else:
#                     res2[i][j] = res2[i][j][:-2]
#         print(res2)
#         # if it has 2-elements loop:
#         loop = []
#         for i in range(len(res2)):
#             for j in range(i + 1, len(res2), 1):
#                 if self.count_fig(res2[i], res2[j]) == 1:
#                     loop.append([i, j])
#
#         # print(loop)
#         # put 2-elements into big loop
#         for i in range(len(loop)):
#             if len(res2[loop[i][0]]) < len(res2[loop[i][1]]):
#                 array1 = res2[loop[i][0]]
#                 array2 = res2[loop[i][1]]
#             else:
#                 array1 = res2[loop[i][1]]
#                 array2 = res2[loop[i][0]]
#             # print(array1)
#             # print(array2)
#             temp_add = []
#             for j in range(len(array1)):
#                 for k in range(len(array2)):
#                     if array1[j] == array2[k]:
#                         # temp_add =copy.deepcopy(array2)
#                         temp_add = array2[:]
#                         x = k + 1
#                         y = j + 1
#                         for m in range(len(array1)):
#                             # print(array1[y % len(array1)])
#                             temp_add.insert(x, array1[y % len(array1)])
#                             x += 1
#                             y += 1
#                         res2.append(temp_add)
#         # res2--->real address
#         trans = []
#         for i in range(len(res2)):
#             for j in range(len(res2[i])):
#                 if j != len(res2[i]) - 1:
#                     print(list(self.shoot.keys())[list(self.shoot.values()).index(int(res2[i][j]))], end='---->')
#                     trans.append(list(self.shoot.keys())[list(self.shoot.values()).index(int(res2[i][j]))])
#                 else:
#                     trans.append(list(self.shoot.keys())[list(self.shoot.values()).index(int(res2[i][j]))])
#                     print(list(self.shoot.keys())[list(self.shoot.values()).index(int(res2[i][j]))])
#             print(' ')
#             self.loop.append(trans)
#             trans = []





