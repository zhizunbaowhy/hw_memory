from read_asm import AsmFileReader
from isa import Instruction
from typing import Tuple
from read_asm import AsmFileReader, StatementType


fp = f"/Users/gugujixiao/workspace/project/HWMemory/Code/HW-Memory/example/old_example/func.asm"

reader =AsmFileReader(fp)

statements = list()
temp_stat = list()
for s in reader.statements:
    s: Tuple[StatementType, tuple]
    if s[0] == StatementType.Instruction:
        statements.append((s[0], Instruction(s[1])))
        temp_stat.append(Instruction(s[1]))
    elif s[0] == StatementType.SubProcedure:
        statements.append(s)

for i in temp_stat:
   #if is_branch
   print(i.tokens)
   print(i.operands)
   print()

#procs = proc_identify(statements)
#for proc in procs:
#    print(proc.name, proc.beg_addr.hex_str())
#    if False and proc.name == 'main':
#        for inst in proc.instruction:
#            print(inst.addr.hex_str(), inst.opcode, inst.name, inst.operands, inst.branch_info)
#        print()