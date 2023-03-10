from readfile import ASMFileReader
from loadstore import LoadStore

testfileobj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")
testls = LoadStore(testfileobj)

temp = testls.store_table

for i in temp:
    print(i)