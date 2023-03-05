#用来自动将C转为ASM文件的脚本
#v1.0，针对本项目，还有一部分指令需要进一步修改

import os

#读取目录
file_List = os.listdir('.')#用来容纳所有的文件名，并没有对需要的文件作处理

#对于文件作处理，选取需要的部分
fileNameList = []#存放完整的文件名
fileHeadList = []#存放不带后缀的文件名
for i in range(len(file_List)):
    result = os.path.splitext(file_List[i])#这个函数用于将文件名和扩展名分开，组成组数，第一位是文件名，第二位是拓展名
    if result[1] == ".c":
        fileNameList.append(file_List[i])
        fileHeadList.append(result[0])

#在字符串中写死命令
gcc_o = []
gcc_S = []
obj_d = []
for i in range(len(fileNameList)):
    ordertemp = "gcc -o " + fileHeadList[i]+".out "+fileNameList[i]
    gcc_o.append(ordertemp)
    ordertemp = "gcc -S " + fileNameList[i]
    gcc_S.append(ordertemp)
    ordertemp = "objdump -d " + fileHeadList[i] +".out > " + fileHeadList[i] + ".asm"
    obj_d.append(ordertemp)



#执行命令
for i in range(len(fileHeadList)):
    os.system(gcc_o[i])
    os.system(gcc_S[i])
    os.system(obj_d[i])
    #print(gcc_o[i])
    #print(gcc_S[i])
    #print(obj_d[i])
