#ifndef _ACCEL_DATA_
#define _ACCEL_DATA_

#include "ff.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "accel_parameter.h"
#include "accel.h"
#include "xtime_l.h"

extern uint8_t ap_done;
extern uint8_t ofm_batch;
extern uint8_t ifm_batch;
extern uint8_t fm_div_cnt;

extern uint32_t sel;
extern uint32_t reg_conv_len_sel_relu_sel;
extern uint32_t reg_pool_config;
extern uint32_t reg_scale_shift;
extern uint32_t reg_zp_out_in;

extern uint32_t ifm_ddr_base_addr;
extern uint32_t ofm_ddr_base_addr;
extern uint32_t wgt_ddr_base_addr;
extern uint32_t bia_ddr_base_addr;
extern uint32_t lky_ddr_base_addr;

extern uint8_t state;

extern uint16_t fm_col;
extern uint16_t fm_row;
extern uint16_t fm_div;
extern uint16_t fm_res;
extern uint32_t fm_size;

extern uint8_t ofm_recv_half;
extern uint16_t fm_col_half;
extern uint16_t fm_row_half;
extern uint16_t fm_div_half;
extern uint16_t fm_res_half;
extern uint32_t fm_size_half;

extern uint32_t wgt_addr_send;
extern uint32_t wgt_addr_read;
extern uint32_t bia_addr_read;

extern uint32_t ifm_addr_send;
extern uint32_t ifm_addr_fmbase;
extern uint32_t ifm_addr_offset;
extern uint32_t ifm_send_len;

extern uint32_t ofm_addr_recv;
extern uint32_t ofm_addr_fmbase;
extern uint32_t ofm_addr_offset;
extern uint32_t ofm_recv_len;

extern uint32_t reg_static;
extern uint32_t reg_task;
extern uint8_t last_buf_sel;

extern uint8_t iter_ifm_pre;
extern uint8_t iter_ofm_pre;
extern uint8_t iter_div_pre;
extern uint8_t iter_ifm_post;
extern uint8_t iter_ofm_post;
extern uint8_t iter_div_post;

extern uint8_t ifm_send_task_enable;
extern uint8_t ofm_recv_task_enable;
extern uint8_t wgt_send_task_enable;

extern uint16_t fm_col_list[6];
extern uint16_t fm_row_list[6];

extern uint32_t *ifm_list;
extern uint32_t *ofm_list;
extern uint32_t *scale_list;
extern uint32_t *shift_list;
extern uint32_t *zp_in_list;
extern uint32_t *zp_out_list;
extern uint32_t *zp_act_list;
extern uint32_t *sel_in_list;
extern uint32_t *relu_type_list;
extern uint32_t *pool_list;
extern uint32_t *stride_list;

extern uint8_t ifmInBuf[3][FM_ROW_5*FM_COL_5*8];
extern uint8_t FM_BUF_0[MAX_FM];
extern uint8_t FM_BUF_1[MAX_FM];
extern uint8_t WEIGHT0[MAX_WEIGHT];
extern uint8_t WEIGHT1[MAX_WEIGHT];
extern uint8_t WEIGHT2[MAX_WEIGHT];
extern uint8_t WEIGHT3[MAX_WEIGHT];
extern uint8_t WEIGHT4[MAX_WEIGHT];
extern uint8_t WEIGHT5[MAX_WEIGHT];
extern uint8_t WEIGHT6[MAX_WEIGHT];
extern uint8_t WEIGHT7[MAX_WEIGHT];
extern uint8_t WEIGHT8[MAX_WEIGHT];
extern uint8_t WEIGHT9[MAX_WEIGHT];
extern uint8_t BIAS0[MAX_BIAS];
extern uint8_t BIAS1[MAX_BIAS];
extern uint8_t BIAS2[MAX_BIAS];
extern uint8_t BIAS3[MAX_BIAS];
extern uint8_t BIAS4[MAX_BIAS];
extern uint8_t BIAS5[MAX_BIAS];
extern uint8_t BIAS6[MAX_BIAS];
extern uint8_t BIAS7[MAX_BIAS];
extern uint8_t BIAS8[MAX_BIAS];
extern uint8_t BIAS9[MAX_BIAS];
extern uint8_t LEAKY0[MAX_LEAKY];
extern uint8_t LEAKY1[MAX_LEAKY];
extern uint8_t LEAKY2[MAX_LEAKY];
extern uint8_t LEAKY3[MAX_LEAKY];
extern uint8_t LEAKY4[MAX_LEAKY];
extern uint8_t LEAKY5[MAX_LEAKY];
extern uint8_t LEAKY6[MAX_LEAKY];
extern uint8_t LEAKY7[MAX_LEAKY];
extern uint8_t LEAKY8[MAX_LEAKY];
extern uint8_t LEAKY9[MAX_LEAKY];

extern uint8_t *ifm_ddr_base_addr_in_list[MAX_TASK];
extern uint8_t *ofm_ddr_base_addr_in_list[MAX_TASK];
extern uint8_t *wgt_ddr_base_addr_in_list[MAX_TASK];
extern uint8_t *bia_ddr_base_addr_in_list[MAX_TASK];
extern uint8_t *lky_ddr_base_addr_in_list[MAX_TASK];

extern const float anchor[3][2];

extern const uint8_t color1[MAX_CLASS];
extern const uint8_t color2[MAX_CLASS];
extern const uint8_t color3[MAX_CLASS];

extern uint32_t config_list[MAX_LIST*MAX_TASK];
extern float sigmoid_table[256];
extern char cate[MAX_CLASS][MAX_CATE_LEN];

extern uint32_t xleft;
extern uint32_t xright;
extern uint32_t ytop;
extern uint32_t ydown;

extern float prob;
extern uint8_t category;
extern uint8_t CLASS;

extern uint8_t chr1;
extern uint8_t chr2;
extern uint8_t chr3;
extern uint8_t chr4;
extern uint8_t chr5;
extern uint8_t chr6;

extern FIL fil;
extern FATFS fatfs;
extern FRESULT response;
extern uint32_t wr_tot;

extern XTime tEnd,tCur;
extern XTime tEnd_t,tCur_t;
extern uint32_t tUsed;

void Load_Para(char c,int class_num);
void Load_IFM(uint8_t *ifmbuf,int fmcol,int fm_row,int fmch);
void Save_OFM(uint8_t *ofmbuf,int fmcol,int fm_row,int fmch);

#endif
