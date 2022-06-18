// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Mat2AXIvideo_HH_
#define _Mat2AXIvideo_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Mat2AXIvideo : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > img_data_stream_0_V_dout;
    sc_in< sc_logic > img_data_stream_0_V_empty_n;
    sc_out< sc_logic > img_data_stream_0_V_read;
    sc_in< sc_lv<8> > img_data_stream_1_V_dout;
    sc_in< sc_logic > img_data_stream_1_V_empty_n;
    sc_out< sc_logic > img_data_stream_1_V_read;
    sc_in< sc_lv<8> > img_data_stream_2_V_dout;
    sc_in< sc_logic > img_data_stream_2_V_empty_n;
    sc_out< sc_logic > img_data_stream_2_V_read;
    sc_in< sc_lv<8> > img_data_stream_3_V_dout;
    sc_in< sc_logic > img_data_stream_3_V_empty_n;
    sc_out< sc_logic > img_data_stream_3_V_read;
    sc_out< sc_lv<32> > video_dst_TDATA;
    sc_out< sc_logic > video_dst_TVALID;
    sc_in< sc_logic > video_dst_TREADY;
    sc_out< sc_lv<4> > video_dst_TKEEP;
    sc_out< sc_lv<4> > video_dst_TSTRB;
    sc_out< sc_lv<1> > video_dst_TUSER;
    sc_out< sc_lv<1> > video_dst_TLAST;
    sc_out< sc_lv<1> > video_dst_TID;
    sc_out< sc_lv<1> > video_dst_TDEST;
    sc_signal< sc_lv<1> > ap_var_for_const2;
    sc_signal< sc_lv<4> > ap_var_for_const0;
    sc_signal< sc_lv<4> > ap_var_for_const1;


    // Module declarations
    Mat2AXIvideo(sc_module_name name);
    SC_HAS_PROCESS(Mat2AXIvideo);

    ~Mat2AXIvideo();

    sc_trace_file* mVcdFile;

    regslice_both<32>* regslice_both_AXI_video_strm_V_data_V_U;
    regslice_both<4>* regslice_both_AXI_video_strm_V_keep_V_U;
    regslice_both<4>* regslice_both_AXI_video_strm_V_strb_V_U;
    regslice_both<1>* regslice_both_AXI_video_strm_V_user_V_U;
    regslice_both<1>* regslice_both_AXI_video_strm_V_last_V_U;
    regslice_both<1>* regslice_both_AXI_video_strm_V_id_V_U;
    regslice_both<1>* regslice_both_AXI_video_strm_V_dest_V_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > img_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln126_reg_292;
    sc_signal< sc_logic > img_data_stream_1_V_blk_n;
    sc_signal< sc_logic > img_data_stream_2_V_blk_n;
    sc_signal< sc_logic > img_data_stream_3_V_blk_n;
    sc_signal< sc_logic > video_dst_TDATA_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > icmp_ln126_reg_292_pp0_iter1_reg;
    sc_signal< sc_lv<11> > t_V_1_reg_208;
    sc_signal< sc_lv<1> > icmp_ln125_fu_224_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_data_V_U_apdone_blk;
    sc_signal< sc_lv<10> > i_V_fu_230_p2;
    sc_signal< sc_lv<10> > i_V_reg_287;
    sc_signal< sc_lv<1> > icmp_ln126_fu_236_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_io;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_io;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<11> > j_V_fu_242_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > axi_last_V_fu_248_p2;
    sc_signal< sc_lv<1> > axi_last_V_reg_301;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<10> > t_V_reg_197;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<1> > tmp_user_V_fu_140;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<32> > video_dst_TDATA_int;
    sc_signal< sc_logic > video_dst_TVALID_int;
    sc_signal< sc_logic > video_dst_TREADY_int;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_data_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_keep_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_keep_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_keep_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_strb_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_strb_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_strb_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_user_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_user_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_user_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_last_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_last_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_last_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_id_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_id_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_id_V_U_vld_out;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_dest_V_U_apdone_blk;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_dest_V_U_ack_in_dummy;
    sc_signal< sc_logic > regslice_both_AXI_video_strm_V_dest_V_U_vld_out;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<10> ap_const_lv10_2D0;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<11> ap_const_lv11_500;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_4FF;
    // Thread declarations
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state6();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_io();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_io();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_axi_last_V_fu_248_p2();
    void thread_i_V_fu_230_p2();
    void thread_icmp_ln125_fu_224_p2();
    void thread_icmp_ln126_fu_236_p2();
    void thread_img_data_stream_0_V_blk_n();
    void thread_img_data_stream_0_V_read();
    void thread_img_data_stream_1_V_blk_n();
    void thread_img_data_stream_1_V_read();
    void thread_img_data_stream_2_V_blk_n();
    void thread_img_data_stream_2_V_read();
    void thread_img_data_stream_3_V_blk_n();
    void thread_img_data_stream_3_V_read();
    void thread_j_V_fu_242_p2();
    void thread_video_dst_TDATA_blk_n();
    void thread_video_dst_TDATA_int();
    void thread_video_dst_TVALID();
    void thread_video_dst_TVALID_int();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
