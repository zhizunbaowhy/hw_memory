from readfile import ASMFileReader
from loadstore import LoadStore
from CFG import CFG


#测试readfile
testfileobj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")

#测试CFG
testCFG = CFG(testfileobj)
testCFG.CFG_gen()





#测试loadstore
testls = LoadStore(testfileobj)

#res = testls.test_func(5)

#print(res)