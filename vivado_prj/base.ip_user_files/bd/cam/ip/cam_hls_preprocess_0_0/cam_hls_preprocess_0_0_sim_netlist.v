// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jul 21 00:04:59 2021
// Host        : ADAM-GALLAS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/base/base.srcs/sources_1/bd/cam/ip/cam_hls_preprocess_0_0/cam_hls_preprocess_0_0_sim_netlist.v
// Design      : cam_hls_preprocess_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cam_hls_preprocess_0_0,hls_preprocess,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "hls_preprocess,Vivado 2020.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module cam_hls_preprocess_0_0
   (s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_BRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt,
    video_src_TVALID,
    video_src_TREADY,
    video_src_TDATA,
    video_src_TKEEP,
    video_src_TSTRB,
    video_src_TUSER,
    video_src_TLAST,
    video_src_TID,
    video_src_TDEST,
    video_dst_TVALID,
    video_dst_TREADY,
    video_dst_TDATA,
    video_dst_TKEEP,
    video_dst_TSTRB,
    video_dst_TUSER,
    video_dst_TLAST,
    video_dst_TID,
    video_dst_TDEST);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR" *) input [3:0]s_axi_AXILiteS_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID" *) input s_axi_AXILiteS_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY" *) output s_axi_AXILiteS_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA" *) input [31:0]s_axi_AXILiteS_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB" *) input [3:0]s_axi_AXILiteS_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID" *) input s_axi_AXILiteS_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY" *) output s_axi_AXILiteS_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP" *) output [1:0]s_axi_AXILiteS_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID" *) output s_axi_AXILiteS_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY" *) input s_axi_AXILiteS_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR" *) input [3:0]s_axi_AXILiteS_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID" *) input s_axi_AXILiteS_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY" *) output s_axi_AXILiteS_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA" *) output [31:0]s_axi_AXILiteS_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP" *) output [1:0]s_axi_AXILiteS_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID" *) output s_axi_AXILiteS_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 250000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_AXILiteS_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS:video_src:video_dst, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_src TVALID" *) input video_src_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_src TREADY" *) output video_src_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_src TDATA" *) input [31:0]video_src_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_src TKEEP" *) input [3:0]video_src_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_src TSTRB" *) input [3:0]video_src_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_src TUSER" *) input [0:0]video_src_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_src TLAST" *) input [0:0]video_src_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_src TID" *) input [0:0]video_src_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_src TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_src, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input [0:0]video_src_TDEST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_dst TVALID" *) output video_dst_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_dst TREADY" *) input video_dst_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_dst TDATA" *) output [31:0]video_dst_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_dst TKEEP" *) output [3:0]video_dst_TKEEP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_dst TSTRB" *) output [3:0]video_dst_TSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_dst TUSER" *) output [0:0]video_dst_TUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_dst TLAST" *) output [0:0]video_dst_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_dst TID" *) output [0:0]video_dst_TID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_dst TDEST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_dst, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) output [0:0]video_dst_TDEST;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [3:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [3:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire [1:0]s_axi_AXILiteS_BRESP;
  wire s_axi_AXILiteS_BVALID;
  wire [31:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire [1:0]s_axi_AXILiteS_RRESP;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire [31:0]video_dst_TDATA;
  wire [0:0]video_dst_TDEST;
  wire [0:0]video_dst_TID;
  wire [3:0]video_dst_TKEEP;
  wire [0:0]video_dst_TLAST;
  wire video_dst_TREADY;
  wire [3:0]video_dst_TSTRB;
  wire [0:0]video_dst_TUSER;
  wire video_dst_TVALID;
  wire [31:0]video_src_TDATA;
  wire [0:0]video_src_TDEST;
  wire [0:0]video_src_TID;
  wire [3:0]video_src_TKEEP;
  wire [0:0]video_src_TLAST;
  wire video_src_TREADY;
  wire [3:0]video_src_TSTRB;
  wire [0:0]video_src_TUSER;
  wire video_src_TVALID;

  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_AXILITES_ADDR_WIDTH = "4" *) 
  (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
  (* C_S_AXI_AXILITES_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  cam_hls_preprocess_0_0_hls_preprocess inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARREADY(s_axi_AXILiteS_ARREADY),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWREADY(s_axi_AXILiteS_AWREADY),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BRESP(s_axi_AXILiteS_BRESP),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA(s_axi_AXILiteS_RDATA),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RRESP(s_axi_AXILiteS_RRESP),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA(s_axi_AXILiteS_WDATA),
        .s_axi_AXILiteS_WREADY(s_axi_AXILiteS_WREADY),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
        .video_dst_TDATA(video_dst_TDATA),
        .video_dst_TDEST(video_dst_TDEST),
        .video_dst_TID(video_dst_TID),
        .video_dst_TKEEP(video_dst_TKEEP),
        .video_dst_TLAST(video_dst_TLAST),
        .video_dst_TREADY(video_dst_TREADY),
        .video_dst_TSTRB(video_dst_TSTRB),
        .video_dst_TUSER(video_dst_TUSER),
        .video_dst_TVALID(video_dst_TVALID),
        .video_src_TDATA(video_src_TDATA),
        .video_src_TDEST(video_src_TDEST),
        .video_src_TID(video_src_TID),
        .video_src_TKEEP(video_src_TKEEP),
        .video_src_TLAST(video_src_TLAST),
        .video_src_TREADY(video_src_TREADY),
        .video_src_TSTRB(video_src_TSTRB),
        .video_src_TUSER(video_src_TUSER),
        .video_src_TVALID(video_src_TVALID));
endmodule

(* ORIG_REF_NAME = "AXIvideo2Mat" *) 
module cam_hls_preprocess_0_0_AXIvideo2Mat
   (start_once_reg,
    AXIvideo2Mat_U0_img_data_stream_3_V_write,
    Q,
    AXIvideo2Mat_U0_ap_ready,
    video_src_TREADY,
    \tmp_reg_464_reg[7]_0 ,
    \tmp_9_reg_469_reg[7]_0 ,
    \tmp_1_reg_474_reg[7]_0 ,
    ap_clk,
    SS,
    ap_rst_n,
    start_for_Downsample_U0_full_n,
    AXIvideo2Mat_U0_ap_start,
    src_img_data_stream_2_full_n,
    src_img_data_stream_3_full_n,
    src_img_data_stream_1_full_n,
    src_img_data_stream_s_full_n,
    video_src_TVALID,
    video_src_TDATA,
    video_src_TUSER,
    video_src_TLAST);
  output start_once_reg;
  output AXIvideo2Mat_U0_img_data_stream_3_V_write;
  output [0:0]Q;
  output AXIvideo2Mat_U0_ap_ready;
  output video_src_TREADY;
  output [7:0]\tmp_reg_464_reg[7]_0 ;
  output [7:0]\tmp_9_reg_469_reg[7]_0 ;
  output [7:0]\tmp_1_reg_474_reg[7]_0 ;
  input ap_clk;
  input [0:0]SS;
  input ap_rst_n;
  input start_for_Downsample_U0_full_n;
  input AXIvideo2Mat_U0_ap_start;
  input src_img_data_stream_2_full_n;
  input src_img_data_stream_3_full_n;
  input src_img_data_stream_1_full_n;
  input src_img_data_stream_s_full_n;
  input video_src_TVALID;
  input [23:0]video_src_TDATA;
  input [0:0]video_src_TUSER;
  input [0:0]video_src_TLAST;

  wire AXIvideo2Mat_U0_ap_ready;
  wire AXIvideo2Mat_U0_ap_start;
  wire AXIvideo2Mat_U0_img_data_stream_3_V_write;
  wire [0:0]Q;
  wire [0:0]SS;
  wire ack_out2;
  wire \ap_CS_fsm[1]_i_2__0_n_1 ;
  wire ap_CS_fsm_pp1_stage0;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [7:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_169;
  wire ap_enable_reg_pp1_iter0;
  wire ap_enable_reg_pp1_iter0_i_1_n_1;
  wire ap_enable_reg_pp1_iter1_reg_n_1;
  wire ap_rst_n;
  wire [23:0]axi_data_V_0_reg_206;
  wire \axi_data_V_0_reg_206[0]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[10]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[11]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[12]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[13]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[14]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[15]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[16]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[17]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[18]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[19]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[1]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[20]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[21]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[22]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[23]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[2]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[3]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[4]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[5]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[6]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[7]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[8]_i_1_n_1 ;
  wire \axi_data_V_0_reg_206[9]_i_1_n_1 ;
  wire [23:0]axi_data_V_1_reg_238;
  wire [23:0]axi_data_V_3_reg_309;
  wire axi_last_V_0_reg_196;
  wire \axi_last_V_0_reg_196[0]_i_1_n_1 ;
  wire \axi_last_V_2_reg_272_reg_n_1_[0] ;
  wire axi_last_V_3_reg_297;
  wire \eol_0_reg_260_reg_n_1_[0] ;
  wire eol_2_reg_321;
  wire \eol_2_reg_321_reg_n_1_[0] ;
  wire eol_reg_227;
  wire [9:0]i_V_fu_356_p2;
  wire [9:0]i_V_reg_446;
  wire \i_V_reg_446[9]_i_2_n_1 ;
  wire icmp_ln73_fu_362_p2;
  wire \icmp_ln73_reg_451_reg_n_1_[0] ;
  wire int_ap_ready_i_2_n_1;
  wire [10:0]j_V_fu_368_p2;
  wire [7:0]p_0_in;
  wire [23:0]p_1_in;
  wire p_1_in3_in;
  wire [23:0]p_Val2_s_reg_285;
  wire \p_Val2_s_reg_285[23]_i_4_n_1 ;
  wire \p_Val2_s_reg_285[23]_i_5_n_1 ;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_1;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_10;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_100;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_101;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_102;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_103;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_104;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_105;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_11;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_12;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_13;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_133;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_134;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_137;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_139;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_14;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_15;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_16;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_17;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_18;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_19;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_2;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_20;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_21;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_22;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_23;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_24;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_25;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_26;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_27;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_28;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_29;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_31;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_33;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_34;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_35;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_36;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_37;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_38;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_39;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_4;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_40;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_41;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_42;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_43;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_44;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_45;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_46;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_47;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_48;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_49;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_5;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_50;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_51;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_52;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_53;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_54;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_55;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_56;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_57;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_58;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_59;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_6;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_60;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_61;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_62;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_63;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_64;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_65;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_66;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_67;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_68;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_69;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_7;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_70;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_71;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_72;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_73;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_74;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_75;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_76;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_77;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_78;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_79;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_8;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_80;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_81;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_82;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_83;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_84;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_85;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_86;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_87;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_88;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_89;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_9;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_98;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_99;
  wire regslice_both_AXI_video_strm_V_last_V_U_n_1;
  wire regslice_both_AXI_video_strm_V_last_V_U_n_10;
  wire regslice_both_AXI_video_strm_V_last_V_U_n_11;
  wire regslice_both_AXI_video_strm_V_last_V_U_n_3;
  wire regslice_both_AXI_video_strm_V_last_V_U_n_4;
  wire regslice_both_AXI_video_strm_V_last_V_U_n_6;
  wire regslice_both_AXI_video_strm_V_last_V_U_n_7;
  wire regslice_both_AXI_video_strm_V_last_V_U_n_8;
  wire regslice_both_AXI_video_strm_V_last_V_U_n_9;
  wire regslice_both_AXI_video_strm_V_user_V_U_n_1;
  wire sof_1_fu_146;
  wire sof_1_fu_1460;
  wire src_img_data_stream_1_full_n;
  wire src_img_data_stream_2_full_n;
  wire src_img_data_stream_3_full_n;
  wire src_img_data_stream_s_full_n;
  wire start_for_Downsample_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1_n_1;
  wire t_V_2_reg_249;
  wire \t_V_2_reg_249[10]_i_4_n_1 ;
  wire [10:0]t_V_2_reg_249_reg;
  wire [9:0]t_V_reg_216;
  wire tmp_1_reg_4740;
  wire [7:0]\tmp_1_reg_474_reg[7]_0 ;
  wire [7:0]\tmp_9_reg_469_reg[7]_0 ;
  wire [23:0]tmp_data_V_reg_422;
  wire tmp_last_V_reg_430;
  wire [7:0]\tmp_reg_464_reg[7]_0 ;
  wire [23:0]video_src_TDATA;
  wire [0:0]video_src_TLAST;
  wire video_src_TLAST_int;
  wire video_src_TREADY;
  wire [0:0]video_src_TUSER;
  wire video_src_TVALID;
  wire video_src_TVALID_int;

  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFFF1F00)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(start_once_reg),
        .I1(start_for_Downsample_U0_full_n),
        .I2(AXIvideo2Mat_U0_ap_start),
        .I3(Q),
        .I4(AXIvideo2Mat_U0_ap_ready),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \ap_CS_fsm[1]_i_2__0 
       (.I0(start_once_reg),
        .I1(start_for_Downsample_U0_full_n),
        .I2(AXIvideo2Mat_U0_ap_start),
        .O(\ap_CS_fsm[1]_i_2__0_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[3]_i_1__1 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state9),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFBFFF0F0)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(regslice_both_AXI_video_strm_V_last_V_U_n_3),
        .I1(icmp_ln73_fu_362_p2),
        .I2(p_1_in3_in),
        .I3(ap_enable_reg_pp1_iter0),
        .I4(ap_CS_fsm_pp1_stage0),
        .O(ap_NS_fsm[4]));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(ap_CS_fsm_state4),
        .I1(t_V_reg_216[1]),
        .I2(t_V_reg_216[0]),
        .I3(t_V_reg_216[3]),
        .I4(t_V_reg_216[2]),
        .I5(int_ap_ready_i_2_n_1),
        .O(p_1_in3_in));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(regslice_both_AXI_video_strm_V_last_V_U_n_3),
        .I1(icmp_ln73_fu_362_p2),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(ap_CS_fsm_pp1_stage0),
        .O(ap_NS_fsm[5]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(\eol_2_reg_321_reg_n_1_[0] ),
        .I1(ap_CS_fsm_state8),
        .I2(ap_CS_fsm_state7),
        .O(ap_NS_fsm[6]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(\eol_2_reg_321_reg_n_1_[0] ),
        .I1(ap_CS_fsm_state8),
        .O(ap_NS_fsm[7]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q),
        .S(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_pp1_stage0),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state7),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state8),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state9),
        .R(SS));
  LUT6 #(
    .INIT(64'hB0B0B000F0F0F000)) 
    ap_enable_reg_pp1_iter0_i_1
       (.I0(regslice_both_AXI_video_strm_V_last_V_U_n_3),
        .I1(icmp_ln73_fu_362_p2),
        .I2(ap_rst_n),
        .I3(p_1_in3_in),
        .I4(ap_enable_reg_pp1_iter0),
        .I5(ap_CS_fsm_pp1_stage0),
        .O(ap_enable_reg_pp1_iter0_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp1_iter0_i_1_n_1),
        .Q(ap_enable_reg_pp1_iter0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp1_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_1),
        .Q(ap_enable_reg_pp1_iter1_reg_n_1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[0]_i_1 
       (.I0(tmp_data_V_reg_422[0]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[0]),
        .O(\axi_data_V_0_reg_206[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[10]_i_1 
       (.I0(tmp_data_V_reg_422[10]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[10]),
        .O(\axi_data_V_0_reg_206[10]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[11]_i_1 
       (.I0(tmp_data_V_reg_422[11]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[11]),
        .O(\axi_data_V_0_reg_206[11]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[12]_i_1 
       (.I0(tmp_data_V_reg_422[12]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[12]),
        .O(\axi_data_V_0_reg_206[12]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[13]_i_1 
       (.I0(tmp_data_V_reg_422[13]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[13]),
        .O(\axi_data_V_0_reg_206[13]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[14]_i_1 
       (.I0(tmp_data_V_reg_422[14]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[14]),
        .O(\axi_data_V_0_reg_206[14]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[15]_i_1 
       (.I0(tmp_data_V_reg_422[15]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[15]),
        .O(\axi_data_V_0_reg_206[15]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[16]_i_1 
       (.I0(tmp_data_V_reg_422[16]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[16]),
        .O(\axi_data_V_0_reg_206[16]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[17]_i_1 
       (.I0(tmp_data_V_reg_422[17]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[17]),
        .O(\axi_data_V_0_reg_206[17]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[18]_i_1 
       (.I0(tmp_data_V_reg_422[18]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[18]),
        .O(\axi_data_V_0_reg_206[18]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[19]_i_1 
       (.I0(tmp_data_V_reg_422[19]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[19]),
        .O(\axi_data_V_0_reg_206[19]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[1]_i_1 
       (.I0(tmp_data_V_reg_422[1]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[1]),
        .O(\axi_data_V_0_reg_206[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[20]_i_1 
       (.I0(tmp_data_V_reg_422[20]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[20]),
        .O(\axi_data_V_0_reg_206[20]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[21]_i_1 
       (.I0(tmp_data_V_reg_422[21]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[21]),
        .O(\axi_data_V_0_reg_206[21]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[22]_i_1 
       (.I0(tmp_data_V_reg_422[22]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[22]),
        .O(\axi_data_V_0_reg_206[22]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[23]_i_1 
       (.I0(tmp_data_V_reg_422[23]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[23]),
        .O(\axi_data_V_0_reg_206[23]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[2]_i_1 
       (.I0(tmp_data_V_reg_422[2]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[2]),
        .O(\axi_data_V_0_reg_206[2]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[3]_i_1 
       (.I0(tmp_data_V_reg_422[3]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[3]),
        .O(\axi_data_V_0_reg_206[3]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[4]_i_1 
       (.I0(tmp_data_V_reg_422[4]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[4]),
        .O(\axi_data_V_0_reg_206[4]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[5]_i_1 
       (.I0(tmp_data_V_reg_422[5]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[5]),
        .O(\axi_data_V_0_reg_206[5]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[6]_i_1 
       (.I0(tmp_data_V_reg_422[6]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[6]),
        .O(\axi_data_V_0_reg_206[6]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[7]_i_1 
       (.I0(tmp_data_V_reg_422[7]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[7]),
        .O(\axi_data_V_0_reg_206[7]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[8]_i_1 
       (.I0(tmp_data_V_reg_422[8]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[8]),
        .O(\axi_data_V_0_reg_206[8]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_0_reg_206[9]_i_1 
       (.I0(tmp_data_V_reg_422[9]),
        .I1(ap_CS_fsm_state3),
        .I2(axi_data_V_3_reg_309[9]),
        .O(\axi_data_V_0_reg_206[9]_i_1_n_1 ));
  FDRE \axi_data_V_0_reg_206_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[0]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[0]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[10] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[10]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[10]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[11] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[11]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[11]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[12] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[12]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[12]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[13] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[13]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[13]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[14] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[14]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[14]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[15] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[15]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[15]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[16] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[16]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[16]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[17] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[17]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[17]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[18] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[18]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[18]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[19] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[19]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[19]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[1]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[1]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[20] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[20]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[20]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[21] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[21]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[21]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[22] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[22]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[22]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[23] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[23]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[23]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[2]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[2]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[3]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[3]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[4]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[4]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[5]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[5]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[6] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[6]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[6]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[7] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[7]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[7]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[8] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[8]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[8]),
        .R(1'b0));
  FDRE \axi_data_V_0_reg_206_reg[9] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_data_V_0_reg_206[9]_i_1_n_1 ),
        .Q(axi_data_V_0_reg_206[9]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[0] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_29),
        .Q(axi_data_V_1_reg_238[0]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[10] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_19),
        .Q(axi_data_V_1_reg_238[10]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[11] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_18),
        .Q(axi_data_V_1_reg_238[11]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[12] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_17),
        .Q(axi_data_V_1_reg_238[12]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[13] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_16),
        .Q(axi_data_V_1_reg_238[13]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[14] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_15),
        .Q(axi_data_V_1_reg_238[14]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[15] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_14),
        .Q(axi_data_V_1_reg_238[15]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[16] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_13),
        .Q(axi_data_V_1_reg_238[16]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[17] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_12),
        .Q(axi_data_V_1_reg_238[17]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[18] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_11),
        .Q(axi_data_V_1_reg_238[18]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[19] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_10),
        .Q(axi_data_V_1_reg_238[19]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[1] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_28),
        .Q(axi_data_V_1_reg_238[1]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[20] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_9),
        .Q(axi_data_V_1_reg_238[20]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[21] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_8),
        .Q(axi_data_V_1_reg_238[21]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[22] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_7),
        .Q(axi_data_V_1_reg_238[22]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[23] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_6),
        .Q(axi_data_V_1_reg_238[23]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[2] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_27),
        .Q(axi_data_V_1_reg_238[2]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[3] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_26),
        .Q(axi_data_V_1_reg_238[3]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[4] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_25),
        .Q(axi_data_V_1_reg_238[4]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[5] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_24),
        .Q(axi_data_V_1_reg_238[5]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[6] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_23),
        .Q(axi_data_V_1_reg_238[6]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[7] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_22),
        .Q(axi_data_V_1_reg_238[7]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[8] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_21),
        .Q(axi_data_V_1_reg_238[8]),
        .R(1'b0));
  FDRE \axi_data_V_1_reg_238_reg[9] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_20),
        .Q(axi_data_V_1_reg_238[9]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[0] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[0]),
        .Q(axi_data_V_3_reg_309[0]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[10] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[10]),
        .Q(axi_data_V_3_reg_309[10]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[11] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[11]),
        .Q(axi_data_V_3_reg_309[11]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[12] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[12]),
        .Q(axi_data_V_3_reg_309[12]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[13] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[13]),
        .Q(axi_data_V_3_reg_309[13]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[14] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[14]),
        .Q(axi_data_V_3_reg_309[14]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[15] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[15]),
        .Q(axi_data_V_3_reg_309[15]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[16] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[16]),
        .Q(axi_data_V_3_reg_309[16]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[17] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[17]),
        .Q(axi_data_V_3_reg_309[17]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[18] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[18]),
        .Q(axi_data_V_3_reg_309[18]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[19] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[19]),
        .Q(axi_data_V_3_reg_309[19]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[1] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[1]),
        .Q(axi_data_V_3_reg_309[1]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[20] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[20]),
        .Q(axi_data_V_3_reg_309[20]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[21] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[21]),
        .Q(axi_data_V_3_reg_309[21]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[22] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[22]),
        .Q(axi_data_V_3_reg_309[22]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[23] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[23]),
        .Q(axi_data_V_3_reg_309[23]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[2] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[2]),
        .Q(axi_data_V_3_reg_309[2]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[3] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[3]),
        .Q(axi_data_V_3_reg_309[3]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[4] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[4]),
        .Q(axi_data_V_3_reg_309[4]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[5] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[5]),
        .Q(axi_data_V_3_reg_309[5]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[6] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[6]),
        .Q(axi_data_V_3_reg_309[6]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[7] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[7]),
        .Q(axi_data_V_3_reg_309[7]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[8] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[8]),
        .Q(axi_data_V_3_reg_309[8]),
        .R(1'b0));
  FDRE \axi_data_V_3_reg_309_reg[9] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(p_1_in[9]),
        .Q(axi_data_V_3_reg_309[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_last_V_0_reg_196[0]_i_1 
       (.I0(tmp_last_V_reg_430),
        .I1(ap_CS_fsm_state3),
        .I2(axi_last_V_3_reg_297),
        .O(\axi_last_V_0_reg_196[0]_i_1_n_1 ));
  FDRE \axi_last_V_0_reg_196_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[3]),
        .D(\axi_last_V_0_reg_196[0]_i_1_n_1 ),
        .Q(axi_last_V_0_reg_196),
        .R(1'b0));
  FDRE \axi_last_V_2_reg_272_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_last_V_U_n_11),
        .Q(\axi_last_V_2_reg_272_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \axi_last_V_3_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(regslice_both_AXI_video_strm_V_last_V_U_n_10),
        .Q(axi_last_V_3_reg_297),
        .R(1'b0));
  FDRE \eol_0_reg_260_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_2),
        .Q(\eol_0_reg_260_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \eol_2_reg_321_reg[0] 
       (.C(ap_clk),
        .CE(eol_2_reg_321),
        .D(regslice_both_AXI_video_strm_V_last_V_U_n_9),
        .Q(\eol_2_reg_321_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \eol_reg_227_reg[0] 
       (.C(ap_clk),
        .CE(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_5),
        .Q(eol_reg_227),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_446[0]_i_1 
       (.I0(t_V_reg_216[0]),
        .O(i_V_fu_356_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_446[1]_i_1 
       (.I0(t_V_reg_216[0]),
        .I1(t_V_reg_216[1]),
        .O(i_V_fu_356_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_446[2]_i_1 
       (.I0(t_V_reg_216[2]),
        .I1(t_V_reg_216[1]),
        .I2(t_V_reg_216[0]),
        .O(i_V_fu_356_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_446[3]_i_1 
       (.I0(t_V_reg_216[3]),
        .I1(t_V_reg_216[0]),
        .I2(t_V_reg_216[1]),
        .I3(t_V_reg_216[2]),
        .O(i_V_fu_356_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_446[4]_i_1 
       (.I0(t_V_reg_216[4]),
        .I1(t_V_reg_216[2]),
        .I2(t_V_reg_216[1]),
        .I3(t_V_reg_216[0]),
        .I4(t_V_reg_216[3]),
        .O(i_V_fu_356_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_V_reg_446[5]_i_1 
       (.I0(t_V_reg_216[5]),
        .I1(t_V_reg_216[3]),
        .I2(t_V_reg_216[0]),
        .I3(t_V_reg_216[1]),
        .I4(t_V_reg_216[2]),
        .I5(t_V_reg_216[4]),
        .O(i_V_fu_356_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_446[6]_i_1 
       (.I0(t_V_reg_216[6]),
        .I1(\i_V_reg_446[9]_i_2_n_1 ),
        .O(i_V_fu_356_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_446[7]_i_1 
       (.I0(t_V_reg_216[7]),
        .I1(\i_V_reg_446[9]_i_2_n_1 ),
        .I2(t_V_reg_216[6]),
        .O(i_V_fu_356_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_446[8]_i_1 
       (.I0(t_V_reg_216[8]),
        .I1(t_V_reg_216[6]),
        .I2(\i_V_reg_446[9]_i_2_n_1 ),
        .I3(t_V_reg_216[7]),
        .O(i_V_fu_356_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_446[9]_i_1 
       (.I0(t_V_reg_216[9]),
        .I1(t_V_reg_216[7]),
        .I2(\i_V_reg_446[9]_i_2_n_1 ),
        .I3(t_V_reg_216[6]),
        .I4(t_V_reg_216[8]),
        .O(i_V_fu_356_p2[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_V_reg_446[9]_i_2 
       (.I0(t_V_reg_216[5]),
        .I1(t_V_reg_216[3]),
        .I2(t_V_reg_216[0]),
        .I3(t_V_reg_216[1]),
        .I4(t_V_reg_216[2]),
        .I5(t_V_reg_216[4]),
        .O(\i_V_reg_446[9]_i_2_n_1 ));
  FDRE \i_V_reg_446_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_356_p2[0]),
        .Q(i_V_reg_446[0]),
        .R(1'b0));
  FDRE \i_V_reg_446_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_356_p2[1]),
        .Q(i_V_reg_446[1]),
        .R(1'b0));
  FDRE \i_V_reg_446_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_356_p2[2]),
        .Q(i_V_reg_446[2]),
        .R(1'b0));
  FDRE \i_V_reg_446_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_356_p2[3]),
        .Q(i_V_reg_446[3]),
        .R(1'b0));
  FDRE \i_V_reg_446_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_356_p2[4]),
        .Q(i_V_reg_446[4]),
        .R(1'b0));
  FDRE \i_V_reg_446_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_356_p2[5]),
        .Q(i_V_reg_446[5]),
        .R(1'b0));
  FDRE \i_V_reg_446_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_356_p2[6]),
        .Q(i_V_reg_446[6]),
        .R(1'b0));
  FDRE \i_V_reg_446_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_356_p2[7]),
        .Q(i_V_reg_446[7]),
        .R(1'b0));
  FDRE \i_V_reg_446_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_356_p2[8]),
        .Q(i_V_reg_446[8]),
        .R(1'b0));
  FDRE \i_V_reg_446_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state4),
        .D(i_V_fu_356_p2[9]),
        .Q(i_V_reg_446[9]),
        .R(1'b0));
  FDRE \icmp_ln73_reg_451_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_139),
        .Q(\icmp_ln73_reg_451_reg_n_1_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    int_ap_ready_i_1
       (.I0(ap_CS_fsm_state4),
        .I1(t_V_reg_216[1]),
        .I2(t_V_reg_216[0]),
        .I3(t_V_reg_216[3]),
        .I4(t_V_reg_216[2]),
        .I5(int_ap_ready_i_2_n_1),
        .O(AXIvideo2Mat_U0_ap_ready));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    int_ap_ready_i_2
       (.I0(t_V_reg_216[4]),
        .I1(t_V_reg_216[5]),
        .I2(t_V_reg_216[6]),
        .I3(t_V_reg_216[7]),
        .I4(t_V_reg_216[8]),
        .I5(t_V_reg_216[9]),
        .O(int_ap_ready_i_2_n_1));
  LUT5 #(
    .INIT(32'hFFFF0131)) 
    \p_Val2_s_reg_285[23]_i_4 
       (.I0(\axi_last_V_2_reg_272_reg_n_1_[0] ),
        .I1(sof_1_fu_146),
        .I2(\p_Val2_s_reg_285[23]_i_5_n_1 ),
        .I3(\eol_0_reg_260_reg_n_1_[0] ),
        .I4(icmp_ln73_fu_362_p2),
        .O(\p_Val2_s_reg_285[23]_i_4_n_1 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \p_Val2_s_reg_285[23]_i_5 
       (.I0(ap_CS_fsm_pp1_stage0),
        .I1(ap_enable_reg_pp1_iter1_reg_n_1),
        .I2(\icmp_ln73_reg_451_reg_n_1_[0] ),
        .O(\p_Val2_s_reg_285[23]_i_5_n_1 ));
  FDRE \p_Val2_s_reg_285_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_89),
        .Q(p_Val2_s_reg_285[0]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[10] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_79),
        .Q(p_Val2_s_reg_285[10]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[11] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_78),
        .Q(p_Val2_s_reg_285[11]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[12] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_77),
        .Q(p_Val2_s_reg_285[12]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[13] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_76),
        .Q(p_Val2_s_reg_285[13]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[14] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_75),
        .Q(p_Val2_s_reg_285[14]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[15] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_74),
        .Q(p_Val2_s_reg_285[15]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[16] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_73),
        .Q(p_Val2_s_reg_285[16]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[17] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_72),
        .Q(p_Val2_s_reg_285[17]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[18] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_71),
        .Q(p_Val2_s_reg_285[18]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[19] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_70),
        .Q(p_Val2_s_reg_285[19]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_88),
        .Q(p_Val2_s_reg_285[1]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[20] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_69),
        .Q(p_Val2_s_reg_285[20]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[21] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_68),
        .Q(p_Val2_s_reg_285[21]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[22] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_67),
        .Q(p_Val2_s_reg_285[22]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[23] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_66),
        .Q(p_Val2_s_reg_285[23]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_87),
        .Q(p_Val2_s_reg_285[2]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_86),
        .Q(p_Val2_s_reg_285[3]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_85),
        .Q(p_Val2_s_reg_285[4]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_84),
        .Q(p_Val2_s_reg_285[5]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_83),
        .Q(p_Val2_s_reg_285[6]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_82),
        .Q(p_Val2_s_reg_285[7]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[8] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_81),
        .Q(p_Val2_s_reg_285[8]),
        .R(1'b0));
  FDRE \p_Val2_s_reg_285_reg[9] 
       (.C(ap_clk),
        .CE(ap_condition_169),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_80),
        .Q(p_Val2_s_reg_285[9]),
        .R(1'b0));
  cam_hls_preprocess_0_0_regslice_both_22 regslice_both_AXI_video_strm_V_data_V_U
       (.D({regslice_both_AXI_video_strm_V_data_V_U_n_6,regslice_both_AXI_video_strm_V_data_V_U_n_7,regslice_both_AXI_video_strm_V_data_V_U_n_8,regslice_both_AXI_video_strm_V_data_V_U_n_9,regslice_both_AXI_video_strm_V_data_V_U_n_10,regslice_both_AXI_video_strm_V_data_V_U_n_11,regslice_both_AXI_video_strm_V_data_V_U_n_12,regslice_both_AXI_video_strm_V_data_V_U_n_13,regslice_both_AXI_video_strm_V_data_V_U_n_14,regslice_both_AXI_video_strm_V_data_V_U_n_15,regslice_both_AXI_video_strm_V_data_V_U_n_16,regslice_both_AXI_video_strm_V_data_V_U_n_17,regslice_both_AXI_video_strm_V_data_V_U_n_18,regslice_both_AXI_video_strm_V_data_V_U_n_19,regslice_both_AXI_video_strm_V_data_V_U_n_20,regslice_both_AXI_video_strm_V_data_V_U_n_21,regslice_both_AXI_video_strm_V_data_V_U_n_22,regslice_both_AXI_video_strm_V_data_V_U_n_23,regslice_both_AXI_video_strm_V_data_V_U_n_24,regslice_both_AXI_video_strm_V_data_V_U_n_25,regslice_both_AXI_video_strm_V_data_V_U_n_26,regslice_both_AXI_video_strm_V_data_V_U_n_27,regslice_both_AXI_video_strm_V_data_V_U_n_28,regslice_both_AXI_video_strm_V_data_V_U_n_29}),
        .E(regslice_both_AXI_video_strm_V_data_V_U_n_4),
        .Q(p_Val2_s_reg_285),
        .SR(t_V_2_reg_249),
        .\SRL_SIG_reg[1][0] (ap_enable_reg_pp1_iter1_reg_n_1),
        .SS(SS),
        .\ap_CS_fsm_reg[4] (ap_condition_169),
        .\ap_CS_fsm_reg[4]_0 (regslice_both_AXI_video_strm_V_data_V_U_n_31),
        .\ap_CS_fsm_reg[4]_1 (regslice_both_AXI_video_strm_V_data_V_U_n_57),
        .\ap_CS_fsm_reg[4]_2 (tmp_1_reg_4740),
        .\ap_CS_fsm_reg[4]_3 (sof_1_fu_1460),
        .\ap_CS_fsm_reg[4]_4 (regslice_both_AXI_video_strm_V_data_V_U_n_137),
        .\ap_CS_fsm_reg[4]_5 (regslice_both_AXI_video_strm_V_data_V_U_n_139),
        .\ap_CS_fsm_reg[5] (eol_2_reg_321),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter0(ap_enable_reg_pp1_iter0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_AXI_video_strm_V_data_V_U_n_1),
        .\axi_data_V_1_reg_238_reg[23] (p_1_in),
        .\axi_data_V_1_reg_238_reg[23]_0 (axi_data_V_0_reg_206),
        .\axi_data_V_3_reg_309_reg[0] ({ap_CS_fsm_state8,ap_CS_fsm_state7,ap_CS_fsm_pp1_stage0,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .\axi_data_V_3_reg_309_reg[0]_0 (\eol_2_reg_321_reg_n_1_[0] ),
        .\axi_data_V_3_reg_309_reg[23] (axi_data_V_1_reg_238),
        .axi_last_V_0_reg_196(axi_last_V_0_reg_196),
        .\axi_last_V_2_reg_272_reg[0] (regslice_both_AXI_video_strm_V_data_V_U_n_2),
        .\axi_last_V_2_reg_272_reg[0]_0 (regslice_both_AXI_video_strm_V_data_V_U_n_5),
        .\eol_0_reg_260_reg[0] (\eol_0_reg_260_reg_n_1_[0] ),
        .\eol_reg_227_reg[0] (\axi_last_V_2_reg_272_reg_n_1_[0] ),
        .icmp_ln73_fu_362_p2(icmp_ln73_fu_362_p2),
        .\icmp_ln73_reg_451_reg[0] (AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .\icmp_ln73_reg_451_reg[0]_0 (\icmp_ln73_reg_451_reg_n_1_[0] ),
        .\icmp_ln73_reg_451_reg[0]_1 (regslice_both_AXI_video_strm_V_last_V_U_n_7),
        .\icmp_ln73_reg_451_reg[0]_2 (regslice_both_AXI_video_strm_V_last_V_U_n_6),
        .\icmp_ln73_reg_451_reg[0]_3 (regslice_both_AXI_video_strm_V_last_V_U_n_8),
        .\icmp_ln73_reg_451_reg[0]_4 (regslice_both_AXI_video_strm_V_last_V_U_n_3),
        .\ireg_reg[32] ({video_src_TVALID,video_src_TDATA}),
        .\odata_reg[0] (regslice_both_AXI_video_strm_V_user_V_U_n_1),
        .\odata_reg[0]_0 (regslice_both_AXI_video_strm_V_last_V_U_n_1),
        .\odata_reg[15] (p_0_in),
        .\odata_reg[1] (regslice_both_AXI_video_strm_V_data_V_U_n_133),
        .\odata_reg[1]_0 (regslice_both_AXI_video_strm_V_data_V_U_n_134),
        .\odata_reg[23] ({regslice_both_AXI_video_strm_V_data_V_U_n_66,regslice_both_AXI_video_strm_V_data_V_U_n_67,regslice_both_AXI_video_strm_V_data_V_U_n_68,regslice_both_AXI_video_strm_V_data_V_U_n_69,regslice_both_AXI_video_strm_V_data_V_U_n_70,regslice_both_AXI_video_strm_V_data_V_U_n_71,regslice_both_AXI_video_strm_V_data_V_U_n_72,regslice_both_AXI_video_strm_V_data_V_U_n_73,regslice_both_AXI_video_strm_V_data_V_U_n_74,regslice_both_AXI_video_strm_V_data_V_U_n_75,regslice_both_AXI_video_strm_V_data_V_U_n_76,regslice_both_AXI_video_strm_V_data_V_U_n_77,regslice_both_AXI_video_strm_V_data_V_U_n_78,regslice_both_AXI_video_strm_V_data_V_U_n_79,regslice_both_AXI_video_strm_V_data_V_U_n_80,regslice_both_AXI_video_strm_V_data_V_U_n_81,regslice_both_AXI_video_strm_V_data_V_U_n_82,regslice_both_AXI_video_strm_V_data_V_U_n_83,regslice_both_AXI_video_strm_V_data_V_U_n_84,regslice_both_AXI_video_strm_V_data_V_U_n_85,regslice_both_AXI_video_strm_V_data_V_U_n_86,regslice_both_AXI_video_strm_V_data_V_U_n_87,regslice_both_AXI_video_strm_V_data_V_U_n_88,regslice_both_AXI_video_strm_V_data_V_U_n_89}),
        .\odata_reg[23]_0 ({regslice_both_AXI_video_strm_V_data_V_U_n_98,regslice_both_AXI_video_strm_V_data_V_U_n_99,regslice_both_AXI_video_strm_V_data_V_U_n_100,regslice_both_AXI_video_strm_V_data_V_U_n_101,regslice_both_AXI_video_strm_V_data_V_U_n_102,regslice_both_AXI_video_strm_V_data_V_U_n_103,regslice_both_AXI_video_strm_V_data_V_U_n_104,regslice_both_AXI_video_strm_V_data_V_U_n_105}),
        .\odata_reg[32] ({video_src_TVALID_int,regslice_both_AXI_video_strm_V_data_V_U_n_33,regslice_both_AXI_video_strm_V_data_V_U_n_34,regslice_both_AXI_video_strm_V_data_V_U_n_35,regslice_both_AXI_video_strm_V_data_V_U_n_36,regslice_both_AXI_video_strm_V_data_V_U_n_37,regslice_both_AXI_video_strm_V_data_V_U_n_38,regslice_both_AXI_video_strm_V_data_V_U_n_39,regslice_both_AXI_video_strm_V_data_V_U_n_40,regslice_both_AXI_video_strm_V_data_V_U_n_41,regslice_both_AXI_video_strm_V_data_V_U_n_42,regslice_both_AXI_video_strm_V_data_V_U_n_43,regslice_both_AXI_video_strm_V_data_V_U_n_44,regslice_both_AXI_video_strm_V_data_V_U_n_45,regslice_both_AXI_video_strm_V_data_V_U_n_46,regslice_both_AXI_video_strm_V_data_V_U_n_47,regslice_both_AXI_video_strm_V_data_V_U_n_48,regslice_both_AXI_video_strm_V_data_V_U_n_49,regslice_both_AXI_video_strm_V_data_V_U_n_50,regslice_both_AXI_video_strm_V_data_V_U_n_51,regslice_both_AXI_video_strm_V_data_V_U_n_52,regslice_both_AXI_video_strm_V_data_V_U_n_53,regslice_both_AXI_video_strm_V_data_V_U_n_54,regslice_both_AXI_video_strm_V_data_V_U_n_55,regslice_both_AXI_video_strm_V_data_V_U_n_56}),
        .\odata_reg[32]_0 (ack_out2),
        .\odata_reg[7] ({regslice_both_AXI_video_strm_V_data_V_U_n_58,regslice_both_AXI_video_strm_V_data_V_U_n_59,regslice_both_AXI_video_strm_V_data_V_U_n_60,regslice_both_AXI_video_strm_V_data_V_U_n_61,regslice_both_AXI_video_strm_V_data_V_U_n_62,regslice_both_AXI_video_strm_V_data_V_U_n_63,regslice_both_AXI_video_strm_V_data_V_U_n_64,regslice_both_AXI_video_strm_V_data_V_U_n_65}),
        .p_1_in3_in(p_1_in3_in),
        .\p_Val2_s_reg_285_reg[23] (\p_Val2_s_reg_285[23]_i_5_n_1 ),
        .\p_Val2_s_reg_285_reg[23]_0 (\p_Val2_s_reg_285[23]_i_4_n_1 ),
        .sof_1_fu_146(sof_1_fu_146),
        .\tmp_1_reg_474_reg[7] (regslice_both_AXI_video_strm_V_last_V_U_n_4),
        .video_src_TREADY(video_src_TREADY));
  cam_hls_preprocess_0_0_regslice_both__parameterized1_23 regslice_both_AXI_video_strm_V_last_V_U
       (.D({video_src_TVALID,video_src_TLAST}),
        .E(regslice_both_AXI_video_strm_V_data_V_U_n_134),
        .Q({regslice_both_AXI_video_strm_V_last_V_U_n_1,video_src_TLAST_int}),
        .SS(SS),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\axi_last_V_2_reg_272_reg[0] (\axi_last_V_2_reg_272_reg_n_1_[0] ),
        .\axi_last_V_2_reg_272_reg[0]_0 (\p_Val2_s_reg_285[23]_i_5_n_1 ),
        .\axi_last_V_2_reg_272_reg[0]_1 (regslice_both_AXI_video_strm_V_data_V_U_n_31),
        .\axi_last_V_2_reg_272_reg[0]_2 (\p_Val2_s_reg_285[23]_i_4_n_1 ),
        .\axi_last_V_3_reg_297_reg[0] ({ap_CS_fsm_state7,ap_CS_fsm_pp1_stage0}),
        .\eol_0_reg_260_reg[0] (regslice_both_AXI_video_strm_V_last_V_U_n_4),
        .\eol_0_reg_260_reg[0]_0 (regslice_both_AXI_video_strm_V_last_V_U_n_9),
        .\eol_2_reg_321_reg[0] (\eol_0_reg_260_reg_n_1_[0] ),
        .eol_reg_227(eol_reg_227),
        .\eol_reg_227_reg[0] (regslice_both_AXI_video_strm_V_last_V_U_n_10),
        .icmp_ln73_fu_362_p2(icmp_ln73_fu_362_p2),
        .\icmp_ln73_reg_451_reg[0] (regslice_both_AXI_video_strm_V_last_V_U_n_3),
        .\icmp_ln73_reg_451_reg[0]_0 (t_V_2_reg_249_reg),
        .\ireg_reg[1] (regslice_both_AXI_video_strm_V_data_V_U_n_57),
        .\odata_reg[0] (regslice_both_AXI_video_strm_V_last_V_U_n_11),
        .sof_1_fu_146(sof_1_fu_146),
        .src_img_data_stream_1_full_n(src_img_data_stream_1_full_n),
        .src_img_data_stream_2_full_n(src_img_data_stream_2_full_n),
        .src_img_data_stream_3_full_n(src_img_data_stream_3_full_n),
        .src_img_data_stream_s_full_n(src_img_data_stream_s_full_n),
        .\t_V_2_reg_249_reg[4] (regslice_both_AXI_video_strm_V_last_V_U_n_8),
        .\t_V_2_reg_249_reg[7] (regslice_both_AXI_video_strm_V_last_V_U_n_7),
        .\t_V_2_reg_249_reg[9] (regslice_both_AXI_video_strm_V_last_V_U_n_6),
        .\tmp_1_reg_474_reg[7] (\icmp_ln73_reg_451_reg_n_1_[0] ),
        .\tmp_1_reg_474_reg[7]_0 (ap_enable_reg_pp1_iter1_reg_n_1));
  cam_hls_preprocess_0_0_regslice_both__parameterized1_24 regslice_both_AXI_video_strm_V_user_V_U
       (.D(ap_NS_fsm[2:1]),
        .E(regslice_both_AXI_video_strm_V_data_V_U_n_133),
        .Q(regslice_both_AXI_video_strm_V_user_V_U_n_1),
        .SS(SS),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm[1]_i_2__0_n_1 ),
        .\ap_CS_fsm_reg[2] ({ap_CS_fsm_state2,Q}),
        .\ap_CS_fsm_reg[2]_0 (video_src_TVALID_int),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[1] (regslice_both_AXI_video_strm_V_data_V_U_n_57),
        .\ireg_reg[1]_0 ({video_src_TVALID,video_src_TUSER}));
  FDRE \sof_1_fu_146_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_137),
        .Q(sof_1_fu_146),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5540)) 
    start_once_reg_i_1
       (.I0(AXIvideo2Mat_U0_ap_ready),
        .I1(AXIvideo2Mat_U0_ap_start),
        .I2(start_for_Downsample_U0_full_n),
        .I3(start_once_reg),
        .O(start_once_reg_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1_n_1),
        .Q(start_once_reg),
        .R(SS));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_2_reg_249[0]_i_1 
       (.I0(t_V_2_reg_249_reg[0]),
        .O(j_V_fu_368_p2[0]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAAA)) 
    \t_V_2_reg_249[10]_i_3 
       (.I0(t_V_2_reg_249_reg[10]),
        .I1(t_V_2_reg_249_reg[7]),
        .I2(\t_V_2_reg_249[10]_i_4_n_1 ),
        .I3(t_V_2_reg_249_reg[6]),
        .I4(t_V_2_reg_249_reg[8]),
        .I5(t_V_2_reg_249_reg[9]),
        .O(j_V_fu_368_p2[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \t_V_2_reg_249[10]_i_4 
       (.I0(t_V_2_reg_249_reg[4]),
        .I1(t_V_2_reg_249_reg[2]),
        .I2(t_V_2_reg_249_reg[0]),
        .I3(t_V_2_reg_249_reg[1]),
        .I4(t_V_2_reg_249_reg[3]),
        .I5(t_V_2_reg_249_reg[5]),
        .O(\t_V_2_reg_249[10]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_2_reg_249[1]_i_1 
       (.I0(t_V_2_reg_249_reg[0]),
        .I1(t_V_2_reg_249_reg[1]),
        .O(j_V_fu_368_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_2_reg_249[2]_i_1 
       (.I0(t_V_2_reg_249_reg[2]),
        .I1(t_V_2_reg_249_reg[1]),
        .I2(t_V_2_reg_249_reg[0]),
        .O(j_V_fu_368_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_2_reg_249[3]_i_1 
       (.I0(t_V_2_reg_249_reg[3]),
        .I1(t_V_2_reg_249_reg[2]),
        .I2(t_V_2_reg_249_reg[0]),
        .I3(t_V_2_reg_249_reg[1]),
        .O(j_V_fu_368_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_2_reg_249[4]_i_1 
       (.I0(t_V_2_reg_249_reg[4]),
        .I1(t_V_2_reg_249_reg[3]),
        .I2(t_V_2_reg_249_reg[1]),
        .I3(t_V_2_reg_249_reg[0]),
        .I4(t_V_2_reg_249_reg[2]),
        .O(j_V_fu_368_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \t_V_2_reg_249[5]_i_1 
       (.I0(t_V_2_reg_249_reg[5]),
        .I1(t_V_2_reg_249_reg[4]),
        .I2(t_V_2_reg_249_reg[2]),
        .I3(t_V_2_reg_249_reg[0]),
        .I4(t_V_2_reg_249_reg[1]),
        .I5(t_V_2_reg_249_reg[3]),
        .O(j_V_fu_368_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \t_V_2_reg_249[6]_i_1 
       (.I0(t_V_2_reg_249_reg[6]),
        .I1(\t_V_2_reg_249[10]_i_4_n_1 ),
        .O(j_V_fu_368_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \t_V_2_reg_249[7]_i_1 
       (.I0(t_V_2_reg_249_reg[7]),
        .I1(t_V_2_reg_249_reg[6]),
        .I2(\t_V_2_reg_249[10]_i_4_n_1 ),
        .O(j_V_fu_368_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \t_V_2_reg_249[8]_i_1 
       (.I0(t_V_2_reg_249_reg[8]),
        .I1(t_V_2_reg_249_reg[7]),
        .I2(\t_V_2_reg_249[10]_i_4_n_1 ),
        .I3(t_V_2_reg_249_reg[6]),
        .O(j_V_fu_368_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \t_V_2_reg_249[9]_i_1 
       (.I0(t_V_2_reg_249_reg[7]),
        .I1(\t_V_2_reg_249[10]_i_4_n_1 ),
        .I2(t_V_2_reg_249_reg[6]),
        .I3(t_V_2_reg_249_reg[8]),
        .I4(t_V_2_reg_249_reg[9]),
        .O(j_V_fu_368_p2[9]));
  FDRE \t_V_2_reg_249_reg[0] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[0]),
        .Q(t_V_2_reg_249_reg[0]),
        .R(t_V_2_reg_249));
  FDRE \t_V_2_reg_249_reg[10] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[10]),
        .Q(t_V_2_reg_249_reg[10]),
        .R(t_V_2_reg_249));
  FDRE \t_V_2_reg_249_reg[1] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[1]),
        .Q(t_V_2_reg_249_reg[1]),
        .R(t_V_2_reg_249));
  FDRE \t_V_2_reg_249_reg[2] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[2]),
        .Q(t_V_2_reg_249_reg[2]),
        .R(t_V_2_reg_249));
  FDRE \t_V_2_reg_249_reg[3] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[3]),
        .Q(t_V_2_reg_249_reg[3]),
        .R(t_V_2_reg_249));
  FDRE \t_V_2_reg_249_reg[4] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[4]),
        .Q(t_V_2_reg_249_reg[4]),
        .R(t_V_2_reg_249));
  FDRE \t_V_2_reg_249_reg[5] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[5]),
        .Q(t_V_2_reg_249_reg[5]),
        .R(t_V_2_reg_249));
  FDRE \t_V_2_reg_249_reg[6] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[6]),
        .Q(t_V_2_reg_249_reg[6]),
        .R(t_V_2_reg_249));
  FDRE \t_V_2_reg_249_reg[7] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[7]),
        .Q(t_V_2_reg_249_reg[7]),
        .R(t_V_2_reg_249));
  FDRE \t_V_2_reg_249_reg[8] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[8]),
        .Q(t_V_2_reg_249_reg[8]),
        .R(t_V_2_reg_249));
  FDRE \t_V_2_reg_249_reg[9] 
       (.C(ap_clk),
        .CE(sof_1_fu_1460),
        .D(j_V_fu_368_p2[9]),
        .Q(t_V_2_reg_249_reg[9]),
        .R(t_V_2_reg_249));
  FDRE \t_V_reg_216_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_446[0]),
        .Q(t_V_reg_216[0]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_216_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_446[1]),
        .Q(t_V_reg_216[1]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_216_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_446[2]),
        .Q(t_V_reg_216[2]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_216_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_446[3]),
        .Q(t_V_reg_216[3]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_216_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_446[4]),
        .Q(t_V_reg_216[4]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_216_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_446[5]),
        .Q(t_V_reg_216[5]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_216_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_446[6]),
        .Q(t_V_reg_216[6]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_216_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_446[7]),
        .Q(t_V_reg_216[7]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_216_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_446[8]),
        .Q(t_V_reg_216[8]),
        .R(ap_CS_fsm_state3));
  FDRE \t_V_reg_216_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state9),
        .D(i_V_reg_446[9]),
        .Q(t_V_reg_216[9]),
        .R(ap_CS_fsm_state3));
  FDRE \tmp_1_reg_474_reg[0] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_105),
        .Q(\tmp_1_reg_474_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \tmp_1_reg_474_reg[1] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_104),
        .Q(\tmp_1_reg_474_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \tmp_1_reg_474_reg[2] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_103),
        .Q(\tmp_1_reg_474_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \tmp_1_reg_474_reg[3] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_102),
        .Q(\tmp_1_reg_474_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \tmp_1_reg_474_reg[4] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_101),
        .Q(\tmp_1_reg_474_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \tmp_1_reg_474_reg[5] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_100),
        .Q(\tmp_1_reg_474_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \tmp_1_reg_474_reg[6] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_99),
        .Q(\tmp_1_reg_474_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \tmp_1_reg_474_reg[7] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_98),
        .Q(\tmp_1_reg_474_reg[7]_0 [7]),
        .R(1'b0));
  FDRE \tmp_9_reg_469_reg[0] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(p_0_in[0]),
        .Q(\tmp_9_reg_469_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \tmp_9_reg_469_reg[1] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(p_0_in[1]),
        .Q(\tmp_9_reg_469_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \tmp_9_reg_469_reg[2] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(p_0_in[2]),
        .Q(\tmp_9_reg_469_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \tmp_9_reg_469_reg[3] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(p_0_in[3]),
        .Q(\tmp_9_reg_469_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \tmp_9_reg_469_reg[4] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(p_0_in[4]),
        .Q(\tmp_9_reg_469_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \tmp_9_reg_469_reg[5] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(p_0_in[5]),
        .Q(\tmp_9_reg_469_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \tmp_9_reg_469_reg[6] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(p_0_in[6]),
        .Q(\tmp_9_reg_469_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \tmp_9_reg_469_reg[7] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(p_0_in[7]),
        .Q(\tmp_9_reg_469_reg[7]_0 [7]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[0] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_56),
        .Q(tmp_data_V_reg_422[0]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[10] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_46),
        .Q(tmp_data_V_reg_422[10]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[11] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_45),
        .Q(tmp_data_V_reg_422[11]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[12] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_44),
        .Q(tmp_data_V_reg_422[12]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[13] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_43),
        .Q(tmp_data_V_reg_422[13]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[14] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_42),
        .Q(tmp_data_V_reg_422[14]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[15] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_41),
        .Q(tmp_data_V_reg_422[15]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[16] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_40),
        .Q(tmp_data_V_reg_422[16]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[17] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_39),
        .Q(tmp_data_V_reg_422[17]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[18] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_38),
        .Q(tmp_data_V_reg_422[18]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[19] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_37),
        .Q(tmp_data_V_reg_422[19]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[1] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_55),
        .Q(tmp_data_V_reg_422[1]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[20] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_36),
        .Q(tmp_data_V_reg_422[20]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[21] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_35),
        .Q(tmp_data_V_reg_422[21]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[22] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_34),
        .Q(tmp_data_V_reg_422[22]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[23] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_33),
        .Q(tmp_data_V_reg_422[23]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[2] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_54),
        .Q(tmp_data_V_reg_422[2]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[3] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_53),
        .Q(tmp_data_V_reg_422[3]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[4] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_52),
        .Q(tmp_data_V_reg_422[4]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[5] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_51),
        .Q(tmp_data_V_reg_422[5]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[6] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_50),
        .Q(tmp_data_V_reg_422[6]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[7] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_49),
        .Q(tmp_data_V_reg_422[7]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[8] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_48),
        .Q(tmp_data_V_reg_422[8]),
        .R(1'b0));
  FDRE \tmp_data_V_reg_422_reg[9] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_47),
        .Q(tmp_data_V_reg_422[9]),
        .R(1'b0));
  FDRE \tmp_last_V_reg_430_reg[0] 
       (.C(ap_clk),
        .CE(ack_out2),
        .D(video_src_TLAST_int),
        .Q(tmp_last_V_reg_430),
        .R(1'b0));
  FDRE \tmp_reg_464_reg[0] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_65),
        .Q(\tmp_reg_464_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \tmp_reg_464_reg[1] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_64),
        .Q(\tmp_reg_464_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \tmp_reg_464_reg[2] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_63),
        .Q(\tmp_reg_464_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \tmp_reg_464_reg[3] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_62),
        .Q(\tmp_reg_464_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \tmp_reg_464_reg[4] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_61),
        .Q(\tmp_reg_464_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \tmp_reg_464_reg[5] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_60),
        .Q(\tmp_reg_464_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \tmp_reg_464_reg[6] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_59),
        .Q(\tmp_reg_464_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \tmp_reg_464_reg[7] 
       (.C(ap_clk),
        .CE(tmp_1_reg_4740),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_58),
        .Q(\tmp_reg_464_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Convert" *) 
module cam_hls_preprocess_0_0_Convert
   (start_once_reg_reg_0,
    ap_idle,
    D,
    \icmp_ln29_reg_341_reg[0]_0 ,
    \icmp_ln29_reg_341_reg[0]_1 ,
    \icmp_ln29_reg_341_reg[0]_2 ,
    \icmp_ln29_reg_341_reg[0]_3 ,
    E,
    \ap_CS_fsm_reg[0]_0 ,
    \ap_CS_fsm_reg[1]_0 ,
    ce2,
    \icmp_ln29_reg_341_reg[0]_4 ,
    \icmp_ln29_reg_341_pp0_iter1_reg_reg[0]_0 ,
    shiftReg_ce,
    ap_clk,
    SS,
    ap_rst_n,
    int_ap_idle_reg,
    AXIvideo2Mat_U0_ap_start,
    start_for_Downsample_U0_full_n,
    start_once_reg,
    int_ap_idle_reg_0,
    \mOutPtr_reg[1] ,
    Q,
    \mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    \mOutPtr_reg[1]_2 ,
    start_for_Mat2AXIvideo_U0_full_n,
    Convert_U0_ap_start,
    Mat2AXIvideo_U0_img_data_stream_3_V_read,
    dst_img_data_stream_s_empty_n,
    dst_img_data_stream_1_empty_n,
    dst_img_data_stream_3_empty_n,
    dst_img_data_stream_2_empty_n,
    ifm_img_data_stream_s_full_n,
    ifm_img_data_stream_1_full_n,
    ifm_img_data_stream_2_full_n,
    ifm_img_data_stream_3_full_n);
  output start_once_reg_reg_0;
  output ap_idle;
  output [0:0]D;
  output [0:0]\icmp_ln29_reg_341_reg[0]_0 ;
  output [0:0]\icmp_ln29_reg_341_reg[0]_1 ;
  output [0:0]\icmp_ln29_reg_341_reg[0]_2 ;
  output \icmp_ln29_reg_341_reg[0]_3 ;
  output [0:0]E;
  output [0:0]\ap_CS_fsm_reg[0]_0 ;
  output \ap_CS_fsm_reg[1]_0 ;
  output ce2;
  output \icmp_ln29_reg_341_reg[0]_4 ;
  output [0:0]\icmp_ln29_reg_341_pp0_iter1_reg_reg[0]_0 ;
  output shiftReg_ce;
  input ap_clk;
  input [0:0]SS;
  input ap_rst_n;
  input int_ap_idle_reg;
  input AXIvideo2Mat_U0_ap_start;
  input start_for_Downsample_U0_full_n;
  input start_once_reg;
  input int_ap_idle_reg_0;
  input \mOutPtr_reg[1] ;
  input [1:0]Q;
  input [1:0]\mOutPtr_reg[1]_0 ;
  input [1:0]\mOutPtr_reg[1]_1 ;
  input [1:0]\mOutPtr_reg[1]_2 ;
  input start_for_Mat2AXIvideo_U0_full_n;
  input Convert_U0_ap_start;
  input Mat2AXIvideo_U0_img_data_stream_3_V_read;
  input dst_img_data_stream_s_empty_n;
  input dst_img_data_stream_1_empty_n;
  input dst_img_data_stream_3_empty_n;
  input dst_img_data_stream_2_empty_n;
  input ifm_img_data_stream_s_full_n;
  input ifm_img_data_stream_1_full_n;
  input ifm_img_data_stream_2_full_n;
  input ifm_img_data_stream_3_full_n;

  wire AXIvideo2Mat_U0_ap_start;
  wire Convert_U0_ap_start;
  wire [0:0]D;
  wire [0:0]E;
  wire Mat2AXIvideo_U0_img_data_stream_3_V_read;
  wire [1:0]Q;
  wire [0:0]SS;
  wire \ap_CS_fsm[2]_i_2__1_n_1 ;
  wire \ap_CS_fsm[2]_i_4_n_1 ;
  wire \ap_CS_fsm[3]_i_2__0_n_1 ;
  wire ap_CS_fsm_pp0_stage0;
  wire [0:0]\ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state6;
  wire [3:0]ap_NS_fsm;
  wire ap_block_pp0_stage0_subdone;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter00;
  wire ap_enable_reg_pp0_iter0_i_1__0_n_1;
  wire ap_enable_reg_pp0_iter1_i_1__0_n_1;
  wire ap_enable_reg_pp0_iter1_reg_n_1;
  wire ap_enable_reg_pp0_iter2_i_1_n_1;
  wire ap_enable_reg_pp0_iter2_reg_n_1;
  wire ap_idle;
  wire ap_rst_n;
  wire ce2;
  wire dst_img_data_stream_1_empty_n;
  wire dst_img_data_stream_2_empty_n;
  wire dst_img_data_stream_3_empty_n;
  wire dst_img_data_stream_s_empty_n;
  wire [8:0]i_0_reg_255;
  wire i_0_reg_255_0;
  wire [8:0]i_fu_283_p2;
  wire [8:0]i_reg_336;
  wire \i_reg_336[8]_i_2_n_1 ;
  wire icmp_ln29_fu_289_p2;
  wire icmp_ln29_reg_3410;
  wire \icmp_ln29_reg_341[0]_i_3_n_1 ;
  wire [0:0]\icmp_ln29_reg_341_pp0_iter1_reg_reg[0]_0 ;
  wire \icmp_ln29_reg_341_pp0_iter1_reg_reg_n_1_[0] ;
  wire [0:0]\icmp_ln29_reg_341_reg[0]_0 ;
  wire [0:0]\icmp_ln29_reg_341_reg[0]_1 ;
  wire [0:0]\icmp_ln29_reg_341_reg[0]_2 ;
  wire \icmp_ln29_reg_341_reg[0]_3 ;
  wire \icmp_ln29_reg_341_reg[0]_4 ;
  wire \icmp_ln29_reg_341_reg_n_1_[0] ;
  wire ifm_img_data_stream_1_full_n;
  wire ifm_img_data_stream_2_full_n;
  wire ifm_img_data_stream_3_full_n;
  wire ifm_img_data_stream_s_full_n;
  wire int_ap_idle_i_2_n_1;
  wire int_ap_idle_reg;
  wire int_ap_idle_reg_0;
  wire j_0_reg_266;
  wire j_0_reg_2660;
  wire \j_0_reg_266[8]_i_4_n_1 ;
  wire [8:0]j_0_reg_266_reg;
  wire [8:0]j_fu_295_p2;
  wire \mOutPtr_reg[1] ;
  wire [1:0]\mOutPtr_reg[1]_0 ;
  wire [1:0]\mOutPtr_reg[1]_1 ;
  wire [1:0]\mOutPtr_reg[1]_2 ;
  wire q0_reg_i_20_n_1;
  wire shiftReg_ce;
  wire start_for_Downsample_U0_full_n;
  wire start_for_Mat2AXIvideo_U0_full_n;
  wire start_once_reg;
  wire start_once_reg_i_1__1_n_1;
  wire start_once_reg_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hFFFF1F00)) 
    \ap_CS_fsm[0]_i_1__2 
       (.I0(start_once_reg_reg_0),
        .I1(start_for_Mat2AXIvideo_U0_full_n),
        .I2(Convert_U0_ap_start),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(\ap_CS_fsm_reg[1]_0 ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \ap_CS_fsm[0]_i_2__0 
       (.I0(ap_CS_fsm_state2),
        .I1(i_0_reg_255[3]),
        .I2(i_0_reg_255[7]),
        .I3(i_0_reg_255[1]),
        .I4(i_0_reg_255[6]),
        .I5(\ap_CS_fsm[2]_i_4_n_1 ),
        .O(\ap_CS_fsm_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \ap_CS_fsm[1]_i_1__2 
       (.I0(start_once_reg_reg_0),
        .I1(start_for_Mat2AXIvideo_U0_full_n),
        .I2(Convert_U0_ap_start),
        .I3(\ap_CS_fsm_reg[0]_0 ),
        .I4(ap_CS_fsm_state6),
        .O(ap_NS_fsm[1]));
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[2]_i_1__1 
       (.I0(\ap_CS_fsm[2]_i_2__1_n_1 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter00),
        .O(ap_NS_fsm[2]));
  LUT5 #(
    .INIT(32'h11101010)) 
    \ap_CS_fsm[2]_i_2__1 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_1),
        .I1(\ap_CS_fsm[3]_i_2__0_n_1 ),
        .I2(ap_enable_reg_pp0_iter2_reg_n_1),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(icmp_ln29_fu_289_p2),
        .O(\ap_CS_fsm[2]_i_2__1_n_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA8AA)) 
    \ap_CS_fsm[2]_i_3__0 
       (.I0(ap_CS_fsm_state2),
        .I1(i_0_reg_255[3]),
        .I2(i_0_reg_255[7]),
        .I3(i_0_reg_255[1]),
        .I4(i_0_reg_255[6]),
        .I5(\ap_CS_fsm[2]_i_4_n_1 ),
        .O(ap_enable_reg_pp0_iter00));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \ap_CS_fsm[2]_i_4 
       (.I0(i_0_reg_255[2]),
        .I1(i_0_reg_255[5]),
        .I2(i_0_reg_255[8]),
        .I3(i_0_reg_255[0]),
        .I4(i_0_reg_255[4]),
        .O(\ap_CS_fsm[2]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h000000000000AA80)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(icmp_ln29_fu_289_p2),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(ap_enable_reg_pp0_iter2_reg_n_1),
        .I4(\ap_CS_fsm[3]_i_2__0_n_1 ),
        .I5(ap_enable_reg_pp0_iter1_reg_n_1),
        .O(ap_NS_fsm[3]));
  LUT6 #(
    .INIT(64'h0444444444444444)) 
    \ap_CS_fsm[3]_i_2__0 
       (.I0(\icmp_ln29_reg_341_pp0_iter1_reg_reg_n_1_[0] ),
        .I1(ap_enable_reg_pp0_iter2_reg_n_1),
        .I2(ifm_img_data_stream_s_full_n),
        .I3(ifm_img_data_stream_1_full_n),
        .I4(ifm_img_data_stream_2_full_n),
        .I5(ifm_img_data_stream_3_full_n),
        .O(\ap_CS_fsm[3]_i_2__0_n_1 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg[0]_0 ),
        .S(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state6),
        .R(SS));
  LUT5 #(
    .INIT(32'h00A8A8A8)) 
    ap_enable_reg_pp0_iter0_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter00),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(icmp_ln29_fu_289_p2),
        .I4(icmp_ln29_reg_3410),
        .O(ap_enable_reg_pp0_iter0_i_1__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__0_n_1),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0088A0A0)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_enable_reg_pp0_iter1_reg_n_1),
        .I3(icmp_ln29_fu_289_p2),
        .I4(ap_block_pp0_stage0_subdone),
        .O(ap_enable_reg_pp0_iter1_i_1__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1__0_n_1),
        .Q(ap_enable_reg_pp0_iter1_reg_n_1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h888800A0)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter1_reg_n_1),
        .I2(ap_enable_reg_pp0_iter2_reg_n_1),
        .I3(ap_enable_reg_pp0_iter00),
        .I4(ap_block_pp0_stage0_subdone),
        .O(ap_enable_reg_pp0_iter2_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_1),
        .Q(ap_enable_reg_pp0_iter2_reg_n_1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40404000)) 
    \i_0_reg_255[8]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .I2(Convert_U0_ap_start),
        .I3(start_for_Mat2AXIvideo_U0_full_n),
        .I4(start_once_reg_reg_0),
        .O(i_0_reg_255_0));
  FDRE \i_0_reg_255_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_336[0]),
        .Q(i_0_reg_255[0]),
        .R(i_0_reg_255_0));
  FDRE \i_0_reg_255_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_336[1]),
        .Q(i_0_reg_255[1]),
        .R(i_0_reg_255_0));
  FDRE \i_0_reg_255_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_336[2]),
        .Q(i_0_reg_255[2]),
        .R(i_0_reg_255_0));
  FDRE \i_0_reg_255_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_336[3]),
        .Q(i_0_reg_255[3]),
        .R(i_0_reg_255_0));
  FDRE \i_0_reg_255_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_336[4]),
        .Q(i_0_reg_255[4]),
        .R(i_0_reg_255_0));
  FDRE \i_0_reg_255_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_336[5]),
        .Q(i_0_reg_255[5]),
        .R(i_0_reg_255_0));
  FDRE \i_0_reg_255_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_336[6]),
        .Q(i_0_reg_255[6]),
        .R(i_0_reg_255_0));
  FDRE \i_0_reg_255_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_336[7]),
        .Q(i_0_reg_255[7]),
        .R(i_0_reg_255_0));
  FDRE \i_0_reg_255_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_reg_336[8]),
        .Q(i_0_reg_255[8]),
        .R(i_0_reg_255_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_336[0]_i_1 
       (.I0(i_0_reg_255[0]),
        .O(i_fu_283_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_336[1]_i_1 
       (.I0(i_0_reg_255[0]),
        .I1(i_0_reg_255[1]),
        .O(i_fu_283_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_336[2]_i_1 
       (.I0(i_0_reg_255[2]),
        .I1(i_0_reg_255[1]),
        .I2(i_0_reg_255[0]),
        .O(i_fu_283_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_reg_336[3]_i_1 
       (.I0(i_0_reg_255[3]),
        .I1(i_0_reg_255[0]),
        .I2(i_0_reg_255[1]),
        .I3(i_0_reg_255[2]),
        .O(i_fu_283_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_reg_336[4]_i_1 
       (.I0(i_0_reg_255[4]),
        .I1(i_0_reg_255[2]),
        .I2(i_0_reg_255[1]),
        .I3(i_0_reg_255[0]),
        .I4(i_0_reg_255[3]),
        .O(i_fu_283_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_reg_336[5]_i_1 
       (.I0(i_0_reg_255[5]),
        .I1(i_0_reg_255[3]),
        .I2(i_0_reg_255[0]),
        .I3(i_0_reg_255[1]),
        .I4(i_0_reg_255[2]),
        .I5(i_0_reg_255[4]),
        .O(i_fu_283_p2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_336[6]_i_1 
       (.I0(i_0_reg_255[6]),
        .I1(\i_reg_336[8]_i_2_n_1 ),
        .O(i_fu_283_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_336[7]_i_1 
       (.I0(i_0_reg_255[7]),
        .I1(\i_reg_336[8]_i_2_n_1 ),
        .I2(i_0_reg_255[6]),
        .O(i_fu_283_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_reg_336[8]_i_1 
       (.I0(i_0_reg_255[8]),
        .I1(i_0_reg_255[6]),
        .I2(\i_reg_336[8]_i_2_n_1 ),
        .I3(i_0_reg_255[7]),
        .O(i_fu_283_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_reg_336[8]_i_2 
       (.I0(i_0_reg_255[5]),
        .I1(i_0_reg_255[3]),
        .I2(i_0_reg_255[0]),
        .I3(i_0_reg_255[1]),
        .I4(i_0_reg_255[2]),
        .I5(i_0_reg_255[4]),
        .O(\i_reg_336[8]_i_2_n_1 ));
  FDRE \i_reg_336_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_283_p2[0]),
        .Q(i_reg_336[0]),
        .R(1'b0));
  FDRE \i_reg_336_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_283_p2[1]),
        .Q(i_reg_336[1]),
        .R(1'b0));
  FDRE \i_reg_336_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_283_p2[2]),
        .Q(i_reg_336[2]),
        .R(1'b0));
  FDRE \i_reg_336_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_283_p2[3]),
        .Q(i_reg_336[3]),
        .R(1'b0));
  FDRE \i_reg_336_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_283_p2[4]),
        .Q(i_reg_336[4]),
        .R(1'b0));
  FDRE \i_reg_336_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_283_p2[5]),
        .Q(i_reg_336[5]),
        .R(1'b0));
  FDRE \i_reg_336_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_283_p2[6]),
        .Q(i_reg_336[6]),
        .R(1'b0));
  FDRE \i_reg_336_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_283_p2[7]),
        .Q(i_reg_336[7]),
        .R(1'b0));
  FDRE \i_reg_336_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_283_p2[8]),
        .Q(i_reg_336[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \icmp_ln29_reg_341[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_block_pp0_stage0_subdone),
        .O(icmp_ln29_reg_3410));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \icmp_ln29_reg_341[0]_i_2 
       (.I0(\icmp_ln29_reg_341[0]_i_3_n_1 ),
        .I1(j_0_reg_266_reg[0]),
        .I2(j_0_reg_266_reg[1]),
        .I3(j_0_reg_266_reg[2]),
        .O(icmp_ln29_fu_289_p2));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \icmp_ln29_reg_341[0]_i_3 
       (.I0(j_0_reg_266_reg[3]),
        .I1(j_0_reg_266_reg[4]),
        .I2(j_0_reg_266_reg[5]),
        .I3(j_0_reg_266_reg[6]),
        .I4(j_0_reg_266_reg[8]),
        .I5(j_0_reg_266_reg[7]),
        .O(\icmp_ln29_reg_341[0]_i_3_n_1 ));
  FDRE \icmp_ln29_reg_341_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln29_reg_3410),
        .D(\icmp_ln29_reg_341_reg_n_1_[0] ),
        .Q(\icmp_ln29_reg_341_pp0_iter1_reg_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \icmp_ln29_reg_341_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln29_reg_3410),
        .D(icmp_ln29_fu_289_p2),
        .Q(\icmp_ln29_reg_341_reg_n_1_[0] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0101011100000000)) 
    int_ap_idle_i_1
       (.I0(int_ap_idle_i_2_n_1),
        .I1(int_ap_idle_reg),
        .I2(AXIvideo2Mat_U0_ap_start),
        .I3(start_for_Downsample_U0_full_n),
        .I4(start_once_reg),
        .I5(int_ap_idle_reg_0),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    int_ap_idle_i_2
       (.I0(start_once_reg_reg_0),
        .I1(start_for_Mat2AXIvideo_U0_full_n),
        .I2(Convert_U0_ap_start),
        .O(int_ap_idle_i_2_n_1));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    internal_empty_n_i_2
       (.I0(\icmp_ln29_reg_341_reg_n_1_[0] ),
        .I1(ap_enable_reg_pp0_iter1_reg_n_1),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(ap_CS_fsm_pp0_stage0),
        .O(\icmp_ln29_reg_341_reg[0]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    internal_full_n_i_1__3
       (.I0(\mOutPtr_reg[1] ),
        .I1(\icmp_ln29_reg_341_reg_n_1_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_1),
        .I3(icmp_ln29_reg_3410),
        .I4(ap_rst_n),
        .O(\icmp_ln29_reg_341_reg[0]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j_0_reg_266[0]_i_1 
       (.I0(j_0_reg_266_reg[0]),
        .O(j_fu_295_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_0_reg_266[1]_i_1 
       (.I0(j_0_reg_266_reg[0]),
        .I1(j_0_reg_266_reg[1]),
        .O(j_fu_295_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_0_reg_266[2]_i_1 
       (.I0(j_0_reg_266_reg[2]),
        .I1(j_0_reg_266_reg[1]),
        .I2(j_0_reg_266_reg[0]),
        .O(j_fu_295_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_0_reg_266[3]_i_1 
       (.I0(j_0_reg_266_reg[3]),
        .I1(j_0_reg_266_reg[0]),
        .I2(j_0_reg_266_reg[1]),
        .I3(j_0_reg_266_reg[2]),
        .O(j_fu_295_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \j_0_reg_266[4]_i_1 
       (.I0(j_0_reg_266_reg[4]),
        .I1(j_0_reg_266_reg[2]),
        .I2(j_0_reg_266_reg[1]),
        .I3(j_0_reg_266_reg[0]),
        .I4(j_0_reg_266_reg[3]),
        .O(j_fu_295_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \j_0_reg_266[5]_i_1 
       (.I0(j_0_reg_266_reg[5]),
        .I1(j_0_reg_266_reg[3]),
        .I2(j_0_reg_266_reg[0]),
        .I3(j_0_reg_266_reg[1]),
        .I4(j_0_reg_266_reg[2]),
        .I5(j_0_reg_266_reg[4]),
        .O(j_fu_295_p2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \j_0_reg_266[6]_i_1 
       (.I0(j_0_reg_266_reg[6]),
        .I1(\j_0_reg_266[8]_i_4_n_1 ),
        .O(j_fu_295_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_0_reg_266[7]_i_1 
       (.I0(j_0_reg_266_reg[7]),
        .I1(\j_0_reg_266[8]_i_4_n_1 ),
        .I2(j_0_reg_266_reg[6]),
        .O(j_fu_295_p2[7]));
  LUT5 #(
    .INIT(32'hFF7F0000)) 
    \j_0_reg_266[8]_i_1 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(icmp_ln29_fu_289_p2),
        .I4(ap_enable_reg_pp0_iter00),
        .O(j_0_reg_266));
  LUT4 #(
    .INIT(16'h0080)) 
    \j_0_reg_266[8]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_block_pp0_stage0_subdone),
        .I3(icmp_ln29_fu_289_p2),
        .O(j_0_reg_2660));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_0_reg_266[8]_i_3 
       (.I0(j_0_reg_266_reg[8]),
        .I1(j_0_reg_266_reg[6]),
        .I2(\j_0_reg_266[8]_i_4_n_1 ),
        .I3(j_0_reg_266_reg[7]),
        .O(j_fu_295_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \j_0_reg_266[8]_i_4 
       (.I0(j_0_reg_266_reg[5]),
        .I1(j_0_reg_266_reg[3]),
        .I2(j_0_reg_266_reg[0]),
        .I3(j_0_reg_266_reg[1]),
        .I4(j_0_reg_266_reg[2]),
        .I5(j_0_reg_266_reg[4]),
        .O(\j_0_reg_266[8]_i_4_n_1 ));
  FDRE \j_0_reg_266_reg[0] 
       (.C(ap_clk),
        .CE(j_0_reg_2660),
        .D(j_fu_295_p2[0]),
        .Q(j_0_reg_266_reg[0]),
        .R(j_0_reg_266));
  FDRE \j_0_reg_266_reg[1] 
       (.C(ap_clk),
        .CE(j_0_reg_2660),
        .D(j_fu_295_p2[1]),
        .Q(j_0_reg_266_reg[1]),
        .R(j_0_reg_266));
  FDRE \j_0_reg_266_reg[2] 
       (.C(ap_clk),
        .CE(j_0_reg_2660),
        .D(j_fu_295_p2[2]),
        .Q(j_0_reg_266_reg[2]),
        .R(j_0_reg_266));
  FDRE \j_0_reg_266_reg[3] 
       (.C(ap_clk),
        .CE(j_0_reg_2660),
        .D(j_fu_295_p2[3]),
        .Q(j_0_reg_266_reg[3]),
        .R(j_0_reg_266));
  FDRE \j_0_reg_266_reg[4] 
       (.C(ap_clk),
        .CE(j_0_reg_2660),
        .D(j_fu_295_p2[4]),
        .Q(j_0_reg_266_reg[4]),
        .R(j_0_reg_266));
  FDRE \j_0_reg_266_reg[5] 
       (.C(ap_clk),
        .CE(j_0_reg_2660),
        .D(j_fu_295_p2[5]),
        .Q(j_0_reg_266_reg[5]),
        .R(j_0_reg_266));
  FDRE \j_0_reg_266_reg[6] 
       (.C(ap_clk),
        .CE(j_0_reg_2660),
        .D(j_fu_295_p2[6]),
        .Q(j_0_reg_266_reg[6]),
        .R(j_0_reg_266));
  FDRE \j_0_reg_266_reg[7] 
       (.C(ap_clk),
        .CE(j_0_reg_2660),
        .D(j_fu_295_p2[7]),
        .Q(j_0_reg_266_reg[7]),
        .R(j_0_reg_266));
  FDRE \j_0_reg_266_reg[8] 
       (.C(ap_clk),
        .CE(j_0_reg_2660),
        .D(j_fu_295_p2[8]),
        .Q(j_0_reg_266_reg[8]),
        .R(j_0_reg_266));
  LUT2 #(
    .INIT(4'h6)) 
    \mOutPtr[1]_i_1__10 
       (.I0(shiftReg_ce),
        .I1(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .O(\icmp_ln29_reg_341_pp0_iter1_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h1000EFFFEFFF1000)) 
    \mOutPtr[1]_i_1__6 
       (.I0(\mOutPtr_reg[1] ),
        .I1(\icmp_ln29_reg_341_reg_n_1_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_1),
        .I3(icmp_ln29_reg_3410),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D));
  LUT6 #(
    .INIT(64'h1000EFFFEFFF1000)) 
    \mOutPtr[1]_i_1__7 
       (.I0(\mOutPtr_reg[1] ),
        .I1(\icmp_ln29_reg_341_reg_n_1_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_1),
        .I3(icmp_ln29_reg_3410),
        .I4(\mOutPtr_reg[1]_0 [0]),
        .I5(\mOutPtr_reg[1]_0 [1]),
        .O(\icmp_ln29_reg_341_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h1000EFFFEFFF1000)) 
    \mOutPtr[1]_i_1__8 
       (.I0(\mOutPtr_reg[1] ),
        .I1(\icmp_ln29_reg_341_reg_n_1_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_1),
        .I3(icmp_ln29_reg_3410),
        .I4(\mOutPtr_reg[1]_1 [0]),
        .I5(\mOutPtr_reg[1]_1 [1]),
        .O(\icmp_ln29_reg_341_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \mOutPtr[1]_i_1__9 
       (.I0(icmp_ln29_reg_3410),
        .I1(ap_enable_reg_pp0_iter1_reg_n_1),
        .I2(\icmp_ln29_reg_341_reg_n_1_[0] ),
        .I3(\mOutPtr_reg[1] ),
        .O(E));
  LUT6 #(
    .INIT(64'h1000EFFFEFFF1000)) 
    \mOutPtr[1]_i_2__3 
       (.I0(\mOutPtr_reg[1] ),
        .I1(\icmp_ln29_reg_341_reg_n_1_[0] ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_1),
        .I3(icmp_ln29_reg_3410),
        .I4(\mOutPtr_reg[1]_2 [0]),
        .I5(\mOutPtr_reg[1]_2 [1]),
        .O(\icmp_ln29_reg_341_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h8)) 
    q0_reg_i_1
       (.I0(icmp_ln29_reg_3410),
        .I1(ap_enable_reg_pp0_iter1_reg_n_1),
        .O(ce2));
  LUT6 #(
    .INIT(64'h4000000055555555)) 
    q0_reg_i_19
       (.I0(\ap_CS_fsm[3]_i_2__0_n_1 ),
        .I1(dst_img_data_stream_s_empty_n),
        .I2(dst_img_data_stream_1_empty_n),
        .I3(dst_img_data_stream_3_empty_n),
        .I4(dst_img_data_stream_2_empty_n),
        .I5(q0_reg_i_20_n_1),
        .O(ap_block_pp0_stage0_subdone));
  LUT3 #(
    .INIT(8'h40)) 
    q0_reg_i_2
       (.I0(\icmp_ln29_reg_341_pp0_iter1_reg_reg_n_1_[0] ),
        .I1(ap_enable_reg_pp0_iter2_reg_n_1),
        .I2(ap_block_pp0_stage0_subdone),
        .O(shiftReg_ce));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    q0_reg_i_20
       (.I0(ap_enable_reg_pp0_iter1_reg_n_1),
        .I1(\icmp_ln29_reg_341_reg_n_1_[0] ),
        .O(q0_reg_i_20_n_1));
  LUT4 #(
    .INIT(16'h5540)) 
    start_once_reg_i_1__1
       (.I0(\ap_CS_fsm_reg[1]_0 ),
        .I1(Convert_U0_ap_start),
        .I2(start_for_Mat2AXIvideo_U0_full_n),
        .I3(start_once_reg_reg_0),
        .O(start_once_reg_i_1__1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1__1_n_1),
        .Q(start_once_reg_reg_0),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "Downsample" *) 
module cam_hls_preprocess_0_0_Downsample
   (start_once_reg_reg_0,
    E,
    \ap_CS_fsm_reg[2]_0 ,
    ap_rst_n_0,
    Q,
    \ap_CS_fsm_reg[1]_0 ,
    start_once_reg_reg_1,
    \and_ln50_2_reg_358_reg[0]_0 ,
    ap_clk,
    SS,
    ap_rst_n,
    AXIvideo2Mat_U0_img_data_stream_3_V_write,
    start_for_Convert_U0_full_n,
    Downsample_U0_ap_start,
    src_img_data_stream_s_empty_n,
    src_img_data_stream_1_empty_n,
    src_img_data_stream_3_empty_n,
    src_img_data_stream_2_empty_n,
    dst_img_data_stream_3_full_n,
    dst_img_data_stream_2_full_n,
    dst_img_data_stream_1_full_n,
    dst_img_data_stream_s_full_n);
  output start_once_reg_reg_0;
  output [0:0]E;
  output \ap_CS_fsm_reg[2]_0 ;
  output ap_rst_n_0;
  output [0:0]Q;
  output \ap_CS_fsm_reg[1]_0 ;
  output start_once_reg_reg_1;
  output \and_ln50_2_reg_358_reg[0]_0 ;
  input ap_clk;
  input [0:0]SS;
  input ap_rst_n;
  input AXIvideo2Mat_U0_img_data_stream_3_V_write;
  input start_for_Convert_U0_full_n;
  input Downsample_U0_ap_start;
  input src_img_data_stream_s_empty_n;
  input src_img_data_stream_1_empty_n;
  input src_img_data_stream_3_empty_n;
  input src_img_data_stream_2_empty_n;
  input dst_img_data_stream_3_full_n;
  input dst_img_data_stream_2_full_n;
  input dst_img_data_stream_1_full_n;
  input dst_img_data_stream_s_full_n;

  wire AXIvideo2Mat_U0_img_data_stream_3_V_write;
  wire Downsample_U0_ap_start;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SS;
  wire and_ln50_1_reg_344;
  wire \and_ln50_1_reg_344[0]_i_1_n_1 ;
  wire \and_ln50_1_reg_344[0]_i_2_n_1 ;
  wire \and_ln50_1_reg_344[0]_i_3_n_1 ;
  wire \and_ln50_1_reg_344[0]_i_4_n_1 ;
  wire and_ln50_2_fu_320_p2;
  wire and_ln50_2_reg_358;
  wire and_ln50_2_reg_3580;
  wire \and_ln50_2_reg_358[0]_i_1_n_1 ;
  wire \and_ln50_2_reg_358_reg[0]_0 ;
  wire and_ln51_reg_362;
  wire \and_ln51_reg_362[0]_i_1_n_1 ;
  wire \and_ln51_reg_362[0]_i_3_n_1 ;
  wire \and_ln51_reg_362[0]_i_4_n_1 ;
  wire \and_ln51_reg_362[0]_i_5_n_1 ;
  wire \and_ln51_reg_362[0]_i_6_n_1 ;
  wire \and_ln51_reg_362[0]_i_7_n_1 ;
  wire \ap_CS_fsm[2]_i_3_n_1 ;
  wire \ap_CS_fsm[3]_i_2_n_1 ;
  wire \ap_CS_fsm[3]_i_3_n_1 ;
  wire \ap_CS_fsm[3]_i_4_n_1 ;
  wire \ap_CS_fsm[3]_i_5_n_1 ;
  wire ap_CS_fsm_pp0_stage0;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg[2]_0 ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state5;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_1__1_n_1;
  wire ap_enable_reg_pp0_iter1_i_1_n_1;
  wire ap_enable_reg_pp0_iter1_reg_n_1;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire dst_img_data_stream_1_full_n;
  wire dst_img_data_stream_2_full_n;
  wire dst_img_data_stream_3_full_n;
  wire dst_img_data_stream_s_full_n;
  wire [9:0]i_0_reg_230;
  wire i_0_reg_230_0;
  wire [9:0]i_fu_262_p2;
  wire [9:0]i_reg_339;
  wire \i_reg_339[9]_i_2_n_1 ;
  wire j_0_reg_241;
  wire j_0_reg_2410;
  wire \j_0_reg_241[10]_i_5_n_1 ;
  wire \j_0_reg_241[7]_i_2_n_1 ;
  wire [10:0]j_0_reg_241_reg;
  wire [10:0]j_fu_296_p2;
  wire p_1_in;
  wire src_img_data_stream_1_empty_n;
  wire src_img_data_stream_2_empty_n;
  wire src_img_data_stream_3_empty_n;
  wire src_img_data_stream_s_empty_n;
  wire start_for_Convert_U0_full_n;
  wire start_once_reg_i_1__0_n_1;
  wire start_once_reg_reg_0;
  wire start_once_reg_reg_1;
  wire trunc_ln44_reg_330;

  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \SRL_SIG[0][7]_i_1__2 
       (.I0(and_ln50_2_reg_358),
        .I1(and_ln51_reg_362),
        .I2(ap_enable_reg_pp0_iter1_reg_n_1),
        .I3(\ap_CS_fsm[3]_i_2_n_1 ),
        .I4(ap_CS_fsm_pp0_stage0),
        .O(\and_ln50_2_reg_358_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h3374FFFF33740000)) 
    \and_ln50_1_reg_344[0]_i_1 
       (.I0(\and_ln50_1_reg_344[0]_i_2_n_1 ),
        .I1(i_0_reg_230[9]),
        .I2(\and_ln50_1_reg_344[0]_i_3_n_1 ),
        .I3(\and_ln50_1_reg_344[0]_i_4_n_1 ),
        .I4(p_1_in),
        .I5(and_ln50_1_reg_344),
        .O(\and_ln50_1_reg_344[0]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'h8888888880808000)) 
    \and_ln50_1_reg_344[0]_i_2 
       (.I0(i_0_reg_230[6]),
        .I1(i_0_reg_230[5]),
        .I2(i_0_reg_230[3]),
        .I3(i_0_reg_230[1]),
        .I4(i_0_reg_230[2]),
        .I5(i_0_reg_230[4]),
        .O(\and_ln50_1_reg_344[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hF000F000F0008000)) 
    \and_ln50_1_reg_344[0]_i_3 
       (.I0(i_0_reg_230[1]),
        .I1(i_0_reg_230[2]),
        .I2(i_0_reg_230[6]),
        .I3(i_0_reg_230[5]),
        .I4(i_0_reg_230[4]),
        .I5(i_0_reg_230[3]),
        .O(\and_ln50_1_reg_344[0]_i_3_n_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \and_ln50_1_reg_344[0]_i_4 
       (.I0(i_0_reg_230[7]),
        .I1(i_0_reg_230[8]),
        .O(\and_ln50_1_reg_344[0]_i_4_n_1 ));
  FDRE \and_ln50_1_reg_344_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\and_ln50_1_reg_344[0]_i_1_n_1 ),
        .Q(and_ln50_1_reg_344),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \and_ln50_2_reg_358[0]_i_1 
       (.I0(and_ln50_2_fu_320_p2),
        .I1(and_ln50_2_reg_3580),
        .I2(and_ln50_2_reg_358),
        .O(\and_ln50_2_reg_358[0]_i_1_n_1 ));
  FDRE \and_ln50_2_reg_358_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\and_ln50_2_reg_358[0]_i_1_n_1 ),
        .Q(and_ln50_2_reg_358),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \and_ln51_reg_362[0]_i_1 
       (.I0(j_0_reg_241_reg[0]),
        .I1(trunc_ln44_reg_330),
        .I2(and_ln50_2_reg_3580),
        .I3(and_ln50_2_fu_320_p2),
        .I4(and_ln51_reg_362),
        .O(\and_ln51_reg_362[0]_i_1_n_1 ));
  LUT3 #(
    .INIT(8'h0B)) 
    \and_ln51_reg_362[0]_i_2 
       (.I0(\and_ln51_reg_362[0]_i_3_n_1 ),
        .I1(j_0_reg_241_reg[10]),
        .I2(\and_ln51_reg_362[0]_i_4_n_1 ),
        .O(and_ln50_2_fu_320_p2));
  LUT6 #(
    .INIT(64'h0001000100000001)) 
    \and_ln51_reg_362[0]_i_3 
       (.I0(j_0_reg_241_reg[8]),
        .I1(j_0_reg_241_reg[9]),
        .I2(j_0_reg_241_reg[6]),
        .I3(j_0_reg_241_reg[7]),
        .I4(j_0_reg_241_reg[5]),
        .I5(\and_ln51_reg_362[0]_i_5_n_1 ),
        .O(\and_ln51_reg_362[0]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'h0000000EFFFFFFFF)) 
    \and_ln51_reg_362[0]_i_4 
       (.I0(\and_ln51_reg_362[0]_i_6_n_1 ),
        .I1(\and_ln51_reg_362[0]_i_7_n_1 ),
        .I2(j_0_reg_241_reg[10]),
        .I3(j_0_reg_241_reg[9]),
        .I4(j_0_reg_241_reg[8]),
        .I5(and_ln50_1_reg_344),
        .O(\and_ln51_reg_362[0]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \and_ln51_reg_362[0]_i_5 
       (.I0(j_0_reg_241_reg[2]),
        .I1(j_0_reg_241_reg[1]),
        .I2(j_0_reg_241_reg[4]),
        .I3(j_0_reg_241_reg[3]),
        .O(\and_ln51_reg_362[0]_i_5_n_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \and_ln51_reg_362[0]_i_6 
       (.I0(j_0_reg_241_reg[6]),
        .I1(j_0_reg_241_reg[7]),
        .O(\and_ln51_reg_362[0]_i_6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00007FFF)) 
    \and_ln51_reg_362[0]_i_7 
       (.I0(j_0_reg_241_reg[3]),
        .I1(j_0_reg_241_reg[4]),
        .I2(j_0_reg_241_reg[1]),
        .I3(j_0_reg_241_reg[2]),
        .I4(j_0_reg_241_reg[5]),
        .O(\and_ln51_reg_362[0]_i_7_n_1 ));
  FDRE \and_ln51_reg_362_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\and_ln51_reg_362[0]_i_1_n_1 ),
        .Q(and_ln51_reg_362),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hFFFF1F00)) 
    \ap_CS_fsm[0]_i_1__1 
       (.I0(start_once_reg_reg_0),
        .I1(start_for_Convert_U0_full_n),
        .I2(Downsample_U0_ap_start),
        .I3(Q),
        .I4(\ap_CS_fsm_reg[1]_0 ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \ap_CS_fsm[0]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(i_0_reg_230[8]),
        .I2(i_0_reg_230[3]),
        .I3(i_0_reg_230[2]),
        .I4(i_0_reg_230[1]),
        .I5(\ap_CS_fsm[2]_i_3_n_1 ),
        .O(\ap_CS_fsm_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \ap_CS_fsm[1]_i_1__1 
       (.I0(start_once_reg_reg_0),
        .I1(start_for_Convert_U0_full_n),
        .I2(Downsample_U0_ap_start),
        .I3(Q),
        .I4(ap_CS_fsm_state5),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hFEFFF0F0)) 
    \ap_CS_fsm[2]_i_1__2 
       (.I0(\ap_CS_fsm[3]_i_2_n_1 ),
        .I1(\ap_CS_fsm[3]_i_3_n_1 ),
        .I2(p_1_in),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \ap_CS_fsm[2]_i_2__0 
       (.I0(ap_CS_fsm_state2),
        .I1(i_0_reg_230[8]),
        .I2(i_0_reg_230[3]),
        .I3(i_0_reg_230[2]),
        .I4(i_0_reg_230[1]),
        .I5(\ap_CS_fsm[2]_i_3_n_1 ),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(i_0_reg_230[4]),
        .I1(i_0_reg_230[6]),
        .I2(i_0_reg_230[0]),
        .I3(i_0_reg_230[7]),
        .I4(i_0_reg_230[9]),
        .I5(i_0_reg_230[5]),
        .O(\ap_CS_fsm[2]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \ap_CS_fsm[3]_i_1__2 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\ap_CS_fsm[3]_i_2_n_1 ),
        .I2(\ap_CS_fsm[3]_i_3_n_1 ),
        .I3(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_1),
        .I1(\ap_CS_fsm[3]_i_4_n_1 ),
        .I2(src_img_data_stream_s_empty_n),
        .I3(src_img_data_stream_1_empty_n),
        .I4(src_img_data_stream_3_empty_n),
        .I5(src_img_data_stream_2_empty_n),
        .O(\ap_CS_fsm[3]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \ap_CS_fsm[3]_i_3 
       (.I0(j_0_reg_241_reg[6]),
        .I1(j_0_reg_241_reg[10]),
        .I2(j_0_reg_241_reg[9]),
        .I3(j_0_reg_241_reg[5]),
        .I4(j_0_reg_241_reg[8]),
        .I5(\ap_CS_fsm[3]_i_5_n_1 ),
        .O(\ap_CS_fsm[3]_i_3_n_1 ));
  LUT6 #(
    .INIT(64'hF777777777777777)) 
    \ap_CS_fsm[3]_i_4 
       (.I0(and_ln50_2_reg_358),
        .I1(and_ln51_reg_362),
        .I2(dst_img_data_stream_3_full_n),
        .I3(dst_img_data_stream_2_full_n),
        .I4(dst_img_data_stream_1_full_n),
        .I5(dst_img_data_stream_s_full_n),
        .O(\ap_CS_fsm[3]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_CS_fsm[3]_i_5 
       (.I0(j_0_reg_241_reg[0]),
        .I1(j_0_reg_241_reg[7]),
        .I2(j_0_reg_241_reg[3]),
        .I3(j_0_reg_241_reg[4]),
        .I4(j_0_reg_241_reg[1]),
        .I5(j_0_reg_241_reg[2]),
        .O(\ap_CS_fsm[3]_i_5_n_1 ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q),
        .S(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state5),
        .R(SS));
  LUT6 #(
    .INIT(64'hFD00FD00FD000000)) 
    ap_enable_reg_pp0_iter0_i_1__1
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\ap_CS_fsm[3]_i_2_n_1 ),
        .I2(\ap_CS_fsm[3]_i_3_n_1 ),
        .I3(ap_rst_n),
        .I4(p_1_in),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_1__1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_i_1__1_n_1),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00008888A000A000)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter1_reg_n_1),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(\ap_CS_fsm[3]_i_3_n_1 ),
        .I4(p_1_in),
        .I5(\ap_CS_fsm[3]_i_2_n_1 ),
        .O(ap_enable_reg_pp0_iter1_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_1),
        .Q(ap_enable_reg_pp0_iter1_reg_n_1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40404000)) 
    \i_0_reg_230[9]_i_1 
       (.I0(ap_CS_fsm_state5),
        .I1(Q),
        .I2(Downsample_U0_ap_start),
        .I3(start_for_Convert_U0_full_n),
        .I4(start_once_reg_reg_0),
        .O(i_0_reg_230_0));
  FDRE \i_0_reg_230_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_339[0]),
        .Q(i_0_reg_230[0]),
        .R(i_0_reg_230_0));
  FDRE \i_0_reg_230_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_339[1]),
        .Q(i_0_reg_230[1]),
        .R(i_0_reg_230_0));
  FDRE \i_0_reg_230_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_339[2]),
        .Q(i_0_reg_230[2]),
        .R(i_0_reg_230_0));
  FDRE \i_0_reg_230_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_339[3]),
        .Q(i_0_reg_230[3]),
        .R(i_0_reg_230_0));
  FDRE \i_0_reg_230_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_339[4]),
        .Q(i_0_reg_230[4]),
        .R(i_0_reg_230_0));
  FDRE \i_0_reg_230_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_339[5]),
        .Q(i_0_reg_230[5]),
        .R(i_0_reg_230_0));
  FDRE \i_0_reg_230_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_339[6]),
        .Q(i_0_reg_230[6]),
        .R(i_0_reg_230_0));
  FDRE \i_0_reg_230_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_339[7]),
        .Q(i_0_reg_230[7]),
        .R(i_0_reg_230_0));
  FDRE \i_0_reg_230_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_339[8]),
        .Q(i_0_reg_230[8]),
        .R(i_0_reg_230_0));
  FDRE \i_0_reg_230_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state5),
        .D(i_reg_339[9]),
        .Q(i_0_reg_230[9]),
        .R(i_0_reg_230_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_339[0]_i_1 
       (.I0(i_0_reg_230[0]),
        .O(i_fu_262_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_339[1]_i_1 
       (.I0(i_0_reg_230[0]),
        .I1(i_0_reg_230[1]),
        .O(i_fu_262_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_339[2]_i_1 
       (.I0(i_0_reg_230[2]),
        .I1(i_0_reg_230[1]),
        .I2(i_0_reg_230[0]),
        .O(i_fu_262_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_reg_339[3]_i_1 
       (.I0(i_0_reg_230[3]),
        .I1(i_0_reg_230[0]),
        .I2(i_0_reg_230[1]),
        .I3(i_0_reg_230[2]),
        .O(i_fu_262_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_reg_339[4]_i_1 
       (.I0(i_0_reg_230[4]),
        .I1(i_0_reg_230[2]),
        .I2(i_0_reg_230[1]),
        .I3(i_0_reg_230[0]),
        .I4(i_0_reg_230[3]),
        .O(i_fu_262_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_reg_339[5]_i_1 
       (.I0(i_0_reg_230[5]),
        .I1(i_0_reg_230[4]),
        .I2(i_0_reg_230[3]),
        .I3(i_0_reg_230[0]),
        .I4(i_0_reg_230[1]),
        .I5(i_0_reg_230[2]),
        .O(i_fu_262_p2[5]));
  LUT3 #(
    .INIT(8'h6A)) 
    \i_reg_339[6]_i_1 
       (.I0(i_0_reg_230[6]),
        .I1(\i_reg_339[9]_i_2_n_1 ),
        .I2(i_0_reg_230[5]),
        .O(i_fu_262_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_reg_339[7]_i_1 
       (.I0(i_0_reg_230[7]),
        .I1(i_0_reg_230[5]),
        .I2(i_0_reg_230[6]),
        .I3(\i_reg_339[9]_i_2_n_1 ),
        .O(i_fu_262_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_reg_339[8]_i_1 
       (.I0(i_0_reg_230[8]),
        .I1(\i_reg_339[9]_i_2_n_1 ),
        .I2(i_0_reg_230[6]),
        .I3(i_0_reg_230[5]),
        .I4(i_0_reg_230[7]),
        .O(i_fu_262_p2[8]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_reg_339[9]_i_1 
       (.I0(i_0_reg_230[9]),
        .I1(i_0_reg_230[7]),
        .I2(i_0_reg_230[5]),
        .I3(i_0_reg_230[6]),
        .I4(\i_reg_339[9]_i_2_n_1 ),
        .I5(i_0_reg_230[8]),
        .O(i_fu_262_p2[9]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \i_reg_339[9]_i_2 
       (.I0(i_0_reg_230[2]),
        .I1(i_0_reg_230[1]),
        .I2(i_0_reg_230[0]),
        .I3(i_0_reg_230[3]),
        .I4(i_0_reg_230[4]),
        .O(\i_reg_339[9]_i_2_n_1 ));
  FDRE \i_reg_339_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_262_p2[0]),
        .Q(i_reg_339[0]),
        .R(1'b0));
  FDRE \i_reg_339_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_262_p2[1]),
        .Q(i_reg_339[1]),
        .R(1'b0));
  FDRE \i_reg_339_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_262_p2[2]),
        .Q(i_reg_339[2]),
        .R(1'b0));
  FDRE \i_reg_339_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_262_p2[3]),
        .Q(i_reg_339[3]),
        .R(1'b0));
  FDRE \i_reg_339_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_262_p2[4]),
        .Q(i_reg_339[4]),
        .R(1'b0));
  FDRE \i_reg_339_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_262_p2[5]),
        .Q(i_reg_339[5]),
        .R(1'b0));
  FDRE \i_reg_339_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_262_p2[6]),
        .Q(i_reg_339[6]),
        .R(1'b0));
  FDRE \i_reg_339_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_262_p2[7]),
        .Q(i_reg_339[7]),
        .R(1'b0));
  FDRE \i_reg_339_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_262_p2[8]),
        .Q(i_reg_339[8]),
        .R(1'b0));
  FDRE \i_reg_339_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_fu_262_p2[9]),
        .Q(i_reg_339[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    int_ap_idle_i_3
       (.I0(start_once_reg_reg_0),
        .I1(start_for_Convert_U0_full_n),
        .I2(Downsample_U0_ap_start),
        .O(start_once_reg_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    internal_full_n_i_1__0
       (.I0(\ap_CS_fsm_reg[2]_0 ),
        .I1(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I2(ap_rst_n),
        .O(ap_rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j_0_reg_241[0]_i_1 
       (.I0(j_0_reg_241_reg[0]),
        .O(j_fu_296_p2[0]));
  LUT3 #(
    .INIT(8'h2A)) 
    \j_0_reg_241[10]_i_1 
       (.I0(p_1_in),
        .I1(and_ln50_2_reg_3580),
        .I2(ap_enable_reg_pp0_iter0),
        .O(j_0_reg_241));
  LUT2 #(
    .INIT(4'h8)) 
    \j_0_reg_241[10]_i_2 
       (.I0(ap_enable_reg_pp0_iter0),
        .I1(and_ln50_2_reg_3580),
        .O(j_0_reg_2410));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \j_0_reg_241[10]_i_3 
       (.I0(j_0_reg_241_reg[10]),
        .I1(j_0_reg_241_reg[8]),
        .I2(j_0_reg_241_reg[6]),
        .I3(j_0_reg_241_reg[7]),
        .I4(\j_0_reg_241[10]_i_5_n_1 ),
        .I5(j_0_reg_241_reg[9]),
        .O(j_fu_296_p2[10]));
  LUT3 #(
    .INIT(8'h08)) 
    \j_0_reg_241[10]_i_4 
       (.I0(\ap_CS_fsm[3]_i_3_n_1 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(\ap_CS_fsm[3]_i_2_n_1 ),
        .O(and_ln50_2_reg_3580));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \j_0_reg_241[10]_i_5 
       (.I0(j_0_reg_241_reg[5]),
        .I1(j_0_reg_241_reg[3]),
        .I2(j_0_reg_241_reg[4]),
        .I3(j_0_reg_241_reg[1]),
        .I4(j_0_reg_241_reg[0]),
        .I5(j_0_reg_241_reg[2]),
        .O(\j_0_reg_241[10]_i_5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_0_reg_241[1]_i_1 
       (.I0(j_0_reg_241_reg[0]),
        .I1(j_0_reg_241_reg[1]),
        .O(j_fu_296_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_0_reg_241[2]_i_1 
       (.I0(j_0_reg_241_reg[2]),
        .I1(j_0_reg_241_reg[1]),
        .I2(j_0_reg_241_reg[0]),
        .O(j_fu_296_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \j_0_reg_241[3]_i_1 
       (.I0(j_0_reg_241_reg[1]),
        .I1(j_0_reg_241_reg[0]),
        .I2(j_0_reg_241_reg[2]),
        .I3(j_0_reg_241_reg[3]),
        .O(j_fu_296_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \j_0_reg_241[4]_i_1 
       (.I0(j_0_reg_241_reg[4]),
        .I1(j_0_reg_241_reg[1]),
        .I2(j_0_reg_241_reg[0]),
        .I3(j_0_reg_241_reg[2]),
        .I4(j_0_reg_241_reg[3]),
        .O(j_fu_296_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \j_0_reg_241[5]_i_1 
       (.I0(j_0_reg_241_reg[3]),
        .I1(j_0_reg_241_reg[4]),
        .I2(j_0_reg_241_reg[1]),
        .I3(j_0_reg_241_reg[0]),
        .I4(j_0_reg_241_reg[2]),
        .I5(j_0_reg_241_reg[5]),
        .O(j_fu_296_p2[5]));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \j_0_reg_241[6]_i_1 
       (.I0(j_0_reg_241_reg[6]),
        .I1(\j_0_reg_241[7]_i_2_n_1 ),
        .I2(j_0_reg_241_reg[4]),
        .I3(j_0_reg_241_reg[3]),
        .I4(j_0_reg_241_reg[5]),
        .O(j_fu_296_p2[6]));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \j_0_reg_241[7]_i_1 
       (.I0(j_0_reg_241_reg[7]),
        .I1(j_0_reg_241_reg[5]),
        .I2(j_0_reg_241_reg[3]),
        .I3(j_0_reg_241_reg[4]),
        .I4(\j_0_reg_241[7]_i_2_n_1 ),
        .I5(j_0_reg_241_reg[6]),
        .O(j_fu_296_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \j_0_reg_241[7]_i_2 
       (.I0(j_0_reg_241_reg[1]),
        .I1(j_0_reg_241_reg[0]),
        .I2(j_0_reg_241_reg[2]),
        .O(\j_0_reg_241[7]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_0_reg_241[8]_i_1 
       (.I0(j_0_reg_241_reg[8]),
        .I1(j_0_reg_241_reg[6]),
        .I2(j_0_reg_241_reg[7]),
        .I3(\j_0_reg_241[10]_i_5_n_1 ),
        .O(j_fu_296_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \j_0_reg_241[9]_i_1 
       (.I0(j_0_reg_241_reg[9]),
        .I1(\j_0_reg_241[10]_i_5_n_1 ),
        .I2(j_0_reg_241_reg[7]),
        .I3(j_0_reg_241_reg[6]),
        .I4(j_0_reg_241_reg[8]),
        .O(j_fu_296_p2[9]));
  FDRE \j_0_reg_241_reg[0] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[0]),
        .Q(j_0_reg_241_reg[0]),
        .R(j_0_reg_241));
  FDRE \j_0_reg_241_reg[10] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[10]),
        .Q(j_0_reg_241_reg[10]),
        .R(j_0_reg_241));
  FDRE \j_0_reg_241_reg[1] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[1]),
        .Q(j_0_reg_241_reg[1]),
        .R(j_0_reg_241));
  FDRE \j_0_reg_241_reg[2] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[2]),
        .Q(j_0_reg_241_reg[2]),
        .R(j_0_reg_241));
  FDRE \j_0_reg_241_reg[3] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[3]),
        .Q(j_0_reg_241_reg[3]),
        .R(j_0_reg_241));
  FDRE \j_0_reg_241_reg[4] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[4]),
        .Q(j_0_reg_241_reg[4]),
        .R(j_0_reg_241));
  FDRE \j_0_reg_241_reg[5] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[5]),
        .Q(j_0_reg_241_reg[5]),
        .R(j_0_reg_241));
  FDRE \j_0_reg_241_reg[6] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[6]),
        .Q(j_0_reg_241_reg[6]),
        .R(j_0_reg_241));
  FDRE \j_0_reg_241_reg[7] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[7]),
        .Q(j_0_reg_241_reg[7]),
        .R(j_0_reg_241));
  FDRE \j_0_reg_241_reg[8] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[8]),
        .Q(j_0_reg_241_reg[8]),
        .R(j_0_reg_241));
  FDRE \j_0_reg_241_reg[9] 
       (.C(ap_clk),
        .CE(j_0_reg_2410),
        .D(j_fu_296_p2[9]),
        .Q(j_0_reg_241_reg[9]),
        .R(j_0_reg_241));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \mOutPtr[1]_i_1__0 
       (.I0(\ap_CS_fsm_reg[2]_0 ),
        .I1(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \mOutPtr[1]_i_3__1 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(\ap_CS_fsm[3]_i_2_n_1 ),
        .I2(ap_enable_reg_pp0_iter1_reg_n_1),
        .O(\ap_CS_fsm_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h00F8)) 
    start_once_reg_i_1__0
       (.I0(Downsample_U0_ap_start),
        .I1(start_for_Convert_U0_full_n),
        .I2(start_once_reg_reg_0),
        .I3(\ap_CS_fsm_reg[1]_0 ),
        .O(start_once_reg_i_1__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    start_once_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(start_once_reg_i_1__0_n_1),
        .Q(start_once_reg_reg_0),
        .R(SS));
  FDRE \trunc_ln44_reg_330_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state2),
        .D(i_0_reg_230[0]),
        .Q(trunc_ln44_reg_330),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Mat2AXIvideo" *) 
module cam_hls_preprocess_0_0_Mat2AXIvideo
   (SS,
    Q,
    Mat2AXIvideo_U0_img_data_stream_3_V_read,
    internal_empty_n_reg,
    Mat2AXIvideo_U0_ap_ready,
    ap_rst_n_0,
    \odata_reg[32] ,
    \ireg_reg[32] ,
    ap_rst_n_1,
    video_dst_TKEEP,
    video_dst_TUSER,
    video_dst_TLAST,
    ap_clk,
    ap_rst_n,
    Mat2AXIvideo_U0_ap_start,
    video_dst_TREADY,
    shiftReg_ce,
    \ireg_reg[32]_0 ,
    D,
    \odata_reg[30] );
  output [0:0]SS;
  output [0:0]Q;
  output Mat2AXIvideo_U0_img_data_stream_3_V_read;
  output internal_empty_n_reg;
  output Mat2AXIvideo_U0_ap_ready;
  output ap_rst_n_0;
  output [28:0]\odata_reg[32] ;
  output [28:0]\ireg_reg[32] ;
  output ap_rst_n_1;
  output [0:0]video_dst_TKEEP;
  output [0:0]video_dst_TUSER;
  output [0:0]video_dst_TLAST;
  input ap_clk;
  input ap_rst_n;
  input Mat2AXIvideo_U0_ap_start;
  input video_dst_TREADY;
  input shiftReg_ce;
  input \ireg_reg[32]_0 ;
  input [27:0]D;
  input [27:0]\odata_reg[30] ;

  wire [27:0]D;
  wire Mat2AXIvideo_U0_ap_ready;
  wire Mat2AXIvideo_U0_ap_start;
  wire Mat2AXIvideo_U0_img_data_stream_3_V_read;
  wire [0:0]Q;
  wire [0:0]SS;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state6;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg_n_1;
  wire ap_enable_reg_pp0_iter2_reg_n_1;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire \axi_last_V_reg_297[0]_i_2_n_1 ;
  wire \axi_last_V_reg_297_reg_n_1_[0] ;
  wire [8:0]i_V_fu_226_p2;
  wire [8:0]i_V_reg_283;
  wire i_V_reg_2830;
  wire \i_V_reg_283[8]_i_3_n_1 ;
  wire icmp_ln126_fu_232_p2;
  wire icmp_ln126_reg_2880;
  wire \icmp_ln126_reg_288[0]_i_4_n_1 ;
  wire icmp_ln126_reg_288_pp0_iter1_reg;
  wire \icmp_ln126_reg_288_reg_n_1_[0] ;
  wire \int_isr[0]_i_4_n_1 ;
  wire \int_isr[0]_i_5_n_1 ;
  wire internal_empty_n_reg;
  wire [28:0]\ireg_reg[32] ;
  wire \ireg_reg[32]_0 ;
  wire [8:0]j_V_fu_238_p2;
  wire [27:0]\odata_reg[30] ;
  wire [28:0]\odata_reg[32] ;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_12;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_2;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_3;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_73;
  wire regslice_both_AXI_video_strm_V_data_V_U_n_74;
  wire shiftReg_ce;
  wire t_V_1_reg_204;
  wire t_V_1_reg_2040;
  wire \t_V_1_reg_204[8]_i_4_n_1 ;
  wire [8:0]t_V_1_reg_204_reg;
  wire [8:0]t_V_reg_193;
  wire t_V_reg_193_0;
  wire tmp_user_V_fu_136;
  wire [0:0]video_dst_TKEEP;
  wire [0:0]video_dst_TLAST;
  wire video_dst_TREADY;
  wire [0:0]video_dst_TUSER;

  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(Q),
        .S(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(SS));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state6),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_12),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_2),
        .Q(ap_enable_reg_pp0_iter1_reg_n_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_3),
        .Q(ap_enable_reg_pp0_iter2_reg_n_1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_last_V_reg_297[0]_i_2 
       (.I0(t_V_1_reg_204_reg[6]),
        .I1(t_V_1_reg_204_reg[2]),
        .I2(t_V_1_reg_204_reg[3]),
        .O(\axi_last_V_reg_297[0]_i_2_n_1 ));
  FDRE \axi_last_V_reg_297_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_74),
        .Q(\axi_last_V_reg_297_reg_n_1_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_V_reg_283[0]_i_1 
       (.I0(t_V_reg_193[0]),
        .O(i_V_fu_226_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_283[1]_i_1 
       (.I0(t_V_reg_193[0]),
        .I1(t_V_reg_193[1]),
        .O(i_V_fu_226_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_283[2]_i_1 
       (.I0(t_V_reg_193[2]),
        .I1(t_V_reg_193[1]),
        .I2(t_V_reg_193[0]),
        .O(i_V_fu_226_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_283[3]_i_1 
       (.I0(t_V_reg_193[3]),
        .I1(t_V_reg_193[0]),
        .I2(t_V_reg_193[1]),
        .I3(t_V_reg_193[2]),
        .O(i_V_fu_226_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \i_V_reg_283[4]_i_1 
       (.I0(t_V_reg_193[4]),
        .I1(t_V_reg_193[2]),
        .I2(t_V_reg_193[1]),
        .I3(t_V_reg_193[0]),
        .I4(t_V_reg_193[3]),
        .O(i_V_fu_226_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \i_V_reg_283[5]_i_1 
       (.I0(t_V_reg_193[5]),
        .I1(t_V_reg_193[3]),
        .I2(t_V_reg_193[0]),
        .I3(t_V_reg_193[1]),
        .I4(t_V_reg_193[2]),
        .I5(t_V_reg_193[4]),
        .O(i_V_fu_226_p2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \i_V_reg_283[6]_i_1 
       (.I0(t_V_reg_193[6]),
        .I1(\i_V_reg_283[8]_i_3_n_1 ),
        .O(i_V_fu_226_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \i_V_reg_283[7]_i_1 
       (.I0(t_V_reg_193[7]),
        .I1(t_V_reg_193[6]),
        .I2(\i_V_reg_283[8]_i_3_n_1 ),
        .O(i_V_fu_226_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \i_V_reg_283[8]_i_2 
       (.I0(t_V_reg_193[8]),
        .I1(\i_V_reg_283[8]_i_3_n_1 ),
        .I2(t_V_reg_193[6]),
        .I3(t_V_reg_193[7]),
        .O(i_V_fu_226_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \i_V_reg_283[8]_i_3 
       (.I0(t_V_reg_193[5]),
        .I1(t_V_reg_193[3]),
        .I2(t_V_reg_193[0]),
        .I3(t_V_reg_193[1]),
        .I4(t_V_reg_193[2]),
        .I5(t_V_reg_193[4]),
        .O(\i_V_reg_283[8]_i_3_n_1 ));
  FDRE \i_V_reg_283_reg[0] 
       (.C(ap_clk),
        .CE(i_V_reg_2830),
        .D(i_V_fu_226_p2[0]),
        .Q(i_V_reg_283[0]),
        .R(1'b0));
  FDRE \i_V_reg_283_reg[1] 
       (.C(ap_clk),
        .CE(i_V_reg_2830),
        .D(i_V_fu_226_p2[1]),
        .Q(i_V_reg_283[1]),
        .R(1'b0));
  FDRE \i_V_reg_283_reg[2] 
       (.C(ap_clk),
        .CE(i_V_reg_2830),
        .D(i_V_fu_226_p2[2]),
        .Q(i_V_reg_283[2]),
        .R(1'b0));
  FDRE \i_V_reg_283_reg[3] 
       (.C(ap_clk),
        .CE(i_V_reg_2830),
        .D(i_V_fu_226_p2[3]),
        .Q(i_V_reg_283[3]),
        .R(1'b0));
  FDRE \i_V_reg_283_reg[4] 
       (.C(ap_clk),
        .CE(i_V_reg_2830),
        .D(i_V_fu_226_p2[4]),
        .Q(i_V_reg_283[4]),
        .R(1'b0));
  FDRE \i_V_reg_283_reg[5] 
       (.C(ap_clk),
        .CE(i_V_reg_2830),
        .D(i_V_fu_226_p2[5]),
        .Q(i_V_reg_283[5]),
        .R(1'b0));
  FDRE \i_V_reg_283_reg[6] 
       (.C(ap_clk),
        .CE(i_V_reg_2830),
        .D(i_V_fu_226_p2[6]),
        .Q(i_V_reg_283[6]),
        .R(1'b0));
  FDRE \i_V_reg_283_reg[7] 
       (.C(ap_clk),
        .CE(i_V_reg_2830),
        .D(i_V_fu_226_p2[7]),
        .Q(i_V_reg_283[7]),
        .R(1'b0));
  FDRE \i_V_reg_283_reg[8] 
       (.C(ap_clk),
        .CE(i_V_reg_2830),
        .D(i_V_fu_226_p2[8]),
        .Q(i_V_reg_283[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \icmp_ln126_reg_288[0]_i_2 
       (.I0(\icmp_ln126_reg_288[0]_i_4_n_1 ),
        .I1(t_V_1_reg_204_reg[1]),
        .I2(t_V_1_reg_204_reg[0]),
        .I3(t_V_1_reg_204_reg[3]),
        .I4(t_V_1_reg_204_reg[2]),
        .I5(t_V_1_reg_204_reg[6]),
        .O(icmp_ln126_fu_232_p2));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \icmp_ln126_reg_288[0]_i_4 
       (.I0(t_V_1_reg_204_reg[7]),
        .I1(t_V_1_reg_204_reg[4]),
        .I2(t_V_1_reg_204_reg[8]),
        .I3(t_V_1_reg_204_reg[5]),
        .O(\icmp_ln126_reg_288[0]_i_4_n_1 ));
  FDRE \icmp_ln126_reg_288_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln126_reg_2880),
        .D(\icmp_ln126_reg_288_reg_n_1_[0] ),
        .Q(icmp_ln126_reg_288_pp0_iter1_reg),
        .R(1'b0));
  FDRE \icmp_ln126_reg_288_reg[0] 
       (.C(ap_clk),
        .CE(icmp_ln126_reg_2880),
        .D(icmp_ln126_fu_232_p2),
        .Q(\icmp_ln126_reg_288_reg_n_1_[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \int_isr[0]_i_4 
       (.I0(\int_isr[0]_i_5_n_1 ),
        .I1(t_V_reg_193[0]),
        .I2(t_V_reg_193[1]),
        .I3(t_V_reg_193[2]),
        .O(\int_isr[0]_i_4_n_1 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \int_isr[0]_i_5 
       (.I0(t_V_reg_193[3]),
        .I1(t_V_reg_193[4]),
        .I2(t_V_reg_193[5]),
        .I3(t_V_reg_193[6]),
        .I4(t_V_reg_193[7]),
        .I5(t_V_reg_193[8]),
        .O(\int_isr[0]_i_5_n_1 ));
  cam_hls_preprocess_0_0_regslice_both regslice_both_AXI_video_strm_V_data_V_U
       (.D(ap_NS_fsm),
        .E(i_V_reg_2830),
        .Mat2AXIvideo_U0_ap_ready(Mat2AXIvideo_U0_ap_ready),
        .Mat2AXIvideo_U0_ap_start(Mat2AXIvideo_U0_ap_start),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_pp0_stage0,ap_CS_fsm_state2,Q}),
        .SR(SS),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(t_V_1_reg_204),
        .ap_enable_reg_pp0_iter0_reg_0(t_V_1_reg_2040),
        .ap_enable_reg_pp0_iter2_reg(ap_enable_reg_pp0_iter2_reg_n_1),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(regslice_both_AXI_video_strm_V_data_V_U_n_2),
        .ap_rst_n_1(regslice_both_AXI_video_strm_V_data_V_U_n_3),
        .ap_rst_n_2(regslice_both_AXI_video_strm_V_data_V_U_n_12),
        .ap_rst_n_3(ap_rst_n_0),
        .ap_rst_n_4(ap_rst_n_1),
        .\axi_last_V_reg_297_reg[0] (\axi_last_V_reg_297[0]_i_2_n_1 ),
        .\axi_last_V_reg_297_reg[0]_0 (t_V_1_reg_204_reg[1:0]),
        .\axi_last_V_reg_297_reg[0]_1 (\icmp_ln126_reg_288[0]_i_4_n_1 ),
        .\axi_last_V_reg_297_reg[0]_2 (\axi_last_V_reg_297_reg_n_1_[0] ),
        .icmp_ln126_fu_232_p2(icmp_ln126_fu_232_p2),
        .icmp_ln126_reg_2880(icmp_ln126_reg_2880),
        .icmp_ln126_reg_288_pp0_iter1_reg(icmp_ln126_reg_288_pp0_iter1_reg),
        .\icmp_ln126_reg_288_reg[0] (Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .internal_empty_n_reg(internal_empty_n_reg),
        .\ireg_reg[30] (D),
        .\ireg_reg[32] (\ireg_reg[32] ),
        .\ireg_reg[32]_0 (ap_enable_reg_pp0_iter1_reg_n_1),
        .\ireg_reg[32]_1 (\icmp_ln126_reg_288_reg_n_1_[0] ),
        .\ireg_reg[32]_2 (\ireg_reg[32]_0 ),
        .\mOutPtr_reg[1] (\int_isr[0]_i_4_n_1 ),
        .\odata_reg[30] (\odata_reg[30] ),
        .\odata_reg[32] (\odata_reg[32] ),
        .shiftReg_ce(shiftReg_ce),
        .\t_V_1_reg_204_reg[0] (regslice_both_AXI_video_strm_V_data_V_U_n_74),
        .\tmp_user_V_fu_136_reg[0] (regslice_both_AXI_video_strm_V_data_V_U_n_73),
        .\tmp_user_V_fu_136_reg[0]_0 (tmp_user_V_fu_136),
        .video_dst_TREADY(video_dst_TREADY));
  cam_hls_preprocess_0_0_regslice_both__parameterized0 regslice_both_AXI_video_strm_V_keep_V_U
       (.D(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .SR(SS),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .video_dst_TKEEP(video_dst_TKEEP),
        .video_dst_TREADY(video_dst_TREADY));
  cam_hls_preprocess_0_0_regslice_both__parameterized1 regslice_both_AXI_video_strm_V_last_V_U
       (.D({Mat2AXIvideo_U0_img_data_stream_3_V_read,\axi_last_V_reg_297_reg_n_1_[0] }),
        .SR(SS),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .video_dst_TLAST(video_dst_TLAST),
        .video_dst_TREADY(video_dst_TREADY));
  cam_hls_preprocess_0_0_regslice_both__parameterized1_19 regslice_both_AXI_video_strm_V_user_V_U
       (.D({Mat2AXIvideo_U0_img_data_stream_3_V_read,tmp_user_V_fu_136}),
        .SR(SS),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .video_dst_TREADY(video_dst_TREADY),
        .video_dst_TUSER(video_dst_TUSER));
  LUT1 #(
    .INIT(2'h1)) 
    \t_V_1_reg_204[0]_i_1 
       (.I0(t_V_1_reg_204_reg[0]),
        .O(j_V_fu_238_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_204[1]_i_1 
       (.I0(t_V_1_reg_204_reg[0]),
        .I1(t_V_1_reg_204_reg[1]),
        .O(j_V_fu_238_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_204[2]_i_1 
       (.I0(t_V_1_reg_204_reg[2]),
        .I1(t_V_1_reg_204_reg[1]),
        .I2(t_V_1_reg_204_reg[0]),
        .O(j_V_fu_238_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_204[3]_i_1 
       (.I0(t_V_1_reg_204_reg[3]),
        .I1(t_V_1_reg_204_reg[0]),
        .I2(t_V_1_reg_204_reg[1]),
        .I3(t_V_1_reg_204_reg[2]),
        .O(j_V_fu_238_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \t_V_1_reg_204[4]_i_1 
       (.I0(t_V_1_reg_204_reg[4]),
        .I1(t_V_1_reg_204_reg[2]),
        .I2(t_V_1_reg_204_reg[1]),
        .I3(t_V_1_reg_204_reg[0]),
        .I4(t_V_1_reg_204_reg[3]),
        .O(j_V_fu_238_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \t_V_1_reg_204[5]_i_1 
       (.I0(t_V_1_reg_204_reg[5]),
        .I1(t_V_1_reg_204_reg[3]),
        .I2(t_V_1_reg_204_reg[0]),
        .I3(t_V_1_reg_204_reg[1]),
        .I4(t_V_1_reg_204_reg[2]),
        .I5(t_V_1_reg_204_reg[4]),
        .O(j_V_fu_238_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \t_V_1_reg_204[6]_i_1 
       (.I0(t_V_1_reg_204_reg[6]),
        .I1(\t_V_1_reg_204[8]_i_4_n_1 ),
        .O(j_V_fu_238_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \t_V_1_reg_204[7]_i_1 
       (.I0(t_V_1_reg_204_reg[7]),
        .I1(\t_V_1_reg_204[8]_i_4_n_1 ),
        .I2(t_V_1_reg_204_reg[6]),
        .O(j_V_fu_238_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \t_V_1_reg_204[8]_i_3 
       (.I0(t_V_1_reg_204_reg[8]),
        .I1(t_V_1_reg_204_reg[6]),
        .I2(\t_V_1_reg_204[8]_i_4_n_1 ),
        .I3(t_V_1_reg_204_reg[7]),
        .O(j_V_fu_238_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \t_V_1_reg_204[8]_i_4 
       (.I0(t_V_1_reg_204_reg[5]),
        .I1(t_V_1_reg_204_reg[3]),
        .I2(t_V_1_reg_204_reg[0]),
        .I3(t_V_1_reg_204_reg[1]),
        .I4(t_V_1_reg_204_reg[2]),
        .I5(t_V_1_reg_204_reg[4]),
        .O(\t_V_1_reg_204[8]_i_4_n_1 ));
  FDRE \t_V_1_reg_204_reg[0] 
       (.C(ap_clk),
        .CE(t_V_1_reg_2040),
        .D(j_V_fu_238_p2[0]),
        .Q(t_V_1_reg_204_reg[0]),
        .R(t_V_1_reg_204));
  FDRE \t_V_1_reg_204_reg[1] 
       (.C(ap_clk),
        .CE(t_V_1_reg_2040),
        .D(j_V_fu_238_p2[1]),
        .Q(t_V_1_reg_204_reg[1]),
        .R(t_V_1_reg_204));
  FDRE \t_V_1_reg_204_reg[2] 
       (.C(ap_clk),
        .CE(t_V_1_reg_2040),
        .D(j_V_fu_238_p2[2]),
        .Q(t_V_1_reg_204_reg[2]),
        .R(t_V_1_reg_204));
  FDRE \t_V_1_reg_204_reg[3] 
       (.C(ap_clk),
        .CE(t_V_1_reg_2040),
        .D(j_V_fu_238_p2[3]),
        .Q(t_V_1_reg_204_reg[3]),
        .R(t_V_1_reg_204));
  FDRE \t_V_1_reg_204_reg[4] 
       (.C(ap_clk),
        .CE(t_V_1_reg_2040),
        .D(j_V_fu_238_p2[4]),
        .Q(t_V_1_reg_204_reg[4]),
        .R(t_V_1_reg_204));
  FDRE \t_V_1_reg_204_reg[5] 
       (.C(ap_clk),
        .CE(t_V_1_reg_2040),
        .D(j_V_fu_238_p2[5]),
        .Q(t_V_1_reg_204_reg[5]),
        .R(t_V_1_reg_204));
  FDRE \t_V_1_reg_204_reg[6] 
       (.C(ap_clk),
        .CE(t_V_1_reg_2040),
        .D(j_V_fu_238_p2[6]),
        .Q(t_V_1_reg_204_reg[6]),
        .R(t_V_1_reg_204));
  FDRE \t_V_1_reg_204_reg[7] 
       (.C(ap_clk),
        .CE(t_V_1_reg_2040),
        .D(j_V_fu_238_p2[7]),
        .Q(t_V_1_reg_204_reg[7]),
        .R(t_V_1_reg_204));
  FDRE \t_V_1_reg_204_reg[8] 
       (.C(ap_clk),
        .CE(t_V_1_reg_2040),
        .D(j_V_fu_238_p2[8]),
        .Q(t_V_1_reg_204_reg[8]),
        .R(t_V_1_reg_204));
  LUT3 #(
    .INIT(8'h08)) 
    \t_V_reg_193[8]_i_1 
       (.I0(Q),
        .I1(Mat2AXIvideo_U0_ap_start),
        .I2(ap_CS_fsm_state6),
        .O(t_V_reg_193_0));
  FDRE \t_V_reg_193_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_283[0]),
        .Q(t_V_reg_193[0]),
        .R(t_V_reg_193_0));
  FDRE \t_V_reg_193_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_283[1]),
        .Q(t_V_reg_193[1]),
        .R(t_V_reg_193_0));
  FDRE \t_V_reg_193_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_283[2]),
        .Q(t_V_reg_193[2]),
        .R(t_V_reg_193_0));
  FDRE \t_V_reg_193_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_283[3]),
        .Q(t_V_reg_193[3]),
        .R(t_V_reg_193_0));
  FDRE \t_V_reg_193_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_283[4]),
        .Q(t_V_reg_193[4]),
        .R(t_V_reg_193_0));
  FDRE \t_V_reg_193_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_283[5]),
        .Q(t_V_reg_193[5]),
        .R(t_V_reg_193_0));
  FDRE \t_V_reg_193_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_283[6]),
        .Q(t_V_reg_193[6]),
        .R(t_V_reg_193_0));
  FDRE \t_V_reg_193_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_283[7]),
        .Q(t_V_reg_193[7]),
        .R(t_V_reg_193_0));
  FDRE \t_V_reg_193_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_V_reg_283[8]),
        .Q(t_V_reg_193[8]),
        .R(t_V_reg_193_0));
  FDRE \tmp_user_V_fu_136_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_AXI_video_strm_V_data_V_U_n_73),
        .Q(tmp_user_V_fu_136),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A
   (dst_img_data_stream_1_empty_n,
    dst_img_data_stream_1_full_n,
    Q,
    ADDRBWRADDR,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    internal_empty_n_reg_0,
    \SRL_SIG_reg[1][0] ,
    SS,
    E,
    D,
    \SRL_SIG_reg[0][7] );
  output dst_img_data_stream_1_empty_n;
  output dst_img_data_stream_1_full_n;
  output [1:0]Q;
  output [7:0]ADDRBWRADDR;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input \SRL_SIG_reg[1][0] ;
  input [0:0]SS;
  input [0:0]E;
  input [0:0]D;
  input [7:0]\SRL_SIG_reg[0][7] ;

  wire [7:0]ADDRBWRADDR;
  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [7:0]\SRL_SIG_reg[0][7] ;
  wire \SRL_SIG_reg[1][0] ;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire dst_img_data_stream_1_empty_n;
  wire dst_img_data_stream_1_full_n;
  wire internal_empty_n_i_1__8_n_1;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__8_n_1;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__8_n_1 ;

  cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_18 U_fifo_w8_d2_A_ram
       (.ADDRBWRADDR(ADDRBWRADDR),
        .Q(Q),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .\SRL_SIG_reg[1][0]_0 (\SRL_SIG_reg[1][0] ),
        .ap_clk(ap_clk));
  LUT6 #(
    .INIT(64'h8A888A888A888A08)) 
    internal_empty_n_i_1__8
       (.I0(ap_rst_n),
        .I1(dst_img_data_stream_1_empty_n),
        .I2(internal_empty_n_reg_0),
        .I3(\SRL_SIG_reg[1][0] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(internal_empty_n_i_1__8_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__8_n_1),
        .Q(dst_img_data_stream_1_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    internal_full_n_i_1__8
       (.I0(dst_img_data_stream_1_full_n),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][0] ),
        .I4(internal_empty_n_reg_0),
        .O(internal_full_n_i_1__8_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__8_n_1),
        .Q(dst_img_data_stream_1_full_n),
        .S(internal_full_n_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__8 
       (.I0(Q[0]),
        .O(\mOutPtr[0]_i_1__8_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__8_n_1 ),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D),
        .Q(Q[1]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_0
   (dst_img_data_stream_2_empty_n,
    dst_img_data_stream_2_full_n,
    Q,
    addr2,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    internal_empty_n_reg_0,
    \SRL_SIG_reg[0][7] ,
    SS,
    E,
    D,
    \SRL_SIG_reg[0][7]_0 );
  output dst_img_data_stream_2_empty_n;
  output dst_img_data_stream_2_full_n;
  output [1:0]Q;
  output [7:0]addr2;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input \SRL_SIG_reg[0][7] ;
  input [0:0]SS;
  input [0:0]E;
  input [0:0]D;
  input [7:0]\SRL_SIG_reg[0][7]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \SRL_SIG_reg[0][7] ;
  wire [7:0]\SRL_SIG_reg[0][7]_0 ;
  wire [0:0]SS;
  wire [7:0]addr2;
  wire ap_clk;
  wire ap_rst_n;
  wire dst_img_data_stream_2_empty_n;
  wire dst_img_data_stream_2_full_n;
  wire internal_empty_n_i_1__7_n_1;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__9_n_1;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__9_n_1 ;

  cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_17 U_fifo_w8_d2_A_ram
       (.Q(Q),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .\SRL_SIG_reg[0][7]_1 (\SRL_SIG_reg[0][7]_0 ),
        .addr2(addr2),
        .ap_clk(ap_clk));
  LUT6 #(
    .INIT(64'h8A888A888A888A08)) 
    internal_empty_n_i_1__7
       (.I0(ap_rst_n),
        .I1(dst_img_data_stream_2_empty_n),
        .I2(internal_empty_n_reg_0),
        .I3(\SRL_SIG_reg[0][7] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(internal_empty_n_i_1__7_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__7_n_1),
        .Q(dst_img_data_stream_2_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    internal_full_n_i_1__9
       (.I0(dst_img_data_stream_2_full_n),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[0][7] ),
        .I4(internal_empty_n_reg_0),
        .O(internal_full_n_i_1__9_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__9_n_1),
        .Q(dst_img_data_stream_2_full_n),
        .S(internal_full_n_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__9 
       (.I0(Q[0]),
        .O(\mOutPtr[0]_i_1__9_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__9_n_1 ),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D),
        .Q(Q[1]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_1
   (dst_img_data_stream_3_empty_n,
    dst_img_data_stream_3_full_n,
    Q,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    internal_empty_n_reg_0,
    internal_empty_n_reg_1,
    SS,
    E,
    D);
  output dst_img_data_stream_3_empty_n;
  output dst_img_data_stream_3_full_n;
  output [1:0]Q;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input internal_empty_n_reg_1;
  input [0:0]SS;
  input [0:0]E;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire dst_img_data_stream_3_empty_n;
  wire dst_img_data_stream_3_full_n;
  wire internal_empty_n_i_1__6_n_1;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_full_n_i_1__10_n_1;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__10_n_1 ;

  LUT6 #(
    .INIT(64'h8A888A888A888A08)) 
    internal_empty_n_i_1__6
       (.I0(ap_rst_n),
        .I1(dst_img_data_stream_3_empty_n),
        .I2(internal_empty_n_reg_0),
        .I3(internal_empty_n_reg_1),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(internal_empty_n_i_1__6_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__6_n_1),
        .Q(dst_img_data_stream_3_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    internal_full_n_i_1__10
       (.I0(dst_img_data_stream_3_full_n),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(internal_empty_n_reg_1),
        .I4(internal_empty_n_reg_0),
        .O(internal_full_n_i_1__10_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__10_n_1),
        .Q(dst_img_data_stream_3_full_n),
        .S(internal_full_n_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__10 
       (.I0(Q[0]),
        .O(\mOutPtr[0]_i_1__10_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__10_n_1 ),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D),
        .Q(Q[1]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_10
   (src_img_data_stream_s_empty_n,
    src_img_data_stream_s_full_n,
    \SRL_SIG_reg[0][7] ,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    AXIvideo2Mat_U0_img_data_stream_3_V_write,
    internal_full_n_reg_1,
    SS,
    E,
    D);
  output src_img_data_stream_s_empty_n;
  output src_img_data_stream_s_full_n;
  output [7:0]\SRL_SIG_reg[0][7] ;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input AXIvideo2Mat_U0_img_data_stream_3_V_write;
  input internal_full_n_reg_1;
  input [0:0]SS;
  input [0:0]E;
  input [7:0]D;

  wire AXIvideo2Mat_U0_img_data_stream_3_V_write;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]\SRL_SIG_reg[0][7] ;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire internal_empty_n_i_1__0_n_1;
  wire internal_full_n_i_2__2_n_1;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__3_n_1 ;
  wire \mOutPtr[1]_i_2__0_n_1 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire src_img_data_stream_s_empty_n;
  wire src_img_data_stream_s_full_n;

  cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg U_fifo_w8_d2_A_ram
       (.AXIvideo2Mat_U0_img_data_stream_3_V_write(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D),
        .Q({\mOutPtr_reg_n_1_[1] ,\mOutPtr_reg_n_1_[0] }),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .ap_clk(ap_clk));
  LUT6 #(
    .INIT(64'hA888A888A888A880)) 
    internal_empty_n_i_1__0
       (.I0(ap_rst_n),
        .I1(src_img_data_stream_s_empty_n),
        .I2(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I3(internal_full_n_reg_1),
        .I4(\mOutPtr_reg_n_1_[0] ),
        .I5(\mOutPtr_reg_n_1_[1] ),
        .O(internal_empty_n_i_1__0_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__0_n_1),
        .Q(src_img_data_stream_s_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAA2A)) 
    internal_full_n_i_2__2
       (.I0(src_img_data_stream_s_full_n),
        .I1(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I2(internal_full_n_reg_1),
        .I3(\mOutPtr_reg_n_1_[0] ),
        .I4(\mOutPtr_reg_n_1_[1] ),
        .O(internal_full_n_i_2__2_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_2__2_n_1),
        .Q(src_img_data_stream_s_full_n),
        .S(internal_full_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__3 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1__3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h1EE1)) 
    \mOutPtr[1]_i_2__0 
       (.I0(internal_full_n_reg_1),
        .I1(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\mOutPtr_reg_n_1_[1] ),
        .O(\mOutPtr[1]_i_2__0_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__3_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_2__0_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_2
   (dst_img_data_stream_s_empty_n,
    dst_img_data_stream_s_full_n,
    Q,
    addr0,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    internal_empty_n_reg_0,
    \SRL_SIG_reg[0][7] ,
    SS,
    E,
    D,
    \SRL_SIG_reg[0][7]_0 );
  output dst_img_data_stream_s_empty_n;
  output dst_img_data_stream_s_full_n;
  output [1:0]Q;
  output [7:0]addr0;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input internal_empty_n_reg_0;
  input \SRL_SIG_reg[0][7] ;
  input [0:0]SS;
  input [0:0]E;
  input [0:0]D;
  input [7:0]\SRL_SIG_reg[0][7]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \SRL_SIG_reg[0][7] ;
  wire [7:0]\SRL_SIG_reg[0][7]_0 ;
  wire [0:0]SS;
  wire [7:0]addr0;
  wire ap_clk;
  wire ap_rst_n;
  wire dst_img_data_stream_s_empty_n;
  wire dst_img_data_stream_s_full_n;
  wire internal_empty_n_i_1__9_n_1;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_2__3_n_1;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__7_n_1 ;

  cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_16 U_fifo_w8_d2_A_ram
       (.Q(Q),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .\SRL_SIG_reg[0][7]_1 (\SRL_SIG_reg[0][7]_0 ),
        .addr0(addr0),
        .ap_clk(ap_clk));
  LUT6 #(
    .INIT(64'h8A888A888A888A08)) 
    internal_empty_n_i_1__9
       (.I0(ap_rst_n),
        .I1(dst_img_data_stream_s_empty_n),
        .I2(internal_empty_n_reg_0),
        .I3(\SRL_SIG_reg[0][7] ),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(internal_empty_n_i_1__9_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__9_n_1),
        .Q(dst_img_data_stream_s_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    internal_full_n_i_2__3
       (.I0(dst_img_data_stream_s_full_n),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[0][7] ),
        .I4(internal_empty_n_reg_0),
        .O(internal_full_n_i_2__3_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_2__3_n_1),
        .Q(dst_img_data_stream_s_full_n),
        .S(internal_full_n_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__7 
       (.I0(Q[0]),
        .O(\mOutPtr[0]_i_1__7_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__7_n_1 ),
        .Q(Q[0]),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D),
        .Q(Q[1]),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_3
   (ifm_img_data_stream_1_full_n,
    q0_reg,
    internal_empty_n_reg_0,
    q0_reg_0,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    shiftReg_ce,
    Mat2AXIvideo_U0_img_data_stream_3_V_read,
    D,
    \odata_reg[14] ,
    \ireg[32]_i_4__0 ,
    ifm_img_data_stream_3_empty_n,
    ifm_img_data_stream_s_empty_n,
    ifm_img_data_stream_2_empty_n,
    SS,
    E);
  output ifm_img_data_stream_1_full_n;
  output [6:0]q0_reg;
  output internal_empty_n_reg_0;
  output [6:0]q0_reg_0;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input shiftReg_ce;
  input Mat2AXIvideo_U0_img_data_stream_3_V_read;
  input [6:0]D;
  input \odata_reg[14] ;
  input [7:0]\ireg[32]_i_4__0 ;
  input ifm_img_data_stream_3_empty_n;
  input ifm_img_data_stream_s_empty_n;
  input ifm_img_data_stream_2_empty_n;
  input [0:0]SS;
  input [0:0]E;

  wire [6:0]D;
  wire [0:0]E;
  wire Mat2AXIvideo_U0_img_data_stream_3_V_read;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire ifm_img_data_stream_1_empty_n;
  wire ifm_img_data_stream_1_full_n;
  wire ifm_img_data_stream_2_empty_n;
  wire ifm_img_data_stream_3_empty_n;
  wire ifm_img_data_stream_s_empty_n;
  wire internal_empty_n_i_1__12_n_1;
  wire internal_empty_n_reg_0;
  wire internal_full_n_i_1__11_n_1;
  wire internal_full_n_reg_0;
  wire [7:0]\ireg[32]_i_4__0 ;
  wire \mOutPtr[0]_i_1__0_n_1 ;
  wire \mOutPtr[1]_i_1__13_n_1 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire \odata_reg[14] ;
  wire [6:0]q0_reg;
  wire [6:0]q0_reg_0;
  wire shiftReg_ce;

  cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_15 U_fifo_w8_d2_A_ram
       (.D(D),
        .Q({\mOutPtr_reg_n_1_[1] ,\mOutPtr_reg_n_1_[0] }),
        .ap_clk(ap_clk),
        .\odata_reg[14] (\odata_reg[14] ),
        .\odata_reg[14]_0 (\ireg[32]_i_4__0 [6:0]),
        .q0_reg(q0_reg),
        .q0_reg_0(q0_reg_0),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'h88A888A888A880A8)) 
    internal_empty_n_i_1__12
       (.I0(ap_rst_n),
        .I1(ifm_img_data_stream_1_empty_n),
        .I2(shiftReg_ce),
        .I3(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .I4(\mOutPtr_reg_n_1_[1] ),
        .I5(\mOutPtr_reg_n_1_[0] ),
        .O(internal_empty_n_i_1__12_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__12_n_1),
        .Q(ifm_img_data_stream_1_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    internal_full_n_i_1__11
       (.I0(ifm_img_data_stream_1_full_n),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(shiftReg_ce),
        .I4(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .O(internal_full_n_i_1__11_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__11_n_1),
        .Q(ifm_img_data_stream_1_full_n),
        .S(internal_full_n_reg_0));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \ireg[32]_i_5 
       (.I0(ifm_img_data_stream_1_empty_n),
        .I1(ifm_img_data_stream_3_empty_n),
        .I2(ifm_img_data_stream_s_empty_n),
        .I3(ifm_img_data_stream_2_empty_n),
        .I4(\ireg[32]_i_4__0 [7]),
        .I5(ap_rst_n),
        .O(internal_empty_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__0 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1__0_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[1]_i_1__13 
       (.I0(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .I1(shiftReg_ce),
        .I2(\mOutPtr_reg_n_1_[1] ),
        .I3(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[1]_i_1__13_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__0_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__13_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_4
   (ifm_img_data_stream_2_empty_n,
    ifm_img_data_stream_2_full_n,
    q2_reg,
    D,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    shiftReg_ce,
    Mat2AXIvideo_U0_img_data_stream_3_V_read,
    q2,
    \odata_reg[16] ,
    \odata_reg[16]_0 ,
    \odata_reg[22] ,
    \odata_reg[17] ,
    \odata_reg[18] ,
    \odata_reg[19] ,
    \odata_reg[20] ,
    \odata_reg[21] ,
    \odata_reg[22]_0 ,
    SS,
    E);
  output ifm_img_data_stream_2_empty_n;
  output ifm_img_data_stream_2_full_n;
  output [6:0]q2_reg;
  output [6:0]D;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input shiftReg_ce;
  input Mat2AXIvideo_U0_img_data_stream_3_V_read;
  input [6:0]q2;
  input \odata_reg[16] ;
  input \odata_reg[16]_0 ;
  input [6:0]\odata_reg[22] ;
  input \odata_reg[17] ;
  input \odata_reg[18] ;
  input \odata_reg[19] ;
  input \odata_reg[20] ;
  input \odata_reg[21] ;
  input \odata_reg[22]_0 ;
  input [0:0]SS;
  input [0:0]E;

  wire [6:0]D;
  wire [0:0]E;
  wire Mat2AXIvideo_U0_img_data_stream_3_V_read;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire ifm_img_data_stream_2_empty_n;
  wire ifm_img_data_stream_2_full_n;
  wire internal_empty_n_i_1__11_n_1;
  wire internal_full_n_i_1__12_n_1;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__1_n_1 ;
  wire \mOutPtr[1]_i_1__12_n_1 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire \odata_reg[16] ;
  wire \odata_reg[16]_0 ;
  wire \odata_reg[17] ;
  wire \odata_reg[18] ;
  wire \odata_reg[19] ;
  wire \odata_reg[20] ;
  wire \odata_reg[21] ;
  wire [6:0]\odata_reg[22] ;
  wire \odata_reg[22]_0 ;
  wire [6:0]q2;
  wire [6:0]q2_reg;
  wire shiftReg_ce;

  LUT6 #(
    .INIT(64'h88A888A888A880A8)) 
    internal_empty_n_i_1__11
       (.I0(ap_rst_n),
        .I1(ifm_img_data_stream_2_empty_n),
        .I2(shiftReg_ce),
        .I3(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .I4(\mOutPtr_reg_n_1_[1] ),
        .I5(\mOutPtr_reg_n_1_[0] ),
        .O(internal_empty_n_i_1__11_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__11_n_1),
        .Q(ifm_img_data_stream_2_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    internal_full_n_i_1__12
       (.I0(ifm_img_data_stream_2_full_n),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(shiftReg_ce),
        .I4(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .O(internal_full_n_i_1__12_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__12_n_1),
        .Q(ifm_img_data_stream_2_full_n),
        .S(internal_full_n_reg_0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[16]_i_1 
       (.I0(q2[0]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[16] ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[17]_i_1 
       (.I0(q2[1]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[17] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[18]_i_1 
       (.I0(q2[2]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[18] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[19]_i_1 
       (.I0(q2[3]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[19] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[20]_i_1 
       (.I0(q2[4]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[20] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[21]_i_1 
       (.I0(q2[5]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[21] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[22]_i_1 
       (.I0(q2[6]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[22]_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__1 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1__1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[1]_i_1__12 
       (.I0(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .I1(shiftReg_ce),
        .I2(\mOutPtr_reg_n_1_[1] ),
        .I3(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[1]_i_1__12_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__1_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__12_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[16]_i_1 
       (.I0(q2[0]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[16] ),
        .I4(\odata_reg[16]_0 ),
        .I5(\odata_reg[22] [0]),
        .O(q2_reg[0]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[17]_i_1 
       (.I0(q2[1]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[17] ),
        .I4(\odata_reg[16]_0 ),
        .I5(\odata_reg[22] [1]),
        .O(q2_reg[1]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[18]_i_1 
       (.I0(q2[2]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[18] ),
        .I4(\odata_reg[16]_0 ),
        .I5(\odata_reg[22] [2]),
        .O(q2_reg[2]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[19]_i_1 
       (.I0(q2[3]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[19] ),
        .I4(\odata_reg[16]_0 ),
        .I5(\odata_reg[22] [3]),
        .O(q2_reg[3]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[20]_i_1 
       (.I0(q2[4]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[20] ),
        .I4(\odata_reg[16]_0 ),
        .I5(\odata_reg[22] [4]),
        .O(q2_reg[4]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[21]_i_1 
       (.I0(q2[5]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[21] ),
        .I4(\odata_reg[16]_0 ),
        .I5(\odata_reg[22] [5]),
        .O(q2_reg[5]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[22]_i_1 
       (.I0(q2[6]),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\odata_reg[22]_0 ),
        .I4(\odata_reg[16]_0 ),
        .I5(\odata_reg[22] [6]),
        .O(q2_reg[6]));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_5
   (\SRL_SIG_reg[1][0] ,
    \SRL_SIG_reg[1][1] ,
    \SRL_SIG_reg[1][2] ,
    \SRL_SIG_reg[1][3] ,
    \SRL_SIG_reg[1][4] ,
    \SRL_SIG_reg[1][5] ,
    \SRL_SIG_reg[1][6] ,
    ifm_img_data_stream_3_empty_n,
    ifm_img_data_stream_3_full_n,
    q2_reg,
    D,
    shiftReg_ce,
    q2,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    Mat2AXIvideo_U0_img_data_stream_3_V_read,
    \odata_reg[30] ,
    \odata_reg[30]_0 ,
    SS,
    E);
  output \SRL_SIG_reg[1][0] ;
  output \SRL_SIG_reg[1][1] ;
  output \SRL_SIG_reg[1][2] ;
  output \SRL_SIG_reg[1][3] ;
  output \SRL_SIG_reg[1][4] ;
  output \SRL_SIG_reg[1][5] ;
  output \SRL_SIG_reg[1][6] ;
  output ifm_img_data_stream_3_empty_n;
  output ifm_img_data_stream_3_full_n;
  output [6:0]q2_reg;
  output [6:0]D;
  input shiftReg_ce;
  input [6:0]q2;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input Mat2AXIvideo_U0_img_data_stream_3_V_read;
  input \odata_reg[30] ;
  input [6:0]\odata_reg[30]_0 ;
  input [0:0]SS;
  input [0:0]E;

  wire [6:0]D;
  wire [0:0]E;
  wire Mat2AXIvideo_U0_img_data_stream_3_V_read;
  wire \SRL_SIG_reg[1][0] ;
  wire \SRL_SIG_reg[1][1] ;
  wire \SRL_SIG_reg[1][2] ;
  wire \SRL_SIG_reg[1][3] ;
  wire \SRL_SIG_reg[1][4] ;
  wire \SRL_SIG_reg[1][5] ;
  wire \SRL_SIG_reg[1][6] ;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire ifm_img_data_stream_3_empty_n;
  wire ifm_img_data_stream_3_full_n;
  wire internal_empty_n_i_1__13_n_1;
  wire internal_full_n_i_1__13_n_1;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__2_n_1 ;
  wire \mOutPtr[1]_i_1__11_n_1 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire \odata_reg[30] ;
  wire [6:0]\odata_reg[30]_0 ;
  wire [6:0]q2;
  wire [6:0]q2_reg;
  wire shiftReg_ce;

  cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_14 U_fifo_w8_d2_A_ram
       (.D(D),
        .Q({\mOutPtr_reg_n_1_[1] ,\mOutPtr_reg_n_1_[0] }),
        .\SRL_SIG_reg[1][0]_0 (\SRL_SIG_reg[1][0] ),
        .\SRL_SIG_reg[1][1]_0 (\SRL_SIG_reg[1][1] ),
        .\SRL_SIG_reg[1][2]_0 (\SRL_SIG_reg[1][2] ),
        .\SRL_SIG_reg[1][3]_0 (\SRL_SIG_reg[1][3] ),
        .\SRL_SIG_reg[1][4]_0 (\SRL_SIG_reg[1][4] ),
        .\SRL_SIG_reg[1][5]_0 (\SRL_SIG_reg[1][5] ),
        .\SRL_SIG_reg[1][6]_0 (\SRL_SIG_reg[1][6] ),
        .ap_clk(ap_clk),
        .\odata_reg[30] (\odata_reg[30] ),
        .\odata_reg[30]_0 (\odata_reg[30]_0 ),
        .q2(q2),
        .q2_reg(q2_reg),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'h88A888A888A880A8)) 
    internal_empty_n_i_1__13
       (.I0(ap_rst_n),
        .I1(ifm_img_data_stream_3_empty_n),
        .I2(shiftReg_ce),
        .I3(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .I4(\mOutPtr_reg_n_1_[1] ),
        .I5(\mOutPtr_reg_n_1_[0] ),
        .O(internal_empty_n_i_1__13_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__13_n_1),
        .Q(ifm_img_data_stream_3_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    internal_full_n_i_1__13
       (.I0(ifm_img_data_stream_3_full_n),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(shiftReg_ce),
        .I4(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .O(internal_full_n_i_1__13_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__13_n_1),
        .Q(ifm_img_data_stream_3_full_n),
        .S(internal_full_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__2 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1__2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[1]_i_1__11 
       (.I0(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .I1(shiftReg_ce),
        .I2(\mOutPtr_reg_n_1_[1] ),
        .I3(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[1]_i_1__11_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__2_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__11_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_6
   (ifm_img_data_stream_s_empty_n,
    ifm_img_data_stream_s_full_n,
    q0_reg,
    D,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    shiftReg_ce,
    Mat2AXIvideo_U0_img_data_stream_3_V_read,
    q0,
    \odata_reg[6] ,
    \odata_reg[6]_0 ,
    SS,
    \mOutPtr_reg[0]_0 );
  output ifm_img_data_stream_s_empty_n;
  output ifm_img_data_stream_s_full_n;
  output [6:0]q0_reg;
  output [6:0]D;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input shiftReg_ce;
  input Mat2AXIvideo_U0_img_data_stream_3_V_read;
  input [6:0]q0;
  input \odata_reg[6] ;
  input [6:0]\odata_reg[6]_0 ;
  input [0:0]SS;
  input [0:0]\mOutPtr_reg[0]_0 ;

  wire [6:0]D;
  wire Mat2AXIvideo_U0_img_data_stream_3_V_read;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire ifm_img_data_stream_s_empty_n;
  wire ifm_img_data_stream_s_full_n;
  wire internal_empty_n_i_1__10_n_1;
  wire internal_full_n_i_2__4_n_1;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1_n_1 ;
  wire \mOutPtr[1]_i_2__4_n_1 ;
  wire [0:0]\mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire \odata_reg[6] ;
  wire [6:0]\odata_reg[6]_0 ;
  wire [6:0]q0;
  wire [6:0]q0_reg;
  wire shiftReg_ce;

  cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_13 U_fifo_w8_d2_A_ram
       (.D(D),
        .Q({\mOutPtr_reg_n_1_[1] ,\mOutPtr_reg_n_1_[0] }),
        .ap_clk(ap_clk),
        .\odata_reg[6] (\odata_reg[6] ),
        .\odata_reg[6]_0 (\odata_reg[6]_0 ),
        .q0(q0),
        .q0_reg(q0_reg),
        .shiftReg_ce(shiftReg_ce));
  LUT6 #(
    .INIT(64'h88A888A888A880A8)) 
    internal_empty_n_i_1__10
       (.I0(ap_rst_n),
        .I1(ifm_img_data_stream_s_empty_n),
        .I2(shiftReg_ce),
        .I3(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .I4(\mOutPtr_reg_n_1_[1] ),
        .I5(\mOutPtr_reg_n_1_[0] ),
        .O(internal_empty_n_i_1__10_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__10_n_1),
        .Q(ifm_img_data_stream_s_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    internal_full_n_i_2__4
       (.I0(ifm_img_data_stream_s_full_n),
        .I1(\mOutPtr_reg_n_1_[1] ),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(shiftReg_ce),
        .I4(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .O(internal_full_n_i_2__4_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_2__4_n_1),
        .Q(ifm_img_data_stream_s_full_n),
        .S(internal_full_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \mOutPtr[1]_i_2__4 
       (.I0(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .I1(shiftReg_ce),
        .I2(\mOutPtr_reg_n_1_[1] ),
        .I3(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[1]_i_2__4_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr[0]_i_1_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr_reg[0]_0 ),
        .D(\mOutPtr[1]_i_2__4_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_7
   (src_img_data_stream_1_empty_n,
    src_img_data_stream_1_full_n,
    \SRL_SIG_reg[0][7] ,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    AXIvideo2Mat_U0_img_data_stream_3_V_write,
    internal_full_n_reg_1,
    SS,
    E,
    D);
  output src_img_data_stream_1_empty_n;
  output src_img_data_stream_1_full_n;
  output [7:0]\SRL_SIG_reg[0][7] ;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input AXIvideo2Mat_U0_img_data_stream_3_V_write;
  input internal_full_n_reg_1;
  input [0:0]SS;
  input [0:0]E;
  input [7:0]D;

  wire AXIvideo2Mat_U0_img_data_stream_3_V_write;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]\SRL_SIG_reg[0][7] ;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire internal_empty_n_i_1__1_n_1;
  wire internal_full_n_i_1__5_n_1;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__4_n_1 ;
  wire \mOutPtr[1]_i_1__3_n_1 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire src_img_data_stream_1_empty_n;
  wire src_img_data_stream_1_full_n;

  cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_12 U_fifo_w8_d2_A_ram
       (.AXIvideo2Mat_U0_img_data_stream_3_V_write(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D),
        .Q({\mOutPtr_reg_n_1_[1] ,\mOutPtr_reg_n_1_[0] }),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .ap_clk(ap_clk));
  LUT6 #(
    .INIT(64'hA888A888A888A880)) 
    internal_empty_n_i_1__1
       (.I0(ap_rst_n),
        .I1(src_img_data_stream_1_empty_n),
        .I2(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I3(internal_full_n_reg_1),
        .I4(\mOutPtr_reg_n_1_[0] ),
        .I5(\mOutPtr_reg_n_1_[1] ),
        .O(internal_empty_n_i_1__1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__1_n_1),
        .Q(src_img_data_stream_1_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAA2A)) 
    internal_full_n_i_1__5
       (.I0(src_img_data_stream_1_full_n),
        .I1(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I2(internal_full_n_reg_1),
        .I3(\mOutPtr_reg_n_1_[0] ),
        .I4(\mOutPtr_reg_n_1_[1] ),
        .O(internal_full_n_i_1__5_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__5_n_1),
        .Q(src_img_data_stream_1_full_n),
        .S(internal_full_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__4 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1__4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h1EE1)) 
    \mOutPtr[1]_i_1__3 
       (.I0(internal_full_n_reg_1),
        .I1(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\mOutPtr_reg_n_1_[1] ),
        .O(\mOutPtr[1]_i_1__3_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__4_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__3_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_8
   (src_img_data_stream_2_empty_n,
    src_img_data_stream_2_full_n,
    \SRL_SIG_reg[0][7] ,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    AXIvideo2Mat_U0_img_data_stream_3_V_write,
    internal_full_n_reg_1,
    SS,
    E,
    D);
  output src_img_data_stream_2_empty_n;
  output src_img_data_stream_2_full_n;
  output [7:0]\SRL_SIG_reg[0][7] ;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input AXIvideo2Mat_U0_img_data_stream_3_V_write;
  input internal_full_n_reg_1;
  input [0:0]SS;
  input [0:0]E;
  input [7:0]D;

  wire AXIvideo2Mat_U0_img_data_stream_3_V_write;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]\SRL_SIG_reg[0][7] ;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire internal_empty_n_i_1__2_n_1;
  wire internal_full_n_i_1__6_n_1;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__5_n_1 ;
  wire \mOutPtr[1]_i_1__2_n_1 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire src_img_data_stream_2_empty_n;
  wire src_img_data_stream_2_full_n;

  cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_11 U_fifo_w8_d2_A_ram
       (.AXIvideo2Mat_U0_img_data_stream_3_V_write(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D),
        .Q({\mOutPtr_reg_n_1_[1] ,\mOutPtr_reg_n_1_[0] }),
        .\SRL_SIG_reg[0][7]_0 (\SRL_SIG_reg[0][7] ),
        .ap_clk(ap_clk));
  LUT6 #(
    .INIT(64'hA888A888A888A880)) 
    internal_empty_n_i_1__2
       (.I0(ap_rst_n),
        .I1(src_img_data_stream_2_empty_n),
        .I2(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I3(internal_full_n_reg_1),
        .I4(\mOutPtr_reg_n_1_[0] ),
        .I5(\mOutPtr_reg_n_1_[1] ),
        .O(internal_empty_n_i_1__2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__2_n_1),
        .Q(src_img_data_stream_2_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAA2A)) 
    internal_full_n_i_1__6
       (.I0(src_img_data_stream_2_full_n),
        .I1(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I2(internal_full_n_reg_1),
        .I3(\mOutPtr_reg_n_1_[0] ),
        .I4(\mOutPtr_reg_n_1_[1] ),
        .O(internal_full_n_i_1__6_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__6_n_1),
        .Q(src_img_data_stream_2_full_n),
        .S(internal_full_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__5 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1__5_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h1EE1)) 
    \mOutPtr[1]_i_1__2 
       (.I0(internal_full_n_reg_1),
        .I1(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\mOutPtr_reg_n_1_[1] ),
        .O(\mOutPtr[1]_i_1__2_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__5_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__2_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_9
   (src_img_data_stream_3_empty_n,
    src_img_data_stream_3_full_n,
    ap_clk,
    internal_full_n_reg_0,
    ap_rst_n,
    AXIvideo2Mat_U0_img_data_stream_3_V_write,
    internal_full_n_reg_1,
    SS,
    E);
  output src_img_data_stream_3_empty_n;
  output src_img_data_stream_3_full_n;
  input ap_clk;
  input internal_full_n_reg_0;
  input ap_rst_n;
  input AXIvideo2Mat_U0_img_data_stream_3_V_write;
  input internal_full_n_reg_1;
  input [0:0]SS;
  input [0:0]E;

  wire AXIvideo2Mat_U0_img_data_stream_3_V_write;
  wire [0:0]E;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire internal_empty_n_i_1__3_n_1;
  wire internal_full_n_i_1__7_n_1;
  wire internal_full_n_reg_0;
  wire internal_full_n_reg_1;
  wire \mOutPtr[0]_i_1__6_n_1 ;
  wire \mOutPtr[1]_i_1__1_n_1 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire src_img_data_stream_3_empty_n;
  wire src_img_data_stream_3_full_n;

  LUT6 #(
    .INIT(64'hA888A888A888A880)) 
    internal_empty_n_i_1__3
       (.I0(ap_rst_n),
        .I1(src_img_data_stream_3_empty_n),
        .I2(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I3(internal_full_n_reg_1),
        .I4(\mOutPtr_reg_n_1_[0] ),
        .I5(\mOutPtr_reg_n_1_[1] ),
        .O(internal_empty_n_i_1__3_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__3_n_1),
        .Q(src_img_data_stream_3_empty_n),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAAA2A)) 
    internal_full_n_i_1__7
       (.I0(src_img_data_stream_3_full_n),
        .I1(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I2(internal_full_n_reg_1),
        .I3(\mOutPtr_reg_n_1_[0] ),
        .I4(\mOutPtr_reg_n_1_[1] ),
        .O(internal_full_n_i_1__7_n_1));
  FDSE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__7_n_1),
        .Q(src_img_data_stream_3_full_n),
        .S(internal_full_n_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__6 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1__6_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h1EE1)) 
    \mOutPtr[1]_i_1__1 
       (.I0(internal_full_n_reg_1),
        .I1(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\mOutPtr_reg_n_1_[1] ),
        .O(\mOutPtr[1]_i_1__1_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[0]_i_1__6_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\mOutPtr[1]_i_1__1_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg
   (\SRL_SIG_reg[0][7]_0 ,
    Q,
    AXIvideo2Mat_U0_img_data_stream_3_V_write,
    D,
    ap_clk);
  output [7:0]\SRL_SIG_reg[0][7]_0 ;
  input [1:0]Q;
  input AXIvideo2Mat_U0_img_data_stream_3_V_write;
  input [7:0]D;
  input ap_clk;

  wire AXIvideo2Mat_U0_img_data_stream_3_V_write;
  wire [7:0]D;
  wire [1:0]Q;
  wire [7:0]\SRL_SIG_reg[0] ;
  wire [7:0]\SRL_SIG_reg[0][7]_0 ;
  wire [7:0]\SRL_SIG_reg[1] ;
  wire ap_clk;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][0]_i_1 
       (.I0(\SRL_SIG_reg[0] [0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [0]),
        .O(\SRL_SIG_reg[0][7]_0 [0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][1]_i_1 
       (.I0(\SRL_SIG_reg[0] [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [1]),
        .O(\SRL_SIG_reg[0][7]_0 [1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][2]_i_1 
       (.I0(\SRL_SIG_reg[0] [2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [2]),
        .O(\SRL_SIG_reg[0][7]_0 [2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][3]_i_1 
       (.I0(\SRL_SIG_reg[0] [3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [3]),
        .O(\SRL_SIG_reg[0][7]_0 [3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][4]_i_1 
       (.I0(\SRL_SIG_reg[0] [4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [4]),
        .O(\SRL_SIG_reg[0][7]_0 [4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][5]_i_1 
       (.I0(\SRL_SIG_reg[0] [5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [5]),
        .O(\SRL_SIG_reg[0][7]_0 [5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][6]_i_1 
       (.I0(\SRL_SIG_reg[0] [6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [6]),
        .O(\SRL_SIG_reg[0][7]_0 [6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][7]_i_2 
       (.I0(\SRL_SIG_reg[0] [7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1] [7]),
        .O(\SRL_SIG_reg[0][7]_0 [7]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[0]),
        .Q(\SRL_SIG_reg[0] [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[1]),
        .Q(\SRL_SIG_reg[0] [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[2]),
        .Q(\SRL_SIG_reg[0] [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[3]),
        .Q(\SRL_SIG_reg[0] [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[4]),
        .Q(\SRL_SIG_reg[0] [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[5]),
        .Q(\SRL_SIG_reg[0] [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[6]),
        .Q(\SRL_SIG_reg[0] [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[7]),
        .Q(\SRL_SIG_reg[0] [7]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg[0] [0]),
        .Q(\SRL_SIG_reg[1] [0]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg[0] [1]),
        .Q(\SRL_SIG_reg[1] [1]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg[0] [2]),
        .Q(\SRL_SIG_reg[1] [2]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg[0] [3]),
        .Q(\SRL_SIG_reg[1] [3]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg[0] [4]),
        .Q(\SRL_SIG_reg[1] [4]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg[0] [5]),
        .Q(\SRL_SIG_reg[1] [5]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg[0] [6]),
        .Q(\SRL_SIG_reg[1] [6]),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg[0] [7]),
        .Q(\SRL_SIG_reg[1] [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_11
   (\SRL_SIG_reg[0][7]_0 ,
    Q,
    AXIvideo2Mat_U0_img_data_stream_3_V_write,
    D,
    ap_clk);
  output [7:0]\SRL_SIG_reg[0][7]_0 ;
  input [1:0]Q;
  input AXIvideo2Mat_U0_img_data_stream_3_V_write;
  input [7:0]D;
  input ap_clk;

  wire AXIvideo2Mat_U0_img_data_stream_3_V_write;
  wire [7:0]D;
  wire [1:0]Q;
  wire [7:0]\SRL_SIG_reg[0][7]_0 ;
  wire \SRL_SIG_reg_n_1_[0][0] ;
  wire \SRL_SIG_reg_n_1_[0][1] ;
  wire \SRL_SIG_reg_n_1_[0][2] ;
  wire \SRL_SIG_reg_n_1_[0][3] ;
  wire \SRL_SIG_reg_n_1_[0][4] ;
  wire \SRL_SIG_reg_n_1_[0][5] ;
  wire \SRL_SIG_reg_n_1_[0][6] ;
  wire \SRL_SIG_reg_n_1_[0][7] ;
  wire \SRL_SIG_reg_n_1_[1][0] ;
  wire \SRL_SIG_reg_n_1_[1][1] ;
  wire \SRL_SIG_reg_n_1_[1][2] ;
  wire \SRL_SIG_reg_n_1_[1][3] ;
  wire \SRL_SIG_reg_n_1_[1][4] ;
  wire \SRL_SIG_reg_n_1_[1][5] ;
  wire \SRL_SIG_reg_n_1_[1][6] ;
  wire \SRL_SIG_reg_n_1_[1][7] ;
  wire ap_clk;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][0]_i_1__1 
       (.I0(\SRL_SIG_reg_n_1_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][0] ),
        .O(\SRL_SIG_reg[0][7]_0 [0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][1]_i_1__1 
       (.I0(\SRL_SIG_reg_n_1_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][1] ),
        .O(\SRL_SIG_reg[0][7]_0 [1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][2]_i_1__1 
       (.I0(\SRL_SIG_reg_n_1_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][2] ),
        .O(\SRL_SIG_reg[0][7]_0 [2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][3]_i_1__1 
       (.I0(\SRL_SIG_reg_n_1_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][3] ),
        .O(\SRL_SIG_reg[0][7]_0 [3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][4]_i_1__1 
       (.I0(\SRL_SIG_reg_n_1_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][4] ),
        .O(\SRL_SIG_reg[0][7]_0 [4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][5]_i_1__1 
       (.I0(\SRL_SIG_reg_n_1_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][5] ),
        .O(\SRL_SIG_reg[0][7]_0 [5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][6]_i_1__1 
       (.I0(\SRL_SIG_reg_n_1_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][6] ),
        .O(\SRL_SIG_reg[0][7]_0 [6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][7]_i_1__1 
       (.I0(\SRL_SIG_reg_n_1_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][7] ),
        .O(\SRL_SIG_reg[0][7]_0 [7]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[0]),
        .Q(\SRL_SIG_reg_n_1_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[1]),
        .Q(\SRL_SIG_reg_n_1_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[2]),
        .Q(\SRL_SIG_reg_n_1_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[3]),
        .Q(\SRL_SIG_reg_n_1_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[4]),
        .Q(\SRL_SIG_reg_n_1_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[5]),
        .Q(\SRL_SIG_reg_n_1_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[6]),
        .Q(\SRL_SIG_reg_n_1_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[7]),
        .Q(\SRL_SIG_reg_n_1_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][0] ),
        .Q(\SRL_SIG_reg_n_1_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][1] ),
        .Q(\SRL_SIG_reg_n_1_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][2] ),
        .Q(\SRL_SIG_reg_n_1_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][3] ),
        .Q(\SRL_SIG_reg_n_1_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][4] ),
        .Q(\SRL_SIG_reg_n_1_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][5] ),
        .Q(\SRL_SIG_reg_n_1_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][6] ),
        .Q(\SRL_SIG_reg_n_1_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][7] ),
        .Q(\SRL_SIG_reg_n_1_[1][7] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_12
   (\SRL_SIG_reg[0][7]_0 ,
    Q,
    AXIvideo2Mat_U0_img_data_stream_3_V_write,
    D,
    ap_clk);
  output [7:0]\SRL_SIG_reg[0][7]_0 ;
  input [1:0]Q;
  input AXIvideo2Mat_U0_img_data_stream_3_V_write;
  input [7:0]D;
  input ap_clk;

  wire AXIvideo2Mat_U0_img_data_stream_3_V_write;
  wire [7:0]D;
  wire [1:0]Q;
  wire [7:0]\SRL_SIG_reg[0][7]_0 ;
  wire \SRL_SIG_reg_n_1_[0][0] ;
  wire \SRL_SIG_reg_n_1_[0][1] ;
  wire \SRL_SIG_reg_n_1_[0][2] ;
  wire \SRL_SIG_reg_n_1_[0][3] ;
  wire \SRL_SIG_reg_n_1_[0][4] ;
  wire \SRL_SIG_reg_n_1_[0][5] ;
  wire \SRL_SIG_reg_n_1_[0][6] ;
  wire \SRL_SIG_reg_n_1_[0][7] ;
  wire \SRL_SIG_reg_n_1_[1][0] ;
  wire \SRL_SIG_reg_n_1_[1][1] ;
  wire \SRL_SIG_reg_n_1_[1][2] ;
  wire \SRL_SIG_reg_n_1_[1][3] ;
  wire \SRL_SIG_reg_n_1_[1][4] ;
  wire \SRL_SIG_reg_n_1_[1][5] ;
  wire \SRL_SIG_reg_n_1_[1][6] ;
  wire \SRL_SIG_reg_n_1_[1][7] ;
  wire ap_clk;

  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][0]_i_1__0 
       (.I0(\SRL_SIG_reg_n_1_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][0] ),
        .O(\SRL_SIG_reg[0][7]_0 [0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][1]_i_1__0 
       (.I0(\SRL_SIG_reg_n_1_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][1] ),
        .O(\SRL_SIG_reg[0][7]_0 [1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][2]_i_1__0 
       (.I0(\SRL_SIG_reg_n_1_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][2] ),
        .O(\SRL_SIG_reg[0][7]_0 [2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][3]_i_1__0 
       (.I0(\SRL_SIG_reg_n_1_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][3] ),
        .O(\SRL_SIG_reg[0][7]_0 [3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][4]_i_1__0 
       (.I0(\SRL_SIG_reg_n_1_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][4] ),
        .O(\SRL_SIG_reg[0][7]_0 [4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][5]_i_1__0 
       (.I0(\SRL_SIG_reg_n_1_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][5] ),
        .O(\SRL_SIG_reg[0][7]_0 [5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][6]_i_1__0 
       (.I0(\SRL_SIG_reg_n_1_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][6] ),
        .O(\SRL_SIG_reg[0][7]_0 [6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \SRL_SIG[0][7]_i_1__0 
       (.I0(\SRL_SIG_reg_n_1_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][7] ),
        .O(\SRL_SIG_reg[0][7]_0 [7]));
  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[0]),
        .Q(\SRL_SIG_reg_n_1_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[1]),
        .Q(\SRL_SIG_reg_n_1_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[2]),
        .Q(\SRL_SIG_reg_n_1_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[3]),
        .Q(\SRL_SIG_reg_n_1_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[4]),
        .Q(\SRL_SIG_reg_n_1_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[5]),
        .Q(\SRL_SIG_reg_n_1_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[6]),
        .Q(\SRL_SIG_reg_n_1_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(D[7]),
        .Q(\SRL_SIG_reg_n_1_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][0] ),
        .Q(\SRL_SIG_reg_n_1_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][1] ),
        .Q(\SRL_SIG_reg_n_1_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][2] ),
        .Q(\SRL_SIG_reg_n_1_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][3] ),
        .Q(\SRL_SIG_reg_n_1_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][4] ),
        .Q(\SRL_SIG_reg_n_1_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][5] ),
        .Q(\SRL_SIG_reg_n_1_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][6] ),
        .Q(\SRL_SIG_reg_n_1_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(\SRL_SIG_reg_n_1_[0][7] ),
        .Q(\SRL_SIG_reg_n_1_[1][7] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_13
   (q0_reg,
    D,
    q0,
    Q,
    \odata_reg[6] ,
    \odata_reg[6]_0 ,
    shiftReg_ce,
    ap_clk);
  output [6:0]q0_reg;
  output [6:0]D;
  input [6:0]q0;
  input [1:0]Q;
  input \odata_reg[6] ;
  input [6:0]\odata_reg[6]_0 ;
  input shiftReg_ce;
  input ap_clk;

  wire [6:0]D;
  wire [1:0]Q;
  wire \SRL_SIG_reg_n_1_[1][0] ;
  wire \SRL_SIG_reg_n_1_[1][1] ;
  wire \SRL_SIG_reg_n_1_[1][2] ;
  wire \SRL_SIG_reg_n_1_[1][3] ;
  wire \SRL_SIG_reg_n_1_[1][4] ;
  wire \SRL_SIG_reg_n_1_[1][5] ;
  wire \SRL_SIG_reg_n_1_[1][6] ;
  wire ap_clk;
  wire \odata_reg[6] ;
  wire [6:0]\odata_reg[6]_0 ;
  wire [6:0]q0;
  wire [6:0]q0_reg;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q0[0]),
        .Q(\SRL_SIG_reg_n_1_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q0[1]),
        .Q(\SRL_SIG_reg_n_1_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q0[2]),
        .Q(\SRL_SIG_reg_n_1_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q0[3]),
        .Q(\SRL_SIG_reg_n_1_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q0[4]),
        .Q(\SRL_SIG_reg_n_1_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q0[5]),
        .Q(\SRL_SIG_reg_n_1_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q0[6]),
        .Q(\SRL_SIG_reg_n_1_[1][6] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[0]_i_1 
       (.I0(q0[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][0] ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[1]_i_1__3 
       (.I0(q0[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][1] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[2]_i_1 
       (.I0(q0[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][2] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[3]_i_1 
       (.I0(q0[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][3] ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[4]_i_1__0 
       (.I0(q0[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[5]_i_1 
       (.I0(q0[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][5] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[6]_i_1 
       (.I0(q0[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][6] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[0]_i_1 
       (.I0(q0[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][0] ),
        .I4(\odata_reg[6] ),
        .I5(\odata_reg[6]_0 [0]),
        .O(q0_reg[0]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[1]_i_1 
       (.I0(q0[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][1] ),
        .I4(\odata_reg[6] ),
        .I5(\odata_reg[6]_0 [1]),
        .O(q0_reg[1]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[2]_i_1 
       (.I0(q0[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][2] ),
        .I4(\odata_reg[6] ),
        .I5(\odata_reg[6]_0 [2]),
        .O(q0_reg[2]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[3]_i_1 
       (.I0(q0[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][3] ),
        .I4(\odata_reg[6] ),
        .I5(\odata_reg[6]_0 [3]),
        .O(q0_reg[3]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[4]_i_1 
       (.I0(q0[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][4] ),
        .I4(\odata_reg[6] ),
        .I5(\odata_reg[6]_0 [4]),
        .O(q0_reg[4]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[5]_i_1 
       (.I0(q0[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][5] ),
        .I4(\odata_reg[6] ),
        .I5(\odata_reg[6]_0 [5]),
        .O(q0_reg[5]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[6]_i_1 
       (.I0(q0[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][6] ),
        .I4(\odata_reg[6] ),
        .I5(\odata_reg[6]_0 [6]),
        .O(q0_reg[6]));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_14
   (\SRL_SIG_reg[1][0]_0 ,
    \SRL_SIG_reg[1][1]_0 ,
    \SRL_SIG_reg[1][2]_0 ,
    \SRL_SIG_reg[1][3]_0 ,
    \SRL_SIG_reg[1][4]_0 ,
    \SRL_SIG_reg[1][5]_0 ,
    \SRL_SIG_reg[1][6]_0 ,
    q2_reg,
    D,
    shiftReg_ce,
    q2,
    ap_clk,
    Q,
    \odata_reg[30] ,
    \odata_reg[30]_0 );
  output \SRL_SIG_reg[1][0]_0 ;
  output \SRL_SIG_reg[1][1]_0 ;
  output \SRL_SIG_reg[1][2]_0 ;
  output \SRL_SIG_reg[1][3]_0 ;
  output \SRL_SIG_reg[1][4]_0 ;
  output \SRL_SIG_reg[1][5]_0 ;
  output \SRL_SIG_reg[1][6]_0 ;
  output [6:0]q2_reg;
  output [6:0]D;
  input shiftReg_ce;
  input [6:0]q2;
  input ap_clk;
  input [1:0]Q;
  input \odata_reg[30] ;
  input [6:0]\odata_reg[30]_0 ;

  wire [6:0]D;
  wire [1:0]Q;
  wire \SRL_SIG_reg[1][0]_0 ;
  wire \SRL_SIG_reg[1][1]_0 ;
  wire \SRL_SIG_reg[1][2]_0 ;
  wire \SRL_SIG_reg[1][3]_0 ;
  wire \SRL_SIG_reg[1][4]_0 ;
  wire \SRL_SIG_reg[1][5]_0 ;
  wire \SRL_SIG_reg[1][6]_0 ;
  wire ap_clk;
  wire \odata_reg[30] ;
  wire [6:0]\odata_reg[30]_0 ;
  wire [6:0]q2;
  wire [6:0]q2_reg;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q2[0]),
        .Q(\SRL_SIG_reg[1][0]_0 ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q2[1]),
        .Q(\SRL_SIG_reg[1][1]_0 ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q2[2]),
        .Q(\SRL_SIG_reg[1][2]_0 ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q2[3]),
        .Q(\SRL_SIG_reg[1][3]_0 ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q2[4]),
        .Q(\SRL_SIG_reg[1][4]_0 ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q2[5]),
        .Q(\SRL_SIG_reg[1][5]_0 ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(q2[6]),
        .Q(\SRL_SIG_reg[1][6]_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[24]_i_1 
       (.I0(q2[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][0]_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[25]_i_1 
       (.I0(q2[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][1]_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[26]_i_1 
       (.I0(q2[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][2]_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[27]_i_1 
       (.I0(q2[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][3]_0 ),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[28]_i_1 
       (.I0(q2[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][4]_0 ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[29]_i_1 
       (.I0(q2[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][5]_0 ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[30]_i_1 
       (.I0(q2[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][6]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[24]_i_1 
       (.I0(q2[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][0]_0 ),
        .I4(\odata_reg[30] ),
        .I5(\odata_reg[30]_0 [0]),
        .O(q2_reg[0]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[25]_i_1 
       (.I0(q2[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][1]_0 ),
        .I4(\odata_reg[30] ),
        .I5(\odata_reg[30]_0 [1]),
        .O(q2_reg[1]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[26]_i_1 
       (.I0(q2[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][2]_0 ),
        .I4(\odata_reg[30] ),
        .I5(\odata_reg[30]_0 [2]),
        .O(q2_reg[2]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[27]_i_1 
       (.I0(q2[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][3]_0 ),
        .I4(\odata_reg[30] ),
        .I5(\odata_reg[30]_0 [3]),
        .O(q2_reg[3]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[28]_i_1 
       (.I0(q2[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][4]_0 ),
        .I4(\odata_reg[30] ),
        .I5(\odata_reg[30]_0 [4]),
        .O(q2_reg[4]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[29]_i_1 
       (.I0(q2[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][5]_0 ),
        .I4(\odata_reg[30] ),
        .I5(\odata_reg[30]_0 [5]),
        .O(q2_reg[5]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[30]_i_2 
       (.I0(q2[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg[1][6]_0 ),
        .I4(\odata_reg[30] ),
        .I5(\odata_reg[30]_0 [6]),
        .O(q2_reg[6]));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_15
   (q0_reg,
    q0_reg_0,
    D,
    Q,
    \odata_reg[14] ,
    \odata_reg[14]_0 ,
    shiftReg_ce,
    ap_clk);
  output [6:0]q0_reg;
  output [6:0]q0_reg_0;
  input [6:0]D;
  input [1:0]Q;
  input \odata_reg[14] ;
  input [6:0]\odata_reg[14]_0 ;
  input shiftReg_ce;
  input ap_clk;

  wire [6:0]D;
  wire [1:0]Q;
  wire \SRL_SIG_reg_n_1_[1][0] ;
  wire \SRL_SIG_reg_n_1_[1][1] ;
  wire \SRL_SIG_reg_n_1_[1][2] ;
  wire \SRL_SIG_reg_n_1_[1][3] ;
  wire \SRL_SIG_reg_n_1_[1][4] ;
  wire \SRL_SIG_reg_n_1_[1][5] ;
  wire \SRL_SIG_reg_n_1_[1][6] ;
  wire ap_clk;
  wire \odata_reg[14] ;
  wire [6:0]\odata_reg[14]_0 ;
  wire [6:0]q0_reg;
  wire [6:0]q0_reg_0;
  wire shiftReg_ce;

  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[0]),
        .Q(\SRL_SIG_reg_n_1_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[1]),
        .Q(\SRL_SIG_reg_n_1_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[2]),
        .Q(\SRL_SIG_reg_n_1_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[3]),
        .Q(\SRL_SIG_reg_n_1_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[4]),
        .Q(\SRL_SIG_reg_n_1_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[5]),
        .Q(\SRL_SIG_reg_n_1_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(shiftReg_ce),
        .D(D[6]),
        .Q(\SRL_SIG_reg_n_1_[1][6] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[10]_i_1 
       (.I0(D[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][2] ),
        .O(q0_reg_0[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[11]_i_1 
       (.I0(D[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][3] ),
        .O(q0_reg_0[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[12]_i_1 
       (.I0(D[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][4] ),
        .O(q0_reg_0[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[13]_i_1 
       (.I0(D[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][5] ),
        .O(q0_reg_0[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[14]_i_1 
       (.I0(D[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][6] ),
        .O(q0_reg_0[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[8]_i_1 
       (.I0(D[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][0] ),
        .O(q0_reg_0[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \ireg[9]_i_1 
       (.I0(D[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][1] ),
        .O(q0_reg_0[1]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[10]_i_1 
       (.I0(D[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][2] ),
        .I4(\odata_reg[14] ),
        .I5(\odata_reg[14]_0 [2]),
        .O(q0_reg[2]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[11]_i_1 
       (.I0(D[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][3] ),
        .I4(\odata_reg[14] ),
        .I5(\odata_reg[14]_0 [3]),
        .O(q0_reg[3]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[12]_i_1 
       (.I0(D[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][4] ),
        .I4(\odata_reg[14] ),
        .I5(\odata_reg[14]_0 [4]),
        .O(q0_reg[4]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[13]_i_1 
       (.I0(D[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][5] ),
        .I4(\odata_reg[14] ),
        .I5(\odata_reg[14]_0 [5]),
        .O(q0_reg[5]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[14]_i_1 
       (.I0(D[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][6] ),
        .I4(\odata_reg[14] ),
        .I5(\odata_reg[14]_0 [6]),
        .O(q0_reg[6]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[8]_i_1 
       (.I0(D[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][0] ),
        .I4(\odata_reg[14] ),
        .I5(\odata_reg[14]_0 [0]),
        .O(q0_reg[0]));
  LUT6 #(
    .INIT(64'hBA8AFFFFBA8A0000)) 
    \odata[9]_i_1 
       (.I0(D[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][1] ),
        .I4(\odata_reg[14] ),
        .I5(\odata_reg[14]_0 [1]),
        .O(q0_reg[1]));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_16
   (addr0,
    Q,
    \SRL_SIG_reg[0][7]_0 ,
    \SRL_SIG_reg[0][7]_1 ,
    ap_clk);
  output [7:0]addr0;
  input [1:0]Q;
  input \SRL_SIG_reg[0][7]_0 ;
  input [7:0]\SRL_SIG_reg[0][7]_1 ;
  input ap_clk;

  wire [1:0]Q;
  wire \SRL_SIG_reg[0][7]_0 ;
  wire [7:0]\SRL_SIG_reg[0][7]_1 ;
  wire \SRL_SIG_reg_n_1_[0][0] ;
  wire \SRL_SIG_reg_n_1_[0][1] ;
  wire \SRL_SIG_reg_n_1_[0][2] ;
  wire \SRL_SIG_reg_n_1_[0][3] ;
  wire \SRL_SIG_reg_n_1_[0][4] ;
  wire \SRL_SIG_reg_n_1_[0][5] ;
  wire \SRL_SIG_reg_n_1_[0][6] ;
  wire \SRL_SIG_reg_n_1_[0][7] ;
  wire \SRL_SIG_reg_n_1_[1][0] ;
  wire \SRL_SIG_reg_n_1_[1][1] ;
  wire \SRL_SIG_reg_n_1_[1][2] ;
  wire \SRL_SIG_reg_n_1_[1][3] ;
  wire \SRL_SIG_reg_n_1_[1][4] ;
  wire \SRL_SIG_reg_n_1_[1][5] ;
  wire \SRL_SIG_reg_n_1_[1][6] ;
  wire \SRL_SIG_reg_n_1_[1][7] ;
  wire [7:0]addr0;
  wire ap_clk;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [0]),
        .Q(\SRL_SIG_reg_n_1_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [1]),
        .Q(\SRL_SIG_reg_n_1_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [2]),
        .Q(\SRL_SIG_reg_n_1_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [3]),
        .Q(\SRL_SIG_reg_n_1_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [4]),
        .Q(\SRL_SIG_reg_n_1_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [5]),
        .Q(\SRL_SIG_reg_n_1_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [6]),
        .Q(\SRL_SIG_reg_n_1_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [7]),
        .Q(\SRL_SIG_reg_n_1_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][0] ),
        .Q(\SRL_SIG_reg_n_1_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][1] ),
        .Q(\SRL_SIG_reg_n_1_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][2] ),
        .Q(\SRL_SIG_reg_n_1_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][3] ),
        .Q(\SRL_SIG_reg_n_1_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][4] ),
        .Q(\SRL_SIG_reg_n_1_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][5] ),
        .Q(\SRL_SIG_reg_n_1_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][6] ),
        .Q(\SRL_SIG_reg_n_1_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][7] ),
        .Q(\SRL_SIG_reg_n_1_[1][7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_10
       (.I0(\SRL_SIG_reg_n_1_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][0] ),
        .O(addr0[0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_3
       (.I0(\SRL_SIG_reg_n_1_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][7] ),
        .O(addr0[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_4
       (.I0(\SRL_SIG_reg_n_1_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][6] ),
        .O(addr0[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_5
       (.I0(\SRL_SIG_reg_n_1_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][5] ),
        .O(addr0[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_6
       (.I0(\SRL_SIG_reg_n_1_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][4] ),
        .O(addr0[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_7
       (.I0(\SRL_SIG_reg_n_1_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][3] ),
        .O(addr0[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_8
       (.I0(\SRL_SIG_reg_n_1_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][2] ),
        .O(addr0[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_9
       (.I0(\SRL_SIG_reg_n_1_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][1] ),
        .O(addr0[1]));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_17
   (addr2,
    Q,
    \SRL_SIG_reg[0][7]_0 ,
    \SRL_SIG_reg[0][7]_1 ,
    ap_clk);
  output [7:0]addr2;
  input [1:0]Q;
  input \SRL_SIG_reg[0][7]_0 ;
  input [7:0]\SRL_SIG_reg[0][7]_1 ;
  input ap_clk;

  wire [1:0]Q;
  wire \SRL_SIG_reg[0][7]_0 ;
  wire [7:0]\SRL_SIG_reg[0][7]_1 ;
  wire \SRL_SIG_reg_n_1_[0][0] ;
  wire \SRL_SIG_reg_n_1_[0][1] ;
  wire \SRL_SIG_reg_n_1_[0][2] ;
  wire \SRL_SIG_reg_n_1_[0][3] ;
  wire \SRL_SIG_reg_n_1_[0][4] ;
  wire \SRL_SIG_reg_n_1_[0][5] ;
  wire \SRL_SIG_reg_n_1_[0][6] ;
  wire \SRL_SIG_reg_n_1_[0][7] ;
  wire \SRL_SIG_reg_n_1_[1][0] ;
  wire \SRL_SIG_reg_n_1_[1][1] ;
  wire \SRL_SIG_reg_n_1_[1][2] ;
  wire \SRL_SIG_reg_n_1_[1][3] ;
  wire \SRL_SIG_reg_n_1_[1][4] ;
  wire \SRL_SIG_reg_n_1_[1][5] ;
  wire \SRL_SIG_reg_n_1_[1][6] ;
  wire \SRL_SIG_reg_n_1_[1][7] ;
  wire [7:0]addr2;
  wire ap_clk;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [0]),
        .Q(\SRL_SIG_reg_n_1_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [1]),
        .Q(\SRL_SIG_reg_n_1_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [2]),
        .Q(\SRL_SIG_reg_n_1_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [3]),
        .Q(\SRL_SIG_reg_n_1_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [4]),
        .Q(\SRL_SIG_reg_n_1_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [5]),
        .Q(\SRL_SIG_reg_n_1_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [6]),
        .Q(\SRL_SIG_reg_n_1_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg[0][7]_1 [7]),
        .Q(\SRL_SIG_reg_n_1_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][0] ),
        .Q(\SRL_SIG_reg_n_1_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][1] ),
        .Q(\SRL_SIG_reg_n_1_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][2] ),
        .Q(\SRL_SIG_reg_n_1_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][3] ),
        .Q(\SRL_SIG_reg_n_1_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][4] ),
        .Q(\SRL_SIG_reg_n_1_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][5] ),
        .Q(\SRL_SIG_reg_n_1_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][6] ),
        .Q(\SRL_SIG_reg_n_1_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[0][7]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][7] ),
        .Q(\SRL_SIG_reg_n_1_[1][7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q2_reg_i_1
       (.I0(\SRL_SIG_reg_n_1_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][7] ),
        .O(addr2[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q2_reg_i_2
       (.I0(\SRL_SIG_reg_n_1_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][6] ),
        .O(addr2[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q2_reg_i_3
       (.I0(\SRL_SIG_reg_n_1_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][5] ),
        .O(addr2[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q2_reg_i_4
       (.I0(\SRL_SIG_reg_n_1_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][4] ),
        .O(addr2[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q2_reg_i_5
       (.I0(\SRL_SIG_reg_n_1_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][3] ),
        .O(addr2[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q2_reg_i_6
       (.I0(\SRL_SIG_reg_n_1_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][2] ),
        .O(addr2[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q2_reg_i_7
       (.I0(\SRL_SIG_reg_n_1_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][1] ),
        .O(addr2[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q2_reg_i_8
       (.I0(\SRL_SIG_reg_n_1_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][0] ),
        .O(addr2[0]));
endmodule

(* ORIG_REF_NAME = "fifo_w8_d2_A_shiftReg" *) 
module cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_18
   (ADDRBWRADDR,
    Q,
    \SRL_SIG_reg[1][0]_0 ,
    \SRL_SIG_reg[0][7]_0 ,
    ap_clk);
  output [7:0]ADDRBWRADDR;
  input [1:0]Q;
  input \SRL_SIG_reg[1][0]_0 ;
  input [7:0]\SRL_SIG_reg[0][7]_0 ;
  input ap_clk;

  wire [7:0]ADDRBWRADDR;
  wire [1:0]Q;
  wire [7:0]\SRL_SIG_reg[0][7]_0 ;
  wire \SRL_SIG_reg[1][0]_0 ;
  wire \SRL_SIG_reg_n_1_[0][0] ;
  wire \SRL_SIG_reg_n_1_[0][1] ;
  wire \SRL_SIG_reg_n_1_[0][2] ;
  wire \SRL_SIG_reg_n_1_[0][3] ;
  wire \SRL_SIG_reg_n_1_[0][4] ;
  wire \SRL_SIG_reg_n_1_[0][5] ;
  wire \SRL_SIG_reg_n_1_[0][6] ;
  wire \SRL_SIG_reg_n_1_[0][7] ;
  wire \SRL_SIG_reg_n_1_[1][0] ;
  wire \SRL_SIG_reg_n_1_[1][1] ;
  wire \SRL_SIG_reg_n_1_[1][2] ;
  wire \SRL_SIG_reg_n_1_[1][3] ;
  wire \SRL_SIG_reg_n_1_[1][4] ;
  wire \SRL_SIG_reg_n_1_[1][5] ;
  wire \SRL_SIG_reg_n_1_[1][6] ;
  wire \SRL_SIG_reg_n_1_[1][7] ;
  wire ap_clk;

  FDRE \SRL_SIG_reg[0][0] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg[0][7]_0 [0]),
        .Q(\SRL_SIG_reg_n_1_[0][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][1] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg[0][7]_0 [1]),
        .Q(\SRL_SIG_reg_n_1_[0][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][2] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg[0][7]_0 [2]),
        .Q(\SRL_SIG_reg_n_1_[0][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][3] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg[0][7]_0 [3]),
        .Q(\SRL_SIG_reg_n_1_[0][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][4] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg[0][7]_0 [4]),
        .Q(\SRL_SIG_reg_n_1_[0][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][5] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg[0][7]_0 [5]),
        .Q(\SRL_SIG_reg_n_1_[0][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][6] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg[0][7]_0 [6]),
        .Q(\SRL_SIG_reg_n_1_[0][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[0][7] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg[0][7]_0 [7]),
        .Q(\SRL_SIG_reg_n_1_[0][7] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][0] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][0] ),
        .Q(\SRL_SIG_reg_n_1_[1][0] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][1] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][1] ),
        .Q(\SRL_SIG_reg_n_1_[1][1] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][2] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][2] ),
        .Q(\SRL_SIG_reg_n_1_[1][2] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][3] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][3] ),
        .Q(\SRL_SIG_reg_n_1_[1][3] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][4] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][4] ),
        .Q(\SRL_SIG_reg_n_1_[1][4] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][5] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][5] ),
        .Q(\SRL_SIG_reg_n_1_[1][5] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][6] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][6] ),
        .Q(\SRL_SIG_reg_n_1_[1][6] ),
        .R(1'b0));
  FDRE \SRL_SIG_reg[1][7] 
       (.C(ap_clk),
        .CE(\SRL_SIG_reg[1][0]_0 ),
        .D(\SRL_SIG_reg_n_1_[0][7] ),
        .Q(\SRL_SIG_reg_n_1_[1][7] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_11
       (.I0(\SRL_SIG_reg_n_1_[0][7] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][7] ),
        .O(ADDRBWRADDR[7]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_12
       (.I0(\SRL_SIG_reg_n_1_[0][6] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][6] ),
        .O(ADDRBWRADDR[6]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_13
       (.I0(\SRL_SIG_reg_n_1_[0][5] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][5] ),
        .O(ADDRBWRADDR[5]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_14
       (.I0(\SRL_SIG_reg_n_1_[0][4] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][4] ),
        .O(ADDRBWRADDR[4]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_15
       (.I0(\SRL_SIG_reg_n_1_[0][3] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][3] ),
        .O(ADDRBWRADDR[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_16
       (.I0(\SRL_SIG_reg_n_1_[0][2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][2] ),
        .O(ADDRBWRADDR[2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_17
       (.I0(\SRL_SIG_reg_n_1_[0][1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][1] ),
        .O(ADDRBWRADDR[1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    q0_reg_i_18
       (.I0(\SRL_SIG_reg_n_1_[0][0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\SRL_SIG_reg_n_1_[1][0] ),
        .O(ADDRBWRADDR[0]));
endmodule

(* C_S_AXI_ADDR_WIDTH = "32" *) (* C_S_AXI_AXILITES_ADDR_WIDTH = "4" *) (* C_S_AXI_AXILITES_DATA_WIDTH = "32" *) 
(* C_S_AXI_AXILITES_WSTRB_WIDTH = "4" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) 
(* ORIG_REF_NAME = "hls_preprocess" *) (* hls_module = "yes" *) 
module cam_hls_preprocess_0_0_hls_preprocess
   (s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_AWREADY,
    s_axi_AXILiteS_AWADDR,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_WREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_ARVALID,
    s_axi_AXILiteS_ARREADY,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_RVALID,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_RDATA,
    s_axi_AXILiteS_RRESP,
    s_axi_AXILiteS_BVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_BRESP,
    ap_clk,
    ap_rst_n,
    interrupt,
    video_src_TDATA,
    video_src_TKEEP,
    video_src_TSTRB,
    video_src_TUSER,
    video_src_TLAST,
    video_src_TID,
    video_src_TDEST,
    video_dst_TDATA,
    video_dst_TKEEP,
    video_dst_TSTRB,
    video_dst_TUSER,
    video_dst_TLAST,
    video_dst_TID,
    video_dst_TDEST,
    video_src_TVALID,
    video_src_TREADY,
    video_dst_TVALID,
    video_dst_TREADY);
  input s_axi_AXILiteS_AWVALID;
  output s_axi_AXILiteS_AWREADY;
  input [3:0]s_axi_AXILiteS_AWADDR;
  input s_axi_AXILiteS_WVALID;
  output s_axi_AXILiteS_WREADY;
  input [31:0]s_axi_AXILiteS_WDATA;
  input [3:0]s_axi_AXILiteS_WSTRB;
  input s_axi_AXILiteS_ARVALID;
  output s_axi_AXILiteS_ARREADY;
  input [3:0]s_axi_AXILiteS_ARADDR;
  output s_axi_AXILiteS_RVALID;
  input s_axi_AXILiteS_RREADY;
  output [31:0]s_axi_AXILiteS_RDATA;
  output [1:0]s_axi_AXILiteS_RRESP;
  output s_axi_AXILiteS_BVALID;
  input s_axi_AXILiteS_BREADY;
  output [1:0]s_axi_AXILiteS_BRESP;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  input [31:0]video_src_TDATA;
  input [3:0]video_src_TKEEP;
  input [3:0]video_src_TSTRB;
  input [0:0]video_src_TUSER;
  input [0:0]video_src_TLAST;
  input [0:0]video_src_TID;
  input [0:0]video_src_TDEST;
  output [31:0]video_dst_TDATA;
  output [3:0]video_dst_TKEEP;
  output [3:0]video_dst_TSTRB;
  output [0:0]video_dst_TUSER;
  output [0:0]video_dst_TLAST;
  output [0:0]video_dst_TID;
  output [0:0]video_dst_TDEST;
  input video_src_TVALID;
  output video_src_TREADY;
  output video_dst_TVALID;
  input video_dst_TREADY;

  wire \<const0> ;
  wire AXIvideo2Mat_U0_ap_ready;
  wire AXIvideo2Mat_U0_ap_start;
  wire AXIvideo2Mat_U0_img_data_stream_3_V_write;
  wire AXIvideo2Mat_U0_n_3;
  wire Convert_U0_ap_start;
  wire [6:0]Convert_U0_dst_data_stream_0_V_din;
  wire [6:0]Convert_U0_dst_data_stream_1_V_din;
  wire [6:0]Convert_U0_dst_data_stream_3_V_din;
  wire Convert_U0_n_1;
  wire Convert_U0_n_10;
  wire Convert_U0_n_12;
  wire Convert_U0_n_13;
  wire Convert_U0_n_3;
  wire Convert_U0_n_4;
  wire Convert_U0_n_5;
  wire Convert_U0_n_6;
  wire Convert_U0_n_7;
  wire Convert_U0_n_8;
  wire Convert_U0_n_9;
  wire Downsample_U0_ap_start;
  wire Downsample_U0_n_1;
  wire Downsample_U0_n_2;
  wire Downsample_U0_n_3;
  wire Downsample_U0_n_4;
  wire Downsample_U0_n_5;
  wire Downsample_U0_n_6;
  wire Downsample_U0_n_7;
  wire Downsample_U0_n_8;
  wire Mat2AXIvideo_U0_ap_ready;
  wire Mat2AXIvideo_U0_ap_start;
  wire Mat2AXIvideo_U0_img_data_stream_3_V_read;
  wire Mat2AXIvideo_U0_n_2;
  wire Mat2AXIvideo_U0_n_37;
  wire Mat2AXIvideo_U0_n_38;
  wire Mat2AXIvideo_U0_n_39;
  wire Mat2AXIvideo_U0_n_4;
  wire Mat2AXIvideo_U0_n_40;
  wire Mat2AXIvideo_U0_n_41;
  wire Mat2AXIvideo_U0_n_42;
  wire Mat2AXIvideo_U0_n_43;
  wire Mat2AXIvideo_U0_n_44;
  wire Mat2AXIvideo_U0_n_45;
  wire Mat2AXIvideo_U0_n_46;
  wire Mat2AXIvideo_U0_n_47;
  wire Mat2AXIvideo_U0_n_48;
  wire Mat2AXIvideo_U0_n_49;
  wire Mat2AXIvideo_U0_n_50;
  wire Mat2AXIvideo_U0_n_51;
  wire Mat2AXIvideo_U0_n_52;
  wire Mat2AXIvideo_U0_n_53;
  wire Mat2AXIvideo_U0_n_54;
  wire Mat2AXIvideo_U0_n_55;
  wire Mat2AXIvideo_U0_n_56;
  wire Mat2AXIvideo_U0_n_57;
  wire Mat2AXIvideo_U0_n_58;
  wire Mat2AXIvideo_U0_n_59;
  wire Mat2AXIvideo_U0_n_6;
  wire Mat2AXIvideo_U0_n_60;
  wire Mat2AXIvideo_U0_n_61;
  wire Mat2AXIvideo_U0_n_62;
  wire Mat2AXIvideo_U0_n_63;
  wire Mat2AXIvideo_U0_n_64;
  wire Mat2AXIvideo_U0_n_65;
  wire ap_clk;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [7:0]data;
  wire dst_img_data_stream_1_U_n_3;
  wire dst_img_data_stream_1_U_n_4;
  wire [7:0]dst_img_data_stream_1_dout;
  wire dst_img_data_stream_1_empty_n;
  wire dst_img_data_stream_1_full_n;
  wire dst_img_data_stream_2_U_n_3;
  wire dst_img_data_stream_2_U_n_4;
  wire [7:0]dst_img_data_stream_2_dout;
  wire dst_img_data_stream_2_empty_n;
  wire dst_img_data_stream_2_full_n;
  wire dst_img_data_stream_3_U_n_3;
  wire dst_img_data_stream_3_U_n_4;
  wire dst_img_data_stream_3_empty_n;
  wire dst_img_data_stream_3_full_n;
  wire dst_img_data_stream_s_U_n_3;
  wire dst_img_data_stream_s_U_n_4;
  wire [7:0]dst_img_data_stream_s_dout;
  wire dst_img_data_stream_s_empty_n;
  wire dst_img_data_stream_s_full_n;
  wire hls_preprocess_AXILiteS_s_axi_U_n_8;
  wire ifm_img_data_stream_1_U_n_10;
  wire ifm_img_data_stream_1_U_n_11;
  wire ifm_img_data_stream_1_U_n_12;
  wire ifm_img_data_stream_1_U_n_13;
  wire ifm_img_data_stream_1_U_n_14;
  wire ifm_img_data_stream_1_U_n_15;
  wire ifm_img_data_stream_1_U_n_16;
  wire ifm_img_data_stream_1_U_n_2;
  wire ifm_img_data_stream_1_U_n_3;
  wire ifm_img_data_stream_1_U_n_4;
  wire ifm_img_data_stream_1_U_n_5;
  wire ifm_img_data_stream_1_U_n_6;
  wire ifm_img_data_stream_1_U_n_7;
  wire ifm_img_data_stream_1_U_n_8;
  wire ifm_img_data_stream_1_U_n_9;
  wire ifm_img_data_stream_1_full_n;
  wire ifm_img_data_stream_2_U_n_10;
  wire ifm_img_data_stream_2_U_n_11;
  wire ifm_img_data_stream_2_U_n_12;
  wire ifm_img_data_stream_2_U_n_13;
  wire ifm_img_data_stream_2_U_n_14;
  wire ifm_img_data_stream_2_U_n_15;
  wire ifm_img_data_stream_2_U_n_16;
  wire ifm_img_data_stream_2_U_n_3;
  wire ifm_img_data_stream_2_U_n_4;
  wire ifm_img_data_stream_2_U_n_5;
  wire ifm_img_data_stream_2_U_n_6;
  wire ifm_img_data_stream_2_U_n_7;
  wire ifm_img_data_stream_2_U_n_8;
  wire ifm_img_data_stream_2_U_n_9;
  wire ifm_img_data_stream_2_empty_n;
  wire ifm_img_data_stream_2_full_n;
  wire ifm_img_data_stream_3_U_n_1;
  wire ifm_img_data_stream_3_U_n_10;
  wire ifm_img_data_stream_3_U_n_11;
  wire ifm_img_data_stream_3_U_n_12;
  wire ifm_img_data_stream_3_U_n_13;
  wire ifm_img_data_stream_3_U_n_14;
  wire ifm_img_data_stream_3_U_n_15;
  wire ifm_img_data_stream_3_U_n_16;
  wire ifm_img_data_stream_3_U_n_17;
  wire ifm_img_data_stream_3_U_n_18;
  wire ifm_img_data_stream_3_U_n_19;
  wire ifm_img_data_stream_3_U_n_2;
  wire ifm_img_data_stream_3_U_n_20;
  wire ifm_img_data_stream_3_U_n_21;
  wire ifm_img_data_stream_3_U_n_22;
  wire ifm_img_data_stream_3_U_n_23;
  wire ifm_img_data_stream_3_U_n_3;
  wire ifm_img_data_stream_3_U_n_4;
  wire ifm_img_data_stream_3_U_n_5;
  wire ifm_img_data_stream_3_U_n_6;
  wire ifm_img_data_stream_3_U_n_7;
  wire ifm_img_data_stream_3_empty_n;
  wire ifm_img_data_stream_3_full_n;
  wire ifm_img_data_stream_s_U_n_10;
  wire ifm_img_data_stream_s_U_n_11;
  wire ifm_img_data_stream_s_U_n_12;
  wire ifm_img_data_stream_s_U_n_13;
  wire ifm_img_data_stream_s_U_n_14;
  wire ifm_img_data_stream_s_U_n_15;
  wire ifm_img_data_stream_s_U_n_16;
  wire ifm_img_data_stream_s_U_n_3;
  wire ifm_img_data_stream_s_U_n_4;
  wire ifm_img_data_stream_s_U_n_5;
  wire ifm_img_data_stream_s_U_n_6;
  wire ifm_img_data_stream_s_U_n_7;
  wire ifm_img_data_stream_s_U_n_8;
  wire ifm_img_data_stream_s_U_n_9;
  wire ifm_img_data_stream_s_empty_n;
  wire ifm_img_data_stream_s_full_n;
  wire interrupt;
  wire p_22_in;
  wire \regslice_both_AXI_video_strm_V_data_V_U/ibuf_inst/p_0_in ;
  wire [3:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARREADY;
  wire s_axi_AXILiteS_ARVALID;
  wire [3:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWREADY;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [7:0]\^s_axi_AXILiteS_RDATA ;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [31:0]s_axi_AXILiteS_WDATA;
  wire s_axi_AXILiteS_WREADY;
  wire [3:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire shiftReg_ce;
  wire src_img_data_stream_1_U_n_10;
  wire src_img_data_stream_1_U_n_3;
  wire src_img_data_stream_1_U_n_4;
  wire src_img_data_stream_1_U_n_5;
  wire src_img_data_stream_1_U_n_6;
  wire src_img_data_stream_1_U_n_7;
  wire src_img_data_stream_1_U_n_8;
  wire src_img_data_stream_1_U_n_9;
  wire src_img_data_stream_1_empty_n;
  wire src_img_data_stream_1_full_n;
  wire src_img_data_stream_2_U_n_10;
  wire src_img_data_stream_2_U_n_3;
  wire src_img_data_stream_2_U_n_4;
  wire src_img_data_stream_2_U_n_5;
  wire src_img_data_stream_2_U_n_6;
  wire src_img_data_stream_2_U_n_7;
  wire src_img_data_stream_2_U_n_8;
  wire src_img_data_stream_2_U_n_9;
  wire src_img_data_stream_2_empty_n;
  wire src_img_data_stream_2_full_n;
  wire src_img_data_stream_3_empty_n;
  wire src_img_data_stream_3_full_n;
  wire src_img_data_stream_s_empty_n;
  wire src_img_data_stream_s_full_n;
  wire start_for_Convert_U0_full_n;
  wire start_for_Convertcud_U_n_3;
  wire start_for_Downsambkb_U_n_3;
  wire start_for_Downsample_U0_full_n;
  wire start_for_Mat2AXIdEe_U_n_3;
  wire start_for_Mat2AXIvideo_U0_full_n;
  wire start_once_reg;
  wire [7:0]tmp_1_reg_474;
  wire [7:0]tmp_9_reg_469;
  wire [7:0]tmp_reg_464;
  wire [30:0]\^video_dst_TDATA ;
  wire [2:2]\^video_dst_TKEEP ;
  wire [0:0]video_dst_TLAST;
  wire video_dst_TREADY;
  wire [0:0]video_dst_TUSER;
  wire video_dst_TVALID;
  wire [31:0]video_src_TDATA;
  wire [0:0]video_src_TLAST;
  wire video_src_TREADY;
  wire [0:0]video_src_TUSER;
  wire video_src_TVALID;
  wire [15:0]NLW_q0_reg_CASDOUTA_UNCONNECTED;
  wire [15:0]NLW_q0_reg_CASDOUTB_UNCONNECTED;
  wire [1:0]NLW_q0_reg_CASDOUTPA_UNCONNECTED;
  wire [1:0]NLW_q0_reg_CASDOUTPB_UNCONNECTED;
  wire [15:7]NLW_q0_reg_DOUTADOUT_UNCONNECTED;
  wire [15:7]NLW_q0_reg_DOUTBDOUT_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOUTPADOUTP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED;
  wire [15:0]NLW_q2_reg_CASDOUTA_UNCONNECTED;
  wire [15:0]NLW_q2_reg_CASDOUTB_UNCONNECTED;
  wire [1:0]NLW_q2_reg_CASDOUTPA_UNCONNECTED;
  wire [1:0]NLW_q2_reg_CASDOUTPB_UNCONNECTED;
  wire [15:7]NLW_q2_reg_DOUTADOUT_UNCONNECTED;
  wire [15:0]NLW_q2_reg_DOUTBDOUT_UNCONNECTED;
  wire [1:0]NLW_q2_reg_DOUTPADOUTP_UNCONNECTED;
  wire [1:0]NLW_q2_reg_DOUTPBDOUTP_UNCONNECTED;

  assign s_axi_AXILiteS_BRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_BRESP[0] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[31] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[30] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[29] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[28] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[27] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[26] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[25] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[24] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[23] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[22] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[21] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[20] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[19] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[18] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[17] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[16] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[15] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[14] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[13] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[12] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[11] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[10] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[9] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[8] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[7] = \^s_axi_AXILiteS_RDATA [7];
  assign s_axi_AXILiteS_RDATA[6] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[5] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[4] = \<const0> ;
  assign s_axi_AXILiteS_RDATA[3:0] = \^s_axi_AXILiteS_RDATA [3:0];
  assign s_axi_AXILiteS_RRESP[1] = \<const0> ;
  assign s_axi_AXILiteS_RRESP[0] = \<const0> ;
  assign video_dst_TDATA[31] = \<const0> ;
  assign video_dst_TDATA[30:24] = \^video_dst_TDATA [30:24];
  assign video_dst_TDATA[23] = \<const0> ;
  assign video_dst_TDATA[22:16] = \^video_dst_TDATA [22:16];
  assign video_dst_TDATA[15] = \<const0> ;
  assign video_dst_TDATA[14:8] = \^video_dst_TDATA [14:8];
  assign video_dst_TDATA[7] = \<const0> ;
  assign video_dst_TDATA[6:0] = \^video_dst_TDATA [6:0];
  assign video_dst_TDEST[0] = \<const0> ;
  assign video_dst_TID[0] = \<const0> ;
  assign video_dst_TKEEP[3] = \^video_dst_TKEEP [2];
  assign video_dst_TKEEP[2] = \^video_dst_TKEEP [2];
  assign video_dst_TKEEP[1] = \^video_dst_TKEEP [2];
  assign video_dst_TKEEP[0] = \^video_dst_TKEEP [2];
  assign video_dst_TSTRB[3] = \<const0> ;
  assign video_dst_TSTRB[2] = \<const0> ;
  assign video_dst_TSTRB[1] = \<const0> ;
  assign video_dst_TSTRB[0] = \<const0> ;
  cam_hls_preprocess_0_0_AXIvideo2Mat AXIvideo2Mat_U0
       (.AXIvideo2Mat_U0_ap_ready(AXIvideo2Mat_U0_ap_ready),
        .AXIvideo2Mat_U0_ap_start(AXIvideo2Mat_U0_ap_start),
        .AXIvideo2Mat_U0_img_data_stream_3_V_write(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .Q(AXIvideo2Mat_U0_n_3),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .src_img_data_stream_1_full_n(src_img_data_stream_1_full_n),
        .src_img_data_stream_2_full_n(src_img_data_stream_2_full_n),
        .src_img_data_stream_3_full_n(src_img_data_stream_3_full_n),
        .src_img_data_stream_s_full_n(src_img_data_stream_s_full_n),
        .start_for_Downsample_U0_full_n(start_for_Downsample_U0_full_n),
        .start_once_reg(start_once_reg),
        .\tmp_1_reg_474_reg[7]_0 (tmp_1_reg_474),
        .\tmp_9_reg_469_reg[7]_0 (tmp_9_reg_469),
        .\tmp_reg_464_reg[7]_0 (tmp_reg_464),
        .video_src_TDATA(video_src_TDATA[23:0]),
        .video_src_TLAST(video_src_TLAST),
        .video_src_TREADY(video_src_TREADY),
        .video_src_TUSER(video_src_TUSER),
        .video_src_TVALID(video_src_TVALID));
  cam_hls_preprocess_0_0_Convert Convert_U0
       (.AXIvideo2Mat_U0_ap_start(AXIvideo2Mat_U0_ap_start),
        .Convert_U0_ap_start(Convert_U0_ap_start),
        .D(Convert_U0_n_3),
        .E(Convert_U0_n_8),
        .Mat2AXIvideo_U0_img_data_stream_3_V_read(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .Q({dst_img_data_stream_3_U_n_3,dst_img_data_stream_3_U_n_4}),
        .SS(ap_rst_n_inv),
        .\ap_CS_fsm_reg[0]_0 (Convert_U0_n_9),
        .\ap_CS_fsm_reg[1]_0 (Convert_U0_n_10),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .ap_rst_n(ap_rst_n),
        .ce2(p_22_in),
        .dst_img_data_stream_1_empty_n(dst_img_data_stream_1_empty_n),
        .dst_img_data_stream_2_empty_n(dst_img_data_stream_2_empty_n),
        .dst_img_data_stream_3_empty_n(dst_img_data_stream_3_empty_n),
        .dst_img_data_stream_s_empty_n(dst_img_data_stream_s_empty_n),
        .\icmp_ln29_reg_341_pp0_iter1_reg_reg[0]_0 (Convert_U0_n_13),
        .\icmp_ln29_reg_341_reg[0]_0 (Convert_U0_n_4),
        .\icmp_ln29_reg_341_reg[0]_1 (Convert_U0_n_5),
        .\icmp_ln29_reg_341_reg[0]_2 (Convert_U0_n_6),
        .\icmp_ln29_reg_341_reg[0]_3 (Convert_U0_n_7),
        .\icmp_ln29_reg_341_reg[0]_4 (Convert_U0_n_12),
        .ifm_img_data_stream_1_full_n(ifm_img_data_stream_1_full_n),
        .ifm_img_data_stream_2_full_n(ifm_img_data_stream_2_full_n),
        .ifm_img_data_stream_3_full_n(ifm_img_data_stream_3_full_n),
        .ifm_img_data_stream_s_full_n(ifm_img_data_stream_s_full_n),
        .int_ap_idle_reg(Downsample_U0_n_7),
        .int_ap_idle_reg_0(start_for_Mat2AXIdEe_U_n_3),
        .\mOutPtr_reg[1] (Downsample_U0_n_8),
        .\mOutPtr_reg[1]_0 ({dst_img_data_stream_2_U_n_3,dst_img_data_stream_2_U_n_4}),
        .\mOutPtr_reg[1]_1 ({dst_img_data_stream_1_U_n_3,dst_img_data_stream_1_U_n_4}),
        .\mOutPtr_reg[1]_2 ({dst_img_data_stream_s_U_n_3,dst_img_data_stream_s_U_n_4}),
        .shiftReg_ce(shiftReg_ce),
        .start_for_Downsample_U0_full_n(start_for_Downsample_U0_full_n),
        .start_for_Mat2AXIvideo_U0_full_n(start_for_Mat2AXIvideo_U0_full_n),
        .start_once_reg(start_once_reg),
        .start_once_reg_reg_0(Convert_U0_n_1));
  cam_hls_preprocess_0_0_Downsample Downsample_U0
       (.AXIvideo2Mat_U0_img_data_stream_3_V_write(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .Downsample_U0_ap_start(Downsample_U0_ap_start),
        .E(Downsample_U0_n_2),
        .Q(Downsample_U0_n_5),
        .SS(ap_rst_n_inv),
        .\and_ln50_2_reg_358_reg[0]_0 (Downsample_U0_n_8),
        .\ap_CS_fsm_reg[1]_0 (Downsample_U0_n_6),
        .\ap_CS_fsm_reg[2]_0 (Downsample_U0_n_3),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(Downsample_U0_n_4),
        .dst_img_data_stream_1_full_n(dst_img_data_stream_1_full_n),
        .dst_img_data_stream_2_full_n(dst_img_data_stream_2_full_n),
        .dst_img_data_stream_3_full_n(dst_img_data_stream_3_full_n),
        .dst_img_data_stream_s_full_n(dst_img_data_stream_s_full_n),
        .src_img_data_stream_1_empty_n(src_img_data_stream_1_empty_n),
        .src_img_data_stream_2_empty_n(src_img_data_stream_2_empty_n),
        .src_img_data_stream_3_empty_n(src_img_data_stream_3_empty_n),
        .src_img_data_stream_s_empty_n(src_img_data_stream_s_empty_n),
        .start_for_Convert_U0_full_n(start_for_Convert_U0_full_n),
        .start_once_reg_reg_0(Downsample_U0_n_1),
        .start_once_reg_reg_1(Downsample_U0_n_7));
  GND GND
       (.G(\<const0> ));
  cam_hls_preprocess_0_0_Mat2AXIvideo Mat2AXIvideo_U0
       (.D({ifm_img_data_stream_3_U_n_17,ifm_img_data_stream_3_U_n_18,ifm_img_data_stream_3_U_n_19,ifm_img_data_stream_3_U_n_20,ifm_img_data_stream_3_U_n_21,ifm_img_data_stream_3_U_n_22,ifm_img_data_stream_3_U_n_23,ifm_img_data_stream_2_U_n_10,ifm_img_data_stream_2_U_n_11,ifm_img_data_stream_2_U_n_12,ifm_img_data_stream_2_U_n_13,ifm_img_data_stream_2_U_n_14,ifm_img_data_stream_2_U_n_15,ifm_img_data_stream_2_U_n_16,ifm_img_data_stream_1_U_n_10,ifm_img_data_stream_1_U_n_11,ifm_img_data_stream_1_U_n_12,ifm_img_data_stream_1_U_n_13,ifm_img_data_stream_1_U_n_14,ifm_img_data_stream_1_U_n_15,ifm_img_data_stream_1_U_n_16,ifm_img_data_stream_s_U_n_10,ifm_img_data_stream_s_U_n_11,ifm_img_data_stream_s_U_n_12,ifm_img_data_stream_s_U_n_13,ifm_img_data_stream_s_U_n_14,ifm_img_data_stream_s_U_n_15,ifm_img_data_stream_s_U_n_16}),
        .Mat2AXIvideo_U0_ap_ready(Mat2AXIvideo_U0_ap_ready),
        .Mat2AXIvideo_U0_ap_start(Mat2AXIvideo_U0_ap_start),
        .Mat2AXIvideo_U0_img_data_stream_3_V_read(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .Q(Mat2AXIvideo_U0_n_2),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(Mat2AXIvideo_U0_n_6),
        .ap_rst_n_1(Mat2AXIvideo_U0_n_65),
        .internal_empty_n_reg(Mat2AXIvideo_U0_n_4),
        .\ireg_reg[32] ({\regslice_both_AXI_video_strm_V_data_V_U/ibuf_inst/p_0_in ,Mat2AXIvideo_U0_n_37,Mat2AXIvideo_U0_n_38,Mat2AXIvideo_U0_n_39,Mat2AXIvideo_U0_n_40,Mat2AXIvideo_U0_n_41,Mat2AXIvideo_U0_n_42,Mat2AXIvideo_U0_n_43,Mat2AXIvideo_U0_n_44,Mat2AXIvideo_U0_n_45,Mat2AXIvideo_U0_n_46,Mat2AXIvideo_U0_n_47,Mat2AXIvideo_U0_n_48,Mat2AXIvideo_U0_n_49,Mat2AXIvideo_U0_n_50,Mat2AXIvideo_U0_n_51,Mat2AXIvideo_U0_n_52,Mat2AXIvideo_U0_n_53,Mat2AXIvideo_U0_n_54,Mat2AXIvideo_U0_n_55,Mat2AXIvideo_U0_n_56,Mat2AXIvideo_U0_n_57,Mat2AXIvideo_U0_n_58,Mat2AXIvideo_U0_n_59,Mat2AXIvideo_U0_n_60,Mat2AXIvideo_U0_n_61,Mat2AXIvideo_U0_n_62,Mat2AXIvideo_U0_n_63,Mat2AXIvideo_U0_n_64}),
        .\ireg_reg[32]_0 (ifm_img_data_stream_1_U_n_9),
        .\odata_reg[30] ({ifm_img_data_stream_3_U_n_10,ifm_img_data_stream_3_U_n_11,ifm_img_data_stream_3_U_n_12,ifm_img_data_stream_3_U_n_13,ifm_img_data_stream_3_U_n_14,ifm_img_data_stream_3_U_n_15,ifm_img_data_stream_3_U_n_16,ifm_img_data_stream_2_U_n_3,ifm_img_data_stream_2_U_n_4,ifm_img_data_stream_2_U_n_5,ifm_img_data_stream_2_U_n_6,ifm_img_data_stream_2_U_n_7,ifm_img_data_stream_2_U_n_8,ifm_img_data_stream_2_U_n_9,ifm_img_data_stream_1_U_n_2,ifm_img_data_stream_1_U_n_3,ifm_img_data_stream_1_U_n_4,ifm_img_data_stream_1_U_n_5,ifm_img_data_stream_1_U_n_6,ifm_img_data_stream_1_U_n_7,ifm_img_data_stream_1_U_n_8,ifm_img_data_stream_s_U_n_3,ifm_img_data_stream_s_U_n_4,ifm_img_data_stream_s_U_n_5,ifm_img_data_stream_s_U_n_6,ifm_img_data_stream_s_U_n_7,ifm_img_data_stream_s_U_n_8,ifm_img_data_stream_s_U_n_9}),
        .\odata_reg[32] ({video_dst_TVALID,\^video_dst_TDATA [30:24],\^video_dst_TDATA [22:16],\^video_dst_TDATA [14:8],\^video_dst_TDATA [6:0]}),
        .shiftReg_ce(shiftReg_ce),
        .video_dst_TKEEP(\^video_dst_TKEEP ),
        .video_dst_TLAST(video_dst_TLAST),
        .video_dst_TREADY(video_dst_TREADY),
        .video_dst_TUSER(video_dst_TUSER));
  cam_hls_preprocess_0_0_fifo_w8_d2_A dst_img_data_stream_1_U
       (.ADDRBWRADDR(dst_img_data_stream_1_dout),
        .D(Convert_U0_n_5),
        .E(Convert_U0_n_8),
        .Q({dst_img_data_stream_1_U_n_3,dst_img_data_stream_1_U_n_4}),
        .\SRL_SIG_reg[0][7] ({src_img_data_stream_1_U_n_3,src_img_data_stream_1_U_n_4,src_img_data_stream_1_U_n_5,src_img_data_stream_1_U_n_6,src_img_data_stream_1_U_n_7,src_img_data_stream_1_U_n_8,src_img_data_stream_1_U_n_9,src_img_data_stream_1_U_n_10}),
        .\SRL_SIG_reg[1][0] (Downsample_U0_n_8),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dst_img_data_stream_1_empty_n(dst_img_data_stream_1_empty_n),
        .dst_img_data_stream_1_full_n(dst_img_data_stream_1_full_n),
        .internal_empty_n_reg_0(Convert_U0_n_12),
        .internal_full_n_reg_0(Convert_U0_n_7));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_0 dst_img_data_stream_2_U
       (.D(Convert_U0_n_4),
        .E(Convert_U0_n_8),
        .Q({dst_img_data_stream_2_U_n_3,dst_img_data_stream_2_U_n_4}),
        .\SRL_SIG_reg[0][7] (Downsample_U0_n_8),
        .\SRL_SIG_reg[0][7]_0 ({src_img_data_stream_2_U_n_3,src_img_data_stream_2_U_n_4,src_img_data_stream_2_U_n_5,src_img_data_stream_2_U_n_6,src_img_data_stream_2_U_n_7,src_img_data_stream_2_U_n_8,src_img_data_stream_2_U_n_9,src_img_data_stream_2_U_n_10}),
        .SS(ap_rst_n_inv),
        .addr2(dst_img_data_stream_2_dout),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dst_img_data_stream_2_empty_n(dst_img_data_stream_2_empty_n),
        .dst_img_data_stream_2_full_n(dst_img_data_stream_2_full_n),
        .internal_empty_n_reg_0(Convert_U0_n_12),
        .internal_full_n_reg_0(Convert_U0_n_7));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_1 dst_img_data_stream_3_U
       (.D(Convert_U0_n_3),
        .E(Convert_U0_n_8),
        .Q({dst_img_data_stream_3_U_n_3,dst_img_data_stream_3_U_n_4}),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dst_img_data_stream_3_empty_n(dst_img_data_stream_3_empty_n),
        .dst_img_data_stream_3_full_n(dst_img_data_stream_3_full_n),
        .internal_empty_n_reg_0(Convert_U0_n_12),
        .internal_empty_n_reg_1(Downsample_U0_n_8),
        .internal_full_n_reg_0(Convert_U0_n_7));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_2 dst_img_data_stream_s_U
       (.D(Convert_U0_n_6),
        .E(Convert_U0_n_8),
        .Q({dst_img_data_stream_s_U_n_3,dst_img_data_stream_s_U_n_4}),
        .\SRL_SIG_reg[0][7] (Downsample_U0_n_8),
        .\SRL_SIG_reg[0][7]_0 (data),
        .SS(ap_rst_n_inv),
        .addr0(dst_img_data_stream_s_dout),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .dst_img_data_stream_s_empty_n(dst_img_data_stream_s_empty_n),
        .dst_img_data_stream_s_full_n(dst_img_data_stream_s_full_n),
        .internal_empty_n_reg_0(Convert_U0_n_12),
        .internal_full_n_reg_0(Convert_U0_n_7));
  cam_hls_preprocess_0_0_hls_preprocess_AXILiteS_s_axi hls_preprocess_AXILiteS_s_axi_U
       (.AXIvideo2Mat_U0_ap_ready(AXIvideo2Mat_U0_ap_ready),
        .AXIvideo2Mat_U0_ap_start(AXIvideo2Mat_U0_ap_start),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_AXILiteS_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_AXILiteS_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_AXILiteS_WREADY),
        .Mat2AXIvideo_U0_ap_ready(Mat2AXIvideo_U0_ap_ready),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_idle(ap_idle),
        .int_ap_start_reg_0(hls_preprocess_AXILiteS_s_axi_U_n_8),
        .interrupt(interrupt),
        .s_axi_AXILiteS_ARADDR(s_axi_AXILiteS_ARADDR),
        .s_axi_AXILiteS_ARVALID(s_axi_AXILiteS_ARVALID),
        .s_axi_AXILiteS_AWADDR(s_axi_AXILiteS_AWADDR),
        .s_axi_AXILiteS_AWVALID(s_axi_AXILiteS_AWVALID),
        .s_axi_AXILiteS_BREADY(s_axi_AXILiteS_BREADY),
        .s_axi_AXILiteS_BVALID(s_axi_AXILiteS_BVALID),
        .s_axi_AXILiteS_RDATA({\^s_axi_AXILiteS_RDATA [7],\^s_axi_AXILiteS_RDATA [3:0]}),
        .s_axi_AXILiteS_RREADY(s_axi_AXILiteS_RREADY),
        .s_axi_AXILiteS_RVALID(s_axi_AXILiteS_RVALID),
        .s_axi_AXILiteS_WDATA({s_axi_AXILiteS_WDATA[7],s_axi_AXILiteS_WDATA[1:0]}),
        .s_axi_AXILiteS_WSTRB(s_axi_AXILiteS_WSTRB[0]),
        .s_axi_AXILiteS_WVALID(s_axi_AXILiteS_WVALID),
        .start_for_Downsample_U0_full_n(start_for_Downsample_U0_full_n),
        .start_once_reg(start_once_reg));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_3 ifm_img_data_stream_1_U
       (.D(Convert_U0_dst_data_stream_1_V_din),
        .E(Convert_U0_n_13),
        .Mat2AXIvideo_U0_img_data_stream_3_V_read(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ifm_img_data_stream_1_full_n(ifm_img_data_stream_1_full_n),
        .ifm_img_data_stream_2_empty_n(ifm_img_data_stream_2_empty_n),
        .ifm_img_data_stream_3_empty_n(ifm_img_data_stream_3_empty_n),
        .ifm_img_data_stream_s_empty_n(ifm_img_data_stream_s_empty_n),
        .internal_empty_n_reg_0(ifm_img_data_stream_1_U_n_9),
        .internal_full_n_reg_0(Mat2AXIvideo_U0_n_6),
        .\ireg[32]_i_4__0 ({\regslice_both_AXI_video_strm_V_data_V_U/ibuf_inst/p_0_in ,Mat2AXIvideo_U0_n_51,Mat2AXIvideo_U0_n_52,Mat2AXIvideo_U0_n_53,Mat2AXIvideo_U0_n_54,Mat2AXIvideo_U0_n_55,Mat2AXIvideo_U0_n_56,Mat2AXIvideo_U0_n_57}),
        .\odata_reg[14] (Mat2AXIvideo_U0_n_65),
        .q0_reg({ifm_img_data_stream_1_U_n_2,ifm_img_data_stream_1_U_n_3,ifm_img_data_stream_1_U_n_4,ifm_img_data_stream_1_U_n_5,ifm_img_data_stream_1_U_n_6,ifm_img_data_stream_1_U_n_7,ifm_img_data_stream_1_U_n_8}),
        .q0_reg_0({ifm_img_data_stream_1_U_n_10,ifm_img_data_stream_1_U_n_11,ifm_img_data_stream_1_U_n_12,ifm_img_data_stream_1_U_n_13,ifm_img_data_stream_1_U_n_14,ifm_img_data_stream_1_U_n_15,ifm_img_data_stream_1_U_n_16}),
        .shiftReg_ce(shiftReg_ce));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_4 ifm_img_data_stream_2_U
       (.D({ifm_img_data_stream_2_U_n_10,ifm_img_data_stream_2_U_n_11,ifm_img_data_stream_2_U_n_12,ifm_img_data_stream_2_U_n_13,ifm_img_data_stream_2_U_n_14,ifm_img_data_stream_2_U_n_15,ifm_img_data_stream_2_U_n_16}),
        .E(Convert_U0_n_13),
        .Mat2AXIvideo_U0_img_data_stream_3_V_read(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ifm_img_data_stream_2_empty_n(ifm_img_data_stream_2_empty_n),
        .ifm_img_data_stream_2_full_n(ifm_img_data_stream_2_full_n),
        .internal_full_n_reg_0(Mat2AXIvideo_U0_n_6),
        .\odata_reg[16] (ifm_img_data_stream_3_U_n_1),
        .\odata_reg[16]_0 (Mat2AXIvideo_U0_n_65),
        .\odata_reg[17] (ifm_img_data_stream_3_U_n_2),
        .\odata_reg[18] (ifm_img_data_stream_3_U_n_3),
        .\odata_reg[19] (ifm_img_data_stream_3_U_n_4),
        .\odata_reg[20] (ifm_img_data_stream_3_U_n_5),
        .\odata_reg[21] (ifm_img_data_stream_3_U_n_6),
        .\odata_reg[22] ({Mat2AXIvideo_U0_n_44,Mat2AXIvideo_U0_n_45,Mat2AXIvideo_U0_n_46,Mat2AXIvideo_U0_n_47,Mat2AXIvideo_U0_n_48,Mat2AXIvideo_U0_n_49,Mat2AXIvideo_U0_n_50}),
        .\odata_reg[22]_0 (ifm_img_data_stream_3_U_n_7),
        .q2(Convert_U0_dst_data_stream_3_V_din),
        .q2_reg({ifm_img_data_stream_2_U_n_3,ifm_img_data_stream_2_U_n_4,ifm_img_data_stream_2_U_n_5,ifm_img_data_stream_2_U_n_6,ifm_img_data_stream_2_U_n_7,ifm_img_data_stream_2_U_n_8,ifm_img_data_stream_2_U_n_9}),
        .shiftReg_ce(shiftReg_ce));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_5 ifm_img_data_stream_3_U
       (.D({ifm_img_data_stream_3_U_n_17,ifm_img_data_stream_3_U_n_18,ifm_img_data_stream_3_U_n_19,ifm_img_data_stream_3_U_n_20,ifm_img_data_stream_3_U_n_21,ifm_img_data_stream_3_U_n_22,ifm_img_data_stream_3_U_n_23}),
        .E(Convert_U0_n_13),
        .Mat2AXIvideo_U0_img_data_stream_3_V_read(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .\SRL_SIG_reg[1][0] (ifm_img_data_stream_3_U_n_1),
        .\SRL_SIG_reg[1][1] (ifm_img_data_stream_3_U_n_2),
        .\SRL_SIG_reg[1][2] (ifm_img_data_stream_3_U_n_3),
        .\SRL_SIG_reg[1][3] (ifm_img_data_stream_3_U_n_4),
        .\SRL_SIG_reg[1][4] (ifm_img_data_stream_3_U_n_5),
        .\SRL_SIG_reg[1][5] (ifm_img_data_stream_3_U_n_6),
        .\SRL_SIG_reg[1][6] (ifm_img_data_stream_3_U_n_7),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ifm_img_data_stream_3_empty_n(ifm_img_data_stream_3_empty_n),
        .ifm_img_data_stream_3_full_n(ifm_img_data_stream_3_full_n),
        .internal_full_n_reg_0(Mat2AXIvideo_U0_n_6),
        .\odata_reg[30] (Mat2AXIvideo_U0_n_65),
        .\odata_reg[30]_0 ({Mat2AXIvideo_U0_n_37,Mat2AXIvideo_U0_n_38,Mat2AXIvideo_U0_n_39,Mat2AXIvideo_U0_n_40,Mat2AXIvideo_U0_n_41,Mat2AXIvideo_U0_n_42,Mat2AXIvideo_U0_n_43}),
        .q2(Convert_U0_dst_data_stream_3_V_din),
        .q2_reg({ifm_img_data_stream_3_U_n_10,ifm_img_data_stream_3_U_n_11,ifm_img_data_stream_3_U_n_12,ifm_img_data_stream_3_U_n_13,ifm_img_data_stream_3_U_n_14,ifm_img_data_stream_3_U_n_15,ifm_img_data_stream_3_U_n_16}),
        .shiftReg_ce(shiftReg_ce));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_6 ifm_img_data_stream_s_U
       (.D({ifm_img_data_stream_s_U_n_10,ifm_img_data_stream_s_U_n_11,ifm_img_data_stream_s_U_n_12,ifm_img_data_stream_s_U_n_13,ifm_img_data_stream_s_U_n_14,ifm_img_data_stream_s_U_n_15,ifm_img_data_stream_s_U_n_16}),
        .Mat2AXIvideo_U0_img_data_stream_3_V_read(Mat2AXIvideo_U0_img_data_stream_3_V_read),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ifm_img_data_stream_s_empty_n(ifm_img_data_stream_s_empty_n),
        .ifm_img_data_stream_s_full_n(ifm_img_data_stream_s_full_n),
        .internal_full_n_reg_0(Mat2AXIvideo_U0_n_6),
        .\mOutPtr_reg[0]_0 (Convert_U0_n_13),
        .\odata_reg[6] (Mat2AXIvideo_U0_n_65),
        .\odata_reg[6]_0 ({Mat2AXIvideo_U0_n_58,Mat2AXIvideo_U0_n_59,Mat2AXIvideo_U0_n_60,Mat2AXIvideo_U0_n_61,Mat2AXIvideo_U0_n_62,Mat2AXIvideo_U0_n_63,Mat2AXIvideo_U0_n_64}),
        .q0(Convert_U0_dst_data_stream_0_V_din),
        .q0_reg({ifm_img_data_stream_s_U_n_3,ifm_img_data_stream_s_U_n_4,ifm_img_data_stream_s_U_n_5,ifm_img_data_stream_s_U_n_6,ifm_img_data_stream_s_U_n_7,ifm_img_data_stream_s_U_n_8,ifm_img_data_stream_s_U_n_9}),
        .shiftReg_ce(shiftReg_ce));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "1792" *) 
  (* RTL_RAM_NAME = "q0" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "6" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0007000700060006000500050004000400030003000200020001000100000000),
    .INIT_01(256'h000F000F000E000E000D000D000C000C000B000B000A000A0009000900080008),
    .INIT_02(256'h0017001700160016001500150014001400130013001200120011001100100010),
    .INIT_03(256'h001F001F001E001E001D001D001C001C001B001B001A001A0019001900180018),
    .INIT_04(256'h0027002700260026002500250024002400230023002200220021002100200020),
    .INIT_05(256'h002F002F002E002E002D002D002C002C002B002B002A002A0029002900280028),
    .INIT_06(256'h0037003700360036003500350034003400330033003200320031003100300030),
    .INIT_07(256'h003F003F003E003E003D003D003C003C003B003B003A003A0039003900380038),
    .INIT_08(256'h0047004700460046004500450044004400430043004200420041004100400040),
    .INIT_09(256'h004F004F004E004E004D004D004C004C004B004B004A004A0049004900480048),
    .INIT_0A(256'h0057005700560056005500550054005400530053005200520051005100500050),
    .INIT_0B(256'h005F005F005E005E005D005D005C005C005B005B005A005A0059005900580058),
    .INIT_0C(256'h0067006700660066006500650064006400630063006200620061006100600060),
    .INIT_0D(256'h006F006F006E006E006D006D006C006C006B006B006A006A0069006900680068),
    .INIT_0E(256'h0077007700760076007500750074007400730073007200720071007100700070),
    .INIT_0F(256'h007F007F007E007E007D007D007C007C007B007B007A007A0079007900780078),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({1'b0,1'b0,dst_img_data_stream_s_dout,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,dst_img_data_stream_1_dout,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_q0_reg_CASDOUTA_UNCONNECTED[15:0]),
        .CASDOUTB(NLW_q0_reg_CASDOUTB_UNCONNECTED[15:0]),
        .CASDOUTPA(NLW_q0_reg_CASDOUTPA_UNCONNECTED[1:0]),
        .CASDOUTPB(NLW_q0_reg_CASDOUTPB_UNCONNECTED[1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b1,1'b1}),
        .DOUTADOUT({NLW_q0_reg_DOUTADOUT_UNCONNECTED[15:7],Convert_U0_dst_data_stream_0_V_din}),
        .DOUTBDOUT({NLW_q0_reg_DOUTBDOUT_UNCONNECTED[15:7],Convert_U0_dst_data_stream_1_V_din}),
        .DOUTPADOUTP(NLW_q0_reg_DOUTPADOUTP_UNCONNECTED[1:0]),
        .DOUTPBDOUTP(NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED[1:0]),
        .ENARDEN(p_22_in),
        .ENBWREN(p_22_in),
        .REGCEAREGCE(shiftReg_ce),
        .REGCEB(shiftReg_ce),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d7" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "PERFORMANCE" *) 
  (* RTL_RAM_BITS = "1792" *) 
  (* RTL_RAM_NAME = "q2" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "6" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("INDEPENDENT"),
    .DOA_REG(1),
    .DOB_REG(0),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0007000700060006000500050004000400030003000200020001000100000000),
    .INIT_01(256'h000F000F000E000E000D000D000C000C000B000B000A000A0009000900080008),
    .INIT_02(256'h0017001700160016001500150014001400130013001200120011001100100010),
    .INIT_03(256'h001F001F001E001E001D001D001C001C001B001B001A001A0019001900180018),
    .INIT_04(256'h0027002700260026002500250024002400230023002200220021002100200020),
    .INIT_05(256'h002F002F002E002E002D002D002C002C002B002B002A002A0029002900280028),
    .INIT_06(256'h0037003700360036003500350034003400330033003200320031003100300030),
    .INIT_07(256'h003F003F003E003E003D003D003C003C003B003B003A003A0039003900380038),
    .INIT_08(256'h0047004700460046004500450044004400430043004200420041004100400040),
    .INIT_09(256'h004F004F004E004E004D004D004C004C004B004B004A004A0049004900480048),
    .INIT_0A(256'h0057005700560056005500550054005400530053005200520051005100500050),
    .INIT_0B(256'h005F005F005E005E005D005D005C005C005B005B005A005A0059005900580058),
    .INIT_0C(256'h0067006700660066006500650064006400630063006200620061006100600060),
    .INIT_0D(256'h006F006F006E006E006D006D006C006C006B006B006A006A0069006900680068),
    .INIT_0E(256'h0077007700760076007500750074007400730073007200720071007100700070),
    .INIT_0F(256'h007F007F007E007E007D007D007C007C007B007B007A007A0079007900780078),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q2_reg
       (.ADDRARDADDR({1'b0,1'b0,dst_img_data_stream_2_dout,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(NLW_q2_reg_CASDOUTA_UNCONNECTED[15:0]),
        .CASDOUTB(NLW_q2_reg_CASDOUTB_UNCONNECTED[15:0]),
        .CASDOUTPA(NLW_q2_reg_CASDOUTPA_UNCONNECTED[1:0]),
        .CASDOUTPB(NLW_q2_reg_CASDOUTPB_UNCONNECTED[1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DINPADINP({1'b0,1'b0}),
        .DINPBDINP({1'b1,1'b1}),
        .DOUTADOUT({NLW_q2_reg_DOUTADOUT_UNCONNECTED[15:7],Convert_U0_dst_data_stream_3_V_din}),
        .DOUTBDOUT(NLW_q2_reg_DOUTBDOUT_UNCONNECTED[15:0]),
        .DOUTPADOUTP(NLW_q2_reg_DOUTPADOUTP_UNCONNECTED[1:0]),
        .DOUTPBDOUTP(NLW_q2_reg_DOUTPBDOUTP_UNCONNECTED[1:0]),
        .ENARDEN(p_22_in),
        .ENBWREN(1'b0),
        .REGCEAREGCE(shiftReg_ce),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_7 src_img_data_stream_1_U
       (.AXIvideo2Mat_U0_img_data_stream_3_V_write(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(tmp_9_reg_469),
        .E(Downsample_U0_n_2),
        .\SRL_SIG_reg[0][7] ({src_img_data_stream_1_U_n_3,src_img_data_stream_1_U_n_4,src_img_data_stream_1_U_n_5,src_img_data_stream_1_U_n_6,src_img_data_stream_1_U_n_7,src_img_data_stream_1_U_n_8,src_img_data_stream_1_U_n_9,src_img_data_stream_1_U_n_10}),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .internal_full_n_reg_0(Downsample_U0_n_4),
        .internal_full_n_reg_1(Downsample_U0_n_3),
        .src_img_data_stream_1_empty_n(src_img_data_stream_1_empty_n),
        .src_img_data_stream_1_full_n(src_img_data_stream_1_full_n));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_8 src_img_data_stream_2_U
       (.AXIvideo2Mat_U0_img_data_stream_3_V_write(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(tmp_1_reg_474),
        .E(Downsample_U0_n_2),
        .\SRL_SIG_reg[0][7] ({src_img_data_stream_2_U_n_3,src_img_data_stream_2_U_n_4,src_img_data_stream_2_U_n_5,src_img_data_stream_2_U_n_6,src_img_data_stream_2_U_n_7,src_img_data_stream_2_U_n_8,src_img_data_stream_2_U_n_9,src_img_data_stream_2_U_n_10}),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .internal_full_n_reg_0(Downsample_U0_n_4),
        .internal_full_n_reg_1(Downsample_U0_n_3),
        .src_img_data_stream_2_empty_n(src_img_data_stream_2_empty_n),
        .src_img_data_stream_2_full_n(src_img_data_stream_2_full_n));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_9 src_img_data_stream_3_U
       (.AXIvideo2Mat_U0_img_data_stream_3_V_write(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .E(Downsample_U0_n_2),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .internal_full_n_reg_0(Downsample_U0_n_4),
        .internal_full_n_reg_1(Downsample_U0_n_3),
        .src_img_data_stream_3_empty_n(src_img_data_stream_3_empty_n),
        .src_img_data_stream_3_full_n(src_img_data_stream_3_full_n));
  cam_hls_preprocess_0_0_fifo_w8_d2_A_10 src_img_data_stream_s_U
       (.AXIvideo2Mat_U0_img_data_stream_3_V_write(AXIvideo2Mat_U0_img_data_stream_3_V_write),
        .D(tmp_reg_464),
        .E(Downsample_U0_n_2),
        .\SRL_SIG_reg[0][7] (data),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .internal_full_n_reg_0(Downsample_U0_n_4),
        .internal_full_n_reg_1(Downsample_U0_n_3),
        .src_img_data_stream_s_empty_n(src_img_data_stream_s_empty_n),
        .src_img_data_stream_s_full_n(src_img_data_stream_s_full_n));
  cam_hls_preprocess_0_0_start_for_Convertcud start_for_Convertcud_U
       (.Convert_U0_ap_start(Convert_U0_ap_start),
        .Downsample_U0_ap_start(Downsample_U0_ap_start),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .internal_empty_n_reg_0(start_for_Convertcud_U_n_3),
        .internal_empty_n_reg_1(Convert_U0_n_1),
        .internal_full_n_reg_0(start_for_Downsambkb_U_n_3),
        .\mOutPtr_reg[0]_0 (Convert_U0_n_10),
        .\mOutPtr_reg[1]_0 (Downsample_U0_n_1),
        .start_for_Convert_U0_full_n(start_for_Convert_U0_full_n),
        .start_for_Mat2AXIvideo_U0_full_n(start_for_Mat2AXIvideo_U0_full_n));
  cam_hls_preprocess_0_0_start_for_Downsambkb start_for_Downsambkb_U
       (.AXIvideo2Mat_U0_ap_start(AXIvideo2Mat_U0_ap_start),
        .Downsample_U0_ap_start(Downsample_U0_ap_start),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .internal_empty_n_reg_0(start_for_Downsambkb_U_n_3),
        .internal_empty_n_reg_1(hls_preprocess_AXILiteS_s_axi_U_n_8),
        .internal_full_n_reg_0(Downsample_U0_n_1),
        .\mOutPtr_reg[0]_0 (Downsample_U0_n_6),
        .start_for_Convert_U0_full_n(start_for_Convert_U0_full_n),
        .start_for_Downsample_U0_full_n(start_for_Downsample_U0_full_n),
        .start_once_reg(start_once_reg));
  cam_hls_preprocess_0_0_start_for_Mat2AXIdEe start_for_Mat2AXIdEe_U
       (.Convert_U0_ap_start(Convert_U0_ap_start),
        .Mat2AXIvideo_U0_ap_ready(Mat2AXIvideo_U0_ap_ready),
        .Mat2AXIvideo_U0_ap_start(Mat2AXIvideo_U0_ap_start),
        .Q(Downsample_U0_n_5),
        .SS(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .int_ap_idle_reg(Convert_U0_n_9),
        .int_ap_idle_reg_0(Mat2AXIvideo_U0_n_2),
        .int_ap_idle_reg_1(AXIvideo2Mat_U0_n_3),
        .internal_empty_n_reg_0(start_for_Mat2AXIdEe_U_n_3),
        .internal_empty_n_reg_1(start_for_Convertcud_U_n_3),
        .\mOutPtr_reg[1]_0 (Convert_U0_n_1),
        .\mOutPtr_reg[1]_1 (Mat2AXIvideo_U0_n_4),
        .start_for_Mat2AXIvideo_U0_full_n(start_for_Mat2AXIvideo_U0_full_n));
endmodule

(* ORIG_REF_NAME = "hls_preprocess_AXILiteS_s_axi" *) 
module cam_hls_preprocess_0_0_hls_preprocess_AXILiteS_s_axi
   (\FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_AXILiteS_BVALID,
    AXIvideo2Mat_U0_ap_start,
    s_axi_AXILiteS_RVALID,
    \FSM_onehot_rstate_reg[1]_0 ,
    interrupt,
    int_ap_start_reg_0,
    s_axi_AXILiteS_RDATA,
    SS,
    ap_idle,
    ap_clk,
    AXIvideo2Mat_U0_ap_ready,
    s_axi_AXILiteS_WVALID,
    s_axi_AXILiteS_AWVALID,
    s_axi_AXILiteS_BREADY,
    s_axi_AXILiteS_WDATA,
    s_axi_AXILiteS_WSTRB,
    s_axi_AXILiteS_ARADDR,
    s_axi_AXILiteS_RREADY,
    s_axi_AXILiteS_ARVALID,
    start_for_Downsample_U0_full_n,
    start_once_reg,
    Mat2AXIvideo_U0_ap_ready,
    s_axi_AXILiteS_AWADDR);
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_AXILiteS_BVALID;
  output AXIvideo2Mat_U0_ap_start;
  output s_axi_AXILiteS_RVALID;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output interrupt;
  output int_ap_start_reg_0;
  output [4:0]s_axi_AXILiteS_RDATA;
  input [0:0]SS;
  input ap_idle;
  input ap_clk;
  input AXIvideo2Mat_U0_ap_ready;
  input s_axi_AXILiteS_WVALID;
  input s_axi_AXILiteS_AWVALID;
  input s_axi_AXILiteS_BREADY;
  input [2:0]s_axi_AXILiteS_WDATA;
  input [0:0]s_axi_AXILiteS_WSTRB;
  input [3:0]s_axi_AXILiteS_ARADDR;
  input s_axi_AXILiteS_RREADY;
  input s_axi_AXILiteS_ARVALID;
  input start_for_Downsample_U0_full_n;
  input start_once_reg;
  input Mat2AXIvideo_U0_ap_ready;
  input [3:0]s_axi_AXILiteS_AWADDR;

  wire AXIvideo2Mat_U0_ap_ready;
  wire AXIvideo2Mat_U0_ap_start;
  wire \FSM_onehot_rstate[1]_i_1_n_1 ;
  wire \FSM_onehot_rstate[2]_i_1_n_1 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_2_n_1 ;
  wire \FSM_onehot_wstate[2]_i_1_n_1 ;
  wire \FSM_onehot_wstate[3]_i_1_n_1 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire Mat2AXIvideo_U0_ap_ready;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_idle;
  wire ar_hs;
  wire int_ap_done;
  wire int_ap_done_i_1_n_1;
  wire int_ap_done_i_2_n_1;
  wire int_ap_idle;
  wire int_ap_ready;
  wire int_ap_start3_out;
  wire int_ap_start_i_1_n_1;
  wire int_ap_start_reg_0;
  wire int_auto_restart;
  wire int_auto_restart_i_1_n_1;
  wire int_gie_i_1_n_1;
  wire int_gie_reg_n_1;
  wire int_ier9_out;
  wire \int_ier[1]_i_2_n_1 ;
  wire \int_ier_reg_n_1_[0] ;
  wire int_isr;
  wire int_isr6_out;
  wire \int_isr[0]_i_1_n_1 ;
  wire \int_isr[1]_i_1_n_1 ;
  wire \int_isr_reg_n_1_[0] ;
  wire interrupt;
  wire p_0_in__0;
  wire p_1_in;
  wire [7:0]rdata;
  wire \rdata[0]_i_2_n_1 ;
  wire \rdata[1]_i_2_n_1 ;
  wire [3:0]s_axi_AXILiteS_ARADDR;
  wire s_axi_AXILiteS_ARVALID;
  wire [3:0]s_axi_AXILiteS_AWADDR;
  wire s_axi_AXILiteS_AWVALID;
  wire s_axi_AXILiteS_BREADY;
  wire s_axi_AXILiteS_BVALID;
  wire [4:0]s_axi_AXILiteS_RDATA;
  wire s_axi_AXILiteS_RREADY;
  wire s_axi_AXILiteS_RVALID;
  wire [2:0]s_axi_AXILiteS_WDATA;
  wire [0:0]s_axi_AXILiteS_WSTRB;
  wire s_axi_AXILiteS_WVALID;
  wire start_for_Downsample_U0_full_n;
  wire start_once_reg;
  wire waddr;
  wire \waddr_reg_n_1_[0] ;
  wire \waddr_reg_n_1_[1] ;
  wire \waddr_reg_n_1_[2] ;
  wire \waddr_reg_n_1_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h8FDD)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_AXILiteS_RVALID),
        .I1(s_axi_AXILiteS_RREADY),
        .I2(s_axi_AXILiteS_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_AXILiteS_RREADY),
        .I1(s_axi_AXILiteS_RVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(s_axi_AXILiteS_ARVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_1 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_1 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SS));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_RVALID),
        .R(SS));
  LUT5 #(
    .INIT(32'hFF353035)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_AXILiteS_AWVALID),
        .I2(\FSM_onehot_wstate_reg[1]_0 ),
        .I3(s_axi_AXILiteS_BVALID),
        .I4(s_axi_AXILiteS_BREADY),
        .O(\FSM_onehot_wstate[1]_i_2_n_1 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_AXILiteS_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_AXILiteS_AWVALID),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_1 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_AXILiteS_WVALID),
        .I2(s_axi_AXILiteS_BREADY),
        .I3(s_axi_AXILiteS_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_1 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_1 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SS));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_1 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SS));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_1 ),
        .Q(s_axi_AXILiteS_BVALID),
        .R(SS));
  LUT5 #(
    .INIT(32'hFFBFFF00)) 
    int_ap_done_i_1
       (.I0(int_ap_done_i_2_n_1),
        .I1(s_axi_AXILiteS_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .I3(Mat2AXIvideo_U0_ap_ready),
        .I4(int_ap_done),
        .O(int_ap_done_i_1_n_1));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    int_ap_done_i_2
       (.I0(s_axi_AXILiteS_ARADDR[2]),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(s_axi_AXILiteS_ARADDR[1]),
        .I3(s_axi_AXILiteS_ARADDR[0]),
        .O(int_ap_done_i_2_n_1));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_done_i_1_n_1),
        .Q(int_ap_done),
        .R(SS));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(int_ap_idle),
        .R(SS));
  FDRE int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(AXIvideo2Mat_U0_ap_ready),
        .Q(int_ap_ready),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    int_ap_start_i_1
       (.I0(int_auto_restart),
        .I1(AXIvideo2Mat_U0_ap_ready),
        .I2(int_ap_start3_out),
        .I3(AXIvideo2Mat_U0_ap_start),
        .O(int_ap_start_i_1_n_1));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    int_ap_start_i_2
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(\int_ier[1]_i_2_n_1 ),
        .I2(\waddr_reg_n_1_[2] ),
        .I3(\waddr_reg_n_1_[3] ),
        .O(int_ap_start3_out));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_1),
        .Q(AXIvideo2Mat_U0_ap_start),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_AXILiteS_WDATA[2]),
        .I1(\waddr_reg_n_1_[3] ),
        .I2(\waddr_reg_n_1_[2] ),
        .I3(\int_ier[1]_i_2_n_1 ),
        .I4(int_auto_restart),
        .O(int_auto_restart_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_1),
        .Q(int_auto_restart),
        .R(SS));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(\waddr_reg_n_1_[3] ),
        .I2(\waddr_reg_n_1_[2] ),
        .I3(\int_ier[1]_i_2_n_1 ),
        .I4(int_gie_reg_n_1),
        .O(int_gie_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_1),
        .Q(int_gie_reg_n_1),
        .R(SS));
  LUT3 #(
    .INIT(8'h40)) 
    \int_ier[1]_i_1 
       (.I0(\waddr_reg_n_1_[2] ),
        .I1(\waddr_reg_n_1_[3] ),
        .I2(\int_ier[1]_i_2_n_1 ),
        .O(int_ier9_out));
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_ier[1]_i_2 
       (.I0(s_axi_AXILiteS_WSTRB),
        .I1(s_axi_AXILiteS_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_1_[0] ),
        .I4(\waddr_reg_n_1_[1] ),
        .O(\int_ier[1]_i_2_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier9_out),
        .D(s_axi_AXILiteS_WDATA[0]),
        .Q(\int_ier_reg_n_1_[0] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier9_out),
        .D(s_axi_AXILiteS_WDATA[1]),
        .Q(p_0_in__0),
        .R(SS));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[0]),
        .I1(int_isr6_out),
        .I2(Mat2AXIvideo_U0_ap_ready),
        .I3(\int_ier_reg_n_1_[0] ),
        .I4(\int_isr_reg_n_1_[0] ),
        .O(\int_isr[0]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_1_[3] ),
        .I1(\waddr_reg_n_1_[2] ),
        .I2(\int_ier[1]_i_2_n_1 ),
        .O(int_isr6_out));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF8000)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_AXILiteS_WDATA[1]),
        .I1(\int_ier[1]_i_2_n_1 ),
        .I2(\waddr_reg_n_1_[2] ),
        .I3(\waddr_reg_n_1_[3] ),
        .I4(int_isr),
        .I5(p_1_in),
        .O(\int_isr[1]_i_1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_isr[1]_i_2 
       (.I0(p_0_in__0),
        .I1(AXIvideo2Mat_U0_ap_ready),
        .O(int_isr));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_1 ),
        .Q(\int_isr_reg_n_1_[0] ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_1 ),
        .Q(p_1_in),
        .R(SS));
  LUT3 #(
    .INIT(8'h08)) 
    internal_full_n_i_2
       (.I0(AXIvideo2Mat_U0_ap_start),
        .I1(start_for_Downsample_U0_full_n),
        .I2(start_once_reg),
        .O(int_ap_start_reg_0));
  LUT3 #(
    .INIT(8'hE0)) 
    interrupt_INST_0
       (.I0(\int_isr_reg_n_1_[0] ),
        .I1(p_1_in),
        .I2(int_gie_reg_n_1),
        .O(interrupt));
  LUT3 #(
    .INIT(8'h02)) 
    \rdata[0]_i_1 
       (.I0(\rdata[0]_i_2_n_1 ),
        .I1(s_axi_AXILiteS_ARADDR[1]),
        .I2(s_axi_AXILiteS_ARADDR[0]),
        .O(rdata[0]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \rdata[0]_i_2 
       (.I0(\int_ier_reg_n_1_[0] ),
        .I1(\int_isr_reg_n_1_[0] ),
        .I2(AXIvideo2Mat_U0_ap_start),
        .I3(s_axi_AXILiteS_ARADDR[2]),
        .I4(s_axi_AXILiteS_ARADDR[3]),
        .I5(int_gie_reg_n_1),
        .O(\rdata[0]_i_2_n_1 ));
  LUT6 #(
    .INIT(64'h000000008F838C80)) 
    \rdata[1]_i_1 
       (.I0(p_1_in),
        .I1(s_axi_AXILiteS_ARADDR[3]),
        .I2(s_axi_AXILiteS_ARADDR[2]),
        .I3(p_0_in__0),
        .I4(int_ap_done),
        .I5(\rdata[1]_i_2_n_1 ),
        .O(rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \rdata[1]_i_2 
       (.I0(s_axi_AXILiteS_ARADDR[0]),
        .I1(s_axi_AXILiteS_ARADDR[1]),
        .O(\rdata[1]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[2]_i_1 
       (.I0(int_ap_idle),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[1]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(s_axi_AXILiteS_ARADDR[2]),
        .O(rdata[2]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[3]_i_1 
       (.I0(int_ap_ready),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[1]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(s_axi_AXILiteS_ARADDR[2]),
        .O(rdata[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[7]_i_1 
       (.I0(s_axi_AXILiteS_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \rdata[7]_i_2 
       (.I0(int_auto_restart),
        .I1(s_axi_AXILiteS_ARADDR[0]),
        .I2(s_axi_AXILiteS_ARADDR[1]),
        .I3(s_axi_AXILiteS_ARADDR[3]),
        .I4(s_axi_AXILiteS_ARADDR[2]),
        .O(rdata[7]));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[0]),
        .Q(s_axi_AXILiteS_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[1]),
        .Q(s_axi_AXILiteS_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[2]),
        .Q(s_axi_AXILiteS_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[3]),
        .Q(s_axi_AXILiteS_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[7]),
        .Q(s_axi_AXILiteS_RDATA[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_AXILiteS_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[0]),
        .Q(\waddr_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[1]),
        .Q(\waddr_reg_n_1_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[2]),
        .Q(\waddr_reg_n_1_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_AXILiteS_AWADDR[3]),
        .Q(\waddr_reg_n_1_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module cam_hls_preprocess_0_0_ibuf
   (ap_rst_n_0,
    ap_rst_n_1,
    ap_rst_n_2,
    \icmp_ln126_reg_288_reg[0] ,
    ap_enable_reg_pp0_iter0_reg,
    D,
    ap_rst_n_3,
    ap_rst_n_4,
    \tmp_user_V_fu_136_reg[0] ,
    \t_V_1_reg_204_reg[0] ,
    ap_enable_reg_pp0_iter0_reg_0,
    ap_rst_n_5,
    \ireg_reg[32]_0 ,
    \ireg_reg[32]_1 ,
    icmp_ln126_reg_2880,
    \count_reg[1] ,
    ap_rst_n,
    \ireg_reg[32]_2 ,
    ap_enable_reg_pp0_iter0,
    icmp_ln126_fu_232_p2,
    ap_enable_reg_pp0_iter2_reg,
    ap_NS_fsm1,
    video_dst_TREADY,
    \count_reg[0] ,
    \count_reg[0]_0 ,
    Q,
    shiftReg_ce,
    \tmp_user_V_fu_136_reg[0]_0 ,
    Mat2AXIvideo_U0_ap_start,
    \axi_last_V_reg_297_reg[0] ,
    \axi_last_V_reg_297_reg[0]_0 ,
    \axi_last_V_reg_297_reg[0]_1 ,
    \axi_last_V_reg_297_reg[0]_2 ,
    icmp_ln126_reg_288_pp0_iter1_reg,
    \ireg_reg[32]_3 ,
    \ireg_reg[32]_4 ,
    \ireg_reg[0]_0 ,
    SR,
    ap_clk,
    \ireg_reg[30]_0 );
  output ap_rst_n_0;
  output ap_rst_n_1;
  output ap_rst_n_2;
  output \icmp_ln126_reg_288_reg[0] ;
  output [0:0]ap_enable_reg_pp0_iter0_reg;
  output [1:0]D;
  output ap_rst_n_3;
  output ap_rst_n_4;
  output \tmp_user_V_fu_136_reg[0] ;
  output \t_V_1_reg_204_reg[0] ;
  output [0:0]ap_enable_reg_pp0_iter0_reg_0;
  output ap_rst_n_5;
  output [0:0]\ireg_reg[32]_0 ;
  output [28:0]\ireg_reg[32]_1 ;
  output icmp_ln126_reg_2880;
  output \count_reg[1] ;
  input ap_rst_n;
  input \ireg_reg[32]_2 ;
  input ap_enable_reg_pp0_iter0;
  input icmp_ln126_fu_232_p2;
  input ap_enable_reg_pp0_iter2_reg;
  input ap_NS_fsm1;
  input video_dst_TREADY;
  input \count_reg[0] ;
  input \count_reg[0]_0 ;
  input [1:0]Q;
  input shiftReg_ce;
  input [0:0]\tmp_user_V_fu_136_reg[0]_0 ;
  input Mat2AXIvideo_U0_ap_start;
  input \axi_last_V_reg_297_reg[0] ;
  input [1:0]\axi_last_V_reg_297_reg[0]_0 ;
  input \axi_last_V_reg_297_reg[0]_1 ;
  input [0:0]\axi_last_V_reg_297_reg[0]_2 ;
  input icmp_ln126_reg_288_pp0_iter1_reg;
  input \ireg_reg[32]_3 ;
  input \ireg_reg[32]_4 ;
  input [0:0]\ireg_reg[0]_0 ;
  input [0:0]SR;
  input ap_clk;
  input [27:0]\ireg_reg[30]_0 ;

  wire [1:0]D;
  wire Mat2AXIvideo_U0_ap_start;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[3]_i_2__1_n_1 ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire [0:0]ap_enable_reg_pp0_iter0_reg;
  wire [0:0]ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_2;
  wire ap_rst_n_3;
  wire ap_rst_n_4;
  wire ap_rst_n_5;
  wire \axi_last_V_reg_297_reg[0] ;
  wire [1:0]\axi_last_V_reg_297_reg[0]_0 ;
  wire \axi_last_V_reg_297_reg[0]_1 ;
  wire [0:0]\axi_last_V_reg_297_reg[0]_2 ;
  wire \count_reg[0] ;
  wire \count_reg[0]_0 ;
  wire \count_reg[1] ;
  wire icmp_ln126_fu_232_p2;
  wire icmp_ln126_reg_2880;
  wire \icmp_ln126_reg_288[0]_i_3_n_1 ;
  wire icmp_ln126_reg_288_pp0_iter1_reg;
  wire \icmp_ln126_reg_288_reg[0] ;
  wire ireg01_out;
  wire \ireg[32]_i_4__0_n_1 ;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [27:0]\ireg_reg[30]_0 ;
  wire [0:0]\ireg_reg[32]_0 ;
  wire [28:0]\ireg_reg[32]_1 ;
  wire \ireg_reg[32]_2 ;
  wire \ireg_reg[32]_3 ;
  wire \ireg_reg[32]_4 ;
  wire shiftReg_ce;
  wire \t_V_1_reg_204_reg[0] ;
  wire \tmp_user_V_fu_136_reg[0] ;
  wire [0:0]\tmp_user_V_fu_136_reg[0]_0 ;
  wire video_dst_TREADY;

  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm[3]_i_2__1_n_1 ),
        .I1(Q[1]),
        .I2(ap_NS_fsm1),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[3]_i_1__0 
       (.I0(Q[1]),
        .I1(\ap_CS_fsm[3]_i_2__1_n_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h5455540054005400)) 
    \ap_CS_fsm[3]_i_2__1 
       (.I0(\ireg_reg[32]_2 ),
        .I1(icmp_ln126_reg_288_pp0_iter1_reg),
        .I2(ap_rst_n_5),
        .I3(ap_enable_reg_pp0_iter2_reg),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(icmp_ln126_fu_232_p2),
        .O(\ap_CS_fsm[3]_i_2__1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hA8A800A8)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_rst_n),
        .I1(ap_NS_fsm1),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(icmp_ln126_fu_232_p2),
        .I4(\icmp_ln126_reg_288[0]_i_3_n_1 ),
        .O(ap_rst_n_3));
  LUT5 #(
    .INIT(32'h888800A0)) 
    ap_enable_reg_pp0_iter1_i_1__1
       (.I0(ap_rst_n),
        .I1(\ireg_reg[32]_2 ),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(icmp_ln126_fu_232_p2),
        .I4(\ireg[32]_i_4__0_n_1 ),
        .O(ap_rst_n_0));
  LUT5 #(
    .INIT(32'h00A088A0)) 
    ap_enable_reg_pp0_iter2_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_enable_reg_pp0_iter2_reg),
        .I2(\ireg_reg[32]_2 ),
        .I3(\ireg[32]_i_4__0_n_1 ),
        .I4(ap_NS_fsm1),
        .O(ap_rst_n_1));
  LUT6 #(
    .INIT(64'hAAAAABBA00000010)) 
    \axi_last_V_reg_297[0]_i_1 
       (.I0(\icmp_ln126_reg_288[0]_i_3_n_1 ),
        .I1(\axi_last_V_reg_297_reg[0] ),
        .I2(\axi_last_V_reg_297_reg[0]_0 [0]),
        .I3(\axi_last_V_reg_297_reg[0]_0 [1]),
        .I4(\axi_last_V_reg_297_reg[0]_1 ),
        .I5(\axi_last_V_reg_297_reg[0]_2 ),
        .O(\t_V_1_reg_204_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hFF20A0A0)) 
    \count[0]_i_1 
       (.I0(ap_rst_n),
        .I1(video_dst_TREADY),
        .I2(\count_reg[0] ),
        .I3(\icmp_ln126_reg_288_reg[0] ),
        .I4(\count_reg[0]_0 ),
        .O(ap_rst_n_2));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hF4FF)) 
    \count[1]_i_1 
       (.I0(\icmp_ln126_reg_288_reg[0] ),
        .I1(\count_reg[0]_0 ),
        .I2(video_dst_TREADY),
        .I3(\count_reg[0] ),
        .O(\count_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \icmp_ln126_reg_288[0]_i_1 
       (.I0(\icmp_ln126_reg_288[0]_i_3_n_1 ),
        .O(icmp_ln126_reg_2880));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \icmp_ln126_reg_288[0]_i_3 
       (.I0(\ireg[32]_i_4__0_n_1 ),
        .I1(Q[1]),
        .O(\icmp_ln126_reg_288[0]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h5D)) 
    internal_full_n_i_1__4
       (.I0(ap_rst_n),
        .I1(\icmp_ln126_reg_288_reg[0] ),
        .I2(shiftReg_ce),
        .O(ap_rst_n_4));
  LUT3 #(
    .INIT(8'h04)) 
    \ireg[32]_i_2__0 
       (.I0(\ireg_reg[32]_1 [28]),
        .I1(\ireg_reg[0]_0 ),
        .I2(video_dst_TREADY),
        .O(ireg01_out));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \ireg[32]_i_3__0 
       (.I0(\ireg_reg[32]_3 ),
        .I1(\ireg_reg[32]_2 ),
        .I2(Q[1]),
        .I3(\ireg[32]_i_4__0_n_1 ),
        .O(\icmp_ln126_reg_288_reg[0] ));
  LUT6 #(
    .INIT(64'h0404040404FF0404)) 
    \ireg[32]_i_4__0 
       (.I0(\ireg_reg[32]_4 ),
        .I1(\ireg_reg[32]_2 ),
        .I2(\ireg_reg[32]_3 ),
        .I3(ap_rst_n_5),
        .I4(ap_enable_reg_pp0_iter2_reg),
        .I5(icmp_ln126_reg_288_pp0_iter1_reg),
        .O(\ireg[32]_i_4__0_n_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [0]),
        .Q(\ireg_reg[32]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [9]),
        .Q(\ireg_reg[32]_1 [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [10]),
        .Q(\ireg_reg[32]_1 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [11]),
        .Q(\ireg_reg[32]_1 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [12]),
        .Q(\ireg_reg[32]_1 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [13]),
        .Q(\ireg_reg[32]_1 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [14]),
        .Q(\ireg_reg[32]_1 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [15]),
        .Q(\ireg_reg[32]_1 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [16]),
        .Q(\ireg_reg[32]_1 [16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [17]),
        .Q(\ireg_reg[32]_1 [17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [1]),
        .Q(\ireg_reg[32]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [18]),
        .Q(\ireg_reg[32]_1 [18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [19]),
        .Q(\ireg_reg[32]_1 [19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [20]),
        .Q(\ireg_reg[32]_1 [20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[24] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [21]),
        .Q(\ireg_reg[32]_1 [21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[25] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [22]),
        .Q(\ireg_reg[32]_1 [22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[26] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [23]),
        .Q(\ireg_reg[32]_1 [23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[27] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [24]),
        .Q(\ireg_reg[32]_1 [24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[28] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [25]),
        .Q(\ireg_reg[32]_1 [25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[29] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [26]),
        .Q(\ireg_reg[32]_1 [26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [2]),
        .Q(\ireg_reg[32]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[30] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [27]),
        .Q(\ireg_reg[32]_1 [27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[32] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\icmp_ln126_reg_288_reg[0] ),
        .Q(\ireg_reg[32]_1 [28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [3]),
        .Q(\ireg_reg[32]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [4]),
        .Q(\ireg_reg[32]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [5]),
        .Q(\ireg_reg[32]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [6]),
        .Q(\ireg_reg[32]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [7]),
        .Q(\ireg_reg[32]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[30]_0 [8]),
        .Q(\ireg_reg[32]_1 [8]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \odata[30]_i_3 
       (.I0(ap_rst_n),
        .I1(\ireg_reg[32]_1 [28]),
        .O(ap_rst_n_5));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[32]_i_1 
       (.I0(\ireg_reg[32]_1 [28]),
        .I1(\icmp_ln126_reg_288_reg[0] ),
        .O(\ireg_reg[32]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \t_V_1_reg_204[8]_i_1 
       (.I0(ap_NS_fsm1),
        .I1(\icmp_ln126_reg_288[0]_i_3_n_1 ),
        .I2(ap_enable_reg_pp0_iter0),
        .I3(icmp_ln126_fu_232_p2),
        .O(ap_enable_reg_pp0_iter0_reg));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \t_V_1_reg_204[8]_i_2 
       (.I0(icmp_ln126_fu_232_p2),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(\icmp_ln126_reg_288[0]_i_3_n_1 ),
        .O(ap_enable_reg_pp0_iter0_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h00EA)) 
    \tmp_user_V_fu_136[0]_i_1 
       (.I0(\tmp_user_V_fu_136_reg[0]_0 ),
        .I1(Mat2AXIvideo_U0_ap_start),
        .I2(Q[0]),
        .I3(\icmp_ln126_reg_288_reg[0] ),
        .O(\tmp_user_V_fu_136_reg[0] ));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module cam_hls_preprocess_0_0_ibuf_29
   (video_src_TREADY,
    Q,
    D,
    \ireg_reg[32]_0 ,
    ap_rst_n,
    SR,
    E,
    ap_clk);
  output video_src_TREADY;
  output [0:0]Q;
  output [24:0]D;
  input [24:0]\ireg_reg[32]_0 ;
  input ap_rst_n;
  input [0:0]SR;
  input [0:0]E;
  input ap_clk;

  wire [24:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [24:0]\ireg_reg[32]_0 ;
  wire \ireg_reg_n_1_[0] ;
  wire \ireg_reg_n_1_[10] ;
  wire \ireg_reg_n_1_[11] ;
  wire \ireg_reg_n_1_[12] ;
  wire \ireg_reg_n_1_[13] ;
  wire \ireg_reg_n_1_[14] ;
  wire \ireg_reg_n_1_[15] ;
  wire \ireg_reg_n_1_[16] ;
  wire \ireg_reg_n_1_[17] ;
  wire \ireg_reg_n_1_[18] ;
  wire \ireg_reg_n_1_[19] ;
  wire \ireg_reg_n_1_[1] ;
  wire \ireg_reg_n_1_[20] ;
  wire \ireg_reg_n_1_[21] ;
  wire \ireg_reg_n_1_[22] ;
  wire \ireg_reg_n_1_[23] ;
  wire \ireg_reg_n_1_[2] ;
  wire \ireg_reg_n_1_[3] ;
  wire \ireg_reg_n_1_[4] ;
  wire \ireg_reg_n_1_[5] ;
  wire \ireg_reg_n_1_[6] ;
  wire \ireg_reg_n_1_[7] ;
  wire \ireg_reg_n_1_[8] ;
  wire \ireg_reg_n_1_[9] ;
  wire video_src_TREADY;

  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [0]),
        .Q(\ireg_reg_n_1_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [10]),
        .Q(\ireg_reg_n_1_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [11]),
        .Q(\ireg_reg_n_1_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [12]),
        .Q(\ireg_reg_n_1_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [13]),
        .Q(\ireg_reg_n_1_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [14]),
        .Q(\ireg_reg_n_1_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [15]),
        .Q(\ireg_reg_n_1_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [16]),
        .Q(\ireg_reg_n_1_[16] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [17]),
        .Q(\ireg_reg_n_1_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [18]),
        .Q(\ireg_reg_n_1_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [19]),
        .Q(\ireg_reg_n_1_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [1]),
        .Q(\ireg_reg_n_1_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [20]),
        .Q(\ireg_reg_n_1_[20] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [21]),
        .Q(\ireg_reg_n_1_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [22]),
        .Q(\ireg_reg_n_1_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [23]),
        .Q(\ireg_reg_n_1_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [2]),
        .Q(\ireg_reg_n_1_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[32] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [24]),
        .Q(Q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [3]),
        .Q(\ireg_reg_n_1_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [4]),
        .Q(\ireg_reg_n_1_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [5]),
        .Q(\ireg_reg_n_1_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [6]),
        .Q(\ireg_reg_n_1_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [7]),
        .Q(\ireg_reg_n_1_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [8]),
        .Q(\ireg_reg_n_1_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(\ireg_reg[32]_0 [9]),
        .Q(\ireg_reg_n_1_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[0]_i_1__0 
       (.I0(\ireg_reg[32]_0 [0]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[10]_i_1__0 
       (.I0(\ireg_reg[32]_0 [10]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[10] ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[11]_i_1__0 
       (.I0(\ireg_reg[32]_0 [11]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[11] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[12]_i_1__0 
       (.I0(\ireg_reg[32]_0 [12]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[12] ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[13]_i_1__0 
       (.I0(\ireg_reg[32]_0 [13]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[13] ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[14]_i_1__0 
       (.I0(\ireg_reg[32]_0 [14]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[14] ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[15]_i_1 
       (.I0(\ireg_reg[32]_0 [15]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[15] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[16]_i_1__0 
       (.I0(\ireg_reg[32]_0 [16]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[16] ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[17]_i_1__0 
       (.I0(\ireg_reg[32]_0 [17]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[17] ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[18]_i_1__0 
       (.I0(\ireg_reg[32]_0 [18]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[18] ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[19]_i_1__0 
       (.I0(\ireg_reg[32]_0 [19]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[19] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[1]_i_1__2 
       (.I0(\ireg_reg[32]_0 [1]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[1] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[20]_i_1__0 
       (.I0(\ireg_reg[32]_0 [20]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[20] ),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[21]_i_1__0 
       (.I0(\ireg_reg[32]_0 [21]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[21] ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[22]_i_1__0 
       (.I0(\ireg_reg[32]_0 [22]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[22] ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[23]_i_1 
       (.I0(\ireg_reg[32]_0 [23]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[23] ),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[2]_i_1__0 
       (.I0(\ireg_reg[32]_0 [2]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[32]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[32]_0 [24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[3]_i_1__0 
       (.I0(\ireg_reg[32]_0 [3]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[3] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[4]_i_1__1 
       (.I0(\ireg_reg[32]_0 [4]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[4] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[5]_i_1__0 
       (.I0(\ireg_reg[32]_0 [5]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[5] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[6]_i_1__0 
       (.I0(\ireg_reg[32]_0 [6]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[6] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[7]_i_1 
       (.I0(\ireg_reg[32]_0 [7]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[7] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[8]_i_1__0 
       (.I0(\ireg_reg[32]_0 [8]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[8] ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[9]_i_1__0 
       (.I0(\ireg_reg[32]_0 [9]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[9] ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h20)) 
    video_src_TREADY_INST_0
       (.I0(\ireg_reg[32]_0 [24]),
        .I1(Q),
        .I2(ap_rst_n),
        .O(video_src_TREADY));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module cam_hls_preprocess_0_0_ibuf__parameterized0
   (D,
    Q,
    \ireg_reg[4]_0 ,
    \ireg_reg[3]_0 ,
    video_dst_TREADY,
    SR,
    ap_clk);
  output [1:0]D;
  output [0:0]Q;
  input [0:0]\ireg_reg[4]_0 ;
  input [0:0]\ireg_reg[3]_0 ;
  input video_dst_TREADY;
  input [0:0]SR;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ireg01_out;
  wire [0:0]\ireg_reg[3]_0 ;
  wire [0:0]\ireg_reg[4]_0 ;
  wire \ireg_reg_n_1_[3] ;
  wire video_dst_TREADY;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[4]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[3]_0 ),
        .I2(video_dst_TREADY),
        .O(ireg01_out));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[3] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(1'b1),
        .Q(\ireg_reg_n_1_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[4] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[4]_0 ),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \odata[3]_i_2 
       (.I0(Q),
        .I1(\ireg_reg_n_1_[3] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[4]_i_1__0 
       (.I0(Q),
        .I1(\ireg_reg[4]_0 ),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module cam_hls_preprocess_0_0_ibuf__parameterized1
   (D,
    Q,
    \ireg_reg[1]_0 ,
    \ireg_reg[0]_0 ,
    video_dst_TREADY,
    SR,
    ap_clk);
  output [1:0]D;
  output [0:0]Q;
  input [1:0]\ireg_reg[1]_0 ;
  input [0:0]\ireg_reg[0]_0 ;
  input video_dst_TREADY;
  input [0:0]SR;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ireg01_out;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [1:0]\ireg_reg[1]_0 ;
  wire \ireg_reg_n_1_[0] ;
  wire video_dst_TREADY;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[1]_i_2__1 
       (.I0(Q),
        .I1(\ireg_reg[0]_0 ),
        .I2(video_dst_TREADY),
        .O(ireg01_out));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[1]_0 [0]),
        .Q(\ireg_reg_n_1_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[1]_0 [1]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[0]_i_2 
       (.I0(\ireg_reg[1]_0 [0]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[1]_i_1__0 
       (.I0(Q),
        .I1(\ireg_reg[1]_0 [1]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module cam_hls_preprocess_0_0_ibuf__parameterized1_20
   (D,
    Q,
    \ireg_reg[1]_0 ,
    \ireg_reg[0]_0 ,
    video_dst_TREADY,
    SR,
    ap_clk);
  output [1:0]D;
  output [0:0]Q;
  input [1:0]\ireg_reg[1]_0 ;
  input [0:0]\ireg_reg[0]_0 ;
  input video_dst_TREADY;
  input [0:0]SR;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ireg01_out;
  wire [0:0]\ireg_reg[0]_0 ;
  wire [1:0]\ireg_reg[1]_0 ;
  wire \ireg_reg_n_1_[0] ;
  wire video_dst_TREADY;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[1]_i_2__2 
       (.I0(Q),
        .I1(\ireg_reg[0]_0 ),
        .I2(video_dst_TREADY),
        .O(ireg01_out));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[1]_0 [0]),
        .Q(\ireg_reg_n_1_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[1]_0 [1]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[0]_i_2__0 
       (.I0(\ireg_reg[1]_0 [0]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[1]_i_1__1 
       (.I0(Q),
        .I1(\ireg_reg[1]_0 [1]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module cam_hls_preprocess_0_0_ibuf__parameterized1_25
   (D,
    Q,
    \ireg_reg[1]_0 ,
    \ireg_reg[0]_0 ,
    \ireg_reg[0]_1 ,
    SR,
    ap_clk);
  output [1:0]D;
  output [0:0]Q;
  input [1:0]\ireg_reg[1]_0 ;
  input [0:0]\ireg_reg[0]_0 ;
  input \ireg_reg[0]_1 ;
  input [0:0]SR;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ireg01_out;
  wire [0:0]\ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire [1:0]\ireg_reg[1]_0 ;
  wire \ireg_reg_n_1_[0] ;

  LUT3 #(
    .INIT(8'h04)) 
    \ireg[1]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[0]_0 ),
        .I2(\ireg_reg[0]_1 ),
        .O(ireg01_out));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[1]_0 [0]),
        .Q(\ireg_reg_n_1_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[1]_0 [1]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[0]_i_1__1 
       (.I0(\ireg_reg[1]_0 [0]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[1]_i_2 
       (.I0(Q),
        .I1(\ireg_reg[1]_0 [1]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "ibuf" *) 
module cam_hls_preprocess_0_0_ibuf__parameterized1_27
   (\icmp_ln73_reg_451_reg[0] ,
    \eol_0_reg_260_reg[0] ,
    icmp_ln73_fu_362_p2,
    \t_V_2_reg_249_reg[9] ,
    \t_V_2_reg_249_reg[7] ,
    \t_V_2_reg_249_reg[4] ,
    D,
    Q,
    \tmp_1_reg_474_reg[7] ,
    \tmp_1_reg_474_reg[7]_0 ,
    src_img_data_stream_2_full_n,
    src_img_data_stream_3_full_n,
    src_img_data_stream_1_full_n,
    src_img_data_stream_s_full_n,
    \tmp_1_reg_474_reg[7]_1 ,
    \tmp_1_reg_474_reg[7]_2 ,
    sof_1_fu_146,
    \tmp_1_reg_474_reg[7]_3 ,
    \icmp_ln73_reg_451_reg[0]_0 ,
    \ireg_reg[1]_0 ,
    \ireg_reg[0]_0 ,
    \ireg_reg[0]_1 ,
    SR,
    ap_clk);
  output \icmp_ln73_reg_451_reg[0] ;
  output \eol_0_reg_260_reg[0] ;
  output icmp_ln73_fu_362_p2;
  output \t_V_2_reg_249_reg[9] ;
  output \t_V_2_reg_249_reg[7] ;
  output \t_V_2_reg_249_reg[4] ;
  output [1:0]D;
  output [0:0]Q;
  input \tmp_1_reg_474_reg[7] ;
  input \tmp_1_reg_474_reg[7]_0 ;
  input src_img_data_stream_2_full_n;
  input src_img_data_stream_3_full_n;
  input src_img_data_stream_1_full_n;
  input src_img_data_stream_s_full_n;
  input \tmp_1_reg_474_reg[7]_1 ;
  input [0:0]\tmp_1_reg_474_reg[7]_2 ;
  input sof_1_fu_146;
  input \tmp_1_reg_474_reg[7]_3 ;
  input [10:0]\icmp_ln73_reg_451_reg[0]_0 ;
  input [1:0]\ireg_reg[1]_0 ;
  input [0:0]\ireg_reg[0]_0 ;
  input \ireg_reg[0]_1 ;
  input [0:0]SR;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire \eol_0_reg_260_reg[0] ;
  wire icmp_ln73_fu_362_p2;
  wire \icmp_ln73_reg_451_reg[0] ;
  wire [10:0]\icmp_ln73_reg_451_reg[0]_0 ;
  wire ireg01_out;
  wire [0:0]\ireg_reg[0]_0 ;
  wire \ireg_reg[0]_1 ;
  wire [1:0]\ireg_reg[1]_0 ;
  wire \ireg_reg_n_1_[0] ;
  wire sof_1_fu_146;
  wire src_img_data_stream_1_full_n;
  wire src_img_data_stream_2_full_n;
  wire src_img_data_stream_3_full_n;
  wire src_img_data_stream_s_full_n;
  wire \t_V_2_reg_249_reg[4] ;
  wire \t_V_2_reg_249_reg[7] ;
  wire \t_V_2_reg_249_reg[9] ;
  wire \tmp_1_reg_474_reg[7] ;
  wire \tmp_1_reg_474_reg[7]_0 ;
  wire \tmp_1_reg_474_reg[7]_1 ;
  wire [0:0]\tmp_1_reg_474_reg[7]_2 ;
  wire \tmp_1_reg_474_reg[7]_3 ;

  LUT6 #(
    .INIT(64'h0444444444444444)) 
    \ap_CS_fsm[5]_i_2 
       (.I0(\tmp_1_reg_474_reg[7] ),
        .I1(\tmp_1_reg_474_reg[7]_0 ),
        .I2(src_img_data_stream_2_full_n),
        .I3(src_img_data_stream_3_full_n),
        .I4(src_img_data_stream_1_full_n),
        .I5(src_img_data_stream_s_full_n),
        .O(\icmp_ln73_reg_451_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \ap_CS_fsm[5]_i_3 
       (.I0(\icmp_ln73_reg_451_reg[0]_0 [10]),
        .I1(\icmp_ln73_reg_451_reg[0]_0 [6]),
        .I2(\icmp_ln73_reg_451_reg[0]_0 [1]),
        .I3(\icmp_ln73_reg_451_reg[0]_0 [4]),
        .I4(\t_V_2_reg_249_reg[9] ),
        .I5(\t_V_2_reg_249_reg[7] ),
        .O(icmp_ln73_fu_362_p2));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \ap_CS_fsm[5]_i_4 
       (.I0(\icmp_ln73_reg_451_reg[0]_0 [9]),
        .I1(\icmp_ln73_reg_451_reg[0]_0 [2]),
        .I2(\icmp_ln73_reg_451_reg[0]_0 [1]),
        .I3(\icmp_ln73_reg_451_reg[0]_0 [0]),
        .O(\t_V_2_reg_249_reg[9] ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \ap_CS_fsm[5]_i_5 
       (.I0(\icmp_ln73_reg_451_reg[0]_0 [7]),
        .I1(\icmp_ln73_reg_451_reg[0]_0 [3]),
        .I2(\icmp_ln73_reg_451_reg[0]_0 [8]),
        .I3(\icmp_ln73_reg_451_reg[0]_0 [5]),
        .O(\t_V_2_reg_249_reg[7] ));
  LUT3 #(
    .INIT(8'h04)) 
    \ireg[1]_i_2__0 
       (.I0(Q),
        .I1(\ireg_reg[0]_0 ),
        .I2(\ireg_reg[0]_1 ),
        .O(ireg01_out));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[0] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[1]_0 [0]),
        .Q(\ireg_reg_n_1_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \ireg_reg[1] 
       (.C(ap_clk),
        .CE(ireg01_out),
        .D(\ireg_reg[1]_0 [1]),
        .Q(Q),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \odata[0]_i_1__2 
       (.I0(\ireg_reg[1]_0 [0]),
        .I1(Q),
        .I2(\ireg_reg_n_1_[0] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \odata[1]_i_2__0 
       (.I0(Q),
        .I1(\ireg_reg[1]_0 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00005515000055D5)) 
    \tmp_reg_464[7]_i_4 
       (.I0(\tmp_1_reg_474_reg[7]_1 ),
        .I1(\tmp_1_reg_474_reg[7]_2 ),
        .I2(\tmp_1_reg_474_reg[7]_0 ),
        .I3(\tmp_1_reg_474_reg[7] ),
        .I4(sof_1_fu_146),
        .I5(\tmp_1_reg_474_reg[7]_3 ),
        .O(\eol_0_reg_260_reg[0] ));
  LUT4 #(
    .INIT(16'h0100)) 
    \tmp_reg_464[7]_i_6 
       (.I0(\icmp_ln73_reg_451_reg[0]_0 [4]),
        .I1(\icmp_ln73_reg_451_reg[0]_0 [1]),
        .I2(\icmp_ln73_reg_451_reg[0]_0 [6]),
        .I3(\icmp_ln73_reg_451_reg[0]_0 [10]),
        .O(\t_V_2_reg_249_reg[4] ));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module cam_hls_preprocess_0_0_obuf
   (SR,
    \odata_reg[32]_0 ,
    Q,
    ap_rst_n,
    video_dst_TREADY,
    \ireg_reg[32] ,
    D,
    ap_clk);
  output [0:0]SR;
  output [0:0]\odata_reg[32]_0 ;
  output [28:0]Q;
  input ap_rst_n;
  input video_dst_TREADY;
  input [0:0]\ireg_reg[32] ;
  input [28:0]D;
  input ap_clk;

  wire [28:0]D;
  wire [28:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]\ireg_reg[32] ;
  wire \odata[30]_i_1_n_1 ;
  wire [0:0]\odata_reg[32]_0 ;
  wire video_dst_TREADY;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[32]_i_1__0 
       (.I0(Q[28]),
        .I1(video_dst_TREADY),
        .I2(\ireg_reg[32] ),
        .I3(ap_rst_n),
        .O(\odata_reg[32]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \odata[30]_i_1 
       (.I0(video_dst_TREADY),
        .I1(Q[28]),
        .O(\odata[30]_i_1_n_1 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \odata_reg[10] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[9]),
        .Q(Q[9]),
        .R(SR));
  FDRE \odata_reg[11] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \odata_reg[12] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \odata_reg[13] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \odata_reg[14] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \odata_reg[16] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \odata_reg[17] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \odata_reg[18] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \odata_reg[19] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \odata_reg[20] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \odata_reg[21] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \odata_reg[22] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \odata_reg[24] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \odata_reg[25] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \odata_reg[26] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \odata_reg[27] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \odata_reg[28] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \odata_reg[29] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \odata_reg[2] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \odata_reg[30] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \odata_reg[32] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \odata_reg[5] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \odata_reg[6] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \odata_reg[8] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \odata_reg[9] 
       (.C(ap_clk),
        .CE(\odata[30]_i_1_n_1 ),
        .D(D[8]),
        .Q(Q[8]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module cam_hls_preprocess_0_0_obuf_30
   (ap_rst_n_0,
    \axi_last_V_2_reg_272_reg[0] ,
    \icmp_ln73_reg_451_reg[0] ,
    E,
    \axi_last_V_2_reg_272_reg[0]_0 ,
    D,
    \ap_CS_fsm_reg[4] ,
    \ap_CS_fsm_reg[4]_0 ,
    SR,
    \odata_reg[32]_0 ,
    \ap_CS_fsm_reg[4]_1 ,
    \odata_reg[7]_0 ,
    \odata_reg[23]_0 ,
    \odata_reg[15]_0 ,
    \odata_reg[23]_1 ,
    \ap_CS_fsm_reg[5] ,
    \odata_reg[32]_1 ,
    \axi_data_V_1_reg_238_reg[23] ,
    \odata_reg[1]_0 ,
    \odata_reg[1]_1 ,
    \ireg_reg[32] ,
    \ap_CS_fsm_reg[4]_2 ,
    \ap_CS_fsm_reg[4]_3 ,
    \ap_CS_fsm_reg[4]_4 ,
    \ap_CS_fsm_reg[4]_5 ,
    \ap_CS_fsm_reg[4]_6 ,
    ap_rst_n,
    \SRL_SIG_reg[1][0] ,
    ap_enable_reg_pp1_iter0,
    icmp_ln73_fu_362_p2,
    p_1_in3_in,
    \eol_reg_227_reg[0] ,
    \eol_0_reg_260_reg[0] ,
    axi_last_V_0_reg_196,
    Q,
    \axi_data_V_1_reg_238_reg[23]_0 ,
    \icmp_ln73_reg_451_reg[0]_0 ,
    \axi_data_V_3_reg_309_reg[0] ,
    \ireg_reg[32]_0 ,
    \tmp_1_reg_474_reg[7] ,
    \icmp_ln73_reg_451_reg[0]_1 ,
    \icmp_ln73_reg_451_reg[0]_2 ,
    \icmp_ln73_reg_451_reg[0]_3 ,
    \icmp_ln73_reg_451_reg[0]_4 ,
    \axi_data_V_3_reg_309_reg[23] ,
    \p_Val2_s_reg_285_reg[23] ,
    \p_Val2_s_reg_285_reg[23]_0 ,
    \axi_data_V_3_reg_309_reg[0]_0 ,
    \odata_reg[0]_0 ,
    \odata_reg[0]_1 ,
    sof_1_fu_146,
    SS,
    \odata_reg[32]_2 ,
    ap_clk);
  output ap_rst_n_0;
  output \axi_last_V_2_reg_272_reg[0] ;
  output \icmp_ln73_reg_451_reg[0] ;
  output [0:0]E;
  output \axi_last_V_2_reg_272_reg[0]_0 ;
  output [23:0]D;
  output [0:0]\ap_CS_fsm_reg[4] ;
  output \ap_CS_fsm_reg[4]_0 ;
  output [0:0]SR;
  output [24:0]\odata_reg[32]_0 ;
  output \ap_CS_fsm_reg[4]_1 ;
  output [7:0]\odata_reg[7]_0 ;
  output [23:0]\odata_reg[23]_0 ;
  output [7:0]\odata_reg[15]_0 ;
  output [7:0]\odata_reg[23]_1 ;
  output [0:0]\ap_CS_fsm_reg[5] ;
  output [0:0]\odata_reg[32]_1 ;
  output [23:0]\axi_data_V_1_reg_238_reg[23] ;
  output [0:0]\odata_reg[1]_0 ;
  output [0:0]\odata_reg[1]_1 ;
  output [0:0]\ireg_reg[32] ;
  output [0:0]\ap_CS_fsm_reg[4]_2 ;
  output [0:0]\ap_CS_fsm_reg[4]_3 ;
  output \ap_CS_fsm_reg[4]_4 ;
  output [0:0]\ap_CS_fsm_reg[4]_5 ;
  output \ap_CS_fsm_reg[4]_6 ;
  input ap_rst_n;
  input \SRL_SIG_reg[1][0] ;
  input ap_enable_reg_pp1_iter0;
  input icmp_ln73_fu_362_p2;
  input p_1_in3_in;
  input \eol_reg_227_reg[0] ;
  input \eol_0_reg_260_reg[0] ;
  input axi_last_V_0_reg_196;
  input [23:0]Q;
  input [23:0]\axi_data_V_1_reg_238_reg[23]_0 ;
  input \icmp_ln73_reg_451_reg[0]_0 ;
  input [4:0]\axi_data_V_3_reg_309_reg[0] ;
  input [0:0]\ireg_reg[32]_0 ;
  input \tmp_1_reg_474_reg[7] ;
  input \icmp_ln73_reg_451_reg[0]_1 ;
  input \icmp_ln73_reg_451_reg[0]_2 ;
  input \icmp_ln73_reg_451_reg[0]_3 ;
  input \icmp_ln73_reg_451_reg[0]_4 ;
  input [23:0]\axi_data_V_3_reg_309_reg[23] ;
  input \p_Val2_s_reg_285_reg[23] ;
  input \p_Val2_s_reg_285_reg[23]_0 ;
  input \axi_data_V_3_reg_309_reg[0]_0 ;
  input [0:0]\odata_reg[0]_0 ;
  input [0:0]\odata_reg[0]_1 ;
  input sof_1_fu_146;
  input [0:0]SS;
  input [24:0]\odata_reg[32]_2 ;
  input ap_clk;

  wire [23:0]D;
  wire [0:0]E;
  wire [23:0]Q;
  wire [0:0]SR;
  wire \SRL_SIG_reg[1][0] ;
  wire [0:0]SS;
  wire [0:0]\ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[4]_0 ;
  wire \ap_CS_fsm_reg[4]_1 ;
  wire [0:0]\ap_CS_fsm_reg[4]_2 ;
  wire [0:0]\ap_CS_fsm_reg[4]_3 ;
  wire \ap_CS_fsm_reg[4]_4 ;
  wire [0:0]\ap_CS_fsm_reg[4]_5 ;
  wire \ap_CS_fsm_reg[4]_6 ;
  wire [0:0]\ap_CS_fsm_reg[5] ;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire [23:0]\axi_data_V_1_reg_238_reg[23] ;
  wire [23:0]\axi_data_V_1_reg_238_reg[23]_0 ;
  wire [4:0]\axi_data_V_3_reg_309_reg[0] ;
  wire \axi_data_V_3_reg_309_reg[0]_0 ;
  wire [23:0]\axi_data_V_3_reg_309_reg[23] ;
  wire axi_last_V_0_reg_196;
  wire \axi_last_V_2_reg_272_reg[0] ;
  wire \axi_last_V_2_reg_272_reg[0]_0 ;
  wire \eol_0_reg_260_reg[0] ;
  wire \eol_reg_227_reg[0] ;
  wire icmp_ln73_fu_362_p2;
  wire \icmp_ln73_reg_451_reg[0] ;
  wire \icmp_ln73_reg_451_reg[0]_0 ;
  wire \icmp_ln73_reg_451_reg[0]_1 ;
  wire \icmp_ln73_reg_451_reg[0]_2 ;
  wire \icmp_ln73_reg_451_reg[0]_3 ;
  wire \icmp_ln73_reg_451_reg[0]_4 ;
  wire \ireg[32]_i_4_n_1 ;
  wire [0:0]\ireg_reg[32] ;
  wire [0:0]\ireg_reg[32]_0 ;
  wire \odata[32]_i_1__0_n_1 ;
  wire [0:0]\odata_reg[0]_0 ;
  wire [0:0]\odata_reg[0]_1 ;
  wire [7:0]\odata_reg[15]_0 ;
  wire [0:0]\odata_reg[1]_0 ;
  wire [0:0]\odata_reg[1]_1 ;
  wire [23:0]\odata_reg[23]_0 ;
  wire [7:0]\odata_reg[23]_1 ;
  wire [24:0]\odata_reg[32]_0 ;
  wire [0:0]\odata_reg[32]_1 ;
  wire [24:0]\odata_reg[32]_2 ;
  wire [7:0]\odata_reg[7]_0 ;
  wire p_1_in3_in;
  wire \p_Val2_s_reg_285_reg[23] ;
  wire \p_Val2_s_reg_285_reg[23]_0 ;
  wire sof_1_fu_146;
  wire \tmp_1_reg_474_reg[7] ;
  wire \tmp_reg_464[7]_i_3_n_1 ;
  wire \tmp_reg_464[7]_i_5_n_1 ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \SRL_SIG[0][7]_i_1 
       (.I0(\tmp_reg_464[7]_i_3_n_1 ),
        .I1(\icmp_ln73_reg_451_reg[0]_0 ),
        .I2(\SRL_SIG_reg[1][0] ),
        .I3(\axi_data_V_3_reg_309_reg[0] [2]),
        .O(\icmp_ln73_reg_451_reg[0] ));
  LUT6 #(
    .INIT(64'h0000888800A000A0)) 
    ap_enable_reg_pp1_iter1_i_1
       (.I0(ap_rst_n),
        .I1(\SRL_SIG_reg[1][0] ),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(icmp_ln73_fu_362_p2),
        .I4(p_1_in3_in),
        .I5(\tmp_reg_464[7]_i_3_n_1 ),
        .O(ap_rst_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[0]_i_1 
       (.I0(Q[0]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[10]_i_1 
       (.I0(Q[10]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[11]_i_1 
       (.I0(Q[11]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[12]_i_1 
       (.I0(Q[12]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[13]_i_1 
       (.I0(Q[13]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[14]_i_1 
       (.I0(Q[14]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[15]_i_1 
       (.I0(Q[15]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[16]_i_1 
       (.I0(Q[16]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[17]_i_1 
       (.I0(Q[17]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[18]_i_1 
       (.I0(Q[18]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[19]_i_1 
       (.I0(Q[19]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[1]_i_1 
       (.I0(Q[1]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[20]_i_1 
       (.I0(Q[20]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[21]_i_1 
       (.I0(Q[21]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[22]_i_1 
       (.I0(Q[22]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \axi_data_V_1_reg_238[23]_i_1 
       (.I0(\icmp_ln73_reg_451_reg[0] ),
        .I1(p_1_in3_in),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[23]_i_2 
       (.I0(Q[23]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[2]_i_1 
       (.I0(Q[2]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[3]_i_1 
       (.I0(Q[3]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[4]_i_1 
       (.I0(Q[4]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[5]_i_1 
       (.I0(Q[5]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[6]_i_1 
       (.I0(Q[6]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[7]_i_1 
       (.I0(Q[7]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[8]_i_1 
       (.I0(Q[8]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_1_reg_238[9]_i_1 
       (.I0(Q[9]),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\axi_data_V_1_reg_238_reg[23]_0 [9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[0]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [0]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [0]),
        .O(\axi_data_V_1_reg_238_reg[23] [0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[10]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [10]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [10]),
        .O(\axi_data_V_1_reg_238_reg[23] [10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[11]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [11]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [11]),
        .O(\axi_data_V_1_reg_238_reg[23] [11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[12]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [12]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [12]),
        .O(\axi_data_V_1_reg_238_reg[23] [12]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[13]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [13]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [13]),
        .O(\axi_data_V_1_reg_238_reg[23] [13]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[14]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [14]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [14]),
        .O(\axi_data_V_1_reg_238_reg[23] [14]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[15]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [15]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [15]),
        .O(\axi_data_V_1_reg_238_reg[23] [15]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[16]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [16]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [16]),
        .O(\axi_data_V_1_reg_238_reg[23] [16]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[17]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [17]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [17]),
        .O(\axi_data_V_1_reg_238_reg[23] [17]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[18]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [18]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [18]),
        .O(\axi_data_V_1_reg_238_reg[23] [18]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[19]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [19]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [19]),
        .O(\axi_data_V_1_reg_238_reg[23] [19]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[1]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [1]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [1]),
        .O(\axi_data_V_1_reg_238_reg[23] [1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[20]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [20]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [20]),
        .O(\axi_data_V_1_reg_238_reg[23] [20]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[21]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [21]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [21]),
        .O(\axi_data_V_1_reg_238_reg[23] [21]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[22]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [22]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [22]),
        .O(\axi_data_V_1_reg_238_reg[23] [22]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[23]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [23]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [23]),
        .O(\axi_data_V_1_reg_238_reg[23] [23]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[2]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [2]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [2]),
        .O(\axi_data_V_1_reg_238_reg[23] [2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[3]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [3]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [3]),
        .O(\axi_data_V_1_reg_238_reg[23] [3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[4]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [4]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [4]),
        .O(\axi_data_V_1_reg_238_reg[23] [4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[5]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [5]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [5]),
        .O(\axi_data_V_1_reg_238_reg[23] [5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[6]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [6]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [6]),
        .O(\axi_data_V_1_reg_238_reg[23] [6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[7]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [7]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [7]),
        .O(\axi_data_V_1_reg_238_reg[23] [7]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[8]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [8]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [8]),
        .O(\axi_data_V_1_reg_238_reg[23] [8]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_data_V_3_reg_309[9]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[23] [9]),
        .I1(\axi_data_V_3_reg_309_reg[0] [3]),
        .I2(\odata_reg[32]_0 [9]),
        .O(\axi_data_V_1_reg_238_reg[23] [9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hD1C0)) 
    \eol_0_reg_260[0]_i_1 
       (.I0(p_1_in3_in),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(\eol_reg_227_reg[0] ),
        .I3(\eol_0_reg_260_reg[0] ),
        .O(\axi_last_V_2_reg_272_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \eol_2_reg_321[0]_i_1 
       (.I0(\axi_data_V_3_reg_309_reg[0] [3]),
        .I1(\odata_reg[32]_0 [24]),
        .I2(\axi_data_V_3_reg_309_reg[0] [4]),
        .I3(\axi_data_V_3_reg_309_reg[0]_0 ),
        .O(\ap_CS_fsm_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \eol_reg_227[0]_i_1 
       (.I0(\eol_reg_227_reg[0] ),
        .I1(\icmp_ln73_reg_451_reg[0] ),
        .I2(axi_last_V_0_reg_196),
        .O(\axi_last_V_2_reg_272_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF4B0)) 
    \icmp_ln73_reg_451[0]_i_1 
       (.I0(\tmp_reg_464[7]_i_3_n_1 ),
        .I1(\axi_data_V_3_reg_309_reg[0] [2]),
        .I2(\icmp_ln73_reg_451_reg[0]_0 ),
        .I3(icmp_ln73_fu_362_p2),
        .O(\ap_CS_fsm_reg[4]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[32]_i_1 
       (.I0(\odata_reg[32]_0 [24]),
        .I1(\ap_CS_fsm_reg[4]_1 ),
        .I2(\ireg_reg[32]_0 ),
        .I3(ap_rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ireg[32]_i_2 
       (.I0(\ireg_reg[32]_0 ),
        .I1(\odata_reg[32]_0 [24]),
        .I2(\ap_CS_fsm_reg[4]_1 ),
        .O(\ireg_reg[32] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAEAAAAAA)) 
    \ireg[32]_i_3 
       (.I0(\ireg[32]_i_4_n_1 ),
        .I1(\axi_data_V_3_reg_309_reg[0] [2]),
        .I2(\tmp_reg_464[7]_i_3_n_1 ),
        .I3(ap_enable_reg_pp1_iter0),
        .I4(\tmp_1_reg_474_reg[7] ),
        .I5(icmp_ln73_fu_362_p2),
        .O(\ap_CS_fsm_reg[4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h88C8)) 
    \ireg[32]_i_4 
       (.I0(\axi_data_V_3_reg_309_reg[0] [0]),
        .I1(\odata_reg[32]_0 [24]),
        .I2(\axi_data_V_3_reg_309_reg[0] [4]),
        .I3(\axi_data_V_3_reg_309_reg[0]_0 ),
        .O(\ireg[32]_i_4_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \odata[1]_i_1__3 
       (.I0(\ap_CS_fsm_reg[4]_1 ),
        .I1(\odata_reg[0]_0 ),
        .O(\odata_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \odata[1]_i_1__4 
       (.I0(\ap_CS_fsm_reg[4]_1 ),
        .I1(\odata_reg[0]_1 ),
        .O(\odata_reg[1]_1 ));
  LUT2 #(
    .INIT(4'hB)) 
    \odata[32]_i_1__0 
       (.I0(\ap_CS_fsm_reg[4]_1 ),
        .I1(\odata_reg[32]_0 [24]),
        .O(\odata[32]_i_1__0_n_1 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [0]),
        .Q(\odata_reg[32]_0 [0]),
        .R(SS));
  FDRE \odata_reg[10] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [10]),
        .Q(\odata_reg[32]_0 [10]),
        .R(SS));
  FDRE \odata_reg[11] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [11]),
        .Q(\odata_reg[32]_0 [11]),
        .R(SS));
  FDRE \odata_reg[12] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [12]),
        .Q(\odata_reg[32]_0 [12]),
        .R(SS));
  FDRE \odata_reg[13] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [13]),
        .Q(\odata_reg[32]_0 [13]),
        .R(SS));
  FDRE \odata_reg[14] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [14]),
        .Q(\odata_reg[32]_0 [14]),
        .R(SS));
  FDRE \odata_reg[15] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [15]),
        .Q(\odata_reg[32]_0 [15]),
        .R(SS));
  FDRE \odata_reg[16] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [16]),
        .Q(\odata_reg[32]_0 [16]),
        .R(SS));
  FDRE \odata_reg[17] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [17]),
        .Q(\odata_reg[32]_0 [17]),
        .R(SS));
  FDRE \odata_reg[18] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [18]),
        .Q(\odata_reg[32]_0 [18]),
        .R(SS));
  FDRE \odata_reg[19] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [19]),
        .Q(\odata_reg[32]_0 [19]),
        .R(SS));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [1]),
        .Q(\odata_reg[32]_0 [1]),
        .R(SS));
  FDRE \odata_reg[20] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [20]),
        .Q(\odata_reg[32]_0 [20]),
        .R(SS));
  FDRE \odata_reg[21] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [21]),
        .Q(\odata_reg[32]_0 [21]),
        .R(SS));
  FDRE \odata_reg[22] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [22]),
        .Q(\odata_reg[32]_0 [22]),
        .R(SS));
  FDRE \odata_reg[23] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [23]),
        .Q(\odata_reg[32]_0 [23]),
        .R(SS));
  FDRE \odata_reg[2] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [2]),
        .Q(\odata_reg[32]_0 [2]),
        .R(SS));
  FDRE \odata_reg[32] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [24]),
        .Q(\odata_reg[32]_0 [24]),
        .R(SS));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [3]),
        .Q(\odata_reg[32]_0 [3]),
        .R(SS));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [4]),
        .Q(\odata_reg[32]_0 [4]),
        .R(SS));
  FDRE \odata_reg[5] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [5]),
        .Q(\odata_reg[32]_0 [5]),
        .R(SS));
  FDRE \odata_reg[6] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [6]),
        .Q(\odata_reg[32]_0 [6]),
        .R(SS));
  FDRE \odata_reg[7] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [7]),
        .Q(\odata_reg[32]_0 [7]),
        .R(SS));
  FDRE \odata_reg[8] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [8]),
        .Q(\odata_reg[32]_0 [8]),
        .R(SS));
  FDRE \odata_reg[9] 
       (.C(ap_clk),
        .CE(\odata[32]_i_1__0_n_1 ),
        .D(\odata_reg[32]_2 [9]),
        .Q(\odata_reg[32]_0 [9]),
        .R(SS));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[0]_i_1 
       (.I0(\odata_reg[32]_0 [0]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [0]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[0]),
        .O(\odata_reg[23]_0 [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[10]_i_1 
       (.I0(\odata_reg[32]_0 [10]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [10]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[10]),
        .O(\odata_reg[23]_0 [10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[11]_i_1 
       (.I0(\odata_reg[32]_0 [11]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [11]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[11]),
        .O(\odata_reg[23]_0 [11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[12]_i_1 
       (.I0(\odata_reg[32]_0 [12]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [12]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[12]),
        .O(\odata_reg[23]_0 [12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[13]_i_1 
       (.I0(\odata_reg[32]_0 [13]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [13]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[13]),
        .O(\odata_reg[23]_0 [13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[14]_i_1 
       (.I0(\odata_reg[32]_0 [14]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [14]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[14]),
        .O(\odata_reg[23]_0 [14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[15]_i_1 
       (.I0(\odata_reg[32]_0 [15]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [15]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[15]),
        .O(\odata_reg[23]_0 [15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[16]_i_1 
       (.I0(\odata_reg[32]_0 [16]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [16]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[16]),
        .O(\odata_reg[23]_0 [16]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[17]_i_1 
       (.I0(\odata_reg[32]_0 [17]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [17]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[17]),
        .O(\odata_reg[23]_0 [17]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[18]_i_1 
       (.I0(\odata_reg[32]_0 [18]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [18]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[18]),
        .O(\odata_reg[23]_0 [18]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[19]_i_1 
       (.I0(\odata_reg[32]_0 [19]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [19]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[19]),
        .O(\odata_reg[23]_0 [19]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[1]_i_1 
       (.I0(\odata_reg[32]_0 [1]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [1]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[1]),
        .O(\odata_reg[23]_0 [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[20]_i_1 
       (.I0(\odata_reg[32]_0 [20]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [20]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[20]),
        .O(\odata_reg[23]_0 [20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[21]_i_1 
       (.I0(\odata_reg[32]_0 [21]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [21]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[21]),
        .O(\odata_reg[23]_0 [21]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[22]_i_1 
       (.I0(\odata_reg[32]_0 [22]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [22]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[22]),
        .O(\odata_reg[23]_0 [22]));
  LUT1 #(
    .INIT(2'h1)) 
    \p_Val2_s_reg_285[23]_i_1 
       (.I0(\ap_CS_fsm_reg[4]_0 ),
        .O(\ap_CS_fsm_reg[4] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[23]_i_2 
       (.I0(\odata_reg[32]_0 [23]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [23]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[23]),
        .O(\odata_reg[23]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \p_Val2_s_reg_285[23]_i_3 
       (.I0(\axi_data_V_3_reg_309_reg[0] [2]),
        .I1(\tmp_reg_464[7]_i_3_n_1 ),
        .I2(ap_enable_reg_pp1_iter0),
        .O(\ap_CS_fsm_reg[4]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[2]_i_1 
       (.I0(\odata_reg[32]_0 [2]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [2]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[2]),
        .O(\odata_reg[23]_0 [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[3]_i_1 
       (.I0(\odata_reg[32]_0 [3]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [3]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[3]),
        .O(\odata_reg[23]_0 [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[4]_i_1 
       (.I0(\odata_reg[32]_0 [4]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [4]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[4]),
        .O(\odata_reg[23]_0 [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[5]_i_1 
       (.I0(\odata_reg[32]_0 [5]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [5]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[5]),
        .O(\odata_reg[23]_0 [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[6]_i_1 
       (.I0(\odata_reg[32]_0 [6]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [6]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[6]),
        .O(\odata_reg[23]_0 [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[7]_i_1 
       (.I0(\odata_reg[32]_0 [7]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [7]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[7]),
        .O(\odata_reg[23]_0 [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[8]_i_1 
       (.I0(\odata_reg[32]_0 [8]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [8]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[8]),
        .O(\odata_reg[23]_0 [8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \p_Val2_s_reg_285[9]_i_1 
       (.I0(\odata_reg[32]_0 [9]),
        .I1(\p_Val2_s_reg_285_reg[23]_0 ),
        .I2(\axi_data_V_3_reg_309_reg[23] [9]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[9]),
        .O(\odata_reg[23]_0 [9]));
  LUT6 #(
    .INIT(64'hFFF0BBB0FFF0FFF0)) 
    \sof_1_fu_146[0]_i_1 
       (.I0(\tmp_reg_464[7]_i_3_n_1 ),
        .I1(\axi_data_V_3_reg_309_reg[0] [2]),
        .I2(sof_1_fu_146),
        .I3(\axi_data_V_3_reg_309_reg[0] [1]),
        .I4(icmp_ln73_fu_362_p2),
        .I5(ap_enable_reg_pp1_iter0),
        .O(\ap_CS_fsm_reg[4]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hF0B0F0F0)) 
    \t_V_2_reg_249[10]_i_1 
       (.I0(\tmp_reg_464[7]_i_3_n_1 ),
        .I1(\axi_data_V_3_reg_309_reg[0] [2]),
        .I2(p_1_in3_in),
        .I3(icmp_ln73_fu_362_p2),
        .I4(ap_enable_reg_pp1_iter0),
        .O(\ap_CS_fsm_reg[4]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \t_V_2_reg_249[10]_i_2 
       (.I0(\tmp_reg_464[7]_i_3_n_1 ),
        .I1(\axi_data_V_3_reg_309_reg[0] [2]),
        .I2(ap_enable_reg_pp1_iter0),
        .I3(icmp_ln73_fu_362_p2),
        .O(\ap_CS_fsm_reg[4]_3 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_1_reg_474[0]_i_1 
       (.I0(\odata_reg[32]_0 [16]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [16]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[16]),
        .O(\odata_reg[23]_1 [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_1_reg_474[1]_i_1 
       (.I0(\odata_reg[32]_0 [17]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [17]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[17]),
        .O(\odata_reg[23]_1 [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_1_reg_474[2]_i_1 
       (.I0(\odata_reg[32]_0 [18]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [18]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[18]),
        .O(\odata_reg[23]_1 [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_1_reg_474[3]_i_1 
       (.I0(\odata_reg[32]_0 [19]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [19]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[19]),
        .O(\odata_reg[23]_1 [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_1_reg_474[4]_i_1 
       (.I0(\odata_reg[32]_0 [20]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [20]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[20]),
        .O(\odata_reg[23]_1 [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_1_reg_474[5]_i_1 
       (.I0(\odata_reg[32]_0 [21]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [21]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[21]),
        .O(\odata_reg[23]_1 [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_1_reg_474[6]_i_1 
       (.I0(\odata_reg[32]_0 [22]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [22]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[22]),
        .O(\odata_reg[23]_1 [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_1_reg_474[7]_i_1 
       (.I0(\odata_reg[32]_0 [23]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [23]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[23]),
        .O(\odata_reg[23]_1 [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_9_reg_469[0]_i_1 
       (.I0(\odata_reg[32]_0 [8]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [8]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[8]),
        .O(\odata_reg[15]_0 [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_9_reg_469[1]_i_1 
       (.I0(\odata_reg[32]_0 [9]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [9]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[9]),
        .O(\odata_reg[15]_0 [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_9_reg_469[2]_i_1 
       (.I0(\odata_reg[32]_0 [10]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [10]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[10]),
        .O(\odata_reg[15]_0 [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_9_reg_469[3]_i_1 
       (.I0(\odata_reg[32]_0 [11]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [11]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[11]),
        .O(\odata_reg[15]_0 [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_9_reg_469[4]_i_1 
       (.I0(\odata_reg[32]_0 [12]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [12]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[12]),
        .O(\odata_reg[15]_0 [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_9_reg_469[5]_i_1 
       (.I0(\odata_reg[32]_0 [13]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [13]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[13]),
        .O(\odata_reg[15]_0 [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_9_reg_469[6]_i_1 
       (.I0(\odata_reg[32]_0 [14]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [14]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[14]),
        .O(\odata_reg[15]_0 [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_9_reg_469[7]_i_1 
       (.I0(\odata_reg[32]_0 [15]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [15]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[15]),
        .O(\odata_reg[15]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_last_V_reg_430[0]_i_1 
       (.I0(\odata_reg[32]_0 [24]),
        .I1(\axi_data_V_3_reg_309_reg[0] [0]),
        .O(\odata_reg[32]_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_464[0]_i_1 
       (.I0(\odata_reg[32]_0 [0]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [0]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[0]),
        .O(\odata_reg[7]_0 [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_464[1]_i_1 
       (.I0(\odata_reg[32]_0 [1]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [1]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[1]),
        .O(\odata_reg[7]_0 [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_464[2]_i_1 
       (.I0(\odata_reg[32]_0 [2]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [2]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[2]),
        .O(\odata_reg[7]_0 [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_464[3]_i_1 
       (.I0(\odata_reg[32]_0 [3]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [3]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[3]),
        .O(\odata_reg[7]_0 [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_464[4]_i_1 
       (.I0(\odata_reg[32]_0 [4]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [4]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[4]),
        .O(\odata_reg[7]_0 [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_464[5]_i_1 
       (.I0(\odata_reg[32]_0 [5]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [5]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[5]),
        .O(\odata_reg[7]_0 [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_464[6]_i_1 
       (.I0(\odata_reg[32]_0 [6]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [6]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[6]),
        .O(\odata_reg[7]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \tmp_reg_464[7]_i_1 
       (.I0(\tmp_reg_464[7]_i_3_n_1 ),
        .I1(\axi_data_V_3_reg_309_reg[0] [2]),
        .I2(icmp_ln73_fu_362_p2),
        .O(\ap_CS_fsm_reg[4]_2 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \tmp_reg_464[7]_i_2 
       (.I0(\odata_reg[32]_0 [7]),
        .I1(\tmp_1_reg_474_reg[7] ),
        .I2(\axi_data_V_3_reg_309_reg[23] [7]),
        .I3(\p_Val2_s_reg_285_reg[23] ),
        .I4(Q[7]),
        .O(\odata_reg[7]_0 [7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF88808888)) 
    \tmp_reg_464[7]_i_3 
       (.I0(\tmp_1_reg_474_reg[7] ),
        .I1(\tmp_reg_464[7]_i_5_n_1 ),
        .I2(\icmp_ln73_reg_451_reg[0]_1 ),
        .I3(\icmp_ln73_reg_451_reg[0]_2 ),
        .I4(\icmp_ln73_reg_451_reg[0]_3 ),
        .I5(\icmp_ln73_reg_451_reg[0]_4 ),
        .O(\tmp_reg_464[7]_i_3_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tmp_reg_464[7]_i_5 
       (.I0(ap_enable_reg_pp1_iter0),
        .I1(\odata_reg[32]_0 [24]),
        .O(\tmp_reg_464[7]_i_5_n_1 ));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module cam_hls_preprocess_0_0_obuf__parameterized0
   (SR,
    Q,
    video_dst_TREADY,
    \ireg_reg[4] ,
    ap_rst_n,
    \odata_reg[4]_0 ,
    D,
    ap_clk);
  output [0:0]SR;
  output [1:0]Q;
  input video_dst_TREADY;
  input [0:0]\ireg_reg[4] ;
  input ap_rst_n;
  input [0:0]\odata_reg[4]_0 ;
  input [1:0]D;
  input ap_clk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]\ireg_reg[4] ;
  wire \odata[3]_i_1__1_n_1 ;
  wire [0:0]\odata_reg[4]_0 ;
  wire video_dst_TREADY;

  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[4]_i_1 
       (.I0(Q[1]),
        .I1(video_dst_TREADY),
        .I2(\ireg_reg[4] ),
        .I3(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \odata[3]_i_1__1 
       (.I0(video_dst_TREADY),
        .I1(Q[1]),
        .O(\odata[3]_i_1__1_n_1 ));
  FDRE \odata_reg[3] 
       (.C(ap_clk),
        .CE(\odata[3]_i_1__1_n_1 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(\odata_reg[4]_0 ));
  FDRE \odata_reg[4] 
       (.C(ap_clk),
        .CE(\odata[3]_i_1__1_n_1 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(\odata_reg[4]_0 ));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module cam_hls_preprocess_0_0_obuf__parameterized1
   (SR,
    Q,
    video_dst_TREADY,
    \ireg_reg[1] ,
    ap_rst_n,
    \odata_reg[1]_0 ,
    D,
    ap_clk);
  output [0:0]SR;
  output [1:0]Q;
  input video_dst_TREADY;
  input [0:0]\ireg_reg[1] ;
  input ap_rst_n;
  input [0:0]\odata_reg[1]_0 ;
  input [1:0]D;
  input ap_clk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]\ireg_reg[1] ;
  wire \odata[0]_i_1__3_n_1 ;
  wire [0:0]\odata_reg[1]_0 ;
  wire video_dst_TREADY;

  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[1]_i_1__1 
       (.I0(Q[1]),
        .I1(video_dst_TREADY),
        .I2(\ireg_reg[1] ),
        .I3(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \odata[0]_i_1__3 
       (.I0(video_dst_TREADY),
        .I1(Q[1]),
        .O(\odata[0]_i_1__3_n_1 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[0]_i_1__3_n_1 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(\odata_reg[1]_0 ));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[0]_i_1__3_n_1 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(\odata_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module cam_hls_preprocess_0_0_obuf__parameterized1_21
   (SR,
    Q,
    video_dst_TREADY,
    \ireg_reg[1] ,
    ap_rst_n,
    \odata_reg[1]_0 ,
    D,
    ap_clk);
  output [0:0]SR;
  output [1:0]Q;
  input video_dst_TREADY;
  input [0:0]\ireg_reg[1] ;
  input ap_rst_n;
  input [0:0]\odata_reg[1]_0 ;
  input [1:0]D;
  input ap_clk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]\ireg_reg[1] ;
  wire \odata[0]_i_1__4_n_1 ;
  wire [0:0]\odata_reg[1]_0 ;
  wire video_dst_TREADY;

  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[1]_i_1__2 
       (.I0(Q[1]),
        .I1(video_dst_TREADY),
        .I2(\ireg_reg[1] ),
        .I3(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'hB)) 
    \odata[0]_i_1__4 
       (.I0(video_dst_TREADY),
        .I1(Q[1]),
        .O(\odata[0]_i_1__4_n_1 ));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(\odata[0]_i_1__4_n_1 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(\odata_reg[1]_0 ));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(\odata[0]_i_1__4_n_1 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(\odata_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module cam_hls_preprocess_0_0_obuf__parameterized1_26
   (SR,
    Q,
    D,
    \ireg_reg[1] ,
    \ireg_reg[1]_0 ,
    ap_rst_n,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[2]_0 ,
    SS,
    E,
    \odata_reg[1]_0 ,
    ap_clk);
  output [0:0]SR;
  output [0:0]Q;
  output [1:0]D;
  input \ireg_reg[1] ;
  input [0:0]\ireg_reg[1]_0 ;
  input ap_rst_n;
  input \ap_CS_fsm_reg[1] ;
  input [1:0]\ap_CS_fsm_reg[2] ;
  input [0:0]\ap_CS_fsm_reg[2]_0 ;
  input [0:0]SS;
  input [0:0]E;
  input [1:0]\odata_reg[1]_0 ;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire \ap_CS_fsm_reg[1] ;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire [0:0]\ap_CS_fsm_reg[2]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire \ireg_reg[1] ;
  wire [0:0]\ireg_reg[1]_0 ;
  wire [1:0]\odata_reg[1]_0 ;
  wire tmp_user_V_fu_341_p1;

  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h8F88FF88)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(\ap_CS_fsm_reg[2] [0]),
        .I2(tmp_user_V_fu_341_p1),
        .I3(\ap_CS_fsm_reg[2] [1]),
        .I4(\ap_CS_fsm_reg[2]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ap_CS_fsm[2]_i_1__0 
       (.I0(tmp_user_V_fu_341_p1),
        .I1(\ap_CS_fsm_reg[2] [1]),
        .I2(\ap_CS_fsm_reg[2]_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[1]_i_1__0 
       (.I0(Q),
        .I1(\ireg_reg[1] ),
        .I2(\ireg_reg[1]_0 ),
        .I3(ap_rst_n),
        .O(SR));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_reg[1]_0 [0]),
        .Q(tmp_user_V_fu_341_p1),
        .R(SS));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(\odata_reg[1]_0 [1]),
        .Q(Q),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "obuf" *) 
module cam_hls_preprocess_0_0_obuf__parameterized1_28
   (SR,
    Q,
    \eol_0_reg_260_reg[0] ,
    \eol_reg_227_reg[0] ,
    \odata_reg[0]_0 ,
    \ireg_reg[1] ,
    \ireg_reg[1]_0 ,
    ap_rst_n,
    \eol_2_reg_321_reg[0] ,
    \axi_last_V_3_reg_297_reg[0] ,
    eol_reg_227,
    \axi_last_V_2_reg_272_reg[0] ,
    \axi_last_V_2_reg_272_reg[0]_0 ,
    \axi_last_V_2_reg_272_reg[0]_1 ,
    \axi_last_V_2_reg_272_reg[0]_2 ,
    SS,
    E,
    D,
    ap_clk);
  output [0:0]SR;
  output [1:0]Q;
  output \eol_0_reg_260_reg[0] ;
  output \eol_reg_227_reg[0] ;
  output \odata_reg[0]_0 ;
  input \ireg_reg[1] ;
  input [0:0]\ireg_reg[1]_0 ;
  input ap_rst_n;
  input \eol_2_reg_321_reg[0] ;
  input [0:0]\axi_last_V_3_reg_297_reg[0] ;
  input eol_reg_227;
  input \axi_last_V_2_reg_272_reg[0] ;
  input \axi_last_V_2_reg_272_reg[0]_0 ;
  input \axi_last_V_2_reg_272_reg[0]_1 ;
  input \axi_last_V_2_reg_272_reg[0]_2 ;
  input [0:0]SS;
  input [0:0]E;
  input [1:0]D;
  input ap_clk;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire \axi_last_V_2_reg_272_reg[0] ;
  wire \axi_last_V_2_reg_272_reg[0]_0 ;
  wire \axi_last_V_2_reg_272_reg[0]_1 ;
  wire \axi_last_V_2_reg_272_reg[0]_2 ;
  wire [0:0]\axi_last_V_3_reg_297_reg[0] ;
  wire \eol_0_reg_260_reg[0] ;
  wire \eol_2_reg_321_reg[0] ;
  wire eol_reg_227;
  wire \eol_reg_227_reg[0] ;
  wire \ireg_reg[1] ;
  wire [0:0]\ireg_reg[1]_0 ;
  wire \odata_reg[0]_0 ;

  LUT6 #(
    .INIT(64'hFFAAFFCF00AA00C0)) 
    \axi_last_V_2_reg_272[0]_i_1 
       (.I0(Q[0]),
        .I1(eol_reg_227),
        .I2(\axi_last_V_2_reg_272_reg[0] ),
        .I3(\axi_last_V_2_reg_272_reg[0]_0 ),
        .I4(\axi_last_V_2_reg_272_reg[0]_1 ),
        .I5(\axi_last_V_2_reg_272_reg[0]_2 ),
        .O(\odata_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_last_V_3_reg_297[0]_i_1 
       (.I0(eol_reg_227),
        .I1(\axi_last_V_3_reg_297_reg[0] ),
        .I2(Q[0]),
        .O(\eol_reg_227_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \eol_2_reg_321[0]_i_2 
       (.I0(\eol_2_reg_321_reg[0] ),
        .I1(\axi_last_V_3_reg_297_reg[0] ),
        .I2(Q[0]),
        .O(\eol_0_reg_260_reg[0] ));
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ireg[1]_i_1 
       (.I0(Q[1]),
        .I1(\ireg_reg[1] ),
        .I2(\ireg_reg[1]_0 ),
        .I3(ap_rst_n),
        .O(SR));
  FDRE \odata_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(SS));
  FDRE \odata_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module cam_hls_preprocess_0_0_regslice_both
   (SR,
    ap_rst_n_0,
    ap_rst_n_1,
    D,
    \icmp_ln126_reg_288_reg[0] ,
    internal_empty_n_reg,
    Mat2AXIvideo_U0_ap_ready,
    ap_enable_reg_pp0_iter0_reg,
    ap_rst_n_2,
    E,
    ap_rst_n_3,
    \odata_reg[32] ,
    \ireg_reg[32] ,
    \tmp_user_V_fu_136_reg[0] ,
    \t_V_1_reg_204_reg[0] ,
    ap_enable_reg_pp0_iter0_reg_0,
    ap_rst_n_4,
    icmp_ln126_reg_2880,
    ap_clk,
    ap_rst_n,
    \ireg_reg[32]_0 ,
    ap_enable_reg_pp0_iter0,
    icmp_ln126_fu_232_p2,
    ap_enable_reg_pp0_iter2_reg,
    Mat2AXIvideo_U0_ap_start,
    Q,
    video_dst_TREADY,
    \mOutPtr_reg[1] ,
    shiftReg_ce,
    \tmp_user_V_fu_136_reg[0]_0 ,
    \axi_last_V_reg_297_reg[0] ,
    \axi_last_V_reg_297_reg[0]_0 ,
    \axi_last_V_reg_297_reg[0]_1 ,
    \axi_last_V_reg_297_reg[0]_2 ,
    icmp_ln126_reg_288_pp0_iter1_reg,
    \ireg_reg[32]_1 ,
    \ireg_reg[32]_2 ,
    \ireg_reg[30] ,
    \odata_reg[30] );
  output [0:0]SR;
  output ap_rst_n_0;
  output ap_rst_n_1;
  output [3:0]D;
  output [0:0]\icmp_ln126_reg_288_reg[0] ;
  output internal_empty_n_reg;
  output Mat2AXIvideo_U0_ap_ready;
  output [0:0]ap_enable_reg_pp0_iter0_reg;
  output ap_rst_n_2;
  output [0:0]E;
  output ap_rst_n_3;
  output [28:0]\odata_reg[32] ;
  output [28:0]\ireg_reg[32] ;
  output \tmp_user_V_fu_136_reg[0] ;
  output \t_V_1_reg_204_reg[0] ;
  output [0:0]ap_enable_reg_pp0_iter0_reg_0;
  output ap_rst_n_4;
  output icmp_ln126_reg_2880;
  input ap_clk;
  input ap_rst_n;
  input \ireg_reg[32]_0 ;
  input ap_enable_reg_pp0_iter0;
  input icmp_ln126_fu_232_p2;
  input ap_enable_reg_pp0_iter2_reg;
  input Mat2AXIvideo_U0_ap_start;
  input [3:0]Q;
  input video_dst_TREADY;
  input \mOutPtr_reg[1] ;
  input shiftReg_ce;
  input [0:0]\tmp_user_V_fu_136_reg[0]_0 ;
  input \axi_last_V_reg_297_reg[0] ;
  input [1:0]\axi_last_V_reg_297_reg[0]_0 ;
  input \axi_last_V_reg_297_reg[0]_1 ;
  input [0:0]\axi_last_V_reg_297_reg[0]_2 ;
  input icmp_ln126_reg_288_pp0_iter1_reg;
  input \ireg_reg[32]_1 ;
  input \ireg_reg[32]_2 ;
  input [27:0]\ireg_reg[30] ;
  input [27:0]\odata_reg[30] ;

  wire [3:0]D;
  wire [0:0]E;
  wire Mat2AXIvideo_U0_ap_ready;
  wire Mat2AXIvideo_U0_ap_start;
  wire [3:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm[1]_i_2_n_1 ;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire [0:0]ap_enable_reg_pp0_iter0_reg;
  wire [0:0]ap_enable_reg_pp0_iter0_reg_0;
  wire ap_enable_reg_pp0_iter2_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_1;
  wire ap_rst_n_2;
  wire ap_rst_n_3;
  wire ap_rst_n_4;
  wire \axi_last_V_reg_297_reg[0] ;
  wire [1:0]\axi_last_V_reg_297_reg[0]_0 ;
  wire \axi_last_V_reg_297_reg[0]_1 ;
  wire [0:0]\axi_last_V_reg_297_reg[0]_2 ;
  wire \count_reg_n_1_[0] ;
  wire \count_reg_n_1_[1] ;
  wire ibuf_inst_n_14;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_45;
  wire icmp_ln126_fu_232_p2;
  wire icmp_ln126_reg_2880;
  wire icmp_ln126_reg_288_pp0_iter1_reg;
  wire [0:0]\icmp_ln126_reg_288_reg[0] ;
  wire internal_empty_n_reg;
  wire [27:0]\ireg_reg[30] ;
  wire [28:0]\ireg_reg[32] ;
  wire \ireg_reg[32]_0 ;
  wire \ireg_reg[32]_1 ;
  wire \ireg_reg[32]_2 ;
  wire \mOutPtr_reg[1] ;
  wire obuf_inst_n_2;
  wire [27:0]\odata_reg[30] ;
  wire [28:0]\odata_reg[32] ;
  wire shiftReg_ce;
  wire \t_V_1_reg_204_reg[0] ;
  wire \tmp_user_V_fu_136_reg[0] ;
  wire [0:0]\tmp_user_V_fu_136_reg[0]_0 ;
  wire video_dst_TREADY;

  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Mat2AXIvideo_U0_ap_start),
        .I1(Q[0]),
        .I2(Mat2AXIvideo_U0_ap_ready),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(Mat2AXIvideo_U0_ap_start),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(\ap_CS_fsm[1]_i_2_n_1 ),
        .I4(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(video_dst_TREADY),
        .I1(\count_reg_n_1_[1] ),
        .I2(\count_reg_n_1_[0] ),
        .O(\ap_CS_fsm[1]_i_2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h00008F00)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(video_dst_TREADY),
        .I1(\count_reg_n_1_[1] ),
        .I2(\count_reg_n_1_[0] ),
        .I3(Q[1]),
        .I4(\mOutPtr_reg[1] ),
        .O(ap_NS_fsm1));
  FDRE \count_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ibuf_inst_n_3),
        .Q(\count_reg_n_1_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ibuf_inst_n_45),
        .Q(\count_reg_n_1_[1] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hA222)) 
    \i_V_reg_283[8]_i_1 
       (.I0(Q[1]),
        .I1(\count_reg_n_1_[0] ),
        .I2(\count_reg_n_1_[1] ),
        .I3(video_dst_TREADY),
        .O(E));
  cam_hls_preprocess_0_0_ibuf ibuf_inst
       (.D(D[3:2]),
        .Mat2AXIvideo_U0_ap_start(Mat2AXIvideo_U0_ap_start),
        .Q({Q[2],Q[0]}),
        .SR(obuf_inst_n_2),
        .ap_NS_fsm1(ap_NS_fsm1),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter0_reg_0(ap_enable_reg_pp0_iter0_reg_0),
        .ap_enable_reg_pp0_iter2_reg(ap_enable_reg_pp0_iter2_reg),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .ap_rst_n_1(ap_rst_n_1),
        .ap_rst_n_2(ibuf_inst_n_3),
        .ap_rst_n_3(ap_rst_n_2),
        .ap_rst_n_4(ap_rst_n_3),
        .ap_rst_n_5(ap_rst_n_4),
        .\axi_last_V_reg_297_reg[0] (\axi_last_V_reg_297_reg[0] ),
        .\axi_last_V_reg_297_reg[0]_0 (\axi_last_V_reg_297_reg[0]_0 ),
        .\axi_last_V_reg_297_reg[0]_1 (\axi_last_V_reg_297_reg[0]_1 ),
        .\axi_last_V_reg_297_reg[0]_2 (\axi_last_V_reg_297_reg[0]_2 ),
        .\count_reg[0] (\count_reg_n_1_[0] ),
        .\count_reg[0]_0 (\count_reg_n_1_[1] ),
        .\count_reg[1] (ibuf_inst_n_45),
        .icmp_ln126_fu_232_p2(icmp_ln126_fu_232_p2),
        .icmp_ln126_reg_2880(icmp_ln126_reg_2880),
        .icmp_ln126_reg_288_pp0_iter1_reg(icmp_ln126_reg_288_pp0_iter1_reg),
        .\icmp_ln126_reg_288_reg[0] (\icmp_ln126_reg_288_reg[0] ),
        .\ireg_reg[0]_0 (\odata_reg[32] [28]),
        .\ireg_reg[30]_0 (\ireg_reg[30] ),
        .\ireg_reg[32]_0 (ibuf_inst_n_14),
        .\ireg_reg[32]_1 (\ireg_reg[32] ),
        .\ireg_reg[32]_2 (\ireg_reg[32]_0 ),
        .\ireg_reg[32]_3 (\ireg_reg[32]_1 ),
        .\ireg_reg[32]_4 (\ireg_reg[32]_2 ),
        .shiftReg_ce(shiftReg_ce),
        .\t_V_1_reg_204_reg[0] (\t_V_1_reg_204_reg[0] ),
        .\tmp_user_V_fu_136_reg[0] (\tmp_user_V_fu_136_reg[0] ),
        .\tmp_user_V_fu_136_reg[0]_0 (\tmp_user_V_fu_136_reg[0]_0 ),
        .video_dst_TREADY(video_dst_TREADY));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h80AA0000)) 
    \int_isr[0]_i_3 
       (.I0(\mOutPtr_reg[1] ),
        .I1(video_dst_TREADY),
        .I2(\count_reg_n_1_[1] ),
        .I3(\count_reg_n_1_[0] ),
        .I4(Q[1]),
        .O(Mat2AXIvideo_U0_ap_ready));
  LUT6 #(
    .INIT(64'h8808080800000000)) 
    \mOutPtr[1]_i_3 
       (.I0(Mat2AXIvideo_U0_ap_start),
        .I1(Q[1]),
        .I2(\count_reg_n_1_[0] ),
        .I3(\count_reg_n_1_[1] ),
        .I4(video_dst_TREADY),
        .I5(\mOutPtr_reg[1] ),
        .O(internal_empty_n_reg));
  cam_hls_preprocess_0_0_obuf obuf_inst
       (.D({ibuf_inst_n_14,\odata_reg[30] }),
        .Q(\odata_reg[32] ),
        .SR(SR),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[32] (\ireg_reg[32] [28]),
        .\odata_reg[32]_0 (obuf_inst_n_2),
        .video_dst_TREADY(video_dst_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module cam_hls_preprocess_0_0_regslice_both_22
   (ap_rst_n_0,
    \axi_last_V_2_reg_272_reg[0] ,
    \icmp_ln73_reg_451_reg[0] ,
    E,
    \axi_last_V_2_reg_272_reg[0]_0 ,
    D,
    \ap_CS_fsm_reg[4] ,
    \ap_CS_fsm_reg[4]_0 ,
    \odata_reg[32] ,
    \ap_CS_fsm_reg[4]_1 ,
    \odata_reg[7] ,
    \odata_reg[23] ,
    \odata_reg[15] ,
    \odata_reg[23]_0 ,
    \ap_CS_fsm_reg[5] ,
    \odata_reg[32]_0 ,
    video_src_TREADY,
    \axi_data_V_1_reg_238_reg[23] ,
    \odata_reg[1] ,
    \odata_reg[1]_0 ,
    \ap_CS_fsm_reg[4]_2 ,
    \ap_CS_fsm_reg[4]_3 ,
    \ap_CS_fsm_reg[4]_4 ,
    SR,
    \ap_CS_fsm_reg[4]_5 ,
    ap_rst_n,
    \SRL_SIG_reg[1][0] ,
    ap_enable_reg_pp1_iter0,
    icmp_ln73_fu_362_p2,
    p_1_in3_in,
    \eol_reg_227_reg[0] ,
    \eol_0_reg_260_reg[0] ,
    axi_last_V_0_reg_196,
    Q,
    \axi_data_V_1_reg_238_reg[23]_0 ,
    \icmp_ln73_reg_451_reg[0]_0 ,
    \axi_data_V_3_reg_309_reg[0] ,
    \tmp_1_reg_474_reg[7] ,
    \icmp_ln73_reg_451_reg[0]_1 ,
    \icmp_ln73_reg_451_reg[0]_2 ,
    \icmp_ln73_reg_451_reg[0]_3 ,
    \icmp_ln73_reg_451_reg[0]_4 ,
    \axi_data_V_3_reg_309_reg[23] ,
    \p_Val2_s_reg_285_reg[23] ,
    \p_Val2_s_reg_285_reg[23]_0 ,
    \axi_data_V_3_reg_309_reg[0]_0 ,
    \ireg_reg[32] ,
    \odata_reg[0] ,
    \odata_reg[0]_0 ,
    sof_1_fu_146,
    ap_clk,
    SS);
  output ap_rst_n_0;
  output \axi_last_V_2_reg_272_reg[0] ;
  output \icmp_ln73_reg_451_reg[0] ;
  output [0:0]E;
  output \axi_last_V_2_reg_272_reg[0]_0 ;
  output [23:0]D;
  output [0:0]\ap_CS_fsm_reg[4] ;
  output \ap_CS_fsm_reg[4]_0 ;
  output [24:0]\odata_reg[32] ;
  output \ap_CS_fsm_reg[4]_1 ;
  output [7:0]\odata_reg[7] ;
  output [23:0]\odata_reg[23] ;
  output [7:0]\odata_reg[15] ;
  output [7:0]\odata_reg[23]_0 ;
  output [0:0]\ap_CS_fsm_reg[5] ;
  output [0:0]\odata_reg[32]_0 ;
  output video_src_TREADY;
  output [23:0]\axi_data_V_1_reg_238_reg[23] ;
  output [0:0]\odata_reg[1] ;
  output [0:0]\odata_reg[1]_0 ;
  output [0:0]\ap_CS_fsm_reg[4]_2 ;
  output [0:0]\ap_CS_fsm_reg[4]_3 ;
  output \ap_CS_fsm_reg[4]_4 ;
  output [0:0]SR;
  output \ap_CS_fsm_reg[4]_5 ;
  input ap_rst_n;
  input \SRL_SIG_reg[1][0] ;
  input ap_enable_reg_pp1_iter0;
  input icmp_ln73_fu_362_p2;
  input p_1_in3_in;
  input \eol_reg_227_reg[0] ;
  input \eol_0_reg_260_reg[0] ;
  input axi_last_V_0_reg_196;
  input [23:0]Q;
  input [23:0]\axi_data_V_1_reg_238_reg[23]_0 ;
  input \icmp_ln73_reg_451_reg[0]_0 ;
  input [4:0]\axi_data_V_3_reg_309_reg[0] ;
  input \tmp_1_reg_474_reg[7] ;
  input \icmp_ln73_reg_451_reg[0]_1 ;
  input \icmp_ln73_reg_451_reg[0]_2 ;
  input \icmp_ln73_reg_451_reg[0]_3 ;
  input \icmp_ln73_reg_451_reg[0]_4 ;
  input [23:0]\axi_data_V_3_reg_309_reg[23] ;
  input \p_Val2_s_reg_285_reg[23] ;
  input \p_Val2_s_reg_285_reg[23]_0 ;
  input \axi_data_V_3_reg_309_reg[0]_0 ;
  input [24:0]\ireg_reg[32] ;
  input [0:0]\odata_reg[0] ;
  input [0:0]\odata_reg[0]_0 ;
  input sof_1_fu_146;
  input ap_clk;
  input [0:0]SS;

  wire [23:0]D;
  wire [0:0]E;
  wire [23:0]Q;
  wire [0:0]SR;
  wire \SRL_SIG_reg[1][0] ;
  wire [0:0]SS;
  wire [0:0]\ap_CS_fsm_reg[4] ;
  wire \ap_CS_fsm_reg[4]_0 ;
  wire \ap_CS_fsm_reg[4]_1 ;
  wire [0:0]\ap_CS_fsm_reg[4]_2 ;
  wire [0:0]\ap_CS_fsm_reg[4]_3 ;
  wire \ap_CS_fsm_reg[4]_4 ;
  wire \ap_CS_fsm_reg[4]_5 ;
  wire [0:0]\ap_CS_fsm_reg[5] ;
  wire ap_clk;
  wire ap_enable_reg_pp1_iter0;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire [23:0]\axi_data_V_1_reg_238_reg[23] ;
  wire [23:0]\axi_data_V_1_reg_238_reg[23]_0 ;
  wire [4:0]\axi_data_V_3_reg_309_reg[0] ;
  wire \axi_data_V_3_reg_309_reg[0]_0 ;
  wire [23:0]\axi_data_V_3_reg_309_reg[23] ;
  wire axi_last_V_0_reg_196;
  wire \axi_last_V_2_reg_272_reg[0] ;
  wire \axi_last_V_2_reg_272_reg[0]_0 ;
  wire \eol_0_reg_260_reg[0] ;
  wire \eol_reg_227_reg[0] ;
  wire ibuf_inst_n_10;
  wire ibuf_inst_n_11;
  wire ibuf_inst_n_12;
  wire ibuf_inst_n_13;
  wire ibuf_inst_n_14;
  wire ibuf_inst_n_15;
  wire ibuf_inst_n_16;
  wire ibuf_inst_n_17;
  wire ibuf_inst_n_18;
  wire ibuf_inst_n_19;
  wire ibuf_inst_n_20;
  wire ibuf_inst_n_21;
  wire ibuf_inst_n_22;
  wire ibuf_inst_n_23;
  wire ibuf_inst_n_24;
  wire ibuf_inst_n_25;
  wire ibuf_inst_n_26;
  wire ibuf_inst_n_27;
  wire ibuf_inst_n_3;
  wire ibuf_inst_n_4;
  wire ibuf_inst_n_5;
  wire ibuf_inst_n_6;
  wire ibuf_inst_n_7;
  wire ibuf_inst_n_8;
  wire ibuf_inst_n_9;
  wire icmp_ln73_fu_362_p2;
  wire \icmp_ln73_reg_451_reg[0] ;
  wire \icmp_ln73_reg_451_reg[0]_0 ;
  wire \icmp_ln73_reg_451_reg[0]_1 ;
  wire \icmp_ln73_reg_451_reg[0]_2 ;
  wire \icmp_ln73_reg_451_reg[0]_3 ;
  wire \icmp_ln73_reg_451_reg[0]_4 ;
  wire ireg01_out;
  wire [24:0]\ireg_reg[32] ;
  wire obuf_inst_n_32;
  wire [0:0]\odata_reg[0] ;
  wire [0:0]\odata_reg[0]_0 ;
  wire [7:0]\odata_reg[15] ;
  wire [0:0]\odata_reg[1] ;
  wire [0:0]\odata_reg[1]_0 ;
  wire [23:0]\odata_reg[23] ;
  wire [7:0]\odata_reg[23]_0 ;
  wire [24:0]\odata_reg[32] ;
  wire [0:0]\odata_reg[32]_0 ;
  wire [7:0]\odata_reg[7] ;
  wire p_0_in;
  wire p_1_in3_in;
  wire \p_Val2_s_reg_285_reg[23] ;
  wire \p_Val2_s_reg_285_reg[23]_0 ;
  wire sof_1_fu_146;
  wire \tmp_1_reg_474_reg[7] ;
  wire video_src_TREADY;

  cam_hls_preprocess_0_0_ibuf_29 ibuf_inst
       (.D({ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27}),
        .E(ireg01_out),
        .Q(p_0_in),
        .SR(obuf_inst_n_32),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[32]_0 (\ireg_reg[32] ),
        .video_src_TREADY(video_src_TREADY));
  cam_hls_preprocess_0_0_obuf_30 obuf_inst
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(obuf_inst_n_32),
        .\SRL_SIG_reg[1][0] (\SRL_SIG_reg[1][0] ),
        .SS(SS),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .\ap_CS_fsm_reg[4]_0 (\ap_CS_fsm_reg[4]_0 ),
        .\ap_CS_fsm_reg[4]_1 (\ap_CS_fsm_reg[4]_1 ),
        .\ap_CS_fsm_reg[4]_2 (\ap_CS_fsm_reg[4]_2 ),
        .\ap_CS_fsm_reg[4]_3 (\ap_CS_fsm_reg[4]_3 ),
        .\ap_CS_fsm_reg[4]_4 (\ap_CS_fsm_reg[4]_4 ),
        .\ap_CS_fsm_reg[4]_5 (SR),
        .\ap_CS_fsm_reg[4]_6 (\ap_CS_fsm_reg[4]_5 ),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5] ),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp1_iter0(ap_enable_reg_pp1_iter0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .\axi_data_V_1_reg_238_reg[23] (\axi_data_V_1_reg_238_reg[23] ),
        .\axi_data_V_1_reg_238_reg[23]_0 (\axi_data_V_1_reg_238_reg[23]_0 ),
        .\axi_data_V_3_reg_309_reg[0] (\axi_data_V_3_reg_309_reg[0] ),
        .\axi_data_V_3_reg_309_reg[0]_0 (\axi_data_V_3_reg_309_reg[0]_0 ),
        .\axi_data_V_3_reg_309_reg[23] (\axi_data_V_3_reg_309_reg[23] ),
        .axi_last_V_0_reg_196(axi_last_V_0_reg_196),
        .\axi_last_V_2_reg_272_reg[0] (\axi_last_V_2_reg_272_reg[0] ),
        .\axi_last_V_2_reg_272_reg[0]_0 (\axi_last_V_2_reg_272_reg[0]_0 ),
        .\eol_0_reg_260_reg[0] (\eol_0_reg_260_reg[0] ),
        .\eol_reg_227_reg[0] (\eol_reg_227_reg[0] ),
        .icmp_ln73_fu_362_p2(icmp_ln73_fu_362_p2),
        .\icmp_ln73_reg_451_reg[0] (\icmp_ln73_reg_451_reg[0] ),
        .\icmp_ln73_reg_451_reg[0]_0 (\icmp_ln73_reg_451_reg[0]_0 ),
        .\icmp_ln73_reg_451_reg[0]_1 (\icmp_ln73_reg_451_reg[0]_1 ),
        .\icmp_ln73_reg_451_reg[0]_2 (\icmp_ln73_reg_451_reg[0]_2 ),
        .\icmp_ln73_reg_451_reg[0]_3 (\icmp_ln73_reg_451_reg[0]_3 ),
        .\icmp_ln73_reg_451_reg[0]_4 (\icmp_ln73_reg_451_reg[0]_4 ),
        .\ireg_reg[32] (ireg01_out),
        .\ireg_reg[32]_0 (p_0_in),
        .\odata_reg[0]_0 (\odata_reg[0] ),
        .\odata_reg[0]_1 (\odata_reg[0]_0 ),
        .\odata_reg[15]_0 (\odata_reg[15] ),
        .\odata_reg[1]_0 (\odata_reg[1] ),
        .\odata_reg[1]_1 (\odata_reg[1]_0 ),
        .\odata_reg[23]_0 (\odata_reg[23] ),
        .\odata_reg[23]_1 (\odata_reg[23]_0 ),
        .\odata_reg[32]_0 (\odata_reg[32] ),
        .\odata_reg[32]_1 (\odata_reg[32]_0 ),
        .\odata_reg[32]_2 ({ibuf_inst_n_3,ibuf_inst_n_4,ibuf_inst_n_5,ibuf_inst_n_6,ibuf_inst_n_7,ibuf_inst_n_8,ibuf_inst_n_9,ibuf_inst_n_10,ibuf_inst_n_11,ibuf_inst_n_12,ibuf_inst_n_13,ibuf_inst_n_14,ibuf_inst_n_15,ibuf_inst_n_16,ibuf_inst_n_17,ibuf_inst_n_18,ibuf_inst_n_19,ibuf_inst_n_20,ibuf_inst_n_21,ibuf_inst_n_22,ibuf_inst_n_23,ibuf_inst_n_24,ibuf_inst_n_25,ibuf_inst_n_26,ibuf_inst_n_27}),
        .\odata_reg[7]_0 (\odata_reg[7] ),
        .p_1_in3_in(p_1_in3_in),
        .\p_Val2_s_reg_285_reg[23] (\p_Val2_s_reg_285_reg[23] ),
        .\p_Val2_s_reg_285_reg[23]_0 (\p_Val2_s_reg_285_reg[23]_0 ),
        .sof_1_fu_146(sof_1_fu_146),
        .\tmp_1_reg_474_reg[7] (\tmp_1_reg_474_reg[7] ));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module cam_hls_preprocess_0_0_regslice_both__parameterized0
   (video_dst_TKEEP,
    video_dst_TREADY,
    ap_rst_n,
    D,
    ap_clk,
    SR);
  output [0:0]video_dst_TKEEP;
  input video_dst_TREADY;
  input ap_rst_n;
  input [0:0]D;
  input ap_clk;
  input [0:0]SR;

  wire [0:0]D;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [4:3]cdata;
  wire obuf_inst_n_1;
  wire obuf_inst_n_2;
  wire p_0_in;
  wire [0:0]video_dst_TKEEP;
  wire video_dst_TREADY;

  cam_hls_preprocess_0_0_ibuf__parameterized0 ibuf_inst
       (.D(cdata),
        .Q(p_0_in),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .\ireg_reg[3]_0 (obuf_inst_n_2),
        .\ireg_reg[4]_0 (D),
        .video_dst_TREADY(video_dst_TREADY));
  cam_hls_preprocess_0_0_obuf__parameterized0 obuf_inst
       (.D(cdata),
        .Q({obuf_inst_n_2,video_dst_TKEEP}),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[4] (p_0_in),
        .\odata_reg[4]_0 (SR),
        .video_dst_TREADY(video_dst_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module cam_hls_preprocess_0_0_regslice_both__parameterized1
   (video_dst_TLAST,
    video_dst_TREADY,
    ap_rst_n,
    D,
    ap_clk,
    SR);
  output [0:0]video_dst_TLAST;
  input video_dst_TREADY;
  input ap_rst_n;
  input [1:0]D;
  input ap_clk;
  input [0:0]SR;

  wire [1:0]D;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [1:0]cdata;
  wire obuf_inst_n_1;
  wire obuf_inst_n_2;
  wire p_0_in;
  wire [0:0]video_dst_TLAST;
  wire video_dst_TREADY;

  cam_hls_preprocess_0_0_ibuf__parameterized1_20 ibuf_inst
       (.D(cdata),
        .Q(p_0_in),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .\ireg_reg[0]_0 (obuf_inst_n_2),
        .\ireg_reg[1]_0 (D),
        .video_dst_TREADY(video_dst_TREADY));
  cam_hls_preprocess_0_0_obuf__parameterized1_21 obuf_inst
       (.D(cdata),
        .Q({obuf_inst_n_2,video_dst_TLAST}),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[1] (p_0_in),
        .\odata_reg[1]_0 (SR),
        .video_dst_TREADY(video_dst_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module cam_hls_preprocess_0_0_regslice_both__parameterized1_19
   (video_dst_TUSER,
    video_dst_TREADY,
    ap_rst_n,
    D,
    ap_clk,
    SR);
  output [0:0]video_dst_TUSER;
  input video_dst_TREADY;
  input ap_rst_n;
  input [1:0]D;
  input ap_clk;
  input [0:0]SR;

  wire [1:0]D;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_rst_n;
  wire [1:0]cdata;
  wire obuf_inst_n_1;
  wire obuf_inst_n_2;
  wire p_0_in;
  wire video_dst_TREADY;
  wire [0:0]video_dst_TUSER;

  cam_hls_preprocess_0_0_ibuf__parameterized1 ibuf_inst
       (.D(cdata),
        .Q(p_0_in),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .\ireg_reg[0]_0 (obuf_inst_n_2),
        .\ireg_reg[1]_0 (D),
        .video_dst_TREADY(video_dst_TREADY));
  cam_hls_preprocess_0_0_obuf__parameterized1 obuf_inst
       (.D(cdata),
        .Q({obuf_inst_n_2,video_dst_TUSER}),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[1] (p_0_in),
        .\odata_reg[1]_0 (SR),
        .video_dst_TREADY(video_dst_TREADY));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module cam_hls_preprocess_0_0_regslice_both__parameterized1_23
   (Q,
    \icmp_ln73_reg_451_reg[0] ,
    \eol_0_reg_260_reg[0] ,
    icmp_ln73_fu_362_p2,
    \t_V_2_reg_249_reg[9] ,
    \t_V_2_reg_249_reg[7] ,
    \t_V_2_reg_249_reg[4] ,
    \eol_0_reg_260_reg[0]_0 ,
    \eol_reg_227_reg[0] ,
    \odata_reg[0] ,
    \ireg_reg[1] ,
    ap_rst_n,
    \tmp_1_reg_474_reg[7] ,
    \tmp_1_reg_474_reg[7]_0 ,
    src_img_data_stream_2_full_n,
    src_img_data_stream_3_full_n,
    src_img_data_stream_1_full_n,
    src_img_data_stream_s_full_n,
    \eol_2_reg_321_reg[0] ,
    \axi_last_V_3_reg_297_reg[0] ,
    sof_1_fu_146,
    \axi_last_V_2_reg_272_reg[0] ,
    \icmp_ln73_reg_451_reg[0]_0 ,
    eol_reg_227,
    D,
    \axi_last_V_2_reg_272_reg[0]_0 ,
    \axi_last_V_2_reg_272_reg[0]_1 ,
    \axi_last_V_2_reg_272_reg[0]_2 ,
    ap_clk,
    SS,
    E);
  output [1:0]Q;
  output \icmp_ln73_reg_451_reg[0] ;
  output \eol_0_reg_260_reg[0] ;
  output icmp_ln73_fu_362_p2;
  output \t_V_2_reg_249_reg[9] ;
  output \t_V_2_reg_249_reg[7] ;
  output \t_V_2_reg_249_reg[4] ;
  output \eol_0_reg_260_reg[0]_0 ;
  output \eol_reg_227_reg[0] ;
  output \odata_reg[0] ;
  input \ireg_reg[1] ;
  input ap_rst_n;
  input \tmp_1_reg_474_reg[7] ;
  input \tmp_1_reg_474_reg[7]_0 ;
  input src_img_data_stream_2_full_n;
  input src_img_data_stream_3_full_n;
  input src_img_data_stream_1_full_n;
  input src_img_data_stream_s_full_n;
  input \eol_2_reg_321_reg[0] ;
  input [1:0]\axi_last_V_3_reg_297_reg[0] ;
  input sof_1_fu_146;
  input \axi_last_V_2_reg_272_reg[0] ;
  input [10:0]\icmp_ln73_reg_451_reg[0]_0 ;
  input eol_reg_227;
  input [1:0]D;
  input \axi_last_V_2_reg_272_reg[0]_0 ;
  input \axi_last_V_2_reg_272_reg[0]_1 ;
  input \axi_last_V_2_reg_272_reg[0]_2 ;
  input ap_clk;
  input [0:0]SS;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire \axi_last_V_2_reg_272_reg[0] ;
  wire \axi_last_V_2_reg_272_reg[0]_0 ;
  wire \axi_last_V_2_reg_272_reg[0]_1 ;
  wire \axi_last_V_2_reg_272_reg[0]_2 ;
  wire [1:0]\axi_last_V_3_reg_297_reg[0] ;
  wire [1:0]cdata;
  wire \eol_0_reg_260_reg[0] ;
  wire \eol_0_reg_260_reg[0]_0 ;
  wire \eol_2_reg_321_reg[0] ;
  wire eol_reg_227;
  wire \eol_reg_227_reg[0] ;
  wire icmp_ln73_fu_362_p2;
  wire \icmp_ln73_reg_451_reg[0] ;
  wire [10:0]\icmp_ln73_reg_451_reg[0]_0 ;
  wire \ireg_reg[1] ;
  wire obuf_inst_n_1;
  wire \odata_reg[0] ;
  wire p_0_in;
  wire sof_1_fu_146;
  wire src_img_data_stream_1_full_n;
  wire src_img_data_stream_2_full_n;
  wire src_img_data_stream_3_full_n;
  wire src_img_data_stream_s_full_n;
  wire \t_V_2_reg_249_reg[4] ;
  wire \t_V_2_reg_249_reg[7] ;
  wire \t_V_2_reg_249_reg[9] ;
  wire \tmp_1_reg_474_reg[7] ;
  wire \tmp_1_reg_474_reg[7]_0 ;

  cam_hls_preprocess_0_0_ibuf__parameterized1_27 ibuf_inst
       (.D(cdata),
        .Q(p_0_in),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .\eol_0_reg_260_reg[0] (\eol_0_reg_260_reg[0] ),
        .icmp_ln73_fu_362_p2(icmp_ln73_fu_362_p2),
        .\icmp_ln73_reg_451_reg[0] (\icmp_ln73_reg_451_reg[0] ),
        .\icmp_ln73_reg_451_reg[0]_0 (\icmp_ln73_reg_451_reg[0]_0 ),
        .\ireg_reg[0]_0 (Q[1]),
        .\ireg_reg[0]_1 (\ireg_reg[1] ),
        .\ireg_reg[1]_0 (D),
        .sof_1_fu_146(sof_1_fu_146),
        .src_img_data_stream_1_full_n(src_img_data_stream_1_full_n),
        .src_img_data_stream_2_full_n(src_img_data_stream_2_full_n),
        .src_img_data_stream_3_full_n(src_img_data_stream_3_full_n),
        .src_img_data_stream_s_full_n(src_img_data_stream_s_full_n),
        .\t_V_2_reg_249_reg[4] (\t_V_2_reg_249_reg[4] ),
        .\t_V_2_reg_249_reg[7] (\t_V_2_reg_249_reg[7] ),
        .\t_V_2_reg_249_reg[9] (\t_V_2_reg_249_reg[9] ),
        .\tmp_1_reg_474_reg[7] (\tmp_1_reg_474_reg[7] ),
        .\tmp_1_reg_474_reg[7]_0 (\tmp_1_reg_474_reg[7]_0 ),
        .\tmp_1_reg_474_reg[7]_1 (\eol_2_reg_321_reg[0] ),
        .\tmp_1_reg_474_reg[7]_2 (\axi_last_V_3_reg_297_reg[0] [0]),
        .\tmp_1_reg_474_reg[7]_3 (\axi_last_V_2_reg_272_reg[0] ));
  cam_hls_preprocess_0_0_obuf__parameterized1_28 obuf_inst
       (.D(cdata),
        .E(E),
        .Q(Q),
        .SR(obuf_inst_n_1),
        .SS(SS),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\axi_last_V_2_reg_272_reg[0] (\axi_last_V_2_reg_272_reg[0]_0 ),
        .\axi_last_V_2_reg_272_reg[0]_0 (\axi_last_V_2_reg_272_reg[0]_1 ),
        .\axi_last_V_2_reg_272_reg[0]_1 (\axi_last_V_2_reg_272_reg[0]_2 ),
        .\axi_last_V_2_reg_272_reg[0]_2 (\axi_last_V_2_reg_272_reg[0] ),
        .\axi_last_V_3_reg_297_reg[0] (\axi_last_V_3_reg_297_reg[0] [1]),
        .\eol_0_reg_260_reg[0] (\eol_0_reg_260_reg[0]_0 ),
        .\eol_2_reg_321_reg[0] (\eol_2_reg_321_reg[0] ),
        .eol_reg_227(eol_reg_227),
        .\eol_reg_227_reg[0] (\eol_reg_227_reg[0] ),
        .\ireg_reg[1] (\ireg_reg[1] ),
        .\ireg_reg[1]_0 (p_0_in),
        .\odata_reg[0]_0 (\odata_reg[0] ));
endmodule

(* ORIG_REF_NAME = "regslice_both" *) 
module cam_hls_preprocess_0_0_regslice_both__parameterized1_24
   (Q,
    D,
    \ireg_reg[1] ,
    ap_rst_n,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[2] ,
    \ap_CS_fsm_reg[2]_0 ,
    \ireg_reg[1]_0 ,
    ap_clk,
    SS,
    E);
  output [0:0]Q;
  output [1:0]D;
  input \ireg_reg[1] ;
  input ap_rst_n;
  input \ap_CS_fsm_reg[1] ;
  input [1:0]\ap_CS_fsm_reg[2] ;
  input [0:0]\ap_CS_fsm_reg[2]_0 ;
  input [1:0]\ireg_reg[1]_0 ;
  input ap_clk;
  input [0:0]SS;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SS;
  wire \ap_CS_fsm_reg[1] ;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire [0:0]\ap_CS_fsm_reg[2]_0 ;
  wire ap_clk;
  wire ap_rst_n;
  wire [1:0]cdata;
  wire \ireg_reg[1] ;
  wire [1:0]\ireg_reg[1]_0 ;
  wire obuf_inst_n_1;
  wire p_0_in;

  cam_hls_preprocess_0_0_ibuf__parameterized1_25 ibuf_inst
       (.D(cdata),
        .Q(p_0_in),
        .SR(obuf_inst_n_1),
        .ap_clk(ap_clk),
        .\ireg_reg[0]_0 (Q),
        .\ireg_reg[0]_1 (\ireg_reg[1] ),
        .\ireg_reg[1]_0 (\ireg_reg[1]_0 ));
  cam_hls_preprocess_0_0_obuf__parameterized1_26 obuf_inst
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(obuf_inst_n_1),
        .SS(SS),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .\ap_CS_fsm_reg[2] (\ap_CS_fsm_reg[2] ),
        .\ap_CS_fsm_reg[2]_0 (\ap_CS_fsm_reg[2]_0 ),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .\ireg_reg[1] (\ireg_reg[1] ),
        .\ireg_reg[1]_0 (p_0_in),
        .\odata_reg[1]_0 (cdata));
endmodule

(* ORIG_REF_NAME = "start_for_Convertcud" *) 
module cam_hls_preprocess_0_0_start_for_Convertcud
   (start_for_Convert_U0_full_n,
    Convert_U0_ap_start,
    internal_empty_n_reg_0,
    ap_clk,
    ap_rst_n,
    internal_full_n_reg_0,
    Downsample_U0_ap_start,
    \mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[0]_0 ,
    start_for_Mat2AXIvideo_U0_full_n,
    internal_empty_n_reg_1,
    SS);
  output start_for_Convert_U0_full_n;
  output Convert_U0_ap_start;
  output internal_empty_n_reg_0;
  input ap_clk;
  input ap_rst_n;
  input internal_full_n_reg_0;
  input Downsample_U0_ap_start;
  input \mOutPtr_reg[1]_0 ;
  input \mOutPtr_reg[0]_0 ;
  input start_for_Mat2AXIvideo_U0_full_n;
  input internal_empty_n_reg_1;
  input [0:0]SS;

  wire Convert_U0_ap_start;
  wire Downsample_U0_ap_start;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire internal_empty_n_i_1__5_n_1;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_full_n_i_1__2_n_1;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__12_n_1 ;
  wire \mOutPtr[1]_i_1__5_n_1 ;
  wire \mOutPtr[1]_i_2__2_n_1 ;
  wire \mOutPtr[1]_i_3__2_n_1 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire start_for_Convert_U0_full_n;
  wire start_for_Mat2AXIvideo_U0_full_n;

  LUT6 #(
    .INIT(64'h8A888A888A888A08)) 
    internal_empty_n_i_1__5
       (.I0(ap_rst_n),
        .I1(Convert_U0_ap_start),
        .I2(\mOutPtr[1]_i_3__2_n_1 ),
        .I3(internal_full_n_reg_0),
        .I4(\mOutPtr_reg_n_1_[1] ),
        .I5(\mOutPtr_reg_n_1_[0] ),
        .O(internal_empty_n_i_1__5_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__5_n_1),
        .Q(Convert_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__2
       (.I0(ap_rst_n),
        .I1(start_for_Convert_U0_full_n),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\mOutPtr_reg_n_1_[1] ),
        .I4(internal_full_n_reg_0),
        .I5(\mOutPtr[1]_i_3__2_n_1 ),
        .O(internal_full_n_i_1__2_n_1));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h08)) 
    internal_full_n_i_2__1
       (.I0(Convert_U0_ap_start),
        .I1(start_for_Mat2AXIvideo_U0_full_n),
        .I2(internal_empty_n_reg_1),
        .O(internal_empty_n_reg_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__2_n_1),
        .Q(start_for_Convert_U0_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__12 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1__12_n_1 ));
  LUT4 #(
    .INIT(16'hBF40)) 
    \mOutPtr[1]_i_1__5 
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(start_for_Convert_U0_full_n),
        .I2(Downsample_U0_ap_start),
        .I3(\mOutPtr[1]_i_3__2_n_1 ),
        .O(\mOutPtr[1]_i_1__5_n_1 ));
  LUT6 #(
    .INIT(64'hF70008FF08FFF700)) 
    \mOutPtr[1]_i_2__2 
       (.I0(Downsample_U0_ap_start),
        .I1(start_for_Convert_U0_full_n),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(\mOutPtr[1]_i_3__2_n_1 ),
        .I4(\mOutPtr_reg_n_1_[0] ),
        .I5(\mOutPtr_reg_n_1_[1] ),
        .O(\mOutPtr[1]_i_2__2_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mOutPtr[1]_i_3__2 
       (.I0(Convert_U0_ap_start),
        .I1(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr[1]_i_3__2_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__5_n_1 ),
        .D(\mOutPtr[0]_i_1__12_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__5_n_1 ),
        .D(\mOutPtr[1]_i_2__2_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "start_for_Downsambkb" *) 
module cam_hls_preprocess_0_0_start_for_Downsambkb
   (start_for_Downsample_U0_full_n,
    Downsample_U0_ap_start,
    internal_empty_n_reg_0,
    ap_clk,
    ap_rst_n,
    internal_empty_n_reg_1,
    AXIvideo2Mat_U0_ap_start,
    start_once_reg,
    \mOutPtr_reg[0]_0 ,
    start_for_Convert_U0_full_n,
    internal_full_n_reg_0,
    SS);
  output start_for_Downsample_U0_full_n;
  output Downsample_U0_ap_start;
  output internal_empty_n_reg_0;
  input ap_clk;
  input ap_rst_n;
  input internal_empty_n_reg_1;
  input AXIvideo2Mat_U0_ap_start;
  input start_once_reg;
  input \mOutPtr_reg[0]_0 ;
  input start_for_Convert_U0_full_n;
  input internal_full_n_reg_0;
  input [0:0]SS;

  wire AXIvideo2Mat_U0_ap_start;
  wire Downsample_U0_ap_start;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire internal_empty_n_i_1__4_n_1;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_full_n_i_1__1_n_1;
  wire internal_full_n_reg_0;
  wire \mOutPtr[0]_i_1__11_n_1 ;
  wire \mOutPtr[1]_i_1__4_n_1 ;
  wire \mOutPtr[1]_i_2__1_n_1 ;
  wire \mOutPtr[1]_i_3__0_n_1 ;
  wire \mOutPtr_reg[0]_0 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire start_for_Convert_U0_full_n;
  wire start_for_Downsample_U0_full_n;
  wire start_once_reg;

  LUT6 #(
    .INIT(64'h8A888A888A888A08)) 
    internal_empty_n_i_1__4
       (.I0(ap_rst_n),
        .I1(Downsample_U0_ap_start),
        .I2(\mOutPtr[1]_i_3__0_n_1 ),
        .I3(internal_empty_n_reg_1),
        .I4(\mOutPtr_reg_n_1_[0] ),
        .I5(\mOutPtr_reg_n_1_[1] ),
        .O(internal_empty_n_i_1__4_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1__4_n_1),
        .Q(Downsample_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1__1
       (.I0(ap_rst_n),
        .I1(start_for_Downsample_U0_full_n),
        .I2(\mOutPtr_reg_n_1_[1] ),
        .I3(\mOutPtr_reg_n_1_[0] ),
        .I4(internal_empty_n_reg_1),
        .I5(\mOutPtr[1]_i_3__0_n_1 ),
        .O(internal_full_n_i_1__1_n_1));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h08)) 
    internal_full_n_i_2__0
       (.I0(Downsample_U0_ap_start),
        .I1(start_for_Convert_U0_full_n),
        .I2(internal_full_n_reg_0),
        .O(internal_empty_n_reg_0));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1__1_n_1),
        .Q(start_for_Downsample_U0_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__11 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1__11_n_1 ));
  LUT4 #(
    .INIT(16'hBF40)) 
    \mOutPtr[1]_i_1__4 
       (.I0(start_once_reg),
        .I1(start_for_Downsample_U0_full_n),
        .I2(AXIvideo2Mat_U0_ap_start),
        .I3(\mOutPtr[1]_i_3__0_n_1 ),
        .O(\mOutPtr[1]_i_1__4_n_1 ));
  LUT6 #(
    .INIT(64'hF70008FF08FFF700)) 
    \mOutPtr[1]_i_2__1 
       (.I0(AXIvideo2Mat_U0_ap_start),
        .I1(start_for_Downsample_U0_full_n),
        .I2(start_once_reg),
        .I3(\mOutPtr[1]_i_3__0_n_1 ),
        .I4(\mOutPtr_reg_n_1_[0] ),
        .I5(\mOutPtr_reg_n_1_[1] ),
        .O(\mOutPtr[1]_i_2__1_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \mOutPtr[1]_i_3__0 
       (.I0(Downsample_U0_ap_start),
        .I1(\mOutPtr_reg[0]_0 ),
        .O(\mOutPtr[1]_i_3__0_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__4_n_1 ),
        .D(\mOutPtr[0]_i_1__11_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1__4_n_1 ),
        .D(\mOutPtr[1]_i_2__1_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "start_for_Mat2AXIdEe" *) 
module cam_hls_preprocess_0_0_start_for_Mat2AXIdEe
   (start_for_Mat2AXIvideo_U0_full_n,
    Mat2AXIvideo_U0_ap_start,
    internal_empty_n_reg_0,
    ap_clk,
    Convert_U0_ap_start,
    \mOutPtr_reg[1]_0 ,
    \mOutPtr_reg[1]_1 ,
    ap_rst_n,
    Mat2AXIvideo_U0_ap_ready,
    internal_empty_n_reg_1,
    int_ap_idle_reg,
    Q,
    int_ap_idle_reg_0,
    int_ap_idle_reg_1,
    SS);
  output start_for_Mat2AXIvideo_U0_full_n;
  output Mat2AXIvideo_U0_ap_start;
  output internal_empty_n_reg_0;
  input ap_clk;
  input Convert_U0_ap_start;
  input \mOutPtr_reg[1]_0 ;
  input \mOutPtr_reg[1]_1 ;
  input ap_rst_n;
  input Mat2AXIvideo_U0_ap_ready;
  input internal_empty_n_reg_1;
  input [0:0]int_ap_idle_reg;
  input [0:0]Q;
  input [0:0]int_ap_idle_reg_0;
  input [0:0]int_ap_idle_reg_1;
  input [0:0]SS;

  wire Convert_U0_ap_start;
  wire Mat2AXIvideo_U0_ap_ready;
  wire Mat2AXIvideo_U0_ap_start;
  wire [0:0]Q;
  wire [0:0]SS;
  wire ap_clk;
  wire ap_rst_n;
  wire [0:0]int_ap_idle_reg;
  wire [0:0]int_ap_idle_reg_0;
  wire [0:0]int_ap_idle_reg_1;
  wire internal_empty_n_i_1_n_1;
  wire internal_empty_n_reg_0;
  wire internal_empty_n_reg_1;
  wire internal_full_n_i_1_n_1;
  wire \mOutPtr[0]_i_1__13_n_1 ;
  wire \mOutPtr[1]_i_1_n_1 ;
  wire \mOutPtr[1]_i_2_n_1 ;
  wire \mOutPtr_reg[1]_0 ;
  wire \mOutPtr_reg[1]_1 ;
  wire \mOutPtr_reg_n_1_[0] ;
  wire \mOutPtr_reg_n_1_[1] ;
  wire start_for_Mat2AXIvideo_U0_full_n;

  LUT5 #(
    .INIT(32'h40000000)) 
    int_ap_idle_i_4
       (.I0(Mat2AXIvideo_U0_ap_start),
        .I1(int_ap_idle_reg),
        .I2(Q),
        .I3(int_ap_idle_reg_0),
        .I4(int_ap_idle_reg_1),
        .O(internal_empty_n_reg_0));
  LUT6 #(
    .INIT(64'hAAA0AAA0AAA0AA20)) 
    internal_empty_n_i_1
       (.I0(ap_rst_n),
        .I1(Mat2AXIvideo_U0_ap_ready),
        .I2(Mat2AXIvideo_U0_ap_start),
        .I3(internal_empty_n_reg_1),
        .I4(\mOutPtr_reg_n_1_[1] ),
        .I5(\mOutPtr_reg_n_1_[0] ),
        .O(internal_empty_n_i_1_n_1));
  FDRE #(
    .INIT(1'b0)) 
    internal_empty_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_empty_n_i_1_n_1),
        .Q(Mat2AXIvideo_U0_ap_start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hDDDDFFFFDDD5DDDD)) 
    internal_full_n_i_1
       (.I0(ap_rst_n),
        .I1(start_for_Mat2AXIvideo_U0_full_n),
        .I2(\mOutPtr_reg_n_1_[0] ),
        .I3(\mOutPtr_reg_n_1_[1] ),
        .I4(internal_empty_n_reg_1),
        .I5(\mOutPtr_reg[1]_1 ),
        .O(internal_full_n_i_1_n_1));
  FDRE #(
    .INIT(1'b1)) 
    internal_full_n_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(internal_full_n_i_1_n_1),
        .Q(start_for_Mat2AXIvideo_U0_full_n),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \mOutPtr[0]_i_1__13 
       (.I0(\mOutPtr_reg_n_1_[0] ),
        .O(\mOutPtr[0]_i_1__13_n_1 ));
  LUT5 #(
    .INIT(32'hBF404040)) 
    \mOutPtr[1]_i_1 
       (.I0(\mOutPtr_reg[1]_0 ),
        .I1(start_for_Mat2AXIvideo_U0_full_n),
        .I2(Convert_U0_ap_start),
        .I3(Mat2AXIvideo_U0_ap_ready),
        .I4(Mat2AXIvideo_U0_ap_start),
        .O(\mOutPtr[1]_i_1_n_1 ));
  LUT6 #(
    .INIT(64'hF70008FF08FFF700)) 
    \mOutPtr[1]_i_2 
       (.I0(Convert_U0_ap_start),
        .I1(start_for_Mat2AXIvideo_U0_full_n),
        .I2(\mOutPtr_reg[1]_0 ),
        .I3(\mOutPtr_reg[1]_1 ),
        .I4(\mOutPtr_reg_n_1_[0] ),
        .I5(\mOutPtr_reg_n_1_[1] ),
        .O(\mOutPtr[1]_i_2_n_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[0] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1_n_1 ),
        .D(\mOutPtr[0]_i_1__13_n_1 ),
        .Q(\mOutPtr_reg_n_1_[0] ),
        .S(SS));
  FDSE #(
    .INIT(1'b1)) 
    \mOutPtr_reg[1] 
       (.C(ap_clk),
        .CE(\mOutPtr[1]_i_1_n_1 ),
        .D(\mOutPtr[1]_i_2_n_1 ),
        .Q(\mOutPtr_reg_n_1_[1] ),
        .S(SS));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
