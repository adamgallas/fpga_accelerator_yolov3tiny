#include "accel.h"

inline void Wait_AP_Done(){
	while(ap_done==0);
	ap_done=0;
	return;
}
inline void Send_DMA_Task(uint32_t bufaddr,uint32_t buflen){
	Xil_DCacheFlushRange((INTPTR)bufaddr,buflen);
	Xil_Out32(X_AXI_DMA_SEND_ADDR_0,bufaddr);
	Xil_Out32(X_AXI_DMA_SEND_ADDR_2,buflen);
	return;
}
inline void Recv_DMA_Task(uint32_t bufaddr,uint32_t buflen){
	Xil_Out32(X_AXI_DMA_RECV_ADDR_0,bufaddr);
	Xil_Out32(X_AXI_DMA_RECV_ADDR_2,buflen);
	return;
}
void Set_Next_IFM_ADDR_LEN(){
	if(iter_ofm_post!=ofm_batch-1||iter_div_post!=fm_div_cnt-1||iter_ifm_post!=ifm_batch-1){
		ifm_send_task_enable=1;
		if(fm_size>256)	ifm_addr_fmbase=iter_ifm_pre*fm_size;
		else ifm_addr_fmbase=iter_ifm_pre*256;
		if(fm_div_cnt==1){
			ifm_addr_offset=0;
			ifm_send_len=fm_size<<3;
		}
		else{
			if(iter_div_pre==fm_div_cnt-1){
				ifm_addr_offset=(fm_row-fm_res-2)*fm_col;
				ifm_send_len=((fm_res+2)*fm_col)<<3;
			}
			else{
				ifm_addr_offset=(iter_div_pre*fm_div)*fm_col;
				ifm_send_len=((fm_div+2)*fm_col)<<3;
			}
		}
		ifm_addr_send=ifm_ddr_base_addr+((ifm_addr_fmbase+ifm_addr_offset)<<3);
	}
	else{
		ifm_send_task_enable=0;
	}
	return;
}
void Set_Next_OFM_ADDR_LEN(){
	if(iter_ifm_post==ifm_batch-1){
		if(ofm_recv_half){
			ofm_recv_task_enable=1;
			if(fm_size_half>256) ofm_addr_fmbase=iter_ofm_post*fm_size_half;
			else ofm_addr_fmbase=iter_ofm_post*256;
			if(fm_div_cnt==1){
				ofm_addr_offset=0;
				ofm_recv_len=fm_size_half<<3;
			}
			else{
				if(iter_div_post==0){
					ofm_addr_offset=0;
					ofm_recv_len=((fm_div_half+1)*fm_col_half)<<3;
				}
				else if(iter_div_post==fm_div_cnt-1){
					ofm_addr_offset=(fm_row_half-fm_res_half-1)*fm_col_half;
					ofm_recv_len=((fm_res_half+1)*fm_col_half)<<3;
				}
				else{
					ofm_addr_offset=(iter_div_post*fm_div_half+1)*fm_col_half;
					ofm_recv_len=(fm_div_half*fm_col_half)<<3;
				}
			}
			ofm_addr_recv=ofm_ddr_base_addr+((ofm_addr_fmbase+ofm_addr_offset)<<3);
		}
		else{
			ofm_recv_task_enable=1;
			if(fm_size>256) ofm_addr_fmbase=iter_ofm_post*fm_size;
			else ofm_addr_fmbase=iter_ofm_post*256;
			if(fm_div_cnt==1){
				ofm_addr_offset=0;
				ofm_recv_len=fm_size<<3;
			}
			else{
				if(iter_div_post==0){
					ofm_addr_offset=0;
					ofm_recv_len=((fm_div+1)*fm_col)<<3;
				}
				else if(iter_div_post==fm_div_cnt-1){
					ofm_addr_offset=(fm_row-fm_res-1)*fm_col;
					ofm_recv_len=((fm_res+1)*fm_col)<<3;
				}
				else{
					ofm_addr_offset=(iter_div_post*fm_div+1)*fm_col;
					ofm_recv_len=(fm_div*fm_col)<<3;
				}
			}
			ofm_addr_recv=ofm_ddr_base_addr+((ofm_addr_fmbase+ofm_addr_offset)<<3);
		}
	}
	else{
		ofm_recv_task_enable=0;
	}
	return;
}
void Set_Next_WGT_ADDR_LEN(){
	if(	wgt_addr_read==WEIGHT_LEN-1&&
		iter_div_post==fm_div_cnt-1&&
		iter_ofm_post!=ofm_batch-1
		){
		wgt_send_task_enable=1;
		wgt_addr_send=wgt_addr_send+WEIGHT_LEN*64*9;
		wgt_addr_read=0;
	}
	else{
		wgt_send_task_enable=0;
	}
	return;
}
void Set_Reg(){
	reg_static=reg_conv_len_sel_relu_sel;
	if(iter_ifm_post==0)
		reg_static|=FIRST_CONV;
	if(iter_ifm_post==ifm_batch-1){
		reg_static|=LAST_CONV;
		reg_static|=reg_pool_config;
	}
	if(!last_buf_sel)
		reg_static|=IFM_SEL;
	last_buf_sel=!last_buf_sel;
	if(fm_div_cnt==1){
		reg_static|=SET_CONV_ROW_LEN(fm_div);
		reg_static|=SET_OFM_SEND_SEL(OFM_SEND_WHOLE);
	}
	else{
		if(iter_div_post==0){
			reg_static|=SET_CONV_ROW_LEN(fm_div+2);
			reg_static|=SET_OFM_SEND_SEL(OFM_SEND_NO_TAIL);
		}
		else if(iter_div_post==fm_div_cnt-1){
			reg_static|=SET_CONV_ROW_LEN(fm_res+2);
			reg_static|=SET_OFM_SEND_SEL(OFM_SEND_NO_HEAD);
		}
		else{
			reg_static|=SET_CONV_ROW_LEN(fm_div+2);
			reg_static|=SET_OFM_SEND_SEL(OFM_SEND_REDUCE);
		}
	}
	if(iter_ofm_post==ofm_batch-1&&iter_div_post==fm_div_cnt-1&&iter_ifm_post==ifm_batch-1)
		reg_task=CONV_START_CMD|TASK_VALID;
	else if(iter_ofm_pre==0&&iter_div_pre==0&&iter_ifm_pre==0)
		reg_task=RECV_ENABLE|TASK_VALID;
	else
		reg_task=RECV_ENABLE|CONV_START_CMD|TASK_VALID;
	return;
}
void Update_Iterator(){
	iter_ifm_post=iter_ifm_pre;
	iter_div_post=iter_div_pre;
	iter_ofm_post=iter_ofm_pre;
	iter_ifm_pre++;
	if(iter_ifm_pre==ifm_batch){
		iter_ifm_pre=0;
		iter_div_pre++;
		if(iter_div_pre==fm_div_cnt){
			iter_div_pre=0;
			iter_ofm_pre++;
		}
	}
	return;
}
void Inference(){
	state=INIT_TASK;
	while(state!=ALL_TASK_FINISH){
		switch(state){
		case INIT_TASK:
			Xil_Out32(ACCEL_CTRL_ADDR,RECV_ENABLE|TASK_VALID|BIAS_BUF_SEL);
			Xil_Out32(ACCEL_CTRL_ADDR,BIAS_BUF_SEL);
			Send_DMA_Task(bia_ddr_base_addr,ofm_batch*8*8);
			Wait_AP_Done();

			Xil_Out32(ACCEL_CTRL_ADDR,RECV_ENABLE|TASK_VALID|LEAKY_RELU_BUF);
			Xil_Out32(ACCEL_CTRL_ADDR,LEAKY_RELU_BUF);
			Send_DMA_Task(lky_ddr_base_addr,256*8);
			Wait_AP_Done();

			Xil_Out32(ACCEL_CTRL_ADDR,RECV_ENABLE|TASK_VALID|WEIGHT_BUF_SEL);
			Xil_Out32(ACCEL_CTRL_ADDR,WEIGHT_BUF_SEL);
			Send_DMA_Task(wgt_ddr_base_addr,WEIGHT_LEN*64*9);
			
			Xil_Out32(ACCEL_QUANT_ADDR,reg_scale_shift);
			Xil_Out32(ACCEL_ZP_ADDR,reg_zp_out_in);

			Set_Next_IFM_ADDR_LEN();
			Set_Reg();
			
			state=IFM_CONV_TASK;
			Wait_AP_Done();
			break;
		case IFM_CONV_TASK:
			Xil_Out32(ACCEL_WGT_BIA_DDR,SET_WGT_BIA_ADDR(bia_addr_read,wgt_addr_read));
			Xil_Out32(ACCEL_CTRL_ADDR,reg_static|reg_task);
			Xil_Out32(ACCEL_CTRL_ADDR,reg_static);

			if(ifm_send_task_enable){
				Send_DMA_Task(ifm_addr_send,ifm_send_len);
			}

			Set_Next_OFM_ADDR_LEN();
			Set_Next_WGT_ADDR_LEN();

			if(!ofm_recv_task_enable){
				Update_Iterator();
				Set_Next_IFM_ADDR_LEN();
				Set_Reg();
				wgt_addr_read=(iter_ofm_post*ifm_batch+iter_ifm_post)&(WEIGHT_LEN-1);
				bia_addr_read=iter_ofm_post;
			}
			state=OFM_WGT_TASK;
			Wait_AP_Done();
			break;
		case OFM_WGT_TASK:
			state=IFM_CONV_TASK;
			if(ofm_recv_task_enable){
				Recv_DMA_Task(ofm_addr_recv,ofm_recv_len);
				Xil_Out32(ACCEL_CTRL_ADDR,reg_static|SEND_ENABLE|TASK_VALID);
				Xil_Out32(ACCEL_CTRL_ADDR,reg_static);

				if(iter_ofm_post==ofm_batch-1&&iter_div_post==fm_div_cnt-1&&iter_ifm_post==ifm_batch-1)
					state=ALL_TASK_FINISH;

				Update_Iterator();
				Set_Next_IFM_ADDR_LEN();
				Set_Reg();
				wgt_addr_read=(iter_ofm_post*ifm_batch+iter_ifm_post)&(WEIGHT_LEN-1);
				bia_addr_read=iter_ofm_post;

				Wait_AP_Done();
				Xil_DCacheInvalidateRange((INTPTR)ofm_addr_recv,ofm_recv_len);
			}
			if(wgt_send_task_enable){
				Xil_Out32(ACCEL_CTRL_ADDR,RECV_ENABLE|TASK_VALID|WEIGHT_BUF_SEL);
				Xil_Out32(ACCEL_CTRL_ADDR,WEIGHT_BUF_SEL);
				Send_DMA_Task(wgt_addr_send,WEIGHT_LEN*64*9);
				Wait_AP_Done();
			}
			break;
		case ALL_TASK_FINISH:
			state=ALL_TASK_FINISH;
			break;
		default:
			break;
		}
	}
	return;
}
void Initiate(
	uint32_t ofm,uint32_t ifm,
	uint32_t sel_in,uint32_t relu_type,
	uint32_t pool,uint32_t stride,
	uint32_t scale,uint32_t shift,
	uint32_t zp_in,uint32_t zp_out,uint32_t zp_act,
	uint32_t ifm_ddr_base_addr_in,
	uint32_t ofm_ddr_base_addr_in,
	uint32_t wgt_ddr_base_addr_in,
	uint32_t bia_ddr_base_addr_in,
	uint32_t lky_ddr_base_addr_in){

	ofm_batch=ofm>>3;
	ifm_batch=ifm>>3;
	sel=sel_in;

	reg_conv_len_sel_relu_sel=SET_CONV_LEN(sel_in)|SET_RELU_TYPE(relu_type);
	reg_pool_config=SET_POOL(pool,stride);
	reg_scale_shift=SET_SCALE(shift,scale);
	reg_zp_out_in=SET_ZEROPOINT(zp_act,zp_out,zp_in);

	ifm_ddr_base_addr=ifm_ddr_base_addr_in;
	ofm_ddr_base_addr=ofm_ddr_base_addr_in;
	wgt_ddr_base_addr=wgt_ddr_base_addr_in;
	bia_ddr_base_addr=bia_ddr_base_addr_in;
	lky_ddr_base_addr=lky_ddr_base_addr_in;
	
	fm_col=fm_col_list[sel];
	fm_row=fm_row_list[sel];
	fm_size=fm_col*fm_row;
	
	if(FMBUF_LEN/fm_col<fm_row){
		fm_div=(FMBUF_LEN/fm_col-2);
		if(fm_div%2!=0) fm_div--;

		fm_res=fm_row%fm_div;
		if(fm_res==0){
			fm_div_cnt=fm_row/fm_div;
			fm_res=fm_div;
		}
		else fm_div_cnt=(fm_row/fm_div+1);
		if(fm_res!=0&&fm_res<6) fm_res=6;
	}
	else{
		fm_div=fm_row;
		fm_div_cnt=1;
		fm_res=0;
	}

	if(pool&&(stride==POOL_STRIDE_EQU_2)) ofm_recv_half=1;
	else ofm_recv_half=0;
	fm_col_half=(fm_col)/2+1;
	fm_row_half=(fm_row)/2+1;
	fm_size_half=fm_col_half*fm_row_half;
	
	fm_div_half=fm_div>>1;
	fm_res_half=fm_res>>1;

	wgt_addr_send=wgt_ddr_base_addr;
	wgt_addr_read=0;
	bia_addr_read=0;
	last_buf_sel=0;

	iter_ifm_pre=0;
	iter_ofm_pre=0;
	iter_div_pre=0;
	iter_ifm_post=0;
	iter_ofm_post=0;
	iter_div_post=0;
	return;
}
void YOLOV3_TINY(){
	//XTime_GetTime(&tCur);
	for(int i=0;i<MAX_TASK;i++){
		Initiate(
			ofm_list[i],ifm_list[i],
			sel_in_list[i],0,
			pool_list[i],stride_list[i],
			scale_list[i],shift_list[i],
			zp_in_list[i],zp_out_list[i],zp_act_list[i],
			(UINTPTR)ifm_ddr_base_addr_in_list[i],
			(UINTPTR)ofm_ddr_base_addr_in_list[i],
			(UINTPTR)wgt_ddr_base_addr_in_list[i],
			(UINTPTR)bia_ddr_base_addr_in_list[i],
			(UINTPTR)lky_ddr_base_addr_in_list[i]);
		Inference();
	}
	//XTime_GetTime(&tEnd);
	//tUsed=((tEnd-tCur)*1000000)/(COUNTS_PER_SECOND);
	//xil_printf("[Time elapsed is %d us]\n",tUsed);
	Detect(ofm_ddr_base_addr_in_list[MAX_TASK-1]);

	return;
}
uint16_t Addr_Calc(uint16_t t,uint16_t i,uint16_t j){
	uint16_t low,high,addr;
	low=t&0x0007;
	high=t>>3;
	addr=(high*256*8)+(i*(FM_COL_BASE+2)*8)+(j*8)+low;
	return addr;
}
void Detect(uint8_t *vec){
	uint8_t max_p=0,max_cp=0,curr_p=0;
	float x=0,y=0,w=0,h=0;
	uint16_t trec,irec,jrec,crec;

	for(uint16_t t=0;t<3;t++){
		for(uint16_t i=1;i<FM_ROW_BASE;i++){
			for(uint16_t j=1;j<FM_COL_BASE;j++){
				curr_p=vec[Addr_Calc(t*(CLASS+5)+4,i,j)];
				if(curr_p>max_p){
					max_p=curr_p;
					trec=t;
					irec=i;
					jrec=j;
				}
			}
		}
	}
	for(uint16_t c=0;c<CLASS;c++){
		curr_p=vec[Addr_Calc(trec*(CLASS+5)+5+c,irec,jrec)];
		if(curr_p>max_cp){
			crec=c;
			max_cp=curr_p;
		}
	}

	x=sigmoid_table[vec[Addr_Calc(trec*(CLASS+5)+0,irec,jrec)]];
	y=sigmoid_table[vec[Addr_Calc(trec*(CLASS+5)+1,irec,jrec)]];
	w=sigmoid_table[vec[Addr_Calc(trec*(CLASS+5)+2,irec,jrec)]];
	h=sigmoid_table[vec[Addr_Calc(trec*(CLASS+5)+3,irec,jrec)]];

	x=((x*2-0.5)+(jrec-1))*STRIDE*2;
	y=((y*2-0.5)+(irec-1))*STRIDE*2;
	w=(4*w*w)*anchor[trec][0];
	h=(4*h*h)*anchor[trec][1];

	xleft=(int)(x-w+222);
	xright=(int)(x+w+222);
	ytop=(int)(y-h+102);
	ydown=(int)(y+h+102);
	category=crec;
	prob=sigmoid_table[max_cp]*sigmoid_table[max_p];
	return;
}
