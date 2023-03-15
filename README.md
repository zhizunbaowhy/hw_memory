# HW_memory_CFG

## 介绍

华为内存稳定性项目的静态分析工具

## 测试

测试样例位于example下

其中spec_example为spec2006的部分项目反汇编的结果，规模相对来说较小；server_example为常用服务器软件核心组件反汇编的结果
## CFG
oldCFG为原来面向过程编程的版本，目前已经弃用

新的面向对象的代码在newCFG下面

- readfile实现了读文件功能
- cfg_preparation实现了，cfg_gen实现了生成CFG图的功能
- loadStore实现了对于ls指令的分析处理功能