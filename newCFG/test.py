from readfile import ASMFileReader
from loadstore import LoadStore

testfileobj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")

testls = LoadStore(testfileobj)

temp = testls.test_func()

temp2 = testls.processAddress(temp[1][2])

print(temp2)