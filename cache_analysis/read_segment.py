"""
处理 .bss segment & .data segment
得到 全局变量 地址范围
"""
class Prog:
    def __init__(self):
        # 用于装载整个asm文件
        self.asmFile = []
        # bss segment 指令
        self.bss = []
        self.bss_segment = []
        # data segement 指令
        self.data = []
        self.data_segment = []

        self.bss_start = 0  # bss segment开始的行
        self.bss_end = 0  # bss segment结束的行

        self.data_start = 0  # data segment开始的行
        self.data_end = 0  # data segment结束的行


    # 将asm文件处理成能用的格式
    def read_file(self, file_name):
        with open(file_name, 'r', encoding='utf8') as file:
            f = file.readlines()
            for i in f:
                i = i.replace('\n', '')
                self.asmFile.append(i)  # 添加进去  #这一步就是读文件


    def find(self):
        # 确定bss和data segment在asm文件中的位置

        for i in range(len(self.asmFile)):
            if self.asmFile[i] == '':
                continue
            if self.asmFile[i][0:27] == 'Disassembly of section .bss':
                self.bss_start = i + 2
                break  #确定开始
        for i in range(self.bss_start, len(self.asmFile), 1):
            if self.asmFile[i][0:22] == 'Disassembly of section':
                self.bss_end = i-2  #确定结束
                break

        # 测试输出.bss segment 找到判断tail的条件
        # for i in range(self.bss_start, self.bss_end, 1):
        #     print(self.asmFile[i])

        for i in range(self.bss_start, self.bss_end, 1):
            if self.asmFile[i][0:10] == '0000000000':
                self.bss.append([self.asmFile[i][10:16]] + [self.asmFile[i][17:]])

        for i in range(len(self.bss)):
            self.bss[i][1] = self.bss[i][1].rstrip('>:')
            self.bss[i][1] = self.bss[i][1].lstrip('<')

        print(self.bss)

        # ------------------------------------------------------------------------------------------------
        # 仅对.bss segment而言: 考虑从下一个的头来找尾部,且如果是最后一个 尾部默认加4
        # TODO 对于非尾部 按照新逻辑 左闭右开 第 i个变量的尾就是第 (i+1)个变量的头
        for i in range(len(self.bss)-1):

            hex_int = int(self.bss[i][0], 16)
            next_hex_int = int(self.bss[i+1][0], 16) - 4

            # append本身地址的int ---> hex_int = int(self.bss[i][0], 16) ---> self.bss[i].append(hex_int)
            self.bss[i].append(hex_int)

            # 十六进制string
            # self.bss[i].append(hex(next_hex_int))

            # 十进制int
            self.bss[i].append(next_hex_int)

            # 为了更规范可以新建一个list 重新存
            # self.bss_segment.append(self.bss[i])

        # 单独处理最后一个元素
        last_hex_int = int(self.bss[-1][0], 16)

        # append本身地址的int
        self.bss[-1].append(last_hex_int)

        # 十六进制string
        # self.bss[-1].append(hex(last_hex_int))

        # 十进制int
        self.bss[-1].append(last_hex_int + 4)

        # 为了更规范可以新建一个list 重新存
        # self.bss_segment.append(self.bss[-1])

        # print(self.bss_segment)
        print(self.bss)



        for i in range(len(self.asmFile)):
            if self.asmFile[i] == '':
                continue
            if self.asmFile[i][0:28] == 'Disassembly of section .data':
                self.data_start = i + 2
                break  #确定开始
        for i in range(self.data_start, len(self.asmFile), 1):
            if self.asmFile[i][0:22] == 'Disassembly of section':
                self.data_end = i-2  #确定结束
                break

        # 测试输出.data segment 找到判断tail的条件
        # for i in range(self.data_start, self.data_end, 1):
        #     print(self.asmFile[i])

        for i in range(self.data_start, self.data_end, 1):
            if self.asmFile[i][0:10] == '0000000000':
                if self.asmFile[i+1][2:4] == '42':
                    self.data.append([self.asmFile[i+1][2:8]] + [self.asmFile[i+1][16:24]] + [self.asmFile[i][17:]])

        for i in range(len(self.data)):
            self.data[i][2] = self.data[i][2].rstrip('>:')
            self.data[i][2] = self.data[i][2].lstrip('<')

        print(self.data)
        # print(self.bss_start,self.bss_end,self.data_start,self.data_end)

        # ------------------------------------------------------------------------------------------------
        # TODO 对于非尾部 按照新逻辑 左闭右开 第 i个变量的尾就是第 (i+1)个变量的头
        # 和 .bss segment 同理
        for i in range(len(self.data)-1):

            hex_int2 = int(self.data[i][0], 16)
            next_hex_int2 = int(self.data[i+1][0], 16) - 4

            # append本身地址的int
            self.data[i].append(hex_int2)
            # 十进制int
            self.data[i].append(next_hex_int2)

        # 单独处理最后一个元素
        last_hex_int2 = int(self.data[-1][0], 16)

        # append本身地址的int
        self.data[-1].append(last_hex_int2)

        # 十进制int
        self.data[-1].append(last_hex_int2 + 4)

        # print(self.bss_segment)
        print(self.data)

