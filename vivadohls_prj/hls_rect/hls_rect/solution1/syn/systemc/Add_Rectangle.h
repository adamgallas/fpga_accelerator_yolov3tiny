// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Add_Rectangle_HH_
#define _Add_Rectangle_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Add_Rectangle : public sc_module {
    // Port declarations 67
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > src_data_stream_0_V_dout;
    sc_in< sc_logic > src_data_stream_0_V_empty_n;
    sc_out< sc_logic > src_data_stream_0_V_read;
    sc_in< sc_lv<8> > src_data_stream_1_V_dout;
    sc_in< sc_logic > src_data_stream_1_V_empty_n;
    sc_out< sc_logic > src_data_stream_1_V_read;
    sc_in< sc_lv<8> > src_data_stream_2_V_dout;
    sc_in< sc_logic > src_data_stream_2_V_empty_n;
    sc_out< sc_logic > src_data_stream_2_V_read;
    sc_in< sc_lv<8> > src_data_stream_3_V_dout;
    sc_in< sc_logic > src_data_stream_3_V_empty_n;
    sc_out< sc_logic > src_data_stream_3_V_read;
    sc_out< sc_lv<8> > dst_data_stream_0_V_din;
    sc_in< sc_logic > dst_data_stream_0_V_full_n;
    sc_out< sc_logic > dst_data_stream_0_V_write;
    sc_out< sc_lv<8> > dst_data_stream_1_V_din;
    sc_in< sc_logic > dst_data_stream_1_V_full_n;
    sc_out< sc_logic > dst_data_stream_1_V_write;
    sc_out< sc_lv<8> > dst_data_stream_2_V_din;
    sc_in< sc_logic > dst_data_stream_2_V_full_n;
    sc_out< sc_logic > dst_data_stream_2_V_write;
    sc_out< sc_lv<8> > dst_data_stream_3_V_din;
    sc_in< sc_logic > dst_data_stream_3_V_full_n;
    sc_out< sc_logic > dst_data_stream_3_V_write;
    sc_in< sc_lv<16> > xleft_dout;
    sc_in< sc_logic > xleft_empty_n;
    sc_out< sc_logic > xleft_read;
    sc_in< sc_lv<16> > xright_dout;
    sc_in< sc_logic > xright_empty_n;
    sc_out< sc_logic > xright_read;
    sc_in< sc_lv<16> > ytop_dout;
    sc_in< sc_logic > ytop_empty_n;
    sc_out< sc_logic > ytop_read;
    sc_in< sc_lv<16> > ydown_dout;
    sc_in< sc_logic > ydown_empty_n;
    sc_out< sc_logic > ydown_read;
    sc_in< sc_lv<8> > color1_dout;
    sc_in< sc_logic > color1_empty_n;
    sc_out< sc_logic > color1_read;
    sc_in< sc_lv<8> > color2_dout;
    sc_in< sc_logic > color2_empty_n;
    sc_out< sc_logic > color2_read;
    sc_in< sc_lv<8> > color3_dout;
    sc_in< sc_logic > color3_empty_n;
    sc_out< sc_logic > color3_read;
    sc_out< sc_lv<16> > xleft_out_din;
    sc_in< sc_logic > xleft_out_full_n;
    sc_out< sc_logic > xleft_out_write;
    sc_out< sc_lv<16> > ytop_out_din;
    sc_in< sc_logic > ytop_out_full_n;
    sc_out< sc_logic > ytop_out_write;
    sc_out< sc_lv<8> > color1_out_din;
    sc_in< sc_logic > color1_out_full_n;
    sc_out< sc_logic > color1_out_write;
    sc_out< sc_lv<8> > color2_out_din;
    sc_in< sc_logic > color2_out_full_n;
    sc_out< sc_logic > color2_out_write;
    sc_out< sc_lv<8> > color3_out_din;
    sc_in< sc_logic > color3_out_full_n;
    sc_out< sc_logic > color3_out_write;


    // Module declarations
    Add_Rectangle(sc_module_name name);
    SC_HAS_PROCESS(Add_Rectangle);

    ~Add_Rectangle();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > src_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln70_reg_799;
    sc_signal< sc_logic > src_data_stream_1_V_blk_n;
    sc_signal< sc_logic > src_data_stream_2_V_blk_n;
    sc_signal< sc_logic > src_data_stream_3_V_blk_n;
    sc_signal< sc_logic > dst_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<1> > icmp_ln70_reg_799_pp0_iter1_reg;
    sc_signal< sc_logic > dst_data_stream_1_V_blk_n;
    sc_signal< sc_logic > dst_data_stream_2_V_blk_n;
    sc_signal< sc_logic > dst_data_stream_3_V_blk_n;
    sc_signal< sc_logic > xleft_blk_n;
    sc_signal< sc_logic > xright_blk_n;
    sc_signal< sc_logic > ytop_blk_n;
    sc_signal< sc_logic > ydown_blk_n;
    sc_signal< sc_logic > color1_blk_n;
    sc_signal< sc_logic > color2_blk_n;
    sc_signal< sc_logic > color3_blk_n;
    sc_signal< sc_logic > xleft_out_blk_n;
    sc_signal< sc_logic > ytop_out_blk_n;
    sc_signal< sc_logic > color1_out_blk_n;
    sc_signal< sc_logic > color2_out_blk_n;
    sc_signal< sc_logic > color3_out_blk_n;
    sc_signal< sc_lv<11> > j_0_i_reg_469;
    sc_signal< sc_lv<16> > xleft_read_reg_719;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<16> > xright_read_reg_724;
    sc_signal< sc_lv<16> > ytop_read_reg_730;
    sc_signal< sc_lv<16> > ydown_read_reg_735;
    sc_signal< sc_lv<8> > pix1_val_0_2_reg_740;
    sc_signal< sc_lv<8> > pix1_val_1_2_reg_745;
    sc_signal< sc_lv<8> > pix1_val_2_2_reg_750;
    sc_signal< sc_lv<17> > add_ln74_fu_484_p2;
    sc_signal< sc_lv<17> > add_ln74_reg_755;
    sc_signal< sc_lv<17> > add_ln74_1_fu_494_p2;
    sc_signal< sc_lv<17> > add_ln74_1_reg_760;
    sc_signal< sc_lv<17> > add_ln74_2_fu_504_p2;
    sc_signal< sc_lv<17> > add_ln74_2_reg_765;
    sc_signal< sc_lv<17> > add_ln74_3_fu_514_p2;
    sc_signal< sc_lv<17> > add_ln74_3_reg_770;
    sc_signal< sc_lv<1> > icmp_ln68_fu_524_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > i_fu_530_p2;
    sc_signal< sc_lv<10> > i_reg_779;
    sc_signal< sc_lv<1> > or_ln74_fu_560_p2;
    sc_signal< sc_lv<1> > or_ln74_reg_784;
    sc_signal< sc_lv<1> > and_ln74_fu_578_p2;
    sc_signal< sc_lv<1> > and_ln74_reg_789;
    sc_signal< sc_lv<1> > xor_ln74_fu_584_p2;
    sc_signal< sc_lv<1> > xor_ln74_reg_794;
    sc_signal< sc_lv<1> > icmp_ln70_fu_594_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<11> > j_fu_600_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > and_ln74_1_fu_658_p2;
    sc_signal< sc_lv<1> > and_ln74_1_reg_808;
    sc_signal< sc_lv<1> > and_ln74_4_fu_674_p2;
    sc_signal< sc_lv<1> > and_ln74_4_reg_815;
    sc_signal< sc_lv<8> > tmp_9_reg_822;
    sc_signal< sc_lv<8> > pix1_val_0_fu_686_p3;
    sc_signal< sc_lv<8> > pix1_val_0_reg_827;
    sc_signal< sc_lv<8> > pix1_val_1_fu_699_p3;
    sc_signal< sc_lv<8> > pix1_val_1_reg_832;
    sc_signal< sc_lv<8> > pix1_val_2_fu_712_p3;
    sc_signal< sc_lv<8> > pix1_val_2_reg_837;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_lv<10> > i_0_i_reg_458;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<17> > zext_ln74_fu_480_p1;
    sc_signal< sc_lv<17> > zext_ln74_1_fu_490_p1;
    sc_signal< sc_lv<17> > zext_ln74_2_fu_500_p1;
    sc_signal< sc_lv<17> > zext_ln74_3_fu_510_p1;
    sc_signal< sc_lv<16> > zext_ln68_fu_520_p1;
    sc_signal< sc_lv<17> > zext_ln74_4_fu_541_p1;
    sc_signal< sc_lv<1> > icmp_ln74_fu_536_p2;
    sc_signal< sc_lv<1> > icmp_ln74_1_fu_545_p2;
    sc_signal< sc_lv<1> > icmp_ln74_3_fu_555_p2;
    sc_signal< sc_lv<1> > icmp_ln74_2_fu_550_p2;
    sc_signal< sc_lv<1> > or_ln74_1_fu_566_p2;
    sc_signal< sc_lv<1> > or_ln74_2_fu_572_p2;
    sc_signal< sc_lv<16> > zext_ln70_fu_590_p1;
    sc_signal< sc_lv<1> > icmp_ln74_5_fu_611_p2;
    sc_signal< sc_lv<1> > or_ln74_3_fu_616_p2;
    sc_signal< sc_lv<1> > icmp_ln74_4_fu_606_p2;
    sc_signal< sc_lv<17> > zext_ln74_5_fu_627_p1;
    sc_signal< sc_lv<1> > icmp_ln74_6_fu_631_p2;
    sc_signal< sc_lv<1> > icmp_ln74_7_fu_642_p2;
    sc_signal< sc_lv<1> > icmp_ln74_8_fu_647_p2;
    sc_signal< sc_lv<1> > or_ln74_4_fu_621_p2;
    sc_signal< sc_lv<1> > or_ln74_5_fu_636_p2;
    sc_signal< sc_lv<1> > or_ln74_6_fu_652_p2;
    sc_signal< sc_lv<1> > and_ln74_3_fu_668_p2;
    sc_signal< sc_lv<1> > and_ln74_2_fu_663_p2;
    sc_signal< sc_lv<8> > pix1_val_0_3_fu_680_p3;
    sc_signal< sc_lv<8> > pix1_val_1_3_fu_693_p3;
    sc_signal< sc_lv<8> > pix1_val_2_3_fu_706_p3;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
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
    static const sc_lv<17> ap_const_lv17_4;
    static const sc_lv<10> ap_const_lv10_2D0;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<11> ap_const_lv11_500;
    static const sc_lv<11> ap_const_lv11_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln74_1_fu_494_p2();
    void thread_add_ln74_2_fu_504_p2();
    void thread_add_ln74_3_fu_514_p2();
    void thread_add_ln74_fu_484_p2();
    void thread_and_ln74_1_fu_658_p2();
    void thread_and_ln74_2_fu_663_p2();
    void thread_and_ln74_3_fu_668_p2();
    void thread_and_ln74_4_fu_674_p2();
    void thread_and_ln74_fu_578_p2();
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
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_color1_blk_n();
    void thread_color1_out_blk_n();
    void thread_color1_out_din();
    void thread_color1_out_write();
    void thread_color1_read();
    void thread_color2_blk_n();
    void thread_color2_out_blk_n();
    void thread_color2_out_din();
    void thread_color2_out_write();
    void thread_color2_read();
    void thread_color3_blk_n();
    void thread_color3_out_blk_n();
    void thread_color3_out_din();
    void thread_color3_out_write();
    void thread_color3_read();
    void thread_dst_data_stream_0_V_blk_n();
    void thread_dst_data_stream_0_V_din();
    void thread_dst_data_stream_0_V_write();
    void thread_dst_data_stream_1_V_blk_n();
    void thread_dst_data_stream_1_V_din();
    void thread_dst_data_stream_1_V_write();
    void thread_dst_data_stream_2_V_blk_n();
    void thread_dst_data_stream_2_V_din();
    void thread_dst_data_stream_2_V_write();
    void thread_dst_data_stream_3_V_blk_n();
    void thread_dst_data_stream_3_V_din();
    void thread_dst_data_stream_3_V_write();
    void thread_i_fu_530_p2();
    void thread_icmp_ln68_fu_524_p2();
    void thread_icmp_ln70_fu_594_p2();
    void thread_icmp_ln74_1_fu_545_p2();
    void thread_icmp_ln74_2_fu_550_p2();
    void thread_icmp_ln74_3_fu_555_p2();
    void thread_icmp_ln74_4_fu_606_p2();
    void thread_icmp_ln74_5_fu_611_p2();
    void thread_icmp_ln74_6_fu_631_p2();
    void thread_icmp_ln74_7_fu_642_p2();
    void thread_icmp_ln74_8_fu_647_p2();
    void thread_icmp_ln74_fu_536_p2();
    void thread_j_fu_600_p2();
    void thread_or_ln74_1_fu_566_p2();
    void thread_or_ln74_2_fu_572_p2();
    void thread_or_ln74_3_fu_616_p2();
    void thread_or_ln74_4_fu_621_p2();
    void thread_or_ln74_5_fu_636_p2();
    void thread_or_ln74_6_fu_652_p2();
    void thread_or_ln74_fu_560_p2();
    void thread_pix1_val_0_3_fu_680_p3();
    void thread_pix1_val_0_fu_686_p3();
    void thread_pix1_val_1_3_fu_693_p3();
    void thread_pix1_val_1_fu_699_p3();
    void thread_pix1_val_2_3_fu_706_p3();
    void thread_pix1_val_2_fu_712_p3();
    void thread_src_data_stream_0_V_blk_n();
    void thread_src_data_stream_0_V_read();
    void thread_src_data_stream_1_V_blk_n();
    void thread_src_data_stream_1_V_read();
    void thread_src_data_stream_2_V_blk_n();
    void thread_src_data_stream_2_V_read();
    void thread_src_data_stream_3_V_blk_n();
    void thread_src_data_stream_3_V_read();
    void thread_xleft_blk_n();
    void thread_xleft_out_blk_n();
    void thread_xleft_out_din();
    void thread_xleft_out_write();
    void thread_xleft_read();
    void thread_xor_ln74_fu_584_p2();
    void thread_xright_blk_n();
    void thread_xright_read();
    void thread_ydown_blk_n();
    void thread_ydown_read();
    void thread_ytop_blk_n();
    void thread_ytop_out_blk_n();
    void thread_ytop_out_din();
    void thread_ytop_out_write();
    void thread_ytop_read();
    void thread_zext_ln68_fu_520_p1();
    void thread_zext_ln70_fu_590_p1();
    void thread_zext_ln74_1_fu_490_p1();
    void thread_zext_ln74_2_fu_500_p1();
    void thread_zext_ln74_3_fu_510_p1();
    void thread_zext_ln74_4_fu_541_p1();
    void thread_zext_ln74_5_fu_627_p1();
    void thread_zext_ln74_fu_480_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
