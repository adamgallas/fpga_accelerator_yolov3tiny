#ifndef _ACCEL_
#define _ACCEL_

#include "accel_parameter.h"
#include "accel_data.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xtime_l.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "ff.h"

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
	uint32_t lky_ddr_base_addr_in);

void Wait_AP_Done();
void Send_DMA_Task(uint32_t bufaddr,uint32_t buflen);
void Recv_DMA_Task(uint32_t bufaddr,uint32_t buflen);
void Set_Reg();
void Update_Iterator();
void Set_Next_WGT_ADDR_LEN();
void Set_Next_IFM_ADDR_LEN();
void Set_Next_OFM_ADDR_LEN();

uint16_t Addr_Calc(uint16_t t,uint16_t i,uint16_t j);
void Inference();
void Detect(uint8_t *vec);
void YOLOV3_TINY();

#endif
