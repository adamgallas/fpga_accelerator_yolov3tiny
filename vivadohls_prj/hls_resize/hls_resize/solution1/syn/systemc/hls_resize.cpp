// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "hls_resize.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const int hls_resize::C_S_AXI_DATA_WIDTH = "100000";
const int hls_resize::C_S_AXI_WSTRB_WIDTH = "100";
const int hls_resize::C_S_AXI_ADDR_WIDTH = "100000";
const sc_logic hls_resize::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<32> hls_resize::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<4> hls_resize::ap_const_lv4_0 = "0000";
const sc_lv<1> hls_resize::ap_const_lv1_0 = "0";
const sc_logic hls_resize::ap_const_logic_0 = sc_dt::Log_0;

hls_resize::hls_resize(sc_module_name name) : sc_module(name), mVcdFile(0) {
    hls_resize_AXILiteS_s_axi_U = new hls_resize_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>("hls_resize_AXILiteS_s_axi_U");
    hls_resize_AXILiteS_s_axi_U->AWVALID(s_axi_AXILiteS_AWVALID);
    hls_resize_AXILiteS_s_axi_U->AWREADY(s_axi_AXILiteS_AWREADY);
    hls_resize_AXILiteS_s_axi_U->AWADDR(s_axi_AXILiteS_AWADDR);
    hls_resize_AXILiteS_s_axi_U->WVALID(s_axi_AXILiteS_WVALID);
    hls_resize_AXILiteS_s_axi_U->WREADY(s_axi_AXILiteS_WREADY);
    hls_resize_AXILiteS_s_axi_U->WDATA(s_axi_AXILiteS_WDATA);
    hls_resize_AXILiteS_s_axi_U->WSTRB(s_axi_AXILiteS_WSTRB);
    hls_resize_AXILiteS_s_axi_U->ARVALID(s_axi_AXILiteS_ARVALID);
    hls_resize_AXILiteS_s_axi_U->ARREADY(s_axi_AXILiteS_ARREADY);
    hls_resize_AXILiteS_s_axi_U->ARADDR(s_axi_AXILiteS_ARADDR);
    hls_resize_AXILiteS_s_axi_U->RVALID(s_axi_AXILiteS_RVALID);
    hls_resize_AXILiteS_s_axi_U->RREADY(s_axi_AXILiteS_RREADY);
    hls_resize_AXILiteS_s_axi_U->RDATA(s_axi_AXILiteS_RDATA);
    hls_resize_AXILiteS_s_axi_U->RRESP(s_axi_AXILiteS_RRESP);
    hls_resize_AXILiteS_s_axi_U->BVALID(s_axi_AXILiteS_BVALID);
    hls_resize_AXILiteS_s_axi_U->BREADY(s_axi_AXILiteS_BREADY);
    hls_resize_AXILiteS_s_axi_U->BRESP(s_axi_AXILiteS_BRESP);
    hls_resize_AXILiteS_s_axi_U->ACLK(ap_clk);
    hls_resize_AXILiteS_s_axi_U->ARESET(ap_rst_n_inv);
    hls_resize_AXILiteS_s_axi_U->ACLK_EN(ap_var_for_const0);
    hls_resize_AXILiteS_s_axi_U->ap_start(ap_start);
    hls_resize_AXILiteS_s_axi_U->interrupt(interrupt);
    hls_resize_AXILiteS_s_axi_U->ap_ready(ap_ready);
    hls_resize_AXILiteS_s_axi_U->ap_done(ap_done);
    hls_resize_AXILiteS_s_axi_U->ap_idle(ap_idle);
    AXIvideo2Mat_U0 = new AXIvideo2Mat("AXIvideo2Mat_U0");
    AXIvideo2Mat_U0->ap_clk(ap_clk);
    AXIvideo2Mat_U0->ap_rst(ap_rst_n_inv);
    AXIvideo2Mat_U0->ap_start(AXIvideo2Mat_U0_ap_start);
    AXIvideo2Mat_U0->start_full_n(start_for_Downsample_U0_full_n);
    AXIvideo2Mat_U0->ap_done(AXIvideo2Mat_U0_ap_done);
    AXIvideo2Mat_U0->ap_continue(AXIvideo2Mat_U0_ap_continue);
    AXIvideo2Mat_U0->ap_idle(AXIvideo2Mat_U0_ap_idle);
    AXIvideo2Mat_U0->ap_ready(AXIvideo2Mat_U0_ap_ready);
    AXIvideo2Mat_U0->start_out(AXIvideo2Mat_U0_start_out);
    AXIvideo2Mat_U0->start_write(AXIvideo2Mat_U0_start_write);
    AXIvideo2Mat_U0->video_src_TDATA(video_src_TDATA);
    AXIvideo2Mat_U0->video_src_TVALID(video_src_TVALID);
    AXIvideo2Mat_U0->video_src_TREADY(AXIvideo2Mat_U0_video_src_TREADY);
    AXIvideo2Mat_U0->video_src_TKEEP(video_src_TKEEP);
    AXIvideo2Mat_U0->video_src_TSTRB(video_src_TSTRB);
    AXIvideo2Mat_U0->video_src_TUSER(video_src_TUSER);
    AXIvideo2Mat_U0->video_src_TLAST(video_src_TLAST);
    AXIvideo2Mat_U0->video_src_TID(video_src_TID);
    AXIvideo2Mat_U0->video_src_TDEST(video_src_TDEST);
    AXIvideo2Mat_U0->img_data_stream_0_V_din(AXIvideo2Mat_U0_img_data_stream_0_V_din);
    AXIvideo2Mat_U0->img_data_stream_0_V_full_n(src_img_data_stream_s_full_n);
    AXIvideo2Mat_U0->img_data_stream_0_V_write(AXIvideo2Mat_U0_img_data_stream_0_V_write);
    AXIvideo2Mat_U0->img_data_stream_1_V_din(AXIvideo2Mat_U0_img_data_stream_1_V_din);
    AXIvideo2Mat_U0->img_data_stream_1_V_full_n(src_img_data_stream_1_full_n);
    AXIvideo2Mat_U0->img_data_stream_1_V_write(AXIvideo2Mat_U0_img_data_stream_1_V_write);
    AXIvideo2Mat_U0->img_data_stream_2_V_din(AXIvideo2Mat_U0_img_data_stream_2_V_din);
    AXIvideo2Mat_U0->img_data_stream_2_V_full_n(src_img_data_stream_2_full_n);
    AXIvideo2Mat_U0->img_data_stream_2_V_write(AXIvideo2Mat_U0_img_data_stream_2_V_write);
    AXIvideo2Mat_U0->img_data_stream_3_V_din(AXIvideo2Mat_U0_img_data_stream_3_V_din);
    AXIvideo2Mat_U0->img_data_stream_3_V_full_n(src_img_data_stream_3_full_n);
    AXIvideo2Mat_U0->img_data_stream_3_V_write(AXIvideo2Mat_U0_img_data_stream_3_V_write);
    Downsample_U0 = new Downsample("Downsample_U0");
    Downsample_U0->ap_clk(ap_clk);
    Downsample_U0->ap_rst(ap_rst_n_inv);
    Downsample_U0->ap_start(Downsample_U0_ap_start);
    Downsample_U0->start_full_n(start_for_Mat2AXIvideo_U0_full_n);
    Downsample_U0->ap_done(Downsample_U0_ap_done);
    Downsample_U0->ap_continue(Downsample_U0_ap_continue);
    Downsample_U0->ap_idle(Downsample_U0_ap_idle);
    Downsample_U0->ap_ready(Downsample_U0_ap_ready);
    Downsample_U0->start_out(Downsample_U0_start_out);
    Downsample_U0->start_write(Downsample_U0_start_write);
    Downsample_U0->src_data_stream_0_V_dout(src_img_data_stream_s_dout);
    Downsample_U0->src_data_stream_0_V_empty_n(src_img_data_stream_s_empty_n);
    Downsample_U0->src_data_stream_0_V_read(Downsample_U0_src_data_stream_0_V_read);
    Downsample_U0->src_data_stream_1_V_dout(src_img_data_stream_1_dout);
    Downsample_U0->src_data_stream_1_V_empty_n(src_img_data_stream_1_empty_n);
    Downsample_U0->src_data_stream_1_V_read(Downsample_U0_src_data_stream_1_V_read);
    Downsample_U0->src_data_stream_2_V_dout(src_img_data_stream_2_dout);
    Downsample_U0->src_data_stream_2_V_empty_n(src_img_data_stream_2_empty_n);
    Downsample_U0->src_data_stream_2_V_read(Downsample_U0_src_data_stream_2_V_read);
    Downsample_U0->src_data_stream_3_V_dout(src_img_data_stream_3_dout);
    Downsample_U0->src_data_stream_3_V_empty_n(src_img_data_stream_3_empty_n);
    Downsample_U0->src_data_stream_3_V_read(Downsample_U0_src_data_stream_3_V_read);
    Downsample_U0->dst_data_stream_0_V_din(Downsample_U0_dst_data_stream_0_V_din);
    Downsample_U0->dst_data_stream_0_V_full_n(dst_img_data_stream_s_full_n);
    Downsample_U0->dst_data_stream_0_V_write(Downsample_U0_dst_data_stream_0_V_write);
    Downsample_U0->dst_data_stream_1_V_din(Downsample_U0_dst_data_stream_1_V_din);
    Downsample_U0->dst_data_stream_1_V_full_n(dst_img_data_stream_1_full_n);
    Downsample_U0->dst_data_stream_1_V_write(Downsample_U0_dst_data_stream_1_V_write);
    Downsample_U0->dst_data_stream_2_V_din(Downsample_U0_dst_data_stream_2_V_din);
    Downsample_U0->dst_data_stream_2_V_full_n(dst_img_data_stream_2_full_n);
    Downsample_U0->dst_data_stream_2_V_write(Downsample_U0_dst_data_stream_2_V_write);
    Downsample_U0->dst_data_stream_3_V_din(Downsample_U0_dst_data_stream_3_V_din);
    Downsample_U0->dst_data_stream_3_V_full_n(dst_img_data_stream_3_full_n);
    Downsample_U0->dst_data_stream_3_V_write(Downsample_U0_dst_data_stream_3_V_write);
    Mat2AXIvideo_U0 = new Mat2AXIvideo("Mat2AXIvideo_U0");
    Mat2AXIvideo_U0->ap_clk(ap_clk);
    Mat2AXIvideo_U0->ap_rst(ap_rst_n_inv);
    Mat2AXIvideo_U0->ap_start(Mat2AXIvideo_U0_ap_start);
    Mat2AXIvideo_U0->ap_done(Mat2AXIvideo_U0_ap_done);
    Mat2AXIvideo_U0->ap_continue(Mat2AXIvideo_U0_ap_continue);
    Mat2AXIvideo_U0->ap_idle(Mat2AXIvideo_U0_ap_idle);
    Mat2AXIvideo_U0->ap_ready(Mat2AXIvideo_U0_ap_ready);
    Mat2AXIvideo_U0->img_data_stream_0_V_dout(dst_img_data_stream_s_dout);
    Mat2AXIvideo_U0->img_data_stream_0_V_empty_n(dst_img_data_stream_s_empty_n);
    Mat2AXIvideo_U0->img_data_stream_0_V_read(Mat2AXIvideo_U0_img_data_stream_0_V_read);
    Mat2AXIvideo_U0->img_data_stream_1_V_dout(dst_img_data_stream_1_dout);
    Mat2AXIvideo_U0->img_data_stream_1_V_empty_n(dst_img_data_stream_1_empty_n);
    Mat2AXIvideo_U0->img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read);
    Mat2AXIvideo_U0->img_data_stream_2_V_dout(dst_img_data_stream_2_dout);
    Mat2AXIvideo_U0->img_data_stream_2_V_empty_n(dst_img_data_stream_2_empty_n);
    Mat2AXIvideo_U0->img_data_stream_2_V_read(Mat2AXIvideo_U0_img_data_stream_2_V_read);
    Mat2AXIvideo_U0->img_data_stream_3_V_dout(dst_img_data_stream_3_dout);
    Mat2AXIvideo_U0->img_data_stream_3_V_empty_n(dst_img_data_stream_3_empty_n);
    Mat2AXIvideo_U0->img_data_stream_3_V_read(Mat2AXIvideo_U0_img_data_stream_3_V_read);
    Mat2AXIvideo_U0->video_dst_TDATA(Mat2AXIvideo_U0_video_dst_TDATA);
    Mat2AXIvideo_U0->video_dst_TVALID(Mat2AXIvideo_U0_video_dst_TVALID);
    Mat2AXIvideo_U0->video_dst_TREADY(video_dst_TREADY);
    Mat2AXIvideo_U0->video_dst_TKEEP(Mat2AXIvideo_U0_video_dst_TKEEP);
    Mat2AXIvideo_U0->video_dst_TSTRB(Mat2AXIvideo_U0_video_dst_TSTRB);
    Mat2AXIvideo_U0->video_dst_TUSER(Mat2AXIvideo_U0_video_dst_TUSER);
    Mat2AXIvideo_U0->video_dst_TLAST(Mat2AXIvideo_U0_video_dst_TLAST);
    Mat2AXIvideo_U0->video_dst_TID(Mat2AXIvideo_U0_video_dst_TID);
    Mat2AXIvideo_U0->video_dst_TDEST(Mat2AXIvideo_U0_video_dst_TDEST);
    src_img_data_stream_s_U = new fifo_w8_d2_A("src_img_data_stream_s_U");
    src_img_data_stream_s_U->clk(ap_clk);
    src_img_data_stream_s_U->reset(ap_rst_n_inv);
    src_img_data_stream_s_U->if_read_ce(ap_var_for_const0);
    src_img_data_stream_s_U->if_write_ce(ap_var_for_const0);
    src_img_data_stream_s_U->if_din(AXIvideo2Mat_U0_img_data_stream_0_V_din);
    src_img_data_stream_s_U->if_full_n(src_img_data_stream_s_full_n);
    src_img_data_stream_s_U->if_write(AXIvideo2Mat_U0_img_data_stream_0_V_write);
    src_img_data_stream_s_U->if_dout(src_img_data_stream_s_dout);
    src_img_data_stream_s_U->if_empty_n(src_img_data_stream_s_empty_n);
    src_img_data_stream_s_U->if_read(Downsample_U0_src_data_stream_0_V_read);
    src_img_data_stream_1_U = new fifo_w8_d2_A("src_img_data_stream_1_U");
    src_img_data_stream_1_U->clk(ap_clk);
    src_img_data_stream_1_U->reset(ap_rst_n_inv);
    src_img_data_stream_1_U->if_read_ce(ap_var_for_const0);
    src_img_data_stream_1_U->if_write_ce(ap_var_for_const0);
    src_img_data_stream_1_U->if_din(AXIvideo2Mat_U0_img_data_stream_1_V_din);
    src_img_data_stream_1_U->if_full_n(src_img_data_stream_1_full_n);
    src_img_data_stream_1_U->if_write(AXIvideo2Mat_U0_img_data_stream_1_V_write);
    src_img_data_stream_1_U->if_dout(src_img_data_stream_1_dout);
    src_img_data_stream_1_U->if_empty_n(src_img_data_stream_1_empty_n);
    src_img_data_stream_1_U->if_read(Downsample_U0_src_data_stream_1_V_read);
    src_img_data_stream_2_U = new fifo_w8_d2_A("src_img_data_stream_2_U");
    src_img_data_stream_2_U->clk(ap_clk);
    src_img_data_stream_2_U->reset(ap_rst_n_inv);
    src_img_data_stream_2_U->if_read_ce(ap_var_for_const0);
    src_img_data_stream_2_U->if_write_ce(ap_var_for_const0);
    src_img_data_stream_2_U->if_din(AXIvideo2Mat_U0_img_data_stream_2_V_din);
    src_img_data_stream_2_U->if_full_n(src_img_data_stream_2_full_n);
    src_img_data_stream_2_U->if_write(AXIvideo2Mat_U0_img_data_stream_2_V_write);
    src_img_data_stream_2_U->if_dout(src_img_data_stream_2_dout);
    src_img_data_stream_2_U->if_empty_n(src_img_data_stream_2_empty_n);
    src_img_data_stream_2_U->if_read(Downsample_U0_src_data_stream_2_V_read);
    src_img_data_stream_3_U = new fifo_w8_d2_A("src_img_data_stream_3_U");
    src_img_data_stream_3_U->clk(ap_clk);
    src_img_data_stream_3_U->reset(ap_rst_n_inv);
    src_img_data_stream_3_U->if_read_ce(ap_var_for_const0);
    src_img_data_stream_3_U->if_write_ce(ap_var_for_const0);
    src_img_data_stream_3_U->if_din(AXIvideo2Mat_U0_img_data_stream_3_V_din);
    src_img_data_stream_3_U->if_full_n(src_img_data_stream_3_full_n);
    src_img_data_stream_3_U->if_write(AXIvideo2Mat_U0_img_data_stream_3_V_write);
    src_img_data_stream_3_U->if_dout(src_img_data_stream_3_dout);
    src_img_data_stream_3_U->if_empty_n(src_img_data_stream_3_empty_n);
    src_img_data_stream_3_U->if_read(Downsample_U0_src_data_stream_3_V_read);
    dst_img_data_stream_s_U = new fifo_w8_d2_A("dst_img_data_stream_s_U");
    dst_img_data_stream_s_U->clk(ap_clk);
    dst_img_data_stream_s_U->reset(ap_rst_n_inv);
    dst_img_data_stream_s_U->if_read_ce(ap_var_for_const0);
    dst_img_data_stream_s_U->if_write_ce(ap_var_for_const0);
    dst_img_data_stream_s_U->if_din(Downsample_U0_dst_data_stream_0_V_din);
    dst_img_data_stream_s_U->if_full_n(dst_img_data_stream_s_full_n);
    dst_img_data_stream_s_U->if_write(Downsample_U0_dst_data_stream_0_V_write);
    dst_img_data_stream_s_U->if_dout(dst_img_data_stream_s_dout);
    dst_img_data_stream_s_U->if_empty_n(dst_img_data_stream_s_empty_n);
    dst_img_data_stream_s_U->if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read);
    dst_img_data_stream_1_U = new fifo_w8_d2_A("dst_img_data_stream_1_U");
    dst_img_data_stream_1_U->clk(ap_clk);
    dst_img_data_stream_1_U->reset(ap_rst_n_inv);
    dst_img_data_stream_1_U->if_read_ce(ap_var_for_const0);
    dst_img_data_stream_1_U->if_write_ce(ap_var_for_const0);
    dst_img_data_stream_1_U->if_din(Downsample_U0_dst_data_stream_1_V_din);
    dst_img_data_stream_1_U->if_full_n(dst_img_data_stream_1_full_n);
    dst_img_data_stream_1_U->if_write(Downsample_U0_dst_data_stream_1_V_write);
    dst_img_data_stream_1_U->if_dout(dst_img_data_stream_1_dout);
    dst_img_data_stream_1_U->if_empty_n(dst_img_data_stream_1_empty_n);
    dst_img_data_stream_1_U->if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read);
    dst_img_data_stream_2_U = new fifo_w8_d2_A("dst_img_data_stream_2_U");
    dst_img_data_stream_2_U->clk(ap_clk);
    dst_img_data_stream_2_U->reset(ap_rst_n_inv);
    dst_img_data_stream_2_U->if_read_ce(ap_var_for_const0);
    dst_img_data_stream_2_U->if_write_ce(ap_var_for_const0);
    dst_img_data_stream_2_U->if_din(Downsample_U0_dst_data_stream_2_V_din);
    dst_img_data_stream_2_U->if_full_n(dst_img_data_stream_2_full_n);
    dst_img_data_stream_2_U->if_write(Downsample_U0_dst_data_stream_2_V_write);
    dst_img_data_stream_2_U->if_dout(dst_img_data_stream_2_dout);
    dst_img_data_stream_2_U->if_empty_n(dst_img_data_stream_2_empty_n);
    dst_img_data_stream_2_U->if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read);
    dst_img_data_stream_3_U = new fifo_w8_d2_A("dst_img_data_stream_3_U");
    dst_img_data_stream_3_U->clk(ap_clk);
    dst_img_data_stream_3_U->reset(ap_rst_n_inv);
    dst_img_data_stream_3_U->if_read_ce(ap_var_for_const0);
    dst_img_data_stream_3_U->if_write_ce(ap_var_for_const0);
    dst_img_data_stream_3_U->if_din(Downsample_U0_dst_data_stream_3_V_din);
    dst_img_data_stream_3_U->if_full_n(dst_img_data_stream_3_full_n);
    dst_img_data_stream_3_U->if_write(Downsample_U0_dst_data_stream_3_V_write);
    dst_img_data_stream_3_U->if_dout(dst_img_data_stream_3_dout);
    dst_img_data_stream_3_U->if_empty_n(dst_img_data_stream_3_empty_n);
    dst_img_data_stream_3_U->if_read(Mat2AXIvideo_U0_img_data_stream_3_V_read);
    start_for_Downsambkb_U = new start_for_Downsambkb("start_for_Downsambkb_U");
    start_for_Downsambkb_U->clk(ap_clk);
    start_for_Downsambkb_U->reset(ap_rst_n_inv);
    start_for_Downsambkb_U->if_read_ce(ap_var_for_const0);
    start_for_Downsambkb_U->if_write_ce(ap_var_for_const0);
    start_for_Downsambkb_U->if_din(start_for_Downsample_U0_din);
    start_for_Downsambkb_U->if_full_n(start_for_Downsample_U0_full_n);
    start_for_Downsambkb_U->if_write(AXIvideo2Mat_U0_start_write);
    start_for_Downsambkb_U->if_dout(start_for_Downsample_U0_dout);
    start_for_Downsambkb_U->if_empty_n(start_for_Downsample_U0_empty_n);
    start_for_Downsambkb_U->if_read(Downsample_U0_ap_ready);
    start_for_Mat2AXIcud_U = new start_for_Mat2AXIcud("start_for_Mat2AXIcud_U");
    start_for_Mat2AXIcud_U->clk(ap_clk);
    start_for_Mat2AXIcud_U->reset(ap_rst_n_inv);
    start_for_Mat2AXIcud_U->if_read_ce(ap_var_for_const0);
    start_for_Mat2AXIcud_U->if_write_ce(ap_var_for_const0);
    start_for_Mat2AXIcud_U->if_din(start_for_Mat2AXIvideo_U0_din);
    start_for_Mat2AXIcud_U->if_full_n(start_for_Mat2AXIvideo_U0_full_n);
    start_for_Mat2AXIcud_U->if_write(Downsample_U0_start_write);
    start_for_Mat2AXIcud_U->if_dout(start_for_Mat2AXIvideo_U0_dout);
    start_for_Mat2AXIcud_U->if_empty_n(start_for_Mat2AXIvideo_U0_empty_n);
    start_for_Mat2AXIcud_U->if_read(Mat2AXIvideo_U0_ap_ready);

    SC_METHOD(thread_AXIvideo2Mat_U0_ap_continue);

    SC_METHOD(thread_AXIvideo2Mat_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_Downsample_U0_ap_continue);

    SC_METHOD(thread_Downsample_U0_ap_start);
    sensitive << ( start_for_Downsample_U0_empty_n );

    SC_METHOD(thread_Mat2AXIvideo_U0_ap_continue);

    SC_METHOD(thread_Mat2AXIvideo_U0_ap_start);
    sensitive << ( start_for_Mat2AXIvideo_U0_empty_n );

    SC_METHOD(thread_Mat2AXIvideo_U0_start_full_n);

    SC_METHOD(thread_Mat2AXIvideo_U0_start_write);

    SC_METHOD(thread_ap_done);
    sensitive << ( Mat2AXIvideo_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( AXIvideo2Mat_U0_ap_idle );
    sensitive << ( Downsample_U0_ap_idle );
    sensitive << ( Mat2AXIvideo_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( AXIvideo2Mat_U0_ap_ready );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_continue);

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( Mat2AXIvideo_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( AXIvideo2Mat_U0_ap_ready );

    SC_METHOD(thread_start_for_Downsample_U0_din);

    SC_METHOD(thread_start_for_Mat2AXIvideo_U0_din);

    SC_METHOD(thread_video_dst_TDATA);
    sensitive << ( Mat2AXIvideo_U0_video_dst_TDATA );

    SC_METHOD(thread_video_dst_TDEST);
    sensitive << ( Mat2AXIvideo_U0_video_dst_TDEST );

    SC_METHOD(thread_video_dst_TID);
    sensitive << ( Mat2AXIvideo_U0_video_dst_TID );

    SC_METHOD(thread_video_dst_TKEEP);
    sensitive << ( Mat2AXIvideo_U0_video_dst_TKEEP );

    SC_METHOD(thread_video_dst_TLAST);
    sensitive << ( Mat2AXIvideo_U0_video_dst_TLAST );

    SC_METHOD(thread_video_dst_TSTRB);
    sensitive << ( Mat2AXIvideo_U0_video_dst_TSTRB );

    SC_METHOD(thread_video_dst_TUSER);
    sensitive << ( Mat2AXIvideo_U0_video_dst_TUSER );

    SC_METHOD(thread_video_dst_TVALID);
    sensitive << ( Mat2AXIvideo_U0_video_dst_TVALID );

    SC_METHOD(thread_video_src_TREADY);
    sensitive << ( AXIvideo2Mat_U0_video_src_TREADY );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "hls_resize_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, s_axi_AXILiteS_AWVALID, "(port)s_axi_AXILiteS_AWVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_AWREADY, "(port)s_axi_AXILiteS_AWREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_AWADDR, "(port)s_axi_AXILiteS_AWADDR");
    sc_trace(mVcdFile, s_axi_AXILiteS_WVALID, "(port)s_axi_AXILiteS_WVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_WREADY, "(port)s_axi_AXILiteS_WREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_WDATA, "(port)s_axi_AXILiteS_WDATA");
    sc_trace(mVcdFile, s_axi_AXILiteS_WSTRB, "(port)s_axi_AXILiteS_WSTRB");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARVALID, "(port)s_axi_AXILiteS_ARVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARREADY, "(port)s_axi_AXILiteS_ARREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_ARADDR, "(port)s_axi_AXILiteS_ARADDR");
    sc_trace(mVcdFile, s_axi_AXILiteS_RVALID, "(port)s_axi_AXILiteS_RVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_RREADY, "(port)s_axi_AXILiteS_RREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_RDATA, "(port)s_axi_AXILiteS_RDATA");
    sc_trace(mVcdFile, s_axi_AXILiteS_RRESP, "(port)s_axi_AXILiteS_RRESP");
    sc_trace(mVcdFile, s_axi_AXILiteS_BVALID, "(port)s_axi_AXILiteS_BVALID");
    sc_trace(mVcdFile, s_axi_AXILiteS_BREADY, "(port)s_axi_AXILiteS_BREADY");
    sc_trace(mVcdFile, s_axi_AXILiteS_BRESP, "(port)s_axi_AXILiteS_BRESP");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, interrupt, "(port)interrupt");
    sc_trace(mVcdFile, video_src_TDATA, "(port)video_src_TDATA");
    sc_trace(mVcdFile, video_src_TKEEP, "(port)video_src_TKEEP");
    sc_trace(mVcdFile, video_src_TSTRB, "(port)video_src_TSTRB");
    sc_trace(mVcdFile, video_src_TUSER, "(port)video_src_TUSER");
    sc_trace(mVcdFile, video_src_TLAST, "(port)video_src_TLAST");
    sc_trace(mVcdFile, video_src_TID, "(port)video_src_TID");
    sc_trace(mVcdFile, video_src_TDEST, "(port)video_src_TDEST");
    sc_trace(mVcdFile, video_dst_TDATA, "(port)video_dst_TDATA");
    sc_trace(mVcdFile, video_dst_TKEEP, "(port)video_dst_TKEEP");
    sc_trace(mVcdFile, video_dst_TSTRB, "(port)video_dst_TSTRB");
    sc_trace(mVcdFile, video_dst_TUSER, "(port)video_dst_TUSER");
    sc_trace(mVcdFile, video_dst_TLAST, "(port)video_dst_TLAST");
    sc_trace(mVcdFile, video_dst_TID, "(port)video_dst_TID");
    sc_trace(mVcdFile, video_dst_TDEST, "(port)video_dst_TDEST");
    sc_trace(mVcdFile, video_src_TVALID, "(port)video_src_TVALID");
    sc_trace(mVcdFile, video_src_TREADY, "(port)video_src_TREADY");
    sc_trace(mVcdFile, video_dst_TVALID, "(port)video_dst_TVALID");
    sc_trace(mVcdFile, video_dst_TREADY, "(port)video_dst_TREADY");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, ap_start, "ap_start");
    sc_trace(mVcdFile, ap_ready, "ap_ready");
    sc_trace(mVcdFile, ap_done, "ap_done");
    sc_trace(mVcdFile, ap_idle, "ap_idle");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_start, "AXIvideo2Mat_U0_ap_start");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_done, "AXIvideo2Mat_U0_ap_done");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_continue, "AXIvideo2Mat_U0_ap_continue");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_idle, "AXIvideo2Mat_U0_ap_idle");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_ready, "AXIvideo2Mat_U0_ap_ready");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_start_out, "AXIvideo2Mat_U0_start_out");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_start_write, "AXIvideo2Mat_U0_start_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_video_src_TREADY, "AXIvideo2Mat_U0_video_src_TREADY");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_0_V_din, "AXIvideo2Mat_U0_img_data_stream_0_V_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_0_V_write, "AXIvideo2Mat_U0_img_data_stream_0_V_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_1_V_din, "AXIvideo2Mat_U0_img_data_stream_1_V_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_1_V_write, "AXIvideo2Mat_U0_img_data_stream_1_V_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_2_V_din, "AXIvideo2Mat_U0_img_data_stream_2_V_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_2_V_write, "AXIvideo2Mat_U0_img_data_stream_2_V_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_3_V_din, "AXIvideo2Mat_U0_img_data_stream_3_V_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_3_V_write, "AXIvideo2Mat_U0_img_data_stream_3_V_write");
    sc_trace(mVcdFile, Downsample_U0_ap_start, "Downsample_U0_ap_start");
    sc_trace(mVcdFile, Downsample_U0_ap_done, "Downsample_U0_ap_done");
    sc_trace(mVcdFile, Downsample_U0_ap_continue, "Downsample_U0_ap_continue");
    sc_trace(mVcdFile, Downsample_U0_ap_idle, "Downsample_U0_ap_idle");
    sc_trace(mVcdFile, Downsample_U0_ap_ready, "Downsample_U0_ap_ready");
    sc_trace(mVcdFile, Downsample_U0_start_out, "Downsample_U0_start_out");
    sc_trace(mVcdFile, Downsample_U0_start_write, "Downsample_U0_start_write");
    sc_trace(mVcdFile, Downsample_U0_src_data_stream_0_V_read, "Downsample_U0_src_data_stream_0_V_read");
    sc_trace(mVcdFile, Downsample_U0_src_data_stream_1_V_read, "Downsample_U0_src_data_stream_1_V_read");
    sc_trace(mVcdFile, Downsample_U0_src_data_stream_2_V_read, "Downsample_U0_src_data_stream_2_V_read");
    sc_trace(mVcdFile, Downsample_U0_src_data_stream_3_V_read, "Downsample_U0_src_data_stream_3_V_read");
    sc_trace(mVcdFile, Downsample_U0_dst_data_stream_0_V_din, "Downsample_U0_dst_data_stream_0_V_din");
    sc_trace(mVcdFile, Downsample_U0_dst_data_stream_0_V_write, "Downsample_U0_dst_data_stream_0_V_write");
    sc_trace(mVcdFile, Downsample_U0_dst_data_stream_1_V_din, "Downsample_U0_dst_data_stream_1_V_din");
    sc_trace(mVcdFile, Downsample_U0_dst_data_stream_1_V_write, "Downsample_U0_dst_data_stream_1_V_write");
    sc_trace(mVcdFile, Downsample_U0_dst_data_stream_2_V_din, "Downsample_U0_dst_data_stream_2_V_din");
    sc_trace(mVcdFile, Downsample_U0_dst_data_stream_2_V_write, "Downsample_U0_dst_data_stream_2_V_write");
    sc_trace(mVcdFile, Downsample_U0_dst_data_stream_3_V_din, "Downsample_U0_dst_data_stream_3_V_din");
    sc_trace(mVcdFile, Downsample_U0_dst_data_stream_3_V_write, "Downsample_U0_dst_data_stream_3_V_write");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_start, "Mat2AXIvideo_U0_ap_start");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_done, "Mat2AXIvideo_U0_ap_done");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_continue, "Mat2AXIvideo_U0_ap_continue");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_idle, "Mat2AXIvideo_U0_ap_idle");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_ready, "Mat2AXIvideo_U0_ap_ready");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_0_V_read, "Mat2AXIvideo_U0_img_data_stream_0_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_1_V_read, "Mat2AXIvideo_U0_img_data_stream_1_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_2_V_read, "Mat2AXIvideo_U0_img_data_stream_2_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_3_V_read, "Mat2AXIvideo_U0_img_data_stream_3_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_video_dst_TDATA, "Mat2AXIvideo_U0_video_dst_TDATA");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_video_dst_TVALID, "Mat2AXIvideo_U0_video_dst_TVALID");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_video_dst_TKEEP, "Mat2AXIvideo_U0_video_dst_TKEEP");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_video_dst_TSTRB, "Mat2AXIvideo_U0_video_dst_TSTRB");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_video_dst_TUSER, "Mat2AXIvideo_U0_video_dst_TUSER");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_video_dst_TLAST, "Mat2AXIvideo_U0_video_dst_TLAST");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_video_dst_TID, "Mat2AXIvideo_U0_video_dst_TID");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_video_dst_TDEST, "Mat2AXIvideo_U0_video_dst_TDEST");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, src_img_data_stream_s_full_n, "src_img_data_stream_s_full_n");
    sc_trace(mVcdFile, src_img_data_stream_s_dout, "src_img_data_stream_s_dout");
    sc_trace(mVcdFile, src_img_data_stream_s_empty_n, "src_img_data_stream_s_empty_n");
    sc_trace(mVcdFile, src_img_data_stream_1_full_n, "src_img_data_stream_1_full_n");
    sc_trace(mVcdFile, src_img_data_stream_1_dout, "src_img_data_stream_1_dout");
    sc_trace(mVcdFile, src_img_data_stream_1_empty_n, "src_img_data_stream_1_empty_n");
    sc_trace(mVcdFile, src_img_data_stream_2_full_n, "src_img_data_stream_2_full_n");
    sc_trace(mVcdFile, src_img_data_stream_2_dout, "src_img_data_stream_2_dout");
    sc_trace(mVcdFile, src_img_data_stream_2_empty_n, "src_img_data_stream_2_empty_n");
    sc_trace(mVcdFile, src_img_data_stream_3_full_n, "src_img_data_stream_3_full_n");
    sc_trace(mVcdFile, src_img_data_stream_3_dout, "src_img_data_stream_3_dout");
    sc_trace(mVcdFile, src_img_data_stream_3_empty_n, "src_img_data_stream_3_empty_n");
    sc_trace(mVcdFile, dst_img_data_stream_s_full_n, "dst_img_data_stream_s_full_n");
    sc_trace(mVcdFile, dst_img_data_stream_s_dout, "dst_img_data_stream_s_dout");
    sc_trace(mVcdFile, dst_img_data_stream_s_empty_n, "dst_img_data_stream_s_empty_n");
    sc_trace(mVcdFile, dst_img_data_stream_1_full_n, "dst_img_data_stream_1_full_n");
    sc_trace(mVcdFile, dst_img_data_stream_1_dout, "dst_img_data_stream_1_dout");
    sc_trace(mVcdFile, dst_img_data_stream_1_empty_n, "dst_img_data_stream_1_empty_n");
    sc_trace(mVcdFile, dst_img_data_stream_2_full_n, "dst_img_data_stream_2_full_n");
    sc_trace(mVcdFile, dst_img_data_stream_2_dout, "dst_img_data_stream_2_dout");
    sc_trace(mVcdFile, dst_img_data_stream_2_empty_n, "dst_img_data_stream_2_empty_n");
    sc_trace(mVcdFile, dst_img_data_stream_3_full_n, "dst_img_data_stream_3_full_n");
    sc_trace(mVcdFile, dst_img_data_stream_3_dout, "dst_img_data_stream_3_dout");
    sc_trace(mVcdFile, dst_img_data_stream_3_empty_n, "dst_img_data_stream_3_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, start_for_Downsample_U0_din, "start_for_Downsample_U0_din");
    sc_trace(mVcdFile, start_for_Downsample_U0_full_n, "start_for_Downsample_U0_full_n");
    sc_trace(mVcdFile, start_for_Downsample_U0_dout, "start_for_Downsample_U0_dout");
    sc_trace(mVcdFile, start_for_Downsample_U0_empty_n, "start_for_Downsample_U0_empty_n");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_din, "start_for_Mat2AXIvideo_U0_din");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_full_n, "start_for_Mat2AXIvideo_U0_full_n");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_dout, "start_for_Mat2AXIvideo_U0_dout");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_empty_n, "start_for_Mat2AXIvideo_U0_empty_n");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_start_full_n, "Mat2AXIvideo_U0_start_full_n");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_start_write, "Mat2AXIvideo_U0_start_write");
#endif

    }
    mHdltvinHandle.open("hls_resize.hdltvin.dat");
    mHdltvoutHandle.open("hls_resize.hdltvout.dat");
}

hls_resize::~hls_resize() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete hls_resize_AXILiteS_s_axi_U;
    delete AXIvideo2Mat_U0;
    delete Downsample_U0;
    delete Mat2AXIvideo_U0;
    delete src_img_data_stream_s_U;
    delete src_img_data_stream_1_U;
    delete src_img_data_stream_2_U;
    delete src_img_data_stream_3_U;
    delete dst_img_data_stream_s_U;
    delete dst_img_data_stream_1_U;
    delete dst_img_data_stream_2_U;
    delete dst_img_data_stream_3_U;
    delete start_for_Downsambkb_U;
    delete start_for_Mat2AXIcud_U;
}

void hls_resize::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void hls_resize::thread_AXIvideo2Mat_U0_ap_continue() {
    AXIvideo2Mat_U0_ap_continue = ap_const_logic_1;
}

void hls_resize::thread_AXIvideo2Mat_U0_ap_start() {
    AXIvideo2Mat_U0_ap_start = ap_start.read();
}

void hls_resize::thread_Downsample_U0_ap_continue() {
    Downsample_U0_ap_continue = ap_const_logic_1;
}

void hls_resize::thread_Downsample_U0_ap_start() {
    Downsample_U0_ap_start = start_for_Downsample_U0_empty_n.read();
}

void hls_resize::thread_Mat2AXIvideo_U0_ap_continue() {
    Mat2AXIvideo_U0_ap_continue = ap_const_logic_1;
}

void hls_resize::thread_Mat2AXIvideo_U0_ap_start() {
    Mat2AXIvideo_U0_ap_start = start_for_Mat2AXIvideo_U0_empty_n.read();
}

void hls_resize::thread_Mat2AXIvideo_U0_start_full_n() {
    Mat2AXIvideo_U0_start_full_n = ap_const_logic_1;
}

void hls_resize::thread_Mat2AXIvideo_U0_start_write() {
    Mat2AXIvideo_U0_start_write = ap_const_logic_0;
}

void hls_resize::thread_ap_done() {
    ap_done = Mat2AXIvideo_U0_ap_done.read();
}

void hls_resize::thread_ap_idle() {
    ap_idle = (AXIvideo2Mat_U0_ap_idle.read() & Downsample_U0_ap_idle.read() & Mat2AXIvideo_U0_ap_idle.read());
}

void hls_resize::thread_ap_ready() {
    ap_ready = AXIvideo2Mat_U0_ap_ready.read();
}

void hls_resize::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void hls_resize::thread_ap_sync_continue() {
    ap_sync_continue = ap_const_logic_1;
}

void hls_resize::thread_ap_sync_done() {
    ap_sync_done = Mat2AXIvideo_U0_ap_done.read();
}

void hls_resize::thread_ap_sync_ready() {
    ap_sync_ready = AXIvideo2Mat_U0_ap_ready.read();
}

void hls_resize::thread_start_for_Downsample_U0_din() {
    start_for_Downsample_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void hls_resize::thread_start_for_Mat2AXIvideo_U0_din() {
    start_for_Mat2AXIvideo_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void hls_resize::thread_video_dst_TDATA() {
    video_dst_TDATA = Mat2AXIvideo_U0_video_dst_TDATA.read();
}

void hls_resize::thread_video_dst_TDEST() {
    video_dst_TDEST = Mat2AXIvideo_U0_video_dst_TDEST.read();
}

void hls_resize::thread_video_dst_TID() {
    video_dst_TID = Mat2AXIvideo_U0_video_dst_TID.read();
}

void hls_resize::thread_video_dst_TKEEP() {
    video_dst_TKEEP = Mat2AXIvideo_U0_video_dst_TKEEP.read();
}

void hls_resize::thread_video_dst_TLAST() {
    video_dst_TLAST = Mat2AXIvideo_U0_video_dst_TLAST.read();
}

void hls_resize::thread_video_dst_TSTRB() {
    video_dst_TSTRB = Mat2AXIvideo_U0_video_dst_TSTRB.read();
}

void hls_resize::thread_video_dst_TUSER() {
    video_dst_TUSER = Mat2AXIvideo_U0_video_dst_TUSER.read();
}

void hls_resize::thread_video_dst_TVALID() {
    video_dst_TVALID = Mat2AXIvideo_U0_video_dst_TVALID.read();
}

void hls_resize::thread_video_src_TREADY() {
    video_src_TREADY = AXIvideo2Mat_U0_video_src_TREADY.read();
}

void hls_resize::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"s_axi_AXILiteS_AWVALID\" :  \"" << s_axi_AXILiteS_AWVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"s_axi_AXILiteS_AWREADY\" :  \"" << s_axi_AXILiteS_AWREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_AWADDR\" :  \"" << s_axi_AXILiteS_AWADDR.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WVALID\" :  \"" << s_axi_AXILiteS_WVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_WREADY\" :  \"" << s_axi_AXILiteS_WREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WDATA\" :  \"" << s_axi_AXILiteS_WDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_WSTRB\" :  \"" << s_axi_AXILiteS_WSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_ARVALID\" :  \"" << s_axi_AXILiteS_ARVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_ARREADY\" :  \"" << s_axi_AXILiteS_ARREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_ARADDR\" :  \"" << s_axi_AXILiteS_ARADDR.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RVALID\" :  \"" << s_axi_AXILiteS_RVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_RREADY\" :  \"" << s_axi_AXILiteS_RREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RDATA\" :  \"" << s_axi_AXILiteS_RDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_RRESP\" :  \"" << s_axi_AXILiteS_RRESP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_BVALID\" :  \"" << s_axi_AXILiteS_BVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"s_axi_AXILiteS_BREADY\" :  \"" << s_axi_AXILiteS_BREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"s_axi_AXILiteS_BRESP\" :  \"" << s_axi_AXILiteS_BRESP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"interrupt\" :  \"" << interrupt.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_src_TDATA\" :  \"" << video_src_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_src_TKEEP\" :  \"" << video_src_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_src_TSTRB\" :  \"" << video_src_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_src_TUSER\" :  \"" << video_src_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_src_TLAST\" :  \"" << video_src_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_src_TID\" :  \"" << video_src_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_src_TDEST\" :  \"" << video_src_TDEST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_dst_TDATA\" :  \"" << video_dst_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_dst_TKEEP\" :  \"" << video_dst_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_dst_TSTRB\" :  \"" << video_dst_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_dst_TUSER\" :  \"" << video_dst_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_dst_TLAST\" :  \"" << video_dst_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_dst_TID\" :  \"" << video_dst_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_dst_TDEST\" :  \"" << video_dst_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_src_TVALID\" :  \"" << video_src_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_src_TREADY\" :  \"" << video_src_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"video_dst_TVALID\" :  \"" << video_dst_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"video_dst_TREADY\" :  \"" << video_dst_TREADY.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

