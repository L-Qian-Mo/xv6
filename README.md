一、实践背景
本实践基于 MIT xv6（x86 版本），围绕操作系统从 bootloader 到内核 main 函数的完
整启动流程展开，配合视频学习 bootblock、bootasm.S、bootmain.c、entry.S 以及内
核页表初始化过程。
二、实践目标
1.理解 xv6 启动链路：bootblock → bootasm.S → bootmain.c → entry.S → main()
2.掌握汇编与 C 在启动阶段的协作方式
3.理解 ELF 内核镜像加载过程
4.学会在关键启动节点插入调试信息
5.熟练使用 Git 进行 fork、commit 和 push
三、实践任务内容
1.实验准备——搭建环境
本次实验经历多轮环境适配，最终确定稳定的实验环境：
初次尝试WSL2环境：因WSL2下载失败放弃该方案；
二次尝试VirtualBox+Ubuntu：因 VirtualBox 的硬件虚拟化强化功能配置失败，无法正常运行QEMU，放弃该方案；
最终方案：VMware Workstation + Ubuntu 20.04 LTS 虚拟机（匹配视频教程版本），通过 VSCode 远程连接虚拟机编辑代码，配置共享文件夹实现 Windows 与虚拟机的代码同步，完成 xv6 编译运行的基础环境搭建。
2.任务1：Fork并成功启动xv6
具体启动成功界面请看截图 启动.png
3.任务2：启动流程注释
详情可以看具体文档
bootasm.S、bootmain.c、entry.S
4.任务3：启动过程可视化（核心任务）
四、个人总结
1.我学习到了通过qemu+gdb的调试方法和用vscode的调试方法
2.我了解了xv6的启动过程
3.我了解了实模式和保护模式
