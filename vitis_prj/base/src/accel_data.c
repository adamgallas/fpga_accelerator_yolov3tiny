#include "accel_data.h"

uint8_t ap_done;
uint8_t ofm_batch;
uint8_t ifm_batch;
uint8_t fm_div_cnt;

uint32_t sel;
uint32_t reg_conv_len_sel_relu_sel;
uint32_t reg_pool_config;
uint32_t reg_scale_shift;
uint32_t reg_zp_out_in;

uint32_t ifm_ddr_base_addr;
uint32_t ofm_ddr_base_addr;
uint32_t wgt_ddr_base_addr;
uint32_t bia_ddr_base_addr;
uint32_t lky_ddr_base_addr;

uint8_t state;

uint16_t fm_col;
uint16_t fm_row;
uint16_t fm_div;
uint16_t fm_res;
uint32_t fm_size;

uint8_t ofm_recv_half;
uint16_t fm_col_half;
uint16_t fm_row_half;
uint16_t fm_div_half;
uint16_t fm_res_half;
uint32_t fm_size_half;

uint32_t wgt_addr_send;
uint32_t wgt_addr_read;
uint32_t bia_addr_read;

uint32_t ifm_addr_send;
uint32_t ifm_addr_fmbase;
uint32_t ifm_addr_offset;
uint32_t ifm_send_len;

uint32_t ofm_addr_recv;
uint32_t ofm_addr_fmbase;
uint32_t ofm_addr_offset;
uint32_t ofm_recv_len;

uint32_t reg_static;
uint32_t reg_task;
uint8_t last_buf_sel;

uint8_t iter_ifm_pre;
uint8_t iter_ofm_pre;
uint8_t iter_div_pre;
uint8_t iter_ifm_post;
uint8_t iter_ofm_post;
uint8_t iter_div_post;

uint8_t ifm_send_task_enable;
uint8_t ofm_recv_task_enable;
uint8_t wgt_send_task_enable;

uint16_t fm_col_list[]={
	FM_COL_0,FM_COL_1,FM_COL_2,
	FM_COL_3,FM_COL_4,FM_COL_5
};
uint16_t fm_row_list[]={
	FM_ROW_0,FM_ROW_1,FM_ROW_2,
	FM_ROW_3,FM_ROW_4,FM_ROW_5
};

uint32_t *ifm_list		=&config_list[0*MAX_TASK];
uint32_t *ofm_list		=&config_list[1*MAX_TASK];
uint32_t *scale_list	=&config_list[2*MAX_TASK];
uint32_t *shift_list	=&config_list[3*MAX_TASK];
uint32_t *zp_in_list	=&config_list[4*MAX_TASK];
uint32_t *zp_out_list	=&config_list[5*MAX_TASK];
uint32_t *zp_act_list	=&config_list[6*MAX_TASK];
uint32_t *sel_in_list	=&config_list[7*MAX_TASK];
uint32_t *pool_list		=&config_list[8*MAX_TASK];
uint32_t *stride_list	=&config_list[9*MAX_TASK];

float sigmoid_table[256];
char cate[MAX_CLASS][MAX_CATE_LEN];
uint32_t config_list[MAX_LIST*MAX_TASK];

uint8_t FM_BUF_0[MAX_FM]	__attribute((aligned (64)));
uint8_t FM_BUF_1[MAX_FM]	__attribute((aligned (64)));
uint8_t WEIGHT0[MAX_WEIGHT]	__attribute((aligned (64)));
uint8_t WEIGHT1[MAX_WEIGHT]	__attribute((aligned (64)));
uint8_t WEIGHT2[MAX_WEIGHT]	__attribute((aligned (64)));
uint8_t WEIGHT3[MAX_WEIGHT]	__attribute((aligned (64)));
uint8_t WEIGHT4[MAX_WEIGHT]	__attribute((aligned (64)));
uint8_t WEIGHT5[MAX_WEIGHT]	__attribute((aligned (64)));
uint8_t WEIGHT6[MAX_WEIGHT]	__attribute((aligned (64)));
uint8_t WEIGHT7[MAX_WEIGHT]	__attribute((aligned (64)));
uint8_t WEIGHT8[MAX_WEIGHT]	__attribute((aligned (64)));
uint8_t WEIGHT9[MAX_WEIGHT]	__attribute((aligned (64)));
uint8_t BIAS0[MAX_BIAS]		__attribute((aligned (64)));
uint8_t BIAS1[MAX_BIAS]		__attribute((aligned (64)));
uint8_t BIAS2[MAX_BIAS]		__attribute((aligned (64)));
uint8_t BIAS3[MAX_BIAS]		__attribute((aligned (64)));
uint8_t BIAS4[MAX_BIAS]		__attribute((aligned (64)));
uint8_t BIAS5[MAX_BIAS]		__attribute((aligned (64)));
uint8_t BIAS6[MAX_BIAS]		__attribute((aligned (64)));
uint8_t BIAS7[MAX_BIAS]		__attribute((aligned (64)));
uint8_t BIAS8[MAX_BIAS]		__attribute((aligned (64)));
uint8_t BIAS9[MAX_BIAS]		__attribute((aligned (64)));
uint8_t LEAKY0[MAX_LEAKY]	__attribute((aligned (64)));
uint8_t LEAKY1[MAX_LEAKY]	__attribute((aligned (64)));
uint8_t LEAKY2[MAX_LEAKY]	__attribute((aligned (64)));
uint8_t LEAKY3[MAX_LEAKY]	__attribute((aligned (64)));
uint8_t LEAKY4[MAX_LEAKY]	__attribute((aligned (64)));
uint8_t LEAKY5[MAX_LEAKY]	__attribute((aligned (64)));
uint8_t LEAKY6[MAX_LEAKY]	__attribute((aligned (64)));
uint8_t LEAKY7[MAX_LEAKY]	__attribute((aligned (64)));
uint8_t LEAKY8[MAX_LEAKY]	__attribute((aligned (64)));
uint8_t LEAKY9[MAX_LEAKY]	__attribute((aligned (64)));

uint8_t *ifm_ddr_base_addr_in_list[MAX_TASK]={
	ifmInBuf[1],FM_BUF_1,FM_BUF_0,FM_BUF_1,FM_BUF_0,
	//FM_BUF_0,FM_BUF_1,FM_BUF_0,FM_BUF_1,FM_BUF_0,
	FM_BUF_1,FM_BUF_0,FM_BUF_1,FM_BUF_0,FM_BUF_1
};
uint8_t *ofm_ddr_base_addr_in_list[MAX_TASK]={
	FM_BUF_1,FM_BUF_0,FM_BUF_1,FM_BUF_0,FM_BUF_1,
	FM_BUF_0,FM_BUF_1,FM_BUF_0,FM_BUF_1,FM_BUF_0
};
uint8_t *wgt_ddr_base_addr_in_list[MAX_TASK]={
	WEIGHT0,WEIGHT1,WEIGHT2,WEIGHT3,WEIGHT4,
	WEIGHT5,WEIGHT6,WEIGHT7,WEIGHT8,WEIGHT9
};
uint8_t *bia_ddr_base_addr_in_list[MAX_TASK]={
	BIAS0,BIAS1,BIAS2,BIAS3,BIAS4,
	BIAS5,BIAS6,BIAS7,BIAS8,BIAS9
};
uint8_t *lky_ddr_base_addr_in_list[MAX_TASK]={
	LEAKY0,LEAKY1,LEAKY2,LEAKY3,LEAKY4,
	LEAKY5,LEAKY6,LEAKY7,LEAKY8,LEAKY9
};

const float anchor[3][2]={
	{81,82},{135,169},{344,319}
};
const uint8_t color1[MAX_CLASS]={255,0,0};
const uint8_t color2[MAX_CLASS]={0,0,255};
const uint8_t color3[MAX_CLASS]={0,255,0};

uint32_t xleft;
uint32_t xright;
uint32_t ytop;
uint32_t ydown;
float prob;
uint8_t category;
uint8_t CLASS;

uint8_t chr1;
uint8_t chr2;
uint8_t chr3;
uint8_t chr4;
uint8_t chr5;
uint8_t chr6;

FIL fil;
FATFS fatfs;
FRESULT response;
uint32_t wr_tot;

XTime tEnd,tCur;
XTime tEnd_t,tCur_t;
uint32_t tUsed;

void Load_IFM(uint8_t *ifmbuf,int fmcol,int fm_row,int fmch){
	xil_printf("Begin Load_IFM!\n");
	f_open(&fil,"IFMT.bin",FA_OPEN_EXISTING|FA_READ);
	f_read(&fil,ifmbuf,fmcol*fm_row*fmch,&wr_tot);
	f_close(&fil);
	Xil_DCacheFlushRange((INTPTR)ifmbuf,fmcol*fm_row*fmch);
	xil_printf("Finish Load_IFM!\n");
	return;
}
void Save_OFM(uint8_t *ofmbuf,int fmcol,int fm_row,int fmch){
	xil_printf("Begin Save_OFM!\n");
	Xil_DCacheInvalidateRange((INTPTR)ofmbuf,fmcol*fm_row*fmch);
	f_open(&fil,"OFMS.bin",FA_CREATE_ALWAYS|FA_WRITE);
	f_write(&fil,ofmbuf,fmcol*fm_row*fmch,&wr_tot);
	f_close(&fil);
	xil_printf("Finish Save_OFM!\n");
	return;
}
void Load_Para(char c,int class_num){
	xil_printf("-------------- Begin Load_Para! -------------- \n");
	CLASS=class_num;
	char filename[]="000.bin";
	filename[0]=c;

	/* ------------------- config -------------------- */
	filename[1]='C';
	filename[2]='G';
	f_open(&fil,filename,FA_OPEN_EXISTING|FA_READ);
	f_read(&fil,config_list,4*MAX_LIST*MAX_TASK,&wr_tot);
	f_close(&fil);

	/* ------------------- weights ------------------- */
	filename[1]='W';
	for(int i=0;i<MAX_TASK;i++){
		filename[2]='0'+i;
		f_open(&fil,filename,FA_OPEN_EXISTING|FA_READ);
		f_read(&fil,wgt_ddr_base_addr_in_list[i],ifm_list[i]*ofm_list[i]*9,&wr_tot);
		f_close(&fil);
	}
	/* ------------------- bias ---------------------- */
	filename[1]='B';
	for(int i=0;i<MAX_TASK;i++){
		filename[2]='0'+i;
		f_open(&fil,filename,FA_OPEN_EXISTING|FA_READ);
		f_read(&fil,bia_ddr_base_addr_in_list[i],ofm_list[i]*8,&wr_tot);
		f_close(&fil);
	}
	/* ------------------- leaky --------------------- */
	filename[1]='R';
	for(int i=0;i<MAX_TASK;i++){
		filename[2]='0'+i;
		f_open(&fil,filename,FA_OPEN_EXISTING|FA_READ);
		f_read(&fil,lky_ddr_base_addr_in_list[i],256*8,&wr_tot);
		f_close(&fil);
	}
	for(int i=0;i<MAX_TASK;i++){
		Xil_DCacheFlushRange((INTPTR)wgt_ddr_base_addr_in_list[i],ifm_list[i]*ofm_list[i]*9);
		Xil_DCacheFlushRange((INTPTR)bia_ddr_base_addr_in_list[i],ofm_list[i]*8);
		Xil_DCacheFlushRange((INTPTR)lky_ddr_base_addr_in_list[i],256*8);
	}
	/* ------------------- sigmoid ------------------- */
	filename[1]='S';
	filename[2]='G';
	f_open(&fil,filename,FA_OPEN_EXISTING|FA_READ);
	f_read(&fil,sigmoid_table,4*256,&wr_tot);
	f_close(&fil);
	/* ------------------- class name ---------------- */
	filename[1]='C';
	filename[2]='S';
	f_open(&fil,filename,FA_OPEN_EXISTING|FA_READ);
	f_read(&fil,cate,MAX_CLASS*MAX_CATE_LEN,&wr_tot);
	f_close(&fil);

	xil_printf("-------------- Finish Load_Para! ------------- \n");
	return;
}
