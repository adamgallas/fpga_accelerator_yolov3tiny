// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:Accel_Conv:1.0
// IP Revision: 1

(* X_CORE_INFO = "Accel_Conv,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "cam_Accel_Conv_0_0,Accel_Conv,{}" *)
(* CORE_GENERATION_INFO = "cam_Accel_Conv_0_0,Accel_Conv,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Accel_Conv,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,FM_ADDR_BIT=12,WEIGHT_AXI_ADDR_BIT=14,WEIGHTBUF_ADDR_BIT=7,BIASBUF_ADDR_BIT=7,FM_DEPTH=4096,WEIGHTBUF_DEPTH=128,BIASBUF_DEPTH=128,LINEBUFFER_LEN1=15,LINEBUFFER_LEN2=13,LINEBUFFER_LEN3=26,LINEBUFFER_LEN4=52,LINEBUFFER_LEN5=104,LINEBUFFER_LEN6=208,IFM_RAM_STYLE=block,WEIGHT_RAM_STYLE=distributed,BIAS_\
RAM_STYLE=distributed,OFM_RAM_STYLE=block}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cam_Accel_Conv_0_0 (
  clk,
  rst,
  ap_done,
  S_AXI_LITE_CTRL_awaddr,
  S_AXI_LITE_CTRL_awprot,
  S_AXI_LITE_CTRL_awvalid,
  S_AXI_LITE_CTRL_awready,
  S_AXI_LITE_CTRL_wdata,
  S_AXI_LITE_CTRL_wstrb,
  S_AXI_LITE_CTRL_wvalid,
  S_AXI_LITE_CTRL_wready,
  S_AXI_LITE_CTRL_bresp,
  S_AXI_LITE_CTRL_bvalid,
  S_AXI_LITE_CTRL_bready,
  S_AXI_LITE_CTRL_araddr,
  S_AXI_LITE_CTRL_arprot,
  S_AXI_LITE_CTRL_arvalid,
  S_AXI_LITE_CTRL_arready,
  S_AXI_LITE_CTRL_rdata,
  S_AXI_LITE_CTRL_rresp,
  S_AXI_LITE_CTRL_rvalid,
  S_AXI_LITE_CTRL_rready,
  S_AXIS_tready,
  S_AXIS_tdata,
  S_AXIS_tlast,
  S_AXIS_tvalid,
  M_AXIS_tvalid,
  M_AXIS_tdata,
  M_AXIS_tlast,
  M_AXIS_tready
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXIS:S_AXIS:S_AXI_LITE_CTRL, ASSOCIATED_RESET rst, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL AWADDR" *)
input wire [4 : 0] S_AXI_LITE_CTRL_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL AWPROT" *)
input wire [2 : 0] S_AXI_LITE_CTRL_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL AWVALID" *)
input wire S_AXI_LITE_CTRL_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL AWREADY" *)
output wire S_AXI_LITE_CTRL_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL WDATA" *)
input wire [31 : 0] S_AXI_LITE_CTRL_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL WSTRB" *)
input wire [3 : 0] S_AXI_LITE_CTRL_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL WVALID" *)
input wire S_AXI_LITE_CTRL_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL WREADY" *)
output wire S_AXI_LITE_CTRL_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL BRESP" *)
output wire [1 : 0] S_AXI_LITE_CTRL_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL BVALID" *)
output wire S_AXI_LITE_CTRL_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL BREADY" *)
input wire S_AXI_LITE_CTRL_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL ARADDR" *)
input wire [4 : 0] S_AXI_LITE_CTRL_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL ARPROT" *)
input wire [2 : 0] S_AXI_LITE_CTRL_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL ARVALID" *)
input wire S_AXI_LITE_CTRL_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL ARREADY" *)
output wire S_AXI_LITE_CTRL_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL RDATA" *)
output wire [31 : 0] S_AXI_LITE_CTRL_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL RRESP" *)
output wire [1 : 0] S_AXI_LITE_CTRL_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL RVALID" *)
output wire S_AXI_LITE_CTRL_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_LITE_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS\
 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE_CTRL RREADY" *)
input wire S_AXI_LITE_CTRL_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *)
output wire S_AXIS_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *)
input wire [63 : 0] S_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *)
input wire S_AXIS_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *)
input wire S_AXIS_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
output wire M_AXIS_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
output wire [63 : 0] M_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *)
output wire M_AXIS_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
input wire M_AXIS_tready;

  Accel_Conv #(
    .FM_ADDR_BIT(12),
    .WEIGHT_AXI_ADDR_BIT(14),
    .WEIGHTBUF_ADDR_BIT(7),
    .BIASBUF_ADDR_BIT(7),
    .FM_DEPTH(4096),
    .WEIGHTBUF_DEPTH(128),
    .BIASBUF_DEPTH(128),
    .LINEBUFFER_LEN1(15),
    .LINEBUFFER_LEN2(13),
    .LINEBUFFER_LEN3(26),
    .LINEBUFFER_LEN4(52),
    .LINEBUFFER_LEN5(104),
    .LINEBUFFER_LEN6(208),
    .IFM_RAM_STYLE("block"),
    .WEIGHT_RAM_STYLE("distributed"),
    .BIAS_RAM_STYLE("distributed"),
    .OFM_RAM_STYLE("block")
  ) inst (
    .clk(clk),
    .rst(rst),
    .ap_done(ap_done),
    .S_AXI_LITE_CTRL_awaddr(S_AXI_LITE_CTRL_awaddr),
    .S_AXI_LITE_CTRL_awprot(S_AXI_LITE_CTRL_awprot),
    .S_AXI_LITE_CTRL_awvalid(S_AXI_LITE_CTRL_awvalid),
    .S_AXI_LITE_CTRL_awready(S_AXI_LITE_CTRL_awready),
    .S_AXI_LITE_CTRL_wdata(S_AXI_LITE_CTRL_wdata),
    .S_AXI_LITE_CTRL_wstrb(S_AXI_LITE_CTRL_wstrb),
    .S_AXI_LITE_CTRL_wvalid(S_AXI_LITE_CTRL_wvalid),
    .S_AXI_LITE_CTRL_wready(S_AXI_LITE_CTRL_wready),
    .S_AXI_LITE_CTRL_bresp(S_AXI_LITE_CTRL_bresp),
    .S_AXI_LITE_CTRL_bvalid(S_AXI_LITE_CTRL_bvalid),
    .S_AXI_LITE_CTRL_bready(S_AXI_LITE_CTRL_bready),
    .S_AXI_LITE_CTRL_araddr(S_AXI_LITE_CTRL_araddr),
    .S_AXI_LITE_CTRL_arprot(S_AXI_LITE_CTRL_arprot),
    .S_AXI_LITE_CTRL_arvalid(S_AXI_LITE_CTRL_arvalid),
    .S_AXI_LITE_CTRL_arready(S_AXI_LITE_CTRL_arready),
    .S_AXI_LITE_CTRL_rdata(S_AXI_LITE_CTRL_rdata),
    .S_AXI_LITE_CTRL_rresp(S_AXI_LITE_CTRL_rresp),
    .S_AXI_LITE_CTRL_rvalid(S_AXI_LITE_CTRL_rvalid),
    .S_AXI_LITE_CTRL_rready(S_AXI_LITE_CTRL_rready),
    .S_AXIS_tready(S_AXIS_tready),
    .S_AXIS_tdata(S_AXIS_tdata),
    .S_AXIS_tlast(S_AXIS_tlast),
    .S_AXIS_tvalid(S_AXIS_tvalid),
    .M_AXIS_tvalid(M_AXIS_tvalid),
    .M_AXIS_tdata(M_AXIS_tdata),
    .M_AXIS_tlast(M_AXIS_tlast),
    .M_AXIS_tready(M_AXIS_tready)
  );
endmodule
