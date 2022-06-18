// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jul 21 00:07:06 2021
// Host        : ADAM-GALLAS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/base/base.srcs/sources_1/bd/cam/ip/cam_Accel_Conv_0_0/cam_Accel_Conv_0_0_stub.v
// Design      : cam_Accel_Conv_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Accel_Conv,Vivado 2020.1" *)
module cam_Accel_Conv_0_0(clk, rst, ap_done, S_AXI_LITE_CTRL_awaddr, 
  S_AXI_LITE_CTRL_awprot, S_AXI_LITE_CTRL_awvalid, S_AXI_LITE_CTRL_awready, 
  S_AXI_LITE_CTRL_wdata, S_AXI_LITE_CTRL_wstrb, S_AXI_LITE_CTRL_wvalid, 
  S_AXI_LITE_CTRL_wready, S_AXI_LITE_CTRL_bresp, S_AXI_LITE_CTRL_bvalid, 
  S_AXI_LITE_CTRL_bready, S_AXI_LITE_CTRL_araddr, S_AXI_LITE_CTRL_arprot, 
  S_AXI_LITE_CTRL_arvalid, S_AXI_LITE_CTRL_arready, S_AXI_LITE_CTRL_rdata, 
  S_AXI_LITE_CTRL_rresp, S_AXI_LITE_CTRL_rvalid, S_AXI_LITE_CTRL_rready, S_AXIS_tready, 
  S_AXIS_tdata, S_AXIS_tlast, S_AXIS_tvalid, M_AXIS_tvalid, M_AXIS_tdata, M_AXIS_tlast, 
  M_AXIS_tready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,ap_done,S_AXI_LITE_CTRL_awaddr[4:0],S_AXI_LITE_CTRL_awprot[2:0],S_AXI_LITE_CTRL_awvalid,S_AXI_LITE_CTRL_awready,S_AXI_LITE_CTRL_wdata[31:0],S_AXI_LITE_CTRL_wstrb[3:0],S_AXI_LITE_CTRL_wvalid,S_AXI_LITE_CTRL_wready,S_AXI_LITE_CTRL_bresp[1:0],S_AXI_LITE_CTRL_bvalid,S_AXI_LITE_CTRL_bready,S_AXI_LITE_CTRL_araddr[4:0],S_AXI_LITE_CTRL_arprot[2:0],S_AXI_LITE_CTRL_arvalid,S_AXI_LITE_CTRL_arready,S_AXI_LITE_CTRL_rdata[31:0],S_AXI_LITE_CTRL_rresp[1:0],S_AXI_LITE_CTRL_rvalid,S_AXI_LITE_CTRL_rready,S_AXIS_tready,S_AXIS_tdata[63:0],S_AXIS_tlast,S_AXIS_tvalid,M_AXIS_tvalid,M_AXIS_tdata[63:0],M_AXIS_tlast,M_AXIS_tready" */;
  input clk;
  input rst;
  output ap_done;
  input [4:0]S_AXI_LITE_CTRL_awaddr;
  input [2:0]S_AXI_LITE_CTRL_awprot;
  input S_AXI_LITE_CTRL_awvalid;
  output S_AXI_LITE_CTRL_awready;
  input [31:0]S_AXI_LITE_CTRL_wdata;
  input [3:0]S_AXI_LITE_CTRL_wstrb;
  input S_AXI_LITE_CTRL_wvalid;
  output S_AXI_LITE_CTRL_wready;
  output [1:0]S_AXI_LITE_CTRL_bresp;
  output S_AXI_LITE_CTRL_bvalid;
  input S_AXI_LITE_CTRL_bready;
  input [4:0]S_AXI_LITE_CTRL_araddr;
  input [2:0]S_AXI_LITE_CTRL_arprot;
  input S_AXI_LITE_CTRL_arvalid;
  output S_AXI_LITE_CTRL_arready;
  output [31:0]S_AXI_LITE_CTRL_rdata;
  output [1:0]S_AXI_LITE_CTRL_rresp;
  output S_AXI_LITE_CTRL_rvalid;
  input S_AXI_LITE_CTRL_rready;
  output S_AXIS_tready;
  input [63:0]S_AXIS_tdata;
  input S_AXIS_tlast;
  input S_AXIS_tvalid;
  output M_AXIS_tvalid;
  output [63:0]M_AXIS_tdata;
  output M_AXIS_tlast;
  input M_AXIS_tready;
endmodule
