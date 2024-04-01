## Introduction
- First Prize Winner of the 2021 DIGILENT Cup, China College Integrated Circuit Competition.

## Directory
- The vivado_prj folder contains the Convolution Accelerator hardware Vivado project.
- The vitis_prj folder contains the Vitis project based on the vivado_prj hardware project.
- The vivadohls_prj folder contains some simple image processing IPs implemented using Vivado HLS.
- The python_prj folder contains the project for model training and model quantization implemented in Python.

## Project Description
This project implements a convolutional neural network accelerator, successfully deploying YOLOv3tiny. With the loop of camera capture + display screen feedback, a high-performance real-time object recognition and detection system is constructed.
- Verification Platform: Xilinx Zynq Ultrascale series xzcu3eg chip, Digilent official Genesys ZU3EG board
- Basic peripherals: Digilent PCAM 5C MIPI camera, mini DisplayPort display interface standard with Ultrascale
- Implementation method: Design of convolution accelerator is implemented in pure Verilog, development of Zynq PS side is implemented in C language, neural network construction and quantization are implemented in Python
- Development tool suite: Vivado, Vitis, Python, Pytorch
- Performance indicators: Inference time of YOLOv3tiny is less than 50ms, VGG16 backbone inference time is less than 200ms, maximum clock frequency exceeds 250MHz, peak rate exceeds 172GOPS, INT8 quantization
- Resource consumption: 24K LUTs, 23K FFs, 40 BRAM36Ks, 296 DSP48s
- Demo included in the project: Face mask recognition based on YOLOv3tiny, helmet recognition based on YOLOv3tiny
- Operations that the convolution accelerator can perform: 1x1 Conv, 3x3 Conv, 2x2 Maxpooling with stride = 1/2, implement any activation function through table lookup, Relu, Tanh, sigmoid, leakyRelu

## Q&A
- Q1: Can this project only implement the YOLOv3tiny algorithm?
  - A: This project implements a generic convolution accelerator on the PL side, which is actually independent of the network. However, the scheduling on the PS side is coupled with YOLOv3tiny and requires designing a scheduler program according to the architecture of the network on the PS side, but I do not recommend modifying it yourself, as it is difficult and I recommend learning by reference.
- Q2: Which convolutional neural network operations does this project support?
  - A: 1x1 Conv, 3x3 Conv, 2x2 Maxpooling with stride = 1/2, implement any activation function through table lookup, Relu, Tanh, sigmoid, leakyRelu
- Q3: Can I port it to my own development board?
  - A: Yes. But you need to port it yourself according to the constraints of your camera, display, and board.
- Q3: Does the implementation of this accelerator consume a lot of resources?
  - A: Not really. 24K LUTs, 23K FFs, 40 BRAM36Ks, almost all Xilinx boards have sufficient resources. The only thing is that DSP usage is relatively high. If the DSP48s on the chip are not enough, you can map the multiplier to LUTs yourself.
- Q4: Can it run on Artix or Virtex series FPGAs without CPU?
  - A: In theory, yes. This accelerator must have a CPU for scheduling. You can try instantiating MicroBlaze or Cortex M1/3 or even Riscv soft cores yourself.
- Q5: How do I put the Python-trained weight data into the FPGA?
  - A: After preprocessing the weight data to a certain extent, put it on an SD card, call the built-in xilff.h SD card driver library on the PS side, read the binary weight file from the SD card, load it into DDR, and then the PL side accesses the data in DDR through the AXI DMA core for inference calculation.
- Q6: What is the architecture of this accelerator?
  - A: The design of this accelerator is inspired by the papers: "Angel-Eye A Complete Design Flow for Mapping CNN Onto Embedded FPGA" and "Going Deeper with Embedded FPGA Platform for Convolutional Neural Network".
- Q7: Can I use this project as a thesis, competition entry, paper, or other projects?
  - A: Not recommended. This project is no longer maintained, and the comments are sparse, and the code style is not particularly standardized. It is only recommended for learning and reference.

## Before Raising an Issue
This repository is no longer maintained, but I will try to reply to the issues raised as much as possible. Before raising an issue, you can check if there are any related issues in the history. Based on observation, most issues are related to neural network quantization. However, quantization is not the focus of this project. The Python project included in the repository is of poor quality. Please refer to more standard quantization processes and use more convenient quantization tools. The reproduction of this project, porting to other neural networks, etc., all have significant engineering difficulties. Please carefully evaluate the difficulty of implementation before investing time.

## Citation
If you find this work useful, please cite

```BibTex
@inproceedings{chen2021hardware,
  title={Hardware Resource and Computational Density Efficient CNN Accelerator Design Based on FPGA},
  author={Chen, Xiang and Li, Jindong and Zhao, Yong},
  booktitle={2021 IEEE International Conference on Integrated Circuits, Technologies and Applications (ICTA)},
  pages={204--205},
  year={2021},
  organization={IEEE}
}
```



## 简介
- 2021年全国大学生集成电路创新创业大赛DIGILENT杯一等奖作品

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

	A：该工程在PL端实现了一个通用的卷积加速器，pl端的加速器其实和网络无关，但是ps端的调度和yolov3tiny仅耦合，需要在PS端自己根据网络的架构设计调度程序，但我不建议自己魔改，工程难度大，我建议参考学习。
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

- Q7: 我能把该工程当做毕设，比赛，论文或其他项目吗？

	A: 不建议。该工程没有继续维护了，且注释较少，代码风格不算规范，仅建议学习参考。

## 在提Issue之前
这个仓库已经没有继续维护了，但是提出的issue我会尽可能回复。在提issue之前可以先查看历史的issue有没有相关的问题。据观察，大部分的issue会和神经网络量化相关。但是量化不是这个工程的重点，仓库中包含的python工程写的质量不高，请参考更加标准的量化流程和使用更加便捷的量化工具。该工程的复现，其他神经网络的移植等都具有较大的工程难度，请在开始投入时间之前，谨慎评估一下实现的难度。

## 引用
如果你觉得这个工作有用，请引用

```BibTex
@inproceedings{chen2021hardware,
  title={Hardware Resource and Computational Density Efficient CNN Accelerator Design Based on FPGA},
  author={Chen, Xiang and Li, Jindong and Zhao, Yong},
  booktitle={2021 IEEE International Conference on Integrated Circuits, Technologies and Applications (ICTA)},
  pages={204--205},
  year={2021},
  organization={IEEE}
}
```
