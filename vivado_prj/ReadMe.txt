该文件夹为Vivado工程

-文件夹说明
source文件夹包含了整个硬件加速器的verilog设计文件
hls_rect_ip是用vivado hls写的一个画框框画字符的IP，用于绘制yolo检测出来的框框和类别
hls_preprocess_ip是是用vivado hls写的一个图像缩放的IP，摄像头采集到的大小为1280x720，该IP缩放成416x256

-block design说明
mipi_csi2_rx_subsyst_0是摄像头IP核，我才用的是mipi接口的Digilent PCAM 5C摄像头，需要用到该IP核
摄像头IP核出来的数据要经过v_demosaic_0和v_gamma_lut_0进行预处理校正
axis_broadcaster_0把数据兵分两路，一路去进行视频回显，一路进行缩放交给卷积加速器推理

交给视频回显的那一路，先后通过了hls_rect_0和hls_rect_1两个画框框的IP核进行画框
然后进入axi_vdma_0缓存至ddr，缓存出来的数据通过v_axi4s_vid_out_0，最终输出到displayport进行输出

交给卷积加速器推理的那一路，先通过一个fifo（不可或缺），再经过hls_preprocess_0后进入axi_vdma_1缓存至ddr
卷积加速器直接通过axi_dma_0从内存里获取数据进行运算

-卷积加速器怎么工作
1 通过axi lite总线，连接到zynq的cpu。zynq通过axi lite总线配置卷积加速器的寄存器，从而实现控制调度
2 卷积加速器通过ap_done信号线触发ps端的终端，反馈给zynq的cpu，当前的任务是否完成
3 数据的进出都由axi dma核，连接到zynq的hp口进行实现