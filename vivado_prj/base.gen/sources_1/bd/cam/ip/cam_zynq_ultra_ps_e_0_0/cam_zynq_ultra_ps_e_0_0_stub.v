// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jul 21 00:11:20 2021
// Host        : ADAM-GALLAS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/base/base.srcs/sources_1/bd/cam/ip/cam_zynq_ultra_ps_e_0_0/cam_zynq_ultra_ps_e_0_0_stub.v
// Design      : cam_zynq_ultra_ps_e_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "zynq_ultra_ps_e_v3_3_2_zynq_ultra_ps_e,Vivado 2020.1" *)
module cam_zynq_ultra_ps_e_0_0(maxihpm0_lpd_aclk, maxigp2_awid, 
  maxigp2_awaddr, maxigp2_awlen, maxigp2_awsize, maxigp2_awburst, maxigp2_awlock, 
  maxigp2_awcache, maxigp2_awprot, maxigp2_awvalid, maxigp2_awuser, maxigp2_awready, 
  maxigp2_wdata, maxigp2_wstrb, maxigp2_wlast, maxigp2_wvalid, maxigp2_wready, maxigp2_bid, 
  maxigp2_bresp, maxigp2_bvalid, maxigp2_bready, maxigp2_arid, maxigp2_araddr, maxigp2_arlen, 
  maxigp2_arsize, maxigp2_arburst, maxigp2_arlock, maxigp2_arcache, maxigp2_arprot, 
  maxigp2_arvalid, maxigp2_aruser, maxigp2_arready, maxigp2_rid, maxigp2_rdata, 
  maxigp2_rresp, maxigp2_rlast, maxigp2_rvalid, maxigp2_rready, maxigp2_awqos, maxigp2_arqos, 
  saxihpc0_fpd_aclk, saxigp0_aruser, saxigp0_awuser, saxigp0_awid, saxigp0_awaddr, 
  saxigp0_awlen, saxigp0_awsize, saxigp0_awburst, saxigp0_awlock, saxigp0_awcache, 
  saxigp0_awprot, saxigp0_awvalid, saxigp0_awready, saxigp0_wdata, saxigp0_wstrb, 
  saxigp0_wlast, saxigp0_wvalid, saxigp0_wready, saxigp0_bid, saxigp0_bresp, saxigp0_bvalid, 
  saxigp0_bready, saxigp0_arid, saxigp0_araddr, saxigp0_arlen, saxigp0_arsize, 
  saxigp0_arburst, saxigp0_arlock, saxigp0_arcache, saxigp0_arprot, saxigp0_arvalid, 
  saxigp0_arready, saxigp0_rid, saxigp0_rdata, saxigp0_rresp, saxigp0_rlast, saxigp0_rvalid, 
  saxigp0_rready, saxigp0_awqos, saxigp0_arqos, saxihpc1_fpd_aclk, saxigp1_aruser, 
  saxigp1_awuser, saxigp1_awid, saxigp1_awaddr, saxigp1_awlen, saxigp1_awsize, 
  saxigp1_awburst, saxigp1_awlock, saxigp1_awcache, saxigp1_awprot, saxigp1_awvalid, 
  saxigp1_awready, saxigp1_wdata, saxigp1_wstrb, saxigp1_wlast, saxigp1_wvalid, 
  saxigp1_wready, saxigp1_bid, saxigp1_bresp, saxigp1_bvalid, saxigp1_bready, saxigp1_arid, 
  saxigp1_araddr, saxigp1_arlen, saxigp1_arsize, saxigp1_arburst, saxigp1_arlock, 
  saxigp1_arcache, saxigp1_arprot, saxigp1_arvalid, saxigp1_arready, saxigp1_rid, 
  saxigp1_rdata, saxigp1_rresp, saxigp1_rlast, saxigp1_rvalid, saxigp1_rready, saxigp1_awqos, 
  saxigp1_arqos, saxihp0_fpd_aclk, saxigp2_aruser, saxigp2_awuser, saxigp2_awid, 
  saxigp2_awaddr, saxigp2_awlen, saxigp2_awsize, saxigp2_awburst, saxigp2_awlock, 
  saxigp2_awcache, saxigp2_awprot, saxigp2_awvalid, saxigp2_awready, saxigp2_wdata, 
  saxigp2_wstrb, saxigp2_wlast, saxigp2_wvalid, saxigp2_wready, saxigp2_bid, saxigp2_bresp, 
  saxigp2_bvalid, saxigp2_bready, saxigp2_arid, saxigp2_araddr, saxigp2_arlen, 
  saxigp2_arsize, saxigp2_arburst, saxigp2_arlock, saxigp2_arcache, saxigp2_arprot, 
  saxigp2_arvalid, saxigp2_arready, saxigp2_rid, saxigp2_rdata, saxigp2_rresp, saxigp2_rlast, 
  saxigp2_rvalid, saxigp2_rready, saxigp2_awqos, saxigp2_arqos, 
  emio_enet0_enet_tsu_timer_cnt, emio_gpio_i, emio_gpio_o, emio_gpio_t, emio_uart1_txd, 
  emio_uart1_rxd, dp_video_ref_clk, dp_live_video_in_vsync, dp_live_video_in_hsync, 
  dp_live_video_in_de, dp_live_video_in_pixel1, dp_video_in_clk, dp_video_out_hsync, 
  dp_video_out_vsync, dp_video_out_pixel1, dp_aux_data_in, dp_aux_data_out, 
  dp_aux_data_oe_n, dp_live_gfx_alpha_in, dp_live_gfx_pixel1_in, dp_hot_plug_detect, 
  dp_external_custom_event1, dp_external_custom_event2, dp_external_vsync_event, 
  dp_live_video_de_out, pl_ps_irq0, pl_resetn0, pl_clk0)
/* synthesis syn_black_box black_box_pad_pin="maxihpm0_lpd_aclk,maxigp2_awid[15:0],maxigp2_awaddr[39:0],maxigp2_awlen[7:0],maxigp2_awsize[2:0],maxigp2_awburst[1:0],maxigp2_awlock,maxigp2_awcache[3:0],maxigp2_awprot[2:0],maxigp2_awvalid,maxigp2_awuser[15:0],maxigp2_awready,maxigp2_wdata[31:0],maxigp2_wstrb[3:0],maxigp2_wlast,maxigp2_wvalid,maxigp2_wready,maxigp2_bid[15:0],maxigp2_bresp[1:0],maxigp2_bvalid,maxigp2_bready,maxigp2_arid[15:0],maxigp2_araddr[39:0],maxigp2_arlen[7:0],maxigp2_arsize[2:0],maxigp2_arburst[1:0],maxigp2_arlock,maxigp2_arcache[3:0],maxigp2_arprot[2:0],maxigp2_arvalid,maxigp2_aruser[15:0],maxigp2_arready,maxigp2_rid[15:0],maxigp2_rdata[31:0],maxigp2_rresp[1:0],maxigp2_rlast,maxigp2_rvalid,maxigp2_rready,maxigp2_awqos[3:0],maxigp2_arqos[3:0],saxihpc0_fpd_aclk,saxigp0_aruser,saxigp0_awuser,saxigp0_awid[5:0],saxigp0_awaddr[48:0],saxigp0_awlen[7:0],saxigp0_awsize[2:0],saxigp0_awburst[1:0],saxigp0_awlock,saxigp0_awcache[3:0],saxigp0_awprot[2:0],saxigp0_awvalid,saxigp0_awready,saxigp0_wdata[31:0],saxigp0_wstrb[3:0],saxigp0_wlast,saxigp0_wvalid,saxigp0_wready,saxigp0_bid[5:0],saxigp0_bresp[1:0],saxigp0_bvalid,saxigp0_bready,saxigp0_arid[5:0],saxigp0_araddr[48:0],saxigp0_arlen[7:0],saxigp0_arsize[2:0],saxigp0_arburst[1:0],saxigp0_arlock,saxigp0_arcache[3:0],saxigp0_arprot[2:0],saxigp0_arvalid,saxigp0_arready,saxigp0_rid[5:0],saxigp0_rdata[31:0],saxigp0_rresp[1:0],saxigp0_rlast,saxigp0_rvalid,saxigp0_rready,saxigp0_awqos[3:0],saxigp0_arqos[3:0],saxihpc1_fpd_aclk,saxigp1_aruser,saxigp1_awuser,saxigp1_awid[5:0],saxigp1_awaddr[48:0],saxigp1_awlen[7:0],saxigp1_awsize[2:0],saxigp1_awburst[1:0],saxigp1_awlock,saxigp1_awcache[3:0],saxigp1_awprot[2:0],saxigp1_awvalid,saxigp1_awready,saxigp1_wdata[63:0],saxigp1_wstrb[7:0],saxigp1_wlast,saxigp1_wvalid,saxigp1_wready,saxigp1_bid[5:0],saxigp1_bresp[1:0],saxigp1_bvalid,saxigp1_bready,saxigp1_arid[5:0],saxigp1_araddr[48:0],saxigp1_arlen[7:0],saxigp1_arsize[2:0],saxigp1_arburst[1:0],saxigp1_arlock,saxigp1_arcache[3:0],saxigp1_arprot[2:0],saxigp1_arvalid,saxigp1_arready,saxigp1_rid[5:0],saxigp1_rdata[63:0],saxigp1_rresp[1:0],saxigp1_rlast,saxigp1_rvalid,saxigp1_rready,saxigp1_awqos[3:0],saxigp1_arqos[3:0],saxihp0_fpd_aclk,saxigp2_aruser,saxigp2_awuser,saxigp2_awid[5:0],saxigp2_awaddr[48:0],saxigp2_awlen[7:0],saxigp2_awsize[2:0],saxigp2_awburst[1:0],saxigp2_awlock,saxigp2_awcache[3:0],saxigp2_awprot[2:0],saxigp2_awvalid,saxigp2_awready,saxigp2_wdata[63:0],saxigp2_wstrb[7:0],saxigp2_wlast,saxigp2_wvalid,saxigp2_wready,saxigp2_bid[5:0],saxigp2_bresp[1:0],saxigp2_bvalid,saxigp2_bready,saxigp2_arid[5:0],saxigp2_araddr[48:0],saxigp2_arlen[7:0],saxigp2_arsize[2:0],saxigp2_arburst[1:0],saxigp2_arlock,saxigp2_arcache[3:0],saxigp2_arprot[2:0],saxigp2_arvalid,saxigp2_arready,saxigp2_rid[5:0],saxigp2_rdata[63:0],saxigp2_rresp[1:0],saxigp2_rlast,saxigp2_rvalid,saxigp2_rready,saxigp2_awqos[3:0],saxigp2_arqos[3:0],emio_enet0_enet_tsu_timer_cnt[93:0],emio_gpio_i[0:0],emio_gpio_o[0:0],emio_gpio_t[0:0],emio_uart1_txd,emio_uart1_rxd,dp_video_ref_clk,dp_live_video_in_vsync,dp_live_video_in_hsync,dp_live_video_in_de,dp_live_video_in_pixel1[35:0],dp_video_in_clk,dp_video_out_hsync,dp_video_out_vsync,dp_video_out_pixel1[35:0],dp_aux_data_in,dp_aux_data_out,dp_aux_data_oe_n,dp_live_gfx_alpha_in[7:0],dp_live_gfx_pixel1_in[35:0],dp_hot_plug_detect,dp_external_custom_event1,dp_external_custom_event2,dp_external_vsync_event,dp_live_video_de_out,pl_ps_irq0[0:0],pl_resetn0,pl_clk0" */;
  input maxihpm0_lpd_aclk;
  output [15:0]maxigp2_awid;
  output [39:0]maxigp2_awaddr;
  output [7:0]maxigp2_awlen;
  output [2:0]maxigp2_awsize;
  output [1:0]maxigp2_awburst;
  output maxigp2_awlock;
  output [3:0]maxigp2_awcache;
  output [2:0]maxigp2_awprot;
  output maxigp2_awvalid;
  output [15:0]maxigp2_awuser;
  input maxigp2_awready;
  output [31:0]maxigp2_wdata;
  output [3:0]maxigp2_wstrb;
  output maxigp2_wlast;
  output maxigp2_wvalid;
  input maxigp2_wready;
  input [15:0]maxigp2_bid;
  input [1:0]maxigp2_bresp;
  input maxigp2_bvalid;
  output maxigp2_bready;
  output [15:0]maxigp2_arid;
  output [39:0]maxigp2_araddr;
  output [7:0]maxigp2_arlen;
  output [2:0]maxigp2_arsize;
  output [1:0]maxigp2_arburst;
  output maxigp2_arlock;
  output [3:0]maxigp2_arcache;
  output [2:0]maxigp2_arprot;
  output maxigp2_arvalid;
  output [15:0]maxigp2_aruser;
  input maxigp2_arready;
  input [15:0]maxigp2_rid;
  input [31:0]maxigp2_rdata;
  input [1:0]maxigp2_rresp;
  input maxigp2_rlast;
  input maxigp2_rvalid;
  output maxigp2_rready;
  output [3:0]maxigp2_awqos;
  output [3:0]maxigp2_arqos;
  input saxihpc0_fpd_aclk;
  input saxigp0_aruser;
  input saxigp0_awuser;
  input [5:0]saxigp0_awid;
  input [48:0]saxigp0_awaddr;
  input [7:0]saxigp0_awlen;
  input [2:0]saxigp0_awsize;
  input [1:0]saxigp0_awburst;
  input saxigp0_awlock;
  input [3:0]saxigp0_awcache;
  input [2:0]saxigp0_awprot;
  input saxigp0_awvalid;
  output saxigp0_awready;
  input [31:0]saxigp0_wdata;
  input [3:0]saxigp0_wstrb;
  input saxigp0_wlast;
  input saxigp0_wvalid;
  output saxigp0_wready;
  output [5:0]saxigp0_bid;
  output [1:0]saxigp0_bresp;
  output saxigp0_bvalid;
  input saxigp0_bready;
  input [5:0]saxigp0_arid;
  input [48:0]saxigp0_araddr;
  input [7:0]saxigp0_arlen;
  input [2:0]saxigp0_arsize;
  input [1:0]saxigp0_arburst;
  input saxigp0_arlock;
  input [3:0]saxigp0_arcache;
  input [2:0]saxigp0_arprot;
  input saxigp0_arvalid;
  output saxigp0_arready;
  output [5:0]saxigp0_rid;
  output [31:0]saxigp0_rdata;
  output [1:0]saxigp0_rresp;
  output saxigp0_rlast;
  output saxigp0_rvalid;
  input saxigp0_rready;
  input [3:0]saxigp0_awqos;
  input [3:0]saxigp0_arqos;
  input saxihpc1_fpd_aclk;
  input saxigp1_aruser;
  input saxigp1_awuser;
  input [5:0]saxigp1_awid;
  input [48:0]saxigp1_awaddr;
  input [7:0]saxigp1_awlen;
  input [2:0]saxigp1_awsize;
  input [1:0]saxigp1_awburst;
  input saxigp1_awlock;
  input [3:0]saxigp1_awcache;
  input [2:0]saxigp1_awprot;
  input saxigp1_awvalid;
  output saxigp1_awready;
  input [63:0]saxigp1_wdata;
  input [7:0]saxigp1_wstrb;
  input saxigp1_wlast;
  input saxigp1_wvalid;
  output saxigp1_wready;
  output [5:0]saxigp1_bid;
  output [1:0]saxigp1_bresp;
  output saxigp1_bvalid;
  input saxigp1_bready;
  input [5:0]saxigp1_arid;
  input [48:0]saxigp1_araddr;
  input [7:0]saxigp1_arlen;
  input [2:0]saxigp1_arsize;
  input [1:0]saxigp1_arburst;
  input saxigp1_arlock;
  input [3:0]saxigp1_arcache;
  input [2:0]saxigp1_arprot;
  input saxigp1_arvalid;
  output saxigp1_arready;
  output [5:0]saxigp1_rid;
  output [63:0]saxigp1_rdata;
  output [1:0]saxigp1_rresp;
  output saxigp1_rlast;
  output saxigp1_rvalid;
  input saxigp1_rready;
  input [3:0]saxigp1_awqos;
  input [3:0]saxigp1_arqos;
  input saxihp0_fpd_aclk;
  input saxigp2_aruser;
  input saxigp2_awuser;
  input [5:0]saxigp2_awid;
  input [48:0]saxigp2_awaddr;
  input [7:0]saxigp2_awlen;
  input [2:0]saxigp2_awsize;
  input [1:0]saxigp2_awburst;
  input saxigp2_awlock;
  input [3:0]saxigp2_awcache;
  input [2:0]saxigp2_awprot;
  input saxigp2_awvalid;
  output saxigp2_awready;
  input [63:0]saxigp2_wdata;
  input [7:0]saxigp2_wstrb;
  input saxigp2_wlast;
  input saxigp2_wvalid;
  output saxigp2_wready;
  output [5:0]saxigp2_bid;
  output [1:0]saxigp2_bresp;
  output saxigp2_bvalid;
  input saxigp2_bready;
  input [5:0]saxigp2_arid;
  input [48:0]saxigp2_araddr;
  input [7:0]saxigp2_arlen;
  input [2:0]saxigp2_arsize;
  input [1:0]saxigp2_arburst;
  input saxigp2_arlock;
  input [3:0]saxigp2_arcache;
  input [2:0]saxigp2_arprot;
  input saxigp2_arvalid;
  output saxigp2_arready;
  output [5:0]saxigp2_rid;
  output [63:0]saxigp2_rdata;
  output [1:0]saxigp2_rresp;
  output saxigp2_rlast;
  output saxigp2_rvalid;
  input saxigp2_rready;
  input [3:0]saxigp2_awqos;
  input [3:0]saxigp2_arqos;
  output [93:0]emio_enet0_enet_tsu_timer_cnt;
  input [0:0]emio_gpio_i;
  output [0:0]emio_gpio_o;
  output [0:0]emio_gpio_t;
  output emio_uart1_txd;
  input emio_uart1_rxd;
  output dp_video_ref_clk;
  input dp_live_video_in_vsync;
  input dp_live_video_in_hsync;
  input dp_live_video_in_de;
  input [35:0]dp_live_video_in_pixel1;
  input dp_video_in_clk;
  output dp_video_out_hsync;
  output dp_video_out_vsync;
  output [35:0]dp_video_out_pixel1;
  input dp_aux_data_in;
  output dp_aux_data_out;
  output dp_aux_data_oe_n;
  input [7:0]dp_live_gfx_alpha_in;
  input [35:0]dp_live_gfx_pixel1_in;
  input dp_hot_plug_detect;
  input dp_external_custom_event1;
  input dp_external_custom_event2;
  input dp_external_vsync_event;
  output dp_live_video_de_out;
  input [0:0]pl_ps_irq0;
  output pl_resetn0;
  output pl_clk0;
endmodule
