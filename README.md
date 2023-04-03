# HW_memory_CFG

## 介绍

华为内存稳定性项目的静态分析工具

## 测试

测试样例位于example下

其中spec_example为spec2006的部分项目反汇编的结果，规模相对来说较小；server_example为常用服务器软件核心组件反汇编的结果
## CFG
oldCFG为原来面向过程编程的版本，目前已经弃用

新的版本暂时在sample下面，通过main.ipynb执行整个流程

- read_adm实现了文件的读取和初步处理
- isa用于处理具体指令的分类
- cfg用于生成图结构和绘制对应的图像
- loadstore在cfg生成之后对相应的指令进行分析
- rw_condition用户读写分析
- heat_analysis热度分析