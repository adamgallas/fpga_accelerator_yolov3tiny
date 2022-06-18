// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jul 21 00:08:13 2021
// Host        : ADAM-GALLAS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/cam_mipi_csi2_rx_subsyst_0_0_sim_netlist.v
// Design      : cam_mipi_csi2_rx_subsyst_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cam_mipi_csi2_rx_subsyst_0_0,bd_91b0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_91b0,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module cam_mipi_csi2_rx_subsyst_0_0
   (lite_aclk,
    lite_aresetn,
    dphy_clk_200M,
    rxbyteclkhs,
    clkoutphy_out,
    system_rst_out,
    pll_lock_out,
    csirxss_csi_irq,
    video_aclk,
    video_aresetn,
    csirxss_s_axi_araddr,
    csirxss_s_axi_arready,
    csirxss_s_axi_arvalid,
    csirxss_s_axi_awaddr,
    csirxss_s_axi_awready,
    csirxss_s_axi_awvalid,
    csirxss_s_axi_bready,
    csirxss_s_axi_bresp,
    csirxss_s_axi_bvalid,
    csirxss_s_axi_rdata,
    csirxss_s_axi_rready,
    csirxss_s_axi_rresp,
    csirxss_s_axi_rvalid,
    csirxss_s_axi_wdata,
    csirxss_s_axi_wready,
    csirxss_s_axi_wstrb,
    csirxss_s_axi_wvalid,
    video_out_tdata,
    video_out_tdest,
    video_out_tlast,
    video_out_tready,
    video_out_tuser,
    video_out_tvalid,
    mipi_phy_if_clk_n,
    mipi_phy_if_clk_p,
    mipi_phy_if_data_n,
    mipi_phy_if_data_p);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.lite_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.lite_aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF csirxss_s_axi, ASSOCIATED_RESET lite_aresetn, INSERT_VIP 0" *) input lite_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.lite_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.lite_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input lite_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.dphy_clk_200M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.dphy_clk_200M, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cam_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input dphy_clk_200M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.rxbyteclkhs CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.rxbyteclkhs, FREQ_HZ 35000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN bd_91b0_phy_0_rxbyteclkhs, INSERT_VIP 0" *) output rxbyteclkhs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.clkoutphy_out CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.clkoutphy_out, FREQ_HZ 1500000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_91b0_phy_0_clkoutphy_out, INSERT_VIP 0" *) output clkoutphy_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.system_rst_out RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.system_rst_out, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output system_rst_out;
  output pll_lock_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.csirxss_csi_irq INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.csirxss_csi_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output csirxss_csi_irq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.video_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.video_aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, ASSOCIATED_BUSIF video_out, ASSOCIATED_RESET video_aresetn, INSERT_VIP 0" *) input video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.video_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.video_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input video_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARADDR" *) input [7:0]csirxss_s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARREADY" *) output csirxss_s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARVALID" *) input csirxss_s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWADDR" *) input [7:0]csirxss_s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWREADY" *) output csirxss_s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWVALID" *) input csirxss_s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BREADY" *) input csirxss_s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BRESP" *) output [1:0]csirxss_s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BVALID" *) output csirxss_s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RDATA" *) output [31:0]csirxss_s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RREADY" *) input csirxss_s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RRESP" *) output [1:0]csirxss_s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RVALID" *) output csirxss_s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WDATA" *) input [31:0]csirxss_s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WREADY" *) output csirxss_s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WSTRB" *) input [3:0]csirxss_s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME csirxss_s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input csirxss_s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDATA" *) output [15:0]video_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDEST" *) output [9:0]video_out_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output video_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input video_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output [0:0]video_out_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_out, TDATA_NUM_BYTES 2, TDEST_WIDTH 10, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output video_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N" *) input mipi_phy_if_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P" *) input mipi_phy_if_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N" *) input [1:0]mipi_phy_if_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P" *) input [1:0]mipi_phy_if_data_p;

  wire clkoutphy_out;
  wire csirxss_csi_irq;
  wire [7:0]csirxss_s_axi_araddr;
  wire csirxss_s_axi_arready;
  wire csirxss_s_axi_arvalid;
  wire [7:0]csirxss_s_axi_awaddr;
  wire csirxss_s_axi_awready;
  wire csirxss_s_axi_awvalid;
  wire csirxss_s_axi_bready;
  wire [1:0]csirxss_s_axi_bresp;
  wire csirxss_s_axi_bvalid;
  wire [31:0]csirxss_s_axi_rdata;
  wire csirxss_s_axi_rready;
  wire [1:0]csirxss_s_axi_rresp;
  wire csirxss_s_axi_rvalid;
  wire [31:0]csirxss_s_axi_wdata;
  wire csirxss_s_axi_wready;
  wire [3:0]csirxss_s_axi_wstrb;
  wire csirxss_s_axi_wvalid;
  wire dphy_clk_200M;
  wire lite_aclk;
  wire lite_aresetn;
  wire mipi_phy_if_clk_n;
  wire mipi_phy_if_clk_p;
  wire [1:0]mipi_phy_if_data_n;
  wire [1:0]mipi_phy_if_data_p;
  wire pll_lock_out;
  wire rxbyteclkhs;
  wire system_rst_out;
  wire video_aclk;
  wire video_aresetn;
  wire [15:0]video_out_tdata;
  wire [9:0]video_out_tdest;
  wire video_out_tlast;
  wire video_out_tready;
  wire [0:0]video_out_tuser;
  wire video_out_tvalid;

  (* HW_HANDOFF = "cam_mipi_csi2_rx_subsyst_0_0.hwdef" *) 
  cam_mipi_csi2_rx_subsyst_0_0_bd_91b0 inst
       (.clkoutphy_out(clkoutphy_out),
        .csirxss_csi_irq(csirxss_csi_irq),
        .csirxss_s_axi_araddr(csirxss_s_axi_araddr),
        .csirxss_s_axi_arready(csirxss_s_axi_arready),
        .csirxss_s_axi_arvalid(csirxss_s_axi_arvalid),
        .csirxss_s_axi_awaddr(csirxss_s_axi_awaddr),
        .csirxss_s_axi_awready(csirxss_s_axi_awready),
        .csirxss_s_axi_awvalid(csirxss_s_axi_awvalid),
        .csirxss_s_axi_bready(csirxss_s_axi_bready),
        .csirxss_s_axi_bresp(csirxss_s_axi_bresp),
        .csirxss_s_axi_bvalid(csirxss_s_axi_bvalid),
        .csirxss_s_axi_rdata(csirxss_s_axi_rdata),
        .csirxss_s_axi_rready(csirxss_s_axi_rready),
        .csirxss_s_axi_rresp(csirxss_s_axi_rresp),
        .csirxss_s_axi_rvalid(csirxss_s_axi_rvalid),
        .csirxss_s_axi_wdata(csirxss_s_axi_wdata),
        .csirxss_s_axi_wready(csirxss_s_axi_wready),
        .csirxss_s_axi_wstrb(csirxss_s_axi_wstrb),
        .csirxss_s_axi_wvalid(csirxss_s_axi_wvalid),
        .dphy_clk_200M(dphy_clk_200M),
        .lite_aclk(lite_aclk),
        .lite_aresetn(lite_aresetn),
        .mipi_phy_if_clk_n(mipi_phy_if_clk_n),
        .mipi_phy_if_clk_p(mipi_phy_if_clk_p),
        .mipi_phy_if_data_n(mipi_phy_if_data_n),
        .mipi_phy_if_data_p(mipi_phy_if_data_p),
        .pll_lock_out(pll_lock_out),
        .rxbyteclkhs(rxbyteclkhs),
        .system_rst_out(system_rst_out),
        .video_aclk(video_aclk),
        .video_aresetn(video_aresetn),
        .video_out_tdata(video_out_tdata),
        .video_out_tdest(video_out_tdest),
        .video_out_tlast(video_out_tlast),
        .video_out_tready(video_out_tready),
        .video_out_tuser(video_out_tuser),
        .video_out_tvalid(video_out_tvalid));
endmodule

(* HW_HANDOFF = "cam_mipi_csi2_rx_subsyst_0_0.hwdef" *) (* ORIG_REF_NAME = "bd_91b0" *) 
module cam_mipi_csi2_rx_subsyst_0_0_bd_91b0
   (clkoutphy_out,
    csirxss_csi_irq,
    csirxss_s_axi_araddr,
    csirxss_s_axi_arready,
    csirxss_s_axi_arvalid,
    csirxss_s_axi_awaddr,
    csirxss_s_axi_awready,
    csirxss_s_axi_awvalid,
    csirxss_s_axi_bready,
    csirxss_s_axi_bresp,
    csirxss_s_axi_bvalid,
    csirxss_s_axi_rdata,
    csirxss_s_axi_rready,
    csirxss_s_axi_rresp,
    csirxss_s_axi_rvalid,
    csirxss_s_axi_wdata,
    csirxss_s_axi_wready,
    csirxss_s_axi_wstrb,
    csirxss_s_axi_wvalid,
    dphy_clk_200M,
    lite_aclk,
    lite_aresetn,
    mipi_phy_if_clk_n,
    mipi_phy_if_clk_p,
    mipi_phy_if_data_n,
    mipi_phy_if_data_p,
    pll_lock_out,
    rxbyteclkhs,
    system_rst_out,
    video_aclk,
    video_aresetn,
    video_out_tdata,
    video_out_tdest,
    video_out_tlast,
    video_out_tready,
    video_out_tuser,
    video_out_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLKOUTPHY_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLKOUTPHY_OUT, CLK_DOMAIN bd_91b0_phy_0_clkoutphy_out, FREQ_HZ 1500000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output clkoutphy_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.CSIRXSS_CSI_IRQ INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.CSIRXSS_CSI_IRQ, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output csirxss_csi_irq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME csirxss_s_axi, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [7:0]csirxss_s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARREADY" *) output csirxss_s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi ARVALID" *) input csirxss_s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWADDR" *) input [7:0]csirxss_s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWREADY" *) output csirxss_s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi AWVALID" *) input csirxss_s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BREADY" *) input csirxss_s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BRESP" *) output [1:0]csirxss_s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi BVALID" *) output csirxss_s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RDATA" *) output [31:0]csirxss_s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RREADY" *) input csirxss_s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RRESP" *) output [1:0]csirxss_s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi RVALID" *) output csirxss_s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WDATA" *) input [31:0]csirxss_s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WREADY" *) output csirxss_s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WSTRB" *) input [3:0]csirxss_s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 csirxss_s_axi WVALID" *) input csirxss_s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DPHY_CLK_200M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DPHY_CLK_200M, CLK_DOMAIN cam_clk_wiz_0_0_clk_out1, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input dphy_clk_200M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LITE_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LITE_ACLK, ASSOCIATED_BUSIF csirxss_s_axi, ASSOCIATED_RESET lite_aresetn, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input lite_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.LITE_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.LITE_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input lite_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_N" *) input mipi_phy_if_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if CLK_P" *) input mipi_phy_if_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_N" *) input [1:0]mipi_phy_if_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mipi_phy:1.0 mipi_phy_if DATA_P" *) input [1:0]mipi_phy_if_data_p;
  output pll_lock_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.RXBYTECLKHS CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.RXBYTECLKHS, CLK_DOMAIN bd_91b0_phy_0_rxbyteclkhs, FREQ_HZ 35000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0" *) output rxbyteclkhs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYSTEM_RST_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYSTEM_RST_OUT, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output system_rst_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VIDEO_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VIDEO_ACLK, ASSOCIATED_BUSIF video_out, ASSOCIATED_RESET video_aresetn, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input video_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.VIDEO_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.VIDEO_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input video_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME video_out, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, FREQ_HZ 250000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 2, TDEST_WIDTH 10, TID_WIDTH 0, TUSER_WIDTH 1" *) output [15:0]video_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TDEST" *) output [9:0]video_out_tdest;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TLAST" *) output video_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TREADY" *) input video_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TUSER" *) output [0:0]video_out_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 video_out TVALID" *) output video_out_tvalid;

  wire clkoutphy_out;
  wire csirxss_csi_irq;
  wire [7:0]csirxss_s_axi_araddr;
  wire csirxss_s_axi_arready;
  wire csirxss_s_axi_arvalid;
  wire [7:0]csirxss_s_axi_awaddr;
  wire csirxss_s_axi_awready;
  wire csirxss_s_axi_awvalid;
  wire csirxss_s_axi_bready;
  wire [1:0]csirxss_s_axi_bresp;
  wire csirxss_s_axi_bvalid;
  wire [31:0]csirxss_s_axi_rdata;
  wire csirxss_s_axi_rready;
  wire [1:0]csirxss_s_axi_rresp;
  wire csirxss_s_axi_rvalid;
  wire [31:0]csirxss_s_axi_wdata;
  wire csirxss_s_axi_wready;
  wire [3:0]csirxss_s_axi_wstrb;
  wire csirxss_s_axi_wvalid;
  wire dphy_clk_200M;
  wire lite_aclk;
  wire lite_aresetn;
  wire mipi_phy_if_clk_n;
  wire mipi_phy_if_clk_p;
  wire [1:0]mipi_phy_if_data_n;
  wire [1:0]mipi_phy_if_data_p;
  wire phy_rx_mipi_ppi_if_CL_ENABLE;
  wire phy_rx_mipi_ppi_if_CL_RXULPSCLKNOT;
  wire phy_rx_mipi_ppi_if_CL_STOPSTATE;
  wire phy_rx_mipi_ppi_if_DL0_ENABLE;
  wire phy_rx_mipi_ppi_if_DL0_ERRCONTROL;
  wire phy_rx_mipi_ppi_if_DL0_ERRESC;
  wire phy_rx_mipi_ppi_if_DL0_ERRSOTHS;
  wire phy_rx_mipi_ppi_if_DL0_ERRSOTSYNCHS;
  wire phy_rx_mipi_ppi_if_DL0_RXACTIVEHS;
  wire [7:0]phy_rx_mipi_ppi_if_DL0_RXDATAHS;
  wire phy_rx_mipi_ppi_if_DL0_RXSYNCHS;
  wire phy_rx_mipi_ppi_if_DL0_RXULPSESC;
  wire phy_rx_mipi_ppi_if_DL0_RXVALIDHS;
  wire phy_rx_mipi_ppi_if_DL0_STOPSTATE;
  wire phy_rx_mipi_ppi_if_DL1_ENABLE;
  wire phy_rx_mipi_ppi_if_DL1_ERRCONTROL;
  wire phy_rx_mipi_ppi_if_DL1_ERRESC;
  wire phy_rx_mipi_ppi_if_DL1_ERRSOTHS;
  wire phy_rx_mipi_ppi_if_DL1_ERRSOTSYNCHS;
  wire phy_rx_mipi_ppi_if_DL1_RXACTIVEHS;
  wire [7:0]phy_rx_mipi_ppi_if_DL1_RXDATAHS;
  wire phy_rx_mipi_ppi_if_DL1_RXSYNCHS;
  wire phy_rx_mipi_ppi_if_DL1_RXULPSESC;
  wire phy_rx_mipi_ppi_if_DL1_RXVALIDHS;
  wire phy_rx_mipi_ppi_if_DL1_STOPSTATE;
  wire pll_lock_out;
  wire r_sync_peripheral_reset;
  wire [63:0]rx_m_axis_TDATA;
  wire [3:0]rx_m_axis_TDEST;
  wire [7:0]rx_m_axis_TKEEP;
  wire rx_m_axis_TLAST;
  wire rx_m_axis_TREADY;
  wire [95:0]rx_m_axis_TUSER;
  wire rx_m_axis_TVALID;
  wire rxbyteclkhs;
  wire system_rst_out;
  wire vfb_0_mdt_tr;
  wire vfb_0_mdt_tv;
  wire vfb_0_sdt_tr;
  wire vfb_0_sdt_tv;
  wire vfb_0_vfb_full;
  wire vfb_0_vfb_tr;
  wire vfb_0_vfb_tv;
  wire video_aclk;
  wire video_aresetn;
  wire [15:0]video_out_tdata;
  wire [9:0]video_out_tdest;
  wire video_out_tlast;
  wire video_out_tready;
  wire [0:0]video_out_tuser;
  wire video_out_tvalid;
  wire NLW_phy_cl_rxclkactivehs_UNCONNECTED;
  wire NLW_phy_cl_ulpsactivenot_UNCONNECTED;
  wire NLW_phy_dl0_errsyncesc_UNCONNECTED;
  wire NLW_phy_dl0_rxclkesc_UNCONNECTED;
  wire NLW_phy_dl0_rxlpdtesc_UNCONNECTED;
  wire NLW_phy_dl0_rxvalidesc_UNCONNECTED;
  wire NLW_phy_dl0_ulpsactivenot_UNCONNECTED;
  wire NLW_phy_dl1_errsyncesc_UNCONNECTED;
  wire NLW_phy_dl1_rxclkesc_UNCONNECTED;
  wire NLW_phy_dl1_rxlpdtesc_UNCONNECTED;
  wire NLW_phy_dl1_rxvalidesc_UNCONNECTED;
  wire NLW_phy_dl1_ulpsactivenot_UNCONNECTED;
  wire NLW_phy_init_done_UNCONNECTED;
  wire [7:0]NLW_phy_dl0_rxdataesc_UNCONNECTED;
  wire [3:0]NLW_phy_dl0_rxtriggeresc_UNCONNECTED;
  wire [7:0]NLW_phy_dl1_rxdataesc_UNCONNECTED;
  wire [3:0]NLW_phy_dl1_rxtriggeresc_UNCONNECTED;
  wire NLW_r_sync_mb_reset_UNCONNECTED;
  wire [0:0]NLW_r_sync_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_r_sync_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_r_sync_peripheral_aresetn_UNCONNECTED;

  cam_mipi_csi2_rx_subsyst_0_0_bd_91b0_phy_0 phy
       (.cl_enable(phy_rx_mipi_ppi_if_CL_ENABLE),
        .cl_rxclkactivehs(NLW_phy_cl_rxclkactivehs_UNCONNECTED),
        .cl_rxulpsclknot(phy_rx_mipi_ppi_if_CL_RXULPSCLKNOT),
        .cl_stopstate(phy_rx_mipi_ppi_if_CL_STOPSTATE),
        .cl_ulpsactivenot(NLW_phy_cl_ulpsactivenot_UNCONNECTED),
        .clk_rxn(mipi_phy_if_clk_n),
        .clk_rxp(mipi_phy_if_clk_p),
        .clkoutphy_out(clkoutphy_out),
        .core_clk(dphy_clk_200M),
        .core_rst(r_sync_peripheral_reset),
        .data_rxn(mipi_phy_if_data_n),
        .data_rxp(mipi_phy_if_data_p),
        .dl0_enable(phy_rx_mipi_ppi_if_DL0_ENABLE),
        .dl0_errcontrol(phy_rx_mipi_ppi_if_DL0_ERRCONTROL),
        .dl0_erresc(phy_rx_mipi_ppi_if_DL0_ERRESC),
        .dl0_errsoths(phy_rx_mipi_ppi_if_DL0_ERRSOTHS),
        .dl0_errsotsynchs(phy_rx_mipi_ppi_if_DL0_ERRSOTSYNCHS),
        .dl0_errsyncesc(NLW_phy_dl0_errsyncesc_UNCONNECTED),
        .dl0_forcerxmode(1'b0),
        .dl0_rxactivehs(phy_rx_mipi_ppi_if_DL0_RXACTIVEHS),
        .dl0_rxclkesc(NLW_phy_dl0_rxclkesc_UNCONNECTED),
        .dl0_rxdataesc(NLW_phy_dl0_rxdataesc_UNCONNECTED[7:0]),
        .dl0_rxdatahs(phy_rx_mipi_ppi_if_DL0_RXDATAHS),
        .dl0_rxlpdtesc(NLW_phy_dl0_rxlpdtesc_UNCONNECTED),
        .dl0_rxsynchs(phy_rx_mipi_ppi_if_DL0_RXSYNCHS),
        .dl0_rxtriggeresc(NLW_phy_dl0_rxtriggeresc_UNCONNECTED[3:0]),
        .dl0_rxulpsesc(phy_rx_mipi_ppi_if_DL0_RXULPSESC),
        .dl0_rxvalidesc(NLW_phy_dl0_rxvalidesc_UNCONNECTED),
        .dl0_rxvalidhs(phy_rx_mipi_ppi_if_DL0_RXVALIDHS),
        .dl0_stopstate(phy_rx_mipi_ppi_if_DL0_STOPSTATE),
        .dl0_ulpsactivenot(NLW_phy_dl0_ulpsactivenot_UNCONNECTED),
        .dl1_enable(phy_rx_mipi_ppi_if_DL1_ENABLE),
        .dl1_errcontrol(phy_rx_mipi_ppi_if_DL1_ERRCONTROL),
        .dl1_erresc(phy_rx_mipi_ppi_if_DL1_ERRESC),
        .dl1_errsoths(phy_rx_mipi_ppi_if_DL1_ERRSOTHS),
        .dl1_errsotsynchs(phy_rx_mipi_ppi_if_DL1_ERRSOTSYNCHS),
        .dl1_errsyncesc(NLW_phy_dl1_errsyncesc_UNCONNECTED),
        .dl1_forcerxmode(1'b0),
        .dl1_rxactivehs(phy_rx_mipi_ppi_if_DL1_RXACTIVEHS),
        .dl1_rxclkesc(NLW_phy_dl1_rxclkesc_UNCONNECTED),
        .dl1_rxdataesc(NLW_phy_dl1_rxdataesc_UNCONNECTED[7:0]),
        .dl1_rxdatahs(phy_rx_mipi_ppi_if_DL1_RXDATAHS),
        .dl1_rxlpdtesc(NLW_phy_dl1_rxlpdtesc_UNCONNECTED),
        .dl1_rxsynchs(phy_rx_mipi_ppi_if_DL1_RXSYNCHS),
        .dl1_rxtriggeresc(NLW_phy_dl1_rxtriggeresc_UNCONNECTED[3:0]),
        .dl1_rxulpsesc(phy_rx_mipi_ppi_if_DL1_RXULPSESC),
        .dl1_rxvalidesc(NLW_phy_dl1_rxvalidesc_UNCONNECTED),
        .dl1_rxvalidhs(phy_rx_mipi_ppi_if_DL1_RXVALIDHS),
        .dl1_stopstate(phy_rx_mipi_ppi_if_DL1_STOPSTATE),
        .dl1_ulpsactivenot(NLW_phy_dl1_ulpsactivenot_UNCONNECTED),
        .init_done(NLW_phy_init_done_UNCONNECTED),
        .pll_lock_out(pll_lock_out),
        .rxbyteclkhs(rxbyteclkhs),
        .system_rst_out(system_rst_out));
  (* x_core_info = "proc_sys_reset,Vivado 2020.1" *) 
  cam_mipi_csi2_rx_subsyst_0_0_bd_91b0_r_sync_0 r_sync
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_r_sync_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(video_aresetn),
        .interconnect_aresetn(NLW_r_sync_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_r_sync_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_r_sync_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(r_sync_peripheral_reset),
        .slowest_sync_clk(dphy_clk_200M));
  (* x_core_info = "mipi_csi2_rx_ctrl_v1_0_8_top,Vivado 2020.1" *) 
  cam_mipi_csi2_rx_subsyst_0_0_bd_91b0_rx_0 rx
       (.cl_enable(phy_rx_mipi_ppi_if_CL_ENABLE),
        .cl_rxulpsclknot(phy_rx_mipi_ppi_if_CL_RXULPSCLKNOT),
        .cl_stopstate(phy_rx_mipi_ppi_if_CL_STOPSTATE),
        .dl0_errcontrol(phy_rx_mipi_ppi_if_DL0_ERRCONTROL),
        .dl0_erresc(phy_rx_mipi_ppi_if_DL0_ERRESC),
        .dl0_errsoths(phy_rx_mipi_ppi_if_DL0_ERRSOTHS),
        .dl0_errsotsynchs(phy_rx_mipi_ppi_if_DL0_ERRSOTSYNCHS),
        .dl0_rxactivehs(phy_rx_mipi_ppi_if_DL0_RXACTIVEHS),
        .dl0_rxbyteclkhs(rxbyteclkhs),
        .dl0_rxdatahs(phy_rx_mipi_ppi_if_DL0_RXDATAHS),
        .dl0_rxsynchs(phy_rx_mipi_ppi_if_DL0_RXSYNCHS),
        .dl0_rxulpmesc(phy_rx_mipi_ppi_if_DL0_RXULPSESC),
        .dl0_rxvalidhs(phy_rx_mipi_ppi_if_DL0_RXVALIDHS),
        .dl0_shutdown(phy_rx_mipi_ppi_if_DL0_ENABLE),
        .dl0_stopstate(phy_rx_mipi_ppi_if_DL0_STOPSTATE),
        .dl1_errcontrol(phy_rx_mipi_ppi_if_DL1_ERRCONTROL),
        .dl1_erresc(phy_rx_mipi_ppi_if_DL1_ERRESC),
        .dl1_errsoths(phy_rx_mipi_ppi_if_DL1_ERRSOTHS),
        .dl1_errsotsynchs(phy_rx_mipi_ppi_if_DL1_ERRSOTSYNCHS),
        .dl1_rxactivehs(phy_rx_mipi_ppi_if_DL1_RXACTIVEHS),
        .dl1_rxbyteclkhs(rxbyteclkhs),
        .dl1_rxdatahs(phy_rx_mipi_ppi_if_DL1_RXDATAHS),
        .dl1_rxsynchs(phy_rx_mipi_ppi_if_DL1_RXSYNCHS),
        .dl1_rxulpmesc(phy_rx_mipi_ppi_if_DL1_RXULPSESC),
        .dl1_rxvalidhs(phy_rx_mipi_ppi_if_DL1_RXVALIDHS),
        .dl1_shutdown(phy_rx_mipi_ppi_if_DL1_ENABLE),
        .dl1_stopstate(phy_rx_mipi_ppi_if_DL1_STOPSTATE),
        .interrupt(csirxss_csi_irq),
        .m_axis_aclk(video_aclk),
        .m_axis_aresetn(video_aresetn),
        .m_axis_tdata(rx_m_axis_TDATA),
        .m_axis_tdest(rx_m_axis_TDEST),
        .m_axis_tkeep(rx_m_axis_TKEEP),
        .m_axis_tlast(rx_m_axis_TLAST),
        .m_axis_tready(rx_m_axis_TREADY),
        .m_axis_tuser(rx_m_axis_TUSER),
        .m_axis_tvalid(rx_m_axis_TVALID),
        .mdt_tr(vfb_0_mdt_tr),
        .mdt_tv(vfb_0_mdt_tv),
        .s_axi_aclk(lite_aclk),
        .s_axi_araddr(csirxss_s_axi_araddr),
        .s_axi_aresetn(lite_aresetn),
        .s_axi_arready(csirxss_s_axi_arready),
        .s_axi_arvalid(csirxss_s_axi_arvalid),
        .s_axi_awaddr(csirxss_s_axi_awaddr),
        .s_axi_awready(csirxss_s_axi_awready),
        .s_axi_awvalid(csirxss_s_axi_awvalid),
        .s_axi_bready(csirxss_s_axi_bready),
        .s_axi_bresp(csirxss_s_axi_bresp),
        .s_axi_bvalid(csirxss_s_axi_bvalid),
        .s_axi_rdata(csirxss_s_axi_rdata),
        .s_axi_rready(csirxss_s_axi_rready),
        .s_axi_rresp(csirxss_s_axi_rresp),
        .s_axi_rvalid(csirxss_s_axi_rvalid),
        .s_axi_wdata(csirxss_s_axi_wdata),
        .s_axi_wready(csirxss_s_axi_wready),
        .s_axi_wstrb(csirxss_s_axi_wstrb),
        .s_axi_wvalid(csirxss_s_axi_wvalid),
        .sdt_tr(vfb_0_sdt_tr),
        .sdt_tv(vfb_0_sdt_tv),
        .vfb_full(vfb_0_vfb_full),
        .vfb_tr(vfb_0_vfb_tr),
        .vfb_tv(vfb_0_vfb_tv),
        .video_aclk(video_aclk));
  cam_mipi_csi2_rx_subsyst_0_0_bd_91b0_vfb_0_0 vfb_0
       (.mdt_tr(vfb_0_mdt_tr),
        .mdt_tv(vfb_0_mdt_tv),
        .s_axis_aclk(video_aclk),
        .s_axis_aresetn(video_aresetn),
        .s_axis_tdata(rx_m_axis_TDATA),
        .s_axis_tdest(rx_m_axis_TDEST),
        .s_axis_tkeep(rx_m_axis_TKEEP),
        .s_axis_tlast(rx_m_axis_TLAST),
        .s_axis_tready(rx_m_axis_TREADY),
        .s_axis_tuser(rx_m_axis_TUSER),
        .s_axis_tvalid(rx_m_axis_TVALID),
        .sdt_tr(vfb_0_sdt_tr),
        .sdt_tv(vfb_0_sdt_tv),
        .vfb_arstn(video_aresetn),
        .vfb_clk(video_aclk),
        .vfb_data(video_out_tdata),
        .vfb_eol(video_out_tlast),
        .vfb_full(vfb_0_vfb_full),
        .vfb_ready(video_out_tready),
        .vfb_sof(video_out_tuser),
        .vfb_tr(vfb_0_vfb_tr),
        .vfb_tv(vfb_0_vfb_tv),
        .vfb_valid(video_out_tvalid),
        .vfb_vcdt(video_out_tdest));
endmodule

(* ORIG_REF_NAME = "bd_91b0_phy_0" *) 
module cam_mipi_csi2_rx_subsyst_0_0_bd_91b0_phy_0
   (core_clk,
    core_rst,
    rxbyteclkhs,
    clkoutphy_out,
    pll_lock_out,
    system_rst_out,
    init_done,
    cl_rxclkactivehs,
    cl_stopstate,
    cl_enable,
    cl_rxulpsclknot,
    cl_ulpsactivenot,
    dl0_rxdatahs,
    dl0_rxvalidhs,
    dl0_rxactivehs,
    dl0_rxsynchs,
    dl0_forcerxmode,
    dl0_stopstate,
    dl0_enable,
    dl0_ulpsactivenot,
    dl0_rxclkesc,
    dl0_rxlpdtesc,
    dl0_rxulpsesc,
    dl0_rxtriggeresc,
    dl0_rxdataesc,
    dl0_rxvalidesc,
    dl0_errsoths,
    dl0_errsotsynchs,
    dl0_erresc,
    dl0_errsyncesc,
    dl0_errcontrol,
    dl1_rxdatahs,
    dl1_rxvalidhs,
    dl1_rxactivehs,
    dl1_rxsynchs,
    dl1_forcerxmode,
    dl1_stopstate,
    dl1_enable,
    dl1_ulpsactivenot,
    dl1_rxclkesc,
    dl1_rxlpdtesc,
    dl1_rxulpsesc,
    dl1_rxtriggeresc,
    dl1_rxdataesc,
    dl1_rxvalidesc,
    dl1_errsoths,
    dl1_errsotsynchs,
    dl1_erresc,
    dl1_errsyncesc,
    dl1_errcontrol,
    clk_rxp,
    clk_rxn,
    data_rxp,
    data_rxn);
  input core_clk;
  input core_rst;
  output rxbyteclkhs;
  output clkoutphy_out;
  output pll_lock_out;
  output system_rst_out;
  output init_done;
  output cl_rxclkactivehs;
  output cl_stopstate;
  input cl_enable;
  output cl_rxulpsclknot;
  output cl_ulpsactivenot;
  output [7:0]dl0_rxdatahs;
  output dl0_rxvalidhs;
  output dl0_rxactivehs;
  output dl0_rxsynchs;
  input dl0_forcerxmode;
  output dl0_stopstate;
  input dl0_enable;
  output dl0_ulpsactivenot;
  output dl0_rxclkesc;
  output dl0_rxlpdtesc;
  output dl0_rxulpsesc;
  output [3:0]dl0_rxtriggeresc;
  output [7:0]dl0_rxdataesc;
  output dl0_rxvalidesc;
  output dl0_errsoths;
  output dl0_errsotsynchs;
  output dl0_erresc;
  output dl0_errsyncesc;
  output dl0_errcontrol;
  output [7:0]dl1_rxdatahs;
  output dl1_rxvalidhs;
  output dl1_rxactivehs;
  output dl1_rxsynchs;
  input dl1_forcerxmode;
  output dl1_stopstate;
  input dl1_enable;
  output dl1_ulpsactivenot;
  output dl1_rxclkesc;
  output dl1_rxlpdtesc;
  output dl1_rxulpsesc;
  output [3:0]dl1_rxtriggeresc;
  output [7:0]dl1_rxdataesc;
  output dl1_rxvalidesc;
  output dl1_errsoths;
  output dl1_errsotsynchs;
  output dl1_erresc;
  output dl1_errsyncesc;
  output dl1_errcontrol;
  input clk_rxp;
  input clk_rxn;
  input [1:0]data_rxp;
  input [1:0]data_rxn;


endmodule

(* ORIG_REF_NAME = "bd_91b0_r_sync_0" *) (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
module cam_mipi_csi2_rx_subsyst_0_0_bd_91b0_r_sync_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* ORIG_REF_NAME = "bd_91b0_rx_0" *) (* X_CORE_INFO = "mipi_csi2_rx_ctrl_v1_0_8_top,Vivado 2020.1" *) 
module cam_mipi_csi2_rx_subsyst_0_0_bd_91b0_rx_0
   (s_axi_aclk,
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
    interrupt);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [7:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [7:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input cl_stopstate;
  output cl_enable;
  input cl_rxulpsclknot;
  input vfb_full;
  input dl0_rxbyteclkhs;
  input [7:0]dl0_rxdatahs;
  input dl0_rxvalidhs;
  input dl0_rxactivehs;
  input dl0_rxsynchs;
  input dl0_stopstate;
  output dl0_shutdown;
  input dl0_rxulpmesc;
  input dl0_errsoths;
  input dl0_errsotsynchs;
  input dl0_erresc;
  input dl0_errcontrol;
  input dl1_rxbyteclkhs;
  input [7:0]dl1_rxdatahs;
  input dl1_rxvalidhs;
  input dl1_rxactivehs;
  input dl1_rxsynchs;
  input dl1_stopstate;
  output dl1_shutdown;
  input dl1_rxulpmesc;
  input dl1_errsoths;
  input dl1_errsotsynchs;
  input dl1_erresc;
  input dl1_errcontrol;
  input video_aclk;
  input m_axis_aclk;
  input m_axis_aresetn;
  input m_axis_tready;
  output m_axis_tvalid;
  output m_axis_tlast;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tkeep;
  output [95:0]m_axis_tuser;
  output [3:0]m_axis_tdest;
  input mdt_tv;
  input mdt_tr;
  input sdt_tv;
  input sdt_tr;
  input vfb_tv;
  input vfb_tr;
  output interrupt;


endmodule

(* ORIG_REF_NAME = "bd_91b0_vfb_0_0" *) 
module cam_mipi_csi2_rx_subsyst_0_0_bd_91b0_vfb_0_0
   (s_axis_aclk,
    s_axis_aresetn,
    s_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tuser,
    s_axis_tdest,
    mdt_tv,
    mdt_tr,
    sdt_tv,
    sdt_tr,
    vfb_tv,
    vfb_tr,
    vfb_arstn,
    vfb_clk,
    vfb_ready,
    vfb_full,
    vfb_valid,
    vfb_eol,
    vfb_sof,
    vfb_vcdt,
    vfb_data);
  input s_axis_aclk;
  input s_axis_aresetn;
  output s_axis_tready;
  input s_axis_tvalid;
  input s_axis_tlast;
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tkeep;
  input [95:0]s_axis_tuser;
  input [3:0]s_axis_tdest;
  output mdt_tv;
  output mdt_tr;
  output sdt_tv;
  output sdt_tr;
  output vfb_tv;
  output vfb_tr;
  input vfb_arstn;
  input vfb_clk;
  input vfb_ready;
  output vfb_full;
  output vfb_valid;
  output vfb_eol;
  output [0:0]vfb_sof;
  output [9:0]vfb_vcdt;
  output [15:0]vfb_data;


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
