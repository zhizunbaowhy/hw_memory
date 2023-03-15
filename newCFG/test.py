#做测试用的代码
from readfile import ASMFileReader
from loadstore import LoadStore
from cfg_gen import cfg_gen
from cfg_preparation import CFGNode_and_edge

#测试readfile
testFileObj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")
stat_line =testFileObj.statements_table

#for i in stat_line:
#    print(i)

#测试CFG
testCFGPre = CFGNode_and_edge(testFileObj)
testBlockInfo = testCFGPre.block_info
testCFGPre.build_block_table()


#测试loadstore
testls = LoadStore(testFileObj)

#res = testls.test_func(5)

#print(res)