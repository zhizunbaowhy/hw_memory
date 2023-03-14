from readfile import ASMFileReader
from loadstore import LoadStore
from cfg_gen import cfg_gen
from cfg_preparation import CFGNode_and_edge

#测试readfile
testFileObj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")

#测试CFG
testCFG_pre = CFGNode_and_edge(testFileObj)
testCFG = cfg_gen(testCFG_pre)





#测试loadstore
testls = LoadStore(testFileObj)

#res = testls.test_func(5)

#print(res)