#做测试用的代码
from readfile import ASMFileReader
from loadstore import LoadStore
from cfg_gen import cfg_gen
from cfg_preparation import CFGNode_and_edge


#测试readfile
testFileObj = ASMFileReader(r"C:\Users\13377\Desktop\hw-memory-master\example\old_example\func.asm")
#stat_line =testFileObj.statements_table

#for i in stat_line:
#    print(i)


#print(testFileObj.statements_table[131][1][3].split()[1][1:-1])
#测试CFG
testCFGPre = CFGNode_and_edge(testFileObj)

testCFGPre.CFGNode_and_edge_gen()
draw=cfg_gen(testCFGPre)#  到这里就可以生成cfg了
#以下我们进行loop的运行
draw.gen_graph_shoot()
draw.dfs(draw.shoot_graph,[],draw.shoot[testCFGPre.head[0]])  #深搜  #找出起点对应的数字，这里的起点尽量定义为head的第一个点，这样不会遇到从中间开始找不到loop的问题
print(draw.loop)
#testBlockInfo = testCFGPre.block_info
#testCFGPre.build_block_table()


#测试loadstore
#testls = LoadStore(testFileObj)

#res = testls.test_func(5)

#print(res)