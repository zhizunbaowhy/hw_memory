#做测试用的代码
from readfile import ASMFileReader,StatementType
from instr import Ins,Symbol,Section,stat_collection
from loadstore import LoadStore
from cfg_gen import cfg_gen
from cfg_preparation import CFGNode_and_edge

#测试readfile
testFileObj = ASMFileReader("/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/forTest.asm")
stat_obj = testFileObj.statements_table


#stat_line =testFileObj.statements_table
#stat_dtl = testFileObj.find_addr('400608')
#for i in stat_line:
#insObj = Ins(stat_obj[line - 1][1],line)

#symbolObj = Symbol(stat_obj[line - 1][1],line)
#sectionObj = Section(stat_obj[line - 1][1],line)
#print(sectionObj.label)
#print(sectionObj.line)
collect_obj = stat_collection(testFileObj)
ins_obj = collect_obj.insObject
'''for i in ins_obj:
    stat_type = i[0]
    stat_obj = i[1]
    if stat_type == StatementType.Section:
        print(stat_obj.label)
    elif stat_type == StatementType.Symbol:
        print(stat_obj.label)
    elif stat_type == StatementType.Instruction:
        print(stat_obj.dtl)
'''

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