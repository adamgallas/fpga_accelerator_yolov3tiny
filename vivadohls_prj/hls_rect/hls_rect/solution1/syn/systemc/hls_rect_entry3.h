// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _hls_rect_entry3_HH_
#define _hls_rect_entry3_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct hls_rect_entry3 : public sc_module {
    // Port declarations 62
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<16> > xleft_s;
    sc_in< sc_lv<16> > xright_s;
    sc_in< sc_lv<16> > ytop_s;
    sc_in< sc_lv<16> > ydown_s;
    sc_in< sc_lv<8> > color1;
    sc_in< sc_lv<8> > color2;
    sc_in< sc_lv<8> > color3;
    sc_in< sc_lv<8> > char1;
    sc_in< sc_lv<8> > char2;
    sc_in< sc_lv<8> > char3;
    sc_in< sc_lv<8> > char4;
    sc_in< sc_lv<8> > char5;
    sc_in< sc_lv<8> > char6;
    sc_out< sc_lv<16> > xleft_out_din;
    sc_in< sc_logic > xleft_out_full_n;
    sc_out< sc_logic > xleft_out_write;
    sc_out< sc_lv<16> > xright_out_din;
    sc_in< sc_logic > xright_out_full_n;
    sc_out< sc_logic > xright_out_write;
    sc_out< sc_lv<16> > ytop_out_din;
    sc_in< sc_logic > ytop_out_full_n;
    sc_out< sc_logic > ytop_out_write;
    sc_out< sc_lv<16> > ydown_out_din;
    sc_in< sc_logic > ydown_out_full_n;
    sc_out< sc_logic > ydown_out_write;
    sc_out< sc_lv<8> > color1_out_din;
    sc_in< sc_logic > color1_out_full_n;
    sc_out< sc_logic > color1_out_write;
    sc_out< sc_lv<8> > color2_out_din;
    sc_in< sc_logic > color2_out_full_n;
    sc_out< sc_logic > color2_out_write;
    sc_out< sc_lv<8> > color3_out_din;
    sc_in< sc_logic > color3_out_full_n;
    sc_out< sc_logic > color3_out_write;
    sc_out< sc_lv<8> > char1_out_din;
    sc_in< sc_logic > char1_out_full_n;
    sc_out< sc_logic > char1_out_write;
    sc_out< sc_lv<8> > char2_out_din;
    sc_in< sc_logic > char2_out_full_n;
    sc_out< sc_logic > char2_out_write;
    sc_out< sc_lv<8> > char3_out_din;
    sc_in< sc_logic > char3_out_full_n;
    sc_out< sc_logic > char3_out_write;
    sc_out< sc_lv<8> > char4_out_din;
    sc_in< sc_logic > char4_out_full_n;
    sc_out< sc_logic > char4_out_write;
    sc_out< sc_lv<8> > char5_out_din;
    sc_in< sc_logic > char5_out_full_n;
    sc_out< sc_logic > char5_out_write;
    sc_out< sc_lv<8> > char6_out_din;
    sc_in< sc_logic > char6_out_full_n;
    sc_out< sc_logic > char6_out_write;


    // Module declarations
    hls_rect_entry3(sc_module_name name);
    SC_HAS_PROCESS(hls_rect_entry3);

    ~hls_rect_entry3();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > xleft_out_blk_n;
    sc_signal< sc_logic > xright_out_blk_n;
    sc_signal< sc_logic > ytop_out_blk_n;
    sc_signal< sc_logic > ydown_out_blk_n;
    sc_signal< sc_logic > color1_out_blk_n;
    sc_signal< sc_logic > color2_out_blk_n;
    sc_signal< sc_logic > color3_out_blk_n;
    sc_signal< sc_logic > char1_out_blk_n;
    sc_signal< sc_logic > char2_out_blk_n;
    sc_signal< sc_logic > char3_out_blk_n;
    sc_signal< sc_logic > char4_out_blk_n;
    sc_signal< sc_logic > char5_out_blk_n;
    sc_signal< sc_logic > char6_out_blk_n;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_char1_out_blk_n();
    void thread_char1_out_din();
    void thread_char1_out_write();
    void thread_char2_out_blk_n();
    void thread_char2_out_din();
    void thread_char2_out_write();
    void thread_char3_out_blk_n();
    void thread_char3_out_din();
    void thread_char3_out_write();
    void thread_char4_out_blk_n();
    void thread_char4_out_din();
    void thread_char4_out_write();
    void thread_char5_out_blk_n();
    void thread_char5_out_din();
    void thread_char5_out_write();
    void thread_char6_out_blk_n();
    void thread_char6_out_din();
    void thread_char6_out_write();
    void thread_color1_out_blk_n();
    void thread_color1_out_din();
    void thread_color1_out_write();
    void thread_color2_out_blk_n();
    void thread_color2_out_din();
    void thread_color2_out_write();
    void thread_color3_out_blk_n();
    void thread_color3_out_din();
    void thread_color3_out_write();
    void thread_internal_ap_ready();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_xleft_out_blk_n();
    void thread_xleft_out_din();
    void thread_xleft_out_write();
    void thread_xright_out_blk_n();
    void thread_xright_out_din();
    void thread_xright_out_write();
    void thread_ydown_out_blk_n();
    void thread_ydown_out_din();
    void thread_ydown_out_write();
    void thread_ytop_out_blk_n();
    void thread_ytop_out_din();
    void thread_ytop_out_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
