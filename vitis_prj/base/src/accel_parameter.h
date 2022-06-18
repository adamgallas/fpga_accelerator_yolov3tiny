#ifndef _ACCEL_PARA_
#define _ACCEL_PARA_

#include "xparameters.h"
#include "xaxidma.h"

/* ------------------- AXIDMA Register Space -------------------*/
#define X_AXI_DMA_SEND_RST_ADDR      XPAR_AXI_DMA_0_BASEADDR
#define X_AXI_DMA_SEND_ADDR_0        XPAR_AXI_DMA_0_BASEADDR+XAXIDMA_SRCADDR_OFFSET
#define X_AXI_DMA_SEND_ADDR_1        XPAR_AXI_DMA_0_BASEADDR+XAXIDMA_CR_OFFSET
#define X_AXI_DMA_SEND_ADDR_2        XPAR_AXI_DMA_0_BASEADDR+XAXIDMA_BUFFLEN_OFFSET

#define X_AXI_DMA_RECV_RST_ADDR      XPAR_AXI_DMA_0_BASEADDR+0x30
#define X_AXI_DMA_RECV_ADDR_0        XPAR_AXI_DMA_0_BASEADDR+0x30+XAXIDMA_DESTADDR_OFFSET
#define X_AXI_DMA_RECV_ADDR_1        XPAR_AXI_DMA_0_BASEADDR+0x30+XAXIDMA_CR_OFFSET
#define X_AXI_DMA_RECV_ADDR_2        XPAR_AXI_DMA_0_BASEADDR+0x30+XAXIDMA_BUFFLEN_OFFSET

#define DMA_RESET_VAL				0x04
#define DMA_READREG_MASK		    0x10003
/* ------------------- AXIDMA Register Space -------------------*/

/* ------------------- Accel Register Space --------------------*/
#define ACCEL_CTRL_ADDR             XPAR_ACCEL_CONV_0_BASEADDR
#define ACCEL_QUANT_ADDR            XPAR_ACCEL_CONV_0_BASEADDR+4
#define ACCEL_ZP_ADDR               XPAR_ACCEL_CONV_0_BASEADDR+8
#define ACCEL_WGT_BIA_DDR           XPAR_ACCEL_CONV_0_BASEADDR+12
/* ------------------- Accel Register Space --------------------*/

/* ------------------- State Machine -------------------*/
#define INIT_TASK			0
#define IFM_CONV_TASK		1
#define OFM_WGT_TASK		2
#define ALL_TASK_FINISH		3
/* ------------------- Accel_Conv_Layer ----------------*/

/* ------------------- Accel Control ---------------------------*/

#define RECV_ENABLE					0x00000001
#define SEND_ENABLE					0x00000002
#define	IFM_BUF_SEL					0x00000000
#define	WEIGHT_BUF_SEL				0X00000004
#define LEAKY_RELU_BUF				0x00000008
#define BIAS_BUF_SEL				0X0000000C
#define CONV_START_CMD			    0x00000010
#define FIRST_CONV				    0x00000040
#define LAST_CONV				    0x00000080
#define IFM_SEL					    0x00000100
#define TASK_VALID				    0x00000200

#define POOL_ENABLE				    1
#define POOL_DISABLE				0
#define POOL_STRIDE_EQU_1			1
#define POOL_STRIDE_EQU_2			0
#define POOL_STRIDE_IGNORE			0

#define OFM_SEND_WHOLE				0
#define OFM_SEND_NO_HEAD			1
#define OFM_SEND_NO_TAIL			2
#define OFM_SEND_REDUCE				3

#define LEAKY_RELU					0
#define SIMPLE_RELU					1

#define SET_RELU_TYPE(x)			((x)<<16)
#define SET_CONV_LEN(x)				((x)<<10)
#define SET_CONV_ROW_LEN(x)			((x)<<24)
#define SET_OFM_SEND_SEL(x)			(((x)<<13))
#define SET_POOL(x,y)				(((x)<<5)|((y)<<15))
#define SET_WGT_BIA_ADDR(x,y)		((((x)<<16))|((y)))
#define SET_SCALE(x,y)				((((x)<<16))|((y)))
#define SET_ZEROPOINT(x,y,z)		(((x)<<16)|((y)<<8)|(z))

/* ------------------- Accel Control ---------------------------*/

/* ------------------- Accel MAX Para --------------------------*/
#define FMBUF_LEN					4096
#define WEIGHT_LEN					128
#define BIAS_LEN					128
#define MAX_COL						416
#define MAX_CH						1024
/* ------------------- Accel MAX Para --------------------------*/

/* ------------------- Accel MAX Buf ---------------------------*/
#define MAX_FM		418*418*1024
#define MAX_WEIGHT	512*1024*9
#define MAX_BIAS	1024*8
#define MAX_LEAKY	256*8
#define MAX_TASK	10
#define MAX_LIST	10
/* ------------------- Accel MAX Buf ---------------------------*/

/* ------------------- Accel FM LEN ----------------------------*/
#define FM_COL_BASE					13
#define FM_COL_0					(FM_COL_BASE*1+2)
#define FM_COL_1					(FM_COL_BASE*2+2)
#define FM_COL_2					(FM_COL_BASE*4+2)
#define FM_COL_3					(FM_COL_BASE*8+2)
#define FM_COL_4					(FM_COL_BASE*16+2)
#define FM_COL_5					(FM_COL_BASE*32+2)

#define FM_ROW_BASE					8
#define	FM_ROW_0					(FM_ROW_BASE*1+2)
#define	FM_ROW_1					(FM_ROW_BASE*2+2)
#define	FM_ROW_2					(FM_ROW_BASE*4+2)
#define	FM_ROW_3					(FM_ROW_BASE*8+2)
#define	FM_ROW_4					(FM_ROW_BASE*16+2)
#define	FM_ROW_5					(FM_ROW_BASE*32+2)

#define STRIDE						32
#define MAX_CLASS					80
#define MAX_CATE_LEN				6

#define FM_13						FM_COL_0
#define FM_26						FM_COL_1
#define FM_52						FM_COL_2
#define FM_104						FM_COL_3
#define FM_208						FM_COL_4
#define FM_416						FM_COL_5

extern unsigned char ap_done;
extern unsigned short fm_col_list[6];
/* ------------------- Accel FM LEN ----------------------------*/

#define BLANK 26

#endif
