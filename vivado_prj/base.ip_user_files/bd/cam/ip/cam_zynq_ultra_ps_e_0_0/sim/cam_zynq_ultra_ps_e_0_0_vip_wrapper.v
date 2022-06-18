 








// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

`timescale 1ns/1ps

module cam_zynq_ultra_ps_e_0_0 (
maxihpm0_lpd_aclk, 
maxigp2_awid, 
maxigp2_awaddr, 
maxigp2_awlen, 
maxigp2_awsize, 
maxigp2_awburst, 
maxigp2_awlock, 
maxigp2_awcache, 
maxigp2_awprot, 
maxigp2_awvalid, 
maxigp2_awuser, 
maxigp2_awready, 
maxigp2_wdata, 
maxigp2_wstrb, 
maxigp2_wlast, 
maxigp2_wvalid, 
maxigp2_wready, 
maxigp2_bid, 
maxigp2_bresp, 
maxigp2_bvalid, 
maxigp2_bready, 
maxigp2_arid, 
maxigp2_araddr, 
maxigp2_arlen, 
maxigp2_arsize, 
maxigp2_arburst, 
maxigp2_arlock, 
maxigp2_arcache, 
maxigp2_arprot, 
maxigp2_arvalid, 
maxigp2_aruser, 
maxigp2_arready, 
maxigp2_rid, 
maxigp2_rdata, 
maxigp2_rresp, 
maxigp2_rlast, 
maxigp2_rvalid, 
maxigp2_rready, 
maxigp2_awqos, 
maxigp2_arqos, 
saxihpc0_fpd_aclk, 
saxigp0_aruser, 
saxigp0_awuser, 
saxigp0_awid, 
saxigp0_awaddr, 
saxigp0_awlen, 
saxigp0_awsize, 
saxigp0_awburst, 
saxigp0_awlock, 
saxigp0_awcache, 
saxigp0_awprot, 
saxigp0_awvalid, 
saxigp0_awready, 
saxigp0_wdata, 
saxigp0_wstrb, 
saxigp0_wlast, 
saxigp0_wvalid, 
saxigp0_wready, 
saxigp0_bid, 
saxigp0_bresp, 
saxigp0_bvalid, 
saxigp0_bready, 
saxigp0_arid, 
saxigp0_araddr, 
saxigp0_arlen, 
saxigp0_arsize, 
saxigp0_arburst, 
saxigp0_arlock, 
saxigp0_arcache, 
saxigp0_arprot, 
saxigp0_arvalid, 
saxigp0_arready, 
saxigp0_rid, 
saxigp0_rdata, 
saxigp0_rresp, 
saxigp0_rlast, 
saxigp0_rvalid, 
saxigp0_rready, 
saxigp0_awqos, 
saxigp0_arqos, 
saxihpc1_fpd_aclk, 
saxigp1_aruser, 
saxigp1_awuser, 
saxigp1_awid, 
saxigp1_awaddr, 
saxigp1_awlen, 
saxigp1_awsize, 
saxigp1_awburst, 
saxigp1_awlock, 
saxigp1_awcache, 
saxigp1_awprot, 
saxigp1_awvalid, 
saxigp1_awready, 
saxigp1_wdata, 
saxigp1_wstrb, 
saxigp1_wlast, 
saxigp1_wvalid, 
saxigp1_wready, 
saxigp1_bid, 
saxigp1_bresp, 
saxigp1_bvalid, 
saxigp1_bready, 
saxigp1_arid, 
saxigp1_araddr, 
saxigp1_arlen, 
saxigp1_arsize, 
saxigp1_arburst, 
saxigp1_arlock, 
saxigp1_arcache, 
saxigp1_arprot, 
saxigp1_arvalid, 
saxigp1_arready, 
saxigp1_rid, 
saxigp1_rdata, 
saxigp1_rresp, 
saxigp1_rlast, 
saxigp1_rvalid, 
saxigp1_rready, 
saxigp1_awqos, 
saxigp1_arqos, 
saxihp0_fpd_aclk, 
saxigp2_aruser, 
saxigp2_awuser, 
saxigp2_awid, 
saxigp2_awaddr, 
saxigp2_awlen, 
saxigp2_awsize, 
saxigp2_awburst, 
saxigp2_awlock, 
saxigp2_awcache, 
saxigp2_awprot, 
saxigp2_awvalid, 
saxigp2_awready, 
saxigp2_wdata, 
saxigp2_wstrb, 
saxigp2_wlast, 
saxigp2_wvalid, 
saxigp2_wready, 
saxigp2_bid, 
saxigp2_bresp, 
saxigp2_bvalid, 
saxigp2_bready, 
saxigp2_arid, 
saxigp2_araddr, 
saxigp2_arlen, 
saxigp2_arsize, 
saxigp2_arburst, 
saxigp2_arlock, 
saxigp2_arcache, 
saxigp2_arprot, 
saxigp2_arvalid, 
saxigp2_arready, 
saxigp2_rid, 
saxigp2_rdata, 
saxigp2_rresp, 
saxigp2_rlast, 
saxigp2_rvalid, 
saxigp2_rready, 
saxigp2_awqos, 
saxigp2_arqos, 
emio_enet0_enet_tsu_timer_cnt, 
emio_gpio_i, 
emio_gpio_o, 
emio_gpio_t, 
emio_uart1_txd, 
emio_uart1_rxd, 
dp_video_ref_clk, 
dp_live_video_in_vsync, 
dp_live_video_in_hsync, 
dp_live_video_in_de, 
dp_live_video_in_pixel1, 
dp_video_in_clk, 
dp_video_out_hsync, 
dp_video_out_vsync, 
dp_video_out_pixel1, 
dp_aux_data_in, 
dp_aux_data_out, 
dp_aux_data_oe_n, 
dp_live_gfx_alpha_in, 
dp_live_gfx_pixel1_in, 
dp_hot_plug_detect, 
dp_external_custom_event1, 
dp_external_custom_event2, 
dp_external_vsync_event, 
dp_live_video_de_out, 
pl_ps_irq0, 
pl_resetn0, 
pl_clk0 
);
input maxihpm0_lpd_aclk;
output [15 : 0] maxigp2_awid;
output [39 : 0] maxigp2_awaddr;
output [7 : 0] maxigp2_awlen;
output [2 : 0] maxigp2_awsize;
output [1 : 0] maxigp2_awburst;
output maxigp2_awlock;
output [3 : 0] maxigp2_awcache;
output [2 : 0] maxigp2_awprot;
output maxigp2_awvalid;
output [15 : 0] maxigp2_awuser;
input maxigp2_awready;
output [31 : 0] maxigp2_wdata;
output [3 : 0] maxigp2_wstrb;
output maxigp2_wlast;
output maxigp2_wvalid;
input maxigp2_wready;
input [15 : 0] maxigp2_bid;
input [1 : 0] maxigp2_bresp;
input maxigp2_bvalid;
output maxigp2_bready;
output [15 : 0] maxigp2_arid;
output [39 : 0] maxigp2_araddr;
output [7 : 0] maxigp2_arlen;
output [2 : 0] maxigp2_arsize;
output [1 : 0] maxigp2_arburst;
output maxigp2_arlock;
output [3 : 0] maxigp2_arcache;
output [2 : 0] maxigp2_arprot;
output maxigp2_arvalid;
output [15 : 0] maxigp2_aruser;
input maxigp2_arready;
input [15 : 0] maxigp2_rid;
input [31 : 0] maxigp2_rdata;
input [1 : 0] maxigp2_rresp;
input maxigp2_rlast;
input maxigp2_rvalid;
output maxigp2_rready;
output [3 : 0] maxigp2_awqos;
output [3 : 0] maxigp2_arqos;
input saxihpc0_fpd_aclk;
input saxigp0_aruser;
input saxigp0_awuser;
input [5 : 0] saxigp0_awid;
input [48 : 0] saxigp0_awaddr;
input [7 : 0] saxigp0_awlen;
input [2 : 0] saxigp0_awsize;
input [1 : 0] saxigp0_awburst;
input saxigp0_awlock;
input [3 : 0] saxigp0_awcache;
input [2 : 0] saxigp0_awprot;
input saxigp0_awvalid;
output saxigp0_awready;
input [31 : 0] saxigp0_wdata;
input [3 : 0] saxigp0_wstrb;
input saxigp0_wlast;
input saxigp0_wvalid;
output saxigp0_wready;
output [5 : 0] saxigp0_bid;
output [1 : 0] saxigp0_bresp;
output saxigp0_bvalid;
input saxigp0_bready;
input [5 : 0] saxigp0_arid;
input [48 : 0] saxigp0_araddr;
input [7 : 0] saxigp0_arlen;
input [2 : 0] saxigp0_arsize;
input [1 : 0] saxigp0_arburst;
input saxigp0_arlock;
input [3 : 0] saxigp0_arcache;
input [2 : 0] saxigp0_arprot;
input saxigp0_arvalid;
output saxigp0_arready;
output [5 : 0] saxigp0_rid;
output [31 : 0] saxigp0_rdata;
output [1 : 0] saxigp0_rresp;
output saxigp0_rlast;
output saxigp0_rvalid;
input saxigp0_rready;
input [3 : 0] saxigp0_awqos;
input [3 : 0] saxigp0_arqos;
input saxihpc1_fpd_aclk;
input saxigp1_aruser;
input saxigp1_awuser;
input [5 : 0] saxigp1_awid;
input [48 : 0] saxigp1_awaddr;
input [7 : 0] saxigp1_awlen;
input [2 : 0] saxigp1_awsize;
input [1 : 0] saxigp1_awburst;
input saxigp1_awlock;
input [3 : 0] saxigp1_awcache;
input [2 : 0] saxigp1_awprot;
input saxigp1_awvalid;
output saxigp1_awready;
input [63 : 0] saxigp1_wdata;
input [7 : 0] saxigp1_wstrb;
input saxigp1_wlast;
input saxigp1_wvalid;
output saxigp1_wready;
output [5 : 0] saxigp1_bid;
output [1 : 0] saxigp1_bresp;
output saxigp1_bvalid;
input saxigp1_bready;
input [5 : 0] saxigp1_arid;
input [48 : 0] saxigp1_araddr;
input [7 : 0] saxigp1_arlen;
input [2 : 0] saxigp1_arsize;
input [1 : 0] saxigp1_arburst;
input saxigp1_arlock;
input [3 : 0] saxigp1_arcache;
input [2 : 0] saxigp1_arprot;
input saxigp1_arvalid;
output saxigp1_arready;
output [5 : 0] saxigp1_rid;
output [63 : 0] saxigp1_rdata;
output [1 : 0] saxigp1_rresp;
output saxigp1_rlast;
output saxigp1_rvalid;
input saxigp1_rready;
input [3 : 0] saxigp1_awqos;
input [3 : 0] saxigp1_arqos;
input saxihp0_fpd_aclk;
input saxigp2_aruser;
input saxigp2_awuser;
input [5 : 0] saxigp2_awid;
input [48 : 0] saxigp2_awaddr;
input [7 : 0] saxigp2_awlen;
input [2 : 0] saxigp2_awsize;
input [1 : 0] saxigp2_awburst;
input saxigp2_awlock;
input [3 : 0] saxigp2_awcache;
input [2 : 0] saxigp2_awprot;
input saxigp2_awvalid;
output saxigp2_awready;
input [63 : 0] saxigp2_wdata;
input [7 : 0] saxigp2_wstrb;
input saxigp2_wlast;
input saxigp2_wvalid;
output saxigp2_wready;
output [5 : 0] saxigp2_bid;
output [1 : 0] saxigp2_bresp;
output saxigp2_bvalid;
input saxigp2_bready;
input [5 : 0] saxigp2_arid;
input [48 : 0] saxigp2_araddr;
input [7 : 0] saxigp2_arlen;
input [2 : 0] saxigp2_arsize;
input [1 : 0] saxigp2_arburst;
input saxigp2_arlock;
input [3 : 0] saxigp2_arcache;
input [2 : 0] saxigp2_arprot;
input saxigp2_arvalid;
output saxigp2_arready;
output [5 : 0] saxigp2_rid;
output [63 : 0] saxigp2_rdata;
output [1 : 0] saxigp2_rresp;
output saxigp2_rlast;
output saxigp2_rvalid;
input saxigp2_rready;
input [3 : 0] saxigp2_awqos;
input [3 : 0] saxigp2_arqos;
output [93 : 0] emio_enet0_enet_tsu_timer_cnt;
input [0 : 0] emio_gpio_i;
output [0 : 0] emio_gpio_o;
output [0 : 0] emio_gpio_t;
output emio_uart1_txd;
input emio_uart1_rxd;
output dp_video_ref_clk;
input dp_live_video_in_vsync;
input dp_live_video_in_hsync;
input dp_live_video_in_de;
input [35 : 0] dp_live_video_in_pixel1;
input dp_video_in_clk;
output dp_video_out_hsync;
output dp_video_out_vsync;
output [35 : 0] dp_video_out_pixel1;
input dp_aux_data_in;
output dp_aux_data_out;
output dp_aux_data_oe_n;
input [7 : 0] dp_live_gfx_alpha_in;
input [35 : 0] dp_live_gfx_pixel1_in;
input dp_hot_plug_detect;
input dp_external_custom_event1;
input dp_external_custom_event2;
input dp_external_vsync_event;
output dp_live_video_de_out;
input [0 : 0] pl_ps_irq0;
output pl_resetn0;
output pl_clk0;
wire pl_clk_t[3:0] ;

wire saxihpc0_fpd_rclk_temp;
wire saxihpc0_fpd_wclk_temp;
wire saxihpc1_fpd_rclk_temp;
wire saxihpc1_fpd_wclk_temp;
wire saxihp0_fpd_rclk_temp;
wire saxihp0_fpd_wclk_temp;
wire saxihp1_fpd_rclk_temp;
wire saxihp1_fpd_wclk_temp;
wire saxihp2_fpd_rclk_temp;
wire saxihp2_fpd_wclk_temp;
wire saxihp3_fpd_rclk_temp;
wire saxihp3_fpd_wclk_temp;
wire saxi_lpd_rclk_temp;
wire saxi_lpd_wclk_temp;


assign pl_clk0 = pl_clk_t[0] ;

 assign  pl_clk1 = 1'b0 ;

 assign  pl_clk2 = 1'b0 ;

 assign  pl_clk3 = 1'b0 ;

     assign saxihpc0_fpd_rclk_temp  =  saxihpc0_fpd_aclk ;
	assign saxihpc0_fpd_wclk_temp  =  saxihpc0_fpd_aclk ;
  
    assign saxihpc1_fpd_rclk_temp  =  saxihpc1_fpd_aclk ;
	assign saxihpc1_fpd_wclk_temp  =  saxihpc1_fpd_aclk ;
   
    assign saxihp0_fpd_rclk_temp  =  saxihp0_fpd_aclk ;
	assign saxihp0_fpd_wclk_temp  =  saxihp0_fpd_aclk ;
   
   
   
   


  


  zynq_ultra_ps_e_vip_v1_0_7 #(
    .C_USE_M_AXI_GP0(0),
    .C_USE_M_AXI_GP1(0),
    .C_USE_M_AXI_GP2(1),
    .C_USE_S_AXI_GP0(1),
    .C_USE_S_AXI_GP1(1),
    .C_USE_S_AXI_GP2(1),
    .C_USE_S_AXI_GP3(0),
    .C_USE_S_AXI_GP4(0),
    .C_USE_S_AXI_GP5(0),
    .C_USE_S_AXI_GP6(0),
    .C_USE_S_AXI_ACP(0),
    .C_USE_S_AXI_ACE(0),
    .C_M_AXI_GP0_DATA_WIDTH(128),
    .C_M_AXI_GP1_DATA_WIDTH(128),
    .C_M_AXI_GP2_DATA_WIDTH(32),
    .C_S_AXI_GP0_DATA_WIDTH(32),
    .C_S_AXI_GP1_DATA_WIDTH(64),
    .C_S_AXI_GP2_DATA_WIDTH(64),
    .C_S_AXI_GP3_DATA_WIDTH(128),
    .C_S_AXI_GP4_DATA_WIDTH(128),
    .C_S_AXI_GP5_DATA_WIDTH(128),
    .C_S_AXI_GP6_DATA_WIDTH(128),
    .C_FCLK_CLK0_FREQ(250.000000),
    .C_FCLK_CLK1_FREQ(250),
    .C_FCLK_CLK2_FREQ(100),
    .C_FCLK_CLK3_FREQ(100)
  ) inst (
    .MAXIGP0ARVALID(),
    .MAXIGP0AWVALID(),
    .MAXIGP0BREADY(),
    .MAXIGP0RREADY(),
    .MAXIGP0WLAST(),
    .MAXIGP0WVALID(),
    .MAXIGP0ARID(),
    .MAXIGP0ARUSER(),
    .MAXIGP0AWID(),
    .MAXIGP0ARBURST(),
    .MAXIGP0ARLOCK(),
    .MAXIGP0ARSIZE(),
    .MAXIGP0AWBURST(),
    .MAXIGP0AWLOCK(),
    .MAXIGP0AWSIZE(),
    .MAXIGP0ARPROT(),
    .MAXIGP0AWPROT(),
    .MAXIGP0ARADDR(),
    .MAXIGP0AWADDR(),
    .MAXIGP0WDATA(),
    .MAXIGP0AWUSER(),
    .MAXIGP0ARCACHE(),
    .MAXIGP0ARLEN(),
    .MAXIGP0ARQOS(),
    .MAXIGP0AWCACHE(),
    .MAXIGP0AWLEN(),
    .MAXIGP0AWQOS(),
    .MAXIGP0WSTRB(),
    .MAXIGP0ACLK(),
    .MAXIGP0ARREADY(1'B0),
    .MAXIGP0AWREADY(1'B0),
    .MAXIGP0BVALID(1'B0),
    .MAXIGP0RLAST(1'B0),
    .MAXIGP0RVALID(1'B0),
    .MAXIGP0WREADY(1'B0),
    .MAXIGP0BID(12'B0),
    .MAXIGP0RID(12'B0),
    .MAXIGP0BRESP(2'B0),
    .MAXIGP0RRESP(2'B0),
    .MAXIGP0RDATA(32'B0),
    .MAXIGP1ARVALID(),
    .MAXIGP1AWVALID(),
    .MAXIGP1BREADY(),
    .MAXIGP1RREADY(),
    .MAXIGP1WLAST(),
    .MAXIGP1WVALID(),
    .MAXIGP1ARID(),
    .MAXIGP1ARUSER(),
    .MAXIGP1AWID(),
    .MAXIGP1ARBURST(),
    .MAXIGP1ARLOCK(),
    .MAXIGP1ARSIZE(),
    .MAXIGP1AWBURST(),
    .MAXIGP1AWLOCK(),
    .MAXIGP1AWSIZE(),
    .MAXIGP1ARPROT(),
    .MAXIGP1AWPROT(),
    .MAXIGP1ARADDR(),
    .MAXIGP1AWADDR(),
    .MAXIGP1WDATA(),
    .MAXIGP1AWUSER(),
    .MAXIGP1ARCACHE(),
    .MAXIGP1ARLEN(),
    .MAXIGP1ARQOS(),
    .MAXIGP1AWCACHE(),
    .MAXIGP1AWLEN(),
    .MAXIGP1AWQOS(),
    .MAXIGP1WSTRB(),
    .MAXIGP1ACLK(1'B0),
    .MAXIGP1ARREADY(1'B0),
    .MAXIGP1AWREADY(1'B0),
    .MAXIGP1BVALID(1'B0),
    .MAXIGP1RLAST(1'B0),
    .MAXIGP1RVALID(1'B0),
    .MAXIGP1WREADY(1'B0),
    .MAXIGP1BID(12'B0),
    .MAXIGP1RID(12'B0),
    .MAXIGP1BRESP(2'B0),
    .MAXIGP1RRESP(2'B0),
    .MAXIGP1RDATA(32'B0),

    .MAXIGP2ARVALID(maxigp2_arvalid),
    .MAXIGP2AWVALID(maxigp2_awvalid),
    .MAXIGP2BREADY(maxigp2_bready),
    .MAXIGP2RREADY(maxigp2_rready),
    .MAXIGP2WLAST(maxigp2_wlast),
    .MAXIGP2WVALID(maxigp2_wvalid),
    .MAXIGP2ARID(maxigp2_arid),
    .MAXIGP2ARUSER(maxigp2_aruser),
    .MAXIGP2AWID(maxigp2_awid),
    .MAXIGP2ARBURST(maxigp2_arburst),
    .MAXIGP2ARLOCK(maxigp2_arlock),
    .MAXIGP2ARSIZE(maxigp2_arsize),
    .MAXIGP2AWBURST(maxigp2_awburst),
    .MAXIGP2AWLOCK(maxigp2_awlock),
    .MAXIGP2AWSIZE(maxigp2_awsize),
    .MAXIGP2ARPROT(maxigp2_arprot),
    .MAXIGP2AWPROT(maxigp2_awprot),
    .MAXIGP2ARADDR(maxigp2_araddr),
    .MAXIGP2AWADDR(maxigp2_awaddr),
    .MAXIGP2WDATA(maxigp2_wdata),
    .MAXIGP2AWUSER(maxigp2_awuser),
    .MAXIGP2ARCACHE(maxigp2_arcache),
    .MAXIGP2ARLEN(maxigp2_arlen),
    .MAXIGP2ARQOS(maxigp2_arqos),
    .MAXIGP2AWCACHE(maxigp2_awcache),
    .MAXIGP2AWLEN(maxigp2_awlen),
    .MAXIGP2AWQOS(maxigp2_awqos),
    .MAXIGP2WSTRB(maxigp2_wstrb),
    .MAXIGP2ACLK(maxihpm0_lpd_aclk),
    .MAXIGP2ARREADY(maxigp2_arready),
    .MAXIGP2AWREADY(maxigp2_awready),
    .MAXIGP2BVALID(maxigp2_bvalid),
    .MAXIGP2RLAST(maxigp2_rlast),
    .MAXIGP2RVALID(maxigp2_rvalid),
    .MAXIGP2WREADY(maxigp2_wready),
    .MAXIGP2BID(maxigp2_bid),
    .MAXIGP2RID(maxigp2_rid),
    .MAXIGP2BRESP(maxigp2_bresp),
    .MAXIGP2RRESP(maxigp2_rresp),
    .MAXIGP2RDATA(maxigp2_rdata),

    .SAXIGP0RCLK(saxihpc0_fpd_rclk_temp),
    .SAXIGP0WCLK(saxihpc0_fpd_wclk_temp),
    .SAXIGP0ARUSER(saxigp0_aruser),
    .SAXIGP0AWUSER(saxigp0_awuser),
    .SAXIGP0RACOUNT(saxigp0_racount),
    .SAXIGP0WACOUNT(saxigp0_wacount),
    .SAXIGP0RCOUNT(saxigp0_rcount),
    .SAXIGP0WCOUNT(saxigp0_wcount),
    .SAXIGP0ARREADY(saxigp0_arready),
    .SAXIGP0AWREADY(saxigp0_awready),
    .SAXIGP0BVALID(saxigp0_bvalid),
    .SAXIGP0RLAST(saxigp0_rlast),
    .SAXIGP0RVALID(saxigp0_rvalid),
    .SAXIGP0WREADY(saxigp0_wready),
    .SAXIGP0BRESP(saxigp0_bresp),
    .SAXIGP0RRESP(saxigp0_rresp),
    .SAXIGP0RDATA(saxigp0_rdata),
    .SAXIGP0BID(saxigp0_bid),
    .SAXIGP0RID(saxigp0_rid),
    .SAXIGP0ARVALID(saxigp0_arvalid),
    .SAXIGP0AWVALID(saxigp0_awvalid),
    .SAXIGP0BREADY(saxigp0_bready),
    .SAXIGP0RREADY(saxigp0_rready),
    .SAXIGP0WLAST(saxigp0_wlast),
    .SAXIGP0WVALID(saxigp0_wvalid),
    .SAXIGP0ARBURST(saxigp0_arburst),
    .SAXIGP0ARLOCK(saxigp0_arlock),
    .SAXIGP0ARSIZE(saxigp0_arsize),
    .SAXIGP0AWBURST(saxigp0_awburst),
    .SAXIGP0AWLOCK(saxigp0_awlock),
    .SAXIGP0AWSIZE(saxigp0_awsize),
    .SAXIGP0ARPROT(saxigp0_arprot),
    .SAXIGP0AWPROT(saxigp0_awprot),
    .SAXIGP0ARADDR(saxigp0_araddr),
    .SAXIGP0AWADDR(saxigp0_awaddr),
    .SAXIGP0WDATA(saxigp0_wdata),
    .SAXIGP0ARCACHE(saxigp0_arcache),
    .SAXIGP0ARLEN(saxigp0_arlen),
    .SAXIGP0ARQOS(saxigp0_arqos),
    .SAXIGP0AWCACHE(saxigp0_awcache),
    .SAXIGP0AWLEN(saxigp0_awlen),
    .SAXIGP0AWQOS(saxigp0_awqos),
    .SAXIGP0WSTRB(saxigp0_wstrb),
    .SAXIGP0ARID(saxigp0_arid),
    .SAXIGP0AWID(saxigp0_awid),
    .SAXIGP1RCLK(saxihpc1_fpd_rclk_temp),
    .SAXIGP1WCLK(saxihpc1_fpd_wclk_temp),
    .SAXIGP1ARUSER(saxigp1_aruser),
    .SAXIGP1AWUSER(saxigp1_awuser),
    .SAXIGP1RACOUNT(saxigp1_racount),
    .SAXIGP1WACOUNT(saxigp1_wacount),
    .SAXIGP1RCOUNT(saxigp1_rcount),
    .SAXIGP1WCOUNT(saxigp1_wcount),
    .SAXIGP1ARREADY(saxigp1_arready),
    .SAXIGP1AWREADY(saxigp1_awready),
    .SAXIGP1BVALID(saxigp1_bvalid),
    .SAXIGP1RLAST(saxigp1_rlast),
    .SAXIGP1RVALID(saxigp1_rvalid),
    .SAXIGP1WREADY(saxigp1_wready),
    .SAXIGP1BRESP(saxigp1_bresp),
    .SAXIGP1RRESP(saxigp1_rresp),
    .SAXIGP1RDATA(saxigp1_rdata),
    .SAXIGP1BID(saxigp1_bid),
    .SAXIGP1RID(saxigp1_rid),
    .SAXIGP1ARVALID(saxigp1_arvalid),
    .SAXIGP1AWVALID(saxigp1_awvalid),
    .SAXIGP1BREADY(saxigp1_bready),
    .SAXIGP1RREADY(saxigp1_rready),
    .SAXIGP1WLAST(saxigp1_wlast),
    .SAXIGP1WVALID(saxigp1_wvalid),
    .SAXIGP1ARBURST(saxigp1_arburst),
    .SAXIGP1ARLOCK(saxigp1_arlock),
    .SAXIGP1ARSIZE(saxigp1_arsize),
    .SAXIGP1AWBURST(saxigp1_awburst),
    .SAXIGP1AWLOCK(saxigp1_awlock),
    .SAXIGP1AWSIZE(saxigp1_awsize),
    .SAXIGP1ARPROT(saxigp1_arprot),
    .SAXIGP1AWPROT(saxigp1_awprot),
    .SAXIGP1ARADDR(saxigp1_araddr),
    .SAXIGP1AWADDR(saxigp1_awaddr),
    .SAXIGP1WDATA(saxigp1_wdata),
    .SAXIGP1ARCACHE(saxigp1_arcache),
    .SAXIGP1ARLEN(saxigp1_arlen),
    .SAXIGP1ARQOS(saxigp1_arqos),
    .SAXIGP1AWCACHE(saxigp1_awcache),
    .SAXIGP1AWLEN(saxigp1_awlen),
    .SAXIGP1AWQOS(saxigp1_awqos),
    .SAXIGP1WSTRB(saxigp1_wstrb),
    .SAXIGP1ARID(saxigp1_arid),
    .SAXIGP1AWID(saxigp1_awid),
    .SAXIGP2RCLK(saxihp0_fpd_rclk_temp),
    .SAXIGP2WCLK(saxihp0_fpd_wclk_temp),
    .SAXIGP2ARUSER(saxigp2_aruser),
    .SAXIGP2AWUSER(saxigp2_awuser),
    .SAXIGP2RACOUNT(saxigp2_racount),
    .SAXIGP2WACOUNT(saxigp2_wacount),
    .SAXIGP2RCOUNT(saxigp2_rcount),
    .SAXIGP2WCOUNT(saxigp2_wcount),
    .SAXIGP2ARREADY(saxigp2_arready),
    .SAXIGP2AWREADY(saxigp2_awready),
    .SAXIGP2BVALID(saxigp2_bvalid),
    .SAXIGP2RLAST(saxigp2_rlast),
    .SAXIGP2RVALID(saxigp2_rvalid),
    .SAXIGP2WREADY(saxigp2_wready),
    .SAXIGP2BRESP(saxigp2_bresp),
    .SAXIGP2RRESP(saxigp2_rresp),
    .SAXIGP2RDATA(saxigp2_rdata),
    .SAXIGP2BID(saxigp2_bid),
    .SAXIGP2RID(saxigp2_rid),
    .SAXIGP2ARVALID(saxigp2_arvalid),
    .SAXIGP2AWVALID(saxigp2_awvalid),
    .SAXIGP2BREADY(saxigp2_bready),
    .SAXIGP2RREADY(saxigp2_rready),
    .SAXIGP2WLAST(saxigp2_wlast),
    .SAXIGP2WVALID(saxigp2_wvalid),
    .SAXIGP2ARBURST(saxigp2_arburst),
    .SAXIGP2ARLOCK(saxigp2_arlock),
    .SAXIGP2ARSIZE(saxigp2_arsize),
    .SAXIGP2AWBURST(saxigp2_awburst),
    .SAXIGP2AWLOCK(saxigp2_awlock),
    .SAXIGP2AWSIZE(saxigp2_awsize),
    .SAXIGP2ARPROT(saxigp2_arprot),
    .SAXIGP2AWPROT(saxigp2_awprot),
    .SAXIGP2ARADDR(saxigp2_araddr),
    .SAXIGP2AWADDR(saxigp2_awaddr),
    .SAXIGP2WDATA(saxigp2_wdata),
    .SAXIGP2ARCACHE(saxigp2_arcache),
    .SAXIGP2ARLEN(saxigp2_arlen),
    .SAXIGP2ARQOS(saxigp2_arqos),
    .SAXIGP2AWCACHE(saxigp2_awcache),
    .SAXIGP2AWLEN(saxigp2_awlen),
    .SAXIGP2AWQOS(saxigp2_awqos),
    .SAXIGP2WSTRB(saxigp2_wstrb),
    .SAXIGP2ARID(saxigp2_arid),
    .SAXIGP2AWID(saxigp2_awid),
    .SAXIGP3RCLK(),
    .SAXIGP3WCLK(),
    .SAXIGP3ARUSER(),
    .SAXIGP3AWUSER(),
    .SAXIGP3RACOUNT(),
    .SAXIGP3WACOUNT(),
    .SAXIGP3RCOUNT(),
    .SAXIGP3WCOUNT(),
    .SAXIGP3ARREADY(),
    .SAXIGP3AWREADY(),
    .SAXIGP3BVALID(),
    .SAXIGP3RLAST(),
    .SAXIGP3RVALID(),
    .SAXIGP3WREADY(),
    .SAXIGP3BRESP(),
    .SAXIGP3RRESP(),
    .SAXIGP3RDATA(),
    .SAXIGP3BID(),
    .SAXIGP3RID(),
    .SAXIGP3ARVALID(1'B0),
    .SAXIGP3AWVALID(1'B0),
    .SAXIGP3BREADY(1'B0),
    .SAXIGP3RREADY(1'B0),
    .SAXIGP3WLAST(1'B0),
    .SAXIGP3WVALID(1'B0),
    .SAXIGP3ARBURST(2'B0),
    .SAXIGP3ARLOCK(2'B0),
    .SAXIGP3ARSIZE(3'B0),
    .SAXIGP3AWBURST(2'B0),
    .SAXIGP3AWLOCK(2'B0),
    .SAXIGP3AWSIZE(3'B0),
    .SAXIGP3ARPROT(3'B0),
    .SAXIGP3AWPROT(3'B0),
    .SAXIGP3ARADDR(32'B0),
    .SAXIGP3AWADDR(32'B0),
    .SAXIGP3WDATA(32'B0),
    .SAXIGP3ARCACHE(4'B0),
    .SAXIGP3ARLEN(4'B0),
    .SAXIGP3ARQOS(4'B0),
    .SAXIGP3AWCACHE(4'B0),
    .SAXIGP3AWLEN(4'B0),
    .SAXIGP3AWQOS(4'B0),
    .SAXIGP3WSTRB(4'B0),
    .SAXIGP3ARID(6'B0),
    .SAXIGP3AWID(6'B0),
    .SAXIGP4RCLK(),
    .SAXIGP4WCLK(),
    .SAXIGP4ARUSER(),
    .SAXIGP4AWUSER(),
    .SAXIGP4RACOUNT(),
    .SAXIGP4WACOUNT(),
    .SAXIGP4RCOUNT(),
    .SAXIGP4WCOUNT(),
    .SAXIGP4ARREADY(),
    .SAXIGP4AWREADY(),
    .SAXIGP4BVALID(),
    .SAXIGP4RLAST(),
    .SAXIGP4RVALID(),
    .SAXIGP4WREADY(),
    .SAXIGP4BRESP(),
    .SAXIGP4RRESP(),
    .SAXIGP4RDATA(),
    .SAXIGP4BID(),
    .SAXIGP4RID(),
    .SAXIGP4ARVALID(1'B0),
    .SAXIGP4AWVALID(1'B0),
    .SAXIGP4BREADY(1'B0),
    .SAXIGP4RREADY(1'B0),
    .SAXIGP4WLAST(1'B0),
    .SAXIGP4WVALID(1'B0),
    .SAXIGP4ARBURST(2'B0),
    .SAXIGP4ARLOCK(2'B0),
    .SAXIGP4ARSIZE(3'B0),
    .SAXIGP4AWBURST(2'B0),
    .SAXIGP4AWLOCK(2'B0),
    .SAXIGP4AWSIZE(3'B0),
    .SAXIGP4ARPROT(3'B0),
    .SAXIGP4AWPROT(3'B0),
    .SAXIGP4ARADDR(32'B0),
    .SAXIGP4AWADDR(32'B0),
    .SAXIGP4WDATA(32'B0),
    .SAXIGP4ARCACHE(4'B0),
    .SAXIGP4ARLEN(4'B0),
    .SAXIGP4ARQOS(4'B0),
    .SAXIGP4AWCACHE(4'B0),
    .SAXIGP4AWLEN(4'B0),
    .SAXIGP4AWQOS(4'B0),
    .SAXIGP4WSTRB(4'B0),
    .SAXIGP4ARID(6'B0),
    .SAXIGP4AWID(6'B0),
    .SAXIGP5RCLK(),
    .SAXIGP5WCLK(),
    .SAXIGP5ARUSER(),
    .SAXIGP5AWUSER(),
    .SAXIGP5RACOUNT(),
    .SAXIGP5WACOUNT(),
    .SAXIGP5RCOUNT(),
    .SAXIGP5WCOUNT(),
    .SAXIGP5ARREADY(),
    .SAXIGP5AWREADY(),
    .SAXIGP5BVALID(),
    .SAXIGP5RLAST(),
    .SAXIGP5RVALID(),
    .SAXIGP5WREADY(),
    .SAXIGP5BRESP(),
    .SAXIGP5RRESP(),
    .SAXIGP5RDATA(),
    .SAXIGP5BID(),
    .SAXIGP5RID(),
    .SAXIGP5ARVALID(1'B0),
    .SAXIGP5AWVALID(1'B0),
    .SAXIGP5BREADY(1'B0),
    .SAXIGP5RREADY(1'B0),
    .SAXIGP5WLAST(1'B0),
    .SAXIGP5WVALID(1'B0),
    .SAXIGP5ARBURST(2'B0),
    .SAXIGP5ARLOCK(2'B0),
    .SAXIGP5ARSIZE(3'B0),
    .SAXIGP5AWBURST(2'B0),
    .SAXIGP5AWLOCK(2'B0),
    .SAXIGP5AWSIZE(3'B0),
    .SAXIGP5ARPROT(3'B0),
    .SAXIGP5AWPROT(3'B0),
    .SAXIGP5ARADDR(32'B0),
    .SAXIGP5AWADDR(32'B0),
    .SAXIGP5WDATA(32'B0),
    .SAXIGP5ARCACHE(4'B0),
    .SAXIGP5ARLEN(4'B0),
    .SAXIGP5ARQOS(4'B0),
    .SAXIGP5AWCACHE(4'B0),
    .SAXIGP5AWLEN(4'B0),
    .SAXIGP5AWQOS(4'B0),
    .SAXIGP5WSTRB(4'B0),
    .SAXIGP5ARID(6'B0),
    .SAXIGP5AWID(6'B0),
    .SAXIGP6RCLK(),
    .SAXIGP6WCLK(),
    .SAXIGP6ARUSER(),
    .SAXIGP6AWUSER(),
    .SAXIGP6RACOUNT(),
    .SAXIGP6WACOUNT(),
    .SAXIGP6RCOUNT(),
    .SAXIGP6WCOUNT(),
    .SAXIGP6ARREADY(),
    .SAXIGP6AWREADY(),
    .SAXIGP6BVALID(),
    .SAXIGP6RLAST(),
    .SAXIGP6RVALID(),
    .SAXIGP6WREADY(),
    .SAXIGP6BRESP(),
    .SAXIGP6RRESP(),
    .SAXIGP6RDATA(),
    .SAXIGP6BID(),
    .SAXIGP6RID(),
    .SAXIGP6ARVALID(1'B0),
    .SAXIGP6AWVALID(1'B0),
    .SAXIGP6BREADY(1'B0),
    .SAXIGP6RREADY(1'B0),
    .SAXIGP6WLAST(1'B0),
    .SAXIGP6WVALID(1'B0),
    .SAXIGP6ARBURST(2'B0),
    .SAXIGP6ARLOCK(2'B0),
    .SAXIGP6ARSIZE(3'B0),
    .SAXIGP6AWBURST(2'B0),
    .SAXIGP6AWLOCK(2'B0),
    .SAXIGP6AWSIZE(3'B0),
    .SAXIGP6ARPROT(3'B0),
    .SAXIGP6AWPROT(3'B0),
    .SAXIGP6ARADDR(32'B0),
    .SAXIGP6AWADDR(32'B0),
    .SAXIGP6WDATA(32'B0),
    .SAXIGP6ARCACHE(4'B0),
    .SAXIGP6ARLEN(4'B0),
    .SAXIGP6ARQOS(4'B0),
    .SAXIGP6AWCACHE(4'B0),
    .SAXIGP6AWLEN(4'B0),
    .SAXIGP6AWQOS(4'B0),
    .SAXIGP6WSTRB(4'B0),
    .SAXIGP6ARID(6'B0),
    .SAXIGP6AWID(6'B0),
    .SAXIACPARREADY(),
    .SAXIACPAWREADY(),
    .SAXIACPBVALID(),
    .SAXIACPRLAST(),
    .SAXIACPRVALID(),
    .SAXIACPWREADY(),
    .SAXIACPBRESP(),
    .SAXIACPRRESP(),
    .SAXIACPBID(),
    .SAXIACPRID(),
    .SAXIACPRDATA(),
    .SAXIACPACLK(1'B0),
    .SAXIACPARVALID(1'B0),
    .SAXIACPAWVALID(1'B0),
    .SAXIACPBREADY(1'B0),
    .SAXIACPRREADY(1'B0),
    .SAXIACPWLAST(1'B0),
    .SAXIACPWVALID(1'B0),
    .SAXIACPARID(3'B0),
    .SAXIACPARPROT(3'B0),
    .SAXIACPAWID(3'B0),
    .SAXIACPAWPROT(3'B0),
    .SAXIACPARADDR(32'B0),
    .SAXIACPAWADDR(32'B0),
    .SAXIACPARCACHE(4'B0),
    .SAXIACPARLEN(4'B0),
    .SAXIACPARQOS(4'B0),
    .SAXIACPAWCACHE(4'B0),
    .SAXIACPAWLEN(4'B0),
    .SAXIACPAWQOS(4'B0),
    .SAXIACPARBURST(2'B0),
    .SAXIACPARLOCK(2'B0),
    .SAXIACPARSIZE(3'B0),
    .SAXIACPAWBURST(2'B0),
    .SAXIACPAWLOCK(2'B0),
    .SAXIACPAWSIZE(3'B0),
    .SAXIACPARUSER(5'B0),
    .SAXIACPAWUSER(5'B0),
    .SAXIACPWDATA(64'B0),
    .SAXIACPWSTRB(8'B0),
.SACEFPDACREADY(),       
.SACEFPDARLOCK(),
.SACEFPDARVALID(),
.SACEFPDAWLOCK(),
.SACEFPDAWVALID(),
.SACEFPDBREADY(),
.SACEFPDCDLAST(),
.SACEFPDCDVALID(),
.SACEFPDCRVALID(),
.SACEFPDRACK(),
.SACEFPDRREADY(),
.SACEFPDWACK(),
.SACEFPDWLAST(),
.SACEFPDWUSER(),
.SACEFPDWVALID(),
.SACEFPDCDDATA(),
.SACEFPDWDATA(),
.SACEFPDARUSER(),
.SACEFPDAWUSER(),
.SACEFPDWSTRB(),
.SACEFPDARBAR(),
.SACEFPDARBURST(),
.SACEFPDARDOMAIN(),
.SACEFPDAWBAR(),
.SACEFPDAWBURST(),
.SACEFPDAWDOMAIN(),
.SACEFPDARPROT(),
.SACEFPDARSIZE(),
.SACEFPDAWPROT(),
.SACEFPDAWSIZE(),
.SACEFPDAWSNOOP(),
.SACEFPDARCACHE(),
.SACEFPDARQOS(),
.SACEFPDARREGION(),
.SACEFPDARSNOOP(),
.SACEFPDAWCACHE(),
.SACEFPDAWQOS(),
.SACEFPDAWREGION(),
.SACEFPDARADDR(),
.SACEFPDAWADDR(),
.SACEFPDCRRESP(),
.SACEFPDARID(),
.SACEFPDAWID(),
.SACEFPDARLEN(),
.SACEFPDAWLEN(),
.SACEFPDACVALID(),
.SACEFPDARREADY(),
.SACEFPDAWREADY(),
.SACEFPDBUSER(),
.SACEFPDBVALID(),
.SACEFPDCDREADY(),
.SACEFPDCRREADY(),
.SACEFPDRLAST(),
.SACEFPDRUSER(),
.SACEFPDRVALID(),
.SACEFPDWREADY(),
.SACEFPDRDATA(),
.SACEFPDBRESP(),
.SACEFPDACPROT(),
.SACEFPDACSNOOP(),
.SACEFPDRRESP(),
.SACEFPDACADDR(),
.SACEFPDBID(),
.SACEFPDRID(),

.PLPSIRQ0(pl_ps_irq0),

.PL_RESETN0(pl_resetn0),
.PLCLK({pl_clk_t[3],pl_clk_t[2],pl_clk_t[1],pl_clk_t[0]})
  );

endmodule
