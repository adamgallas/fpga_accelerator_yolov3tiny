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


// IP VLNV: xilinx.com:ip:mipi_csi2_rx_ctrl:1.0
// IP Revision: 8

(* X_CORE_INFO = "mipi_csi2_rx_ctrl_v1_0_8_top,Vivado 2020.1" *)
(* CHECK_LICENSE_TYPE = "bd_91b0_rx_0,mipi_csi2_rx_ctrl_v1_0_8_top,{}" *)
(* CORE_GENERATION_INFO = "bd_91b0_rx_0,mipi_csi2_rx_ctrl_v1_0_8_top,{x_ipProduct=Vivado 2020.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=mipi_csi2_rx_ctrl,x_ipVersion=1.0,x_ipCoreRevision=8,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_HS_LINE_RATE=280,C_RCVE_DESKEW_SEQ=false,C_FAMILY=zynquplus,C_S_AXI_ADDR_WIDTH=8,C_S_AXI_DATA_WIDTH=32,C_CSI_OPT1_REGS=0,C_CSI_OPT2_CRC=0,C_CSI_OPT3_FIXEDLANES=1,CSI_LANES=2,CSI_OFFLOAD_NONIMAGE=0,CSI_EN_VC_SUPPORT=1,CSI_FIXED_VC=0,C_CSI_FILTER_USERDATATYPE=0,C_EN_VCX=false,C_EN_CSI_V2_\
0=true,CSI_VC_OFF_0=1,CSI_VC_OFF_1=2,CSI_VC_OFF_2=3,CSI_VC_OFF_3=4,CSI_VC_OFF_4=5,CSI_VC_OFF_5=6,CSI_VC_OFF_6=7,CSI_VC_OFF_7=8,CSI_VC_OFF_8=9,CSI_VC_OFF_9=10,CSI_VC_OFF_10=11,CSI_VC_OFF_11=12,CSI_VC_OFF_12=13,CSI_VC_OFF_13=14,CSI_VC_OFF_14=15,CSI_INV_SHUTDOWN=1,C_MIPI_SLV_INT=0,C_CSI2RX_DBG=0,AXIS_FIFO_DCNT_WIDTH=11,C_DISABLE_LITE=0,AXIS_FIFO_DEPTH=2048,AXIS_TDATA_WIDTH=64,AXIS_TUSER_WIDTH=96,AXIS_TDEST_WIDTH=4}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_91b0_rx_0 (
  s_axi_aclk,
  s_axi_aresetn,
  s_axi_awaddr,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bresp,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_araddr,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  cl_stopstate,
  cl_enable,
  cl_rxulpsclknot,
  vfb_full,
  dl0_rxbyteclkhs,
  dl0_rxdatahs,
  dl0_rxvalidhs,
  dl0_rxactivehs,
  dl0_rxsynchs,
  dl0_stopstate,
  dl0_shutdown,
  dl0_rxulpmesc,
  dl0_errsoths,
  dl0_errsotsynchs,
  dl0_erresc,
  dl0_errcontrol,
  dl1_rxbyteclkhs,
  dl1_rxdatahs,
  dl1_rxvalidhs,
  dl1_rxactivehs,
  dl1_rxsynchs,
  dl1_stopstate,
  dl1_shutdown,
  dl1_rxulpmesc,
  dl1_errsoths,
  dl1_errsotsynchs,
  dl1_erresc,
  dl1_errcontrol,
  video_aclk,
  m_axis_aclk,
  m_axis_aresetn,
  m_axis_tready,
  m_axis_tvalid,
  m_axis_tlast,
  m_axis_tdata,
  m_axis_tkeep,
  m_axis_tuser,
  m_axis_tdest,
  mdt_tv,
  mdt_tr,
  sdt_tv,
  sdt_tr,
  vfb_tv,
  vfb_tr,
  interrupt
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_signal_clock, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_signal_clock CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_signal_reset RST" *)
input wire s_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *)
input wire [7 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *)
input wire [7 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WR\
ITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if CL_STOPSTATE" *)
input wire cl_stopstate;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if CL_ENABLE" *)
output wire cl_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if CL_RXULPSCLKNOT" *)
input wire cl_rxulpsclknot;
input wire vfb_full;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dl0_rxbyteclkhs, FREQ_HZ 35000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_91b0_phy_0_rxbyteclkhs, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dl0_rxbyteclkhs CLK" *)
input wire dl0_rxbyteclkhs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_RXDATAHS" *)
input wire [7 : 0] dl0_rxdatahs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_RXVALIDHS" *)
input wire dl0_rxvalidhs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_RXACTIVEHS" *)
input wire dl0_rxactivehs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_RXSYNCHS" *)
input wire dl0_rxsynchs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_STOPSTATE" *)
input wire dl0_stopstate;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_ENABLE" *)
output wire dl0_shutdown;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_RXULPSESC" *)
input wire dl0_rxulpmesc;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_ERRSOTHS" *)
input wire dl0_errsoths;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_ERRSOTSYNCHS" *)
input wire dl0_errsotsynchs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_ERRESC" *)
input wire dl0_erresc;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL0_ERRCONTROL" *)
input wire dl0_errcontrol;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dl1_rxbyteclkhs, FREQ_HZ 35000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_91b0_phy_0_rxbyteclkhs, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dl1_rxbyteclkhs CLK" *)
input wire dl1_rxbyteclkhs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_RXDATAHS" *)
input wire [7 : 0] dl1_rxdatahs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_RXVALIDHS" *)
input wire dl1_rxvalidhs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_RXACTIVEHS" *)
input wire dl1_rxactivehs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_RXSYNCHS" *)
input wire dl1_rxsynchs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_STOPSTATE" *)
input wire dl1_stopstate;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_ENABLE" *)
output wire dl1_shutdown;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_RXULPSESC" *)
input wire dl1_rxulpmesc;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_ERRSOTHS" *)
input wire dl1_errsoths;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_ERRSOTSYNCHS" *)
input wire dl1_errsotsynchs;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_ERRESC" *)
input wire dl1_erresc;
(* X_INTERFACE_INFO = "xilinx.com:interface:rx_mipi_ppi_if:1.0 rx_mipi_ppi_if DL1_ERRCONTROL" *)
input wire dl1_errcontrol;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_eni_signal_clock, ASSOCIATED_BUSIF m_axis_eni, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_eni_signal_clock CLK" *)
input wire video_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_signal_clock, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET m_axis_aresetn, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_signal_clock CLK" *)
input wire m_axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axis_signal_reset RST" *)
input wire m_axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [63 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *)
output wire [7 : 0] m_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TUSER" *)
output wire [95 : 0] m_axis_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 4, TID_WIDTH 0, TUSER_WIDTH 96, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDEST" *)
output wire [3 : 0] m_axis_tdest;
input wire mdt_tv;
input wire mdt_tr;
input wire sdt_tv;
input wire sdt_tr;
input wire vfb_tv;
input wire vfb_tr;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME signal_interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 signal_interrupt INTERRUPT" *)
output wire interrupt;

  mipi_csi2_rx_ctrl_v1_0_8_top #(
    .C_HS_LINE_RATE(280),
    .C_RCVE_DESKEW_SEQ("false"),
    .C_FAMILY("zynquplus"),
    .C_S_AXI_ADDR_WIDTH(8),
    .C_S_AXI_DATA_WIDTH(32),
    .C_CSI_OPT1_REGS(0),
    .C_CSI_OPT2_CRC(0),
    .C_CSI_OPT3_FIXEDLANES(1),
    .CSI_LANES(2),
    .CSI_OFFLOAD_NONIMAGE(0),
    .CSI_EN_VC_SUPPORT(1),
    .CSI_FIXED_VC(0),
    .C_CSI_FILTER_USERDATATYPE(0),
    .C_EN_VCX("false"),
    .C_EN_CSI_V2_0("true"),
    .CSI_VC_OFF_0(1),
    .CSI_VC_OFF_1(2),
    .CSI_VC_OFF_2(3),
    .CSI_VC_OFF_3(4),
    .CSI_VC_OFF_4(5),
    .CSI_VC_OFF_5(6),
    .CSI_VC_OFF_6(7),
    .CSI_VC_OFF_7(8),
    .CSI_VC_OFF_8(9),
    .CSI_VC_OFF_9(10),
    .CSI_VC_OFF_10(11),
    .CSI_VC_OFF_11(12),
    .CSI_VC_OFF_12(13),
    .CSI_VC_OFF_13(14),
    .CSI_VC_OFF_14(15),
    .CSI_INV_SHUTDOWN(1),
    .C_MIPI_SLV_INT(0),
    .C_CSI2RX_DBG(0),
    .AXIS_FIFO_DCNT_WIDTH(11),
    .C_DISABLE_LITE(0),
    .AXIS_FIFO_DEPTH(2048),
    .AXIS_TDATA_WIDTH(64),
    .AXIS_TUSER_WIDTH(96),
    .AXIS_TDEST_WIDTH(4)
  ) inst (
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .cl_stopstate(cl_stopstate),
    .cl_enable(cl_enable),
    .cl_rxulpsclknot(cl_rxulpsclknot),
    .vfb_full(vfb_full),
    .dl0_rxbyteclkhs(dl0_rxbyteclkhs),
    .dl0_rxdatahs(dl0_rxdatahs),
    .dl0_rxvalidhs(dl0_rxvalidhs),
    .dl0_rxactivehs(dl0_rxactivehs),
    .dl0_rxsynchs(dl0_rxsynchs),
    .dl0_stopstate(dl0_stopstate),
    .dl0_shutdown(dl0_shutdown),
    .dl0_rxulpmesc(dl0_rxulpmesc),
    .dl0_errsoths(dl0_errsoths),
    .dl0_errsotsynchs(dl0_errsotsynchs),
    .dl0_erresc(dl0_erresc),
    .dl0_errcontrol(dl0_errcontrol),
    .dl0_rxskewcalhs(1'B0),
    .dl1_rxbyteclkhs(dl1_rxbyteclkhs),
    .dl1_rxdatahs(dl1_rxdatahs),
    .dl1_rxvalidhs(dl1_rxvalidhs),
    .dl1_rxactivehs(dl1_rxactivehs),
    .dl1_rxsynchs(dl1_rxsynchs),
    .dl1_stopstate(dl1_stopstate),
    .dl1_shutdown(dl1_shutdown),
    .dl1_rxulpmesc(dl1_rxulpmesc),
    .dl1_errsoths(dl1_errsoths),
    .dl1_errsotsynchs(dl1_errsotsynchs),
    .dl1_erresc(dl1_erresc),
    .dl1_errcontrol(dl1_errcontrol),
    .dl1_rxskewcalhs(1'B0),
    .dl2_rxbyteclkhs(1'B0),
    .dl2_rxdatahs(8'B0),
    .dl2_rxvalidhs(1'B0),
    .dl2_rxactivehs(1'B0),
    .dl2_rxsynchs(1'B0),
    .dl2_stopstate(1'B1),
    .dl2_shutdown(),
    .dl2_rxulpmesc(1'B0),
    .dl2_errsoths(1'B0),
    .dl2_errsotsynchs(1'B0),
    .dl2_erresc(1'B0),
    .dl2_errcontrol(1'B0),
    .dl2_rxskewcalhs(1'B0),
    .dl3_rxbyteclkhs(1'B0),
    .dl3_rxdatahs(8'B0),
    .dl3_rxvalidhs(1'B0),
    .dl3_rxactivehs(1'B0),
    .dl3_rxsynchs(1'B0),
    .dl3_stopstate(1'B1),
    .dl3_shutdown(),
    .dl3_rxulpmesc(1'B0),
    .dl3_errsoths(1'B0),
    .dl3_errsotsynchs(1'B0),
    .dl3_erresc(1'B0),
    .dl3_errcontrol(1'B0),
    .dl3_rxskewcalhs(1'B0),
    .video_aclk(video_aclk),
    .m_axis_aclk(m_axis_aclk),
    .m_axis_aresetn(m_axis_aresetn),
    .m_axis_tready(m_axis_tready),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tuser(m_axis_tuser),
    .m_axis_tdest(m_axis_tdest),
    .m_axis_eni_tready(1'B0),
    .m_axis_eni_tvalid(),
    .m_axis_eni_tlast(),
    .m_axis_eni_tdata(),
    .m_axis_eni_tkeep(),
    .m_axis_eni_tuser(),
    .m_axis_eni_tdest(),
    .mdt_tv(mdt_tv),
    .mdt_tr(mdt_tr),
    .sdt_tv(sdt_tv),
    .sdt_tr(sdt_tr),
    .vfb_tv(vfb_tv),
    .vfb_tr(vfb_tr),
    .core_enable(1'B0),
    .disable_in_progress(),
    .ecc_status_intr(),
    .crc_status_intr(),
    .errsotsynchs_intr(),
    .errsoths_intr(),
    .frame_rcvd_pulse_out(),
    .linebuffer_full(),
    .cl_stopstate_intr(),
    .dl0_stopstate_intr(),
    .dl1_stopstate_intr(),
    .dl2_stopstate_intr(),
    .dl3_stopstate_intr(),
    .interrupt(interrupt)
  );
endmodule
