## 目录
- vivado_prj文件夹是卷积加速器硬件Vivado工程
- vitis_prj文件夹是基于vivado_prj硬件工程的软件Vitis工程
- vivadohls_prj文件夹是用Vivado hls实现的一些简单图像处理的IP
- python_prj文件夹是用Python实现的模型训练与模型量化的工程


## 工程描述
该工程实现了一个卷积神经网络加速器，成功搭载Yolov3tiny。配合摄像头采集+显示器回显环路，构建了一个高性能实时目标识别与检测系统。
- 验证平台：Xilinx Zynq Ultrascale系列xzcu3eg芯片，Digilent官方Genesys ZU3EG板卡
- 基本外设：Digilent PCAM 5C MIPI摄像头，Ultrascale标配的mini DisplayPort显示器接口
- 实现方式：纯Verilog实现卷积加速器的设计，C语言实现Zynq PS端的开发，Python实现神经网络的搭建与量化
- 开发工具套件：Vivado，Vitis，Python，Pytorch
- 性能指标：Yolov3tiny推理时间小于50ms，VGG16主干推理时间小于200ms，最高时钟频率超过250MHz，峰值速率超过172GOPS，INT8量化
- 耗用资源：24K个LUT，23K个FF，40个BRAM36K，296个DSP48
- 工程自带的demo：基于Yolov3tiny的人脸口罩识别、基于Yolov3tiny的头盔识别
- 卷积加速器能实现的运算：1x1 Conv，3x3 Conv，2x2 Maxpooling步长为=1/2，通过查表法实现任意激活函数，Relu,Tanh,sigmoid,leakyRelu

## Q&A
- Q1：该工程只能实现Yolov3tiny算法吗？
	A：该工程在PL端实现了一个通用的卷积加速器，理论上可以实现任意卷积神经网络的推理。需要在PS端自己根据网络的架构设计调度程序。
- Q2：该工程支持哪些卷积神经网络的运算？
	A：1x1 Conv，3x3 Conv，2x2 Maxpooling步长为=1/2，通过查表法实现任意激活函数，Relu,Tanh,sigmoid,leakyRelu
- Q3：我能移植到我自己的开发板上吗？
	A：可以。但是需要自己根据自己的摄像头，显示器，板子的约束，自己进行移植。
- Q3：该加速器的实现耗用的资源大吗？
	A：不大。24K个LUT，23K个FF，40个BRAM36K，几乎所有Xilinx的板子都有充足的资源。唯一的就是DSP耗用较多，如果芯片的DSP48不够的话，可以自己将乘法器映射成LUT。
- Q4：不带CPU的Artix或者Virtex系列的FPGA能跑吗？
	A：理论上可以。该加速器必须得有一个CPU进行调度。可以自己尝试例化MicroBlaze或者Cortex M1/3甚至Riscv的软核
- Q5：Python训练好的权重数据怎么放到FPGA里面？
	A：将权重数据进行一定的预处理之后，放到SD卡里面，在PS端调用自带的xilff.h的SD卡驱动库，读取SD卡的二进制权重文件，灌入DDR之后，PL端通过AXI DMA核访问DDR的数据进行推理计算
- Q6：该加速器的架构是怎样的？
	A：该加速器的设计借鉴了论文：Angel-Eye A Complete Design Flow for Mapping CNN Onto Embedded FPGA与Going Deeper with Embedded FPGA Platform for Convolutional Neural Network
