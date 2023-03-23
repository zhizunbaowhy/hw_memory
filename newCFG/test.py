#做测试用的代码
from readfile import ASMFileReader
from instr import isa
from loadstore import LoadStore
from cfg_gen import cfg_gen
from cfg_preparation import CFGNode_and_edge

#测试readfile
testFileObj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")
stat_obj = testFileObj.statements_table
for i in stat_obj:
    print(i)
print(stat_obj[126][1])

#stat_line =testFileObj.statements_table
#stat_dtl = testFileObj.find_addr('400608')
#for i in stat_line:
#    print(i)
insObj = isa(stat_obj[126][1],126)
print(insObj.is_branch)
print(insObj.branch_addr)
print(insObj.branch_label)

#测试instr


#测试CFG
#testCFGPre = CFGNode_and_edge(testFileObj)
#testCFGPre.CFGNode_and_edge_gen()
#testCFGPre.build_endline()
#for i in range (len(testCFGPre.endline)):
#    print(testCFGPre.headline[i])
#    print(testCFGPre.endline[i])
#    print()
#draw=cfg_gen(testCFGPre)#  到这里就可以生成cfg了
#以下我们进行loop的运行
#draw.gen_graph_shoot()
#draw.dfs(draw.shoot_graph,[],draw.shoot[testCFGPre.head[0]])  #深搜  #找出起点对应的数字，这里的起点尽量定义为head的第一个点，这样不会遇到从中间开始找不到loop的问题
#print(draw.loop)
#testBlockInfo = testCFGPre.block_info
#testCFGPre.build_block_table()


#测试loadstore
#testls = LoadStore(testFileObj,testCFGPre)
#testls.addr_find_range(122,130,126)