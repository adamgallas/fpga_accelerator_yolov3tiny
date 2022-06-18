#include <stdio.h>
#include "xil_printf.h"
#include "xvtc.h"
#include "vga_modes.h"
#include "xvidc.h"
#include "xavbuf.h"
#include "xavbuf_clk.h"
#include "dp_setup.h"
#include "xiicps.h"
#include "i2c.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "xgpiops.h"
#include "xv_demosaic.h"
#include "xv_gamma_lut.h"
#include "math.h"
#include "sleep.h"
#include "xscugic.h"
#include "xil_types.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include "ff.h"
#include "xhls_preprocess.h"
#include "xhls_rect.h"
#include "accel_data.h"
#include "accel_parameter.h"
#include "accel.h"
#include "xil_exception.h"
#include "xplatform_info.h"

#define VDMA_BASEADDR0		XPAR_AXI_VDMA_1_BASEADDR

#define DEMO_MAX_FRAME		(720*1280)
#define RESIZE_IMG_SIZE		(418*258)

#define IIC_cam 			XPAR_XIICPS_0_DEVICE_ID
#define cam_gpio 			XPAR_XGPIOPS_0_DEVICE_ID
#define CAM_ID              0x78
#define IIC_CAM_ADDR  		0x3c
#define IIC_SCLK_RATE		100000
#define MUX_ADDR			0x70

#define INTC_DEVICE_ID		XPAR_SCUGIC_0_DEVICE_ID
#define INTC_DEVICE_INT_ID	121

#define GPIO_DEVICE_ID		XPAR_XGPIOPS_0_DEVICE_ID
#define GPIO_INTERRUPT_ID	XPAR_XGPIOPS_0_INTR
#define GPIO_BANK			XGPIOPS_BANK0
#define Input_Pin			10

XGpioPs				Gpio;
XScuGic				Intc;

XScuGic				InterruptController;
XScuGic_Config		*GicConfig;

XVtc				VtcInst;
XVtc_Config			*vtc_config;
XIicPs				iic_cam;

XAxiVdma			vdma;
XAxiVdma_DmaSetup	vdmaDMA;
XAxiVdma_Config		*vdmaConfig;

XAxiVdma			vdma2;
XAxiVdma_DmaSetup	vdmaDMA2;
XAxiVdma_Config		*vdmaConfig2;

XGpioPs				gp_cam;
VideoMode			video;
XV_demosaic			cfa;
XV_gamma_lut		gamma_inst;

XHls_preprocess		hlsPreprocess;
XHls_rect			hlsRect;
XHls_rect			hlsRect_t;

u8 SendBuffer [10];
u8 RecvBuffer [10];
u16 gamma_reg[1024];

u32 frameBuf[3][DEMO_MAX_FRAME]		__attribute((aligned (64)));
u8	ifmInBuf[3][RESIZE_IMG_SIZE*8]	__attribute((aligned (64)));

u32 Detect_Camara();
u32 Read_Camera();

int  Init_Setting(u32 *cfg_init,int cfg_init_QTY);
void Gamma_Calculate(float gamma_val);

void Setup_File_System();
void Setup_Video_Resize();
void Setup_Cam_Video_Dp();
void Setup_Accel_System();

void Setup_GPIO_System(XGpioPs *Gpio, u16 DeviceId);
void GPIO_Callback(void *CallBackRef, u32 Bank, u32 Status);
int Setup_GPIO_Intr_System(XScuGic *Intc, XGpioPs *Gpio, u16 GpioIntrId);

void Draw_BoundingBox_Letter(float conf);
int Setup_Intr_System(XScuGic *InterruptController,u16 DeviceId, XGpioPs *Gpio, u16 GpioIntrId);
void Conv_Accel_Callback(void *CallbackRef);

FIL			fil;
FATFS		fatfs;
FRESULT		response;
uint32_t	wr_tot;

XTime		tEnd,tCur;
XTime		tEnd_t,tCur_t;
uint32_t	tUsed;

char model_id[2]={'F','H'};
uint8_t model_class[2]={3,2};
uint8_t model_num=2;
uint8_t model_index=0;
uint8_t change_model_flag=0;

int main()
{
	xil_printf("Enter Main!\n");
	Xil_DCacheEnable();
	Setup_File_System();
	Setup_Video_Resize();
	Setup_Cam_Video_Dp();
	Setup_GPIO_System(&Gpio, GPIO_DEVICE_ID);
	Setup_Intr_System(&InterruptController,INTC_DEVICE_ID,&Gpio,GPIO_INTERRUPT_ID);
	Setup_Accel_System();

	Load_Para(model_id[model_index],model_class[model_index]);
	while(1){
		YOLOV3_TINY();
		Draw_BoundingBox_Letter(0.25);
		if(change_model_flag){
			Load_Para(model_id[model_index],model_class[model_index]);
			change_model_flag=0;
		}
	}

	xil_printf("Exit Main!\n");
    return 0;
}
void Draw_BoundingBox_Letter(float conf){
	if(prob>conf){
		XHls_rect_Set_color1(&hlsRect,color1[category]);
		XHls_rect_Set_color2(&hlsRect,color2[category]);
		XHls_rect_Set_color3(&hlsRect,color3[category]);
		XHls_rect_Set_xleft_s(&hlsRect,xleft);
		XHls_rect_Set_xright_s(&hlsRect,xright);
		XHls_rect_Set_ytop_s(&hlsRect,ytop);
		XHls_rect_Set_ydown_s(&hlsRect,ydown);
		XHls_rect_Set_char1(&hlsRect,cate[category][0]-'a');
		XHls_rect_Set_char2(&hlsRect,cate[category][1]-'a');
		XHls_rect_Set_char3(&hlsRect,cate[category][2]-'a');
		XHls_rect_Set_char4(&hlsRect,cate[category][3]-'a');
		XHls_rect_Set_char5(&hlsRect,cate[category][4]-'a');
		XHls_rect_Set_char6(&hlsRect,cate[category][5]-'a');
	}
	else{
		XHls_rect_Set_xleft_s(&hlsRect,0);
		XHls_rect_Set_xright_s(&hlsRect,0);
		XHls_rect_Set_ytop_s(&hlsRect,0);
		XHls_rect_Set_ydown_s(&hlsRect,0);
		XHls_rect_Set_char1(&hlsRect,BLANK);
		XHls_rect_Set_char2(&hlsRect,BLANK);
		XHls_rect_Set_char3(&hlsRect,BLANK);
		XHls_rect_Set_char4(&hlsRect,BLANK);
		XHls_rect_Set_char5(&hlsRect,BLANK);
		XHls_rect_Set_char6(&hlsRect,BLANK);
	}
	return;
}
void Setup_File_System(){
	response=f_mount(&fatfs, "0:", 0);
	if(response!=FR_OK) return;
	xil_printf("File System Setup Success!\n");
	return;
}
void Setup_Accel_System(){
	Xil_Out32(X_AXI_DMA_SEND_RST_ADDR,0x04);
	Xil_Out32(X_AXI_DMA_RECV_RST_ADDR,0x04);
	usleep(1000000);
	Xil_Out32(X_AXI_DMA_SEND_ADDR_1,DMA_READREG_MASK);
	Xil_Out32(X_AXI_DMA_RECV_ADDR_1,DMA_READREG_MASK);
	xil_printf("ACCEL System Setup Success!\n");
	return;
}
int Setup_Intr_System(XScuGic *InterruptController,u16 DeviceId, XGpioPs *Gpio, u16 GpioIntrId){
	int status;
	XScuGic_Config *GicConfig;
	Xil_ExceptionInit();
	GicConfig = XScuGic_LookupConfig(DeviceId);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}
	status = XScuGic_CfgInitialize(InterruptController, GicConfig,
					GicConfig->CpuBaseAddress);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			InterruptController);
	Xil_ExceptionEnable();
	XScuGic_SetPriorityTriggerType(InterruptController,INTC_DEVICE_INT_ID,0xA0,0x03);
	status = XScuGic_Connect(InterruptController, INTC_DEVICE_INT_ID,
			   (Xil_ExceptionHandler)Conv_Accel_Callback,
			   (void *)InterruptController);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	status = XScuGic_Connect(InterruptController, GpioIntrId,
				(Xil_ExceptionHandler)XGpioPs_IntrHandler,
				(void *)Gpio);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XGpioPs_SetIntrType(Gpio, GPIO_BANK, 0xFFFFFFFF, 0xFFFFFFFF, 0x00);
	XGpioPs_SetCallbackHandler(Gpio, (void *)Gpio, GPIO_Callback);
	XGpioPs_IntrEnable(Gpio, GPIO_BANK, (1 << Input_Pin));
	
	XScuGic_Enable(InterruptController, INTC_DEVICE_INT_ID);
	XScuGic_Enable(InterruptController, GpioIntrId);
	Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
	xil_printf("Interrupt System Setup Success!\n");
	return XST_SUCCESS;
}
void Conv_Accel_Callback(void *CallbackRef){
	ap_done=1;
	return;
}
void Setup_Video_Resize(){
	XHls_preprocess_Initialize(&hlsPreprocess,XPAR_HLS_PREPROCESS_0_DEVICE_ID);
	XHls_preprocess_EnableAutoRestart(&hlsPreprocess);
	XHls_preprocess_InterruptGlobalDisable(&hlsPreprocess);
	XHls_preprocess_Start(&hlsPreprocess);

	XHls_rect_Initialize(&hlsRect,XPAR_HLS_RECT_0_DEVICE_ID);
	XHls_rect_EnableAutoRestart(&hlsRect);
	XHls_rect_InterruptGlobalDisable(&hlsRect);
	XHls_rect_Start(&hlsRect);

	XHls_rect_Initialize(&hlsRect_t,XPAR_HLS_RECT_1_DEVICE_ID);
	XHls_rect_EnableAutoRestart(&hlsRect_t);
	XHls_rect_InterruptGlobalDisable(&hlsRect_t);
	XHls_rect_Start(&hlsRect_t);
	XHls_rect_Set_xleft_s(&hlsRect_t,0);
	XHls_rect_Set_xright_s(&hlsRect_t,0);
	XHls_rect_Set_ytop_s(&hlsRect_t,0);
	XHls_rect_Set_ydown_s(&hlsRect_t,0);
	XHls_rect_Set_color1(&hlsRect_t,0);
	XHls_rect_Set_color2(&hlsRect_t,0);
	XHls_rect_Set_color3(&hlsRect_t,0);
	XHls_rect_Set_char1(&hlsRect_t,BLANK);
	XHls_rect_Set_char2(&hlsRect_t,BLANK);
	XHls_rect_Set_char3(&hlsRect_t,BLANK);
	XHls_rect_Set_char4(&hlsRect_t,BLANK);
	XHls_rect_Set_char5(&hlsRect_t,BLANK);
	XHls_rect_Set_char6(&hlsRect_t,BLANK);

	Xil_Out32((VDMA_BASEADDR0 + 0x030), 0x108B);				// enable circular mode
	Xil_Out32((VDMA_BASEADDR0 + 0x0AC), (UINTPTR)ifmInBuf[0]);	// start address
	Xil_Out32((VDMA_BASEADDR0 + 0x0B0), (UINTPTR)ifmInBuf[1]);	// start address
	Xil_Out32((VDMA_BASEADDR0 + 0x0B4), (UINTPTR)ifmInBuf[2]);	// start address
	Xil_Out32((VDMA_BASEADDR0 + 0x0A8), (418*8));				// h offset (H_STRIDE* 4) bytes
	Xil_Out32((VDMA_BASEADDR0 + 0x0A4), (418*8));				// h size (H_ACTIVE * 4) bytes
	Xil_Out32((VDMA_BASEADDR0 + 0x0A0), 258);					// v size (V_ACTIVE)
	xil_printf("Video Resize System Setup Success!\n");
	return;
}
void Setup_Cam_Video_Dp(){
	XVtc_Timing vtcTiming;
	XVtc_SourceSelect SourceSelect;
	XGpioPs_Config *GPIO_Config;

    vtc_config = XVtc_LookupConfig(XPAR_VTC_0_DEVICE_ID);
    XVtc_CfgInitialize(&VtcInst, vtc_config, vtc_config->BaseAddress);

    GPIO_Config = XGpioPs_LookupConfig(cam_gpio);
	XGpioPs_CfgInitialize(&gp_cam,GPIO_Config,GPIO_Config->BaseAddr);
	XGpioPs_SetOutputEnablePin(&gp_cam,78,1);
	XGpioPs_SetDirectionPin(&gp_cam,78,1);
	XGpioPs_WritePin(&gp_cam,78,0x0);
	usleep(2000000);
	XGpioPs_WritePin(&gp_cam,78,0x1);

    video = VMODE_1280x720;
	vtcTiming.HActiveVideo = video.width;					/**< Horizontal Active Video Size */
	vtcTiming.HFrontPorch = video.hps - video.width;		/**< Horizontal Front Porch Size */
	vtcTiming.HSyncWidth = video.hpe - video.hps;			/**< Horizontal Sync Width */
	vtcTiming.HBackPorch = video.hmax - video.hpe + 1;		/**< Horizontal Back Porch Size */
	vtcTiming.HSyncPolarity = video.hpol;					/**< Horizontal Sync Polarity */
	vtcTiming.VActiveVideo = video.height;					/**< Vertical Active Video Size */
	vtcTiming.V0FrontPorch = video.vps - video.height;		/**< Vertical Front Porch Size */
	vtcTiming.V0SyncWidth = video.vpe - video.vps;			/**< Vertical Sync Width */
	vtcTiming.V0BackPorch = video.vmax - video.vpe + 1;;	/**< Horizontal Back Porch Size */
	vtcTiming.V1FrontPorch = video.vps - video.height;		/**< Vertical Front Porch Size */
	vtcTiming.V1SyncWidth = video.vpe - video.vps;			/**< Vertical Sync Width */
	vtcTiming.V1BackPorch = video.vmax - video.vpe + 1;;	/**< Horizontal Back Porch Size */
	vtcTiming.VSyncPolarity = video.vpol;					/**< Vertical Sync Polarity */
	vtcTiming.Interlaced = 0;

    memset((void *)&SourceSelect, 0, sizeof(SourceSelect));
	SourceSelect.VBlankPolSrc = 1;
	SourceSelect.VSyncPolSrc = 1;
	SourceSelect.HBlankPolSrc = 1;
	SourceSelect.HSyncPolSrc = 1;
	SourceSelect.ActiveVideoPolSrc = 1;
	SourceSelect.ActiveChromaPolSrc= 1;
	SourceSelect.VChromaSrc = 1;
	SourceSelect.VActiveSrc = 1;
	SourceSelect.VBackPorchSrc = 1;
	SourceSelect.VSyncSrc = 1;
	SourceSelect.VFrontPorchSrc = 1;
	SourceSelect.VTotalSrc = 1;
	SourceSelect.HActiveSrc = 1;
	SourceSelect.HBackPorchSrc = 1;
	SourceSelect.HSyncSrc = 1;
	SourceSelect.HFrontPorchSrc = 1;
	SourceSelect.HTotalSrc = 1;
	XVtc_RegUpdateEnable(&VtcInst);
	XVtc_SetGeneratorTiming(&VtcInst, &vtcTiming);
	XVtc_SetSource(&VtcInst, &SourceSelect);
	XVtc_EnableGenerator(&VtcInst);

	XVtc_Enable(&VtcInst);

	vdmaConfig = XAxiVdma_LookupConfig(XPAR_AXIVDMA_0_DEVICE_ID);
	XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);

	vdmaDMA.FrameDelay = 0;
	vdmaDMA.EnableCircularBuf = 1;
	vdmaDMA.EnableSync = 0;
	vdmaDMA.PointNum = 0;
	vdmaDMA.EnableFrameCounter = 0;

	vdmaDMA.VertSizeInput = video.height;
	vdmaDMA.HoriSizeInput = (video.width)*4;
	vdmaDMA.FixedFrameStoreAddr = 0;
	vdmaDMA.FrameStoreStartAddr[0] = (UINTPTR)  frameBuf[0];
	vdmaDMA.Stride = (video.width)*4;

	XAxiVdma_DmaConfig(&vdma, XAXIVDMA_WRITE, &(vdmaDMA));
	XAxiVdma_DmaSetBufferAddr(&vdma, XAXIVDMA_WRITE,vdmaDMA.FrameStoreStartAddr);

	XAxiVdma_DmaConfig(&vdma, XAXIVDMA_READ, &(vdmaDMA));
	XAxiVdma_DmaSetBufferAddr(&vdma, XAXIVDMA_READ,vdmaDMA.FrameStoreStartAddr);

	XV_demosaic_Initialize(&cfa, XPAR_V_DEMOSAIC_0_DEVICE_ID);
	XV_demosaic_Set_HwReg_width(&cfa, video.width);
	XV_demosaic_Set_HwReg_height(&cfa, video.height);
	XV_demosaic_Set_HwReg_bayer_phase(&cfa, 0x03);
	XV_demosaic_EnableAutoRestart(&cfa);
	XV_demosaic_Start(&cfa);

	Gamma_Calculate(1.2);
	XV_gamma_lut_Initialize(&gamma_inst, XPAR_V_GAMMA_LUT_0_DEVICE_ID);
	XV_gamma_lut_Set_HwReg_width(&gamma_inst, video.width);
	XV_gamma_lut_Set_HwReg_height(&gamma_inst, video.height);
	XV_gamma_lut_Set_HwReg_video_format(&gamma_inst, 0x00);
	XV_gamma_lut_Write_HwReg_gamma_lut_0_Bytes(&gamma_inst, 0,(char *) gamma_reg, 2048);
	XV_gamma_lut_Write_HwReg_gamma_lut_1_Bytes(&gamma_inst, 0,(char *) gamma_reg, 2048);
	XV_gamma_lut_Write_HwReg_gamma_lut_2_Bytes(&gamma_inst, 0,(char *) gamma_reg, 2048);
	XV_gamma_lut_Start(&gamma_inst);
	XV_gamma_lut_EnableAutoRestart(&gamma_inst);

	Detect_Camara();

	SendBuffer[0]= 0x31;
	SendBuffer[1]= 0x03;
	SendBuffer[2]= 0x11;
	XIicPs_MasterSendPolled(&iic_cam, SendBuffer, 3, IIC_CAM_ADDR);
	SendBuffer[0]= 0x30;
	SendBuffer[1]= 0x08;
	SendBuffer[2]= 0x82;
	XIicPs_MasterSendPolled(&iic_cam, SendBuffer, 3, IIC_CAM_ADDR);

	usleep(1000000);

	Init_Setting(cfg_init[0],63);
	Init_Setting(cfg_simple_awb[0],19);
	Init_Setting(cfg_720p_60fps[0],38);

	XAxiVdma_DmaStart(&vdma, XAXIVDMA_WRITE);
	XAxiVdma_StartParking(&vdma, 0, XAXIVDMA_WRITE);
	XAxiVdma_DmaStart(&vdma, XAXIVDMA_READ);
	XAxiVdma_StartParking(&vdma, 0, XAXIVDMA_READ);
	Dp_Setup();
	xil_printf("Camera to DisplayPort System Setup Success!\n");
	return;
}
void Gamma_Calculate(float gamma_val)
{
	int i;
	for(i = 0; i<1024; i++){
		gamma_reg[i] = (pow((i / 1024.0), (1/gamma_val)) * 1024.0);
	}
}
u32 Detect_Camara()
{
	XIicPs_Config *iic_conf;
	u32 Status;
	iic_conf = XIicPs_LookupConfig(IIC_cam);
    XIicPs_CfgInitialize(&iic_cam,iic_conf,iic_conf->BaseAddress);
    XIicPs_SetSClk(&iic_cam, IIC_SCLK_RATE);

	SendBuffer[0]= 0x01;
	SendBuffer[1]= 0x00;

	Status = XIicPs_MasterSendPolled(&iic_cam, SendBuffer, 1, MUX_ADDR);
	if (Status != XST_SUCCESS) {
		print("SW I2C write error\n\r");
		return XST_FAILURE;
	}

	usleep(2000000);

    SendBuffer[0]= 0x31;
    SendBuffer[1]= 0x00;

    Status = XIicPs_MasterSendPolled(&iic_cam, SendBuffer, 2, IIC_CAM_ADDR);
	if (Status != XST_SUCCESS) {
		print("I2C write error\n\r");
		return XST_FAILURE;
	}

	Status = XIicPs_MasterRecvPolled(&iic_cam, RecvBuffer,1, IIC_CAM_ADDR);
	if (Status != XST_SUCCESS) {
		print("I2C read error\n\r");
		return XST_FAILURE;
	}

	if(RecvBuffer[0] != CAM_ID ){
		print("Camera not detected\n\r");
	}
	else{
		print("Camera detected!\n");
	}
	return XST_SUCCESS;
}
u32 Read_Camera()
{
	XIicPs_Config *iic_conf;
	u32 Status;
	iic_conf = XIicPs_LookupConfig(IIC_cam);
    XIicPs_CfgInitialize(&iic_cam,iic_conf,iic_conf->BaseAddress);
    XIicPs_SetSClk(&iic_cam, IIC_SCLK_RATE);

    SendBuffer[0]= 0x30;
    SendBuffer[1]= 0x0e;

    Status = XIicPs_MasterSendPolled(&iic_cam, SendBuffer, 2, IIC_CAM_ADDR);
	if (Status != XST_SUCCESS) {
		print("I2C write error\n\r");
		return XST_FAILURE;
	}

	Status = XIicPs_MasterRecvPolled(&iic_cam, RecvBuffer,1, IIC_CAM_ADDR);
	if (Status != XST_SUCCESS) {
		print("I2C read error\n\r");
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}
int Init_Setting( u32 *cfg_init , int cfg_init_QTY  )
{
	s32  Status;
    int i ;
    u8 SendBuffer[10];
    for(i=0;i<(cfg_init_QTY*2);i+=2){
		SendBuffer[1]=  *(cfg_init + i);
		SendBuffer[0]=  (*(cfg_init + i))>>8;
		SendBuffer[2]=  *(cfg_init + i + 1);
		Status = XIicPs_MasterSendPolled(&iic_cam, SendBuffer, 3, IIC_CAM_ADDR);
		if (Status != XST_SUCCESS) {
			print("I2C read error\n\r");
			return XST_FAILURE;
		}
		usleep(1000);
	}
	return XST_SUCCESS;
}
void Setup_GPIO_System(XGpioPs *Gpio, u16 DeviceId)
{
	XGpioPs_Config *ConfigPtr;
	ConfigPtr = XGpioPs_LookupConfig(DeviceId);
	XGpioPs_CfgInitialize(Gpio, ConfigPtr, ConfigPtr->BaseAddr);
	XGpioPs_SelfTest(Gpio);
	XGpioPs_SetDirectionPin(Gpio, Input_Pin, 0x0);
	return;
}
void GPIO_Callback(void *CallBackRef, u32 Bank, u32 Status)
{
	change_model_flag=1;
	model_index=(model_index+1)%model_num;
	xil_printf("#### Change Model! #### \n");
	return;
}
