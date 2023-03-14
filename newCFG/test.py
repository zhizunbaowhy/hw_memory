from readfile import ASMFileReader
from loadstore import LoadStore


#测试readfile
testfileobj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")



#测试loadstore
testls = LoadStore(testfileobj)

res = testls.test_func(5)

print(res)