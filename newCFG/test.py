#做测试用的代码
from readfile import ASMFileReader
from loadstore import LoadStore
from cfg_gen import cfg_gen
from cfg_preparation import CFGNode_and_edge

#测试readfile
testFileObj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")
stat_line =testFileObj.statements_table
stat_dtl = testFileObj.find_addr('400608')
#for i in stat_line:
#    print(i)

#测试CFG
testCFGObj = CFGNode_and_edge(testFileObj)
testCFGObj.CFGNode_and_edge_gen()
testCFGObj.build_dfs()

#测试loadstore
testls = LoadStore(testFileObj,testCFGObj)

'''res = testls.block_store_table
for i in res:
    print(i)'''

