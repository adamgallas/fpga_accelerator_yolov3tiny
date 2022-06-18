// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _hls_preprocess_HH_
#define _hls_preprocess_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "AXIvideo2Mat.h"
#include "Downsample.h"
#include "Convert.h"
#include "Mat2AXIvideo.h"
#include "fifo_w8_d2_A.h"
#include "start_for_Downsambkb.h"
#include "start_for_Convertcud.h"
#include "start_for_Mat2AXIdEe.h"
#include "hls_preprocess_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 4,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct hls_preprocess : public sc_module {
    // Port declarations 38
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_out< sc_logic > interrupt;
    sc_in< sc_lv<32> > video_src_TDATA;
    sc_in< sc_lv<4> > video_src_TKEEP;
    sc_in< sc_lv<4> > video_src_TSTRB;
    sc_in< sc_lv<1> > video_src_TUSER;
    sc_in< sc_lv<1> > video_src_TLAST;
    sc_in< sc_lv<1> > video_src_TID;
    sc_in< sc_lv<1> > video_src_TDEST;
    sc_out< sc_lv<32> > video_dst_TDATA;
    sc_out< sc_lv<4> > video_dst_TKEEP;
    sc_out< sc_lv<4> > video_dst_TSTRB;
    sc_out< sc_lv<1> > video_dst_TUSER;
    sc_out< sc_lv<1> > video_dst_TLAST;
    sc_out< sc_lv<1> > video_dst_TID;
    sc_out< sc_lv<1> > video_dst_TDEST;
    sc_in< sc_logic > video_src_TVALID;
    sc_out< sc_logic > video_src_TREADY;
    sc_out< sc_logic > video_dst_TVALID;
    sc_in< sc_logic > video_dst_TREADY;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    hls_preprocess(sc_module_name name);
    SC_HAS_PROCESS(hls_preprocess);

    ~hls_preprocess();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    hls_preprocess_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* hls_preprocess_AXILiteS_s_axi_U;
    AXIvideo2Mat* AXIvideo2Mat_U0;
    Downsample* Downsample_U0;
    Convert* Convert_U0;
    Mat2AXIvideo* Mat2AXIvideo_U0;
    fifo_w8_d2_A* src_img_data_stream_s_U;
    fifo_w8_d2_A* src_img_data_stream_1_U;
    fifo_w8_d2_A* src_img_data_stream_2_U;
    fifo_w8_d2_A* src_img_data_stream_3_U;
    fifo_w8_d2_A* dst_img_data_stream_s_U;
    fifo_w8_d2_A* dst_img_data_stream_1_U;
    fifo_w8_d2_A* dst_img_data_stream_2_U;
    fifo_w8_d2_A* dst_img_data_stream_3_U;
    fifo_w8_d2_A* ifm_img_data_stream_s_U;
    fifo_w8_d2_A* ifm_img_data_stream_1_U;
    fifo_w8_d2_A* ifm_img_data_stream_2_U;
    fifo_w8_d2_A* ifm_img_data_stream_3_U;
    start_for_Downsambkb* start_for_Downsambkb_U;
    start_for_Convertcud* start_for_Convertcud_U;
    start_for_Mat2AXIdEe* start_for_Mat2AXIdEe_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_start;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_done;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_continue;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_idle;
    sc_signal< sc_logic > AXIvideo2Mat_U0_ap_ready;
    sc_signal< sc_logic > AXIvideo2Mat_U0_start_out;
    sc_signal< sc_logic > AXIvideo2Mat_U0_start_write;
    sc_signal< sc_logic > AXIvideo2Mat_U0_video_src_TREADY;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_0_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_0_V_write;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_1_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_1_V_write;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_2_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_2_V_write;
    sc_signal< sc_lv<8> > AXIvideo2Mat_U0_img_data_stream_3_V_din;
    sc_signal< sc_logic > AXIvideo2Mat_U0_img_data_stream_3_V_write;
    sc_signal< sc_logic > Downsample_U0_ap_start;
    sc_signal< sc_logic > Downsample_U0_ap_done;
    sc_signal< sc_logic > Downsample_U0_ap_continue;
    sc_signal< sc_logic > Downsample_U0_ap_idle;
    sc_signal< sc_logic > Downsample_U0_ap_ready;
    sc_signal< sc_logic > Downsample_U0_start_out;
    sc_signal< sc_logic > Downsample_U0_start_write;
    sc_signal< sc_logic > Downsample_U0_src_data_stream_0_V_read;
    sc_signal< sc_logic > Downsample_U0_src_data_stream_1_V_read;
    sc_signal< sc_logic > Downsample_U0_src_data_stream_2_V_read;
    sc_signal< sc_logic > Downsample_U0_src_data_stream_3_V_read;
    sc_signal< sc_lv<8> > Downsample_U0_dst_data_stream_0_V_din;
    sc_signal< sc_logic > Downsample_U0_dst_data_stream_0_V_write;
    sc_signal< sc_lv<8> > Downsample_U0_dst_data_stream_1_V_din;
    sc_signal< sc_logic > Downsample_U0_dst_data_stream_1_V_write;
    sc_signal< sc_lv<8> > Downsample_U0_dst_data_stream_2_V_din;
    sc_signal< sc_logic > Downsample_U0_dst_data_stream_2_V_write;
    sc_signal< sc_lv<8> > Downsample_U0_dst_data_stream_3_V_din;
    sc_signal< sc_logic > Downsample_U0_dst_data_stream_3_V_write;
    sc_signal< sc_logic > Convert_U0_ap_start;
    sc_signal< sc_logic > Convert_U0_ap_done;
    sc_signal< sc_logic > Convert_U0_ap_continue;
    sc_signal< sc_logic > Convert_U0_ap_idle;
    sc_signal< sc_logic > Convert_U0_ap_ready;
    sc_signal< sc_logic > Convert_U0_start_out;
    sc_signal< sc_logic > Convert_U0_start_write;
    sc_signal< sc_logic > Convert_U0_src_data_stream_0_V_read;
    sc_signal< sc_logic > Convert_U0_src_data_stream_1_V_read;
    sc_signal< sc_logic > Convert_U0_src_data_stream_2_V_read;
    sc_signal< sc_logic > Convert_U0_src_data_stream_3_V_read;
    sc_signal< sc_lv<8> > Convert_U0_dst_data_stream_0_V_din;
    sc_signal< sc_logic > Convert_U0_dst_data_stream_0_V_write;
    sc_signal< sc_lv<8> > Convert_U0_dst_data_stream_1_V_din;
    sc_signal< sc_logic > Convert_U0_dst_data_stream_1_V_write;
    sc_signal< sc_lv<8> > Convert_U0_dst_data_stream_2_V_din;
    sc_signal< sc_logic > Convert_U0_dst_data_stream_2_V_write;
    sc_signal< sc_lv<8> > Convert_U0_dst_data_stream_3_V_din;
    sc_signal< sc_logic > Convert_U0_dst_data_stream_3_V_write;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_start;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_done;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_continue;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_idle;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_ready;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_0_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_1_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_2_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_3_V_read;
    sc_signal< sc_lv<32> > Mat2AXIvideo_U0_video_dst_TDATA;
    sc_signal< sc_logic > Mat2AXIvideo_U0_video_dst_TVALID;
    sc_signal< sc_lv<4> > Mat2AXIvideo_U0_video_dst_TKEEP;
    sc_signal< sc_lv<4> > Mat2AXIvideo_U0_video_dst_TSTRB;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_video_dst_TUSER;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_video_dst_TLAST;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_video_dst_TID;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_video_dst_TDEST;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > src_img_data_stream_s_full_n;
    sc_signal< sc_lv<8> > src_img_data_stream_s_dout;
    sc_signal< sc_logic > src_img_data_stream_s_empty_n;
    sc_signal< sc_logic > src_img_data_stream_1_full_n;
    sc_signal< sc_lv<8> > src_img_data_stream_1_dout;
    sc_signal< sc_logic > src_img_data_stream_1_empty_n;
    sc_signal< sc_logic > src_img_data_stream_2_full_n;
    sc_signal< sc_lv<8> > src_img_data_stream_2_dout;
    sc_signal< sc_logic > src_img_data_stream_2_empty_n;
    sc_signal< sc_logic > src_img_data_stream_3_full_n;
    sc_signal< sc_lv<8> > src_img_data_stream_3_dout;
    sc_signal< sc_logic > src_img_data_stream_3_empty_n;
    sc_signal< sc_logic > dst_img_data_stream_s_full_n;
    sc_signal< sc_lv<8> > dst_img_data_stream_s_dout;
    sc_signal< sc_logic > dst_img_data_stream_s_empty_n;
    sc_signal< sc_logic > dst_img_data_stream_1_full_n;
    sc_signal< sc_lv<8> > dst_img_data_stream_1_dout;
    sc_signal< sc_logic > dst_img_data_stream_1_empty_n;
    sc_signal< sc_logic > dst_img_data_stream_2_full_n;
    sc_signal< sc_lv<8> > dst_img_data_stream_2_dout;
    sc_signal< sc_logic > dst_img_data_stream_2_empty_n;
    sc_signal< sc_logic > dst_img_data_stream_3_full_n;
    sc_signal< sc_lv<8> > dst_img_data_stream_3_dout;
    sc_signal< sc_logic > dst_img_data_stream_3_empty_n;
    sc_signal< sc_logic > ifm_img_data_stream_s_full_n;
    sc_signal< sc_lv<8> > ifm_img_data_stream_s_dout;
    sc_signal< sc_logic > ifm_img_data_stream_s_empty_n;
    sc_signal< sc_logic > ifm_img_data_stream_1_full_n;
    sc_signal< sc_lv<8> > ifm_img_data_stream_1_dout;
    sc_signal< sc_logic > ifm_img_data_stream_1_empty_n;
    sc_signal< sc_logic > ifm_img_data_stream_2_full_n;
    sc_signal< sc_lv<8> > ifm_img_data_stream_2_dout;
    sc_signal< sc_logic > ifm_img_data_stream_2_empty_n;
    sc_signal< sc_logic > ifm_img_data_stream_3_full_n;
    sc_signal< sc_lv<8> > ifm_img_data_stream_3_dout;
    sc_signal< sc_logic > ifm_img_data_stream_3_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_lv<1> > start_for_Downsample_U0_din;
    sc_signal< sc_logic > start_for_Downsample_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Downsample_U0_dout;
    sc_signal< sc_logic > start_for_Downsample_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Convert_U0_din;
    sc_signal< sc_logic > start_for_Convert_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Convert_U0_dout;
    sc_signal< sc_logic > start_for_Convert_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_U0_din;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Mat2AXIvideo_U0_dout;
    sc_signal< sc_logic > start_for_Mat2AXIvideo_U0_empty_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_full_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_write;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_S_AXI_WSTRB_WIDTH;
    static const int C_S_AXI_ADDR_WIDTH;
    static const sc_logic ap_const_logic_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_AXIvideo2Mat_U0_ap_continue();
    void thread_AXIvideo2Mat_U0_ap_start();
    void thread_Convert_U0_ap_continue();
    void thread_Convert_U0_ap_start();
    void thread_Downsample_U0_ap_continue();
    void thread_Downsample_U0_ap_start();
    void thread_Mat2AXIvideo_U0_ap_continue();
    void thread_Mat2AXIvideo_U0_ap_start();
    void thread_Mat2AXIvideo_U0_start_full_n();
    void thread_Mat2AXIvideo_U0_start_write();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_start_for_Convert_U0_din();
    void thread_start_for_Downsample_U0_din();
    void thread_start_for_Mat2AXIvideo_U0_din();
    void thread_video_dst_TDATA();
    void thread_video_dst_TDEST();
    void thread_video_dst_TID();
    void thread_video_dst_TKEEP();
    void thread_video_dst_TLAST();
    void thread_video_dst_TSTRB();
    void thread_video_dst_TUSER();
    void thread_video_dst_TVALID();
    void thread_video_src_TREADY();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
