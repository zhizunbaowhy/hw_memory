import re
from readfile import ASMFileReader,StatementType

class ReString:

    #判断指令用的
    #一类指令
    ins_load_pat = r"ldr|ldp|lda|ldu"
    ins_store_pat = r"str|stp|stl|stu"
    ins_adrp_pat = r"adrp"
    ins_move_pat = r"mov"
    #具体指令
    ins_ldp_pat = r"ldp"
    ins_stp_pat = r"stp"

    #判断操作数属于什么类型用的
    #特殊类型的操作数
    operator_adrpAddr_pat = r"[0-9a-fA-F]*\s*<.*>"
    #独立匹配的
    operator_generalReg_pat = r"(?:x|w)\d*"
    operator_offset_pat = r"\#(?:\d*|0x[0-9a-fA-F]*)"
    operator_sp_pat = r"sp"
    #带括号的
    operator_bracket_pat = r"\[.*\]!?"
    operator_bracket_sp_pat = r"\[[\s\S]*sp[\s\S]*\]!?"
    operator_bracket_simpleReg_pat = r"\[((?:x|w)\d*)\]!?"
    operator_bracket_regOffset_pat = r"\[((?:x|w)\d*)\s*\,\s*\#((?:\d*|0x[0-9a-fA-F]*))\]!?"
    operator_bracket_regdotreg_pat = r"\[((?:x|w)\d*)\s*\,\s*((?:x|w)\d*)\]!?"
    operator_bracket_regplusreg_pat = r"\[((?:x|w)\d*)\s*\+\s*((?:x|w)\d*)\]!?"



    #特殊类型的匹配关系
    addr_adrp_pat = r"([0-9a-fA-F]*)\s"#匹配adrp的具体地址
    addr_sp_pat = r"sp|\[sp\]|\[sp\s*\,\s*\#(?:-)?[0-9a-fA-F]*]!?"

    

class LoadStore:

    #ins
    __ins_load_cpat = re.compile(ReString.ins_load_pat)
    __ins_store_cpat = re.compile(ReString.ins_store_pat)
    __ins_adrp_cpat = re.compile(ReString.ins_adrp_pat)
    __ins_move_cpat = re.compile(ReString.ins_move_pat)

    __ins_ldp_cpat = re.compile(ReString.ins_ldp_pat)
    __ins_stp_cpat = re.compile(ReString.ins_stp_pat)


    #operator
    __operator_adrpAddr_cpat = re.compile(ReString.operator_adrpAddr_pat)
    __operator_generalReg_cpat = re.compile(ReString.operator_generalReg_pat)
    __operator_offset_cpat = re.compile(ReString.operator_offset_pat)
    __operator_sp_cpat = re.compile(ReString.operator_sp_pat)

    __operator_bracket_cpat = re.compile(ReString.operator_bracket_pat)
    __operator_bracket_sp_cpat = re.compile(ReString.operator_bracket_sp_pat)
    __operator_bracket_simpleReg_cpat = re.compile(ReString.operator_bracket_simpleReg_pat)
    __operator_bracket_regOffset_cpat = re.compile(ReString.operator_bracket_regOffset_pat)
    __operator_bracket_regdotreg_cpat = re.compile(ReString.operator_bracket_regdotreg_pat)
    __operator_bracket_regplusreg_cpat = re.compile(ReString.operator_bracket_regplusreg_pat)
    

    
    #special
    __addr_adrp_cpat = re.compile(ReString.addr_adrp_pat)
    __addr_sp_cpat = re.compile(ReString.addr_sp_pat)
    
    
    def __init__(self,fileObj,cfgObj):

        #读文件的结果
        self.__fileObj = fileObj
        self.__tokens = self.__fileObj.statements
        self.__tokens_len = len(self.__tokens)
        self.__state_table = fileObj.statements_table
        #cfg建立之后得到的信息
        self.__cfgObj = cfgObj
        self.__block_info = self.__cfgObj.block_info
        #自己用到的或者是生成的
        self.__load_table = None
        self.__store_table = None
        self.__block_load_table = []
        self.__block_store_table = []
    

    def test_func(self):
        for i in self.__block_info.items():
            print(i)
    
    
    @property
    def load_table(self):
        if self.__load_table == None:
            self.__build_load_table()
        return self.__load_table
    
    @property
    def store_table(self):
        if self.__store_table == None:
            self.__build_store_table()
        return self.__store_table
    

    @property
    def block_load_table(self):
        if len(self.__block_load_table) == 0:
            self.__build_block_load_table()
        return self.__block_load_table
    
    @property
    def block_store_table(self):
        if len(self.__block_store_table) == 0:
            self.__build_block_store_table()
        return self.__block_store_table


    def __build_load_table(self):
        self.__load_table = self.__find_ins(self.__ins_load_cpat)

    
    def __build_store_table(self):
        self.__store_table = self.__find_ins(self.__ins_store_cpat)
    
    
    def __build_block_load_table(self):
        entries = list()
        for k,v in self.__block_info.items():
            res = self.__find_ins_range(v[0],v[1],self.__ins_load_cpat)
            for i in res:
                entries.append((k,i))
        self.__block_load_table = entries
            

    def __build_block_store_table(self):
        entries = list()
        for k,v in self.__block_info.items():
            res = self.__find_ins_range(v[0],v[1],self.__ins_store_cpat)
            for i in res:
                entries.append((k,i))
        self.__block_store_table = entries


    def __find_ins(self,re_pat):
        
        entries = list()
        
        stat_idx= 1
        stat_sum = self.__tokens_len

        entries = self.__find_ins_range(stat_idx,stat_sum,re_pat)
            
        return entries
    
    def __find_ins_range(self,head,end,re_pat):
        entries = list()
        
        stat_idx= head - 1
        stat_sum = end
        
        while stat_idx < stat_sum:
            stat_type,stat_details,stat_line = self.__state_table[stat_idx]
            if stat_type == StatementType.Instruction:
                is_ins = re.match(re_pat,stat_details[2])
                if is_ins:
                    entries.append((stat_type,stat_details,stat_line))
            stat_idx += 1
            
        return entries
    




    def __addr_backtrace(self):
        i = 1

    def __is_ldpstp(self,stat_details):
        is_lsp = False
        
        target_stat_details = stat_details
        target_stat_details_ins = stat_details[2]

        is_ldp = re.match(self.__ins_ldp_cpat,target_stat_details_ins)
        is_stp = re.match(self.__ins_stp_cpat,target_stat_details_ins)

        if is_ldp:
            is_lsp = True
        elif is_stp:
            is_lsp = True
        return is_lsp

    def instr_operator_num(self,stat_details):
        target_stat_details = stat_details
        if target_stat_details[3] == None:
            return 2
        elif  target_stat_details[4] == None:
            return 3
        elif  target_stat_details[5] == None:
            return 4
        elif  target_stat_details[6] == None:
            return 5


    def addr_find_range(self,startline,endline,targetline):
        
        #因为是从后往前找，所以需要反一下
        find_idx = endline-1 
        find_end = startline-1
        res = [None,False,"not process yet"]
        print(self.__state_table[find_idx][1])
        print(self.__state_table[find_end][1])
        print(self.__state_table[targetline-1][1])

        #这里是在处理目标
        target_stat_details = self.__state_table[targetline-1][1]
        
        target_stat_ins = target_stat_details[2]
        is_lsp = self.__is_ldpstp(target_stat_details)
        target_operator_num = self.instr_operator_num(target_stat_details)
       

        if target_operator_num == 4:
            target_operator = target_stat_details[target_operator_num]
            
            
            is_offset = re.match(self.__operator_offset_cpat,target_operator)
            is_bracket = re.match(self.__operator_bracket_cpat,target_operator)

            #给了个立即数，挺少见的
            if is_offset:
                
                res = [{'addr': target_operator},True,"immediate Offset"]
            #有括号，进入正常处理流程
            if is_bracket:
                
                #is_spbase,is_reg,is_regplus,is_regoffsetplus
                print(target_operator)
                is_sp = re.match(self.__operator_bracket_sp_cpat,target_operator)
                if is_sp:
                    
                    res = [{'addr': target_operator},True,"sp register"]
                    
                else:
                    
                    is_bracket_simpleReg = re.match(self.__operator_bracket_simpleReg_cpat,target_operator)
                    is_bracket_regOffset = re.match(self.__operator_bracket_regOffset_cpat,target_operator)
                    is_bracket_regdotreg = re.match(self.__operator_bracket_regdotreg_cpat,target_operator)
                    is_bracket_regplusreg = re.match(self.__operator_bracket_regplusreg_cpat,target_operator)

                    if is_bracket_simpleReg:
                        print("here0")
                        temp = is_bracket_simpleReg.groups()
                        addr_position = {}
                        addr_position["reg"] = temp[0]
                        res = [addr_position,False,"simpleReg"]
                        print(res[0])
                    elif is_bracket_regOffset:
                        print("here1")
                        temp = is_bracket_regOffset.groups()
                        addr_position = {}
                        addr_position["reg"] = temp[0]
                        addr_position["offset"] = temp[1]
                        res = [addr_position,False,"regOffset"]
                        print(res[0])
                    elif is_bracket_regdotreg:
                        print("here2")
                        res = [is_bracket_regdotreg.groups(),False,"regdotreg"]
                        print(res[0])
                    elif is_bracket_regplusreg:
                        print("here3")
                        res = [is_bracket_regplusreg.groups(),False,"regplusreg"]
                        print(res[0])

                    while find_idx > find_end:

                        find_stat_detail = self.__state_table[find_idx][1]
                        find_stat_detail_operator = find_stat_detail[3]

                        target_operator_type = res[2]
                        addr_position = res[0]

                        is_adrp = re.match(self.__ins_adrp_cpat,find_stat_detail[2])
                        is_move = re.match(self.__ins_move_cpat,find_stat_detail[2])


                        if target_operator_type == "simpleReg":
                            #print(target_operator_group[0])
                            #print(find_stat_detail_operator)
                            #print()
                            if addr_position["reg"] == find_stat_detail_operator:
                                if is_adrp:
                                    res = self.__addr_proc_adrp(find_stat_detail,res)
                                    print(res)
                                elif is_move:
                                    res = self.__addr_proc_move(find_stat_detail,res)
                                    print(res)
                        elif target_operator_type == "regOffset":
                            if addr_position["reg"] == find_stat_detail_operator:
                                if is_adrp:
                                    res = self.__addr_proc_adrp(find_stat_detail,res)
                                    print(res)
                                elif is_move:
                                    res = self.__addr_proc_move(find_stat_detail,res)
                                    print(res)
                        elif target_operator_type == "regdotreg":
                            pass
                        elif target_operator_type == "regplusreg":
                            pass

                        if res[1]:
                            break
                        
                        find_idx -= 1
        print(res)  
        return res

    def __addr_pro_backtrace(self):
        pass


    def __addr_proc_move(self,stat_details,res):
        ins_statment = stat_details
        addr_position = res[0]
        temp_addr = None
        is_final_addr = False
        addr_type = res[2]
        
        is_addr_sp = re.match(self.__addr_sp_cpat,ins_statment[4])
        
        if is_addr_sp:
            addr_position["reg"] = is_addr_sp.group()
            is_final_addr = True
            addr_type = "sp register"
        else:
            addr_position["reg"] = ins_statment[4]
            is_final_addr = False

        return [addr_position,is_final_addr,addr_type]
    
    def __addr_proc_adrp(self,stat_details,res):
        ins_statment = stat_details
        addr_position = res[0]
        temp_addr = None

        addr_position_len = len(addr_position)
        is_addr_adrp = re.match(self.__addr_adrp_cpat,ins_statment[4])
        temp_addr = is_addr_adrp.group()
        

        if "reg" in addr_position and "offset" not in addr_position:
            temp_addr = int("0x"+temp_addr,16)
            addr_position["addr"] = hex(temp_addr)
            del addr_position["reg"]
            res[0] = addr_position
        elif "reg" in addr_position and "offset" in addr_position:
            print("here12312321")
            offset = addr_position["offset"]
            if offset[0:2] == "0x":
                offset = int(offset,16)
            else:
                offset = int(offset)
            temp_addr = int("0x"+temp_addr,16)
            temp_addr = temp_addr + offset
            addr_position["addr"] = hex(temp_addr)
            del addr_position["reg"]
            del addr_position["offset"]


        res[1] = True
        return res
        


    
    
    


