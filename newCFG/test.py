from readfile import ASMFileReader
from loadstore import LoadStore

testfileobj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm")
tempString = testfileobj.statements_table

for i in tempString:
    print(i)

testls = LoadStore(testfileobj)

#temp = testls.test_func()
#for i in temp:
#    print(i)

#temp2 = testls.processAddress(temp[0][2])

#print(temp2)