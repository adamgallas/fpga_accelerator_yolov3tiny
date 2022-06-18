// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Jul 20 23:20:41 2021
// Host        : ADAM-GALLAS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/base/base.srcs/sources_1/bd/cam/ip/cam_mipi_csi2_rx_subsyst_0_0/bd_0/ip/ip_2/bd_91b0_phy_0_sim_netlist.v
// Design      : bd_91b0_phy_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_CAL_MODE = "FIXED" *) (* C_DIV4_CLK_PERIOD = "28.571000" *) (* C_DPHY_LANES = "2" *) 
(* C_DPHY_MODE = "SLAVE" *) (* C_EN_DEBUG_REGS = "0" *) (* C_EN_REG_IF = "0" *) 
(* C_EN_SSC = "0" *) (* C_EN_TIMEOUT_REGS = "0" *) (* C_ESC_CLK_PERIOD = "50.000000" *) 
(* C_ESC_TIMEOUT = "25600" *) (* C_EXAMPLE_SIMULATION = "false" *) (* C_HS_LINE_RATE = "280" *) 
(* C_HS_TIMEOUT = "65541" *) (* C_IDLY_TAP = "0" *) (* C_LPX_PERIOD = "50" *) 
(* C_RCVE_DESKEW_SEQ = "false" *) (* C_SKEWCAL_FIRST_TIME = "4096" *) (* C_SKEWCAL_PERIODIC_TIME = "128" *) 
(* C_STABLE_CLK_PERIOD = "5.000000" *) (* C_TXPLL_CLKIN_PERIOD = "8.000000" *) (* C_WAKEUP = "1000000" *) 
(* C_XMIT_FIRST_DESKEW_SEQ = "false" *) (* C_XMIT_PERIODIC_DESKEW_SEQ = "false" *) (* DPHY_PRESET = "CSI2RX_XLNX" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* MTBF_SYNC_STAGES = "3" *) (* SUPPORT_LEVEL = "1" *) 
(* NotValidForBitStream *)
module bd_91b0_phy_0
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

  wire cl_enable;
  wire cl_rxclkactivehs;
  wire cl_rxulpsclknot;
  wire cl_stopstate;
  wire cl_ulpsactivenot;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IOSTANDARD = "MIPI_DPHY_DCI" *) wire clk_rxn;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IOSTANDARD = "MIPI_DPHY_DCI" *) wire clk_rxp;
  wire clkoutphy_out;
  wire core_clk;
  wire core_rst;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IOSTANDARD = "MIPI_DPHY_DCI" *) wire [1:0]data_rxn;
  (* DIFF_TERM_ADV = "TERM_100" *) (* IOSTANDARD = "MIPI_DPHY_DCI" *) wire [1:0]data_rxp;
  wire dl0_enable;
  wire dl0_errcontrol;
  wire dl0_erresc;
  wire dl0_errsoths;
  wire dl0_errsotsynchs;
  wire dl0_errsyncesc;
  wire dl0_forcerxmode;
  wire dl0_rxactivehs;
  wire dl0_rxclkesc;
  wire [7:0]dl0_rxdataesc;
  wire [7:0]dl0_rxdatahs;
  wire dl0_rxlpdtesc;
  wire dl0_rxsynchs;
  wire [3:0]dl0_rxtriggeresc;
  wire dl0_rxulpsesc;
  wire dl0_rxvalidesc;
  wire dl0_rxvalidhs;
  wire dl0_stopstate;
  wire dl0_ulpsactivenot;
  wire dl1_enable;
  wire dl1_errcontrol;
  wire dl1_erresc;
  wire dl1_errsoths;
  wire dl1_errsotsynchs;
  wire dl1_errsyncesc;
  wire dl1_forcerxmode;
  wire dl1_rxactivehs;
  wire dl1_rxclkesc;
  wire [7:0]dl1_rxdataesc;
  wire [7:0]dl1_rxdatahs;
  wire dl1_rxlpdtesc;
  wire dl1_rxsynchs;
  wire [3:0]dl1_rxtriggeresc;
  wire dl1_rxulpsesc;
  wire dl1_rxvalidesc;
  wire dl1_rxvalidhs;
  wire dl1_stopstate;
  wire dl1_ulpsactivenot;
  wire init_done;
  wire pll_lock_out;
  wire rxbyteclkhs;
  wire system_rst_out;

  (* C_CAL_MODE = "FIXED" *) 
  (* C_DIV4_CLK_PERIOD = "28.571000" *) 
  (* C_DPHY_LANES = "2" *) 
  (* C_DPHY_MODE = "SLAVE" *) 
  (* C_EN_DEBUG_REGS = "0" *) 
  (* C_EN_REG_IF = "0" *) 
  (* C_EN_SSC = "0" *) 
  (* C_EN_TIMEOUT_REGS = "0" *) 
  (* C_ESC_CLK_PERIOD = "50.000000" *) 
  (* C_ESC_TIMEOUT = "25600" *) 
  (* C_EXAMPLE_SIMULATION = "false" *) 
  (* C_HS_LINE_RATE = "280" *) 
  (* C_HS_TIMEOUT = "65541" *) 
  (* C_IDLY_TAP = "0" *) 
  (* C_LPX_PERIOD = "50" *) 
  (* C_RCVE_DESKEW_SEQ = "false" *) 
  (* C_SKEWCAL_FIRST_TIME = "4096" *) 
  (* C_SKEWCAL_PERIODIC_TIME = "128" *) 
  (* C_STABLE_CLK_PERIOD = "5.000000" *) 
  (* C_TXPLL_CLKIN_PERIOD = "8.000000" *) 
  (* C_WAKEUP = "1000000" *) 
  (* C_XMIT_FIRST_DESKEW_SEQ = "false" *) 
  (* C_XMIT_PERIODIC_DESKEW_SEQ = "false" *) 
  (* DPHY_PRESET = "CSI2RX_XLNX" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* MTBF_SYNC_STAGES = "3" *) 
  (* SUPPORT_LEVEL = "1" *) 
  bd_91b0_phy_0_bd_91b0_phy_0_core inst
       (.cl_enable(cl_enable),
        .cl_rxclkactivehs(cl_rxclkactivehs),
        .cl_rxulpsclknot(cl_rxulpsclknot),
        .cl_stopstate(cl_stopstate),
        .cl_ulpsactivenot(cl_ulpsactivenot),
        .clk_rxn(clk_rxn),
        .clk_rxp(clk_rxp),
        .clkoutphy_out(clkoutphy_out),
        .core_clk(core_clk),
        .core_rst(core_rst),
        .data_rxn(data_rxn),
        .data_rxp(data_rxp),
        .dl0_enable(dl0_enable),
        .dl0_errcontrol(dl0_errcontrol),
        .dl0_erresc(dl0_erresc),
        .dl0_errsoths(dl0_errsoths),
        .dl0_errsotsynchs(dl0_errsotsynchs),
        .dl0_errsyncesc(dl0_errsyncesc),
        .dl0_forcerxmode(dl0_forcerxmode),
        .dl0_rxactivehs(dl0_rxactivehs),
        .dl0_rxclkesc(dl0_rxclkesc),
        .dl0_rxdataesc(dl0_rxdataesc),
        .dl0_rxdatahs(dl0_rxdatahs),
        .dl0_rxlpdtesc(dl0_rxlpdtesc),
        .dl0_rxsynchs(dl0_rxsynchs),
        .dl0_rxtriggeresc(dl0_rxtriggeresc),
        .dl0_rxulpsesc(dl0_rxulpsesc),
        .dl0_rxvalidesc(dl0_rxvalidesc),
        .dl0_rxvalidhs(dl0_rxvalidhs),
        .dl0_stopstate(dl0_stopstate),
        .dl0_ulpsactivenot(dl0_ulpsactivenot),
        .dl1_enable(dl1_enable),
        .dl1_errcontrol(dl1_errcontrol),
        .dl1_erresc(dl1_erresc),
        .dl1_errsoths(dl1_errsoths),
        .dl1_errsotsynchs(dl1_errsotsynchs),
        .dl1_errsyncesc(dl1_errsyncesc),
        .dl1_forcerxmode(dl1_forcerxmode),
        .dl1_rxactivehs(dl1_rxactivehs),
        .dl1_rxclkesc(dl1_rxclkesc),
        .dl1_rxdataesc(dl1_rxdataesc),
        .dl1_rxdatahs(dl1_rxdatahs),
        .dl1_rxlpdtesc(dl1_rxlpdtesc),
        .dl1_rxsynchs(dl1_rxsynchs),
        .dl1_rxtriggeresc(dl1_rxtriggeresc),
        .dl1_rxulpsesc(dl1_rxulpsesc),
        .dl1_rxvalidesc(dl1_rxvalidesc),
        .dl1_rxvalidhs(dl1_rxvalidhs),
        .dl1_stopstate(dl1_stopstate),
        .dl1_ulpsactivenot(dl1_ulpsactivenot),
        .init_done(init_done),
        .pll_lock_out(pll_lock_out),
        .rxbyteclkhs(rxbyteclkhs),
        .system_rst_out(system_rst_out));
endmodule

(* ORIG_REF_NAME = "bd_91b0_phy_0_c1" *) 
module bd_91b0_phy_0_bd_91b0_phy_0_c1
   (system_rst_out,
    init_done,
    dl0_rxdatahs,
    dl0_rxvalidhs,
    dl0_rxactivehs,
    dl0_rxsynchs,
    dl0_stopstate,
    dl0_errsoths,
    dl0_errsotsynchs,
    dl1_rxdatahs,
    dl1_rxvalidhs,
    dl1_rxactivehs,
    dl1_rxsynchs,
    dl1_stopstate,
    dl1_errsoths,
    dl1_errsotsynchs,
    cl_rxclkactivehs,
    cl_stopstate,
    rxbyteclkhs,
    clkoutphy_out,
    pll_lock_out,
    core_rst,
    core_clk,
    cl_enable,
    clk_rxp,
    clk_rxn,
    data_rxp,
    data_rxn);
  output system_rst_out;
  output init_done;
  output [7:0]dl0_rxdatahs;
  output dl0_rxvalidhs;
  output dl0_rxactivehs;
  output dl0_rxsynchs;
  output dl0_stopstate;
  output dl0_errsoths;
  output dl0_errsotsynchs;
  output [7:0]dl1_rxdatahs;
  output dl1_rxvalidhs;
  output dl1_rxactivehs;
  output dl1_rxsynchs;
  output dl1_stopstate;
  output dl1_errsoths;
  output dl1_errsotsynchs;
  output cl_rxclkactivehs;
  output cl_stopstate;
  output rxbyteclkhs;
  output clkoutphy_out;
  output pll_lock_out;
  input core_rst;
  input core_clk;
  input cl_enable;
  input clk_rxp;
  input clk_rxn;
  input [1:0]data_rxp;
  input [1:0]data_rxn;

  wire cl_enable;
  wire cl_rxclkactivehs;
  wire cl_stopstate;
  wire clk_rxn;
  wire clk_rxp;
  wire clkoutphy_out;
  wire core_clk;
  wire core_rst;
  wire [1:0]data_rxn;
  wire [1:0]data_rxp;
  wire dl0_errsoths;
  wire dl0_errsotsynchs;
  wire dl0_rxactivehs;
  wire [7:0]dl0_rxdatahs;
  wire dl0_rxsynchs;
  wire dl0_rxvalidhs;
  wire dl0_stopstate;
  wire dl1_errsoths;
  wire dl1_errsotsynchs;
  wire dl1_rxactivehs;
  wire [7:0]dl1_rxdatahs;
  wire dl1_rxsynchs;
  wire dl1_rxvalidhs;
  wire dl1_stopstate;
  wire init_done;
  wire pll_lock_out;
  wire rxbyteclkhs;
  wire system_rst_out;

  bd_91b0_phy_0_bd_91b0_phy_0_support bd_91b0_phy_0_rx_support_i
       (.cl_enable(cl_enable),
        .cl_rxclkactivehs(cl_rxclkactivehs),
        .cl_stopstate(cl_stopstate),
        .clk_rxn(clk_rxn),
        .clk_rxp(clk_rxp),
        .clkoutphy_out(clkoutphy_out),
        .core_clk(core_clk),
        .core_rst(core_rst),
        .data_rxn(data_rxn),
        .data_rxp(data_rxp),
        .dl0_errsoths(dl0_errsoths),
        .dl0_errsotsynchs(dl0_errsotsynchs),
        .dl0_rxactivehs(dl0_rxactivehs),
        .dl0_rxdatahs(dl0_rxdatahs),
        .dl0_rxsynchs(dl0_rxsynchs),
        .dl0_rxvalidhs(dl0_rxvalidhs),
        .dl0_stopstate(dl0_stopstate),
        .dl1_errsoths(dl1_errsoths),
        .dl1_errsotsynchs(dl1_errsotsynchs),
        .dl1_rxactivehs(dl1_rxactivehs),
        .dl1_rxdatahs(dl1_rxdatahs),
        .dl1_rxsynchs(dl1_rxsynchs),
        .dl1_rxvalidhs(dl1_rxvalidhs),
        .dl1_stopstate(dl1_stopstate),
        .init_done(init_done),
        .pll_lock_out(pll_lock_out),
        .rxbyteclkhs(rxbyteclkhs),
        .system_rst_out(system_rst_out));
endmodule

(* C_CAL_MODE = "FIXED" *) (* C_DIV4_CLK_PERIOD = "28.571000" *) (* C_DPHY_LANES = "2" *) 
(* C_DPHY_MODE = "SLAVE" *) (* C_EN_DEBUG_REGS = "0" *) (* C_EN_REG_IF = "0" *) 
(* C_EN_SSC = "0" *) (* C_EN_TIMEOUT_REGS = "0" *) (* C_ESC_CLK_PERIOD = "50.000000" *) 
(* C_ESC_TIMEOUT = "25600" *) (* C_EXAMPLE_SIMULATION = "false" *) (* C_HS_LINE_RATE = "280" *) 
(* C_HS_TIMEOUT = "65541" *) (* C_IDLY_TAP = "0" *) (* C_LPX_PERIOD = "50" *) 
(* C_RCVE_DESKEW_SEQ = "false" *) (* C_SKEWCAL_FIRST_TIME = "4096" *) (* C_SKEWCAL_PERIODIC_TIME = "128" *) 
(* C_STABLE_CLK_PERIOD = "5.000000" *) (* C_TXPLL_CLKIN_PERIOD = "8.000000" *) (* C_WAKEUP = "1000000" *) 
(* C_XMIT_FIRST_DESKEW_SEQ = "false" *) (* C_XMIT_PERIODIC_DESKEW_SEQ = "false" *) (* DPHY_PRESET = "CSI2RX_XLNX" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* MTBF_SYNC_STAGES = "3" *) (* ORIG_REF_NAME = "bd_91b0_phy_0_core" *) 
(* SUPPORT_LEVEL = "1" *) 
module bd_91b0_phy_0_bd_91b0_phy_0_core
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

  wire \<const0> ;
  wire \<const1> ;
  wire cl_enable;
  wire cl_rxclkactivehs;
  wire cl_stopstate;
  wire clk_rxn;
  wire clk_rxp;
  wire clkoutphy_out;
  wire core_clk;
  wire core_rst;
  wire [1:0]data_rxn;
  wire [1:0]data_rxp;
  wire dl0_errsoths;
  wire dl0_errsotsynchs;
  wire dl0_rxactivehs;
  wire [7:0]dl0_rxdatahs;
  wire dl0_rxsynchs;
  wire dl0_rxvalidhs;
  wire dl0_stopstate;
  wire dl1_errsoths;
  wire dl1_errsotsynchs;
  wire dl1_rxactivehs;
  wire [7:0]dl1_rxdatahs;
  wire dl1_rxsynchs;
  wire dl1_rxvalidhs;
  wire dl1_stopstate;
  wire init_done;
  wire pll_lock_out;
  wire rxbyteclkhs;
  wire system_rst_out;

  assign cl_rxulpsclknot = \<const1> ;
  assign cl_ulpsactivenot = \<const1> ;
  assign dl0_errcontrol = \<const0> ;
  assign dl0_erresc = \<const0> ;
  assign dl0_errsyncesc = \<const0> ;
  assign dl0_rxclkesc = \<const0> ;
  assign dl0_rxdataesc[7] = \<const0> ;
  assign dl0_rxdataesc[6] = \<const0> ;
  assign dl0_rxdataesc[5] = \<const0> ;
  assign dl0_rxdataesc[4] = \<const0> ;
  assign dl0_rxdataesc[3] = \<const0> ;
  assign dl0_rxdataesc[2] = \<const0> ;
  assign dl0_rxdataesc[1] = \<const0> ;
  assign dl0_rxdataesc[0] = \<const0> ;
  assign dl0_rxlpdtesc = \<const0> ;
  assign dl0_rxtriggeresc[3] = \<const0> ;
  assign dl0_rxtriggeresc[2] = \<const0> ;
  assign dl0_rxtriggeresc[1] = \<const0> ;
  assign dl0_rxtriggeresc[0] = \<const0> ;
  assign dl0_rxulpsesc = \<const0> ;
  assign dl0_rxvalidesc = \<const0> ;
  assign dl0_ulpsactivenot = \<const1> ;
  assign dl1_errcontrol = \<const0> ;
  assign dl1_erresc = \<const0> ;
  assign dl1_errsyncesc = \<const0> ;
  assign dl1_rxclkesc = \<const0> ;
  assign dl1_rxdataesc[7] = \<const0> ;
  assign dl1_rxdataesc[6] = \<const0> ;
  assign dl1_rxdataesc[5] = \<const0> ;
  assign dl1_rxdataesc[4] = \<const0> ;
  assign dl1_rxdataesc[3] = \<const0> ;
  assign dl1_rxdataesc[2] = \<const0> ;
  assign dl1_rxdataesc[1] = \<const0> ;
  assign dl1_rxdataesc[0] = \<const0> ;
  assign dl1_rxlpdtesc = \<const0> ;
  assign dl1_rxtriggeresc[3] = \<const0> ;
  assign dl1_rxtriggeresc[2] = \<const0> ;
  assign dl1_rxtriggeresc[1] = \<const0> ;
  assign dl1_rxtriggeresc[0] = \<const0> ;
  assign dl1_rxulpsesc = \<const0> ;
  assign dl1_rxvalidesc = \<const0> ;
  assign dl1_ulpsactivenot = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  bd_91b0_phy_0_bd_91b0_phy_0_c1 inst
       (.cl_enable(cl_enable),
        .cl_rxclkactivehs(cl_rxclkactivehs),
        .cl_stopstate(cl_stopstate),
        .clk_rxn(clk_rxn),
        .clk_rxp(clk_rxp),
        .clkoutphy_out(clkoutphy_out),
        .core_clk(core_clk),
        .core_rst(core_rst),
        .data_rxn(data_rxn),
        .data_rxp(data_rxp),
        .dl0_errsoths(dl0_errsoths),
        .dl0_errsotsynchs(dl0_errsotsynchs),
        .dl0_rxactivehs(dl0_rxactivehs),
        .dl0_rxdatahs(dl0_rxdatahs),
        .dl0_rxsynchs(dl0_rxsynchs),
        .dl0_rxvalidhs(dl0_rxvalidhs),
        .dl0_stopstate(dl0_stopstate),
        .dl1_errsoths(dl1_errsoths),
        .dl1_errsotsynchs(dl1_errsotsynchs),
        .dl1_rxactivehs(dl1_rxactivehs),
        .dl1_rxdatahs(dl1_rxdatahs),
        .dl1_rxsynchs(dl1_rxsynchs),
        .dl1_rxvalidhs(dl1_rxvalidhs),
        .dl1_stopstate(dl1_stopstate),
        .init_done(init_done),
        .pll_lock_out(pll_lock_out),
        .rxbyteclkhs(rxbyteclkhs),
        .system_rst_out(system_rst_out));
endmodule

(* CHECK_LICENSE_TYPE = "bd_91b0_phy_0_hssio_rx,bd_91b0_phy_0_hssio_rx_high_speed_selectio_wiz_v3_6_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_91b0_phy_0_hssio_rx" *) 
(* X_CORE_INFO = "bd_91b0_phy_0_hssio_rx_high_speed_selectio_wiz_v3_6_0,Vivado 2020.1" *) 
module bd_91b0_phy_0_bd_91b0_phy_0_hssio_rx
   (hs_rx_disable,
    lp_rx_disable,
    lp_rx_o_p,
    lp_rx_o_n,
    fifo_rd_clk_0,
    fifo_rd_clk_1,
    fifo_rd_clk_2,
    fifo_rd_clk_3,
    fifo_rd_clk_4,
    fifo_rd_clk_5,
    fifo_rd_en_0,
    fifo_rd_en_1,
    fifo_rd_en_2,
    fifo_rd_en_3,
    fifo_rd_en_4,
    fifo_rd_en_5,
    fifo_empty_0,
    fifo_empty_1,
    fifo_empty_2,
    fifo_empty_3,
    fifo_empty_4,
    fifo_empty_5,
    fifo_wr_clk_0,
    vtc_rdy_bsc0,
    en_vtc_bsc0,
    dly_rdy_bsc0,
    rst_seq_done,
    shared_pll0_clkoutphy_out,
    pll0_clkout0,
    rst,
    bs_rst_dphy_in,
    clk,
    riu_clk,
    pll0_locked,
    clk_rxp,
    data_to_fabric_clk_rxp,
    clk_rxn,
    data_to_fabric_clk_rxn,
    data_rxp0,
    data_to_fabric_data_rxp0,
    data_rxn0,
    data_to_fabric_data_rxn0,
    data_rxp1,
    data_to_fabric_data_rxp1,
    data_rxn1,
    data_to_fabric_data_rxn1);
  input [2:0]hs_rx_disable;
  input [2:0]lp_rx_disable;
  output [2:0]lp_rx_o_p;
  output [2:0]lp_rx_o_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_clk_0" *) input fifo_rd_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_clk_1" *) input fifo_rd_clk_1;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_clk_2" *) input fifo_rd_clk_2;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_clk_3" *) input fifo_rd_clk_3;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_clk_4" *) input fifo_rd_clk_4;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_clk_5" *) input fifo_rd_clk_5;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_en_0" *) input fifo_rd_en_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_en_1" *) input fifo_rd_en_1;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_en_2" *) input fifo_rd_en_2;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_en_3" *) input fifo_rd_en_3;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_en_4" *) input fifo_rd_en_4;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_rd_en_5" *) input fifo_rd_en_5;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_empty_0" *) output fifo_empty_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_empty_1" *) output fifo_empty_1;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_empty_2" *) output fifo_empty_2;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_empty_3" *) output fifo_empty_3;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_empty_4" *) output fifo_empty_4;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_empty_5" *) output fifo_empty_5;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL fifo_wr_clk_0" *) output fifo_wr_clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL vtc_rdy_bsc0" *) output vtc_rdy_bsc0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL en_vtc_bsc0" *) input en_vtc_bsc0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL dly_rdy_bsc0" *) output dly_rdy_bsc0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL rst_seq_done" *) output rst_seq_done;
  output shared_pll0_clkoutphy_out;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL pll0_clkout0" *) output pll0_clkout0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input rst;
  input bs_rst_dphy_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL riu_clk" *) input riu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ctrl:1.0 HSSIO_CTRL pll0_locked" *) output pll0_locked;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_data_rx:1.0 xiphy_rx_pins pin0" *) input clk_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ip_to_pins:1.0 data_to_fabric ip_to_pins_0" *) output [7:0]data_to_fabric_clk_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_data_rx:1.0 xiphy_rx_pins pin1" *) input clk_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ip_to_pins:1.0 data_to_fabric ip_to_pins_1" *) output [7:0]data_to_fabric_clk_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_data_rx:1.0 xiphy_rx_pins pin2" *) input data_rxp0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ip_to_pins:1.0 data_to_fabric ip_to_pins_2" *) output [7:0]data_to_fabric_data_rxp0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_data_rx:1.0 xiphy_rx_pins pin3" *) input data_rxn0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ip_to_pins:1.0 data_to_fabric ip_to_pins_3" *) output [7:0]data_to_fabric_data_rxn0;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_data_rx:1.0 xiphy_rx_pins pin4" *) input data_rxp1;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ip_to_pins:1.0 data_to_fabric ip_to_pins_4" *) output [7:0]data_to_fabric_data_rxp1;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_data_rx:1.0 xiphy_rx_pins pin5" *) input data_rxn1;
  (* X_INTERFACE_INFO = "xilinx.com:display_high_speed_selectio_wiz:hssio_ip_to_pins:1.0 data_to_fabric ip_to_pins_5" *) output [7:0]data_to_fabric_data_rxn1;

  wire bs_rst_dphy_in;
  wire clk;
  wire clk_rxn;
  wire clk_rxp;
  wire data_rxn0;
  wire data_rxn1;
  wire data_rxp0;
  wire data_rxp1;
  wire [7:0]data_to_fabric_clk_rxn;
  wire [7:0]data_to_fabric_clk_rxp;
  wire [7:0]data_to_fabric_data_rxn0;
  wire [7:0]data_to_fabric_data_rxn1;
  wire [7:0]data_to_fabric_data_rxp0;
  wire [7:0]data_to_fabric_data_rxp1;
  wire dly_rdy_bsc0;
  wire en_vtc_bsc0;
  wire fifo_empty_0;
  wire fifo_empty_1;
  wire fifo_empty_2;
  wire fifo_empty_3;
  wire fifo_empty_4;
  wire fifo_empty_5;
  wire fifo_rd_clk_0;
  wire fifo_rd_clk_1;
  wire fifo_rd_clk_2;
  wire fifo_rd_clk_3;
  wire fifo_rd_clk_4;
  wire fifo_rd_clk_5;
  wire fifo_rd_en_0;
  wire fifo_rd_en_1;
  wire fifo_rd_en_2;
  wire fifo_rd_en_3;
  wire fifo_rd_en_4;
  wire fifo_rd_en_5;
  wire fifo_wr_clk_0;
  wire [2:0]hs_rx_disable;
  wire [2:0]lp_rx_disable;
  wire [2:0]lp_rx_o_n;
  wire [2:0]lp_rx_o_p;
  wire pll0_clkout0;
  wire pll0_locked;
  wire riu_clk;
  wire rst;
  wire rst_seq_done;
  wire shared_pll0_clkoutphy_out;
  wire vtc_rdy_bsc0;
  wire NLW_inst_bitslip_error_0_UNCONNECTED;
  wire NLW_inst_bitslip_error_1_UNCONNECTED;
  wire NLW_inst_bitslip_error_10_UNCONNECTED;
  wire NLW_inst_bitslip_error_11_UNCONNECTED;
  wire NLW_inst_bitslip_error_12_UNCONNECTED;
  wire NLW_inst_bitslip_error_13_UNCONNECTED;
  wire NLW_inst_bitslip_error_14_UNCONNECTED;
  wire NLW_inst_bitslip_error_15_UNCONNECTED;
  wire NLW_inst_bitslip_error_16_UNCONNECTED;
  wire NLW_inst_bitslip_error_17_UNCONNECTED;
  wire NLW_inst_bitslip_error_18_UNCONNECTED;
  wire NLW_inst_bitslip_error_19_UNCONNECTED;
  wire NLW_inst_bitslip_error_2_UNCONNECTED;
  wire NLW_inst_bitslip_error_20_UNCONNECTED;
  wire NLW_inst_bitslip_error_21_UNCONNECTED;
  wire NLW_inst_bitslip_error_22_UNCONNECTED;
  wire NLW_inst_bitslip_error_23_UNCONNECTED;
  wire NLW_inst_bitslip_error_24_UNCONNECTED;
  wire NLW_inst_bitslip_error_25_UNCONNECTED;
  wire NLW_inst_bitslip_error_26_UNCONNECTED;
  wire NLW_inst_bitslip_error_27_UNCONNECTED;
  wire NLW_inst_bitslip_error_28_UNCONNECTED;
  wire NLW_inst_bitslip_error_29_UNCONNECTED;
  wire NLW_inst_bitslip_error_3_UNCONNECTED;
  wire NLW_inst_bitslip_error_30_UNCONNECTED;
  wire NLW_inst_bitslip_error_31_UNCONNECTED;
  wire NLW_inst_bitslip_error_32_UNCONNECTED;
  wire NLW_inst_bitslip_error_33_UNCONNECTED;
  wire NLW_inst_bitslip_error_34_UNCONNECTED;
  wire NLW_inst_bitslip_error_35_UNCONNECTED;
  wire NLW_inst_bitslip_error_36_UNCONNECTED;
  wire NLW_inst_bitslip_error_37_UNCONNECTED;
  wire NLW_inst_bitslip_error_38_UNCONNECTED;
  wire NLW_inst_bitslip_error_39_UNCONNECTED;
  wire NLW_inst_bitslip_error_4_UNCONNECTED;
  wire NLW_inst_bitslip_error_40_UNCONNECTED;
  wire NLW_inst_bitslip_error_41_UNCONNECTED;
  wire NLW_inst_bitslip_error_42_UNCONNECTED;
  wire NLW_inst_bitslip_error_43_UNCONNECTED;
  wire NLW_inst_bitslip_error_44_UNCONNECTED;
  wire NLW_inst_bitslip_error_45_UNCONNECTED;
  wire NLW_inst_bitslip_error_46_UNCONNECTED;
  wire NLW_inst_bitslip_error_47_UNCONNECTED;
  wire NLW_inst_bitslip_error_48_UNCONNECTED;
  wire NLW_inst_bitslip_error_49_UNCONNECTED;
  wire NLW_inst_bitslip_error_5_UNCONNECTED;
  wire NLW_inst_bitslip_error_50_UNCONNECTED;
  wire NLW_inst_bitslip_error_51_UNCONNECTED;
  wire NLW_inst_bitslip_error_6_UNCONNECTED;
  wire NLW_inst_bitslip_error_7_UNCONNECTED;
  wire NLW_inst_bitslip_error_8_UNCONNECTED;
  wire NLW_inst_bitslip_error_9_UNCONNECTED;
  wire NLW_inst_clk_from_ibuf_UNCONNECTED;
  wire NLW_inst_dly_rdy_bsc1_UNCONNECTED;
  wire NLW_inst_dly_rdy_bsc2_UNCONNECTED;
  wire NLW_inst_dly_rdy_bsc3_UNCONNECTED;
  wire NLW_inst_dly_rdy_bsc4_UNCONNECTED;
  wire NLW_inst_dly_rdy_bsc5_UNCONNECTED;
  wire NLW_inst_dly_rdy_bsc6_UNCONNECTED;
  wire NLW_inst_dly_rdy_bsc7_UNCONNECTED;
  wire NLW_inst_drdy_UNCONNECTED;
  wire NLW_inst_fifo_empty_10_UNCONNECTED;
  wire NLW_inst_fifo_empty_11_UNCONNECTED;
  wire NLW_inst_fifo_empty_12_UNCONNECTED;
  wire NLW_inst_fifo_empty_13_UNCONNECTED;
  wire NLW_inst_fifo_empty_14_UNCONNECTED;
  wire NLW_inst_fifo_empty_15_UNCONNECTED;
  wire NLW_inst_fifo_empty_16_UNCONNECTED;
  wire NLW_inst_fifo_empty_17_UNCONNECTED;
  wire NLW_inst_fifo_empty_18_UNCONNECTED;
  wire NLW_inst_fifo_empty_19_UNCONNECTED;
  wire NLW_inst_fifo_empty_20_UNCONNECTED;
  wire NLW_inst_fifo_empty_21_UNCONNECTED;
  wire NLW_inst_fifo_empty_22_UNCONNECTED;
  wire NLW_inst_fifo_empty_23_UNCONNECTED;
  wire NLW_inst_fifo_empty_24_UNCONNECTED;
  wire NLW_inst_fifo_empty_25_UNCONNECTED;
  wire NLW_inst_fifo_empty_26_UNCONNECTED;
  wire NLW_inst_fifo_empty_27_UNCONNECTED;
  wire NLW_inst_fifo_empty_28_UNCONNECTED;
  wire NLW_inst_fifo_empty_29_UNCONNECTED;
  wire NLW_inst_fifo_empty_30_UNCONNECTED;
  wire NLW_inst_fifo_empty_31_UNCONNECTED;
  wire NLW_inst_fifo_empty_32_UNCONNECTED;
  wire NLW_inst_fifo_empty_33_UNCONNECTED;
  wire NLW_inst_fifo_empty_34_UNCONNECTED;
  wire NLW_inst_fifo_empty_35_UNCONNECTED;
  wire NLW_inst_fifo_empty_36_UNCONNECTED;
  wire NLW_inst_fifo_empty_37_UNCONNECTED;
  wire NLW_inst_fifo_empty_38_UNCONNECTED;
  wire NLW_inst_fifo_empty_39_UNCONNECTED;
  wire NLW_inst_fifo_empty_40_UNCONNECTED;
  wire NLW_inst_fifo_empty_41_UNCONNECTED;
  wire NLW_inst_fifo_empty_42_UNCONNECTED;
  wire NLW_inst_fifo_empty_43_UNCONNECTED;
  wire NLW_inst_fifo_empty_44_UNCONNECTED;
  wire NLW_inst_fifo_empty_45_UNCONNECTED;
  wire NLW_inst_fifo_empty_46_UNCONNECTED;
  wire NLW_inst_fifo_empty_47_UNCONNECTED;
  wire NLW_inst_fifo_empty_48_UNCONNECTED;
  wire NLW_inst_fifo_empty_49_UNCONNECTED;
  wire NLW_inst_fifo_empty_50_UNCONNECTED;
  wire NLW_inst_fifo_empty_51_UNCONNECTED;
  wire NLW_inst_fifo_empty_6_UNCONNECTED;
  wire NLW_inst_fifo_empty_7_UNCONNECTED;
  wire NLW_inst_fifo_empty_8_UNCONNECTED;
  wire NLW_inst_fifo_empty_9_UNCONNECTED;
  wire NLW_inst_fifo_rd_data_valid_UNCONNECTED;
  wire NLW_inst_fifo_wr_clk_13_UNCONNECTED;
  wire NLW_inst_fifo_wr_clk_19_UNCONNECTED;
  wire NLW_inst_fifo_wr_clk_26_UNCONNECTED;
  wire NLW_inst_fifo_wr_clk_32_UNCONNECTED;
  wire NLW_inst_fifo_wr_clk_39_UNCONNECTED;
  wire NLW_inst_fifo_wr_clk_45_UNCONNECTED;
  wire NLW_inst_fifo_wr_clk_6_UNCONNECTED;
  wire NLW_inst_intf_rdy_UNCONNECTED;
  wire NLW_inst_pll0_clkout1_UNCONNECTED;
  wire NLW_inst_pll1_clkout0_UNCONNECTED;
  wire NLW_inst_pll1_locked_UNCONNECTED;
  wire NLW_inst_riu_valid_bg0_UNCONNECTED;
  wire NLW_inst_riu_valid_bg0_bs0_UNCONNECTED;
  wire NLW_inst_riu_valid_bg0_bs1_UNCONNECTED;
  wire NLW_inst_riu_valid_bg1_UNCONNECTED;
  wire NLW_inst_riu_valid_bg1_bs2_UNCONNECTED;
  wire NLW_inst_riu_valid_bg1_bs3_UNCONNECTED;
  wire NLW_inst_riu_valid_bg2_UNCONNECTED;
  wire NLW_inst_riu_valid_bg2_bs4_UNCONNECTED;
  wire NLW_inst_riu_valid_bg2_bs5_UNCONNECTED;
  wire NLW_inst_riu_valid_bg3_UNCONNECTED;
  wire NLW_inst_riu_valid_bg3_bs6_UNCONNECTED;
  wire NLW_inst_riu_valid_bg3_bs7_UNCONNECTED;
  wire NLW_inst_rx_bitslip_sync_done_UNCONNECTED;
  wire NLW_inst_rxtx_bitslip_sync_done_UNCONNECTED;
  wire NLW_inst_shared_pll1_clkoutphy_out_UNCONNECTED;
  wire NLW_inst_vtc_rdy_bsc1_UNCONNECTED;
  wire NLW_inst_vtc_rdy_bsc2_UNCONNECTED;
  wire NLW_inst_vtc_rdy_bsc3_UNCONNECTED;
  wire NLW_inst_vtc_rdy_bsc4_UNCONNECTED;
  wire NLW_inst_vtc_rdy_bsc5_UNCONNECTED;
  wire NLW_inst_vtc_rdy_bsc6_UNCONNECTED;
  wire NLW_inst_vtc_rdy_bsc7_UNCONNECTED;
  wire [8:0]NLW_inst_bidir_tx_bs_tri_cntvalueout0_UNCONNECTED;
  wire [8:0]NLW_inst_bidir_tx_bs_tri_cntvalueout1_UNCONNECTED;
  wire [8:0]NLW_inst_bidir_tx_bs_tri_cntvalueout2_UNCONNECTED;
  wire [8:0]NLW_inst_bidir_tx_bs_tri_cntvalueout3_UNCONNECTED;
  wire [8:0]NLW_inst_bidir_tx_bs_tri_cntvalueout4_UNCONNECTED;
  wire [8:0]NLW_inst_bidir_tx_bs_tri_cntvalueout5_UNCONNECTED;
  wire [8:0]NLW_inst_bidir_tx_bs_tri_cntvalueout6_UNCONNECTED;
  wire [8:0]NLW_inst_bidir_tx_bs_tri_cntvalueout7_UNCONNECTED;
  wire [15:0]NLW_inst_do_out_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg0_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg0_bs0_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg0_bs1_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg1_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg1_bs2_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg1_bs3_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg2_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg2_bs4_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg2_bs5_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg3_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg3_bs6_UNCONNECTED;
  wire [15:0]NLW_inst_riu_rd_data_bg3_bs7_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_0_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_1_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_10_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_11_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_12_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_13_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_14_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_15_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_16_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_17_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_18_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_19_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_2_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_20_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_21_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_22_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_23_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_24_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_25_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_26_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_27_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_28_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_29_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_3_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_30_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_31_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_32_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_33_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_34_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_35_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_36_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_37_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_38_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_39_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_4_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_40_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_41_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_42_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_43_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_44_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_45_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_46_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_47_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_48_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_49_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_5_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_50_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_51_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_6_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_7_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_8_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_9_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_0_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_1_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_10_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_11_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_12_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_13_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_14_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_15_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_16_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_17_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_18_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_19_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_2_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_20_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_21_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_22_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_23_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_24_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_25_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_26_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_27_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_28_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_29_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_3_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_30_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_31_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_32_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_33_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_34_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_35_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_36_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_37_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_38_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_39_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_4_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_40_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_41_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_42_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_43_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_44_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_45_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_46_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_47_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_48_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_49_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_5_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_50_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_51_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_6_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_7_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_8_UNCONNECTED;
  wire [8:0]NLW_inst_rx_cntvalueout_ext_9_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_0_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_1_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_10_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_11_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_12_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_13_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_14_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_15_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_16_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_17_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_18_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_19_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_2_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_20_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_21_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_22_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_23_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_24_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_25_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_26_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_27_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_28_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_29_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_3_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_30_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_31_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_32_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_33_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_34_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_35_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_36_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_37_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_38_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_39_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_4_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_40_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_41_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_42_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_43_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_44_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_45_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_46_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_47_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_48_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_49_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_5_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_50_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_51_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_6_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_7_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_8_UNCONNECTED;
  wire [8:0]NLW_inst_tx_cntvalueout_9_UNCONNECTED;

  (* C_ALL_EN_PIN_INFO = "0 {nibble 0 dir RX sig_type DIFF data_strb Strobe data_strb_org Strobe sig_name clk_rxp loc G1} 1 {nibble 0 dir RX sig_type DIFF data_strb Strobe data_strb_org Strobe sig_name clk_rxn loc F1} 2 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxp0 loc E1} 3 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxn0 loc D1} 4 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxp1 loc F2} 5 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxn1 loc E2}" *) 
  (* C_ALL_RX_EN = "52'b0000000000000000000000000000000000000000000000111111" *) 
  (* C_BANK = "66" *) 
  (* C_BIDIR_BITSLICE_EN = "52'b0000000000000000000000000000000000000000000000000000" *) 
  (* C_BIDIR_FIFO_SYNC_MODE = "FALSE" *) 
  (* C_BIDIR_IS_RX_CLK_INVERTED = "1'b0" *) 
  (* C_BIDIR_IS_RX_RST_DLY_INVERTED = "1'b0" *) 
  (* C_BIDIR_IS_RX_RST_INVERTED = "1'b0" *) 
  (* C_BIDIR_IS_TX_CLK_INVERTED = "1'b0" *) 
  (* C_BIDIR_IS_TX_RST_DLY_INVERTED = "1'b0" *) 
  (* C_BIDIR_IS_TX_RST_INVERTED = "1'b0" *) 
  (* C_BIDIR_RX_DELAY_FORMAT = "TIME" *) 
  (* C_BIDIR_TX_DELAY_FORMAT = "TIME" *) 
  (* C_BITSLIP_MODE = "SLIP_PER_BIT" *) 
  (* C_BITSLIP_VAL = "8'b00101100" *) 
  (* C_BS0_INFO = "0 {name bg0_pin0_nc loc G1} 1 {name bg0_pin6_nc loc G3} 2 {name bg1_pin0_nc loc C1} 3 {name bg1_pin6_nc loc B4} 4 {name bg2_pin0_nc loc D7} 5 {name bg2_pin6_nc loc G8} 6 {name bg3_pin0_nc loc B5} 7 {name bg3_pin6_nc loc C8}" *) 
  (* C_BSC_CTRL_CLK = "EXTERNAL" *) 
  (* C_BSC_EN_DYN_ODLY_MODE = "FALSE" *) 
  (* C_BSC_IDLY_VT_TRACK = "TRUE" *) 
  (* C_BSC_ODLY_VT_TRACK = "TRUE" *) 
  (* C_BSC_QDLY_VT_TRACK = "TRUE" *) 
  (* C_BSC_READ_IDLE_COUNT = "6'b000000" *) 
  (* C_BSC_REFCLK_SRC = "PLLCLK" *) 
  (* C_BSC_ROUNDING_FACTOR = "16" *) 
  (* C_BSC_RXGATE_EXTEND = "FALSE" *) 
  (* C_BSC_RX_GATING = "DISABLE" *) 
  (* C_BSC_SELF_CALIBRATE = "ENABLE" *) 
  (* C_BSC_SIM_SPEEDUP = "FAST" *) 
  (* C_BS_INIT_VAL = "52'b0000000000000000000000000000000000000000000000000000" *) 
  (* C_CLKIN_DIFF_EN = "0" *) 
  (* C_CLKIN_PERIOD = "5.000000" *) 
  (* C_CLK_FWD = "0" *) 
  (* C_CLK_FWD_BITSLICE_NO = "0" *) 
  (* C_CLK_FWD_ENABLE = "52'b0000000000000000000000000000000000000000000000000000" *) 
  (* C_CLK_FWD_PHASE = "0" *) 
  (* C_CLK_SIG_TYPE = "SINGLE" *) 
  (* C_CLOCK_TRI = "1" *) 
  (* C_DATA_PIN_EN = "3" *) 
  (* C_DATA_TRI = "1" *) 
  (* C_DEVICE = "xczu3eg" *) 
  (* C_DEVICE_FAMILY = "zynquplus" *) 
  (* C_DIFFERENTIAL_IO_STD = "MIPI_DPHY_DCI" *) 
  (* C_DIFFERENTIAL_IO_TERMINATION = "TERM_100" *) 
  (* C_DIFF_EN = "52'b0000000000000000000000000000000000000000000000111111" *) 
  (* C_DIV_MODE = "DIV4" *) 
  (* C_ENABLE_BITSLIP = "0" *) 
  (* C_ENABLE_DATA_BITSLIP = "0" *) 
  (* C_ENABLE_N_PINS = "1" *) 
  (* C_ENABLE_PLL0_PLLOUT1 = "0" *) 
  (* C_ENABLE_PLL0_PLLOUTFB = "0" *) 
  (* C_ENABLE_RIU_INTERFACE = "0" *) 
  (* C_ENABLE_RIU_SPLIT = "0" *) 
  (* C_ENABLE_TX_TRI = "0" *) 
  (* C_EN_BIDIR = "0" *) 
  (* C_EN_BSC0 = "1" *) 
  (* C_EN_BSC1 = "0" *) 
  (* C_EN_BSC2 = "0" *) 
  (* C_EN_BSC3 = "0" *) 
  (* C_EN_BSC4 = "0" *) 
  (* C_EN_BSC5 = "0" *) 
  (* C_EN_BSC6 = "0" *) 
  (* C_EN_BSC7 = "0" *) 
  (* C_EN_MULTI_INTF_PORTS = "0" *) 
  (* C_EN_RIU_OR0 = "FALSE" *) 
  (* C_EN_RIU_OR1 = "FALSE" *) 
  (* C_EN_RIU_OR2 = "FALSE" *) 
  (* C_EN_RIU_OR3 = "FALSE" *) 
  (* C_EN_RX = "1" *) 
  (* C_EN_TX = "0" *) 
  (* C_EN_VTC = "0" *) 
  (* C_EXDES_BANK = "64_(HP)" *) 
  (* C_EX_CLK_FREQ = "200.000000" *) 
  (* C_EX_INST_GEN = "0" *) 
  (* C_FIFO_SYNC_MODE = "1" *) 
  (* C_GC_LOC = "21 {name IO_L11P_T1U_N8_GC_66 loc D4} 23 {name IO_L12P_T1U_N10_GC_66 loc C3} 28 {name IO_L14P_T2L_N2_GC_66 loc E5}" *) 
  (* C_INCLK_LOC = "NONE" *) 
  (* C_INCLK_PIN = "100" *) 
  (* C_INV_RX_CLK = "8'b00000000" *) 
  (* C_NIB0_BS0_EN = "0" *) 
  (* C_NIB0_EN_CLK_TO_EXT_NORTH = "1'b0" *) 
  (* C_NIB0_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
  (* C_NIB0_EN_OTHER_NCLK = "1'b0" *) 
  (* C_NIB0_EN_OTHER_PCLK = "1'b0" *) 
  (* C_NIB1_BS0_EN = "0" *) 
  (* C_NIB1_EN_CLK_TO_EXT_NORTH = "1'b0" *) 
  (* C_NIB1_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
  (* C_NIB1_EN_OTHER_NCLK = "1'b0" *) 
  (* C_NIB1_EN_OTHER_PCLK = "1'b0" *) 
  (* C_NIB2_BS0_EN = "0" *) 
  (* C_NIB2_EN_CLK_TO_EXT_NORTH = "1'b0" *) 
  (* C_NIB2_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
  (* C_NIB2_EN_OTHER_NCLK = "1'b0" *) 
  (* C_NIB2_EN_OTHER_PCLK = "1'b0" *) 
  (* C_NIB3_BS0_EN = "0" *) 
  (* C_NIB3_EN_CLK_TO_EXT_NORTH = "1'b0" *) 
  (* C_NIB3_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
  (* C_NIB3_EN_OTHER_NCLK = "1'b0" *) 
  (* C_NIB3_EN_OTHER_PCLK = "1'b0" *) 
  (* C_NIB4_BS0_EN = "0" *) 
  (* C_NIB4_EN_CLK_TO_EXT_NORTH = "1'b0" *) 
  (* C_NIB4_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
  (* C_NIB4_EN_OTHER_NCLK = "1'b0" *) 
  (* C_NIB4_EN_OTHER_PCLK = "1'b0" *) 
  (* C_NIB5_BS0_EN = "0" *) 
  (* C_NIB5_EN_CLK_TO_EXT_NORTH = "1'b0" *) 
  (* C_NIB5_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
  (* C_NIB5_EN_OTHER_NCLK = "1'b0" *) 
  (* C_NIB5_EN_OTHER_PCLK = "1'b0" *) 
  (* C_NIB6_BS0_EN = "0" *) 
  (* C_NIB6_EN_CLK_TO_EXT_NORTH = "1'b0" *) 
  (* C_NIB6_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
  (* C_NIB6_EN_OTHER_NCLK = "1'b0" *) 
  (* C_NIB6_EN_OTHER_PCLK = "1'b0" *) 
  (* C_NIB7_BS0_EN = "0" *) 
  (* C_NIB7_EN_CLK_TO_EXT_NORTH = "1'b0" *) 
  (* C_NIB7_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
  (* C_NIB7_EN_OTHER_NCLK = "1'b0" *) 
  (* C_NIB7_EN_OTHER_PCLK = "1'b0" *) 
  (* C_NIBBLE0_TRI = "0" *) 
  (* C_NIBBLE1_TRI = "0" *) 
  (* C_NIBBLE2_TRI = "0" *) 
  (* C_NIBBLE3_TRI = "0" *) 
  (* C_NIBBLE4_TRI = "0" *) 
  (* C_NIBBLE5_TRI = "0" *) 
  (* C_NIBBLE6_TRI = "0" *) 
  (* C_NIBBLE7_TRI = "0" *) 
  (* C_PIN_INFO = "0 {nibble 0 dir RX sig_type DIFF data_strb Strobe data_strb_org Strobe sig_name clk_rxp loc G1} 1 {nibble 0 dir RX sig_type DIFF data_strb Strobe data_strb_org Strobe sig_name clk_rxn loc F1} 2 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxp0 loc E1} 3 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxn0 loc D1} 4 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxp1 loc F2} 5 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxn1 loc E2}" *) 
  (* C_PLL0_CLK0_PHASE = "0.000000" *) 
  (* C_PLL0_CLK1_PHASE = "0.000000" *) 
  (* C_PLL0_CLKFBOUT_MULT = "15" *) 
  (* C_PLL0_CLKOUT1_DIVIDE = "1" *) 
  (* C_PLL0_CLKOUTPHY_MODE = "VCO" *) 
  (* C_PLL0_CLK_SOURCE = "BUFG_TO_PLL" *) 
  (* C_PLL0_DIVCLK_DIVIDE = "2" *) 
  (* C_PLL0_DIV_FACTOR = "1.000000" *) 
  (* C_PLL0_FIFO_WRITE_CLK_EN = "1" *) 
  (* C_PLL0_MMCM_CLKFBOUT_MULT_F = "7.875000" *) 
  (* C_PLL0_MMCM_CLKOUT0_DIVIDE_F = "7.875000" *) 
  (* C_PLL0_MMCM_DIVCLK_DIVIDE = "1" *) 
  (* C_PLL0_RX_EXTERNAL_CLK_TO_DATA = "3" *) 
  (* C_PLL1_CLK0_PHASE = "0.000000" *) 
  (* C_PLL1_CLK1_PHASE = "0.000000" *) 
  (* C_PLL1_CLKFBOUT_MULT = "15" *) 
  (* C_PLL1_CLKOUTPHY_MODE = "VCO" *) 
  (* C_PLL1_DIVCLK_DIVIDE = "2" *) 
  (* C_PLL1_DIV_FACTOR = "1.000000" *) 
  (* C_PLL_SHARING = "0" *) 
  (* C_PLL_VCOMIN = "750.000000" *) 
  (* C_REC_IN_FREQ = "93.750" *) 
  (* C_RX_BITSLICE0_EN = "8'b00000000" *) 
  (* C_RX_BITSLICE_EN = "52'b0000000000000000000000000000000000000000000000111111" *) 
  (* C_RX_DELAY_CASCADE = "0" *) 
  (* C_RX_DELAY_FORMAT = "TIME" *) 
  (* C_RX_DELAY_TYPE = "2'b00" *) 
  (* C_RX_DELAY_TYPE0 = "2'b00" *) 
  (* C_RX_DELAY_TYPE1 = "2'b00" *) 
  (* C_RX_DELAY_TYPE10 = "2'b00" *) 
  (* C_RX_DELAY_TYPE11 = "2'b00" *) 
  (* C_RX_DELAY_TYPE12 = "2'b00" *) 
  (* C_RX_DELAY_TYPE13 = "2'b00" *) 
  (* C_RX_DELAY_TYPE14 = "2'b00" *) 
  (* C_RX_DELAY_TYPE15 = "2'b00" *) 
  (* C_RX_DELAY_TYPE16 = "2'b00" *) 
  (* C_RX_DELAY_TYPE17 = "2'b00" *) 
  (* C_RX_DELAY_TYPE18 = "2'b00" *) 
  (* C_RX_DELAY_TYPE19 = "2'b00" *) 
  (* C_RX_DELAY_TYPE2 = "2'b00" *) 
  (* C_RX_DELAY_TYPE20 = "2'b00" *) 
  (* C_RX_DELAY_TYPE21 = "2'b00" *) 
  (* C_RX_DELAY_TYPE22 = "2'b00" *) 
  (* C_RX_DELAY_TYPE23 = "2'b00" *) 
  (* C_RX_DELAY_TYPE24 = "2'b00" *) 
  (* C_RX_DELAY_TYPE25 = "2'b00" *) 
  (* C_RX_DELAY_TYPE26 = "2'b00" *) 
  (* C_RX_DELAY_TYPE27 = "2'b00" *) 
  (* C_RX_DELAY_TYPE28 = "2'b00" *) 
  (* C_RX_DELAY_TYPE29 = "2'b00" *) 
  (* C_RX_DELAY_TYPE3 = "2'b00" *) 
  (* C_RX_DELAY_TYPE30 = "2'b00" *) 
  (* C_RX_DELAY_TYPE31 = "2'b00" *) 
  (* C_RX_DELAY_TYPE32 = "2'b00" *) 
  (* C_RX_DELAY_TYPE33 = "2'b00" *) 
  (* C_RX_DELAY_TYPE34 = "2'b00" *) 
  (* C_RX_DELAY_TYPE35 = "2'b00" *) 
  (* C_RX_DELAY_TYPE36 = "2'b00" *) 
  (* C_RX_DELAY_TYPE37 = "2'b00" *) 
  (* C_RX_DELAY_TYPE38 = "2'b00" *) 
  (* C_RX_DELAY_TYPE39 = "2'b00" *) 
  (* C_RX_DELAY_TYPE4 = "2'b00" *) 
  (* C_RX_DELAY_TYPE40 = "2'b00" *) 
  (* C_RX_DELAY_TYPE41 = "2'b00" *) 
  (* C_RX_DELAY_TYPE42 = "2'b00" *) 
  (* C_RX_DELAY_TYPE43 = "2'b00" *) 
  (* C_RX_DELAY_TYPE44 = "2'b00" *) 
  (* C_RX_DELAY_TYPE45 = "2'b00" *) 
  (* C_RX_DELAY_TYPE46 = "2'b00" *) 
  (* C_RX_DELAY_TYPE47 = "2'b00" *) 
  (* C_RX_DELAY_TYPE48 = "2'b00" *) 
  (* C_RX_DELAY_TYPE49 = "2'b00" *) 
  (* C_RX_DELAY_TYPE5 = "2'b00" *) 
  (* C_RX_DELAY_TYPE50 = "2'b00" *) 
  (* C_RX_DELAY_TYPE51 = "2'b00" *) 
  (* C_RX_DELAY_TYPE6 = "2'b00" *) 
  (* C_RX_DELAY_TYPE7 = "2'b00" *) 
  (* C_RX_DELAY_TYPE8 = "2'b00" *) 
  (* C_RX_DELAY_TYPE9 = "2'b00" *) 
  (* C_RX_DELAY_VALUE = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE0 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE1 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE10 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE11 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE12 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE13 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE14 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE15 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE16 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE17 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE18 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE19 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE2 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE20 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE21 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE22 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE23 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE24 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE25 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE26 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE27 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE28 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE29 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE3 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE30 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE31 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE32 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE33 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE34 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE35 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE36 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE37 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE38 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE39 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE4 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE40 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE41 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE42 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE43 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE44 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE45 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE46 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE47 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE48 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE49 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE5 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE50 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE51 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE6 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE7 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE8 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE9 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT0 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT1 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT10 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT11 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT12 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT13 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT14 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT15 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT16 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT17 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT18 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT19 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT2 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT20 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT21 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT22 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT23 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT24 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT25 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT26 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT27 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT28 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT29 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT3 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT30 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT31 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT32 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT33 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT34 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT35 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT36 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT37 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT38 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT39 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT4 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT40 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT41 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT42 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT43 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT44 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT45 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT46 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT47 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT48 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT49 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT5 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT50 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT51 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT6 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT7 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT8 = "12'b000000000000" *) 
  (* C_RX_DELAY_VALUE_EXT9 = "12'b000000000000" *) 
  (* C_RX_EQUALIZATION_D = "EQ_NONE" *) 
  (* C_RX_EQUALIZATION_S = "NONE" *) 
  (* C_RX_FIFO_SYNC_MODE = "FALSE" *) 
  (* C_RX_IS_CLK_EXT_INVERTED = "1'b0" *) 
  (* C_RX_IS_CLK_INVERTED = "1'b0" *) 
  (* C_RX_IS_RST_DLY_EXT_INVERTED = "1'b0" *) 
  (* C_RX_IS_RST_DLY_INVERTED = "1'b0" *) 
  (* C_RX_IS_RST_INVERTED = "1'b0" *) 
  (* C_RX_PIN_EN = "52'b0000000000000000000000000000000000000000000000010101" *) 
  (* C_RX_REFCLK_FREQ = "1500.000000" *) 
  (* C_RX_STROBE_EN = "16'b0000000000000011" *) 
  (* C_SERIALIZATION_FACTOR = "8" *) 
  (* C_SERIAL_MODE = "FALSE" *) 
  (* C_SIM_DEVICE = "ULTRASCALE_PLUS_ES1" *) 
  (* C_SIM_VERSION = "2.000000" *) 
  (* C_SINGLE_ENDED_IO_STD = "NONE" *) 
  (* C_SINGLE_ENDED_IO_TERMINATION = "NONE" *) 
  (* C_STRB_INFO = "5 99 5 5 5 5 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99" *) 
  (* C_TEMPLATE = "2" *) 
  (* C_TX_BITSLICE_EN = "52'b0000000000000000000000000000000000000000000000000000" *) 
  (* C_TX_DATA_PHASE = "0" *) 
  (* C_TX_DELAY_FORMAT = "TIME" *) 
  (* C_TX_DELAY_TYPE = "0" *) 
  (* C_TX_DELAY_TYPE0 = "2'b00" *) 
  (* C_TX_DELAY_TYPE1 = "2'b00" *) 
  (* C_TX_DELAY_TYPE10 = "2'b00" *) 
  (* C_TX_DELAY_TYPE11 = "2'b00" *) 
  (* C_TX_DELAY_TYPE12 = "2'b00" *) 
  (* C_TX_DELAY_TYPE13 = "2'b00" *) 
  (* C_TX_DELAY_TYPE14 = "2'b00" *) 
  (* C_TX_DELAY_TYPE15 = "2'b00" *) 
  (* C_TX_DELAY_TYPE16 = "2'b00" *) 
  (* C_TX_DELAY_TYPE17 = "2'b00" *) 
  (* C_TX_DELAY_TYPE18 = "2'b00" *) 
  (* C_TX_DELAY_TYPE19 = "2'b00" *) 
  (* C_TX_DELAY_TYPE2 = "2'b00" *) 
  (* C_TX_DELAY_TYPE20 = "2'b00" *) 
  (* C_TX_DELAY_TYPE21 = "2'b00" *) 
  (* C_TX_DELAY_TYPE22 = "2'b00" *) 
  (* C_TX_DELAY_TYPE23 = "2'b00" *) 
  (* C_TX_DELAY_TYPE24 = "2'b00" *) 
  (* C_TX_DELAY_TYPE25 = "2'b00" *) 
  (* C_TX_DELAY_TYPE26 = "2'b00" *) 
  (* C_TX_DELAY_TYPE27 = "2'b00" *) 
  (* C_TX_DELAY_TYPE28 = "2'b00" *) 
  (* C_TX_DELAY_TYPE29 = "2'b00" *) 
  (* C_TX_DELAY_TYPE3 = "2'b00" *) 
  (* C_TX_DELAY_TYPE30 = "2'b00" *) 
  (* C_TX_DELAY_TYPE31 = "2'b00" *) 
  (* C_TX_DELAY_TYPE32 = "2'b00" *) 
  (* C_TX_DELAY_TYPE33 = "2'b00" *) 
  (* C_TX_DELAY_TYPE34 = "2'b00" *) 
  (* C_TX_DELAY_TYPE35 = "2'b00" *) 
  (* C_TX_DELAY_TYPE36 = "2'b00" *) 
  (* C_TX_DELAY_TYPE37 = "2'b00" *) 
  (* C_TX_DELAY_TYPE38 = "2'b00" *) 
  (* C_TX_DELAY_TYPE39 = "2'b00" *) 
  (* C_TX_DELAY_TYPE4 = "2'b00" *) 
  (* C_TX_DELAY_TYPE40 = "2'b00" *) 
  (* C_TX_DELAY_TYPE41 = "2'b00" *) 
  (* C_TX_DELAY_TYPE42 = "2'b00" *) 
  (* C_TX_DELAY_TYPE43 = "2'b00" *) 
  (* C_TX_DELAY_TYPE44 = "2'b00" *) 
  (* C_TX_DELAY_TYPE45 = "2'b00" *) 
  (* C_TX_DELAY_TYPE46 = "2'b00" *) 
  (* C_TX_DELAY_TYPE47 = "2'b00" *) 
  (* C_TX_DELAY_TYPE48 = "2'b00" *) 
  (* C_TX_DELAY_TYPE49 = "2'b00" *) 
  (* C_TX_DELAY_TYPE5 = "2'b00" *) 
  (* C_TX_DELAY_TYPE50 = "2'b00" *) 
  (* C_TX_DELAY_TYPE51 = "2'b00" *) 
  (* C_TX_DELAY_TYPE6 = "2'b00" *) 
  (* C_TX_DELAY_TYPE7 = "2'b00" *) 
  (* C_TX_DELAY_TYPE8 = "2'b00" *) 
  (* C_TX_DELAY_TYPE9 = "2'b00" *) 
  (* C_TX_DELAY_VALUE = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE0 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE1 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE10 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE11 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE12 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE13 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE14 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE15 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE16 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE17 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE18 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE19 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE2 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE20 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE21 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE22 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE23 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE24 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE25 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE26 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE27 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE28 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE29 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE3 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE30 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE31 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE32 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE33 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE34 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE35 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE36 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE37 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE38 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE39 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE4 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE40 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE41 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE42 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE43 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE44 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE45 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE46 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE47 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE48 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE49 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE5 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE50 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE51 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE6 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE7 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE8 = "12'b000000000000" *) 
  (* C_TX_DELAY_VALUE9 = "12'b000000000000" *) 
  (* C_TX_DRIVE_D = "NONE" *) 
  (* C_TX_DRIVE_S = "NONE" *) 
  (* C_TX_IS_CLK_INVERTED = "1'b0" *) 
  (* C_TX_IS_RST_DLY_INVERTED = "1'b0" *) 
  (* C_TX_IS_RST_INVERTED = "1'b0" *) 
  (* C_TX_NATIVE_ODELAY_BYPASS = "FALSE" *) 
  (* C_TX_PRE_EMPHASIS_D = "NONE" *) 
  (* C_TX_PRE_EMPHASIS_S = "NONE" *) 
  (* C_TX_REFCLK_FREQ = "1500.000000" *) 
  (* C_TX_SLEW_D = "NONE" *) 
  (* C_TX_SLEW_S = "NONE" *) 
  (* C_TX_TRI_DELAY_FORMAT = "TIME" *) 
  (* C_TX_TRI_INIT = "1'b1" *) 
  (* C_TX_TRI_IS_CLK_INVERTED = "1'b0" *) 
  (* C_TX_TRI_IS_RST_DLY_INVERTED = "1'b0" *) 
  (* C_TX_TRI_IS_RST_INVERTED = "1'b0" *) 
  (* C_TX_TRI_NATIVE_ODELAY_BYPASS = "FALSE" *) 
  (* C_TX_TRI_OUTPUT_PHASE_90 = "FALSE" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* TX_BITSLICE_TRI_EN = "8'b00000000" *) 
  bd_91b0_phy_0_bd_91b0_phy_0_hssio_rx_high_speed_selectio_wiz_v3_6_0 inst
       (.app_clk(1'b0),
        .bg0_pin0_nc(1'b0),
        .bg0_pin6_nc(1'b0),
        .bg1_pin0_nc(1'b0),
        .bg1_pin6_nc(1'b0),
        .bg2_pin0_nc(1'b0),
        .bg2_pin6_nc(1'b0),
        .bg3_pin0_nc(1'b0),
        .bg3_pin6_nc(1'b0),
        .bidir_rx_clk(1'b0),
        .bidir_tx_bs_tri_ce0(1'b0),
        .bidir_tx_bs_tri_ce1(1'b0),
        .bidir_tx_bs_tri_ce2(1'b0),
        .bidir_tx_bs_tri_ce3(1'b0),
        .bidir_tx_bs_tri_ce4(1'b0),
        .bidir_tx_bs_tri_ce5(1'b0),
        .bidir_tx_bs_tri_ce6(1'b0),
        .bidir_tx_bs_tri_ce7(1'b0),
        .bidir_tx_bs_tri_clk(1'b0),
        .bidir_tx_bs_tri_cntvaluein0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bidir_tx_bs_tri_cntvaluein1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bidir_tx_bs_tri_cntvaluein2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bidir_tx_bs_tri_cntvaluein3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bidir_tx_bs_tri_cntvaluein4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bidir_tx_bs_tri_cntvaluein5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bidir_tx_bs_tri_cntvaluein6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bidir_tx_bs_tri_cntvaluein7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bidir_tx_bs_tri_cntvalueout0(NLW_inst_bidir_tx_bs_tri_cntvalueout0_UNCONNECTED[8:0]),
        .bidir_tx_bs_tri_cntvalueout1(NLW_inst_bidir_tx_bs_tri_cntvalueout1_UNCONNECTED[8:0]),
        .bidir_tx_bs_tri_cntvalueout2(NLW_inst_bidir_tx_bs_tri_cntvalueout2_UNCONNECTED[8:0]),
        .bidir_tx_bs_tri_cntvalueout3(NLW_inst_bidir_tx_bs_tri_cntvalueout3_UNCONNECTED[8:0]),
        .bidir_tx_bs_tri_cntvalueout4(NLW_inst_bidir_tx_bs_tri_cntvalueout4_UNCONNECTED[8:0]),
        .bidir_tx_bs_tri_cntvalueout5(NLW_inst_bidir_tx_bs_tri_cntvalueout5_UNCONNECTED[8:0]),
        .bidir_tx_bs_tri_cntvalueout6(NLW_inst_bidir_tx_bs_tri_cntvalueout6_UNCONNECTED[8:0]),
        .bidir_tx_bs_tri_cntvalueout7(NLW_inst_bidir_tx_bs_tri_cntvalueout7_UNCONNECTED[8:0]),
        .bidir_tx_bs_tri_en_vtc0(1'b0),
        .bidir_tx_bs_tri_en_vtc1(1'b0),
        .bidir_tx_bs_tri_en_vtc2(1'b0),
        .bidir_tx_bs_tri_en_vtc3(1'b0),
        .bidir_tx_bs_tri_en_vtc4(1'b0),
        .bidir_tx_bs_tri_en_vtc5(1'b0),
        .bidir_tx_bs_tri_en_vtc6(1'b0),
        .bidir_tx_bs_tri_en_vtc7(1'b0),
        .bidir_tx_bs_tri_inc0(1'b0),
        .bidir_tx_bs_tri_inc1(1'b0),
        .bidir_tx_bs_tri_inc2(1'b0),
        .bidir_tx_bs_tri_inc3(1'b0),
        .bidir_tx_bs_tri_inc4(1'b0),
        .bidir_tx_bs_tri_inc5(1'b0),
        .bidir_tx_bs_tri_inc6(1'b0),
        .bidir_tx_bs_tri_inc7(1'b0),
        .bidir_tx_bs_tri_load0(1'b0),
        .bidir_tx_bs_tri_load1(1'b0),
        .bidir_tx_bs_tri_load2(1'b0),
        .bidir_tx_bs_tri_load3(1'b0),
        .bidir_tx_bs_tri_load4(1'b0),
        .bidir_tx_bs_tri_load5(1'b0),
        .bidir_tx_bs_tri_load6(1'b0),
        .bidir_tx_bs_tri_load7(1'b0),
        .bidir_tx_clk(1'b0),
        .bitslip_error_0(NLW_inst_bitslip_error_0_UNCONNECTED),
        .bitslip_error_1(NLW_inst_bitslip_error_1_UNCONNECTED),
        .bitslip_error_10(NLW_inst_bitslip_error_10_UNCONNECTED),
        .bitslip_error_11(NLW_inst_bitslip_error_11_UNCONNECTED),
        .bitslip_error_12(NLW_inst_bitslip_error_12_UNCONNECTED),
        .bitslip_error_13(NLW_inst_bitslip_error_13_UNCONNECTED),
        .bitslip_error_14(NLW_inst_bitslip_error_14_UNCONNECTED),
        .bitslip_error_15(NLW_inst_bitslip_error_15_UNCONNECTED),
        .bitslip_error_16(NLW_inst_bitslip_error_16_UNCONNECTED),
        .bitslip_error_17(NLW_inst_bitslip_error_17_UNCONNECTED),
        .bitslip_error_18(NLW_inst_bitslip_error_18_UNCONNECTED),
        .bitslip_error_19(NLW_inst_bitslip_error_19_UNCONNECTED),
        .bitslip_error_2(NLW_inst_bitslip_error_2_UNCONNECTED),
        .bitslip_error_20(NLW_inst_bitslip_error_20_UNCONNECTED),
        .bitslip_error_21(NLW_inst_bitslip_error_21_UNCONNECTED),
        .bitslip_error_22(NLW_inst_bitslip_error_22_UNCONNECTED),
        .bitslip_error_23(NLW_inst_bitslip_error_23_UNCONNECTED),
        .bitslip_error_24(NLW_inst_bitslip_error_24_UNCONNECTED),
        .bitslip_error_25(NLW_inst_bitslip_error_25_UNCONNECTED),
        .bitslip_error_26(NLW_inst_bitslip_error_26_UNCONNECTED),
        .bitslip_error_27(NLW_inst_bitslip_error_27_UNCONNECTED),
        .bitslip_error_28(NLW_inst_bitslip_error_28_UNCONNECTED),
        .bitslip_error_29(NLW_inst_bitslip_error_29_UNCONNECTED),
        .bitslip_error_3(NLW_inst_bitslip_error_3_UNCONNECTED),
        .bitslip_error_30(NLW_inst_bitslip_error_30_UNCONNECTED),
        .bitslip_error_31(NLW_inst_bitslip_error_31_UNCONNECTED),
        .bitslip_error_32(NLW_inst_bitslip_error_32_UNCONNECTED),
        .bitslip_error_33(NLW_inst_bitslip_error_33_UNCONNECTED),
        .bitslip_error_34(NLW_inst_bitslip_error_34_UNCONNECTED),
        .bitslip_error_35(NLW_inst_bitslip_error_35_UNCONNECTED),
        .bitslip_error_36(NLW_inst_bitslip_error_36_UNCONNECTED),
        .bitslip_error_37(NLW_inst_bitslip_error_37_UNCONNECTED),
        .bitslip_error_38(NLW_inst_bitslip_error_38_UNCONNECTED),
        .bitslip_error_39(NLW_inst_bitslip_error_39_UNCONNECTED),
        .bitslip_error_4(NLW_inst_bitslip_error_4_UNCONNECTED),
        .bitslip_error_40(NLW_inst_bitslip_error_40_UNCONNECTED),
        .bitslip_error_41(NLW_inst_bitslip_error_41_UNCONNECTED),
        .bitslip_error_42(NLW_inst_bitslip_error_42_UNCONNECTED),
        .bitslip_error_43(NLW_inst_bitslip_error_43_UNCONNECTED),
        .bitslip_error_44(NLW_inst_bitslip_error_44_UNCONNECTED),
        .bitslip_error_45(NLW_inst_bitslip_error_45_UNCONNECTED),
        .bitslip_error_46(NLW_inst_bitslip_error_46_UNCONNECTED),
        .bitslip_error_47(NLW_inst_bitslip_error_47_UNCONNECTED),
        .bitslip_error_48(NLW_inst_bitslip_error_48_UNCONNECTED),
        .bitslip_error_49(NLW_inst_bitslip_error_49_UNCONNECTED),
        .bitslip_error_5(NLW_inst_bitslip_error_5_UNCONNECTED),
        .bitslip_error_50(NLW_inst_bitslip_error_50_UNCONNECTED),
        .bitslip_error_51(NLW_inst_bitslip_error_51_UNCONNECTED),
        .bitslip_error_6(NLW_inst_bitslip_error_6_UNCONNECTED),
        .bitslip_error_7(NLW_inst_bitslip_error_7_UNCONNECTED),
        .bitslip_error_8(NLW_inst_bitslip_error_8_UNCONNECTED),
        .bitslip_error_9(NLW_inst_bitslip_error_9_UNCONNECTED),
        .bs_rst_dphy_in(bs_rst_dphy_in),
        .clk(clk),
        .clk_from_ibuf(NLW_inst_clk_from_ibuf_UNCONNECTED),
        .clk_n(1'b0),
        .clk_p(1'b0),
        .clk_rxn(clk_rxn),
        .clk_rxp(clk_rxp),
        .daddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .data_rxn0(data_rxn0),
        .data_rxn1(data_rxn1),
        .data_rxp0(data_rxp0),
        .data_rxp1(data_rxp1),
        .data_to_fabric_clk_rxn(data_to_fabric_clk_rxn),
        .data_to_fabric_clk_rxp(data_to_fabric_clk_rxp),
        .data_to_fabric_data_rxn0(data_to_fabric_data_rxn0),
        .data_to_fabric_data_rxn1(data_to_fabric_data_rxn1),
        .data_to_fabric_data_rxp0(data_to_fabric_data_rxp0),
        .data_to_fabric_data_rxp1(data_to_fabric_data_rxp1),
        .dclk(1'b0),
        .den(1'b0),
        .di({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dly_rdy_bsc0(dly_rdy_bsc0),
        .dly_rdy_bsc1(NLW_inst_dly_rdy_bsc1_UNCONNECTED),
        .dly_rdy_bsc2(NLW_inst_dly_rdy_bsc2_UNCONNECTED),
        .dly_rdy_bsc3(NLW_inst_dly_rdy_bsc3_UNCONNECTED),
        .dly_rdy_bsc4(NLW_inst_dly_rdy_bsc4_UNCONNECTED),
        .dly_rdy_bsc5(NLW_inst_dly_rdy_bsc5_UNCONNECTED),
        .dly_rdy_bsc6(NLW_inst_dly_rdy_bsc6_UNCONNECTED),
        .dly_rdy_bsc7(NLW_inst_dly_rdy_bsc7_UNCONNECTED),
        .do_out(NLW_inst_do_out_UNCONNECTED[15:0]),
        .drdy(NLW_inst_drdy_UNCONNECTED),
        .dwe(1'b0),
        .en_vtc_bsc0(en_vtc_bsc0),
        .en_vtc_bsc1(1'b0),
        .en_vtc_bsc2(1'b0),
        .en_vtc_bsc3(1'b0),
        .en_vtc_bsc4(1'b0),
        .en_vtc_bsc5(1'b0),
        .en_vtc_bsc6(1'b0),
        .en_vtc_bsc7(1'b0),
        .fifo_empty_0(fifo_empty_0),
        .fifo_empty_1(fifo_empty_1),
        .fifo_empty_10(NLW_inst_fifo_empty_10_UNCONNECTED),
        .fifo_empty_11(NLW_inst_fifo_empty_11_UNCONNECTED),
        .fifo_empty_12(NLW_inst_fifo_empty_12_UNCONNECTED),
        .fifo_empty_13(NLW_inst_fifo_empty_13_UNCONNECTED),
        .fifo_empty_14(NLW_inst_fifo_empty_14_UNCONNECTED),
        .fifo_empty_15(NLW_inst_fifo_empty_15_UNCONNECTED),
        .fifo_empty_16(NLW_inst_fifo_empty_16_UNCONNECTED),
        .fifo_empty_17(NLW_inst_fifo_empty_17_UNCONNECTED),
        .fifo_empty_18(NLW_inst_fifo_empty_18_UNCONNECTED),
        .fifo_empty_19(NLW_inst_fifo_empty_19_UNCONNECTED),
        .fifo_empty_2(fifo_empty_2),
        .fifo_empty_20(NLW_inst_fifo_empty_20_UNCONNECTED),
        .fifo_empty_21(NLW_inst_fifo_empty_21_UNCONNECTED),
        .fifo_empty_22(NLW_inst_fifo_empty_22_UNCONNECTED),
        .fifo_empty_23(NLW_inst_fifo_empty_23_UNCONNECTED),
        .fifo_empty_24(NLW_inst_fifo_empty_24_UNCONNECTED),
        .fifo_empty_25(NLW_inst_fifo_empty_25_UNCONNECTED),
        .fifo_empty_26(NLW_inst_fifo_empty_26_UNCONNECTED),
        .fifo_empty_27(NLW_inst_fifo_empty_27_UNCONNECTED),
        .fifo_empty_28(NLW_inst_fifo_empty_28_UNCONNECTED),
        .fifo_empty_29(NLW_inst_fifo_empty_29_UNCONNECTED),
        .fifo_empty_3(fifo_empty_3),
        .fifo_empty_30(NLW_inst_fifo_empty_30_UNCONNECTED),
        .fifo_empty_31(NLW_inst_fifo_empty_31_UNCONNECTED),
        .fifo_empty_32(NLW_inst_fifo_empty_32_UNCONNECTED),
        .fifo_empty_33(NLW_inst_fifo_empty_33_UNCONNECTED),
        .fifo_empty_34(NLW_inst_fifo_empty_34_UNCONNECTED),
        .fifo_empty_35(NLW_inst_fifo_empty_35_UNCONNECTED),
        .fifo_empty_36(NLW_inst_fifo_empty_36_UNCONNECTED),
        .fifo_empty_37(NLW_inst_fifo_empty_37_UNCONNECTED),
        .fifo_empty_38(NLW_inst_fifo_empty_38_UNCONNECTED),
        .fifo_empty_39(NLW_inst_fifo_empty_39_UNCONNECTED),
        .fifo_empty_4(fifo_empty_4),
        .fifo_empty_40(NLW_inst_fifo_empty_40_UNCONNECTED),
        .fifo_empty_41(NLW_inst_fifo_empty_41_UNCONNECTED),
        .fifo_empty_42(NLW_inst_fifo_empty_42_UNCONNECTED),
        .fifo_empty_43(NLW_inst_fifo_empty_43_UNCONNECTED),
        .fifo_empty_44(NLW_inst_fifo_empty_44_UNCONNECTED),
        .fifo_empty_45(NLW_inst_fifo_empty_45_UNCONNECTED),
        .fifo_empty_46(NLW_inst_fifo_empty_46_UNCONNECTED),
        .fifo_empty_47(NLW_inst_fifo_empty_47_UNCONNECTED),
        .fifo_empty_48(NLW_inst_fifo_empty_48_UNCONNECTED),
        .fifo_empty_49(NLW_inst_fifo_empty_49_UNCONNECTED),
        .fifo_empty_5(fifo_empty_5),
        .fifo_empty_50(NLW_inst_fifo_empty_50_UNCONNECTED),
        .fifo_empty_51(NLW_inst_fifo_empty_51_UNCONNECTED),
        .fifo_empty_6(NLW_inst_fifo_empty_6_UNCONNECTED),
        .fifo_empty_7(NLW_inst_fifo_empty_7_UNCONNECTED),
        .fifo_empty_8(NLW_inst_fifo_empty_8_UNCONNECTED),
        .fifo_empty_9(NLW_inst_fifo_empty_9_UNCONNECTED),
        .fifo_rd_clk_0(fifo_rd_clk_0),
        .fifo_rd_clk_1(fifo_rd_clk_1),
        .fifo_rd_clk_10(1'b0),
        .fifo_rd_clk_11(1'b0),
        .fifo_rd_clk_12(1'b0),
        .fifo_rd_clk_13(1'b0),
        .fifo_rd_clk_14(1'b0),
        .fifo_rd_clk_15(1'b0),
        .fifo_rd_clk_16(1'b0),
        .fifo_rd_clk_17(1'b0),
        .fifo_rd_clk_18(1'b0),
        .fifo_rd_clk_19(1'b0),
        .fifo_rd_clk_2(fifo_rd_clk_2),
        .fifo_rd_clk_20(1'b0),
        .fifo_rd_clk_21(1'b0),
        .fifo_rd_clk_22(1'b0),
        .fifo_rd_clk_23(1'b0),
        .fifo_rd_clk_24(1'b0),
        .fifo_rd_clk_25(1'b0),
        .fifo_rd_clk_26(1'b0),
        .fifo_rd_clk_27(1'b0),
        .fifo_rd_clk_28(1'b0),
        .fifo_rd_clk_29(1'b0),
        .fifo_rd_clk_3(fifo_rd_clk_3),
        .fifo_rd_clk_30(1'b0),
        .fifo_rd_clk_31(1'b0),
        .fifo_rd_clk_32(1'b0),
        .fifo_rd_clk_33(1'b0),
        .fifo_rd_clk_34(1'b0),
        .fifo_rd_clk_35(1'b0),
        .fifo_rd_clk_36(1'b0),
        .fifo_rd_clk_37(1'b0),
        .fifo_rd_clk_38(1'b0),
        .fifo_rd_clk_39(1'b0),
        .fifo_rd_clk_4(fifo_rd_clk_4),
        .fifo_rd_clk_40(1'b0),
        .fifo_rd_clk_41(1'b0),
        .fifo_rd_clk_42(1'b0),
        .fifo_rd_clk_43(1'b0),
        .fifo_rd_clk_44(1'b0),
        .fifo_rd_clk_45(1'b0),
        .fifo_rd_clk_46(1'b0),
        .fifo_rd_clk_47(1'b0),
        .fifo_rd_clk_48(1'b0),
        .fifo_rd_clk_49(1'b0),
        .fifo_rd_clk_5(fifo_rd_clk_5),
        .fifo_rd_clk_50(1'b0),
        .fifo_rd_clk_51(1'b0),
        .fifo_rd_clk_6(1'b0),
        .fifo_rd_clk_7(1'b0),
        .fifo_rd_clk_8(1'b0),
        .fifo_rd_clk_9(1'b0),
        .fifo_rd_data_valid(NLW_inst_fifo_rd_data_valid_UNCONNECTED),
        .fifo_rd_en_0(fifo_rd_en_0),
        .fifo_rd_en_1(fifo_rd_en_1),
        .fifo_rd_en_10(1'b0),
        .fifo_rd_en_11(1'b0),
        .fifo_rd_en_12(1'b0),
        .fifo_rd_en_13(1'b0),
        .fifo_rd_en_14(1'b0),
        .fifo_rd_en_15(1'b0),
        .fifo_rd_en_16(1'b0),
        .fifo_rd_en_17(1'b0),
        .fifo_rd_en_18(1'b0),
        .fifo_rd_en_19(1'b0),
        .fifo_rd_en_2(fifo_rd_en_2),
        .fifo_rd_en_20(1'b0),
        .fifo_rd_en_21(1'b0),
        .fifo_rd_en_22(1'b0),
        .fifo_rd_en_23(1'b0),
        .fifo_rd_en_24(1'b0),
        .fifo_rd_en_25(1'b0),
        .fifo_rd_en_26(1'b0),
        .fifo_rd_en_27(1'b0),
        .fifo_rd_en_28(1'b0),
        .fifo_rd_en_29(1'b0),
        .fifo_rd_en_3(fifo_rd_en_3),
        .fifo_rd_en_30(1'b0),
        .fifo_rd_en_31(1'b0),
        .fifo_rd_en_32(1'b0),
        .fifo_rd_en_33(1'b0),
        .fifo_rd_en_34(1'b0),
        .fifo_rd_en_35(1'b0),
        .fifo_rd_en_36(1'b0),
        .fifo_rd_en_37(1'b0),
        .fifo_rd_en_38(1'b0),
        .fifo_rd_en_39(1'b0),
        .fifo_rd_en_4(fifo_rd_en_4),
        .fifo_rd_en_40(1'b0),
        .fifo_rd_en_41(1'b0),
        .fifo_rd_en_42(1'b0),
        .fifo_rd_en_43(1'b0),
        .fifo_rd_en_44(1'b0),
        .fifo_rd_en_45(1'b0),
        .fifo_rd_en_46(1'b0),
        .fifo_rd_en_47(1'b0),
        .fifo_rd_en_48(1'b0),
        .fifo_rd_en_49(1'b0),
        .fifo_rd_en_5(fifo_rd_en_5),
        .fifo_rd_en_50(1'b0),
        .fifo_rd_en_51(1'b0),
        .fifo_rd_en_6(1'b0),
        .fifo_rd_en_7(1'b0),
        .fifo_rd_en_8(1'b0),
        .fifo_rd_en_9(1'b0),
        .fifo_wr_clk_0(fifo_wr_clk_0),
        .fifo_wr_clk_13(NLW_inst_fifo_wr_clk_13_UNCONNECTED),
        .fifo_wr_clk_19(NLW_inst_fifo_wr_clk_19_UNCONNECTED),
        .fifo_wr_clk_26(NLW_inst_fifo_wr_clk_26_UNCONNECTED),
        .fifo_wr_clk_32(NLW_inst_fifo_wr_clk_32_UNCONNECTED),
        .fifo_wr_clk_39(NLW_inst_fifo_wr_clk_39_UNCONNECTED),
        .fifo_wr_clk_45(NLW_inst_fifo_wr_clk_45_UNCONNECTED),
        .fifo_wr_clk_6(NLW_inst_fifo_wr_clk_6_UNCONNECTED),
        .hs_rx_disable(hs_rx_disable),
        .intf_rdy(NLW_inst_intf_rdy_UNCONNECTED),
        .lp_rx_disable(lp_rx_disable),
        .lp_rx_o_n(lp_rx_o_n),
        .lp_rx_o_p(lp_rx_o_p),
        .lptx_i_n({1'b0,1'b0,1'b0}),
        .lptx_i_p({1'b0,1'b0,1'b0}),
        .lptx_t({1'b0,1'b0,1'b0}),
        .multi_intf_lock_in(1'b0),
        .phy_rden_bsc0({1'b0,1'b0,1'b0,1'b0}),
        .phy_rden_bsc1({1'b0,1'b0,1'b0,1'b0}),
        .phy_rden_bsc2({1'b0,1'b0,1'b0,1'b0}),
        .phy_rden_bsc3({1'b0,1'b0,1'b0,1'b0}),
        .phy_rden_bsc4({1'b0,1'b0,1'b0,1'b0}),
        .phy_rden_bsc5({1'b0,1'b0,1'b0,1'b0}),
        .phy_rden_bsc6({1'b0,1'b0,1'b0,1'b0}),
        .phy_rden_bsc7({1'b0,1'b0,1'b0,1'b0}),
        .pll0_clkout0(pll0_clkout0),
        .pll0_clkout1(NLW_inst_pll0_clkout1_UNCONNECTED),
        .pll0_locked(pll0_locked),
        .pll1_clkout0(NLW_inst_pll1_clkout0_UNCONNECTED),
        .pll1_locked(NLW_inst_pll1_locked_UNCONNECTED),
        .riu_addr_bg0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg0_bs0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg0_bs1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg1_bs2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg1_bs3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg2_bs4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg2_bs5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg3_bs6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_addr_bg3_bs7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_clk(riu_clk),
        .riu_nibble_sel_bg0({1'b0,1'b0}),
        .riu_nibble_sel_bg0_bs0(1'b0),
        .riu_nibble_sel_bg0_bs1(1'b0),
        .riu_nibble_sel_bg1({1'b0,1'b0}),
        .riu_nibble_sel_bg1_bs2(1'b0),
        .riu_nibble_sel_bg1_bs3(1'b0),
        .riu_nibble_sel_bg2({1'b0,1'b0}),
        .riu_nibble_sel_bg2_bs4(1'b0),
        .riu_nibble_sel_bg2_bs5(1'b0),
        .riu_nibble_sel_bg3({1'b0,1'b0}),
        .riu_nibble_sel_bg3_bs6(1'b0),
        .riu_nibble_sel_bg3_bs7(1'b0),
        .riu_rd_data_bg0(NLW_inst_riu_rd_data_bg0_UNCONNECTED[15:0]),
        .riu_rd_data_bg0_bs0(NLW_inst_riu_rd_data_bg0_bs0_UNCONNECTED[15:0]),
        .riu_rd_data_bg0_bs1(NLW_inst_riu_rd_data_bg0_bs1_UNCONNECTED[15:0]),
        .riu_rd_data_bg1(NLW_inst_riu_rd_data_bg1_UNCONNECTED[15:0]),
        .riu_rd_data_bg1_bs2(NLW_inst_riu_rd_data_bg1_bs2_UNCONNECTED[15:0]),
        .riu_rd_data_bg1_bs3(NLW_inst_riu_rd_data_bg1_bs3_UNCONNECTED[15:0]),
        .riu_rd_data_bg2(NLW_inst_riu_rd_data_bg2_UNCONNECTED[15:0]),
        .riu_rd_data_bg2_bs4(NLW_inst_riu_rd_data_bg2_bs4_UNCONNECTED[15:0]),
        .riu_rd_data_bg2_bs5(NLW_inst_riu_rd_data_bg2_bs5_UNCONNECTED[15:0]),
        .riu_rd_data_bg3(NLW_inst_riu_rd_data_bg3_UNCONNECTED[15:0]),
        .riu_rd_data_bg3_bs6(NLW_inst_riu_rd_data_bg3_bs6_UNCONNECTED[15:0]),
        .riu_rd_data_bg3_bs7(NLW_inst_riu_rd_data_bg3_bs7_UNCONNECTED[15:0]),
        .riu_valid_bg0(NLW_inst_riu_valid_bg0_UNCONNECTED),
        .riu_valid_bg0_bs0(NLW_inst_riu_valid_bg0_bs0_UNCONNECTED),
        .riu_valid_bg0_bs1(NLW_inst_riu_valid_bg0_bs1_UNCONNECTED),
        .riu_valid_bg1(NLW_inst_riu_valid_bg1_UNCONNECTED),
        .riu_valid_bg1_bs2(NLW_inst_riu_valid_bg1_bs2_UNCONNECTED),
        .riu_valid_bg1_bs3(NLW_inst_riu_valid_bg1_bs3_UNCONNECTED),
        .riu_valid_bg2(NLW_inst_riu_valid_bg2_UNCONNECTED),
        .riu_valid_bg2_bs4(NLW_inst_riu_valid_bg2_bs4_UNCONNECTED),
        .riu_valid_bg2_bs5(NLW_inst_riu_valid_bg2_bs5_UNCONNECTED),
        .riu_valid_bg3(NLW_inst_riu_valid_bg3_UNCONNECTED),
        .riu_valid_bg3_bs6(NLW_inst_riu_valid_bg3_bs6_UNCONNECTED),
        .riu_valid_bg3_bs7(NLW_inst_riu_valid_bg3_bs7_UNCONNECTED),
        .riu_wr_data_bg0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg0_bs0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg0_bs1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg1_bs2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg1_bs3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg2_bs4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg2_bs5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg3_bs6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_data_bg3_bs7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_wr_en_bg0(1'b0),
        .riu_wr_en_bg0_bs0(1'b0),
        .riu_wr_en_bg0_bs1(1'b0),
        .riu_wr_en_bg1(1'b0),
        .riu_wr_en_bg1_bs2(1'b0),
        .riu_wr_en_bg1_bs3(1'b0),
        .riu_wr_en_bg2(1'b0),
        .riu_wr_en_bg2_bs4(1'b0),
        .riu_wr_en_bg2_bs5(1'b0),
        .riu_wr_en_bg3(1'b0),
        .riu_wr_en_bg3_bs6(1'b0),
        .riu_wr_en_bg3_bs7(1'b0),
        .rst(rst),
        .rst_seq_done(rst_seq_done),
        .rx_bitslip_sync_done(NLW_inst_rx_bitslip_sync_done_UNCONNECTED),
        .rx_ce_0(1'b0),
        .rx_ce_1(1'b0),
        .rx_ce_10(1'b0),
        .rx_ce_11(1'b0),
        .rx_ce_12(1'b0),
        .rx_ce_13(1'b0),
        .rx_ce_14(1'b0),
        .rx_ce_15(1'b0),
        .rx_ce_16(1'b0),
        .rx_ce_17(1'b0),
        .rx_ce_18(1'b0),
        .rx_ce_19(1'b0),
        .rx_ce_2(1'b0),
        .rx_ce_20(1'b0),
        .rx_ce_21(1'b0),
        .rx_ce_22(1'b0),
        .rx_ce_23(1'b0),
        .rx_ce_24(1'b0),
        .rx_ce_25(1'b0),
        .rx_ce_26(1'b0),
        .rx_ce_27(1'b0),
        .rx_ce_28(1'b0),
        .rx_ce_29(1'b0),
        .rx_ce_3(1'b0),
        .rx_ce_30(1'b0),
        .rx_ce_31(1'b0),
        .rx_ce_32(1'b0),
        .rx_ce_33(1'b0),
        .rx_ce_34(1'b0),
        .rx_ce_35(1'b0),
        .rx_ce_36(1'b0),
        .rx_ce_37(1'b0),
        .rx_ce_38(1'b0),
        .rx_ce_39(1'b0),
        .rx_ce_4(1'b0),
        .rx_ce_40(1'b0),
        .rx_ce_41(1'b0),
        .rx_ce_42(1'b0),
        .rx_ce_43(1'b0),
        .rx_ce_44(1'b0),
        .rx_ce_45(1'b0),
        .rx_ce_46(1'b0),
        .rx_ce_47(1'b0),
        .rx_ce_48(1'b0),
        .rx_ce_49(1'b0),
        .rx_ce_5(1'b0),
        .rx_ce_50(1'b0),
        .rx_ce_51(1'b0),
        .rx_ce_6(1'b0),
        .rx_ce_7(1'b0),
        .rx_ce_8(1'b0),
        .rx_ce_9(1'b0),
        .rx_ce_ext_0(1'b0),
        .rx_ce_ext_1(1'b0),
        .rx_ce_ext_10(1'b0),
        .rx_ce_ext_11(1'b0),
        .rx_ce_ext_12(1'b0),
        .rx_ce_ext_13(1'b0),
        .rx_ce_ext_14(1'b0),
        .rx_ce_ext_15(1'b0),
        .rx_ce_ext_16(1'b0),
        .rx_ce_ext_17(1'b0),
        .rx_ce_ext_18(1'b0),
        .rx_ce_ext_19(1'b0),
        .rx_ce_ext_2(1'b0),
        .rx_ce_ext_20(1'b0),
        .rx_ce_ext_21(1'b0),
        .rx_ce_ext_22(1'b0),
        .rx_ce_ext_23(1'b0),
        .rx_ce_ext_24(1'b0),
        .rx_ce_ext_25(1'b0),
        .rx_ce_ext_26(1'b0),
        .rx_ce_ext_27(1'b0),
        .rx_ce_ext_28(1'b0),
        .rx_ce_ext_29(1'b0),
        .rx_ce_ext_3(1'b0),
        .rx_ce_ext_30(1'b0),
        .rx_ce_ext_31(1'b0),
        .rx_ce_ext_32(1'b0),
        .rx_ce_ext_33(1'b0),
        .rx_ce_ext_34(1'b0),
        .rx_ce_ext_35(1'b0),
        .rx_ce_ext_36(1'b0),
        .rx_ce_ext_37(1'b0),
        .rx_ce_ext_38(1'b0),
        .rx_ce_ext_39(1'b0),
        .rx_ce_ext_4(1'b0),
        .rx_ce_ext_40(1'b0),
        .rx_ce_ext_41(1'b0),
        .rx_ce_ext_42(1'b0),
        .rx_ce_ext_43(1'b0),
        .rx_ce_ext_44(1'b0),
        .rx_ce_ext_45(1'b0),
        .rx_ce_ext_46(1'b0),
        .rx_ce_ext_47(1'b0),
        .rx_ce_ext_48(1'b0),
        .rx_ce_ext_49(1'b0),
        .rx_ce_ext_5(1'b0),
        .rx_ce_ext_50(1'b0),
        .rx_ce_ext_51(1'b0),
        .rx_ce_ext_6(1'b0),
        .rx_ce_ext_7(1'b0),
        .rx_ce_ext_8(1'b0),
        .rx_ce_ext_9(1'b0),
        .rx_clk(1'b0),
        .rx_cntvaluein_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_11({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_12({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_13({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_14({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_15({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_16({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_17({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_18({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_19({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_20({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_21({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_22({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_23({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_24({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_25({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_26({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_27({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_28({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_29({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_30({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_31({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_32({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_33({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_34({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_35({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_36({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_37({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_38({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_39({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_40({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_41({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_42({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_43({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_44({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_45({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_46({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_47({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_48({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_49({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_50({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_51({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_8({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_9({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_11({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_12({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_13({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_14({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_15({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_16({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_17({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_18({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_19({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_20({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_21({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_22({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_23({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_24({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_25({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_26({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_27({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_28({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_29({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_30({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_31({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_32({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_33({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_34({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_35({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_36({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_37({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_38({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_39({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_40({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_41({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_42({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_43({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_44({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_45({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_46({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_47({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_48({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_49({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_50({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_51({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_8({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvaluein_ext_9({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cntvalueout_0(NLW_inst_rx_cntvalueout_0_UNCONNECTED[8:0]),
        .rx_cntvalueout_1(NLW_inst_rx_cntvalueout_1_UNCONNECTED[8:0]),
        .rx_cntvalueout_10(NLW_inst_rx_cntvalueout_10_UNCONNECTED[8:0]),
        .rx_cntvalueout_11(NLW_inst_rx_cntvalueout_11_UNCONNECTED[8:0]),
        .rx_cntvalueout_12(NLW_inst_rx_cntvalueout_12_UNCONNECTED[8:0]),
        .rx_cntvalueout_13(NLW_inst_rx_cntvalueout_13_UNCONNECTED[8:0]),
        .rx_cntvalueout_14(NLW_inst_rx_cntvalueout_14_UNCONNECTED[8:0]),
        .rx_cntvalueout_15(NLW_inst_rx_cntvalueout_15_UNCONNECTED[8:0]),
        .rx_cntvalueout_16(NLW_inst_rx_cntvalueout_16_UNCONNECTED[8:0]),
        .rx_cntvalueout_17(NLW_inst_rx_cntvalueout_17_UNCONNECTED[8:0]),
        .rx_cntvalueout_18(NLW_inst_rx_cntvalueout_18_UNCONNECTED[8:0]),
        .rx_cntvalueout_19(NLW_inst_rx_cntvalueout_19_UNCONNECTED[8:0]),
        .rx_cntvalueout_2(NLW_inst_rx_cntvalueout_2_UNCONNECTED[8:0]),
        .rx_cntvalueout_20(NLW_inst_rx_cntvalueout_20_UNCONNECTED[8:0]),
        .rx_cntvalueout_21(NLW_inst_rx_cntvalueout_21_UNCONNECTED[8:0]),
        .rx_cntvalueout_22(NLW_inst_rx_cntvalueout_22_UNCONNECTED[8:0]),
        .rx_cntvalueout_23(NLW_inst_rx_cntvalueout_23_UNCONNECTED[8:0]),
        .rx_cntvalueout_24(NLW_inst_rx_cntvalueout_24_UNCONNECTED[8:0]),
        .rx_cntvalueout_25(NLW_inst_rx_cntvalueout_25_UNCONNECTED[8:0]),
        .rx_cntvalueout_26(NLW_inst_rx_cntvalueout_26_UNCONNECTED[8:0]),
        .rx_cntvalueout_27(NLW_inst_rx_cntvalueout_27_UNCONNECTED[8:0]),
        .rx_cntvalueout_28(NLW_inst_rx_cntvalueout_28_UNCONNECTED[8:0]),
        .rx_cntvalueout_29(NLW_inst_rx_cntvalueout_29_UNCONNECTED[8:0]),
        .rx_cntvalueout_3(NLW_inst_rx_cntvalueout_3_UNCONNECTED[8:0]),
        .rx_cntvalueout_30(NLW_inst_rx_cntvalueout_30_UNCONNECTED[8:0]),
        .rx_cntvalueout_31(NLW_inst_rx_cntvalueout_31_UNCONNECTED[8:0]),
        .rx_cntvalueout_32(NLW_inst_rx_cntvalueout_32_UNCONNECTED[8:0]),
        .rx_cntvalueout_33(NLW_inst_rx_cntvalueout_33_UNCONNECTED[8:0]),
        .rx_cntvalueout_34(NLW_inst_rx_cntvalueout_34_UNCONNECTED[8:0]),
        .rx_cntvalueout_35(NLW_inst_rx_cntvalueout_35_UNCONNECTED[8:0]),
        .rx_cntvalueout_36(NLW_inst_rx_cntvalueout_36_UNCONNECTED[8:0]),
        .rx_cntvalueout_37(NLW_inst_rx_cntvalueout_37_UNCONNECTED[8:0]),
        .rx_cntvalueout_38(NLW_inst_rx_cntvalueout_38_UNCONNECTED[8:0]),
        .rx_cntvalueout_39(NLW_inst_rx_cntvalueout_39_UNCONNECTED[8:0]),
        .rx_cntvalueout_4(NLW_inst_rx_cntvalueout_4_UNCONNECTED[8:0]),
        .rx_cntvalueout_40(NLW_inst_rx_cntvalueout_40_UNCONNECTED[8:0]),
        .rx_cntvalueout_41(NLW_inst_rx_cntvalueout_41_UNCONNECTED[8:0]),
        .rx_cntvalueout_42(NLW_inst_rx_cntvalueout_42_UNCONNECTED[8:0]),
        .rx_cntvalueout_43(NLW_inst_rx_cntvalueout_43_UNCONNECTED[8:0]),
        .rx_cntvalueout_44(NLW_inst_rx_cntvalueout_44_UNCONNECTED[8:0]),
        .rx_cntvalueout_45(NLW_inst_rx_cntvalueout_45_UNCONNECTED[8:0]),
        .rx_cntvalueout_46(NLW_inst_rx_cntvalueout_46_UNCONNECTED[8:0]),
        .rx_cntvalueout_47(NLW_inst_rx_cntvalueout_47_UNCONNECTED[8:0]),
        .rx_cntvalueout_48(NLW_inst_rx_cntvalueout_48_UNCONNECTED[8:0]),
        .rx_cntvalueout_49(NLW_inst_rx_cntvalueout_49_UNCONNECTED[8:0]),
        .rx_cntvalueout_5(NLW_inst_rx_cntvalueout_5_UNCONNECTED[8:0]),
        .rx_cntvalueout_50(NLW_inst_rx_cntvalueout_50_UNCONNECTED[8:0]),
        .rx_cntvalueout_51(NLW_inst_rx_cntvalueout_51_UNCONNECTED[8:0]),
        .rx_cntvalueout_6(NLW_inst_rx_cntvalueout_6_UNCONNECTED[8:0]),
        .rx_cntvalueout_7(NLW_inst_rx_cntvalueout_7_UNCONNECTED[8:0]),
        .rx_cntvalueout_8(NLW_inst_rx_cntvalueout_8_UNCONNECTED[8:0]),
        .rx_cntvalueout_9(NLW_inst_rx_cntvalueout_9_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_0(NLW_inst_rx_cntvalueout_ext_0_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_1(NLW_inst_rx_cntvalueout_ext_1_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_10(NLW_inst_rx_cntvalueout_ext_10_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_11(NLW_inst_rx_cntvalueout_ext_11_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_12(NLW_inst_rx_cntvalueout_ext_12_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_13(NLW_inst_rx_cntvalueout_ext_13_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_14(NLW_inst_rx_cntvalueout_ext_14_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_15(NLW_inst_rx_cntvalueout_ext_15_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_16(NLW_inst_rx_cntvalueout_ext_16_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_17(NLW_inst_rx_cntvalueout_ext_17_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_18(NLW_inst_rx_cntvalueout_ext_18_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_19(NLW_inst_rx_cntvalueout_ext_19_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_2(NLW_inst_rx_cntvalueout_ext_2_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_20(NLW_inst_rx_cntvalueout_ext_20_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_21(NLW_inst_rx_cntvalueout_ext_21_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_22(NLW_inst_rx_cntvalueout_ext_22_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_23(NLW_inst_rx_cntvalueout_ext_23_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_24(NLW_inst_rx_cntvalueout_ext_24_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_25(NLW_inst_rx_cntvalueout_ext_25_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_26(NLW_inst_rx_cntvalueout_ext_26_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_27(NLW_inst_rx_cntvalueout_ext_27_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_28(NLW_inst_rx_cntvalueout_ext_28_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_29(NLW_inst_rx_cntvalueout_ext_29_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_3(NLW_inst_rx_cntvalueout_ext_3_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_30(NLW_inst_rx_cntvalueout_ext_30_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_31(NLW_inst_rx_cntvalueout_ext_31_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_32(NLW_inst_rx_cntvalueout_ext_32_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_33(NLW_inst_rx_cntvalueout_ext_33_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_34(NLW_inst_rx_cntvalueout_ext_34_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_35(NLW_inst_rx_cntvalueout_ext_35_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_36(NLW_inst_rx_cntvalueout_ext_36_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_37(NLW_inst_rx_cntvalueout_ext_37_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_38(NLW_inst_rx_cntvalueout_ext_38_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_39(NLW_inst_rx_cntvalueout_ext_39_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_4(NLW_inst_rx_cntvalueout_ext_4_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_40(NLW_inst_rx_cntvalueout_ext_40_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_41(NLW_inst_rx_cntvalueout_ext_41_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_42(NLW_inst_rx_cntvalueout_ext_42_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_43(NLW_inst_rx_cntvalueout_ext_43_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_44(NLW_inst_rx_cntvalueout_ext_44_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_45(NLW_inst_rx_cntvalueout_ext_45_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_46(NLW_inst_rx_cntvalueout_ext_46_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_47(NLW_inst_rx_cntvalueout_ext_47_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_48(NLW_inst_rx_cntvalueout_ext_48_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_49(NLW_inst_rx_cntvalueout_ext_49_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_5(NLW_inst_rx_cntvalueout_ext_5_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_50(NLW_inst_rx_cntvalueout_ext_50_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_51(NLW_inst_rx_cntvalueout_ext_51_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_6(NLW_inst_rx_cntvalueout_ext_6_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_7(NLW_inst_rx_cntvalueout_ext_7_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_8(NLW_inst_rx_cntvalueout_ext_8_UNCONNECTED[8:0]),
        .rx_cntvalueout_ext_9(NLW_inst_rx_cntvalueout_ext_9_UNCONNECTED[8:0]),
        .rx_en_vtc_0(1'b0),
        .rx_en_vtc_1(1'b0),
        .rx_en_vtc_10(1'b0),
        .rx_en_vtc_11(1'b0),
        .rx_en_vtc_12(1'b0),
        .rx_en_vtc_13(1'b0),
        .rx_en_vtc_14(1'b0),
        .rx_en_vtc_15(1'b0),
        .rx_en_vtc_16(1'b0),
        .rx_en_vtc_17(1'b0),
        .rx_en_vtc_18(1'b0),
        .rx_en_vtc_19(1'b0),
        .rx_en_vtc_2(1'b0),
        .rx_en_vtc_20(1'b0),
        .rx_en_vtc_21(1'b0),
        .rx_en_vtc_22(1'b0),
        .rx_en_vtc_23(1'b0),
        .rx_en_vtc_24(1'b0),
        .rx_en_vtc_25(1'b0),
        .rx_en_vtc_26(1'b0),
        .rx_en_vtc_27(1'b0),
        .rx_en_vtc_28(1'b0),
        .rx_en_vtc_29(1'b0),
        .rx_en_vtc_3(1'b0),
        .rx_en_vtc_30(1'b0),
        .rx_en_vtc_31(1'b0),
        .rx_en_vtc_32(1'b0),
        .rx_en_vtc_33(1'b0),
        .rx_en_vtc_34(1'b0),
        .rx_en_vtc_35(1'b0),
        .rx_en_vtc_36(1'b0),
        .rx_en_vtc_37(1'b0),
        .rx_en_vtc_38(1'b0),
        .rx_en_vtc_39(1'b0),
        .rx_en_vtc_4(1'b0),
        .rx_en_vtc_40(1'b0),
        .rx_en_vtc_41(1'b0),
        .rx_en_vtc_42(1'b0),
        .rx_en_vtc_43(1'b0),
        .rx_en_vtc_44(1'b0),
        .rx_en_vtc_45(1'b0),
        .rx_en_vtc_46(1'b0),
        .rx_en_vtc_47(1'b0),
        .rx_en_vtc_48(1'b0),
        .rx_en_vtc_49(1'b0),
        .rx_en_vtc_5(1'b0),
        .rx_en_vtc_50(1'b0),
        .rx_en_vtc_51(1'b0),
        .rx_en_vtc_6(1'b0),
        .rx_en_vtc_7(1'b0),
        .rx_en_vtc_8(1'b0),
        .rx_en_vtc_9(1'b0),
        .rx_en_vtc_ext_0(1'b0),
        .rx_en_vtc_ext_1(1'b0),
        .rx_en_vtc_ext_10(1'b0),
        .rx_en_vtc_ext_11(1'b0),
        .rx_en_vtc_ext_12(1'b0),
        .rx_en_vtc_ext_13(1'b0),
        .rx_en_vtc_ext_14(1'b0),
        .rx_en_vtc_ext_15(1'b0),
        .rx_en_vtc_ext_16(1'b0),
        .rx_en_vtc_ext_17(1'b0),
        .rx_en_vtc_ext_18(1'b0),
        .rx_en_vtc_ext_19(1'b0),
        .rx_en_vtc_ext_2(1'b0),
        .rx_en_vtc_ext_20(1'b0),
        .rx_en_vtc_ext_21(1'b0),
        .rx_en_vtc_ext_22(1'b0),
        .rx_en_vtc_ext_23(1'b0),
        .rx_en_vtc_ext_24(1'b0),
        .rx_en_vtc_ext_25(1'b0),
        .rx_en_vtc_ext_26(1'b0),
        .rx_en_vtc_ext_27(1'b0),
        .rx_en_vtc_ext_28(1'b0),
        .rx_en_vtc_ext_29(1'b0),
        .rx_en_vtc_ext_3(1'b0),
        .rx_en_vtc_ext_30(1'b0),
        .rx_en_vtc_ext_31(1'b0),
        .rx_en_vtc_ext_32(1'b0),
        .rx_en_vtc_ext_33(1'b0),
        .rx_en_vtc_ext_34(1'b0),
        .rx_en_vtc_ext_35(1'b0),
        .rx_en_vtc_ext_36(1'b0),
        .rx_en_vtc_ext_37(1'b0),
        .rx_en_vtc_ext_38(1'b0),
        .rx_en_vtc_ext_39(1'b0),
        .rx_en_vtc_ext_4(1'b0),
        .rx_en_vtc_ext_40(1'b0),
        .rx_en_vtc_ext_41(1'b0),
        .rx_en_vtc_ext_42(1'b0),
        .rx_en_vtc_ext_43(1'b0),
        .rx_en_vtc_ext_44(1'b0),
        .rx_en_vtc_ext_45(1'b0),
        .rx_en_vtc_ext_46(1'b0),
        .rx_en_vtc_ext_47(1'b0),
        .rx_en_vtc_ext_48(1'b0),
        .rx_en_vtc_ext_49(1'b0),
        .rx_en_vtc_ext_5(1'b0),
        .rx_en_vtc_ext_50(1'b0),
        .rx_en_vtc_ext_51(1'b0),
        .rx_en_vtc_ext_6(1'b0),
        .rx_en_vtc_ext_7(1'b0),
        .rx_en_vtc_ext_8(1'b0),
        .rx_en_vtc_ext_9(1'b0),
        .rx_inc_0(1'b0),
        .rx_inc_1(1'b0),
        .rx_inc_10(1'b0),
        .rx_inc_11(1'b0),
        .rx_inc_12(1'b0),
        .rx_inc_13(1'b0),
        .rx_inc_14(1'b0),
        .rx_inc_15(1'b0),
        .rx_inc_16(1'b0),
        .rx_inc_17(1'b0),
        .rx_inc_18(1'b0),
        .rx_inc_19(1'b0),
        .rx_inc_2(1'b0),
        .rx_inc_20(1'b0),
        .rx_inc_21(1'b0),
        .rx_inc_22(1'b0),
        .rx_inc_23(1'b0),
        .rx_inc_24(1'b0),
        .rx_inc_25(1'b0),
        .rx_inc_26(1'b0),
        .rx_inc_27(1'b0),
        .rx_inc_28(1'b0),
        .rx_inc_29(1'b0),
        .rx_inc_3(1'b0),
        .rx_inc_30(1'b0),
        .rx_inc_31(1'b0),
        .rx_inc_32(1'b0),
        .rx_inc_33(1'b0),
        .rx_inc_34(1'b0),
        .rx_inc_35(1'b0),
        .rx_inc_36(1'b0),
        .rx_inc_37(1'b0),
        .rx_inc_38(1'b0),
        .rx_inc_39(1'b0),
        .rx_inc_4(1'b0),
        .rx_inc_40(1'b0),
        .rx_inc_41(1'b0),
        .rx_inc_42(1'b0),
        .rx_inc_43(1'b0),
        .rx_inc_44(1'b0),
        .rx_inc_45(1'b0),
        .rx_inc_46(1'b0),
        .rx_inc_47(1'b0),
        .rx_inc_48(1'b0),
        .rx_inc_49(1'b0),
        .rx_inc_5(1'b0),
        .rx_inc_50(1'b0),
        .rx_inc_51(1'b0),
        .rx_inc_6(1'b0),
        .rx_inc_7(1'b0),
        .rx_inc_8(1'b0),
        .rx_inc_9(1'b0),
        .rx_inc_ext_0(1'b0),
        .rx_inc_ext_1(1'b0),
        .rx_inc_ext_10(1'b0),
        .rx_inc_ext_11(1'b0),
        .rx_inc_ext_12(1'b0),
        .rx_inc_ext_13(1'b0),
        .rx_inc_ext_14(1'b0),
        .rx_inc_ext_15(1'b0),
        .rx_inc_ext_16(1'b0),
        .rx_inc_ext_17(1'b0),
        .rx_inc_ext_18(1'b0),
        .rx_inc_ext_19(1'b0),
        .rx_inc_ext_2(1'b0),
        .rx_inc_ext_20(1'b0),
        .rx_inc_ext_21(1'b0),
        .rx_inc_ext_22(1'b0),
        .rx_inc_ext_23(1'b0),
        .rx_inc_ext_24(1'b0),
        .rx_inc_ext_25(1'b0),
        .rx_inc_ext_26(1'b0),
        .rx_inc_ext_27(1'b0),
        .rx_inc_ext_28(1'b0),
        .rx_inc_ext_29(1'b0),
        .rx_inc_ext_3(1'b0),
        .rx_inc_ext_30(1'b0),
        .rx_inc_ext_31(1'b0),
        .rx_inc_ext_32(1'b0),
        .rx_inc_ext_33(1'b0),
        .rx_inc_ext_34(1'b0),
        .rx_inc_ext_35(1'b0),
        .rx_inc_ext_36(1'b0),
        .rx_inc_ext_37(1'b0),
        .rx_inc_ext_38(1'b0),
        .rx_inc_ext_39(1'b0),
        .rx_inc_ext_4(1'b0),
        .rx_inc_ext_40(1'b0),
        .rx_inc_ext_41(1'b0),
        .rx_inc_ext_42(1'b0),
        .rx_inc_ext_43(1'b0),
        .rx_inc_ext_44(1'b0),
        .rx_inc_ext_45(1'b0),
        .rx_inc_ext_46(1'b0),
        .rx_inc_ext_47(1'b0),
        .rx_inc_ext_48(1'b0),
        .rx_inc_ext_49(1'b0),
        .rx_inc_ext_5(1'b0),
        .rx_inc_ext_50(1'b0),
        .rx_inc_ext_51(1'b0),
        .rx_inc_ext_6(1'b0),
        .rx_inc_ext_7(1'b0),
        .rx_inc_ext_8(1'b0),
        .rx_inc_ext_9(1'b0),
        .rx_load_0(1'b0),
        .rx_load_1(1'b0),
        .rx_load_10(1'b0),
        .rx_load_11(1'b0),
        .rx_load_12(1'b0),
        .rx_load_13(1'b0),
        .rx_load_14(1'b0),
        .rx_load_15(1'b0),
        .rx_load_16(1'b0),
        .rx_load_17(1'b0),
        .rx_load_18(1'b0),
        .rx_load_19(1'b0),
        .rx_load_2(1'b0),
        .rx_load_20(1'b0),
        .rx_load_21(1'b0),
        .rx_load_22(1'b0),
        .rx_load_23(1'b0),
        .rx_load_24(1'b0),
        .rx_load_25(1'b0),
        .rx_load_26(1'b0),
        .rx_load_27(1'b0),
        .rx_load_28(1'b0),
        .rx_load_29(1'b0),
        .rx_load_3(1'b0),
        .rx_load_30(1'b0),
        .rx_load_31(1'b0),
        .rx_load_32(1'b0),
        .rx_load_33(1'b0),
        .rx_load_34(1'b0),
        .rx_load_35(1'b0),
        .rx_load_36(1'b0),
        .rx_load_37(1'b0),
        .rx_load_38(1'b0),
        .rx_load_39(1'b0),
        .rx_load_4(1'b0),
        .rx_load_40(1'b0),
        .rx_load_41(1'b0),
        .rx_load_42(1'b0),
        .rx_load_43(1'b0),
        .rx_load_44(1'b0),
        .rx_load_45(1'b0),
        .rx_load_46(1'b0),
        .rx_load_47(1'b0),
        .rx_load_48(1'b0),
        .rx_load_49(1'b0),
        .rx_load_5(1'b0),
        .rx_load_50(1'b0),
        .rx_load_51(1'b0),
        .rx_load_6(1'b0),
        .rx_load_7(1'b0),
        .rx_load_8(1'b0),
        .rx_load_9(1'b0),
        .rx_load_ext_0(1'b0),
        .rx_load_ext_1(1'b0),
        .rx_load_ext_10(1'b0),
        .rx_load_ext_11(1'b0),
        .rx_load_ext_12(1'b0),
        .rx_load_ext_13(1'b0),
        .rx_load_ext_14(1'b0),
        .rx_load_ext_15(1'b0),
        .rx_load_ext_16(1'b0),
        .rx_load_ext_17(1'b0),
        .rx_load_ext_18(1'b0),
        .rx_load_ext_19(1'b0),
        .rx_load_ext_2(1'b0),
        .rx_load_ext_20(1'b0),
        .rx_load_ext_21(1'b0),
        .rx_load_ext_22(1'b0),
        .rx_load_ext_23(1'b0),
        .rx_load_ext_24(1'b0),
        .rx_load_ext_25(1'b0),
        .rx_load_ext_26(1'b0),
        .rx_load_ext_27(1'b0),
        .rx_load_ext_28(1'b0),
        .rx_load_ext_29(1'b0),
        .rx_load_ext_3(1'b0),
        .rx_load_ext_30(1'b0),
        .rx_load_ext_31(1'b0),
        .rx_load_ext_32(1'b0),
        .rx_load_ext_33(1'b0),
        .rx_load_ext_34(1'b0),
        .rx_load_ext_35(1'b0),
        .rx_load_ext_36(1'b0),
        .rx_load_ext_37(1'b0),
        .rx_load_ext_38(1'b0),
        .rx_load_ext_39(1'b0),
        .rx_load_ext_4(1'b0),
        .rx_load_ext_40(1'b0),
        .rx_load_ext_41(1'b0),
        .rx_load_ext_42(1'b0),
        .rx_load_ext_43(1'b0),
        .rx_load_ext_44(1'b0),
        .rx_load_ext_45(1'b0),
        .rx_load_ext_46(1'b0),
        .rx_load_ext_47(1'b0),
        .rx_load_ext_48(1'b0),
        .rx_load_ext_49(1'b0),
        .rx_load_ext_5(1'b0),
        .rx_load_ext_50(1'b0),
        .rx_load_ext_51(1'b0),
        .rx_load_ext_6(1'b0),
        .rx_load_ext_7(1'b0),
        .rx_load_ext_8(1'b0),
        .rx_load_ext_9(1'b0),
        .rxtx_bitslip_sync_done(NLW_inst_rxtx_bitslip_sync_done_UNCONNECTED),
        .shared_pll0_clkout0_in(1'b0),
        .shared_pll0_clkoutphy_in(1'b0),
        .shared_pll0_clkoutphy_out(shared_pll0_clkoutphy_out),
        .shared_pll0_locked_in(1'b0),
        .shared_pll1_clkout0_in(1'b0),
        .shared_pll1_clkoutphy_in(1'b0),
        .shared_pll1_clkoutphy_out(NLW_inst_shared_pll1_clkoutphy_out_UNCONNECTED),
        .shared_pll1_locked_in(1'b0),
        .start_bitslip(1'b0),
        .tri_t_0(1'b0),
        .tri_t_1(1'b0),
        .tri_t_10(1'b0),
        .tri_t_11(1'b0),
        .tri_t_12(1'b0),
        .tri_t_13(1'b0),
        .tri_t_14(1'b0),
        .tri_t_15(1'b0),
        .tri_t_16(1'b0),
        .tri_t_17(1'b0),
        .tri_t_18(1'b0),
        .tri_t_19(1'b0),
        .tri_t_2(1'b0),
        .tri_t_20(1'b0),
        .tri_t_21(1'b0),
        .tri_t_22(1'b0),
        .tri_t_23(1'b0),
        .tri_t_24(1'b0),
        .tri_t_25(1'b0),
        .tri_t_26(1'b0),
        .tri_t_27(1'b0),
        .tri_t_28(1'b0),
        .tri_t_29(1'b0),
        .tri_t_3(1'b0),
        .tri_t_30(1'b0),
        .tri_t_31(1'b0),
        .tri_t_32(1'b0),
        .tri_t_33(1'b0),
        .tri_t_34(1'b0),
        .tri_t_35(1'b0),
        .tri_t_36(1'b0),
        .tri_t_37(1'b0),
        .tri_t_38(1'b0),
        .tri_t_39(1'b0),
        .tri_t_4(1'b0),
        .tri_t_40(1'b0),
        .tri_t_41(1'b0),
        .tri_t_42(1'b0),
        .tri_t_43(1'b0),
        .tri_t_44(1'b0),
        .tri_t_45(1'b0),
        .tri_t_46(1'b0),
        .tri_t_47(1'b0),
        .tri_t_48(1'b0),
        .tri_t_49(1'b0),
        .tri_t_5(1'b0),
        .tri_t_50(1'b0),
        .tri_t_51(1'b0),
        .tri_t_6(1'b0),
        .tri_t_7(1'b0),
        .tri_t_8(1'b0),
        .tri_t_9(1'b0),
        .tri_tbyte0({1'b0,1'b0,1'b0,1'b0}),
        .tri_tbyte1({1'b0,1'b0,1'b0,1'b0}),
        .tri_tbyte2({1'b0,1'b0,1'b0,1'b0}),
        .tri_tbyte3({1'b0,1'b0,1'b0,1'b0}),
        .tri_tbyte4({1'b0,1'b0,1'b0,1'b0}),
        .tri_tbyte5({1'b0,1'b0,1'b0,1'b0}),
        .tri_tbyte6({1'b0,1'b0,1'b0,1'b0}),
        .tri_tbyte7({1'b0,1'b0,1'b0,1'b0}),
        .tx_ce_0(1'b0),
        .tx_ce_1(1'b0),
        .tx_ce_10(1'b0),
        .tx_ce_11(1'b0),
        .tx_ce_12(1'b0),
        .tx_ce_13(1'b0),
        .tx_ce_14(1'b0),
        .tx_ce_15(1'b0),
        .tx_ce_16(1'b0),
        .tx_ce_17(1'b0),
        .tx_ce_18(1'b0),
        .tx_ce_19(1'b0),
        .tx_ce_2(1'b0),
        .tx_ce_20(1'b0),
        .tx_ce_21(1'b0),
        .tx_ce_22(1'b0),
        .tx_ce_23(1'b0),
        .tx_ce_24(1'b0),
        .tx_ce_25(1'b0),
        .tx_ce_26(1'b0),
        .tx_ce_27(1'b0),
        .tx_ce_28(1'b0),
        .tx_ce_29(1'b0),
        .tx_ce_3(1'b0),
        .tx_ce_30(1'b0),
        .tx_ce_31(1'b0),
        .tx_ce_32(1'b0),
        .tx_ce_33(1'b0),
        .tx_ce_34(1'b0),
        .tx_ce_35(1'b0),
        .tx_ce_36(1'b0),
        .tx_ce_37(1'b0),
        .tx_ce_38(1'b0),
        .tx_ce_39(1'b0),
        .tx_ce_4(1'b0),
        .tx_ce_40(1'b0),
        .tx_ce_41(1'b0),
        .tx_ce_42(1'b0),
        .tx_ce_43(1'b0),
        .tx_ce_44(1'b0),
        .tx_ce_45(1'b0),
        .tx_ce_46(1'b0),
        .tx_ce_47(1'b0),
        .tx_ce_48(1'b0),
        .tx_ce_49(1'b0),
        .tx_ce_5(1'b0),
        .tx_ce_50(1'b0),
        .tx_ce_51(1'b0),
        .tx_ce_6(1'b0),
        .tx_ce_7(1'b0),
        .tx_ce_8(1'b0),
        .tx_ce_9(1'b0),
        .tx_clk(1'b0),
        .tx_cntvaluein_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_10({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_11({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_12({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_13({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_14({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_15({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_16({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_17({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_18({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_19({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_20({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_21({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_22({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_23({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_24({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_25({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_26({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_27({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_28({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_29({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_30({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_31({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_32({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_33({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_34({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_35({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_36({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_37({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_38({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_39({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_4({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_40({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_41({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_42({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_43({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_44({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_45({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_46({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_47({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_48({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_49({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_5({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_50({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_51({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_7({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_8({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvaluein_9({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_cntvalueout_0(NLW_inst_tx_cntvalueout_0_UNCONNECTED[8:0]),
        .tx_cntvalueout_1(NLW_inst_tx_cntvalueout_1_UNCONNECTED[8:0]),
        .tx_cntvalueout_10(NLW_inst_tx_cntvalueout_10_UNCONNECTED[8:0]),
        .tx_cntvalueout_11(NLW_inst_tx_cntvalueout_11_UNCONNECTED[8:0]),
        .tx_cntvalueout_12(NLW_inst_tx_cntvalueout_12_UNCONNECTED[8:0]),
        .tx_cntvalueout_13(NLW_inst_tx_cntvalueout_13_UNCONNECTED[8:0]),
        .tx_cntvalueout_14(NLW_inst_tx_cntvalueout_14_UNCONNECTED[8:0]),
        .tx_cntvalueout_15(NLW_inst_tx_cntvalueout_15_UNCONNECTED[8:0]),
        .tx_cntvalueout_16(NLW_inst_tx_cntvalueout_16_UNCONNECTED[8:0]),
        .tx_cntvalueout_17(NLW_inst_tx_cntvalueout_17_UNCONNECTED[8:0]),
        .tx_cntvalueout_18(NLW_inst_tx_cntvalueout_18_UNCONNECTED[8:0]),
        .tx_cntvalueout_19(NLW_inst_tx_cntvalueout_19_UNCONNECTED[8:0]),
        .tx_cntvalueout_2(NLW_inst_tx_cntvalueout_2_UNCONNECTED[8:0]),
        .tx_cntvalueout_20(NLW_inst_tx_cntvalueout_20_UNCONNECTED[8:0]),
        .tx_cntvalueout_21(NLW_inst_tx_cntvalueout_21_UNCONNECTED[8:0]),
        .tx_cntvalueout_22(NLW_inst_tx_cntvalueout_22_UNCONNECTED[8:0]),
        .tx_cntvalueout_23(NLW_inst_tx_cntvalueout_23_UNCONNECTED[8:0]),
        .tx_cntvalueout_24(NLW_inst_tx_cntvalueout_24_UNCONNECTED[8:0]),
        .tx_cntvalueout_25(NLW_inst_tx_cntvalueout_25_UNCONNECTED[8:0]),
        .tx_cntvalueout_26(NLW_inst_tx_cntvalueout_26_UNCONNECTED[8:0]),
        .tx_cntvalueout_27(NLW_inst_tx_cntvalueout_27_UNCONNECTED[8:0]),
        .tx_cntvalueout_28(NLW_inst_tx_cntvalueout_28_UNCONNECTED[8:0]),
        .tx_cntvalueout_29(NLW_inst_tx_cntvalueout_29_UNCONNECTED[8:0]),
        .tx_cntvalueout_3(NLW_inst_tx_cntvalueout_3_UNCONNECTED[8:0]),
        .tx_cntvalueout_30(NLW_inst_tx_cntvalueout_30_UNCONNECTED[8:0]),
        .tx_cntvalueout_31(NLW_inst_tx_cntvalueout_31_UNCONNECTED[8:0]),
        .tx_cntvalueout_32(NLW_inst_tx_cntvalueout_32_UNCONNECTED[8:0]),
        .tx_cntvalueout_33(NLW_inst_tx_cntvalueout_33_UNCONNECTED[8:0]),
        .tx_cntvalueout_34(NLW_inst_tx_cntvalueout_34_UNCONNECTED[8:0]),
        .tx_cntvalueout_35(NLW_inst_tx_cntvalueout_35_UNCONNECTED[8:0]),
        .tx_cntvalueout_36(NLW_inst_tx_cntvalueout_36_UNCONNECTED[8:0]),
        .tx_cntvalueout_37(NLW_inst_tx_cntvalueout_37_UNCONNECTED[8:0]),
        .tx_cntvalueout_38(NLW_inst_tx_cntvalueout_38_UNCONNECTED[8:0]),
        .tx_cntvalueout_39(NLW_inst_tx_cntvalueout_39_UNCONNECTED[8:0]),
        .tx_cntvalueout_4(NLW_inst_tx_cntvalueout_4_UNCONNECTED[8:0]),
        .tx_cntvalueout_40(NLW_inst_tx_cntvalueout_40_UNCONNECTED[8:0]),
        .tx_cntvalueout_41(NLW_inst_tx_cntvalueout_41_UNCONNECTED[8:0]),
        .tx_cntvalueout_42(NLW_inst_tx_cntvalueout_42_UNCONNECTED[8:0]),
        .tx_cntvalueout_43(NLW_inst_tx_cntvalueout_43_UNCONNECTED[8:0]),
        .tx_cntvalueout_44(NLW_inst_tx_cntvalueout_44_UNCONNECTED[8:0]),
        .tx_cntvalueout_45(NLW_inst_tx_cntvalueout_45_UNCONNECTED[8:0]),
        .tx_cntvalueout_46(NLW_inst_tx_cntvalueout_46_UNCONNECTED[8:0]),
        .tx_cntvalueout_47(NLW_inst_tx_cntvalueout_47_UNCONNECTED[8:0]),
        .tx_cntvalueout_48(NLW_inst_tx_cntvalueout_48_UNCONNECTED[8:0]),
        .tx_cntvalueout_49(NLW_inst_tx_cntvalueout_49_UNCONNECTED[8:0]),
        .tx_cntvalueout_5(NLW_inst_tx_cntvalueout_5_UNCONNECTED[8:0]),
        .tx_cntvalueout_50(NLW_inst_tx_cntvalueout_50_UNCONNECTED[8:0]),
        .tx_cntvalueout_51(NLW_inst_tx_cntvalueout_51_UNCONNECTED[8:0]),
        .tx_cntvalueout_6(NLW_inst_tx_cntvalueout_6_UNCONNECTED[8:0]),
        .tx_cntvalueout_7(NLW_inst_tx_cntvalueout_7_UNCONNECTED[8:0]),
        .tx_cntvalueout_8(NLW_inst_tx_cntvalueout_8_UNCONNECTED[8:0]),
        .tx_cntvalueout_9(NLW_inst_tx_cntvalueout_9_UNCONNECTED[8:0]),
        .tx_en_vtc_0(1'b0),
        .tx_en_vtc_1(1'b0),
        .tx_en_vtc_10(1'b0),
        .tx_en_vtc_11(1'b0),
        .tx_en_vtc_12(1'b0),
        .tx_en_vtc_13(1'b0),
        .tx_en_vtc_14(1'b0),
        .tx_en_vtc_15(1'b0),
        .tx_en_vtc_16(1'b0),
        .tx_en_vtc_17(1'b0),
        .tx_en_vtc_18(1'b0),
        .tx_en_vtc_19(1'b0),
        .tx_en_vtc_2(1'b0),
        .tx_en_vtc_20(1'b0),
        .tx_en_vtc_21(1'b0),
        .tx_en_vtc_22(1'b0),
        .tx_en_vtc_23(1'b0),
        .tx_en_vtc_24(1'b0),
        .tx_en_vtc_25(1'b0),
        .tx_en_vtc_26(1'b0),
        .tx_en_vtc_27(1'b0),
        .tx_en_vtc_28(1'b0),
        .tx_en_vtc_29(1'b0),
        .tx_en_vtc_3(1'b0),
        .tx_en_vtc_30(1'b0),
        .tx_en_vtc_31(1'b0),
        .tx_en_vtc_32(1'b0),
        .tx_en_vtc_33(1'b0),
        .tx_en_vtc_34(1'b0),
        .tx_en_vtc_35(1'b0),
        .tx_en_vtc_36(1'b0),
        .tx_en_vtc_37(1'b0),
        .tx_en_vtc_38(1'b0),
        .tx_en_vtc_39(1'b0),
        .tx_en_vtc_4(1'b0),
        .tx_en_vtc_40(1'b0),
        .tx_en_vtc_41(1'b0),
        .tx_en_vtc_42(1'b0),
        .tx_en_vtc_43(1'b0),
        .tx_en_vtc_44(1'b0),
        .tx_en_vtc_45(1'b0),
        .tx_en_vtc_46(1'b0),
        .tx_en_vtc_47(1'b0),
        .tx_en_vtc_48(1'b0),
        .tx_en_vtc_49(1'b0),
        .tx_en_vtc_5(1'b0),
        .tx_en_vtc_50(1'b0),
        .tx_en_vtc_51(1'b0),
        .tx_en_vtc_6(1'b0),
        .tx_en_vtc_7(1'b0),
        .tx_en_vtc_8(1'b0),
        .tx_en_vtc_9(1'b0),
        .tx_inc_0(1'b0),
        .tx_inc_1(1'b0),
        .tx_inc_10(1'b0),
        .tx_inc_11(1'b0),
        .tx_inc_12(1'b0),
        .tx_inc_13(1'b0),
        .tx_inc_14(1'b0),
        .tx_inc_15(1'b0),
        .tx_inc_16(1'b0),
        .tx_inc_17(1'b0),
        .tx_inc_18(1'b0),
        .tx_inc_19(1'b0),
        .tx_inc_2(1'b0),
        .tx_inc_20(1'b0),
        .tx_inc_21(1'b0),
        .tx_inc_22(1'b0),
        .tx_inc_23(1'b0),
        .tx_inc_24(1'b0),
        .tx_inc_25(1'b0),
        .tx_inc_26(1'b0),
        .tx_inc_27(1'b0),
        .tx_inc_28(1'b0),
        .tx_inc_29(1'b0),
        .tx_inc_3(1'b0),
        .tx_inc_30(1'b0),
        .tx_inc_31(1'b0),
        .tx_inc_32(1'b0),
        .tx_inc_33(1'b0),
        .tx_inc_34(1'b0),
        .tx_inc_35(1'b0),
        .tx_inc_36(1'b0),
        .tx_inc_37(1'b0),
        .tx_inc_38(1'b0),
        .tx_inc_39(1'b0),
        .tx_inc_4(1'b0),
        .tx_inc_40(1'b0),
        .tx_inc_41(1'b0),
        .tx_inc_42(1'b0),
        .tx_inc_43(1'b0),
        .tx_inc_44(1'b0),
        .tx_inc_45(1'b0),
        .tx_inc_46(1'b0),
        .tx_inc_47(1'b0),
        .tx_inc_48(1'b0),
        .tx_inc_49(1'b0),
        .tx_inc_5(1'b0),
        .tx_inc_50(1'b0),
        .tx_inc_51(1'b0),
        .tx_inc_6(1'b0),
        .tx_inc_7(1'b0),
        .tx_inc_8(1'b0),
        .tx_inc_9(1'b0),
        .tx_load_0(1'b0),
        .tx_load_1(1'b0),
        .tx_load_10(1'b0),
        .tx_load_11(1'b0),
        .tx_load_12(1'b0),
        .tx_load_13(1'b0),
        .tx_load_14(1'b0),
        .tx_load_15(1'b0),
        .tx_load_16(1'b0),
        .tx_load_17(1'b0),
        .tx_load_18(1'b0),
        .tx_load_19(1'b0),
        .tx_load_2(1'b0),
        .tx_load_20(1'b0),
        .tx_load_21(1'b0),
        .tx_load_22(1'b0),
        .tx_load_23(1'b0),
        .tx_load_24(1'b0),
        .tx_load_25(1'b0),
        .tx_load_26(1'b0),
        .tx_load_27(1'b0),
        .tx_load_28(1'b0),
        .tx_load_29(1'b0),
        .tx_load_3(1'b0),
        .tx_load_30(1'b0),
        .tx_load_31(1'b0),
        .tx_load_32(1'b0),
        .tx_load_33(1'b0),
        .tx_load_34(1'b0),
        .tx_load_35(1'b0),
        .tx_load_36(1'b0),
        .tx_load_37(1'b0),
        .tx_load_38(1'b0),
        .tx_load_39(1'b0),
        .tx_load_4(1'b0),
        .tx_load_40(1'b0),
        .tx_load_41(1'b0),
        .tx_load_42(1'b0),
        .tx_load_43(1'b0),
        .tx_load_44(1'b0),
        .tx_load_45(1'b0),
        .tx_load_46(1'b0),
        .tx_load_47(1'b0),
        .tx_load_48(1'b0),
        .tx_load_49(1'b0),
        .tx_load_5(1'b0),
        .tx_load_50(1'b0),
        .tx_load_51(1'b0),
        .tx_load_6(1'b0),
        .tx_load_7(1'b0),
        .tx_load_8(1'b0),
        .tx_load_9(1'b0),
        .vtc_rdy_bsc0(vtc_rdy_bsc0),
        .vtc_rdy_bsc1(NLW_inst_vtc_rdy_bsc1_UNCONNECTED),
        .vtc_rdy_bsc2(NLW_inst_vtc_rdy_bsc2_UNCONNECTED),
        .vtc_rdy_bsc3(NLW_inst_vtc_rdy_bsc3_UNCONNECTED),
        .vtc_rdy_bsc4(NLW_inst_vtc_rdy_bsc4_UNCONNECTED),
        .vtc_rdy_bsc5(NLW_inst_vtc_rdy_bsc5_UNCONNECTED),
        .vtc_rdy_bsc6(NLW_inst_vtc_rdy_bsc6_UNCONNECTED),
        .vtc_rdy_bsc7(NLW_inst_vtc_rdy_bsc7_UNCONNECTED));
endmodule

(* C_ALL_EN_PIN_INFO = "0 {nibble 0 dir RX sig_type DIFF data_strb Strobe data_strb_org Strobe sig_name clk_rxp loc G1} 1 {nibble 0 dir RX sig_type DIFF data_strb Strobe data_strb_org Strobe sig_name clk_rxn loc F1} 2 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxp0 loc E1} 3 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxn0 loc D1} 4 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxp1 loc F2} 5 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxn1 loc E2}" *) (* C_ALL_RX_EN = "52'b0000000000000000000000000000000000000000000000111111" *) (* C_BANK = "66" *) 
(* C_BIDIR_BITSLICE_EN = "52'b0000000000000000000000000000000000000000000000000000" *) (* C_BIDIR_FIFO_SYNC_MODE = "FALSE" *) (* C_BIDIR_IS_RX_CLK_INVERTED = "1'b0" *) 
(* C_BIDIR_IS_RX_RST_DLY_INVERTED = "1'b0" *) (* C_BIDIR_IS_RX_RST_INVERTED = "1'b0" *) (* C_BIDIR_IS_TX_CLK_INVERTED = "1'b0" *) 
(* C_BIDIR_IS_TX_RST_DLY_INVERTED = "1'b0" *) (* C_BIDIR_IS_TX_RST_INVERTED = "1'b0" *) (* C_BIDIR_RX_DELAY_FORMAT = "TIME" *) 
(* C_BIDIR_TX_DELAY_FORMAT = "TIME" *) (* C_BITSLIP_MODE = "SLIP_PER_BIT" *) (* C_BITSLIP_VAL = "8'b00101100" *) 
(* C_BS0_INFO = "0 {name bg0_pin0_nc loc G1} 1 {name bg0_pin6_nc loc G3} 2 {name bg1_pin0_nc loc C1} 3 {name bg1_pin6_nc loc B4} 4 {name bg2_pin0_nc loc D7} 5 {name bg2_pin6_nc loc G8} 6 {name bg3_pin0_nc loc B5} 7 {name bg3_pin6_nc loc C8}" *) (* C_BSC_CTRL_CLK = "EXTERNAL" *) (* C_BSC_EN_DYN_ODLY_MODE = "FALSE" *) 
(* C_BSC_IDLY_VT_TRACK = "TRUE" *) (* C_BSC_ODLY_VT_TRACK = "TRUE" *) (* C_BSC_QDLY_VT_TRACK = "TRUE" *) 
(* C_BSC_READ_IDLE_COUNT = "6'b000000" *) (* C_BSC_REFCLK_SRC = "PLLCLK" *) (* C_BSC_ROUNDING_FACTOR = "16" *) 
(* C_BSC_RXGATE_EXTEND = "FALSE" *) (* C_BSC_RX_GATING = "DISABLE" *) (* C_BSC_SELF_CALIBRATE = "ENABLE" *) 
(* C_BSC_SIM_SPEEDUP = "FAST" *) (* C_BS_INIT_VAL = "52'b0000000000000000000000000000000000000000000000000000" *) (* C_CLKIN_DIFF_EN = "0" *) 
(* C_CLKIN_PERIOD = "5.000000" *) (* C_CLK_FWD = "0" *) (* C_CLK_FWD_BITSLICE_NO = "0" *) 
(* C_CLK_FWD_ENABLE = "52'b0000000000000000000000000000000000000000000000000000" *) (* C_CLK_FWD_PHASE = "0" *) (* C_CLK_SIG_TYPE = "SINGLE" *) 
(* C_CLOCK_TRI = "1" *) (* C_DATA_PIN_EN = "3" *) (* C_DATA_TRI = "1" *) 
(* C_DEVICE = "xczu3eg" *) (* C_DEVICE_FAMILY = "zynquplus" *) (* C_DIFFERENTIAL_IO_STD = "MIPI_DPHY_DCI" *) 
(* C_DIFFERENTIAL_IO_TERMINATION = "TERM_100" *) (* C_DIFF_EN = "52'b0000000000000000000000000000000000000000000000111111" *) (* C_DIV_MODE = "DIV4" *) 
(* C_ENABLE_BITSLIP = "0" *) (* C_ENABLE_DATA_BITSLIP = "0" *) (* C_ENABLE_N_PINS = "1" *) 
(* C_ENABLE_PLL0_PLLOUT1 = "0" *) (* C_ENABLE_PLL0_PLLOUTFB = "0" *) (* C_ENABLE_RIU_INTERFACE = "0" *) 
(* C_ENABLE_RIU_SPLIT = "0" *) (* C_ENABLE_TX_TRI = "0" *) (* C_EN_BIDIR = "0" *) 
(* C_EN_BSC0 = "1" *) (* C_EN_BSC1 = "0" *) (* C_EN_BSC2 = "0" *) 
(* C_EN_BSC3 = "0" *) (* C_EN_BSC4 = "0" *) (* C_EN_BSC5 = "0" *) 
(* C_EN_BSC6 = "0" *) (* C_EN_BSC7 = "0" *) (* C_EN_MULTI_INTF_PORTS = "0" *) 
(* C_EN_RIU_OR0 = "FALSE" *) (* C_EN_RIU_OR1 = "FALSE" *) (* C_EN_RIU_OR2 = "FALSE" *) 
(* C_EN_RIU_OR3 = "FALSE" *) (* C_EN_RX = "1" *) (* C_EN_TX = "0" *) 
(* C_EN_VTC = "0" *) (* C_EXDES_BANK = "64_(HP)" *) (* C_EX_CLK_FREQ = "200.000000" *) 
(* C_EX_INST_GEN = "0" *) (* C_FIFO_SYNC_MODE = "1" *) (* C_GC_LOC = "21 {name IO_L11P_T1U_N8_GC_66 loc D4} 23 {name IO_L12P_T1U_N10_GC_66 loc C3} 28 {name IO_L14P_T2L_N2_GC_66 loc E5}" *) 
(* C_INCLK_LOC = "NONE" *) (* C_INCLK_PIN = "100" *) (* C_INV_RX_CLK = "8'b00000000" *) 
(* C_NIB0_BS0_EN = "0" *) (* C_NIB0_EN_CLK_TO_EXT_NORTH = "1'b0" *) (* C_NIB0_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
(* C_NIB0_EN_OTHER_NCLK = "1'b0" *) (* C_NIB0_EN_OTHER_PCLK = "1'b0" *) (* C_NIB1_BS0_EN = "0" *) 
(* C_NIB1_EN_CLK_TO_EXT_NORTH = "1'b0" *) (* C_NIB1_EN_CLK_TO_EXT_SOUTH = "1'b0" *) (* C_NIB1_EN_OTHER_NCLK = "1'b0" *) 
(* C_NIB1_EN_OTHER_PCLK = "1'b0" *) (* C_NIB2_BS0_EN = "0" *) (* C_NIB2_EN_CLK_TO_EXT_NORTH = "1'b0" *) 
(* C_NIB2_EN_CLK_TO_EXT_SOUTH = "1'b0" *) (* C_NIB2_EN_OTHER_NCLK = "1'b0" *) (* C_NIB2_EN_OTHER_PCLK = "1'b0" *) 
(* C_NIB3_BS0_EN = "0" *) (* C_NIB3_EN_CLK_TO_EXT_NORTH = "1'b0" *) (* C_NIB3_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
(* C_NIB3_EN_OTHER_NCLK = "1'b0" *) (* C_NIB3_EN_OTHER_PCLK = "1'b0" *) (* C_NIB4_BS0_EN = "0" *) 
(* C_NIB4_EN_CLK_TO_EXT_NORTH = "1'b0" *) (* C_NIB4_EN_CLK_TO_EXT_SOUTH = "1'b0" *) (* C_NIB4_EN_OTHER_NCLK = "1'b0" *) 
(* C_NIB4_EN_OTHER_PCLK = "1'b0" *) (* C_NIB5_BS0_EN = "0" *) (* C_NIB5_EN_CLK_TO_EXT_NORTH = "1'b0" *) 
(* C_NIB5_EN_CLK_TO_EXT_SOUTH = "1'b0" *) (* C_NIB5_EN_OTHER_NCLK = "1'b0" *) (* C_NIB5_EN_OTHER_PCLK = "1'b0" *) 
(* C_NIB6_BS0_EN = "0" *) (* C_NIB6_EN_CLK_TO_EXT_NORTH = "1'b0" *) (* C_NIB6_EN_CLK_TO_EXT_SOUTH = "1'b0" *) 
(* C_NIB6_EN_OTHER_NCLK = "1'b0" *) (* C_NIB6_EN_OTHER_PCLK = "1'b0" *) (* C_NIB7_BS0_EN = "0" *) 
(* C_NIB7_EN_CLK_TO_EXT_NORTH = "1'b0" *) (* C_NIB7_EN_CLK_TO_EXT_SOUTH = "1'b0" *) (* C_NIB7_EN_OTHER_NCLK = "1'b0" *) 
(* C_NIB7_EN_OTHER_PCLK = "1'b0" *) (* C_NIBBLE0_TRI = "0" *) (* C_NIBBLE1_TRI = "0" *) 
(* C_NIBBLE2_TRI = "0" *) (* C_NIBBLE3_TRI = "0" *) (* C_NIBBLE4_TRI = "0" *) 
(* C_NIBBLE5_TRI = "0" *) (* C_NIBBLE6_TRI = "0" *) (* C_NIBBLE7_TRI = "0" *) 
(* C_PIN_INFO = "0 {nibble 0 dir RX sig_type DIFF data_strb Strobe data_strb_org Strobe sig_name clk_rxp loc G1} 1 {nibble 0 dir RX sig_type DIFF data_strb Strobe data_strb_org Strobe sig_name clk_rxn loc F1} 2 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxp0 loc E1} 3 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxn0 loc D1} 4 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxp1 loc F2} 5 {nibble 0 dir RX sig_type DIFF data_strb Data data_strb_org Data sig_name data_rxn1 loc E2}" *) (* C_PLL0_CLK0_PHASE = "0.000000" *) (* C_PLL0_CLK1_PHASE = "0.000000" *) 
(* C_PLL0_CLKFBOUT_MULT = "15" *) (* C_PLL0_CLKOUT1_DIVIDE = "1" *) (* C_PLL0_CLKOUTPHY_MODE = "VCO" *) 
(* C_PLL0_CLK_SOURCE = "BUFG_TO_PLL" *) (* C_PLL0_DIVCLK_DIVIDE = "2" *) (* C_PLL0_DIV_FACTOR = "1.000000" *) 
(* C_PLL0_FIFO_WRITE_CLK_EN = "1" *) (* C_PLL0_MMCM_CLKFBOUT_MULT_F = "7.875000" *) (* C_PLL0_MMCM_CLKOUT0_DIVIDE_F = "7.875000" *) 
(* C_PLL0_MMCM_DIVCLK_DIVIDE = "1" *) (* C_PLL0_RX_EXTERNAL_CLK_TO_DATA = "3" *) (* C_PLL1_CLK0_PHASE = "0.000000" *) 
(* C_PLL1_CLK1_PHASE = "0.000000" *) (* C_PLL1_CLKFBOUT_MULT = "15" *) (* C_PLL1_CLKOUTPHY_MODE = "VCO" *) 
(* C_PLL1_DIVCLK_DIVIDE = "2" *) (* C_PLL1_DIV_FACTOR = "1.000000" *) (* C_PLL_SHARING = "0" *) 
(* C_PLL_VCOMIN = "750.000000" *) (* C_REC_IN_FREQ = "93.750" *) (* C_RX_BITSLICE0_EN = "8'b00000000" *) 
(* C_RX_BITSLICE_EN = "52'b0000000000000000000000000000000000000000000000111111" *) (* C_RX_DELAY_CASCADE = "0" *) (* C_RX_DELAY_FORMAT = "TIME" *) 
(* C_RX_DELAY_TYPE = "2'b00" *) (* C_RX_DELAY_TYPE0 = "2'b00" *) (* C_RX_DELAY_TYPE1 = "2'b00" *) 
(* C_RX_DELAY_TYPE10 = "2'b00" *) (* C_RX_DELAY_TYPE11 = "2'b00" *) (* C_RX_DELAY_TYPE12 = "2'b00" *) 
(* C_RX_DELAY_TYPE13 = "2'b00" *) (* C_RX_DELAY_TYPE14 = "2'b00" *) (* C_RX_DELAY_TYPE15 = "2'b00" *) 
(* C_RX_DELAY_TYPE16 = "2'b00" *) (* C_RX_DELAY_TYPE17 = "2'b00" *) (* C_RX_DELAY_TYPE18 = "2'b00" *) 
(* C_RX_DELAY_TYPE19 = "2'b00" *) (* C_RX_DELAY_TYPE2 = "2'b00" *) (* C_RX_DELAY_TYPE20 = "2'b00" *) 
(* C_RX_DELAY_TYPE21 = "2'b00" *) (* C_RX_DELAY_TYPE22 = "2'b00" *) (* C_RX_DELAY_TYPE23 = "2'b00" *) 
(* C_RX_DELAY_TYPE24 = "2'b00" *) (* C_RX_DELAY_TYPE25 = "2'b00" *) (* C_RX_DELAY_TYPE26 = "2'b00" *) 
(* C_RX_DELAY_TYPE27 = "2'b00" *) (* C_RX_DELAY_TYPE28 = "2'b00" *) (* C_RX_DELAY_TYPE29 = "2'b00" *) 
(* C_RX_DELAY_TYPE3 = "2'b00" *) (* C_RX_DELAY_TYPE30 = "2'b00" *) (* C_RX_DELAY_TYPE31 = "2'b00" *) 
(* C_RX_DELAY_TYPE32 = "2'b00" *) (* C_RX_DELAY_TYPE33 = "2'b00" *) (* C_RX_DELAY_TYPE34 = "2'b00" *) 
(* C_RX_DELAY_TYPE35 = "2'b00" *) (* C_RX_DELAY_TYPE36 = "2'b00" *) (* C_RX_DELAY_TYPE37 = "2'b00" *) 
(* C_RX_DELAY_TYPE38 = "2'b00" *) (* C_RX_DELAY_TYPE39 = "2'b00" *) (* C_RX_DELAY_TYPE4 = "2'b00" *) 
(* C_RX_DELAY_TYPE40 = "2'b00" *) (* C_RX_DELAY_TYPE41 = "2'b00" *) (* C_RX_DELAY_TYPE42 = "2'b00" *) 
(* C_RX_DELAY_TYPE43 = "2'b00" *) (* C_RX_DELAY_TYPE44 = "2'b00" *) (* C_RX_DELAY_TYPE45 = "2'b00" *) 
(* C_RX_DELAY_TYPE46 = "2'b00" *) (* C_RX_DELAY_TYPE47 = "2'b00" *) (* C_RX_DELAY_TYPE48 = "2'b00" *) 
(* C_RX_DELAY_TYPE49 = "2'b00" *) (* C_RX_DELAY_TYPE5 = "2'b00" *) (* C_RX_DELAY_TYPE50 = "2'b00" *) 
(* C_RX_DELAY_TYPE51 = "2'b00" *) (* C_RX_DELAY_TYPE6 = "2'b00" *) (* C_RX_DELAY_TYPE7 = "2'b00" *) 
(* C_RX_DELAY_TYPE8 = "2'b00" *) (* C_RX_DELAY_TYPE9 = "2'b00" *) (* C_RX_DELAY_VALUE = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE0 = "12'b000000000000" *) (* C_RX_DELAY_VALUE1 = "12'b000000000000" *) (* C_RX_DELAY_VALUE10 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE11 = "12'b000000000000" *) (* C_RX_DELAY_VALUE12 = "12'b000000000000" *) (* C_RX_DELAY_VALUE13 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE14 = "12'b000000000000" *) (* C_RX_DELAY_VALUE15 = "12'b000000000000" *) (* C_RX_DELAY_VALUE16 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE17 = "12'b000000000000" *) (* C_RX_DELAY_VALUE18 = "12'b000000000000" *) (* C_RX_DELAY_VALUE19 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE2 = "12'b000000000000" *) (* C_RX_DELAY_VALUE20 = "12'b000000000000" *) (* C_RX_DELAY_VALUE21 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE22 = "12'b000000000000" *) (* C_RX_DELAY_VALUE23 = "12'b000000000000" *) (* C_RX_DELAY_VALUE24 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE25 = "12'b000000000000" *) (* C_RX_DELAY_VALUE26 = "12'b000000000000" *) (* C_RX_DELAY_VALUE27 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE28 = "12'b000000000000" *) (* C_RX_DELAY_VALUE29 = "12'b000000000000" *) (* C_RX_DELAY_VALUE3 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE30 = "12'b000000000000" *) (* C_RX_DELAY_VALUE31 = "12'b000000000000" *) (* C_RX_DELAY_VALUE32 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE33 = "12'b000000000000" *) (* C_RX_DELAY_VALUE34 = "12'b000000000000" *) (* C_RX_DELAY_VALUE35 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE36 = "12'b000000000000" *) (* C_RX_DELAY_VALUE37 = "12'b000000000000" *) (* C_RX_DELAY_VALUE38 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE39 = "12'b000000000000" *) (* C_RX_DELAY_VALUE4 = "12'b000000000000" *) (* C_RX_DELAY_VALUE40 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE41 = "12'b000000000000" *) (* C_RX_DELAY_VALUE42 = "12'b000000000000" *) (* C_RX_DELAY_VALUE43 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE44 = "12'b000000000000" *) (* C_RX_DELAY_VALUE45 = "12'b000000000000" *) (* C_RX_DELAY_VALUE46 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE47 = "12'b000000000000" *) (* C_RX_DELAY_VALUE48 = "12'b000000000000" *) (* C_RX_DELAY_VALUE49 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE5 = "12'b000000000000" *) (* C_RX_DELAY_VALUE50 = "12'b000000000000" *) (* C_RX_DELAY_VALUE51 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE6 = "12'b000000000000" *) (* C_RX_DELAY_VALUE7 = "12'b000000000000" *) (* C_RX_DELAY_VALUE8 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE9 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT0 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT1 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT10 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT11 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT12 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT13 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT14 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT15 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT16 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT17 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT18 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT19 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT2 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT20 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT21 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT22 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT23 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT24 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT25 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT26 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT27 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT28 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT29 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT3 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT30 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT31 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT32 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT33 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT34 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT35 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT36 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT37 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT38 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT39 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT4 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT40 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT41 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT42 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT43 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT44 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT45 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT46 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT47 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT48 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT49 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT5 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT50 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT51 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT6 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT7 = "12'b000000000000" *) 
(* C_RX_DELAY_VALUE_EXT8 = "12'b000000000000" *) (* C_RX_DELAY_VALUE_EXT9 = "12'b000000000000" *) (* C_RX_EQUALIZATION_D = "EQ_NONE" *) 
(* C_RX_EQUALIZATION_S = "NONE" *) (* C_RX_FIFO_SYNC_MODE = "FALSE" *) (* C_RX_IS_CLK_EXT_INVERTED = "1'b0" *) 
(* C_RX_IS_CLK_INVERTED = "1'b0" *) (* C_RX_IS_RST_DLY_EXT_INVERTED = "1'b0" *) (* C_RX_IS_RST_DLY_INVERTED = "1'b0" *) 
(* C_RX_IS_RST_INVERTED = "1'b0" *) (* C_RX_PIN_EN = "52'b0000000000000000000000000000000000000000000000010101" *) (* C_RX_REFCLK_FREQ = "1500.000000" *) 
(* C_RX_STROBE_EN = "16'b0000000000000011" *) (* C_SERIALIZATION_FACTOR = "8" *) (* C_SERIAL_MODE = "FALSE" *) 
(* C_SIM_DEVICE = "ULTRASCALE_PLUS_ES1" *) (* C_SIM_VERSION = "2.000000" *) (* C_SINGLE_ENDED_IO_STD = "NONE" *) 
(* C_SINGLE_ENDED_IO_TERMINATION = "NONE" *) (* C_STRB_INFO = "5 99 5 5 5 5 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99 99" *) (* C_TEMPLATE = "2" *) 
(* C_TX_BITSLICE_EN = "52'b0000000000000000000000000000000000000000000000000000" *) (* C_TX_DATA_PHASE = "0" *) (* C_TX_DELAY_FORMAT = "TIME" *) 
(* C_TX_DELAY_TYPE = "0" *) (* C_TX_DELAY_TYPE0 = "2'b00" *) (* C_TX_DELAY_TYPE1 = "2'b00" *) 
(* C_TX_DELAY_TYPE10 = "2'b00" *) (* C_TX_DELAY_TYPE11 = "2'b00" *) (* C_TX_DELAY_TYPE12 = "2'b00" *) 
(* C_TX_DELAY_TYPE13 = "2'b00" *) (* C_TX_DELAY_TYPE14 = "2'b00" *) (* C_TX_DELAY_TYPE15 = "2'b00" *) 
(* C_TX_DELAY_TYPE16 = "2'b00" *) (* C_TX_DELAY_TYPE17 = "2'b00" *) (* C_TX_DELAY_TYPE18 = "2'b00" *) 
(* C_TX_DELAY_TYPE19 = "2'b00" *) (* C_TX_DELAY_TYPE2 = "2'b00" *) (* C_TX_DELAY_TYPE20 = "2'b00" *) 
(* C_TX_DELAY_TYPE21 = "2'b00" *) (* C_TX_DELAY_TYPE22 = "2'b00" *) (* C_TX_DELAY_TYPE23 = "2'b00" *) 
(* C_TX_DELAY_TYPE24 = "2'b00" *) (* C_TX_DELAY_TYPE25 = "2'b00" *) (* C_TX_DELAY_TYPE26 = "2'b00" *) 
(* C_TX_DELAY_TYPE27 = "2'b00" *) (* C_TX_DELAY_TYPE28 = "2'b00" *) (* C_TX_DELAY_TYPE29 = "2'b00" *) 
(* C_TX_DELAY_TYPE3 = "2'b00" *) (* C_TX_DELAY_TYPE30 = "2'b00" *) (* C_TX_DELAY_TYPE31 = "2'b00" *) 
(* C_TX_DELAY_TYPE32 = "2'b00" *) (* C_TX_DELAY_TYPE33 = "2'b00" *) (* C_TX_DELAY_TYPE34 = "2'b00" *) 
(* C_TX_DELAY_TYPE35 = "2'b00" *) (* C_TX_DELAY_TYPE36 = "2'b00" *) (* C_TX_DELAY_TYPE37 = "2'b00" *) 
(* C_TX_DELAY_TYPE38 = "2'b00" *) (* C_TX_DELAY_TYPE39 = "2'b00" *) (* C_TX_DELAY_TYPE4 = "2'b00" *) 
(* C_TX_DELAY_TYPE40 = "2'b00" *) (* C_TX_DELAY_TYPE41 = "2'b00" *) (* C_TX_DELAY_TYPE42 = "2'b00" *) 
(* C_TX_DELAY_TYPE43 = "2'b00" *) (* C_TX_DELAY_TYPE44 = "2'b00" *) (* C_TX_DELAY_TYPE45 = "2'b00" *) 
(* C_TX_DELAY_TYPE46 = "2'b00" *) (* C_TX_DELAY_TYPE47 = "2'b00" *) (* C_TX_DELAY_TYPE48 = "2'b00" *) 
(* C_TX_DELAY_TYPE49 = "2'b00" *) (* C_TX_DELAY_TYPE5 = "2'b00" *) (* C_TX_DELAY_TYPE50 = "2'b00" *) 
(* C_TX_DELAY_TYPE51 = "2'b00" *) (* C_TX_DELAY_TYPE6 = "2'b00" *) (* C_TX_DELAY_TYPE7 = "2'b00" *) 
(* C_TX_DELAY_TYPE8 = "2'b00" *) (* C_TX_DELAY_TYPE9 = "2'b00" *) (* C_TX_DELAY_VALUE = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE0 = "12'b000000000000" *) (* C_TX_DELAY_VALUE1 = "12'b000000000000" *) (* C_TX_DELAY_VALUE10 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE11 = "12'b000000000000" *) (* C_TX_DELAY_VALUE12 = "12'b000000000000" *) (* C_TX_DELAY_VALUE13 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE14 = "12'b000000000000" *) (* C_TX_DELAY_VALUE15 = "12'b000000000000" *) (* C_TX_DELAY_VALUE16 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE17 = "12'b000000000000" *) (* C_TX_DELAY_VALUE18 = "12'b000000000000" *) (* C_TX_DELAY_VALUE19 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE2 = "12'b000000000000" *) (* C_TX_DELAY_VALUE20 = "12'b000000000000" *) (* C_TX_DELAY_VALUE21 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE22 = "12'b000000000000" *) (* C_TX_DELAY_VALUE23 = "12'b000000000000" *) (* C_TX_DELAY_VALUE24 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE25 = "12'b000000000000" *) (* C_TX_DELAY_VALUE26 = "12'b000000000000" *) (* C_TX_DELAY_VALUE27 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE28 = "12'b000000000000" *) (* C_TX_DELAY_VALUE29 = "12'b000000000000" *) (* C_TX_DELAY_VALUE3 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE30 = "12'b000000000000" *) (* C_TX_DELAY_VALUE31 = "12'b000000000000" *) (* C_TX_DELAY_VALUE32 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE33 = "12'b000000000000" *) (* C_TX_DELAY_VALUE34 = "12'b000000000000" *) (* C_TX_DELAY_VALUE35 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE36 = "12'b000000000000" *) (* C_TX_DELAY_VALUE37 = "12'b000000000000" *) (* C_TX_DELAY_VALUE38 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE39 = "12'b000000000000" *) (* C_TX_DELAY_VALUE4 = "12'b000000000000" *) (* C_TX_DELAY_VALUE40 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE41 = "12'b000000000000" *) (* C_TX_DELAY_VALUE42 = "12'b000000000000" *) (* C_TX_DELAY_VALUE43 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE44 = "12'b000000000000" *) (* C_TX_DELAY_VALUE45 = "12'b000000000000" *) (* C_TX_DELAY_VALUE46 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE47 = "12'b000000000000" *) (* C_TX_DELAY_VALUE48 = "12'b000000000000" *) (* C_TX_DELAY_VALUE49 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE5 = "12'b000000000000" *) (* C_TX_DELAY_VALUE50 = "12'b000000000000" *) (* C_TX_DELAY_VALUE51 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE6 = "12'b000000000000" *) (* C_TX_DELAY_VALUE7 = "12'b000000000000" *) (* C_TX_DELAY_VALUE8 = "12'b000000000000" *) 
(* C_TX_DELAY_VALUE9 = "12'b000000000000" *) (* C_TX_DRIVE_D = "NONE" *) (* C_TX_DRIVE_S = "NONE" *) 
(* C_TX_IS_CLK_INVERTED = "1'b0" *) (* C_TX_IS_RST_DLY_INVERTED = "1'b0" *) (* C_TX_IS_RST_INVERTED = "1'b0" *) 
(* C_TX_NATIVE_ODELAY_BYPASS = "FALSE" *) (* C_TX_PRE_EMPHASIS_D = "NONE" *) (* C_TX_PRE_EMPHASIS_S = "NONE" *) 
(* C_TX_REFCLK_FREQ = "1500.000000" *) (* C_TX_SLEW_D = "NONE" *) (* C_TX_SLEW_S = "NONE" *) 
(* C_TX_TRI_DELAY_FORMAT = "TIME" *) (* C_TX_TRI_INIT = "1'b1" *) (* C_TX_TRI_IS_CLK_INVERTED = "1'b0" *) 
(* C_TX_TRI_IS_RST_DLY_INVERTED = "1'b0" *) (* C_TX_TRI_IS_RST_INVERTED = "1'b0" *) (* C_TX_TRI_NATIVE_ODELAY_BYPASS = "FALSE" *) 
(* C_TX_TRI_OUTPUT_PHASE_90 = "FALSE" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_91b0_phy_0_hssio_rx_high_speed_selectio_wiz_v3_6_0" *) 
(* TX_BITSLICE_TRI_EN = "8'b00000000" *) 
module bd_91b0_phy_0_bd_91b0_phy_0_hssio_rx_high_speed_selectio_wiz_v3_6_0
   (daddr,
    dclk,
    den,
    di,
    dwe,
    do_out,
    drdy,
    clk_p,
    clk_n,
    clk,
    riu_clk,
    app_clk,
    bs_rst_dphy_in,
    rst_seq_done,
    pll0_clkout0,
    pll0_locked,
    pll0_clkout1,
    pll1_clkout0,
    pll1_locked,
    intf_rdy,
    multi_intf_lock_in,
    shared_pll0_clkout0_in,
    shared_pll1_clkout0_in,
    shared_pll0_clkoutphy_in,
    shared_pll1_clkoutphy_in,
    shared_pll0_locked_in,
    shared_pll1_locked_in,
    shared_pll0_clkoutphy_out,
    shared_pll1_clkoutphy_out,
    clk_from_ibuf,
    lptx_t,
    lptx_i_p,
    lptx_i_n,
    hs_rx_disable,
    lp_rx_disable,
    lp_rx_o_p,
    lp_rx_o_n,
    dly_rdy_bsc0,
    vtc_rdy_bsc0,
    en_vtc_bsc0,
    phy_rden_bsc0,
    dly_rdy_bsc1,
    vtc_rdy_bsc1,
    en_vtc_bsc1,
    phy_rden_bsc1,
    dly_rdy_bsc2,
    vtc_rdy_bsc2,
    en_vtc_bsc2,
    phy_rden_bsc2,
    dly_rdy_bsc3,
    vtc_rdy_bsc3,
    en_vtc_bsc3,
    phy_rden_bsc3,
    dly_rdy_bsc4,
    vtc_rdy_bsc4,
    en_vtc_bsc4,
    phy_rden_bsc4,
    dly_rdy_bsc5,
    vtc_rdy_bsc5,
    en_vtc_bsc5,
    phy_rden_bsc5,
    dly_rdy_bsc6,
    vtc_rdy_bsc6,
    en_vtc_bsc6,
    phy_rden_bsc6,
    dly_rdy_bsc7,
    vtc_rdy_bsc7,
    en_vtc_bsc7,
    phy_rden_bsc7,
    riu_addr_bg0,
    riu_nibble_sel_bg0,
    riu_wr_data_bg0,
    riu_wr_en_bg0,
    riu_rd_data_bg0,
    riu_valid_bg0,
    riu_addr_bg0_bs0,
    riu_nibble_sel_bg0_bs0,
    riu_wr_data_bg0_bs0,
    riu_wr_en_bg0_bs0,
    riu_rd_data_bg0_bs0,
    riu_valid_bg0_bs0,
    riu_addr_bg0_bs1,
    riu_nibble_sel_bg0_bs1,
    riu_wr_data_bg0_bs1,
    riu_wr_en_bg0_bs1,
    riu_rd_data_bg0_bs1,
    riu_valid_bg0_bs1,
    riu_addr_bg1,
    riu_nibble_sel_bg1,
    riu_wr_data_bg1,
    riu_wr_en_bg1,
    riu_rd_data_bg1,
    riu_valid_bg1,
    riu_addr_bg1_bs2,
    riu_nibble_sel_bg1_bs2,
    riu_wr_data_bg1_bs2,
    riu_wr_en_bg1_bs2,
    riu_rd_data_bg1_bs2,
    riu_valid_bg1_bs2,
    riu_addr_bg1_bs3,
    riu_nibble_sel_bg1_bs3,
    riu_wr_data_bg1_bs3,
    riu_wr_en_bg1_bs3,
    riu_rd_data_bg1_bs3,
    riu_valid_bg1_bs3,
    riu_addr_bg2,
    riu_nibble_sel_bg2,
    riu_wr_data_bg2,
    riu_wr_en_bg2,
    riu_rd_data_bg2,
    riu_valid_bg2,
    riu_addr_bg2_bs4,
    riu_nibble_sel_bg2_bs4,
    riu_wr_data_bg2_bs4,
    riu_wr_en_bg2_bs4,
    riu_rd_data_bg2_bs4,
    riu_valid_bg2_bs4,
    riu_addr_bg2_bs5,
    riu_nibble_sel_bg2_bs5,
    riu_wr_data_bg2_bs5,
    riu_wr_en_bg2_bs5,
    riu_rd_data_bg2_bs5,
    riu_valid_bg2_bs5,
    riu_addr_bg3,
    riu_nibble_sel_bg3,
    riu_wr_data_bg3,
    riu_wr_en_bg3,
    riu_rd_data_bg3,
    riu_valid_bg3,
    riu_addr_bg3_bs6,
    riu_nibble_sel_bg3_bs6,
    riu_wr_data_bg3_bs6,
    riu_wr_en_bg3_bs6,
    riu_rd_data_bg3_bs6,
    riu_valid_bg3_bs6,
    riu_addr_bg3_bs7,
    riu_nibble_sel_bg3_bs7,
    riu_wr_data_bg3_bs7,
    riu_wr_en_bg3_bs7,
    riu_rd_data_bg3_bs7,
    riu_valid_bg3_bs7,
    tx_clk,
    rx_clk,
    bidir_tx_clk,
    bidir_rx_clk,
    bidir_tx_bs_tri_clk,
    bg0_pin0_nc,
    bg0_pin6_nc,
    bg1_pin0_nc,
    bg1_pin6_nc,
    bg2_pin0_nc,
    bg2_pin6_nc,
    bg3_pin0_nc,
    bg3_pin6_nc,
    start_bitslip,
    rx_bitslip_sync_done,
    rxtx_bitslip_sync_done,
    clk_rxp,
    data_to_fabric_clk_rxp,
    tri_t_0,
    tx_cntvaluein_0,
    tx_cntvalueout_0,
    tx_ce_0,
    tx_en_vtc_0,
    tx_inc_0,
    tx_load_0,
    rx_cntvalueout_0,
    rx_cntvaluein_0,
    rx_ce_0,
    rx_en_vtc_0,
    rx_inc_0,
    rx_load_0,
    rx_cntvalueout_ext_0,
    rx_cntvaluein_ext_0,
    rx_ce_ext_0,
    rx_en_vtc_ext_0,
    rx_inc_ext_0,
    rx_load_ext_0,
    fifo_empty_0,
    fifo_rd_clk_0,
    fifo_rd_en_0,
    bitslip_error_0,
    clk_rxn,
    data_to_fabric_clk_rxn,
    tri_t_1,
    tx_cntvaluein_1,
    tx_cntvalueout_1,
    tx_ce_1,
    tx_en_vtc_1,
    tx_inc_1,
    tx_load_1,
    rx_cntvalueout_1,
    rx_cntvaluein_1,
    rx_ce_1,
    rx_en_vtc_1,
    rx_inc_1,
    rx_load_1,
    rx_cntvalueout_ext_1,
    rx_cntvaluein_ext_1,
    rx_ce_ext_1,
    rx_en_vtc_ext_1,
    rx_inc_ext_1,
    rx_load_ext_1,
    fifo_empty_1,
    fifo_rd_clk_1,
    fifo_rd_en_1,
    bitslip_error_1,
    data_rxp0,
    data_to_fabric_data_rxp0,
    tri_t_2,
    tx_cntvaluein_2,
    tx_cntvalueout_2,
    tx_ce_2,
    tx_en_vtc_2,
    tx_inc_2,
    tx_load_2,
    rx_cntvalueout_2,
    rx_cntvaluein_2,
    rx_ce_2,
    rx_en_vtc_2,
    rx_inc_2,
    rx_load_2,
    rx_cntvalueout_ext_2,
    rx_cntvaluein_ext_2,
    rx_ce_ext_2,
    rx_en_vtc_ext_2,
    rx_inc_ext_2,
    rx_load_ext_2,
    fifo_empty_2,
    fifo_rd_clk_2,
    fifo_rd_en_2,
    bitslip_error_2,
    data_rxn0,
    data_to_fabric_data_rxn0,
    tri_t_3,
    tx_cntvaluein_3,
    tx_cntvalueout_3,
    tx_ce_3,
    tx_en_vtc_3,
    tx_inc_3,
    tx_load_3,
    rx_cntvalueout_3,
    rx_cntvaluein_3,
    rx_ce_3,
    rx_en_vtc_3,
    rx_inc_3,
    rx_load_3,
    rx_cntvalueout_ext_3,
    rx_cntvaluein_ext_3,
    rx_ce_ext_3,
    rx_en_vtc_ext_3,
    rx_inc_ext_3,
    rx_load_ext_3,
    fifo_empty_3,
    fifo_rd_clk_3,
    fifo_rd_en_3,
    bitslip_error_3,
    data_rxp1,
    data_to_fabric_data_rxp1,
    tri_t_4,
    tx_cntvaluein_4,
    tx_cntvalueout_4,
    tx_ce_4,
    tx_en_vtc_4,
    tx_inc_4,
    tx_load_4,
    rx_cntvalueout_4,
    rx_cntvaluein_4,
    rx_ce_4,
    rx_en_vtc_4,
    rx_inc_4,
    rx_load_4,
    rx_cntvalueout_ext_4,
    rx_cntvaluein_ext_4,
    rx_ce_ext_4,
    rx_en_vtc_ext_4,
    rx_inc_ext_4,
    rx_load_ext_4,
    fifo_empty_4,
    fifo_rd_clk_4,
    fifo_rd_en_4,
    bitslip_error_4,
    data_rxn1,
    data_to_fabric_data_rxn1,
    tri_t_5,
    tx_cntvaluein_5,
    tx_cntvalueout_5,
    tx_ce_5,
    tx_en_vtc_5,
    tx_inc_5,
    tx_load_5,
    rx_cntvalueout_5,
    rx_cntvaluein_5,
    rx_ce_5,
    rx_en_vtc_5,
    rx_inc_5,
    rx_load_5,
    rx_cntvalueout_ext_5,
    rx_cntvaluein_ext_5,
    rx_ce_ext_5,
    rx_en_vtc_ext_5,
    rx_inc_ext_5,
    rx_load_ext_5,
    fifo_empty_5,
    fifo_rd_clk_5,
    fifo_rd_en_5,
    bitslip_error_5,
    tri_t_6,
    tx_cntvaluein_6,
    tx_cntvalueout_6,
    tx_ce_6,
    tx_en_vtc_6,
    tx_inc_6,
    tx_load_6,
    rx_cntvalueout_6,
    rx_cntvaluein_6,
    rx_ce_6,
    rx_en_vtc_6,
    rx_inc_6,
    rx_load_6,
    rx_cntvalueout_ext_6,
    rx_cntvaluein_ext_6,
    rx_ce_ext_6,
    rx_en_vtc_ext_6,
    rx_inc_ext_6,
    rx_load_ext_6,
    fifo_empty_6,
    fifo_rd_clk_6,
    fifo_rd_en_6,
    bitslip_error_6,
    tri_t_7,
    tx_cntvaluein_7,
    tx_cntvalueout_7,
    tx_ce_7,
    tx_en_vtc_7,
    tx_inc_7,
    tx_load_7,
    rx_cntvalueout_7,
    rx_cntvaluein_7,
    rx_ce_7,
    rx_en_vtc_7,
    rx_inc_7,
    rx_load_7,
    rx_cntvalueout_ext_7,
    rx_cntvaluein_ext_7,
    rx_ce_ext_7,
    rx_en_vtc_ext_7,
    rx_inc_ext_7,
    rx_load_ext_7,
    fifo_empty_7,
    fifo_rd_clk_7,
    fifo_rd_en_7,
    bitslip_error_7,
    tri_t_8,
    tx_cntvaluein_8,
    tx_cntvalueout_8,
    tx_ce_8,
    tx_en_vtc_8,
    tx_inc_8,
    tx_load_8,
    rx_cntvalueout_8,
    rx_cntvaluein_8,
    rx_ce_8,
    rx_en_vtc_8,
    rx_inc_8,
    rx_load_8,
    rx_cntvalueout_ext_8,
    rx_cntvaluein_ext_8,
    rx_ce_ext_8,
    rx_en_vtc_ext_8,
    rx_inc_ext_8,
    rx_load_ext_8,
    fifo_empty_8,
    fifo_rd_clk_8,
    fifo_rd_en_8,
    bitslip_error_8,
    tri_t_9,
    tx_cntvaluein_9,
    tx_cntvalueout_9,
    tx_ce_9,
    tx_en_vtc_9,
    tx_inc_9,
    tx_load_9,
    rx_cntvalueout_9,
    rx_cntvaluein_9,
    rx_ce_9,
    rx_en_vtc_9,
    rx_inc_9,
    rx_load_9,
    rx_cntvalueout_ext_9,
    rx_cntvaluein_ext_9,
    rx_ce_ext_9,
    rx_en_vtc_ext_9,
    rx_inc_ext_9,
    rx_load_ext_9,
    fifo_empty_9,
    fifo_rd_clk_9,
    fifo_rd_en_9,
    bitslip_error_9,
    tri_t_10,
    tx_cntvaluein_10,
    tx_cntvalueout_10,
    tx_ce_10,
    tx_en_vtc_10,
    tx_inc_10,
    tx_load_10,
    rx_cntvalueout_10,
    rx_cntvaluein_10,
    rx_ce_10,
    rx_en_vtc_10,
    rx_inc_10,
    rx_load_10,
    rx_cntvalueout_ext_10,
    rx_cntvaluein_ext_10,
    rx_ce_ext_10,
    rx_en_vtc_ext_10,
    rx_inc_ext_10,
    rx_load_ext_10,
    fifo_empty_10,
    fifo_rd_clk_10,
    fifo_rd_en_10,
    bitslip_error_10,
    tri_t_11,
    tx_cntvaluein_11,
    tx_cntvalueout_11,
    tx_ce_11,
    tx_en_vtc_11,
    tx_inc_11,
    tx_load_11,
    rx_cntvalueout_11,
    rx_cntvaluein_11,
    rx_ce_11,
    rx_en_vtc_11,
    rx_inc_11,
    rx_load_11,
    rx_cntvalueout_ext_11,
    rx_cntvaluein_ext_11,
    rx_ce_ext_11,
    rx_en_vtc_ext_11,
    rx_inc_ext_11,
    rx_load_ext_11,
    fifo_empty_11,
    fifo_rd_clk_11,
    fifo_rd_en_11,
    bitslip_error_11,
    tri_t_12,
    tx_cntvaluein_12,
    tx_cntvalueout_12,
    tx_ce_12,
    tx_en_vtc_12,
    tx_inc_12,
    tx_load_12,
    rx_cntvalueout_12,
    rx_cntvaluein_12,
    rx_ce_12,
    rx_en_vtc_12,
    rx_inc_12,
    rx_load_12,
    rx_cntvalueout_ext_12,
    rx_cntvaluein_ext_12,
    rx_ce_ext_12,
    rx_en_vtc_ext_12,
    rx_inc_ext_12,
    rx_load_ext_12,
    fifo_empty_12,
    fifo_rd_clk_12,
    fifo_rd_en_12,
    bitslip_error_12,
    tri_t_13,
    tx_cntvaluein_13,
    tx_cntvalueout_13,
    tx_ce_13,
    tx_en_vtc_13,
    tx_inc_13,
    tx_load_13,
    rx_cntvalueout_13,
    rx_cntvaluein_13,
    rx_ce_13,
    rx_en_vtc_13,
    rx_inc_13,
    rx_load_13,
    rx_cntvalueout_ext_13,
    rx_cntvaluein_ext_13,
    rx_ce_ext_13,
    rx_en_vtc_ext_13,
    rx_inc_ext_13,
    rx_load_ext_13,
    fifo_empty_13,
    fifo_rd_clk_13,
    fifo_rd_en_13,
    bitslip_error_13,
    tri_t_14,
    tx_cntvaluein_14,
    tx_cntvalueout_14,
    tx_ce_14,
    tx_en_vtc_14,
    tx_inc_14,
    tx_load_14,
    rx_cntvalueout_14,
    rx_cntvaluein_14,
    rx_ce_14,
    rx_en_vtc_14,
    rx_inc_14,
    rx_load_14,
    rx_cntvalueout_ext_14,
    rx_cntvaluein_ext_14,
    rx_ce_ext_14,
    rx_en_vtc_ext_14,
    rx_inc_ext_14,
    rx_load_ext_14,
    fifo_empty_14,
    fifo_rd_clk_14,
    fifo_rd_en_14,
    bitslip_error_14,
    tri_t_15,
    tx_cntvaluein_15,
    tx_cntvalueout_15,
    tx_ce_15,
    tx_en_vtc_15,
    tx_inc_15,
    tx_load_15,
    rx_cntvalueout_15,
    rx_cntvaluein_15,
    rx_ce_15,
    rx_en_vtc_15,
    rx_inc_15,
    rx_load_15,
    rx_cntvalueout_ext_15,
    rx_cntvaluein_ext_15,
    rx_ce_ext_15,
    rx_en_vtc_ext_15,
    rx_inc_ext_15,
    rx_load_ext_15,
    fifo_empty_15,
    fifo_rd_clk_15,
    fifo_rd_en_15,
    bitslip_error_15,
    tri_t_16,
    tx_cntvaluein_16,
    tx_cntvalueout_16,
    tx_ce_16,
    tx_en_vtc_16,
    tx_inc_16,
    tx_load_16,
    rx_cntvalueout_16,
    rx_cntvaluein_16,
    rx_ce_16,
    rx_en_vtc_16,
    rx_inc_16,
    rx_load_16,
    rx_cntvalueout_ext_16,
    rx_cntvaluein_ext_16,
    rx_ce_ext_16,
    rx_en_vtc_ext_16,
    rx_inc_ext_16,
    rx_load_ext_16,
    fifo_empty_16,
    fifo_rd_clk_16,
    fifo_rd_en_16,
    bitslip_error_16,
    tri_t_17,
    tx_cntvaluein_17,
    tx_cntvalueout_17,
    tx_ce_17,
    tx_en_vtc_17,
    tx_inc_17,
    tx_load_17,
    rx_cntvalueout_17,
    rx_cntvaluein_17,
    rx_ce_17,
    rx_en_vtc_17,
    rx_inc_17,
    rx_load_17,
    rx_cntvalueout_ext_17,
    rx_cntvaluein_ext_17,
    rx_ce_ext_17,
    rx_en_vtc_ext_17,
    rx_inc_ext_17,
    rx_load_ext_17,
    fifo_empty_17,
    fifo_rd_clk_17,
    fifo_rd_en_17,
    bitslip_error_17,
    tri_t_18,
    tx_cntvaluein_18,
    tx_cntvalueout_18,
    tx_ce_18,
    tx_en_vtc_18,
    tx_inc_18,
    tx_load_18,
    rx_cntvalueout_18,
    rx_cntvaluein_18,
    rx_ce_18,
    rx_en_vtc_18,
    rx_inc_18,
    rx_load_18,
    rx_cntvalueout_ext_18,
    rx_cntvaluein_ext_18,
    rx_ce_ext_18,
    rx_en_vtc_ext_18,
    rx_inc_ext_18,
    rx_load_ext_18,
    fifo_empty_18,
    fifo_rd_clk_18,
    fifo_rd_en_18,
    bitslip_error_18,
    tri_t_19,
    tx_cntvaluein_19,
    tx_cntvalueout_19,
    tx_ce_19,
    tx_en_vtc_19,
    tx_inc_19,
    tx_load_19,
    rx_cntvalueout_19,
    rx_cntvaluein_19,
    rx_ce_19,
    rx_en_vtc_19,
    rx_inc_19,
    rx_load_19,
    rx_cntvalueout_ext_19,
    rx_cntvaluein_ext_19,
    rx_ce_ext_19,
    rx_en_vtc_ext_19,
    rx_inc_ext_19,
    rx_load_ext_19,
    fifo_empty_19,
    fifo_rd_clk_19,
    fifo_rd_en_19,
    bitslip_error_19,
    tri_t_20,
    tx_cntvaluein_20,
    tx_cntvalueout_20,
    tx_ce_20,
    tx_en_vtc_20,
    tx_inc_20,
    tx_load_20,
    rx_cntvalueout_20,
    rx_cntvaluein_20,
    rx_ce_20,
    rx_en_vtc_20,
    rx_inc_20,
    rx_load_20,
    rx_cntvalueout_ext_20,
    rx_cntvaluein_ext_20,
    rx_ce_ext_20,
    rx_en_vtc_ext_20,
    rx_inc_ext_20,
    rx_load_ext_20,
    fifo_empty_20,
    fifo_rd_clk_20,
    fifo_rd_en_20,
    bitslip_error_20,
    tri_t_21,
    tx_cntvaluein_21,
    tx_cntvalueout_21,
    tx_ce_21,
    tx_en_vtc_21,
    tx_inc_21,
    tx_load_21,
    rx_cntvalueout_21,
    rx_cntvaluein_21,
    rx_ce_21,
    rx_en_vtc_21,
    rx_inc_21,
    rx_load_21,
    rx_cntvalueout_ext_21,
    rx_cntvaluein_ext_21,
    rx_ce_ext_21,
    rx_en_vtc_ext_21,
    rx_inc_ext_21,
    rx_load_ext_21,
    fifo_empty_21,
    fifo_rd_clk_21,
    fifo_rd_en_21,
    bitslip_error_21,
    tri_t_22,
    tx_cntvaluein_22,
    tx_cntvalueout_22,
    tx_ce_22,
    tx_en_vtc_22,
    tx_inc_22,
    tx_load_22,
    rx_cntvalueout_22,
    rx_cntvaluein_22,
    rx_ce_22,
    rx_en_vtc_22,
    rx_inc_22,
    rx_load_22,
    rx_cntvalueout_ext_22,
    rx_cntvaluein_ext_22,
    rx_ce_ext_22,
    rx_en_vtc_ext_22,
    rx_inc_ext_22,
    rx_load_ext_22,
    fifo_empty_22,
    fifo_rd_clk_22,
    fifo_rd_en_22,
    bitslip_error_22,
    tri_t_23,
    tx_cntvaluein_23,
    tx_cntvalueout_23,
    tx_ce_23,
    tx_en_vtc_23,
    tx_inc_23,
    tx_load_23,
    rx_cntvalueout_23,
    rx_cntvaluein_23,
    rx_ce_23,
    rx_en_vtc_23,
    rx_inc_23,
    rx_load_23,
    rx_cntvalueout_ext_23,
    rx_cntvaluein_ext_23,
    rx_ce_ext_23,
    rx_en_vtc_ext_23,
    rx_inc_ext_23,
    rx_load_ext_23,
    fifo_empty_23,
    fifo_rd_clk_23,
    fifo_rd_en_23,
    bitslip_error_23,
    tri_t_24,
    tx_cntvaluein_24,
    tx_cntvalueout_24,
    tx_ce_24,
    tx_en_vtc_24,
    tx_inc_24,
    tx_load_24,
    rx_cntvalueout_24,
    rx_cntvaluein_24,
    rx_ce_24,
    rx_en_vtc_24,
    rx_inc_24,
    rx_load_24,
    rx_cntvalueout_ext_24,
    rx_cntvaluein_ext_24,
    rx_ce_ext_24,
    rx_en_vtc_ext_24,
    rx_inc_ext_24,
    rx_load_ext_24,
    fifo_empty_24,
    fifo_rd_clk_24,
    fifo_rd_en_24,
    bitslip_error_24,
    tri_t_25,
    tx_cntvaluein_25,
    tx_cntvalueout_25,
    tx_ce_25,
    tx_en_vtc_25,
    tx_inc_25,
    tx_load_25,
    rx_cntvalueout_25,
    rx_cntvaluein_25,
    rx_ce_25,
    rx_en_vtc_25,
    rx_inc_25,
    rx_load_25,
    rx_cntvalueout_ext_25,
    rx_cntvaluein_ext_25,
    rx_ce_ext_25,
    rx_en_vtc_ext_25,
    rx_inc_ext_25,
    rx_load_ext_25,
    fifo_empty_25,
    fifo_rd_clk_25,
    fifo_rd_en_25,
    bitslip_error_25,
    tri_t_26,
    tx_cntvaluein_26,
    tx_cntvalueout_26,
    tx_ce_26,
    tx_en_vtc_26,
    tx_inc_26,
    tx_load_26,
    rx_cntvalueout_26,
    rx_cntvaluein_26,
    rx_ce_26,
    rx_en_vtc_26,
    rx_inc_26,
    rx_load_26,
    rx_cntvalueout_ext_26,
    rx_cntvaluein_ext_26,
    rx_ce_ext_26,
    rx_en_vtc_ext_26,
    rx_inc_ext_26,
    rx_load_ext_26,
    fifo_empty_26,
    fifo_rd_clk_26,
    fifo_rd_en_26,
    bitslip_error_26,
    tri_t_27,
    tx_cntvaluein_27,
    tx_cntvalueout_27,
    tx_ce_27,
    tx_en_vtc_27,
    tx_inc_27,
    tx_load_27,
    rx_cntvalueout_27,
    rx_cntvaluein_27,
    rx_ce_27,
    rx_en_vtc_27,
    rx_inc_27,
    rx_load_27,
    rx_cntvalueout_ext_27,
    rx_cntvaluein_ext_27,
    rx_ce_ext_27,
    rx_en_vtc_ext_27,
    rx_inc_ext_27,
    rx_load_ext_27,
    fifo_empty_27,
    fifo_rd_clk_27,
    fifo_rd_en_27,
    bitslip_error_27,
    tri_t_28,
    tx_cntvaluein_28,
    tx_cntvalueout_28,
    tx_ce_28,
    tx_en_vtc_28,
    tx_inc_28,
    tx_load_28,
    rx_cntvalueout_28,
    rx_cntvaluein_28,
    rx_ce_28,
    rx_en_vtc_28,
    rx_inc_28,
    rx_load_28,
    rx_cntvalueout_ext_28,
    rx_cntvaluein_ext_28,
    rx_ce_ext_28,
    rx_en_vtc_ext_28,
    rx_inc_ext_28,
    rx_load_ext_28,
    fifo_empty_28,
    fifo_rd_clk_28,
    fifo_rd_en_28,
    bitslip_error_28,
    tri_t_29,
    tx_cntvaluein_29,
    tx_cntvalueout_29,
    tx_ce_29,
    tx_en_vtc_29,
    tx_inc_29,
    tx_load_29,
    rx_cntvalueout_29,
    rx_cntvaluein_29,
    rx_ce_29,
    rx_en_vtc_29,
    rx_inc_29,
    rx_load_29,
    rx_cntvalueout_ext_29,
    rx_cntvaluein_ext_29,
    rx_ce_ext_29,
    rx_en_vtc_ext_29,
    rx_inc_ext_29,
    rx_load_ext_29,
    fifo_empty_29,
    fifo_rd_clk_29,
    fifo_rd_en_29,
    bitslip_error_29,
    tri_t_30,
    tx_cntvaluein_30,
    tx_cntvalueout_30,
    tx_ce_30,
    tx_en_vtc_30,
    tx_inc_30,
    tx_load_30,
    rx_cntvalueout_30,
    rx_cntvaluein_30,
    rx_ce_30,
    rx_en_vtc_30,
    rx_inc_30,
    rx_load_30,
    rx_cntvalueout_ext_30,
    rx_cntvaluein_ext_30,
    rx_ce_ext_30,
    rx_en_vtc_ext_30,
    rx_inc_ext_30,
    rx_load_ext_30,
    fifo_empty_30,
    fifo_rd_clk_30,
    fifo_rd_en_30,
    bitslip_error_30,
    tri_t_31,
    tx_cntvaluein_31,
    tx_cntvalueout_31,
    tx_ce_31,
    tx_en_vtc_31,
    tx_inc_31,
    tx_load_31,
    rx_cntvalueout_31,
    rx_cntvaluein_31,
    rx_ce_31,
    rx_en_vtc_31,
    rx_inc_31,
    rx_load_31,
    rx_cntvalueout_ext_31,
    rx_cntvaluein_ext_31,
    rx_ce_ext_31,
    rx_en_vtc_ext_31,
    rx_inc_ext_31,
    rx_load_ext_31,
    fifo_empty_31,
    fifo_rd_clk_31,
    fifo_rd_en_31,
    bitslip_error_31,
    tri_t_32,
    tx_cntvaluein_32,
    tx_cntvalueout_32,
    tx_ce_32,
    tx_en_vtc_32,
    tx_inc_32,
    tx_load_32,
    rx_cntvalueout_32,
    rx_cntvaluein_32,
    rx_ce_32,
    rx_en_vtc_32,
    rx_inc_32,
    rx_load_32,
    rx_cntvalueout_ext_32,
    rx_cntvaluein_ext_32,
    rx_ce_ext_32,
    rx_en_vtc_ext_32,
    rx_inc_ext_32,
    rx_load_ext_32,
    fifo_empty_32,
    fifo_rd_clk_32,
    fifo_rd_en_32,
    bitslip_error_32,
    tri_t_33,
    tx_cntvaluein_33,
    tx_cntvalueout_33,
    tx_ce_33,
    tx_en_vtc_33,
    tx_inc_33,
    tx_load_33,
    rx_cntvalueout_33,
    rx_cntvaluein_33,
    rx_ce_33,
    rx_en_vtc_33,
    rx_inc_33,
    rx_load_33,
    rx_cntvalueout_ext_33,
    rx_cntvaluein_ext_33,
    rx_ce_ext_33,
    rx_en_vtc_ext_33,
    rx_inc_ext_33,
    rx_load_ext_33,
    fifo_empty_33,
    fifo_rd_clk_33,
    fifo_rd_en_33,
    bitslip_error_33,
    tri_t_34,
    tx_cntvaluein_34,
    tx_cntvalueout_34,
    tx_ce_34,
    tx_en_vtc_34,
    tx_inc_34,
    tx_load_34,
    rx_cntvalueout_34,
    rx_cntvaluein_34,
    rx_ce_34,
    rx_en_vtc_34,
    rx_inc_34,
    rx_load_34,
    rx_cntvalueout_ext_34,
    rx_cntvaluein_ext_34,
    rx_ce_ext_34,
    rx_en_vtc_ext_34,
    rx_inc_ext_34,
    rx_load_ext_34,
    fifo_empty_34,
    fifo_rd_clk_34,
    fifo_rd_en_34,
    bitslip_error_34,
    tri_t_35,
    tx_cntvaluein_35,
    tx_cntvalueout_35,
    tx_ce_35,
    tx_en_vtc_35,
    tx_inc_35,
    tx_load_35,
    rx_cntvalueout_35,
    rx_cntvaluein_35,
    rx_ce_35,
    rx_en_vtc_35,
    rx_inc_35,
    rx_load_35,
    rx_cntvalueout_ext_35,
    rx_cntvaluein_ext_35,
    rx_ce_ext_35,
    rx_en_vtc_ext_35,
    rx_inc_ext_35,
    rx_load_ext_35,
    fifo_empty_35,
    fifo_rd_clk_35,
    fifo_rd_en_35,
    bitslip_error_35,
    tri_t_36,
    tx_cntvaluein_36,
    tx_cntvalueout_36,
    tx_ce_36,
    tx_en_vtc_36,
    tx_inc_36,
    tx_load_36,
    rx_cntvalueout_36,
    rx_cntvaluein_36,
    rx_ce_36,
    rx_en_vtc_36,
    rx_inc_36,
    rx_load_36,
    rx_cntvalueout_ext_36,
    rx_cntvaluein_ext_36,
    rx_ce_ext_36,
    rx_en_vtc_ext_36,
    rx_inc_ext_36,
    rx_load_ext_36,
    fifo_empty_36,
    fifo_rd_clk_36,
    fifo_rd_en_36,
    bitslip_error_36,
    tri_t_37,
    tx_cntvaluein_37,
    tx_cntvalueout_37,
    tx_ce_37,
    tx_en_vtc_37,
    tx_inc_37,
    tx_load_37,
    rx_cntvalueout_37,
    rx_cntvaluein_37,
    rx_ce_37,
    rx_en_vtc_37,
    rx_inc_37,
    rx_load_37,
    rx_cntvalueout_ext_37,
    rx_cntvaluein_ext_37,
    rx_ce_ext_37,
    rx_en_vtc_ext_37,
    rx_inc_ext_37,
    rx_load_ext_37,
    fifo_empty_37,
    fifo_rd_clk_37,
    fifo_rd_en_37,
    bitslip_error_37,
    tri_t_38,
    tx_cntvaluein_38,
    tx_cntvalueout_38,
    tx_ce_38,
    tx_en_vtc_38,
    tx_inc_38,
    tx_load_38,
    rx_cntvalueout_38,
    rx_cntvaluein_38,
    rx_ce_38,
    rx_en_vtc_38,
    rx_inc_38,
    rx_load_38,
    rx_cntvalueout_ext_38,
    rx_cntvaluein_ext_38,
    rx_ce_ext_38,
    rx_en_vtc_ext_38,
    rx_inc_ext_38,
    rx_load_ext_38,
    fifo_empty_38,
    fifo_rd_clk_38,
    fifo_rd_en_38,
    bitslip_error_38,
    tri_t_39,
    tx_cntvaluein_39,
    tx_cntvalueout_39,
    tx_ce_39,
    tx_en_vtc_39,
    tx_inc_39,
    tx_load_39,
    rx_cntvalueout_39,
    rx_cntvaluein_39,
    rx_ce_39,
    rx_en_vtc_39,
    rx_inc_39,
    rx_load_39,
    rx_cntvalueout_ext_39,
    rx_cntvaluein_ext_39,
    rx_ce_ext_39,
    rx_en_vtc_ext_39,
    rx_inc_ext_39,
    rx_load_ext_39,
    fifo_empty_39,
    fifo_rd_clk_39,
    fifo_rd_en_39,
    bitslip_error_39,
    tri_t_40,
    tx_cntvaluein_40,
    tx_cntvalueout_40,
    tx_ce_40,
    tx_en_vtc_40,
    tx_inc_40,
    tx_load_40,
    rx_cntvalueout_40,
    rx_cntvaluein_40,
    rx_ce_40,
    rx_en_vtc_40,
    rx_inc_40,
    rx_load_40,
    rx_cntvalueout_ext_40,
    rx_cntvaluein_ext_40,
    rx_ce_ext_40,
    rx_en_vtc_ext_40,
    rx_inc_ext_40,
    rx_load_ext_40,
    fifo_empty_40,
    fifo_rd_clk_40,
    fifo_rd_en_40,
    bitslip_error_40,
    tri_t_41,
    tx_cntvaluein_41,
    tx_cntvalueout_41,
    tx_ce_41,
    tx_en_vtc_41,
    tx_inc_41,
    tx_load_41,
    rx_cntvalueout_41,
    rx_cntvaluein_41,
    rx_ce_41,
    rx_en_vtc_41,
    rx_inc_41,
    rx_load_41,
    rx_cntvalueout_ext_41,
    rx_cntvaluein_ext_41,
    rx_ce_ext_41,
    rx_en_vtc_ext_41,
    rx_inc_ext_41,
    rx_load_ext_41,
    fifo_empty_41,
    fifo_rd_clk_41,
    fifo_rd_en_41,
    bitslip_error_41,
    tri_t_42,
    tx_cntvaluein_42,
    tx_cntvalueout_42,
    tx_ce_42,
    tx_en_vtc_42,
    tx_inc_42,
    tx_load_42,
    rx_cntvalueout_42,
    rx_cntvaluein_42,
    rx_ce_42,
    rx_en_vtc_42,
    rx_inc_42,
    rx_load_42,
    rx_cntvalueout_ext_42,
    rx_cntvaluein_ext_42,
    rx_ce_ext_42,
    rx_en_vtc_ext_42,
    rx_inc_ext_42,
    rx_load_ext_42,
    fifo_empty_42,
    fifo_rd_clk_42,
    fifo_rd_en_42,
    bitslip_error_42,
    tri_t_43,
    tx_cntvaluein_43,
    tx_cntvalueout_43,
    tx_ce_43,
    tx_en_vtc_43,
    tx_inc_43,
    tx_load_43,
    rx_cntvalueout_43,
    rx_cntvaluein_43,
    rx_ce_43,
    rx_en_vtc_43,
    rx_inc_43,
    rx_load_43,
    rx_cntvalueout_ext_43,
    rx_cntvaluein_ext_43,
    rx_ce_ext_43,
    rx_en_vtc_ext_43,
    rx_inc_ext_43,
    rx_load_ext_43,
    fifo_empty_43,
    fifo_rd_clk_43,
    fifo_rd_en_43,
    bitslip_error_43,
    tri_t_44,
    tx_cntvaluein_44,
    tx_cntvalueout_44,
    tx_ce_44,
    tx_en_vtc_44,
    tx_inc_44,
    tx_load_44,
    rx_cntvalueout_44,
    rx_cntvaluein_44,
    rx_ce_44,
    rx_en_vtc_44,
    rx_inc_44,
    rx_load_44,
    rx_cntvalueout_ext_44,
    rx_cntvaluein_ext_44,
    rx_ce_ext_44,
    rx_en_vtc_ext_44,
    rx_inc_ext_44,
    rx_load_ext_44,
    fifo_empty_44,
    fifo_rd_clk_44,
    fifo_rd_en_44,
    bitslip_error_44,
    tri_t_45,
    tx_cntvaluein_45,
    tx_cntvalueout_45,
    tx_ce_45,
    tx_en_vtc_45,
    tx_inc_45,
    tx_load_45,
    rx_cntvalueout_45,
    rx_cntvaluein_45,
    rx_ce_45,
    rx_en_vtc_45,
    rx_inc_45,
    rx_load_45,
    rx_cntvalueout_ext_45,
    rx_cntvaluein_ext_45,
    rx_ce_ext_45,
    rx_en_vtc_ext_45,
    rx_inc_ext_45,
    rx_load_ext_45,
    fifo_empty_45,
    fifo_rd_clk_45,
    fifo_rd_en_45,
    bitslip_error_45,
    tri_t_46,
    tx_cntvaluein_46,
    tx_cntvalueout_46,
    tx_ce_46,
    tx_en_vtc_46,
    tx_inc_46,
    tx_load_46,
    rx_cntvalueout_46,
    rx_cntvaluein_46,
    rx_ce_46,
    rx_en_vtc_46,
    rx_inc_46,
    rx_load_46,
    rx_cntvalueout_ext_46,
    rx_cntvaluein_ext_46,
    rx_ce_ext_46,
    rx_en_vtc_ext_46,
    rx_inc_ext_46,
    rx_load_ext_46,
    fifo_empty_46,
    fifo_rd_clk_46,
    fifo_rd_en_46,
    bitslip_error_46,
    tri_t_47,
    tx_cntvaluein_47,
    tx_cntvalueout_47,
    tx_ce_47,
    tx_en_vtc_47,
    tx_inc_47,
    tx_load_47,
    rx_cntvalueout_47,
    rx_cntvaluein_47,
    rx_ce_47,
    rx_en_vtc_47,
    rx_inc_47,
    rx_load_47,
    rx_cntvalueout_ext_47,
    rx_cntvaluein_ext_47,
    rx_ce_ext_47,
    rx_en_vtc_ext_47,
    rx_inc_ext_47,
    rx_load_ext_47,
    fifo_empty_47,
    fifo_rd_clk_47,
    fifo_rd_en_47,
    bitslip_error_47,
    tri_t_48,
    tx_cntvaluein_48,
    tx_cntvalueout_48,
    tx_ce_48,
    tx_en_vtc_48,
    tx_inc_48,
    tx_load_48,
    rx_cntvalueout_48,
    rx_cntvaluein_48,
    rx_ce_48,
    rx_en_vtc_48,
    rx_inc_48,
    rx_load_48,
    rx_cntvalueout_ext_48,
    rx_cntvaluein_ext_48,
    rx_ce_ext_48,
    rx_en_vtc_ext_48,
    rx_inc_ext_48,
    rx_load_ext_48,
    fifo_empty_48,
    fifo_rd_clk_48,
    fifo_rd_en_48,
    bitslip_error_48,
    tri_t_49,
    tx_cntvaluein_49,
    tx_cntvalueout_49,
    tx_ce_49,
    tx_en_vtc_49,
    tx_inc_49,
    tx_load_49,
    rx_cntvalueout_49,
    rx_cntvaluein_49,
    rx_ce_49,
    rx_en_vtc_49,
    rx_inc_49,
    rx_load_49,
    rx_cntvalueout_ext_49,
    rx_cntvaluein_ext_49,
    rx_ce_ext_49,
    rx_en_vtc_ext_49,
    rx_inc_ext_49,
    rx_load_ext_49,
    fifo_empty_49,
    fifo_rd_clk_49,
    fifo_rd_en_49,
    bitslip_error_49,
    tri_t_50,
    tx_cntvaluein_50,
    tx_cntvalueout_50,
    tx_ce_50,
    tx_en_vtc_50,
    tx_inc_50,
    tx_load_50,
    rx_cntvalueout_50,
    rx_cntvaluein_50,
    rx_ce_50,
    rx_en_vtc_50,
    rx_inc_50,
    rx_load_50,
    rx_cntvalueout_ext_50,
    rx_cntvaluein_ext_50,
    rx_ce_ext_50,
    rx_en_vtc_ext_50,
    rx_inc_ext_50,
    rx_load_ext_50,
    fifo_empty_50,
    fifo_rd_clk_50,
    fifo_rd_en_50,
    bitslip_error_50,
    tri_t_51,
    tx_cntvaluein_51,
    tx_cntvalueout_51,
    tx_ce_51,
    tx_en_vtc_51,
    tx_inc_51,
    tx_load_51,
    rx_cntvalueout_51,
    rx_cntvaluein_51,
    rx_ce_51,
    rx_en_vtc_51,
    rx_inc_51,
    rx_load_51,
    rx_cntvalueout_ext_51,
    rx_cntvaluein_ext_51,
    rx_ce_ext_51,
    rx_en_vtc_ext_51,
    rx_inc_ext_51,
    rx_load_ext_51,
    fifo_empty_51,
    fifo_rd_clk_51,
    fifo_rd_en_51,
    bitslip_error_51,
    fifo_wr_clk_0,
    fifo_wr_clk_6,
    fifo_wr_clk_13,
    fifo_wr_clk_19,
    fifo_wr_clk_26,
    fifo_wr_clk_32,
    fifo_wr_clk_39,
    fifo_wr_clk_45,
    tri_tbyte0,
    bidir_tx_bs_tri_cntvalueout0,
    bidir_tx_bs_tri_cntvaluein0,
    bidir_tx_bs_tri_en_vtc0,
    bidir_tx_bs_tri_ce0,
    bidir_tx_bs_tri_inc0,
    bidir_tx_bs_tri_load0,
    tri_tbyte1,
    bidir_tx_bs_tri_cntvalueout1,
    bidir_tx_bs_tri_cntvaluein1,
    bidir_tx_bs_tri_en_vtc1,
    bidir_tx_bs_tri_ce1,
    bidir_tx_bs_tri_inc1,
    bidir_tx_bs_tri_load1,
    tri_tbyte2,
    bidir_tx_bs_tri_cntvalueout2,
    bidir_tx_bs_tri_cntvaluein2,
    bidir_tx_bs_tri_en_vtc2,
    bidir_tx_bs_tri_ce2,
    bidir_tx_bs_tri_inc2,
    bidir_tx_bs_tri_load2,
    tri_tbyte3,
    bidir_tx_bs_tri_cntvalueout3,
    bidir_tx_bs_tri_cntvaluein3,
    bidir_tx_bs_tri_en_vtc3,
    bidir_tx_bs_tri_ce3,
    bidir_tx_bs_tri_inc3,
    bidir_tx_bs_tri_load3,
    tri_tbyte4,
    bidir_tx_bs_tri_cntvalueout4,
    bidir_tx_bs_tri_cntvaluein4,
    bidir_tx_bs_tri_en_vtc4,
    bidir_tx_bs_tri_ce4,
    bidir_tx_bs_tri_inc4,
    bidir_tx_bs_tri_load4,
    tri_tbyte5,
    bidir_tx_bs_tri_cntvalueout5,
    bidir_tx_bs_tri_cntvaluein5,
    bidir_tx_bs_tri_en_vtc5,
    bidir_tx_bs_tri_ce5,
    bidir_tx_bs_tri_inc5,
    bidir_tx_bs_tri_load5,
    tri_tbyte6,
    bidir_tx_bs_tri_cntvalueout6,
    bidir_tx_bs_tri_cntvaluein6,
    bidir_tx_bs_tri_en_vtc6,
    bidir_tx_bs_tri_ce6,
    bidir_tx_bs_tri_inc6,
    bidir_tx_bs_tri_load6,
    tri_tbyte7,
    bidir_tx_bs_tri_cntvalueout7,
    bidir_tx_bs_tri_cntvaluein7,
    bidir_tx_bs_tri_en_vtc7,
    bidir_tx_bs_tri_ce7,
    bidir_tx_bs_tri_inc7,
    bidir_tx_bs_tri_load7,
    fifo_rd_data_valid,
    rst);
  input [6:0]daddr;
  input dclk;
  input den;
  input [15:0]di;
  input dwe;
  output [15:0]do_out;
  output drdy;
  input clk_p;
  input clk_n;
  input clk;
  input riu_clk;
  input app_clk;
  input bs_rst_dphy_in;
  output rst_seq_done;
  output pll0_clkout0;
  output pll0_locked;
  output pll0_clkout1;
  output pll1_clkout0;
  output pll1_locked;
  output intf_rdy;
  input multi_intf_lock_in;
  input shared_pll0_clkout0_in;
  input shared_pll1_clkout0_in;
  input shared_pll0_clkoutphy_in;
  input shared_pll1_clkoutphy_in;
  input shared_pll0_locked_in;
  input shared_pll1_locked_in;
  output shared_pll0_clkoutphy_out;
  output shared_pll1_clkoutphy_out;
  output clk_from_ibuf;
  input [2:0]lptx_t;
  input [2:0]lptx_i_p;
  input [2:0]lptx_i_n;
  input [2:0]hs_rx_disable;
  input [2:0]lp_rx_disable;
  output [2:0]lp_rx_o_p;
  output [2:0]lp_rx_o_n;
  output dly_rdy_bsc0;
  output vtc_rdy_bsc0;
  input en_vtc_bsc0;
  input [3:0]phy_rden_bsc0;
  output dly_rdy_bsc1;
  output vtc_rdy_bsc1;
  input en_vtc_bsc1;
  input [3:0]phy_rden_bsc1;
  output dly_rdy_bsc2;
  output vtc_rdy_bsc2;
  input en_vtc_bsc2;
  input [3:0]phy_rden_bsc2;
  output dly_rdy_bsc3;
  output vtc_rdy_bsc3;
  input en_vtc_bsc3;
  input [3:0]phy_rden_bsc3;
  output dly_rdy_bsc4;
  output vtc_rdy_bsc4;
  input en_vtc_bsc4;
  input [3:0]phy_rden_bsc4;
  output dly_rdy_bsc5;
  output vtc_rdy_bsc5;
  input en_vtc_bsc5;
  input [3:0]phy_rden_bsc5;
  output dly_rdy_bsc6;
  output vtc_rdy_bsc6;
  input en_vtc_bsc6;
  input [3:0]phy_rden_bsc6;
  output dly_rdy_bsc7;
  output vtc_rdy_bsc7;
  input en_vtc_bsc7;
  input [3:0]phy_rden_bsc7;
  input [5:0]riu_addr_bg0;
  input [1:0]riu_nibble_sel_bg0;
  input [15:0]riu_wr_data_bg0;
  input riu_wr_en_bg0;
  output [15:0]riu_rd_data_bg0;
  output riu_valid_bg0;
  input [5:0]riu_addr_bg0_bs0;
  input riu_nibble_sel_bg0_bs0;
  input [15:0]riu_wr_data_bg0_bs0;
  input riu_wr_en_bg0_bs0;
  output [15:0]riu_rd_data_bg0_bs0;
  output riu_valid_bg0_bs0;
  input [5:0]riu_addr_bg0_bs1;
  input riu_nibble_sel_bg0_bs1;
  input [15:0]riu_wr_data_bg0_bs1;
  input riu_wr_en_bg0_bs1;
  output [15:0]riu_rd_data_bg0_bs1;
  output riu_valid_bg0_bs1;
  input [5:0]riu_addr_bg1;
  input [1:0]riu_nibble_sel_bg1;
  input [15:0]riu_wr_data_bg1;
  input riu_wr_en_bg1;
  output [15:0]riu_rd_data_bg1;
  output riu_valid_bg1;
  input [5:0]riu_addr_bg1_bs2;
  input riu_nibble_sel_bg1_bs2;
  input [15:0]riu_wr_data_bg1_bs2;
  input riu_wr_en_bg1_bs2;
  output [15:0]riu_rd_data_bg1_bs2;
  output riu_valid_bg1_bs2;
  input [5:0]riu_addr_bg1_bs3;
  input riu_nibble_sel_bg1_bs3;
  input [15:0]riu_wr_data_bg1_bs3;
  input riu_wr_en_bg1_bs3;
  output [15:0]riu_rd_data_bg1_bs3;
  output riu_valid_bg1_bs3;
  input [5:0]riu_addr_bg2;
  input [1:0]riu_nibble_sel_bg2;
  input [15:0]riu_wr_data_bg2;
  input riu_wr_en_bg2;
  output [15:0]riu_rd_data_bg2;
  output riu_valid_bg2;
  input [5:0]riu_addr_bg2_bs4;
  input riu_nibble_sel_bg2_bs4;
  input [15:0]riu_wr_data_bg2_bs4;
  input riu_wr_en_bg2_bs4;
  output [15:0]riu_rd_data_bg2_bs4;
  output riu_valid_bg2_bs4;
  input [5:0]riu_addr_bg2_bs5;
  input riu_nibble_sel_bg2_bs5;
  input [15:0]riu_wr_data_bg2_bs5;
  input riu_wr_en_bg2_bs5;
  output [15:0]riu_rd_data_bg2_bs5;
  output riu_valid_bg2_bs5;
  input [5:0]riu_addr_bg3;
  input [1:0]riu_nibble_sel_bg3;
  input [15:0]riu_wr_data_bg3;
  input riu_wr_en_bg3;
  output [15:0]riu_rd_data_bg3;
  output riu_valid_bg3;
  input [5:0]riu_addr_bg3_bs6;
  input riu_nibble_sel_bg3_bs6;
  input [15:0]riu_wr_data_bg3_bs6;
  input riu_wr_en_bg3_bs6;
  output [15:0]riu_rd_data_bg3_bs6;
  output riu_valid_bg3_bs6;
  input [5:0]riu_addr_bg3_bs7;
  input riu_nibble_sel_bg3_bs7;
  input [15:0]riu_wr_data_bg3_bs7;
  input riu_wr_en_bg3_bs7;
  output [15:0]riu_rd_data_bg3_bs7;
  output riu_valid_bg3_bs7;
  input tx_clk;
  input rx_clk;
  input bidir_tx_clk;
  input bidir_rx_clk;
  input bidir_tx_bs_tri_clk;
  input bg0_pin0_nc;
  input bg0_pin6_nc;
  input bg1_pin0_nc;
  input bg1_pin6_nc;
  input bg2_pin0_nc;
  input bg2_pin6_nc;
  input bg3_pin0_nc;
  input bg3_pin6_nc;
  input start_bitslip;
  output rx_bitslip_sync_done;
  output rxtx_bitslip_sync_done;
  input clk_rxp;
  output [7:0]data_to_fabric_clk_rxp;
  input tri_t_0;
  input [8:0]tx_cntvaluein_0;
  output [8:0]tx_cntvalueout_0;
  input tx_ce_0;
  input tx_en_vtc_0;
  input tx_inc_0;
  input tx_load_0;
  output [8:0]rx_cntvalueout_0;
  input [8:0]rx_cntvaluein_0;
  input rx_ce_0;
  input rx_en_vtc_0;
  input rx_inc_0;
  input rx_load_0;
  output [8:0]rx_cntvalueout_ext_0;
  input [8:0]rx_cntvaluein_ext_0;
  input rx_ce_ext_0;
  input rx_en_vtc_ext_0;
  input rx_inc_ext_0;
  input rx_load_ext_0;
  output fifo_empty_0;
  input fifo_rd_clk_0;
  input fifo_rd_en_0;
  output bitslip_error_0;
  input clk_rxn;
  output [7:0]data_to_fabric_clk_rxn;
  input tri_t_1;
  input [8:0]tx_cntvaluein_1;
  output [8:0]tx_cntvalueout_1;
  input tx_ce_1;
  input tx_en_vtc_1;
  input tx_inc_1;
  input tx_load_1;
  output [8:0]rx_cntvalueout_1;
  input [8:0]rx_cntvaluein_1;
  input rx_ce_1;
  input rx_en_vtc_1;
  input rx_inc_1;
  input rx_load_1;
  output [8:0]rx_cntvalueout_ext_1;
  input [8:0]rx_cntvaluein_ext_1;
  input rx_ce_ext_1;
  input rx_en_vtc_ext_1;
  input rx_inc_ext_1;
  input rx_load_ext_1;
  output fifo_empty_1;
  input fifo_rd_clk_1;
  input fifo_rd_en_1;
  output bitslip_error_1;
  input data_rxp0;
  output [7:0]data_to_fabric_data_rxp0;
  input tri_t_2;
  input [8:0]tx_cntvaluein_2;
  output [8:0]tx_cntvalueout_2;
  input tx_ce_2;
  input tx_en_vtc_2;
  input tx_inc_2;
  input tx_load_2;
  output [8:0]rx_cntvalueout_2;
  input [8:0]rx_cntvaluein_2;
  input rx_ce_2;
  input rx_en_vtc_2;
  input rx_inc_2;
  input rx_load_2;
  output [8:0]rx_cntvalueout_ext_2;
  input [8:0]rx_cntvaluein_ext_2;
  input rx_ce_ext_2;
  input rx_en_vtc_ext_2;
  input rx_inc_ext_2;
  input rx_load_ext_2;
  output fifo_empty_2;
  input fifo_rd_clk_2;
  input fifo_rd_en_2;
  output bitslip_error_2;
  input data_rxn0;
  output [7:0]data_to_fabric_data_rxn0;
  input tri_t_3;
  input [8:0]tx_cntvaluein_3;
  output [8:0]tx_cntvalueout_3;
  input tx_ce_3;
  input tx_en_vtc_3;
  input tx_inc_3;
  input tx_load_3;
  output [8:0]rx_cntvalueout_3;
  input [8:0]rx_cntvaluein_3;
  input rx_ce_3;
  input rx_en_vtc_3;
  input rx_inc_3;
  input rx_load_3;
  output [8:0]rx_cntvalueout_ext_3;
  input [8:0]rx_cntvaluein_ext_3;
  input rx_ce_ext_3;
  input rx_en_vtc_ext_3;
  input rx_inc_ext_3;
  input rx_load_ext_3;
  output fifo_empty_3;
  input fifo_rd_clk_3;
  input fifo_rd_en_3;
  output bitslip_error_3;
  input data_rxp1;
  output [7:0]data_to_fabric_data_rxp1;
  input tri_t_4;
  input [8:0]tx_cntvaluein_4;
  output [8:0]tx_cntvalueout_4;
  input tx_ce_4;
  input tx_en_vtc_4;
  input tx_inc_4;
  input tx_load_4;
  output [8:0]rx_cntvalueout_4;
  input [8:0]rx_cntvaluein_4;
  input rx_ce_4;
  input rx_en_vtc_4;
  input rx_inc_4;
  input rx_load_4;
  output [8:0]rx_cntvalueout_ext_4;
  input [8:0]rx_cntvaluein_ext_4;
  input rx_ce_ext_4;
  input rx_en_vtc_ext_4;
  input rx_inc_ext_4;
  input rx_load_ext_4;
  output fifo_empty_4;
  input fifo_rd_clk_4;
  input fifo_rd_en_4;
  output bitslip_error_4;
  input data_rxn1;
  output [7:0]data_to_fabric_data_rxn1;
  input tri_t_5;
  input [8:0]tx_cntvaluein_5;
  output [8:0]tx_cntvalueout_5;
  input tx_ce_5;
  input tx_en_vtc_5;
  input tx_inc_5;
  input tx_load_5;
  output [8:0]rx_cntvalueout_5;
  input [8:0]rx_cntvaluein_5;
  input rx_ce_5;
  input rx_en_vtc_5;
  input rx_inc_5;
  input rx_load_5;
  output [8:0]rx_cntvalueout_ext_5;
  input [8:0]rx_cntvaluein_ext_5;
  input rx_ce_ext_5;
  input rx_en_vtc_ext_5;
  input rx_inc_ext_5;
  input rx_load_ext_5;
  output fifo_empty_5;
  input fifo_rd_clk_5;
  input fifo_rd_en_5;
  output bitslip_error_5;
  input tri_t_6;
  input [8:0]tx_cntvaluein_6;
  output [8:0]tx_cntvalueout_6;
  input tx_ce_6;
  input tx_en_vtc_6;
  input tx_inc_6;
  input tx_load_6;
  output [8:0]rx_cntvalueout_6;
  input [8:0]rx_cntvaluein_6;
  input rx_ce_6;
  input rx_en_vtc_6;
  input rx_inc_6;
  input rx_load_6;
  output [8:0]rx_cntvalueout_ext_6;
  input [8:0]rx_cntvaluein_ext_6;
  input rx_ce_ext_6;
  input rx_en_vtc_ext_6;
  input rx_inc_ext_6;
  input rx_load_ext_6;
  output fifo_empty_6;
  input fifo_rd_clk_6;
  input fifo_rd_en_6;
  output bitslip_error_6;
  input tri_t_7;
  input [8:0]tx_cntvaluein_7;
  output [8:0]tx_cntvalueout_7;
  input tx_ce_7;
  input tx_en_vtc_7;
  input tx_inc_7;
  input tx_load_7;
  output [8:0]rx_cntvalueout_7;
  input [8:0]rx_cntvaluein_7;
  input rx_ce_7;
  input rx_en_vtc_7;
  input rx_inc_7;
  input rx_load_7;
  output [8:0]rx_cntvalueout_ext_7;
  input [8:0]rx_cntvaluein_ext_7;
  input rx_ce_ext_7;
  input rx_en_vtc_ext_7;
  input rx_inc_ext_7;
  input rx_load_ext_7;
  output fifo_empty_7;
  input fifo_rd_clk_7;
  input fifo_rd_en_7;
  output bitslip_error_7;
  input tri_t_8;
  input [8:0]tx_cntvaluein_8;
  output [8:0]tx_cntvalueout_8;
  input tx_ce_8;
  input tx_en_vtc_8;
  input tx_inc_8;
  input tx_load_8;
  output [8:0]rx_cntvalueout_8;
  input [8:0]rx_cntvaluein_8;
  input rx_ce_8;
  input rx_en_vtc_8;
  input rx_inc_8;
  input rx_load_8;
  output [8:0]rx_cntvalueout_ext_8;
  input [8:0]rx_cntvaluein_ext_8;
  input rx_ce_ext_8;
  input rx_en_vtc_ext_8;
  input rx_inc_ext_8;
  input rx_load_ext_8;
  output fifo_empty_8;
  input fifo_rd_clk_8;
  input fifo_rd_en_8;
  output bitslip_error_8;
  input tri_t_9;
  input [8:0]tx_cntvaluein_9;
  output [8:0]tx_cntvalueout_9;
  input tx_ce_9;
  input tx_en_vtc_9;
  input tx_inc_9;
  input tx_load_9;
  output [8:0]rx_cntvalueout_9;
  input [8:0]rx_cntvaluein_9;
  input rx_ce_9;
  input rx_en_vtc_9;
  input rx_inc_9;
  input rx_load_9;
  output [8:0]rx_cntvalueout_ext_9;
  input [8:0]rx_cntvaluein_ext_9;
  input rx_ce_ext_9;
  input rx_en_vtc_ext_9;
  input rx_inc_ext_9;
  input rx_load_ext_9;
  output fifo_empty_9;
  input fifo_rd_clk_9;
  input fifo_rd_en_9;
  output bitslip_error_9;
  input tri_t_10;
  input [8:0]tx_cntvaluein_10;
  output [8:0]tx_cntvalueout_10;
  input tx_ce_10;
  input tx_en_vtc_10;
  input tx_inc_10;
  input tx_load_10;
  output [8:0]rx_cntvalueout_10;
  input [8:0]rx_cntvaluein_10;
  input rx_ce_10;
  input rx_en_vtc_10;
  input rx_inc_10;
  input rx_load_10;
  output [8:0]rx_cntvalueout_ext_10;
  input [8:0]rx_cntvaluein_ext_10;
  input rx_ce_ext_10;
  input rx_en_vtc_ext_10;
  input rx_inc_ext_10;
  input rx_load_ext_10;
  output fifo_empty_10;
  input fifo_rd_clk_10;
  input fifo_rd_en_10;
  output bitslip_error_10;
  input tri_t_11;
  input [8:0]tx_cntvaluein_11;
  output [8:0]tx_cntvalueout_11;
  input tx_ce_11;
  input tx_en_vtc_11;
  input tx_inc_11;
  input tx_load_11;
  output [8:0]rx_cntvalueout_11;
  input [8:0]rx_cntvaluein_11;
  input rx_ce_11;
  input rx_en_vtc_11;
  input rx_inc_11;
  input rx_load_11;
  output [8:0]rx_cntvalueout_ext_11;
  input [8:0]rx_cntvaluein_ext_11;
  input rx_ce_ext_11;
  input rx_en_vtc_ext_11;
  input rx_inc_ext_11;
  input rx_load_ext_11;
  output fifo_empty_11;
  input fifo_rd_clk_11;
  input fifo_rd_en_11;
  output bitslip_error_11;
  input tri_t_12;
  input [8:0]tx_cntvaluein_12;
  output [8:0]tx_cntvalueout_12;
  input tx_ce_12;
  input tx_en_vtc_12;
  input tx_inc_12;
  input tx_load_12;
  output [8:0]rx_cntvalueout_12;
  input [8:0]rx_cntvaluein_12;
  input rx_ce_12;
  input rx_en_vtc_12;
  input rx_inc_12;
  input rx_load_12;
  output [8:0]rx_cntvalueout_ext_12;
  input [8:0]rx_cntvaluein_ext_12;
  input rx_ce_ext_12;
  input rx_en_vtc_ext_12;
  input rx_inc_ext_12;
  input rx_load_ext_12;
  output fifo_empty_12;
  input fifo_rd_clk_12;
  input fifo_rd_en_12;
  output bitslip_error_12;
  input tri_t_13;
  input [8:0]tx_cntvaluein_13;
  output [8:0]tx_cntvalueout_13;
  input tx_ce_13;
  input tx_en_vtc_13;
  input tx_inc_13;
  input tx_load_13;
  output [8:0]rx_cntvalueout_13;
  input [8:0]rx_cntvaluein_13;
  input rx_ce_13;
  input rx_en_vtc_13;
  input rx_inc_13;
  input rx_load_13;
  output [8:0]rx_cntvalueout_ext_13;
  input [8:0]rx_cntvaluein_ext_13;
  input rx_ce_ext_13;
  input rx_en_vtc_ext_13;
  input rx_inc_ext_13;
  input rx_load_ext_13;
  output fifo_empty_13;
  input fifo_rd_clk_13;
  input fifo_rd_en_13;
  output bitslip_error_13;
  input tri_t_14;
  input [8:0]tx_cntvaluein_14;
  output [8:0]tx_cntvalueout_14;
  input tx_ce_14;
  input tx_en_vtc_14;
  input tx_inc_14;
  input tx_load_14;
  output [8:0]rx_cntvalueout_14;
  input [8:0]rx_cntvaluein_14;
  input rx_ce_14;
  input rx_en_vtc_14;
  input rx_inc_14;
  input rx_load_14;
  output [8:0]rx_cntvalueout_ext_14;
  input [8:0]rx_cntvaluein_ext_14;
  input rx_ce_ext_14;
  input rx_en_vtc_ext_14;
  input rx_inc_ext_14;
  input rx_load_ext_14;
  output fifo_empty_14;
  input fifo_rd_clk_14;
  input fifo_rd_en_14;
  output bitslip_error_14;
  input tri_t_15;
  input [8:0]tx_cntvaluein_15;
  output [8:0]tx_cntvalueout_15;
  input tx_ce_15;
  input tx_en_vtc_15;
  input tx_inc_15;
  input tx_load_15;
  output [8:0]rx_cntvalueout_15;
  input [8:0]rx_cntvaluein_15;
  input rx_ce_15;
  input rx_en_vtc_15;
  input rx_inc_15;
  input rx_load_15;
  output [8:0]rx_cntvalueout_ext_15;
  input [8:0]rx_cntvaluein_ext_15;
  input rx_ce_ext_15;
  input rx_en_vtc_ext_15;
  input rx_inc_ext_15;
  input rx_load_ext_15;
  output fifo_empty_15;
  input fifo_rd_clk_15;
  input fifo_rd_en_15;
  output bitslip_error_15;
  input tri_t_16;
  input [8:0]tx_cntvaluein_16;
  output [8:0]tx_cntvalueout_16;
  input tx_ce_16;
  input tx_en_vtc_16;
  input tx_inc_16;
  input tx_load_16;
  output [8:0]rx_cntvalueout_16;
  input [8:0]rx_cntvaluein_16;
  input rx_ce_16;
  input rx_en_vtc_16;
  input rx_inc_16;
  input rx_load_16;
  output [8:0]rx_cntvalueout_ext_16;
  input [8:0]rx_cntvaluein_ext_16;
  input rx_ce_ext_16;
  input rx_en_vtc_ext_16;
  input rx_inc_ext_16;
  input rx_load_ext_16;
  output fifo_empty_16;
  input fifo_rd_clk_16;
  input fifo_rd_en_16;
  output bitslip_error_16;
  input tri_t_17;
  input [8:0]tx_cntvaluein_17;
  output [8:0]tx_cntvalueout_17;
  input tx_ce_17;
  input tx_en_vtc_17;
  input tx_inc_17;
  input tx_load_17;
  output [8:0]rx_cntvalueout_17;
  input [8:0]rx_cntvaluein_17;
  input rx_ce_17;
  input rx_en_vtc_17;
  input rx_inc_17;
  input rx_load_17;
  output [8:0]rx_cntvalueout_ext_17;
  input [8:0]rx_cntvaluein_ext_17;
  input rx_ce_ext_17;
  input rx_en_vtc_ext_17;
  input rx_inc_ext_17;
  input rx_load_ext_17;
  output fifo_empty_17;
  input fifo_rd_clk_17;
  input fifo_rd_en_17;
  output bitslip_error_17;
  input tri_t_18;
  input [8:0]tx_cntvaluein_18;
  output [8:0]tx_cntvalueout_18;
  input tx_ce_18;
  input tx_en_vtc_18;
  input tx_inc_18;
  input tx_load_18;
  output [8:0]rx_cntvalueout_18;
  input [8:0]rx_cntvaluein_18;
  input rx_ce_18;
  input rx_en_vtc_18;
  input rx_inc_18;
  input rx_load_18;
  output [8:0]rx_cntvalueout_ext_18;
  input [8:0]rx_cntvaluein_ext_18;
  input rx_ce_ext_18;
  input rx_en_vtc_ext_18;
  input rx_inc_ext_18;
  input rx_load_ext_18;
  output fifo_empty_18;
  input fifo_rd_clk_18;
  input fifo_rd_en_18;
  output bitslip_error_18;
  input tri_t_19;
  input [8:0]tx_cntvaluein_19;
  output [8:0]tx_cntvalueout_19;
  input tx_ce_19;
  input tx_en_vtc_19;
  input tx_inc_19;
  input tx_load_19;
  output [8:0]rx_cntvalueout_19;
  input [8:0]rx_cntvaluein_19;
  input rx_ce_19;
  input rx_en_vtc_19;
  input rx_inc_19;
  input rx_load_19;
  output [8:0]rx_cntvalueout_ext_19;
  input [8:0]rx_cntvaluein_ext_19;
  input rx_ce_ext_19;
  input rx_en_vtc_ext_19;
  input rx_inc_ext_19;
  input rx_load_ext_19;
  output fifo_empty_19;
  input fifo_rd_clk_19;
  input fifo_rd_en_19;
  output bitslip_error_19;
  input tri_t_20;
  input [8:0]tx_cntvaluein_20;
  output [8:0]tx_cntvalueout_20;
  input tx_ce_20;
  input tx_en_vtc_20;
  input tx_inc_20;
  input tx_load_20;
  output [8:0]rx_cntvalueout_20;
  input [8:0]rx_cntvaluein_20;
  input rx_ce_20;
  input rx_en_vtc_20;
  input rx_inc_20;
  input rx_load_20;
  output [8:0]rx_cntvalueout_ext_20;
  input [8:0]rx_cntvaluein_ext_20;
  input rx_ce_ext_20;
  input rx_en_vtc_ext_20;
  input rx_inc_ext_20;
  input rx_load_ext_20;
  output fifo_empty_20;
  input fifo_rd_clk_20;
  input fifo_rd_en_20;
  output bitslip_error_20;
  input tri_t_21;
  input [8:0]tx_cntvaluein_21;
  output [8:0]tx_cntvalueout_21;
  input tx_ce_21;
  input tx_en_vtc_21;
  input tx_inc_21;
  input tx_load_21;
  output [8:0]rx_cntvalueout_21;
  input [8:0]rx_cntvaluein_21;
  input rx_ce_21;
  input rx_en_vtc_21;
  input rx_inc_21;
  input rx_load_21;
  output [8:0]rx_cntvalueout_ext_21;
  input [8:0]rx_cntvaluein_ext_21;
  input rx_ce_ext_21;
  input rx_en_vtc_ext_21;
  input rx_inc_ext_21;
  input rx_load_ext_21;
  output fifo_empty_21;
  input fifo_rd_clk_21;
  input fifo_rd_en_21;
  output bitslip_error_21;
  input tri_t_22;
  input [8:0]tx_cntvaluein_22;
  output [8:0]tx_cntvalueout_22;
  input tx_ce_22;
  input tx_en_vtc_22;
  input tx_inc_22;
  input tx_load_22;
  output [8:0]rx_cntvalueout_22;
  input [8:0]rx_cntvaluein_22;
  input rx_ce_22;
  input rx_en_vtc_22;
  input rx_inc_22;
  input rx_load_22;
  output [8:0]rx_cntvalueout_ext_22;
  input [8:0]rx_cntvaluein_ext_22;
  input rx_ce_ext_22;
  input rx_en_vtc_ext_22;
  input rx_inc_ext_22;
  input rx_load_ext_22;
  output fifo_empty_22;
  input fifo_rd_clk_22;
  input fifo_rd_en_22;
  output bitslip_error_22;
  input tri_t_23;
  input [8:0]tx_cntvaluein_23;
  output [8:0]tx_cntvalueout_23;
  input tx_ce_23;
  input tx_en_vtc_23;
  input tx_inc_23;
  input tx_load_23;
  output [8:0]rx_cntvalueout_23;
  input [8:0]rx_cntvaluein_23;
  input rx_ce_23;
  input rx_en_vtc_23;
  input rx_inc_23;
  input rx_load_23;
  output [8:0]rx_cntvalueout_ext_23;
  input [8:0]rx_cntvaluein_ext_23;
  input rx_ce_ext_23;
  input rx_en_vtc_ext_23;
  input rx_inc_ext_23;
  input rx_load_ext_23;
  output fifo_empty_23;
  input fifo_rd_clk_23;
  input fifo_rd_en_23;
  output bitslip_error_23;
  input tri_t_24;
  input [8:0]tx_cntvaluein_24;
  output [8:0]tx_cntvalueout_24;
  input tx_ce_24;
  input tx_en_vtc_24;
  input tx_inc_24;
  input tx_load_24;
  output [8:0]rx_cntvalueout_24;
  input [8:0]rx_cntvaluein_24;
  input rx_ce_24;
  input rx_en_vtc_24;
  input rx_inc_24;
  input rx_load_24;
  output [8:0]rx_cntvalueout_ext_24;
  input [8:0]rx_cntvaluein_ext_24;
  input rx_ce_ext_24;
  input rx_en_vtc_ext_24;
  input rx_inc_ext_24;
  input rx_load_ext_24;
  output fifo_empty_24;
  input fifo_rd_clk_24;
  input fifo_rd_en_24;
  output bitslip_error_24;
  input tri_t_25;
  input [8:0]tx_cntvaluein_25;
  output [8:0]tx_cntvalueout_25;
  input tx_ce_25;
  input tx_en_vtc_25;
  input tx_inc_25;
  input tx_load_25;
  output [8:0]rx_cntvalueout_25;
  input [8:0]rx_cntvaluein_25;
  input rx_ce_25;
  input rx_en_vtc_25;
  input rx_inc_25;
  input rx_load_25;
  output [8:0]rx_cntvalueout_ext_25;
  input [8:0]rx_cntvaluein_ext_25;
  input rx_ce_ext_25;
  input rx_en_vtc_ext_25;
  input rx_inc_ext_25;
  input rx_load_ext_25;
  output fifo_empty_25;
  input fifo_rd_clk_25;
  input fifo_rd_en_25;
  output bitslip_error_25;
  input tri_t_26;
  input [8:0]tx_cntvaluein_26;
  output [8:0]tx_cntvalueout_26;
  input tx_ce_26;
  input tx_en_vtc_26;
  input tx_inc_26;
  input tx_load_26;
  output [8:0]rx_cntvalueout_26;
  input [8:0]rx_cntvaluein_26;
  input rx_ce_26;
  input rx_en_vtc_26;
  input rx_inc_26;
  input rx_load_26;
  output [8:0]rx_cntvalueout_ext_26;
  input [8:0]rx_cntvaluein_ext_26;
  input rx_ce_ext_26;
  input rx_en_vtc_ext_26;
  input rx_inc_ext_26;
  input rx_load_ext_26;
  output fifo_empty_26;
  input fifo_rd_clk_26;
  input fifo_rd_en_26;
  output bitslip_error_26;
  input tri_t_27;
  input [8:0]tx_cntvaluein_27;
  output [8:0]tx_cntvalueout_27;
  input tx_ce_27;
  input tx_en_vtc_27;
  input tx_inc_27;
  input tx_load_27;
  output [8:0]rx_cntvalueout_27;
  input [8:0]rx_cntvaluein_27;
  input rx_ce_27;
  input rx_en_vtc_27;
  input rx_inc_27;
  input rx_load_27;
  output [8:0]rx_cntvalueout_ext_27;
  input [8:0]rx_cntvaluein_ext_27;
  input rx_ce_ext_27;
  input rx_en_vtc_ext_27;
  input rx_inc_ext_27;
  input rx_load_ext_27;
  output fifo_empty_27;
  input fifo_rd_clk_27;
  input fifo_rd_en_27;
  output bitslip_error_27;
  input tri_t_28;
  input [8:0]tx_cntvaluein_28;
  output [8:0]tx_cntvalueout_28;
  input tx_ce_28;
  input tx_en_vtc_28;
  input tx_inc_28;
  input tx_load_28;
  output [8:0]rx_cntvalueout_28;
  input [8:0]rx_cntvaluein_28;
  input rx_ce_28;
  input rx_en_vtc_28;
  input rx_inc_28;
  input rx_load_28;
  output [8:0]rx_cntvalueout_ext_28;
  input [8:0]rx_cntvaluein_ext_28;
  input rx_ce_ext_28;
  input rx_en_vtc_ext_28;
  input rx_inc_ext_28;
  input rx_load_ext_28;
  output fifo_empty_28;
  input fifo_rd_clk_28;
  input fifo_rd_en_28;
  output bitslip_error_28;
  input tri_t_29;
  input [8:0]tx_cntvaluein_29;
  output [8:0]tx_cntvalueout_29;
  input tx_ce_29;
  input tx_en_vtc_29;
  input tx_inc_29;
  input tx_load_29;
  output [8:0]rx_cntvalueout_29;
  input [8:0]rx_cntvaluein_29;
  input rx_ce_29;
  input rx_en_vtc_29;
  input rx_inc_29;
  input rx_load_29;
  output [8:0]rx_cntvalueout_ext_29;
  input [8:0]rx_cntvaluein_ext_29;
  input rx_ce_ext_29;
  input rx_en_vtc_ext_29;
  input rx_inc_ext_29;
  input rx_load_ext_29;
  output fifo_empty_29;
  input fifo_rd_clk_29;
  input fifo_rd_en_29;
  output bitslip_error_29;
  input tri_t_30;
  input [8:0]tx_cntvaluein_30;
  output [8:0]tx_cntvalueout_30;
  input tx_ce_30;
  input tx_en_vtc_30;
  input tx_inc_30;
  input tx_load_30;
  output [8:0]rx_cntvalueout_30;
  input [8:0]rx_cntvaluein_30;
  input rx_ce_30;
  input rx_en_vtc_30;
  input rx_inc_30;
  input rx_load_30;
  output [8:0]rx_cntvalueout_ext_30;
  input [8:0]rx_cntvaluein_ext_30;
  input rx_ce_ext_30;
  input rx_en_vtc_ext_30;
  input rx_inc_ext_30;
  input rx_load_ext_30;
  output fifo_empty_30;
  input fifo_rd_clk_30;
  input fifo_rd_en_30;
  output bitslip_error_30;
  input tri_t_31;
  input [8:0]tx_cntvaluein_31;
  output [8:0]tx_cntvalueout_31;
  input tx_ce_31;
  input tx_en_vtc_31;
  input tx_inc_31;
  input tx_load_31;
  output [8:0]rx_cntvalueout_31;
  input [8:0]rx_cntvaluein_31;
  input rx_ce_31;
  input rx_en_vtc_31;
  input rx_inc_31;
  input rx_load_31;
  output [8:0]rx_cntvalueout_ext_31;
  input [8:0]rx_cntvaluein_ext_31;
  input rx_ce_ext_31;
  input rx_en_vtc_ext_31;
  input rx_inc_ext_31;
  input rx_load_ext_31;
  output fifo_empty_31;
  input fifo_rd_clk_31;
  input fifo_rd_en_31;
  output bitslip_error_31;
  input tri_t_32;
  input [8:0]tx_cntvaluein_32;
  output [8:0]tx_cntvalueout_32;
  input tx_ce_32;
  input tx_en_vtc_32;
  input tx_inc_32;
  input tx_load_32;
  output [8:0]rx_cntvalueout_32;
  input [8:0]rx_cntvaluein_32;
  input rx_ce_32;
  input rx_en_vtc_32;
  input rx_inc_32;
  input rx_load_32;
  output [8:0]rx_cntvalueout_ext_32;
  input [8:0]rx_cntvaluein_ext_32;
  input rx_ce_ext_32;
  input rx_en_vtc_ext_32;
  input rx_inc_ext_32;
  input rx_load_ext_32;
  output fifo_empty_32;
  input fifo_rd_clk_32;
  input fifo_rd_en_32;
  output bitslip_error_32;
  input tri_t_33;
  input [8:0]tx_cntvaluein_33;
  output [8:0]tx_cntvalueout_33;
  input tx_ce_33;
  input tx_en_vtc_33;
  input tx_inc_33;
  input tx_load_33;
  output [8:0]rx_cntvalueout_33;
  input [8:0]rx_cntvaluein_33;
  input rx_ce_33;
  input rx_en_vtc_33;
  input rx_inc_33;
  input rx_load_33;
  output [8:0]rx_cntvalueout_ext_33;
  input [8:0]rx_cntvaluein_ext_33;
  input rx_ce_ext_33;
  input rx_en_vtc_ext_33;
  input rx_inc_ext_33;
  input rx_load_ext_33;
  output fifo_empty_33;
  input fifo_rd_clk_33;
  input fifo_rd_en_33;
  output bitslip_error_33;
  input tri_t_34;
  input [8:0]tx_cntvaluein_34;
  output [8:0]tx_cntvalueout_34;
  input tx_ce_34;
  input tx_en_vtc_34;
  input tx_inc_34;
  input tx_load_34;
  output [8:0]rx_cntvalueout_34;
  input [8:0]rx_cntvaluein_34;
  input rx_ce_34;
  input rx_en_vtc_34;
  input rx_inc_34;
  input rx_load_34;
  output [8:0]rx_cntvalueout_ext_34;
  input [8:0]rx_cntvaluein_ext_34;
  input rx_ce_ext_34;
  input rx_en_vtc_ext_34;
  input rx_inc_ext_34;
  input rx_load_ext_34;
  output fifo_empty_34;
  input fifo_rd_clk_34;
  input fifo_rd_en_34;
  output bitslip_error_34;
  input tri_t_35;
  input [8:0]tx_cntvaluein_35;
  output [8:0]tx_cntvalueout_35;
  input tx_ce_35;
  input tx_en_vtc_35;
  input tx_inc_35;
  input tx_load_35;
  output [8:0]rx_cntvalueout_35;
  input [8:0]rx_cntvaluein_35;
  input rx_ce_35;
  input rx_en_vtc_35;
  input rx_inc_35;
  input rx_load_35;
  output [8:0]rx_cntvalueout_ext_35;
  input [8:0]rx_cntvaluein_ext_35;
  input rx_ce_ext_35;
  input rx_en_vtc_ext_35;
  input rx_inc_ext_35;
  input rx_load_ext_35;
  output fifo_empty_35;
  input fifo_rd_clk_35;
  input fifo_rd_en_35;
  output bitslip_error_35;
  input tri_t_36;
  input [8:0]tx_cntvaluein_36;
  output [8:0]tx_cntvalueout_36;
  input tx_ce_36;
  input tx_en_vtc_36;
  input tx_inc_36;
  input tx_load_36;
  output [8:0]rx_cntvalueout_36;
  input [8:0]rx_cntvaluein_36;
  input rx_ce_36;
  input rx_en_vtc_36;
  input rx_inc_36;
  input rx_load_36;
  output [8:0]rx_cntvalueout_ext_36;
  input [8:0]rx_cntvaluein_ext_36;
  input rx_ce_ext_36;
  input rx_en_vtc_ext_36;
  input rx_inc_ext_36;
  input rx_load_ext_36;
  output fifo_empty_36;
  input fifo_rd_clk_36;
  input fifo_rd_en_36;
  output bitslip_error_36;
  input tri_t_37;
  input [8:0]tx_cntvaluein_37;
  output [8:0]tx_cntvalueout_37;
  input tx_ce_37;
  input tx_en_vtc_37;
  input tx_inc_37;
  input tx_load_37;
  output [8:0]rx_cntvalueout_37;
  input [8:0]rx_cntvaluein_37;
  input rx_ce_37;
  input rx_en_vtc_37;
  input rx_inc_37;
  input rx_load_37;
  output [8:0]rx_cntvalueout_ext_37;
  input [8:0]rx_cntvaluein_ext_37;
  input rx_ce_ext_37;
  input rx_en_vtc_ext_37;
  input rx_inc_ext_37;
  input rx_load_ext_37;
  output fifo_empty_37;
  input fifo_rd_clk_37;
  input fifo_rd_en_37;
  output bitslip_error_37;
  input tri_t_38;
  input [8:0]tx_cntvaluein_38;
  output [8:0]tx_cntvalueout_38;
  input tx_ce_38;
  input tx_en_vtc_38;
  input tx_inc_38;
  input tx_load_38;
  output [8:0]rx_cntvalueout_38;
  input [8:0]rx_cntvaluein_38;
  input rx_ce_38;
  input rx_en_vtc_38;
  input rx_inc_38;
  input rx_load_38;
  output [8:0]rx_cntvalueout_ext_38;
  input [8:0]rx_cntvaluein_ext_38;
  input rx_ce_ext_38;
  input rx_en_vtc_ext_38;
  input rx_inc_ext_38;
  input rx_load_ext_38;
  output fifo_empty_38;
  input fifo_rd_clk_38;
  input fifo_rd_en_38;
  output bitslip_error_38;
  input tri_t_39;
  input [8:0]tx_cntvaluein_39;
  output [8:0]tx_cntvalueout_39;
  input tx_ce_39;
  input tx_en_vtc_39;
  input tx_inc_39;
  input tx_load_39;
  output [8:0]rx_cntvalueout_39;
  input [8:0]rx_cntvaluein_39;
  input rx_ce_39;
  input rx_en_vtc_39;
  input rx_inc_39;
  input rx_load_39;
  output [8:0]rx_cntvalueout_ext_39;
  input [8:0]rx_cntvaluein_ext_39;
  input rx_ce_ext_39;
  input rx_en_vtc_ext_39;
  input rx_inc_ext_39;
  input rx_load_ext_39;
  output fifo_empty_39;
  input fifo_rd_clk_39;
  input fifo_rd_en_39;
  output bitslip_error_39;
  input tri_t_40;
  input [8:0]tx_cntvaluein_40;
  output [8:0]tx_cntvalueout_40;
  input tx_ce_40;
  input tx_en_vtc_40;
  input tx_inc_40;
  input tx_load_40;
  output [8:0]rx_cntvalueout_40;
  input [8:0]rx_cntvaluein_40;
  input rx_ce_40;
  input rx_en_vtc_40;
  input rx_inc_40;
  input rx_load_40;
  output [8:0]rx_cntvalueout_ext_40;
  input [8:0]rx_cntvaluein_ext_40;
  input rx_ce_ext_40;
  input rx_en_vtc_ext_40;
  input rx_inc_ext_40;
  input rx_load_ext_40;
  output fifo_empty_40;
  input fifo_rd_clk_40;
  input fifo_rd_en_40;
  output bitslip_error_40;
  input tri_t_41;
  input [8:0]tx_cntvaluein_41;
  output [8:0]tx_cntvalueout_41;
  input tx_ce_41;
  input tx_en_vtc_41;
  input tx_inc_41;
  input tx_load_41;
  output [8:0]rx_cntvalueout_41;
  input [8:0]rx_cntvaluein_41;
  input rx_ce_41;
  input rx_en_vtc_41;
  input rx_inc_41;
  input rx_load_41;
  output [8:0]rx_cntvalueout_ext_41;
  input [8:0]rx_cntvaluein_ext_41;
  input rx_ce_ext_41;
  input rx_en_vtc_ext_41;
  input rx_inc_ext_41;
  input rx_load_ext_41;
  output fifo_empty_41;
  input fifo_rd_clk_41;
  input fifo_rd_en_41;
  output bitslip_error_41;
  input tri_t_42;
  input [8:0]tx_cntvaluein_42;
  output [8:0]tx_cntvalueout_42;
  input tx_ce_42;
  input tx_en_vtc_42;
  input tx_inc_42;
  input tx_load_42;
  output [8:0]rx_cntvalueout_42;
  input [8:0]rx_cntvaluein_42;
  input rx_ce_42;
  input rx_en_vtc_42;
  input rx_inc_42;
  input rx_load_42;
  output [8:0]rx_cntvalueout_ext_42;
  input [8:0]rx_cntvaluein_ext_42;
  input rx_ce_ext_42;
  input rx_en_vtc_ext_42;
  input rx_inc_ext_42;
  input rx_load_ext_42;
  output fifo_empty_42;
  input fifo_rd_clk_42;
  input fifo_rd_en_42;
  output bitslip_error_42;
  input tri_t_43;
  input [8:0]tx_cntvaluein_43;
  output [8:0]tx_cntvalueout_43;
  input tx_ce_43;
  input tx_en_vtc_43;
  input tx_inc_43;
  input tx_load_43;
  output [8:0]rx_cntvalueout_43;
  input [8:0]rx_cntvaluein_43;
  input rx_ce_43;
  input rx_en_vtc_43;
  input rx_inc_43;
  input rx_load_43;
  output [8:0]rx_cntvalueout_ext_43;
  input [8:0]rx_cntvaluein_ext_43;
  input rx_ce_ext_43;
  input rx_en_vtc_ext_43;
  input rx_inc_ext_43;
  input rx_load_ext_43;
  output fifo_empty_43;
  input fifo_rd_clk_43;
  input fifo_rd_en_43;
  output bitslip_error_43;
  input tri_t_44;
  input [8:0]tx_cntvaluein_44;
  output [8:0]tx_cntvalueout_44;
  input tx_ce_44;
  input tx_en_vtc_44;
  input tx_inc_44;
  input tx_load_44;
  output [8:0]rx_cntvalueout_44;
  input [8:0]rx_cntvaluein_44;
  input rx_ce_44;
  input rx_en_vtc_44;
  input rx_inc_44;
  input rx_load_44;
  output [8:0]rx_cntvalueout_ext_44;
  input [8:0]rx_cntvaluein_ext_44;
  input rx_ce_ext_44;
  input rx_en_vtc_ext_44;
  input rx_inc_ext_44;
  input rx_load_ext_44;
  output fifo_empty_44;
  input fifo_rd_clk_44;
  input fifo_rd_en_44;
  output bitslip_error_44;
  input tri_t_45;
  input [8:0]tx_cntvaluein_45;
  output [8:0]tx_cntvalueout_45;
  input tx_ce_45;
  input tx_en_vtc_45;
  input tx_inc_45;
  input tx_load_45;
  output [8:0]rx_cntvalueout_45;
  input [8:0]rx_cntvaluein_45;
  input rx_ce_45;
  input rx_en_vtc_45;
  input rx_inc_45;
  input rx_load_45;
  output [8:0]rx_cntvalueout_ext_45;
  input [8:0]rx_cntvaluein_ext_45;
  input rx_ce_ext_45;
  input rx_en_vtc_ext_45;
  input rx_inc_ext_45;
  input rx_load_ext_45;
  output fifo_empty_45;
  input fifo_rd_clk_45;
  input fifo_rd_en_45;
  output bitslip_error_45;
  input tri_t_46;
  input [8:0]tx_cntvaluein_46;
  output [8:0]tx_cntvalueout_46;
  input tx_ce_46;
  input tx_en_vtc_46;
  input tx_inc_46;
  input tx_load_46;
  output [8:0]rx_cntvalueout_46;
  input [8:0]rx_cntvaluein_46;
  input rx_ce_46;
  input rx_en_vtc_46;
  input rx_inc_46;
  input rx_load_46;
  output [8:0]rx_cntvalueout_ext_46;
  input [8:0]rx_cntvaluein_ext_46;
  input rx_ce_ext_46;
  input rx_en_vtc_ext_46;
  input rx_inc_ext_46;
  input rx_load_ext_46;
  output fifo_empty_46;
  input fifo_rd_clk_46;
  input fifo_rd_en_46;
  output bitslip_error_46;
  input tri_t_47;
  input [8:0]tx_cntvaluein_47;
  output [8:0]tx_cntvalueout_47;
  input tx_ce_47;
  input tx_en_vtc_47;
  input tx_inc_47;
  input tx_load_47;
  output [8:0]rx_cntvalueout_47;
  input [8:0]rx_cntvaluein_47;
  input rx_ce_47;
  input rx_en_vtc_47;
  input rx_inc_47;
  input rx_load_47;
  output [8:0]rx_cntvalueout_ext_47;
  input [8:0]rx_cntvaluein_ext_47;
  input rx_ce_ext_47;
  input rx_en_vtc_ext_47;
  input rx_inc_ext_47;
  input rx_load_ext_47;
  output fifo_empty_47;
  input fifo_rd_clk_47;
  input fifo_rd_en_47;
  output bitslip_error_47;
  input tri_t_48;
  input [8:0]tx_cntvaluein_48;
  output [8:0]tx_cntvalueout_48;
  input tx_ce_48;
  input tx_en_vtc_48;
  input tx_inc_48;
  input tx_load_48;
  output [8:0]rx_cntvalueout_48;
  input [8:0]rx_cntvaluein_48;
  input rx_ce_48;
  input rx_en_vtc_48;
  input rx_inc_48;
  input rx_load_48;
  output [8:0]rx_cntvalueout_ext_48;
  input [8:0]rx_cntvaluein_ext_48;
  input rx_ce_ext_48;
  input rx_en_vtc_ext_48;
  input rx_inc_ext_48;
  input rx_load_ext_48;
  output fifo_empty_48;
  input fifo_rd_clk_48;
  input fifo_rd_en_48;
  output bitslip_error_48;
  input tri_t_49;
  input [8:0]tx_cntvaluein_49;
  output [8:0]tx_cntvalueout_49;
  input tx_ce_49;
  input tx_en_vtc_49;
  input tx_inc_49;
  input tx_load_49;
  output [8:0]rx_cntvalueout_49;
  input [8:0]rx_cntvaluein_49;
  input rx_ce_49;
  input rx_en_vtc_49;
  input rx_inc_49;
  input rx_load_49;
  output [8:0]rx_cntvalueout_ext_49;
  input [8:0]rx_cntvaluein_ext_49;
  input rx_ce_ext_49;
  input rx_en_vtc_ext_49;
  input rx_inc_ext_49;
  input rx_load_ext_49;
  output fifo_empty_49;
  input fifo_rd_clk_49;
  input fifo_rd_en_49;
  output bitslip_error_49;
  input tri_t_50;
  input [8:0]tx_cntvaluein_50;
  output [8:0]tx_cntvalueout_50;
  input tx_ce_50;
  input tx_en_vtc_50;
  input tx_inc_50;
  input tx_load_50;
  output [8:0]rx_cntvalueout_50;
  input [8:0]rx_cntvaluein_50;
  input rx_ce_50;
  input rx_en_vtc_50;
  input rx_inc_50;
  input rx_load_50;
  output [8:0]rx_cntvalueout_ext_50;
  input [8:0]rx_cntvaluein_ext_50;
  input rx_ce_ext_50;
  input rx_en_vtc_ext_50;
  input rx_inc_ext_50;
  input rx_load_ext_50;
  output fifo_empty_50;
  input fifo_rd_clk_50;
  input fifo_rd_en_50;
  output bitslip_error_50;
  input tri_t_51;
  input [8:0]tx_cntvaluein_51;
  output [8:0]tx_cntvalueout_51;
  input tx_ce_51;
  input tx_en_vtc_51;
  input tx_inc_51;
  input tx_load_51;
  output [8:0]rx_cntvalueout_51;
  input [8:0]rx_cntvaluein_51;
  input rx_ce_51;
  input rx_en_vtc_51;
  input rx_inc_51;
  input rx_load_51;
  output [8:0]rx_cntvalueout_ext_51;
  input [8:0]rx_cntvaluein_ext_51;
  input rx_ce_ext_51;
  input rx_en_vtc_ext_51;
  input rx_inc_ext_51;
  input rx_load_ext_51;
  output fifo_empty_51;
  input fifo_rd_clk_51;
  input fifo_rd_en_51;
  output bitslip_error_51;
  output fifo_wr_clk_0;
  output fifo_wr_clk_6;
  output fifo_wr_clk_13;
  output fifo_wr_clk_19;
  output fifo_wr_clk_26;
  output fifo_wr_clk_32;
  output fifo_wr_clk_39;
  output fifo_wr_clk_45;
  input [3:0]tri_tbyte0;
  output [8:0]bidir_tx_bs_tri_cntvalueout0;
  input [8:0]bidir_tx_bs_tri_cntvaluein0;
  input bidir_tx_bs_tri_en_vtc0;
  input bidir_tx_bs_tri_ce0;
  input bidir_tx_bs_tri_inc0;
  input bidir_tx_bs_tri_load0;
  input [3:0]tri_tbyte1;
  output [8:0]bidir_tx_bs_tri_cntvalueout1;
  input [8:0]bidir_tx_bs_tri_cntvaluein1;
  input bidir_tx_bs_tri_en_vtc1;
  input bidir_tx_bs_tri_ce1;
  input bidir_tx_bs_tri_inc1;
  input bidir_tx_bs_tri_load1;
  input [3:0]tri_tbyte2;
  output [8:0]bidir_tx_bs_tri_cntvalueout2;
  input [8:0]bidir_tx_bs_tri_cntvaluein2;
  input bidir_tx_bs_tri_en_vtc2;
  input bidir_tx_bs_tri_ce2;
  input bidir_tx_bs_tri_inc2;
  input bidir_tx_bs_tri_load2;
  input [3:0]tri_tbyte3;
  output [8:0]bidir_tx_bs_tri_cntvalueout3;
  input [8:0]bidir_tx_bs_tri_cntvaluein3;
  input bidir_tx_bs_tri_en_vtc3;
  input bidir_tx_bs_tri_ce3;
  input bidir_tx_bs_tri_inc3;
  input bidir_tx_bs_tri_load3;
  input [3:0]tri_tbyte4;
  output [8:0]bidir_tx_bs_tri_cntvalueout4;
  input [8:0]bidir_tx_bs_tri_cntvaluein4;
  input bidir_tx_bs_tri_en_vtc4;
  input bidir_tx_bs_tri_ce4;
  input bidir_tx_bs_tri_inc4;
  input bidir_tx_bs_tri_load4;
  input [3:0]tri_tbyte5;
  output [8:0]bidir_tx_bs_tri_cntvalueout5;
  input [8:0]bidir_tx_bs_tri_cntvaluein5;
  input bidir_tx_bs_tri_en_vtc5;
  input bidir_tx_bs_tri_ce5;
  input bidir_tx_bs_tri_inc5;
  input bidir_tx_bs_tri_load5;
  input [3:0]tri_tbyte6;
  output [8:0]bidir_tx_bs_tri_cntvalueout6;
  input [8:0]bidir_tx_bs_tri_cntvaluein6;
  input bidir_tx_bs_tri_en_vtc6;
  input bidir_tx_bs_tri_ce6;
  input bidir_tx_bs_tri_inc6;
  input bidir_tx_bs_tri_load6;
  input [3:0]tri_tbyte7;
  output [8:0]bidir_tx_bs_tri_cntvalueout7;
  input [8:0]bidir_tx_bs_tri_cntvaluein7;
  input bidir_tx_bs_tri_en_vtc7;
  input bidir_tx_bs_tri_ce7;
  input bidir_tx_bs_tri_inc7;
  input bidir_tx_bs_tri_load7;
  output fifo_rd_data_valid;
  input rst;

  wire \<const0> ;
  wire \<const1> ;
  wire bs_rst_dphy_in;
  wire clk;
  wire clk_rxn;
  wire clk_rxp;
  wire [6:0]daddr;
  wire data_rxn0;
  wire data_rxn1;
  wire data_rxp0;
  wire data_rxp1;
  wire [7:0]data_to_fabric_clk_rxp;
  wire [7:0]data_to_fabric_data_rxp0;
  wire [7:0]data_to_fabric_data_rxp1;
  wire dclk;
  wire den;
  wire [15:0]di;
  wire dly_rdy_bsc0;
  wire [15:0]do_out;
  wire drdy;
  wire dwe;
  wire en_vtc_bsc0;
  wire fifo_empty_0;
  wire fifo_empty_2;
  wire fifo_empty_4;
  wire fifo_rd_clk_0;
  wire fifo_rd_clk_2;
  wire fifo_rd_clk_4;
  wire fifo_rd_en_0;
  wire fifo_rd_en_2;
  wire fifo_rd_en_4;
  wire fifo_wr_clk_0;
  wire [2:0]hs_rx_disable;
  wire [2:0]lp_rx_disable;
  wire [2:0]lp_rx_o_n;
  wire [2:0]lp_rx_o_p;
  wire multi_intf_lock_in;
  wire pll0_clkout0;
  wire pll0_locked;
  wire [5:0]riu_addr_bg0;
  wire riu_clk;
  wire [1:0]riu_nibble_sel_bg0;
  wire [15:0]riu_rd_data_bg0_bs0;
  wire riu_valid_bg0_bs0;
  wire [15:0]riu_wr_data_bg0;
  wire riu_wr_en_bg0;
  wire rst;
  wire rst_seq_done;
  wire shared_pll0_clkoutphy_out;
  wire [3:0]tri_tbyte0;
  wire [3:0]tri_tbyte1;
  wire [3:0]tri_tbyte2;
  wire [3:0]tri_tbyte3;
  wire [3:0]tri_tbyte4;
  wire [3:0]tri_tbyte5;
  wire [3:0]tri_tbyte6;
  wire [3:0]tri_tbyte7;
  wire vtc_rdy_bsc0;

  assign bidir_tx_bs_tri_cntvalueout0[8] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout0[7] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout0[6] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout0[5] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout0[4] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout0[3] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout0[2] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout0[1] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout0[0] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout1[8] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout1[7] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout1[6] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout1[5] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout1[4] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout1[3] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout1[2] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout1[1] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout1[0] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout2[8] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout2[7] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout2[6] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout2[5] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout2[4] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout2[3] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout2[2] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout2[1] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout2[0] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout3[8] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout3[7] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout3[6] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout3[5] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout3[4] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout3[3] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout3[2] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout3[1] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout3[0] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout4[8] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout4[7] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout4[6] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout4[5] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout4[4] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout4[3] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout4[2] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout4[1] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout4[0] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout5[8] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout5[7] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout5[6] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout5[5] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout5[4] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout5[3] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout5[2] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout5[1] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout5[0] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout6[8] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout6[7] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout6[6] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout6[5] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout6[4] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout6[3] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout6[2] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout6[1] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout6[0] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout7[8] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout7[7] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout7[6] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout7[5] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout7[4] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout7[3] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout7[2] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout7[1] = \<const0> ;
  assign bidir_tx_bs_tri_cntvalueout7[0] = \<const0> ;
  assign bitslip_error_0 = \<const0> ;
  assign bitslip_error_1 = \<const0> ;
  assign bitslip_error_10 = \<const0> ;
  assign bitslip_error_11 = \<const0> ;
  assign bitslip_error_12 = \<const0> ;
  assign bitslip_error_13 = \<const0> ;
  assign bitslip_error_14 = \<const0> ;
  assign bitslip_error_15 = \<const0> ;
  assign bitslip_error_16 = \<const0> ;
  assign bitslip_error_17 = \<const0> ;
  assign bitslip_error_18 = \<const0> ;
  assign bitslip_error_19 = \<const0> ;
  assign bitslip_error_2 = \<const0> ;
  assign bitslip_error_20 = \<const0> ;
  assign bitslip_error_21 = \<const0> ;
  assign bitslip_error_22 = \<const0> ;
  assign bitslip_error_23 = \<const0> ;
  assign bitslip_error_24 = \<const0> ;
  assign bitslip_error_25 = \<const0> ;
  assign bitslip_error_26 = \<const0> ;
  assign bitslip_error_27 = \<const0> ;
  assign bitslip_error_28 = \<const0> ;
  assign bitslip_error_29 = \<const0> ;
  assign bitslip_error_3 = \<const0> ;
  assign bitslip_error_30 = \<const0> ;
  assign bitslip_error_31 = \<const0> ;
  assign bitslip_error_32 = \<const0> ;
  assign bitslip_error_33 = \<const0> ;
  assign bitslip_error_34 = \<const0> ;
  assign bitslip_error_35 = \<const0> ;
  assign bitslip_error_36 = \<const0> ;
  assign bitslip_error_37 = \<const0> ;
  assign bitslip_error_38 = \<const0> ;
  assign bitslip_error_39 = \<const0> ;
  assign bitslip_error_4 = \<const0> ;
  assign bitslip_error_40 = \<const0> ;
  assign bitslip_error_41 = \<const0> ;
  assign bitslip_error_42 = \<const0> ;
  assign bitslip_error_43 = \<const0> ;
  assign bitslip_error_44 = \<const0> ;
  assign bitslip_error_45 = \<const0> ;
  assign bitslip_error_46 = \<const0> ;
  assign bitslip_error_47 = \<const0> ;
  assign bitslip_error_48 = \<const0> ;
  assign bitslip_error_49 = \<const0> ;
  assign bitslip_error_5 = \<const0> ;
  assign bitslip_error_50 = \<const0> ;
  assign bitslip_error_51 = \<const0> ;
  assign bitslip_error_6 = \<const0> ;
  assign bitslip_error_7 = \<const0> ;
  assign bitslip_error_8 = \<const0> ;
  assign bitslip_error_9 = \<const0> ;
  assign clk_from_ibuf = \<const0> ;
  assign data_to_fabric_clk_rxn[7] = \<const0> ;
  assign data_to_fabric_clk_rxn[6] = \<const0> ;
  assign data_to_fabric_clk_rxn[5] = \<const0> ;
  assign data_to_fabric_clk_rxn[4] = \<const0> ;
  assign data_to_fabric_clk_rxn[3] = \<const0> ;
  assign data_to_fabric_clk_rxn[2] = \<const0> ;
  assign data_to_fabric_clk_rxn[1] = \<const0> ;
  assign data_to_fabric_clk_rxn[0] = \<const0> ;
  assign data_to_fabric_data_rxn0[7] = \<const0> ;
  assign data_to_fabric_data_rxn0[6] = \<const0> ;
  assign data_to_fabric_data_rxn0[5] = \<const0> ;
  assign data_to_fabric_data_rxn0[4] = \<const0> ;
  assign data_to_fabric_data_rxn0[3] = \<const0> ;
  assign data_to_fabric_data_rxn0[2] = \<const0> ;
  assign data_to_fabric_data_rxn0[1] = \<const0> ;
  assign data_to_fabric_data_rxn0[0] = \<const0> ;
  assign data_to_fabric_data_rxn1[7] = \<const0> ;
  assign data_to_fabric_data_rxn1[6] = \<const0> ;
  assign data_to_fabric_data_rxn1[5] = \<const0> ;
  assign data_to_fabric_data_rxn1[4] = \<const0> ;
  assign data_to_fabric_data_rxn1[3] = \<const0> ;
  assign data_to_fabric_data_rxn1[2] = \<const0> ;
  assign data_to_fabric_data_rxn1[1] = \<const0> ;
  assign data_to_fabric_data_rxn1[0] = \<const0> ;
  assign dly_rdy_bsc1 = \<const0> ;
  assign dly_rdy_bsc2 = \<const0> ;
  assign dly_rdy_bsc3 = \<const0> ;
  assign dly_rdy_bsc4 = \<const0> ;
  assign dly_rdy_bsc5 = \<const0> ;
  assign dly_rdy_bsc6 = \<const0> ;
  assign dly_rdy_bsc7 = \<const0> ;
  assign fifo_empty_1 = \<const0> ;
  assign fifo_empty_10 = \<const0> ;
  assign fifo_empty_11 = \<const0> ;
  assign fifo_empty_12 = \<const0> ;
  assign fifo_empty_13 = \<const0> ;
  assign fifo_empty_14 = \<const0> ;
  assign fifo_empty_15 = \<const0> ;
  assign fifo_empty_16 = \<const0> ;
  assign fifo_empty_17 = \<const0> ;
  assign fifo_empty_18 = \<const0> ;
  assign fifo_empty_19 = \<const0> ;
  assign fifo_empty_20 = \<const0> ;
  assign fifo_empty_21 = \<const0> ;
  assign fifo_empty_22 = \<const0> ;
  assign fifo_empty_23 = \<const0> ;
  assign fifo_empty_24 = \<const0> ;
  assign fifo_empty_25 = \<const0> ;
  assign fifo_empty_26 = \<const0> ;
  assign fifo_empty_27 = \<const0> ;
  assign fifo_empty_28 = \<const0> ;
  assign fifo_empty_29 = \<const0> ;
  assign fifo_empty_3 = \<const0> ;
  assign fifo_empty_30 = \<const0> ;
  assign fifo_empty_31 = \<const0> ;
  assign fifo_empty_32 = \<const0> ;
  assign fifo_empty_33 = \<const0> ;
  assign fifo_empty_34 = \<const0> ;
  assign fifo_empty_35 = \<const0> ;
  assign fifo_empty_36 = \<const0> ;
  assign fifo_empty_37 = \<const0> ;
  assign fifo_empty_38 = \<const0> ;
  assign fifo_empty_39 = \<const0> ;
  assign fifo_empty_40 = \<const0> ;
  assign fifo_empty_41 = \<const0> ;
  assign fifo_empty_42 = \<const0> ;
  assign fifo_empty_43 = \<const0> ;
  assign fifo_empty_44 = \<const0> ;
  assign fifo_empty_45 = \<const0> ;
  assign fifo_empty_46 = \<const0> ;
  assign fifo_empty_47 = \<const0> ;
  assign fifo_empty_48 = \<const0> ;
  assign fifo_empty_49 = \<const0> ;
  assign fifo_empty_5 = \<const0> ;
  assign fifo_empty_50 = \<const0> ;
  assign fifo_empty_51 = \<const0> ;
  assign fifo_empty_6 = \<const0> ;
  assign fifo_empty_7 = \<const0> ;
  assign fifo_empty_8 = \<const0> ;
  assign fifo_empty_9 = \<const0> ;
  assign fifo_rd_data_valid = \<const0> ;
  assign fifo_wr_clk_13 = \<const0> ;
  assign fifo_wr_clk_19 = \<const0> ;
  assign fifo_wr_clk_26 = \<const0> ;
  assign fifo_wr_clk_32 = \<const0> ;
  assign fifo_wr_clk_39 = \<const0> ;
  assign fifo_wr_clk_45 = \<const0> ;
  assign fifo_wr_clk_6 = \<const0> ;
  assign intf_rdy = \<const0> ;
  assign pll0_clkout1 = \<const0> ;
  assign pll1_clkout0 = \<const0> ;
  assign pll1_locked = \<const0> ;
  assign riu_rd_data_bg0[15:0] = riu_rd_data_bg0_bs0;
  assign riu_rd_data_bg0_bs1[15] = \<const0> ;
  assign riu_rd_data_bg0_bs1[14] = \<const0> ;
  assign riu_rd_data_bg0_bs1[13] = \<const0> ;
  assign riu_rd_data_bg0_bs1[12] = \<const0> ;
  assign riu_rd_data_bg0_bs1[11] = \<const0> ;
  assign riu_rd_data_bg0_bs1[10] = \<const0> ;
  assign riu_rd_data_bg0_bs1[9] = \<const0> ;
  assign riu_rd_data_bg0_bs1[8] = \<const0> ;
  assign riu_rd_data_bg0_bs1[7] = \<const0> ;
  assign riu_rd_data_bg0_bs1[6] = \<const0> ;
  assign riu_rd_data_bg0_bs1[5] = \<const0> ;
  assign riu_rd_data_bg0_bs1[4] = \<const0> ;
  assign riu_rd_data_bg0_bs1[3] = \<const0> ;
  assign riu_rd_data_bg0_bs1[2] = \<const0> ;
  assign riu_rd_data_bg0_bs1[1] = \<const0> ;
  assign riu_rd_data_bg0_bs1[0] = \<const0> ;
  assign riu_rd_data_bg1[15] = \<const0> ;
  assign riu_rd_data_bg1[14] = \<const0> ;
  assign riu_rd_data_bg1[13] = \<const0> ;
  assign riu_rd_data_bg1[12] = \<const0> ;
  assign riu_rd_data_bg1[11] = \<const0> ;
  assign riu_rd_data_bg1[10] = \<const0> ;
  assign riu_rd_data_bg1[9] = \<const0> ;
  assign riu_rd_data_bg1[8] = \<const0> ;
  assign riu_rd_data_bg1[7] = \<const0> ;
  assign riu_rd_data_bg1[6] = \<const0> ;
  assign riu_rd_data_bg1[5] = \<const0> ;
  assign riu_rd_data_bg1[4] = \<const0> ;
  assign riu_rd_data_bg1[3] = \<const0> ;
  assign riu_rd_data_bg1[2] = \<const0> ;
  assign riu_rd_data_bg1[1] = \<const0> ;
  assign riu_rd_data_bg1[0] = \<const0> ;
  assign riu_rd_data_bg1_bs2[15] = \<const0> ;
  assign riu_rd_data_bg1_bs2[14] = \<const0> ;
  assign riu_rd_data_bg1_bs2[13] = \<const0> ;
  assign riu_rd_data_bg1_bs2[12] = \<const0> ;
  assign riu_rd_data_bg1_bs2[11] = \<const0> ;
  assign riu_rd_data_bg1_bs2[10] = \<const0> ;
  assign riu_rd_data_bg1_bs2[9] = \<const0> ;
  assign riu_rd_data_bg1_bs2[8] = \<const0> ;
  assign riu_rd_data_bg1_bs2[7] = \<const0> ;
  assign riu_rd_data_bg1_bs2[6] = \<const0> ;
  assign riu_rd_data_bg1_bs2[5] = \<const0> ;
  assign riu_rd_data_bg1_bs2[4] = \<const0> ;
  assign riu_rd_data_bg1_bs2[3] = \<const0> ;
  assign riu_rd_data_bg1_bs2[2] = \<const0> ;
  assign riu_rd_data_bg1_bs2[1] = \<const0> ;
  assign riu_rd_data_bg1_bs2[0] = \<const0> ;
  assign riu_rd_data_bg1_bs3[15] = \<const0> ;
  assign riu_rd_data_bg1_bs3[14] = \<const0> ;
  assign riu_rd_data_bg1_bs3[13] = \<const0> ;
  assign riu_rd_data_bg1_bs3[12] = \<const0> ;
  assign riu_rd_data_bg1_bs3[11] = \<const0> ;
  assign riu_rd_data_bg1_bs3[10] = \<const0> ;
  assign riu_rd_data_bg1_bs3[9] = \<const0> ;
  assign riu_rd_data_bg1_bs3[8] = \<const0> ;
  assign riu_rd_data_bg1_bs3[7] = \<const0> ;
  assign riu_rd_data_bg1_bs3[6] = \<const0> ;
  assign riu_rd_data_bg1_bs3[5] = \<const0> ;
  assign riu_rd_data_bg1_bs3[4] = \<const0> ;
  assign riu_rd_data_bg1_bs3[3] = \<const0> ;
  assign riu_rd_data_bg1_bs3[2] = \<const0> ;
  assign riu_rd_data_bg1_bs3[1] = \<const0> ;
  assign riu_rd_data_bg1_bs3[0] = \<const0> ;
  assign riu_rd_data_bg2[15] = \<const0> ;
  assign riu_rd_data_bg2[14] = \<const0> ;
  assign riu_rd_data_bg2[13] = \<const0> ;
  assign riu_rd_data_bg2[12] = \<const0> ;
  assign riu_rd_data_bg2[11] = \<const0> ;
  assign riu_rd_data_bg2[10] = \<const0> ;
  assign riu_rd_data_bg2[9] = \<const0> ;
  assign riu_rd_data_bg2[8] = \<const0> ;
  assign riu_rd_data_bg2[7] = \<const0> ;
  assign riu_rd_data_bg2[6] = \<const0> ;
  assign riu_rd_data_bg2[5] = \<const0> ;
  assign riu_rd_data_bg2[4] = \<const0> ;
  assign riu_rd_data_bg2[3] = \<const0> ;
  assign riu_rd_data_bg2[2] = \<const0> ;
  assign riu_rd_data_bg2[1] = \<const0> ;
  assign riu_rd_data_bg2[0] = \<const0> ;
  assign riu_rd_data_bg2_bs4[15] = \<const0> ;
  assign riu_rd_data_bg2_bs4[14] = \<const0> ;
  assign riu_rd_data_bg2_bs4[13] = \<const0> ;
  assign riu_rd_data_bg2_bs4[12] = \<const0> ;
  assign riu_rd_data_bg2_bs4[11] = \<const0> ;
  assign riu_rd_data_bg2_bs4[10] = \<const0> ;
  assign riu_rd_data_bg2_bs4[9] = \<const0> ;
  assign riu_rd_data_bg2_bs4[8] = \<const0> ;
  assign riu_rd_data_bg2_bs4[7] = \<const0> ;
  assign riu_rd_data_bg2_bs4[6] = \<const0> ;
  assign riu_rd_data_bg2_bs4[5] = \<const0> ;
  assign riu_rd_data_bg2_bs4[4] = \<const0> ;
  assign riu_rd_data_bg2_bs4[3] = \<const0> ;
  assign riu_rd_data_bg2_bs4[2] = \<const0> ;
  assign riu_rd_data_bg2_bs4[1] = \<const0> ;
  assign riu_rd_data_bg2_bs4[0] = \<const0> ;
  assign riu_rd_data_bg2_bs5[15] = \<const0> ;
  assign riu_rd_data_bg2_bs5[14] = \<const0> ;
  assign riu_rd_data_bg2_bs5[13] = \<const0> ;
  assign riu_rd_data_bg2_bs5[12] = \<const0> ;
  assign riu_rd_data_bg2_bs5[11] = \<const0> ;
  assign riu_rd_data_bg2_bs5[10] = \<const0> ;
  assign riu_rd_data_bg2_bs5[9] = \<const0> ;
  assign riu_rd_data_bg2_bs5[8] = \<const0> ;
  assign riu_rd_data_bg2_bs5[7] = \<const0> ;
  assign riu_rd_data_bg2_bs5[6] = \<const0> ;
  assign riu_rd_data_bg2_bs5[5] = \<const0> ;
  assign riu_rd_data_bg2_bs5[4] = \<const0> ;
  assign riu_rd_data_bg2_bs5[3] = \<const0> ;
  assign riu_rd_data_bg2_bs5[2] = \<const0> ;
  assign riu_rd_data_bg2_bs5[1] = \<const0> ;
  assign riu_rd_data_bg2_bs5[0] = \<const0> ;
  assign riu_rd_data_bg3[15] = \<const0> ;
  assign riu_rd_data_bg3[14] = \<const0> ;
  assign riu_rd_data_bg3[13] = \<const0> ;
  assign riu_rd_data_bg3[12] = \<const0> ;
  assign riu_rd_data_bg3[11] = \<const0> ;
  assign riu_rd_data_bg3[10] = \<const0> ;
  assign riu_rd_data_bg3[9] = \<const0> ;
  assign riu_rd_data_bg3[8] = \<const0> ;
  assign riu_rd_data_bg3[7] = \<const0> ;
  assign riu_rd_data_bg3[6] = \<const0> ;
  assign riu_rd_data_bg3[5] = \<const0> ;
  assign riu_rd_data_bg3[4] = \<const0> ;
  assign riu_rd_data_bg3[3] = \<const0> ;
  assign riu_rd_data_bg3[2] = \<const0> ;
  assign riu_rd_data_bg3[1] = \<const0> ;
  assign riu_rd_data_bg3[0] = \<const0> ;
  assign riu_rd_data_bg3_bs6[15] = \<const0> ;
  assign riu_rd_data_bg3_bs6[14] = \<const0> ;
  assign riu_rd_data_bg3_bs6[13] = \<const0> ;
  assign riu_rd_data_bg3_bs6[12] = \<const0> ;
  assign riu_rd_data_bg3_bs6[11] = \<const0> ;
  assign riu_rd_data_bg3_bs6[10] = \<const0> ;
  assign riu_rd_data_bg3_bs6[9] = \<const0> ;
  assign riu_rd_data_bg3_bs6[8] = \<const0> ;
  assign riu_rd_data_bg3_bs6[7] = \<const0> ;
  assign riu_rd_data_bg3_bs6[6] = \<const0> ;
  assign riu_rd_data_bg3_bs6[5] = \<const0> ;
  assign riu_rd_data_bg3_bs6[4] = \<const0> ;
  assign riu_rd_data_bg3_bs6[3] = \<const0> ;
  assign riu_rd_data_bg3_bs6[2] = \<const0> ;
  assign riu_rd_data_bg3_bs6[1] = \<const0> ;
  assign riu_rd_data_bg3_bs6[0] = \<const0> ;
  assign riu_rd_data_bg3_bs7[15] = \<const0> ;
  assign riu_rd_data_bg3_bs7[14] = \<const0> ;
  assign riu_rd_data_bg3_bs7[13] = \<const0> ;
  assign riu_rd_data_bg3_bs7[12] = \<const0> ;
  assign riu_rd_data_bg3_bs7[11] = \<const0> ;
  assign riu_rd_data_bg3_bs7[10] = \<const0> ;
  assign riu_rd_data_bg3_bs7[9] = \<const0> ;
  assign riu_rd_data_bg3_bs7[8] = \<const0> ;
  assign riu_rd_data_bg3_bs7[7] = \<const0> ;
  assign riu_rd_data_bg3_bs7[6] = \<const0> ;
  assign riu_rd_data_bg3_bs7[5] = \<const0> ;
  assign riu_rd_data_bg3_bs7[4] = \<const0> ;
  assign riu_rd_data_bg3_bs7[3] = \<const0> ;
  assign riu_rd_data_bg3_bs7[2] = \<const0> ;
  assign riu_rd_data_bg3_bs7[1] = \<const0> ;
  assign riu_rd_data_bg3_bs7[0] = \<const0> ;
  assign riu_valid_bg0 = riu_valid_bg0_bs0;
  assign riu_valid_bg0_bs1 = \<const0> ;
  assign riu_valid_bg1 = \<const0> ;
  assign riu_valid_bg1_bs2 = \<const0> ;
  assign riu_valid_bg1_bs3 = \<const0> ;
  assign riu_valid_bg2 = \<const0> ;
  assign riu_valid_bg2_bs4 = \<const0> ;
  assign riu_valid_bg2_bs5 = \<const0> ;
  assign riu_valid_bg3 = \<const0> ;
  assign riu_valid_bg3_bs6 = \<const0> ;
  assign riu_valid_bg3_bs7 = \<const0> ;
  assign rx_bitslip_sync_done = \<const1> ;
  assign rx_cntvalueout_0[8] = \<const0> ;
  assign rx_cntvalueout_0[7] = \<const0> ;
  assign rx_cntvalueout_0[6] = \<const0> ;
  assign rx_cntvalueout_0[5] = \<const0> ;
  assign rx_cntvalueout_0[4] = \<const0> ;
  assign rx_cntvalueout_0[3] = \<const0> ;
  assign rx_cntvalueout_0[2] = \<const0> ;
  assign rx_cntvalueout_0[1] = \<const0> ;
  assign rx_cntvalueout_0[0] = \<const0> ;
  assign rx_cntvalueout_1[8] = \<const0> ;
  assign rx_cntvalueout_1[7] = \<const0> ;
  assign rx_cntvalueout_1[6] = \<const0> ;
  assign rx_cntvalueout_1[5] = \<const0> ;
  assign rx_cntvalueout_1[4] = \<const0> ;
  assign rx_cntvalueout_1[3] = \<const0> ;
  assign rx_cntvalueout_1[2] = \<const0> ;
  assign rx_cntvalueout_1[1] = \<const0> ;
  assign rx_cntvalueout_1[0] = \<const0> ;
  assign rx_cntvalueout_10[8] = \<const0> ;
  assign rx_cntvalueout_10[7] = \<const0> ;
  assign rx_cntvalueout_10[6] = \<const0> ;
  assign rx_cntvalueout_10[5] = \<const0> ;
  assign rx_cntvalueout_10[4] = \<const0> ;
  assign rx_cntvalueout_10[3] = \<const0> ;
  assign rx_cntvalueout_10[2] = \<const0> ;
  assign rx_cntvalueout_10[1] = \<const0> ;
  assign rx_cntvalueout_10[0] = \<const0> ;
  assign rx_cntvalueout_11[8] = \<const0> ;
  assign rx_cntvalueout_11[7] = \<const0> ;
  assign rx_cntvalueout_11[6] = \<const0> ;
  assign rx_cntvalueout_11[5] = \<const0> ;
  assign rx_cntvalueout_11[4] = \<const0> ;
  assign rx_cntvalueout_11[3] = \<const0> ;
  assign rx_cntvalueout_11[2] = \<const0> ;
  assign rx_cntvalueout_11[1] = \<const0> ;
  assign rx_cntvalueout_11[0] = \<const0> ;
  assign rx_cntvalueout_12[8] = \<const0> ;
  assign rx_cntvalueout_12[7] = \<const0> ;
  assign rx_cntvalueout_12[6] = \<const0> ;
  assign rx_cntvalueout_12[5] = \<const0> ;
  assign rx_cntvalueout_12[4] = \<const0> ;
  assign rx_cntvalueout_12[3] = \<const0> ;
  assign rx_cntvalueout_12[2] = \<const0> ;
  assign rx_cntvalueout_12[1] = \<const0> ;
  assign rx_cntvalueout_12[0] = \<const0> ;
  assign rx_cntvalueout_13[8] = \<const0> ;
  assign rx_cntvalueout_13[7] = \<const0> ;
  assign rx_cntvalueout_13[6] = \<const0> ;
  assign rx_cntvalueout_13[5] = \<const0> ;
  assign rx_cntvalueout_13[4] = \<const0> ;
  assign rx_cntvalueout_13[3] = \<const0> ;
  assign rx_cntvalueout_13[2] = \<const0> ;
  assign rx_cntvalueout_13[1] = \<const0> ;
  assign rx_cntvalueout_13[0] = \<const0> ;
  assign rx_cntvalueout_14[8] = \<const0> ;
  assign rx_cntvalueout_14[7] = \<const0> ;
  assign rx_cntvalueout_14[6] = \<const0> ;
  assign rx_cntvalueout_14[5] = \<const0> ;
  assign rx_cntvalueout_14[4] = \<const0> ;
  assign rx_cntvalueout_14[3] = \<const0> ;
  assign rx_cntvalueout_14[2] = \<const0> ;
  assign rx_cntvalueout_14[1] = \<const0> ;
  assign rx_cntvalueout_14[0] = \<const0> ;
  assign rx_cntvalueout_15[8] = \<const0> ;
  assign rx_cntvalueout_15[7] = \<const0> ;
  assign rx_cntvalueout_15[6] = \<const0> ;
  assign rx_cntvalueout_15[5] = \<const0> ;
  assign rx_cntvalueout_15[4] = \<const0> ;
  assign rx_cntvalueout_15[3] = \<const0> ;
  assign rx_cntvalueout_15[2] = \<const0> ;
  assign rx_cntvalueout_15[1] = \<const0> ;
  assign rx_cntvalueout_15[0] = \<const0> ;
  assign rx_cntvalueout_16[8] = \<const0> ;
  assign rx_cntvalueout_16[7] = \<const0> ;
  assign rx_cntvalueout_16[6] = \<const0> ;
  assign rx_cntvalueout_16[5] = \<const0> ;
  assign rx_cntvalueout_16[4] = \<const0> ;
  assign rx_cntvalueout_16[3] = \<const0> ;
  assign rx_cntvalueout_16[2] = \<const0> ;
  assign rx_cntvalueout_16[1] = \<const0> ;
  assign rx_cntvalueout_16[0] = \<const0> ;
  assign rx_cntvalueout_17[8] = \<const0> ;
  assign rx_cntvalueout_17[7] = \<const0> ;
  assign rx_cntvalueout_17[6] = \<const0> ;
  assign rx_cntvalueout_17[5] = \<const0> ;
  assign rx_cntvalueout_17[4] = \<const0> ;
  assign rx_cntvalueout_17[3] = \<const0> ;
  assign rx_cntvalueout_17[2] = \<const0> ;
  assign rx_cntvalueout_17[1] = \<const0> ;
  assign rx_cntvalueout_17[0] = \<const0> ;
  assign rx_cntvalueout_18[8] = \<const0> ;
  assign rx_cntvalueout_18[7] = \<const0> ;
  assign rx_cntvalueout_18[6] = \<const0> ;
  assign rx_cntvalueout_18[5] = \<const0> ;
  assign rx_cntvalueout_18[4] = \<const0> ;
  assign rx_cntvalueout_18[3] = \<const0> ;
  assign rx_cntvalueout_18[2] = \<const0> ;
  assign rx_cntvalueout_18[1] = \<const0> ;
  assign rx_cntvalueout_18[0] = \<const0> ;
  assign rx_cntvalueout_19[8] = \<const0> ;
  assign rx_cntvalueout_19[7] = \<const0> ;
  assign rx_cntvalueout_19[6] = \<const0> ;
  assign rx_cntvalueout_19[5] = \<const0> ;
  assign rx_cntvalueout_19[4] = \<const0> ;
  assign rx_cntvalueout_19[3] = \<const0> ;
  assign rx_cntvalueout_19[2] = \<const0> ;
  assign rx_cntvalueout_19[1] = \<const0> ;
  assign rx_cntvalueout_19[0] = \<const0> ;
  assign rx_cntvalueout_2[8] = \<const0> ;
  assign rx_cntvalueout_2[7] = \<const0> ;
  assign rx_cntvalueout_2[6] = \<const0> ;
  assign rx_cntvalueout_2[5] = \<const0> ;
  assign rx_cntvalueout_2[4] = \<const0> ;
  assign rx_cntvalueout_2[3] = \<const0> ;
  assign rx_cntvalueout_2[2] = \<const0> ;
  assign rx_cntvalueout_2[1] = \<const0> ;
  assign rx_cntvalueout_2[0] = \<const0> ;
  assign rx_cntvalueout_20[8] = \<const0> ;
  assign rx_cntvalueout_20[7] = \<const0> ;
  assign rx_cntvalueout_20[6] = \<const0> ;
  assign rx_cntvalueout_20[5] = \<const0> ;
  assign rx_cntvalueout_20[4] = \<const0> ;
  assign rx_cntvalueout_20[3] = \<const0> ;
  assign rx_cntvalueout_20[2] = \<const0> ;
  assign rx_cntvalueout_20[1] = \<const0> ;
  assign rx_cntvalueout_20[0] = \<const0> ;
  assign rx_cntvalueout_21[8] = \<const0> ;
  assign rx_cntvalueout_21[7] = \<const0> ;
  assign rx_cntvalueout_21[6] = \<const0> ;
  assign rx_cntvalueout_21[5] = \<const0> ;
  assign rx_cntvalueout_21[4] = \<const0> ;
  assign rx_cntvalueout_21[3] = \<const0> ;
  assign rx_cntvalueout_21[2] = \<const0> ;
  assign rx_cntvalueout_21[1] = \<const0> ;
  assign rx_cntvalueout_21[0] = \<const0> ;
  assign rx_cntvalueout_22[8] = \<const0> ;
  assign rx_cntvalueout_22[7] = \<const0> ;
  assign rx_cntvalueout_22[6] = \<const0> ;
  assign rx_cntvalueout_22[5] = \<const0> ;
  assign rx_cntvalueout_22[4] = \<const0> ;
  assign rx_cntvalueout_22[3] = \<const0> ;
  assign rx_cntvalueout_22[2] = \<const0> ;
  assign rx_cntvalueout_22[1] = \<const0> ;
  assign rx_cntvalueout_22[0] = \<const0> ;
  assign rx_cntvalueout_23[8] = \<const0> ;
  assign rx_cntvalueout_23[7] = \<const0> ;
  assign rx_cntvalueout_23[6] = \<const0> ;
  assign rx_cntvalueout_23[5] = \<const0> ;
  assign rx_cntvalueout_23[4] = \<const0> ;
  assign rx_cntvalueout_23[3] = \<const0> ;
  assign rx_cntvalueout_23[2] = \<const0> ;
  assign rx_cntvalueout_23[1] = \<const0> ;
  assign rx_cntvalueout_23[0] = \<const0> ;
  assign rx_cntvalueout_24[8] = \<const0> ;
  assign rx_cntvalueout_24[7] = \<const0> ;
  assign rx_cntvalueout_24[6] = \<const0> ;
  assign rx_cntvalueout_24[5] = \<const0> ;
  assign rx_cntvalueout_24[4] = \<const0> ;
  assign rx_cntvalueout_24[3] = \<const0> ;
  assign rx_cntvalueout_24[2] = \<const0> ;
  assign rx_cntvalueout_24[1] = \<const0> ;
  assign rx_cntvalueout_24[0] = \<const0> ;
  assign rx_cntvalueout_25[8] = \<const0> ;
  assign rx_cntvalueout_25[7] = \<const0> ;
  assign rx_cntvalueout_25[6] = \<const0> ;
  assign rx_cntvalueout_25[5] = \<const0> ;
  assign rx_cntvalueout_25[4] = \<const0> ;
  assign rx_cntvalueout_25[3] = \<const0> ;
  assign rx_cntvalueout_25[2] = \<const0> ;
  assign rx_cntvalueout_25[1] = \<const0> ;
  assign rx_cntvalueout_25[0] = \<const0> ;
  assign rx_cntvalueout_26[8] = \<const0> ;
  assign rx_cntvalueout_26[7] = \<const0> ;
  assign rx_cntvalueout_26[6] = \<const0> ;
  assign rx_cntvalueout_26[5] = \<const0> ;
  assign rx_cntvalueout_26[4] = \<const0> ;
  assign rx_cntvalueout_26[3] = \<const0> ;
  assign rx_cntvalueout_26[2] = \<const0> ;
  assign rx_cntvalueout_26[1] = \<const0> ;
  assign rx_cntvalueout_26[0] = \<const0> ;
  assign rx_cntvalueout_27[8] = \<const0> ;
  assign rx_cntvalueout_27[7] = \<const0> ;
  assign rx_cntvalueout_27[6] = \<const0> ;
  assign rx_cntvalueout_27[5] = \<const0> ;
  assign rx_cntvalueout_27[4] = \<const0> ;
  assign rx_cntvalueout_27[3] = \<const0> ;
  assign rx_cntvalueout_27[2] = \<const0> ;
  assign rx_cntvalueout_27[1] = \<const0> ;
  assign rx_cntvalueout_27[0] = \<const0> ;
  assign rx_cntvalueout_28[8] = \<const0> ;
  assign rx_cntvalueout_28[7] = \<const0> ;
  assign rx_cntvalueout_28[6] = \<const0> ;
  assign rx_cntvalueout_28[5] = \<const0> ;
  assign rx_cntvalueout_28[4] = \<const0> ;
  assign rx_cntvalueout_28[3] = \<const0> ;
  assign rx_cntvalueout_28[2] = \<const0> ;
  assign rx_cntvalueout_28[1] = \<const0> ;
  assign rx_cntvalueout_28[0] = \<const0> ;
  assign rx_cntvalueout_29[8] = \<const0> ;
  assign rx_cntvalueout_29[7] = \<const0> ;
  assign rx_cntvalueout_29[6] = \<const0> ;
  assign rx_cntvalueout_29[5] = \<const0> ;
  assign rx_cntvalueout_29[4] = \<const0> ;
  assign rx_cntvalueout_29[3] = \<const0> ;
  assign rx_cntvalueout_29[2] = \<const0> ;
  assign rx_cntvalueout_29[1] = \<const0> ;
  assign rx_cntvalueout_29[0] = \<const0> ;
  assign rx_cntvalueout_3[8] = \<const0> ;
  assign rx_cntvalueout_3[7] = \<const0> ;
  assign rx_cntvalueout_3[6] = \<const0> ;
  assign rx_cntvalueout_3[5] = \<const0> ;
  assign rx_cntvalueout_3[4] = \<const0> ;
  assign rx_cntvalueout_3[3] = \<const0> ;
  assign rx_cntvalueout_3[2] = \<const0> ;
  assign rx_cntvalueout_3[1] = \<const0> ;
  assign rx_cntvalueout_3[0] = \<const0> ;
  assign rx_cntvalueout_30[8] = \<const0> ;
  assign rx_cntvalueout_30[7] = \<const0> ;
  assign rx_cntvalueout_30[6] = \<const0> ;
  assign rx_cntvalueout_30[5] = \<const0> ;
  assign rx_cntvalueout_30[4] = \<const0> ;
  assign rx_cntvalueout_30[3] = \<const0> ;
  assign rx_cntvalueout_30[2] = \<const0> ;
  assign rx_cntvalueout_30[1] = \<const0> ;
  assign rx_cntvalueout_30[0] = \<const0> ;
  assign rx_cntvalueout_31[8] = \<const0> ;
  assign rx_cntvalueout_31[7] = \<const0> ;
  assign rx_cntvalueout_31[6] = \<const0> ;
  assign rx_cntvalueout_31[5] = \<const0> ;
  assign rx_cntvalueout_31[4] = \<const0> ;
  assign rx_cntvalueout_31[3] = \<const0> ;
  assign rx_cntvalueout_31[2] = \<const0> ;
  assign rx_cntvalueout_31[1] = \<const0> ;
  assign rx_cntvalueout_31[0] = \<const0> ;
  assign rx_cntvalueout_32[8] = \<const0> ;
  assign rx_cntvalueout_32[7] = \<const0> ;
  assign rx_cntvalueout_32[6] = \<const0> ;
  assign rx_cntvalueout_32[5] = \<const0> ;
  assign rx_cntvalueout_32[4] = \<const0> ;
  assign rx_cntvalueout_32[3] = \<const0> ;
  assign rx_cntvalueout_32[2] = \<const0> ;
  assign rx_cntvalueout_32[1] = \<const0> ;
  assign rx_cntvalueout_32[0] = \<const0> ;
  assign rx_cntvalueout_33[8] = \<const0> ;
  assign rx_cntvalueout_33[7] = \<const0> ;
  assign rx_cntvalueout_33[6] = \<const0> ;
  assign rx_cntvalueout_33[5] = \<const0> ;
  assign rx_cntvalueout_33[4] = \<const0> ;
  assign rx_cntvalueout_33[3] = \<const0> ;
  assign rx_cntvalueout_33[2] = \<const0> ;
  assign rx_cntvalueout_33[1] = \<const0> ;
  assign rx_cntvalueout_33[0] = \<const0> ;
  assign rx_cntvalueout_34[8] = \<const0> ;
  assign rx_cntvalueout_34[7] = \<const0> ;
  assign rx_cntvalueout_34[6] = \<const0> ;
  assign rx_cntvalueout_34[5] = \<const0> ;
  assign rx_cntvalueout_34[4] = \<const0> ;
  assign rx_cntvalueout_34[3] = \<const0> ;
  assign rx_cntvalueout_34[2] = \<const0> ;
  assign rx_cntvalueout_34[1] = \<const0> ;
  assign rx_cntvalueout_34[0] = \<const0> ;
  assign rx_cntvalueout_35[8] = \<const0> ;
  assign rx_cntvalueout_35[7] = \<const0> ;
  assign rx_cntvalueout_35[6] = \<const0> ;
  assign rx_cntvalueout_35[5] = \<const0> ;
  assign rx_cntvalueout_35[4] = \<const0> ;
  assign rx_cntvalueout_35[3] = \<const0> ;
  assign rx_cntvalueout_35[2] = \<const0> ;
  assign rx_cntvalueout_35[1] = \<const0> ;
  assign rx_cntvalueout_35[0] = \<const0> ;
  assign rx_cntvalueout_36[8] = \<const0> ;
  assign rx_cntvalueout_36[7] = \<const0> ;
  assign rx_cntvalueout_36[6] = \<const0> ;
  assign rx_cntvalueout_36[5] = \<const0> ;
  assign rx_cntvalueout_36[4] = \<const0> ;
  assign rx_cntvalueout_36[3] = \<const0> ;
  assign rx_cntvalueout_36[2] = \<const0> ;
  assign rx_cntvalueout_36[1] = \<const0> ;
  assign rx_cntvalueout_36[0] = \<const0> ;
  assign rx_cntvalueout_37[8] = \<const0> ;
  assign rx_cntvalueout_37[7] = \<const0> ;
  assign rx_cntvalueout_37[6] = \<const0> ;
  assign rx_cntvalueout_37[5] = \<const0> ;
  assign rx_cntvalueout_37[4] = \<const0> ;
  assign rx_cntvalueout_37[3] = \<const0> ;
  assign rx_cntvalueout_37[2] = \<const0> ;
  assign rx_cntvalueout_37[1] = \<const0> ;
  assign rx_cntvalueout_37[0] = \<const0> ;
  assign rx_cntvalueout_38[8] = \<const0> ;
  assign rx_cntvalueout_38[7] = \<const0> ;
  assign rx_cntvalueout_38[6] = \<const0> ;
  assign rx_cntvalueout_38[5] = \<const0> ;
  assign rx_cntvalueout_38[4] = \<const0> ;
  assign rx_cntvalueout_38[3] = \<const0> ;
  assign rx_cntvalueout_38[2] = \<const0> ;
  assign rx_cntvalueout_38[1] = \<const0> ;
  assign rx_cntvalueout_38[0] = \<const0> ;
  assign rx_cntvalueout_39[8] = \<const0> ;
  assign rx_cntvalueout_39[7] = \<const0> ;
  assign rx_cntvalueout_39[6] = \<const0> ;
  assign rx_cntvalueout_39[5] = \<const0> ;
  assign rx_cntvalueout_39[4] = \<const0> ;
  assign rx_cntvalueout_39[3] = \<const0> ;
  assign rx_cntvalueout_39[2] = \<const0> ;
  assign rx_cntvalueout_39[1] = \<const0> ;
  assign rx_cntvalueout_39[0] = \<const0> ;
  assign rx_cntvalueout_4[8] = \<const0> ;
  assign rx_cntvalueout_4[7] = \<const0> ;
  assign rx_cntvalueout_4[6] = \<const0> ;
  assign rx_cntvalueout_4[5] = \<const0> ;
  assign rx_cntvalueout_4[4] = \<const0> ;
  assign rx_cntvalueout_4[3] = \<const0> ;
  assign rx_cntvalueout_4[2] = \<const0> ;
  assign rx_cntvalueout_4[1] = \<const0> ;
  assign rx_cntvalueout_4[0] = \<const0> ;
  assign rx_cntvalueout_40[8] = \<const0> ;
  assign rx_cntvalueout_40[7] = \<const0> ;
  assign rx_cntvalueout_40[6] = \<const0> ;
  assign rx_cntvalueout_40[5] = \<const0> ;
  assign rx_cntvalueout_40[4] = \<const0> ;
  assign rx_cntvalueout_40[3] = \<const0> ;
  assign rx_cntvalueout_40[2] = \<const0> ;
  assign rx_cntvalueout_40[1] = \<const0> ;
  assign rx_cntvalueout_40[0] = \<const0> ;
  assign rx_cntvalueout_41[8] = \<const0> ;
  assign rx_cntvalueout_41[7] = \<const0> ;
  assign rx_cntvalueout_41[6] = \<const0> ;
  assign rx_cntvalueout_41[5] = \<const0> ;
  assign rx_cntvalueout_41[4] = \<const0> ;
  assign rx_cntvalueout_41[3] = \<const0> ;
  assign rx_cntvalueout_41[2] = \<const0> ;
  assign rx_cntvalueout_41[1] = \<const0> ;
  assign rx_cntvalueout_41[0] = \<const0> ;
  assign rx_cntvalueout_42[8] = \<const0> ;
  assign rx_cntvalueout_42[7] = \<const0> ;
  assign rx_cntvalueout_42[6] = \<const0> ;
  assign rx_cntvalueout_42[5] = \<const0> ;
  assign rx_cntvalueout_42[4] = \<const0> ;
  assign rx_cntvalueout_42[3] = \<const0> ;
  assign rx_cntvalueout_42[2] = \<const0> ;
  assign rx_cntvalueout_42[1] = \<const0> ;
  assign rx_cntvalueout_42[0] = \<const0> ;
  assign rx_cntvalueout_43[8] = \<const0> ;
  assign rx_cntvalueout_43[7] = \<const0> ;
  assign rx_cntvalueout_43[6] = \<const0> ;
  assign rx_cntvalueout_43[5] = \<const0> ;
  assign rx_cntvalueout_43[4] = \<const0> ;
  assign rx_cntvalueout_43[3] = \<const0> ;
  assign rx_cntvalueout_43[2] = \<const0> ;
  assign rx_cntvalueout_43[1] = \<const0> ;
  assign rx_cntvalueout_43[0] = \<const0> ;
  assign rx_cntvalueout_44[8] = \<const0> ;
  assign rx_cntvalueout_44[7] = \<const0> ;
  assign rx_cntvalueout_44[6] = \<const0> ;
  assign rx_cntvalueout_44[5] = \<const0> ;
  assign rx_cntvalueout_44[4] = \<const0> ;
  assign rx_cntvalueout_44[3] = \<const0> ;
  assign rx_cntvalueout_44[2] = \<const0> ;
  assign rx_cntvalueout_44[1] = \<const0> ;
  assign rx_cntvalueout_44[0] = \<const0> ;
  assign rx_cntvalueout_45[8] = \<const0> ;
  assign rx_cntvalueout_45[7] = \<const0> ;
  assign rx_cntvalueout_45[6] = \<const0> ;
  assign rx_cntvalueout_45[5] = \<const0> ;
  assign rx_cntvalueout_45[4] = \<const0> ;
  assign rx_cntvalueout_45[3] = \<const0> ;
  assign rx_cntvalueout_45[2] = \<const0> ;
  assign rx_cntvalueout_45[1] = \<const0> ;
  assign rx_cntvalueout_45[0] = \<const0> ;
  assign rx_cntvalueout_46[8] = \<const0> ;
  assign rx_cntvalueout_46[7] = \<const0> ;
  assign rx_cntvalueout_46[6] = \<const0> ;
  assign rx_cntvalueout_46[5] = \<const0> ;
  assign rx_cntvalueout_46[4] = \<const0> ;
  assign rx_cntvalueout_46[3] = \<const0> ;
  assign rx_cntvalueout_46[2] = \<const0> ;
  assign rx_cntvalueout_46[1] = \<const0> ;
  assign rx_cntvalueout_46[0] = \<const0> ;
  assign rx_cntvalueout_47[8] = \<const0> ;
  assign rx_cntvalueout_47[7] = \<const0> ;
  assign rx_cntvalueout_47[6] = \<const0> ;
  assign rx_cntvalueout_47[5] = \<const0> ;
  assign rx_cntvalueout_47[4] = \<const0> ;
  assign rx_cntvalueout_47[3] = \<const0> ;
  assign rx_cntvalueout_47[2] = \<const0> ;
  assign rx_cntvalueout_47[1] = \<const0> ;
  assign rx_cntvalueout_47[0] = \<const0> ;
  assign rx_cntvalueout_48[8] = \<const0> ;
  assign rx_cntvalueout_48[7] = \<const0> ;
  assign rx_cntvalueout_48[6] = \<const0> ;
  assign rx_cntvalueout_48[5] = \<const0> ;
  assign rx_cntvalueout_48[4] = \<const0> ;
  assign rx_cntvalueout_48[3] = \<const0> ;
  assign rx_cntvalueout_48[2] = \<const0> ;
  assign rx_cntvalueout_48[1] = \<const0> ;
  assign rx_cntvalueout_48[0] = \<const0> ;
  assign rx_cntvalueout_49[8] = \<const0> ;
  assign rx_cntvalueout_49[7] = \<const0> ;
  assign rx_cntvalueout_49[6] = \<const0> ;
  assign rx_cntvalueout_49[5] = \<const0> ;
  assign rx_cntvalueout_49[4] = \<const0> ;
  assign rx_cntvalueout_49[3] = \<const0> ;
  assign rx_cntvalueout_49[2] = \<const0> ;
  assign rx_cntvalueout_49[1] = \<const0> ;
  assign rx_cntvalueout_49[0] = \<const0> ;
  assign rx_cntvalueout_5[8] = \<const0> ;
  assign rx_cntvalueout_5[7] = \<const0> ;
  assign rx_cntvalueout_5[6] = \<const0> ;
  assign rx_cntvalueout_5[5] = \<const0> ;
  assign rx_cntvalueout_5[4] = \<const0> ;
  assign rx_cntvalueout_5[3] = \<const0> ;
  assign rx_cntvalueout_5[2] = \<const0> ;
  assign rx_cntvalueout_5[1] = \<const0> ;
  assign rx_cntvalueout_5[0] = \<const0> ;
  assign rx_cntvalueout_50[8] = \<const0> ;
  assign rx_cntvalueout_50[7] = \<const0> ;
  assign rx_cntvalueout_50[6] = \<const0> ;
  assign rx_cntvalueout_50[5] = \<const0> ;
  assign rx_cntvalueout_50[4] = \<const0> ;
  assign rx_cntvalueout_50[3] = \<const0> ;
  assign rx_cntvalueout_50[2] = \<const0> ;
  assign rx_cntvalueout_50[1] = \<const0> ;
  assign rx_cntvalueout_50[0] = \<const0> ;
  assign rx_cntvalueout_51[8] = \<const0> ;
  assign rx_cntvalueout_51[7] = \<const0> ;
  assign rx_cntvalueout_51[6] = \<const0> ;
  assign rx_cntvalueout_51[5] = \<const0> ;
  assign rx_cntvalueout_51[4] = \<const0> ;
  assign rx_cntvalueout_51[3] = \<const0> ;
  assign rx_cntvalueout_51[2] = \<const0> ;
  assign rx_cntvalueout_51[1] = \<const0> ;
  assign rx_cntvalueout_51[0] = \<const0> ;
  assign rx_cntvalueout_6[8] = \<const0> ;
  assign rx_cntvalueout_6[7] = \<const0> ;
  assign rx_cntvalueout_6[6] = \<const0> ;
  assign rx_cntvalueout_6[5] = \<const0> ;
  assign rx_cntvalueout_6[4] = \<const0> ;
  assign rx_cntvalueout_6[3] = \<const0> ;
  assign rx_cntvalueout_6[2] = \<const0> ;
  assign rx_cntvalueout_6[1] = \<const0> ;
  assign rx_cntvalueout_6[0] = \<const0> ;
  assign rx_cntvalueout_7[8] = \<const0> ;
  assign rx_cntvalueout_7[7] = \<const0> ;
  assign rx_cntvalueout_7[6] = \<const0> ;
  assign rx_cntvalueout_7[5] = \<const0> ;
  assign rx_cntvalueout_7[4] = \<const0> ;
  assign rx_cntvalueout_7[3] = \<const0> ;
  assign rx_cntvalueout_7[2] = \<const0> ;
  assign rx_cntvalueout_7[1] = \<const0> ;
  assign rx_cntvalueout_7[0] = \<const0> ;
  assign rx_cntvalueout_8[8] = \<const0> ;
  assign rx_cntvalueout_8[7] = \<const0> ;
  assign rx_cntvalueout_8[6] = \<const0> ;
  assign rx_cntvalueout_8[5] = \<const0> ;
  assign rx_cntvalueout_8[4] = \<const0> ;
  assign rx_cntvalueout_8[3] = \<const0> ;
  assign rx_cntvalueout_8[2] = \<const0> ;
  assign rx_cntvalueout_8[1] = \<const0> ;
  assign rx_cntvalueout_8[0] = \<const0> ;
  assign rx_cntvalueout_9[8] = \<const0> ;
  assign rx_cntvalueout_9[7] = \<const0> ;
  assign rx_cntvalueout_9[6] = \<const0> ;
  assign rx_cntvalueout_9[5] = \<const0> ;
  assign rx_cntvalueout_9[4] = \<const0> ;
  assign rx_cntvalueout_9[3] = \<const0> ;
  assign rx_cntvalueout_9[2] = \<const0> ;
  assign rx_cntvalueout_9[1] = \<const0> ;
  assign rx_cntvalueout_9[0] = \<const0> ;
  assign rx_cntvalueout_ext_0[8] = \<const0> ;
  assign rx_cntvalueout_ext_0[7] = \<const0> ;
  assign rx_cntvalueout_ext_0[6] = \<const0> ;
  assign rx_cntvalueout_ext_0[5] = \<const0> ;
  assign rx_cntvalueout_ext_0[4] = \<const0> ;
  assign rx_cntvalueout_ext_0[3] = \<const0> ;
  assign rx_cntvalueout_ext_0[2] = \<const0> ;
  assign rx_cntvalueout_ext_0[1] = \<const0> ;
  assign rx_cntvalueout_ext_0[0] = \<const0> ;
  assign rx_cntvalueout_ext_1[8] = \<const0> ;
  assign rx_cntvalueout_ext_1[7] = \<const0> ;
  assign rx_cntvalueout_ext_1[6] = \<const0> ;
  assign rx_cntvalueout_ext_1[5] = \<const0> ;
  assign rx_cntvalueout_ext_1[4] = \<const0> ;
  assign rx_cntvalueout_ext_1[3] = \<const0> ;
  assign rx_cntvalueout_ext_1[2] = \<const0> ;
  assign rx_cntvalueout_ext_1[1] = \<const0> ;
  assign rx_cntvalueout_ext_1[0] = \<const0> ;
  assign rx_cntvalueout_ext_10[8] = \<const0> ;
  assign rx_cntvalueout_ext_10[7] = \<const0> ;
  assign rx_cntvalueout_ext_10[6] = \<const0> ;
  assign rx_cntvalueout_ext_10[5] = \<const0> ;
  assign rx_cntvalueout_ext_10[4] = \<const0> ;
  assign rx_cntvalueout_ext_10[3] = \<const0> ;
  assign rx_cntvalueout_ext_10[2] = \<const0> ;
  assign rx_cntvalueout_ext_10[1] = \<const0> ;
  assign rx_cntvalueout_ext_10[0] = \<const0> ;
  assign rx_cntvalueout_ext_11[8] = \<const0> ;
  assign rx_cntvalueout_ext_11[7] = \<const0> ;
  assign rx_cntvalueout_ext_11[6] = \<const0> ;
  assign rx_cntvalueout_ext_11[5] = \<const0> ;
  assign rx_cntvalueout_ext_11[4] = \<const0> ;
  assign rx_cntvalueout_ext_11[3] = \<const0> ;
  assign rx_cntvalueout_ext_11[2] = \<const0> ;
  assign rx_cntvalueout_ext_11[1] = \<const0> ;
  assign rx_cntvalueout_ext_11[0] = \<const0> ;
  assign rx_cntvalueout_ext_12[8] = \<const0> ;
  assign rx_cntvalueout_ext_12[7] = \<const0> ;
  assign rx_cntvalueout_ext_12[6] = \<const0> ;
  assign rx_cntvalueout_ext_12[5] = \<const0> ;
  assign rx_cntvalueout_ext_12[4] = \<const0> ;
  assign rx_cntvalueout_ext_12[3] = \<const0> ;
  assign rx_cntvalueout_ext_12[2] = \<const0> ;
  assign rx_cntvalueout_ext_12[1] = \<const0> ;
  assign rx_cntvalueout_ext_12[0] = \<const0> ;
  assign rx_cntvalueout_ext_13[8] = \<const0> ;
  assign rx_cntvalueout_ext_13[7] = \<const0> ;
  assign rx_cntvalueout_ext_13[6] = \<const0> ;
  assign rx_cntvalueout_ext_13[5] = \<const0> ;
  assign rx_cntvalueout_ext_13[4] = \<const0> ;
  assign rx_cntvalueout_ext_13[3] = \<const0> ;
  assign rx_cntvalueout_ext_13[2] = \<const0> ;
  assign rx_cntvalueout_ext_13[1] = \<const0> ;
  assign rx_cntvalueout_ext_13[0] = \<const0> ;
  assign rx_cntvalueout_ext_14[8] = \<const0> ;
  assign rx_cntvalueout_ext_14[7] = \<const0> ;
  assign rx_cntvalueout_ext_14[6] = \<const0> ;
  assign rx_cntvalueout_ext_14[5] = \<const0> ;
  assign rx_cntvalueout_ext_14[4] = \<const0> ;
  assign rx_cntvalueout_ext_14[3] = \<const0> ;
  assign rx_cntvalueout_ext_14[2] = \<const0> ;
  assign rx_cntvalueout_ext_14[1] = \<const0> ;
  assign rx_cntvalueout_ext_14[0] = \<const0> ;
  assign rx_cntvalueout_ext_15[8] = \<const0> ;
  assign rx_cntvalueout_ext_15[7] = \<const0> ;
  assign rx_cntvalueout_ext_15[6] = \<const0> ;
  assign rx_cntvalueout_ext_15[5] = \<const0> ;
  assign rx_cntvalueout_ext_15[4] = \<const0> ;
  assign rx_cntvalueout_ext_15[3] = \<const0> ;
  assign rx_cntvalueout_ext_15[2] = \<const0> ;
  assign rx_cntvalueout_ext_15[1] = \<const0> ;
  assign rx_cntvalueout_ext_15[0] = \<const0> ;
  assign rx_cntvalueout_ext_16[8] = \<const0> ;
  assign rx_cntvalueout_ext_16[7] = \<const0> ;
  assign rx_cntvalueout_ext_16[6] = \<const0> ;
  assign rx_cntvalueout_ext_16[5] = \<const0> ;
  assign rx_cntvalueout_ext_16[4] = \<const0> ;
  assign rx_cntvalueout_ext_16[3] = \<const0> ;
  assign rx_cntvalueout_ext_16[2] = \<const0> ;
  assign rx_cntvalueout_ext_16[1] = \<const0> ;
  assign rx_cntvalueout_ext_16[0] = \<const0> ;
  assign rx_cntvalueout_ext_17[8] = \<const0> ;
  assign rx_cntvalueout_ext_17[7] = \<const0> ;
  assign rx_cntvalueout_ext_17[6] = \<const0> ;
  assign rx_cntvalueout_ext_17[5] = \<const0> ;
  assign rx_cntvalueout_ext_17[4] = \<const0> ;
  assign rx_cntvalueout_ext_17[3] = \<const0> ;
  assign rx_cntvalueout_ext_17[2] = \<const0> ;
  assign rx_cntvalueout_ext_17[1] = \<const0> ;
  assign rx_cntvalueout_ext_17[0] = \<const0> ;
  assign rx_cntvalueout_ext_18[8] = \<const0> ;
  assign rx_cntvalueout_ext_18[7] = \<const0> ;
  assign rx_cntvalueout_ext_18[6] = \<const0> ;
  assign rx_cntvalueout_ext_18[5] = \<const0> ;
  assign rx_cntvalueout_ext_18[4] = \<const0> ;
  assign rx_cntvalueout_ext_18[3] = \<const0> ;
  assign rx_cntvalueout_ext_18[2] = \<const0> ;
  assign rx_cntvalueout_ext_18[1] = \<const0> ;
  assign rx_cntvalueout_ext_18[0] = \<const0> ;
  assign rx_cntvalueout_ext_19[8] = \<const0> ;
  assign rx_cntvalueout_ext_19[7] = \<const0> ;
  assign rx_cntvalueout_ext_19[6] = \<const0> ;
  assign rx_cntvalueout_ext_19[5] = \<const0> ;
  assign rx_cntvalueout_ext_19[4] = \<const0> ;
  assign rx_cntvalueout_ext_19[3] = \<const0> ;
  assign rx_cntvalueout_ext_19[2] = \<const0> ;
  assign rx_cntvalueout_ext_19[1] = \<const0> ;
  assign rx_cntvalueout_ext_19[0] = \<const0> ;
  assign rx_cntvalueout_ext_2[8] = \<const0> ;
  assign rx_cntvalueout_ext_2[7] = \<const0> ;
  assign rx_cntvalueout_ext_2[6] = \<const0> ;
  assign rx_cntvalueout_ext_2[5] = \<const0> ;
  assign rx_cntvalueout_ext_2[4] = \<const0> ;
  assign rx_cntvalueout_ext_2[3] = \<const0> ;
  assign rx_cntvalueout_ext_2[2] = \<const0> ;
  assign rx_cntvalueout_ext_2[1] = \<const0> ;
  assign rx_cntvalueout_ext_2[0] = \<const0> ;
  assign rx_cntvalueout_ext_20[8] = \<const0> ;
  assign rx_cntvalueout_ext_20[7] = \<const0> ;
  assign rx_cntvalueout_ext_20[6] = \<const0> ;
  assign rx_cntvalueout_ext_20[5] = \<const0> ;
  assign rx_cntvalueout_ext_20[4] = \<const0> ;
  assign rx_cntvalueout_ext_20[3] = \<const0> ;
  assign rx_cntvalueout_ext_20[2] = \<const0> ;
  assign rx_cntvalueout_ext_20[1] = \<const0> ;
  assign rx_cntvalueout_ext_20[0] = \<const0> ;
  assign rx_cntvalueout_ext_21[8] = \<const0> ;
  assign rx_cntvalueout_ext_21[7] = \<const0> ;
  assign rx_cntvalueout_ext_21[6] = \<const0> ;
  assign rx_cntvalueout_ext_21[5] = \<const0> ;
  assign rx_cntvalueout_ext_21[4] = \<const0> ;
  assign rx_cntvalueout_ext_21[3] = \<const0> ;
  assign rx_cntvalueout_ext_21[2] = \<const0> ;
  assign rx_cntvalueout_ext_21[1] = \<const0> ;
  assign rx_cntvalueout_ext_21[0] = \<const0> ;
  assign rx_cntvalueout_ext_22[8] = \<const0> ;
  assign rx_cntvalueout_ext_22[7] = \<const0> ;
  assign rx_cntvalueout_ext_22[6] = \<const0> ;
  assign rx_cntvalueout_ext_22[5] = \<const0> ;
  assign rx_cntvalueout_ext_22[4] = \<const0> ;
  assign rx_cntvalueout_ext_22[3] = \<const0> ;
  assign rx_cntvalueout_ext_22[2] = \<const0> ;
  assign rx_cntvalueout_ext_22[1] = \<const0> ;
  assign rx_cntvalueout_ext_22[0] = \<const0> ;
  assign rx_cntvalueout_ext_23[8] = \<const0> ;
  assign rx_cntvalueout_ext_23[7] = \<const0> ;
  assign rx_cntvalueout_ext_23[6] = \<const0> ;
  assign rx_cntvalueout_ext_23[5] = \<const0> ;
  assign rx_cntvalueout_ext_23[4] = \<const0> ;
  assign rx_cntvalueout_ext_23[3] = \<const0> ;
  assign rx_cntvalueout_ext_23[2] = \<const0> ;
  assign rx_cntvalueout_ext_23[1] = \<const0> ;
  assign rx_cntvalueout_ext_23[0] = \<const0> ;
  assign rx_cntvalueout_ext_24[8] = \<const0> ;
  assign rx_cntvalueout_ext_24[7] = \<const0> ;
  assign rx_cntvalueout_ext_24[6] = \<const0> ;
  assign rx_cntvalueout_ext_24[5] = \<const0> ;
  assign rx_cntvalueout_ext_24[4] = \<const0> ;
  assign rx_cntvalueout_ext_24[3] = \<const0> ;
  assign rx_cntvalueout_ext_24[2] = \<const0> ;
  assign rx_cntvalueout_ext_24[1] = \<const0> ;
  assign rx_cntvalueout_ext_24[0] = \<const0> ;
  assign rx_cntvalueout_ext_25[8] = \<const0> ;
  assign rx_cntvalueout_ext_25[7] = \<const0> ;
  assign rx_cntvalueout_ext_25[6] = \<const0> ;
  assign rx_cntvalueout_ext_25[5] = \<const0> ;
  assign rx_cntvalueout_ext_25[4] = \<const0> ;
  assign rx_cntvalueout_ext_25[3] = \<const0> ;
  assign rx_cntvalueout_ext_25[2] = \<const0> ;
  assign rx_cntvalueout_ext_25[1] = \<const0> ;
  assign rx_cntvalueout_ext_25[0] = \<const0> ;
  assign rx_cntvalueout_ext_26[8] = \<const0> ;
  assign rx_cntvalueout_ext_26[7] = \<const0> ;
  assign rx_cntvalueout_ext_26[6] = \<const0> ;
  assign rx_cntvalueout_ext_26[5] = \<const0> ;
  assign rx_cntvalueout_ext_26[4] = \<const0> ;
  assign rx_cntvalueout_ext_26[3] = \<const0> ;
  assign rx_cntvalueout_ext_26[2] = \<const0> ;
  assign rx_cntvalueout_ext_26[1] = \<const0> ;
  assign rx_cntvalueout_ext_26[0] = \<const0> ;
  assign rx_cntvalueout_ext_27[8] = \<const0> ;
  assign rx_cntvalueout_ext_27[7] = \<const0> ;
  assign rx_cntvalueout_ext_27[6] = \<const0> ;
  assign rx_cntvalueout_ext_27[5] = \<const0> ;
  assign rx_cntvalueout_ext_27[4] = \<const0> ;
  assign rx_cntvalueout_ext_27[3] = \<const0> ;
  assign rx_cntvalueout_ext_27[2] = \<const0> ;
  assign rx_cntvalueout_ext_27[1] = \<const0> ;
  assign rx_cntvalueout_ext_27[0] = \<const0> ;
  assign rx_cntvalueout_ext_28[8] = \<const0> ;
  assign rx_cntvalueout_ext_28[7] = \<const0> ;
  assign rx_cntvalueout_ext_28[6] = \<const0> ;
  assign rx_cntvalueout_ext_28[5] = \<const0> ;
  assign rx_cntvalueout_ext_28[4] = \<const0> ;
  assign rx_cntvalueout_ext_28[3] = \<const0> ;
  assign rx_cntvalueout_ext_28[2] = \<const0> ;
  assign rx_cntvalueout_ext_28[1] = \<const0> ;
  assign rx_cntvalueout_ext_28[0] = \<const0> ;
  assign rx_cntvalueout_ext_29[8] = \<const0> ;
  assign rx_cntvalueout_ext_29[7] = \<const0> ;
  assign rx_cntvalueout_ext_29[6] = \<const0> ;
  assign rx_cntvalueout_ext_29[5] = \<const0> ;
  assign rx_cntvalueout_ext_29[4] = \<const0> ;
  assign rx_cntvalueout_ext_29[3] = \<const0> ;
  assign rx_cntvalueout_ext_29[2] = \<const0> ;
  assign rx_cntvalueout_ext_29[1] = \<const0> ;
  assign rx_cntvalueout_ext_29[0] = \<const0> ;
  assign rx_cntvalueout_ext_3[8] = \<const0> ;
  assign rx_cntvalueout_ext_3[7] = \<const0> ;
  assign rx_cntvalueout_ext_3[6] = \<const0> ;
  assign rx_cntvalueout_ext_3[5] = \<const0> ;
  assign rx_cntvalueout_ext_3[4] = \<const0> ;
  assign rx_cntvalueout_ext_3[3] = \<const0> ;
  assign rx_cntvalueout_ext_3[2] = \<const0> ;
  assign rx_cntvalueout_ext_3[1] = \<const0> ;
  assign rx_cntvalueout_ext_3[0] = \<const0> ;
  assign rx_cntvalueout_ext_30[8] = \<const0> ;
  assign rx_cntvalueout_ext_30[7] = \<const0> ;
  assign rx_cntvalueout_ext_30[6] = \<const0> ;
  assign rx_cntvalueout_ext_30[5] = \<const0> ;
  assign rx_cntvalueout_ext_30[4] = \<const0> ;
  assign rx_cntvalueout_ext_30[3] = \<const0> ;
  assign rx_cntvalueout_ext_30[2] = \<const0> ;
  assign rx_cntvalueout_ext_30[1] = \<const0> ;
  assign rx_cntvalueout_ext_30[0] = \<const0> ;
  assign rx_cntvalueout_ext_31[8] = \<const0> ;
  assign rx_cntvalueout_ext_31[7] = \<const0> ;
  assign rx_cntvalueout_ext_31[6] = \<const0> ;
  assign rx_cntvalueout_ext_31[5] = \<const0> ;
  assign rx_cntvalueout_ext_31[4] = \<const0> ;
  assign rx_cntvalueout_ext_31[3] = \<const0> ;
  assign rx_cntvalueout_ext_31[2] = \<const0> ;
  assign rx_cntvalueout_ext_31[1] = \<const0> ;
  assign rx_cntvalueout_ext_31[0] = \<const0> ;
  assign rx_cntvalueout_ext_32[8] = \<const0> ;
  assign rx_cntvalueout_ext_32[7] = \<const0> ;
  assign rx_cntvalueout_ext_32[6] = \<const0> ;
  assign rx_cntvalueout_ext_32[5] = \<const0> ;
  assign rx_cntvalueout_ext_32[4] = \<const0> ;
  assign rx_cntvalueout_ext_32[3] = \<const0> ;
  assign rx_cntvalueout_ext_32[2] = \<const0> ;
  assign rx_cntvalueout_ext_32[1] = \<const0> ;
  assign rx_cntvalueout_ext_32[0] = \<const0> ;
  assign rx_cntvalueout_ext_33[8] = \<const0> ;
  assign rx_cntvalueout_ext_33[7] = \<const0> ;
  assign rx_cntvalueout_ext_33[6] = \<const0> ;
  assign rx_cntvalueout_ext_33[5] = \<const0> ;
  assign rx_cntvalueout_ext_33[4] = \<const0> ;
  assign rx_cntvalueout_ext_33[3] = \<const0> ;
  assign rx_cntvalueout_ext_33[2] = \<const0> ;
  assign rx_cntvalueout_ext_33[1] = \<const0> ;
  assign rx_cntvalueout_ext_33[0] = \<const0> ;
  assign rx_cntvalueout_ext_34[8] = \<const0> ;
  assign rx_cntvalueout_ext_34[7] = \<const0> ;
  assign rx_cntvalueout_ext_34[6] = \<const0> ;
  assign rx_cntvalueout_ext_34[5] = \<const0> ;
  assign rx_cntvalueout_ext_34[4] = \<const0> ;
  assign rx_cntvalueout_ext_34[3] = \<const0> ;
  assign rx_cntvalueout_ext_34[2] = \<const0> ;
  assign rx_cntvalueout_ext_34[1] = \<const0> ;
  assign rx_cntvalueout_ext_34[0] = \<const0> ;
  assign rx_cntvalueout_ext_35[8] = \<const0> ;
  assign rx_cntvalueout_ext_35[7] = \<const0> ;
  assign rx_cntvalueout_ext_35[6] = \<const0> ;
  assign rx_cntvalueout_ext_35[5] = \<const0> ;
  assign rx_cntvalueout_ext_35[4] = \<const0> ;
  assign rx_cntvalueout_ext_35[3] = \<const0> ;
  assign rx_cntvalueout_ext_35[2] = \<const0> ;
  assign rx_cntvalueout_ext_35[1] = \<const0> ;
  assign rx_cntvalueout_ext_35[0] = \<const0> ;
  assign rx_cntvalueout_ext_36[8] = \<const0> ;
  assign rx_cntvalueout_ext_36[7] = \<const0> ;
  assign rx_cntvalueout_ext_36[6] = \<const0> ;
  assign rx_cntvalueout_ext_36[5] = \<const0> ;
  assign rx_cntvalueout_ext_36[4] = \<const0> ;
  assign rx_cntvalueout_ext_36[3] = \<const0> ;
  assign rx_cntvalueout_ext_36[2] = \<const0> ;
  assign rx_cntvalueout_ext_36[1] = \<const0> ;
  assign rx_cntvalueout_ext_36[0] = \<const0> ;
  assign rx_cntvalueout_ext_37[8] = \<const0> ;
  assign rx_cntvalueout_ext_37[7] = \<const0> ;
  assign rx_cntvalueout_ext_37[6] = \<const0> ;
  assign rx_cntvalueout_ext_37[5] = \<const0> ;
  assign rx_cntvalueout_ext_37[4] = \<const0> ;
  assign rx_cntvalueout_ext_37[3] = \<const0> ;
  assign rx_cntvalueout_ext_37[2] = \<const0> ;
  assign rx_cntvalueout_ext_37[1] = \<const0> ;
  assign rx_cntvalueout_ext_37[0] = \<const0> ;
  assign rx_cntvalueout_ext_38[8] = \<const0> ;
  assign rx_cntvalueout_ext_38[7] = \<const0> ;
  assign rx_cntvalueout_ext_38[6] = \<const0> ;
  assign rx_cntvalueout_ext_38[5] = \<const0> ;
  assign rx_cntvalueout_ext_38[4] = \<const0> ;
  assign rx_cntvalueout_ext_38[3] = \<const0> ;
  assign rx_cntvalueout_ext_38[2] = \<const0> ;
  assign rx_cntvalueout_ext_38[1] = \<const0> ;
  assign rx_cntvalueout_ext_38[0] = \<const0> ;
  assign rx_cntvalueout_ext_39[8] = \<const0> ;
  assign rx_cntvalueout_ext_39[7] = \<const0> ;
  assign rx_cntvalueout_ext_39[6] = \<const0> ;
  assign rx_cntvalueout_ext_39[5] = \<const0> ;
  assign rx_cntvalueout_ext_39[4] = \<const0> ;
  assign rx_cntvalueout_ext_39[3] = \<const0> ;
  assign rx_cntvalueout_ext_39[2] = \<const0> ;
  assign rx_cntvalueout_ext_39[1] = \<const0> ;
  assign rx_cntvalueout_ext_39[0] = \<const0> ;
  assign rx_cntvalueout_ext_4[8] = \<const0> ;
  assign rx_cntvalueout_ext_4[7] = \<const0> ;
  assign rx_cntvalueout_ext_4[6] = \<const0> ;
  assign rx_cntvalueout_ext_4[5] = \<const0> ;
  assign rx_cntvalueout_ext_4[4] = \<const0> ;
  assign rx_cntvalueout_ext_4[3] = \<const0> ;
  assign rx_cntvalueout_ext_4[2] = \<const0> ;
  assign rx_cntvalueout_ext_4[1] = \<const0> ;
  assign rx_cntvalueout_ext_4[0] = \<const0> ;
  assign rx_cntvalueout_ext_40[8] = \<const0> ;
  assign rx_cntvalueout_ext_40[7] = \<const0> ;
  assign rx_cntvalueout_ext_40[6] = \<const0> ;
  assign rx_cntvalueout_ext_40[5] = \<const0> ;
  assign rx_cntvalueout_ext_40[4] = \<const0> ;
  assign rx_cntvalueout_ext_40[3] = \<const0> ;
  assign rx_cntvalueout_ext_40[2] = \<const0> ;
  assign rx_cntvalueout_ext_40[1] = \<const0> ;
  assign rx_cntvalueout_ext_40[0] = \<const0> ;
  assign rx_cntvalueout_ext_41[8] = \<const0> ;
  assign rx_cntvalueout_ext_41[7] = \<const0> ;
  assign rx_cntvalueout_ext_41[6] = \<const0> ;
  assign rx_cntvalueout_ext_41[5] = \<const0> ;
  assign rx_cntvalueout_ext_41[4] = \<const0> ;
  assign rx_cntvalueout_ext_41[3] = \<const0> ;
  assign rx_cntvalueout_ext_41[2] = \<const0> ;
  assign rx_cntvalueout_ext_41[1] = \<const0> ;
  assign rx_cntvalueout_ext_41[0] = \<const0> ;
  assign rx_cntvalueout_ext_42[8] = \<const0> ;
  assign rx_cntvalueout_ext_42[7] = \<const0> ;
  assign rx_cntvalueout_ext_42[6] = \<const0> ;
  assign rx_cntvalueout_ext_42[5] = \<const0> ;
  assign rx_cntvalueout_ext_42[4] = \<const0> ;
  assign rx_cntvalueout_ext_42[3] = \<const0> ;
  assign rx_cntvalueout_ext_42[2] = \<const0> ;
  assign rx_cntvalueout_ext_42[1] = \<const0> ;
  assign rx_cntvalueout_ext_42[0] = \<const0> ;
  assign rx_cntvalueout_ext_43[8] = \<const0> ;
  assign rx_cntvalueout_ext_43[7] = \<const0> ;
  assign rx_cntvalueout_ext_43[6] = \<const0> ;
  assign rx_cntvalueout_ext_43[5] = \<const0> ;
  assign rx_cntvalueout_ext_43[4] = \<const0> ;
  assign rx_cntvalueout_ext_43[3] = \<const0> ;
  assign rx_cntvalueout_ext_43[2] = \<const0> ;
  assign rx_cntvalueout_ext_43[1] = \<const0> ;
  assign rx_cntvalueout_ext_43[0] = \<const0> ;
  assign rx_cntvalueout_ext_44[8] = \<const0> ;
  assign rx_cntvalueout_ext_44[7] = \<const0> ;
  assign rx_cntvalueout_ext_44[6] = \<const0> ;
  assign rx_cntvalueout_ext_44[5] = \<const0> ;
  assign rx_cntvalueout_ext_44[4] = \<const0> ;
  assign rx_cntvalueout_ext_44[3] = \<const0> ;
  assign rx_cntvalueout_ext_44[2] = \<const0> ;
  assign rx_cntvalueout_ext_44[1] = \<const0> ;
  assign rx_cntvalueout_ext_44[0] = \<const0> ;
  assign rx_cntvalueout_ext_45[8] = \<const0> ;
  assign rx_cntvalueout_ext_45[7] = \<const0> ;
  assign rx_cntvalueout_ext_45[6] = \<const0> ;
  assign rx_cntvalueout_ext_45[5] = \<const0> ;
  assign rx_cntvalueout_ext_45[4] = \<const0> ;
  assign rx_cntvalueout_ext_45[3] = \<const0> ;
  assign rx_cntvalueout_ext_45[2] = \<const0> ;
  assign rx_cntvalueout_ext_45[1] = \<const0> ;
  assign rx_cntvalueout_ext_45[0] = \<const0> ;
  assign rx_cntvalueout_ext_46[8] = \<const0> ;
  assign rx_cntvalueout_ext_46[7] = \<const0> ;
  assign rx_cntvalueout_ext_46[6] = \<const0> ;
  assign rx_cntvalueout_ext_46[5] = \<const0> ;
  assign rx_cntvalueout_ext_46[4] = \<const0> ;
  assign rx_cntvalueout_ext_46[3] = \<const0> ;
  assign rx_cntvalueout_ext_46[2] = \<const0> ;
  assign rx_cntvalueout_ext_46[1] = \<const0> ;
  assign rx_cntvalueout_ext_46[0] = \<const0> ;
  assign rx_cntvalueout_ext_47[8] = \<const0> ;
  assign rx_cntvalueout_ext_47[7] = \<const0> ;
  assign rx_cntvalueout_ext_47[6] = \<const0> ;
  assign rx_cntvalueout_ext_47[5] = \<const0> ;
  assign rx_cntvalueout_ext_47[4] = \<const0> ;
  assign rx_cntvalueout_ext_47[3] = \<const0> ;
  assign rx_cntvalueout_ext_47[2] = \<const0> ;
  assign rx_cntvalueout_ext_47[1] = \<const0> ;
  assign rx_cntvalueout_ext_47[0] = \<const0> ;
  assign rx_cntvalueout_ext_48[8] = \<const0> ;
  assign rx_cntvalueout_ext_48[7] = \<const0> ;
  assign rx_cntvalueout_ext_48[6] = \<const0> ;
  assign rx_cntvalueout_ext_48[5] = \<const0> ;
  assign rx_cntvalueout_ext_48[4] = \<const0> ;
  assign rx_cntvalueout_ext_48[3] = \<const0> ;
  assign rx_cntvalueout_ext_48[2] = \<const0> ;
  assign rx_cntvalueout_ext_48[1] = \<const0> ;
  assign rx_cntvalueout_ext_48[0] = \<const0> ;
  assign rx_cntvalueout_ext_49[8] = \<const0> ;
  assign rx_cntvalueout_ext_49[7] = \<const0> ;
  assign rx_cntvalueout_ext_49[6] = \<const0> ;
  assign rx_cntvalueout_ext_49[5] = \<const0> ;
  assign rx_cntvalueout_ext_49[4] = \<const0> ;
  assign rx_cntvalueout_ext_49[3] = \<const0> ;
  assign rx_cntvalueout_ext_49[2] = \<const0> ;
  assign rx_cntvalueout_ext_49[1] = \<const0> ;
  assign rx_cntvalueout_ext_49[0] = \<const0> ;
  assign rx_cntvalueout_ext_5[8] = \<const0> ;
  assign rx_cntvalueout_ext_5[7] = \<const0> ;
  assign rx_cntvalueout_ext_5[6] = \<const0> ;
  assign rx_cntvalueout_ext_5[5] = \<const0> ;
  assign rx_cntvalueout_ext_5[4] = \<const0> ;
  assign rx_cntvalueout_ext_5[3] = \<const0> ;
  assign rx_cntvalueout_ext_5[2] = \<const0> ;
  assign rx_cntvalueout_ext_5[1] = \<const0> ;
  assign rx_cntvalueout_ext_5[0] = \<const0> ;
  assign rx_cntvalueout_ext_50[8] = \<const0> ;
  assign rx_cntvalueout_ext_50[7] = \<const0> ;
  assign rx_cntvalueout_ext_50[6] = \<const0> ;
  assign rx_cntvalueout_ext_50[5] = \<const0> ;
  assign rx_cntvalueout_ext_50[4] = \<const0> ;
  assign rx_cntvalueout_ext_50[3] = \<const0> ;
  assign rx_cntvalueout_ext_50[2] = \<const0> ;
  assign rx_cntvalueout_ext_50[1] = \<const0> ;
  assign rx_cntvalueout_ext_50[0] = \<const0> ;
  assign rx_cntvalueout_ext_51[8] = \<const0> ;
  assign rx_cntvalueout_ext_51[7] = \<const0> ;
  assign rx_cntvalueout_ext_51[6] = \<const0> ;
  assign rx_cntvalueout_ext_51[5] = \<const0> ;
  assign rx_cntvalueout_ext_51[4] = \<const0> ;
  assign rx_cntvalueout_ext_51[3] = \<const0> ;
  assign rx_cntvalueout_ext_51[2] = \<const0> ;
  assign rx_cntvalueout_ext_51[1] = \<const0> ;
  assign rx_cntvalueout_ext_51[0] = \<const0> ;
  assign rx_cntvalueout_ext_6[8] = \<const0> ;
  assign rx_cntvalueout_ext_6[7] = \<const0> ;
  assign rx_cntvalueout_ext_6[6] = \<const0> ;
  assign rx_cntvalueout_ext_6[5] = \<const0> ;
  assign rx_cntvalueout_ext_6[4] = \<const0> ;
  assign rx_cntvalueout_ext_6[3] = \<const0> ;
  assign rx_cntvalueout_ext_6[2] = \<const0> ;
  assign rx_cntvalueout_ext_6[1] = \<const0> ;
  assign rx_cntvalueout_ext_6[0] = \<const0> ;
  assign rx_cntvalueout_ext_7[8] = \<const0> ;
  assign rx_cntvalueout_ext_7[7] = \<const0> ;
  assign rx_cntvalueout_ext_7[6] = \<const0> ;
  assign rx_cntvalueout_ext_7[5] = \<const0> ;
  assign rx_cntvalueout_ext_7[4] = \<const0> ;
  assign rx_cntvalueout_ext_7[3] = \<const0> ;
  assign rx_cntvalueout_ext_7[2] = \<const0> ;
  assign rx_cntvalueout_ext_7[1] = \<const0> ;
  assign rx_cntvalueout_ext_7[0] = \<const0> ;
  assign rx_cntvalueout_ext_8[8] = \<const0> ;
  assign rx_cntvalueout_ext_8[7] = \<const0> ;
  assign rx_cntvalueout_ext_8[6] = \<const0> ;
  assign rx_cntvalueout_ext_8[5] = \<const0> ;
  assign rx_cntvalueout_ext_8[4] = \<const0> ;
  assign rx_cntvalueout_ext_8[3] = \<const0> ;
  assign rx_cntvalueout_ext_8[2] = \<const0> ;
  assign rx_cntvalueout_ext_8[1] = \<const0> ;
  assign rx_cntvalueout_ext_8[0] = \<const0> ;
  assign rx_cntvalueout_ext_9[8] = \<const0> ;
  assign rx_cntvalueout_ext_9[7] = \<const0> ;
  assign rx_cntvalueout_ext_9[6] = \<const0> ;
  assign rx_cntvalueout_ext_9[5] = \<const0> ;
  assign rx_cntvalueout_ext_9[4] = \<const0> ;
  assign rx_cntvalueout_ext_9[3] = \<const0> ;
  assign rx_cntvalueout_ext_9[2] = \<const0> ;
  assign rx_cntvalueout_ext_9[1] = \<const0> ;
  assign rx_cntvalueout_ext_9[0] = \<const0> ;
  assign rxtx_bitslip_sync_done = \<const1> ;
  assign shared_pll1_clkoutphy_out = \<const0> ;
  assign tx_cntvalueout_0[8] = \<const0> ;
  assign tx_cntvalueout_0[7] = \<const0> ;
  assign tx_cntvalueout_0[6] = \<const0> ;
  assign tx_cntvalueout_0[5] = \<const0> ;
  assign tx_cntvalueout_0[4] = \<const0> ;
  assign tx_cntvalueout_0[3] = \<const0> ;
  assign tx_cntvalueout_0[2] = \<const0> ;
  assign tx_cntvalueout_0[1] = \<const0> ;
  assign tx_cntvalueout_0[0] = \<const0> ;
  assign tx_cntvalueout_1[8] = \<const0> ;
  assign tx_cntvalueout_1[7] = \<const0> ;
  assign tx_cntvalueout_1[6] = \<const0> ;
  assign tx_cntvalueout_1[5] = \<const0> ;
  assign tx_cntvalueout_1[4] = \<const0> ;
  assign tx_cntvalueout_1[3] = \<const0> ;
  assign tx_cntvalueout_1[2] = \<const0> ;
  assign tx_cntvalueout_1[1] = \<const0> ;
  assign tx_cntvalueout_1[0] = \<const0> ;
  assign tx_cntvalueout_10[8] = \<const0> ;
  assign tx_cntvalueout_10[7] = \<const0> ;
  assign tx_cntvalueout_10[6] = \<const0> ;
  assign tx_cntvalueout_10[5] = \<const0> ;
  assign tx_cntvalueout_10[4] = \<const0> ;
  assign tx_cntvalueout_10[3] = \<const0> ;
  assign tx_cntvalueout_10[2] = \<const0> ;
  assign tx_cntvalueout_10[1] = \<const0> ;
  assign tx_cntvalueout_10[0] = \<const0> ;
  assign tx_cntvalueout_11[8] = \<const0> ;
  assign tx_cntvalueout_11[7] = \<const0> ;
  assign tx_cntvalueout_11[6] = \<const0> ;
  assign tx_cntvalueout_11[5] = \<const0> ;
  assign tx_cntvalueout_11[4] = \<const0> ;
  assign tx_cntvalueout_11[3] = \<const0> ;
  assign tx_cntvalueout_11[2] = \<const0> ;
  assign tx_cntvalueout_11[1] = \<const0> ;
  assign tx_cntvalueout_11[0] = \<const0> ;
  assign tx_cntvalueout_12[8] = \<const0> ;
  assign tx_cntvalueout_12[7] = \<const0> ;
  assign tx_cntvalueout_12[6] = \<const0> ;
  assign tx_cntvalueout_12[5] = \<const0> ;
  assign tx_cntvalueout_12[4] = \<const0> ;
  assign tx_cntvalueout_12[3] = \<const0> ;
  assign tx_cntvalueout_12[2] = \<const0> ;
  assign tx_cntvalueout_12[1] = \<const0> ;
  assign tx_cntvalueout_12[0] = \<const0> ;
  assign tx_cntvalueout_13[8] = \<const0> ;
  assign tx_cntvalueout_13[7] = \<const0> ;
  assign tx_cntvalueout_13[6] = \<const0> ;
  assign tx_cntvalueout_13[5] = \<const0> ;
  assign tx_cntvalueout_13[4] = \<const0> ;
  assign tx_cntvalueout_13[3] = \<const0> ;
  assign tx_cntvalueout_13[2] = \<const0> ;
  assign tx_cntvalueout_13[1] = \<const0> ;
  assign tx_cntvalueout_13[0] = \<const0> ;
  assign tx_cntvalueout_14[8] = \<const0> ;
  assign tx_cntvalueout_14[7] = \<const0> ;
  assign tx_cntvalueout_14[6] = \<const0> ;
  assign tx_cntvalueout_14[5] = \<const0> ;
  assign tx_cntvalueout_14[4] = \<const0> ;
  assign tx_cntvalueout_14[3] = \<const0> ;
  assign tx_cntvalueout_14[2] = \<const0> ;
  assign tx_cntvalueout_14[1] = \<const0> ;
  assign tx_cntvalueout_14[0] = \<const0> ;
  assign tx_cntvalueout_15[8] = \<const0> ;
  assign tx_cntvalueout_15[7] = \<const0> ;
  assign tx_cntvalueout_15[6] = \<const0> ;
  assign tx_cntvalueout_15[5] = \<const0> ;
  assign tx_cntvalueout_15[4] = \<const0> ;
  assign tx_cntvalueout_15[3] = \<const0> ;
  assign tx_cntvalueout_15[2] = \<const0> ;
  assign tx_cntvalueout_15[1] = \<const0> ;
  assign tx_cntvalueout_15[0] = \<const0> ;
  assign tx_cntvalueout_16[8] = \<const0> ;
  assign tx_cntvalueout_16[7] = \<const0> ;
  assign tx_cntvalueout_16[6] = \<const0> ;
  assign tx_cntvalueout_16[5] = \<const0> ;
  assign tx_cntvalueout_16[4] = \<const0> ;
  assign tx_cntvalueout_16[3] = \<const0> ;
  assign tx_cntvalueout_16[2] = \<const0> ;
  assign tx_cntvalueout_16[1] = \<const0> ;
  assign tx_cntvalueout_16[0] = \<const0> ;
  assign tx_cntvalueout_17[8] = \<const0> ;
  assign tx_cntvalueout_17[7] = \<const0> ;
  assign tx_cntvalueout_17[6] = \<const0> ;
  assign tx_cntvalueout_17[5] = \<const0> ;
  assign tx_cntvalueout_17[4] = \<const0> ;
  assign tx_cntvalueout_17[3] = \<const0> ;
  assign tx_cntvalueout_17[2] = \<const0> ;
  assign tx_cntvalueout_17[1] = \<const0> ;
  assign tx_cntvalueout_17[0] = \<const0> ;
  assign tx_cntvalueout_18[8] = \<const0> ;
  assign tx_cntvalueout_18[7] = \<const0> ;
  assign tx_cntvalueout_18[6] = \<const0> ;
  assign tx_cntvalueout_18[5] = \<const0> ;
  assign tx_cntvalueout_18[4] = \<const0> ;
  assign tx_cntvalueout_18[3] = \<const0> ;
  assign tx_cntvalueout_18[2] = \<const0> ;
  assign tx_cntvalueout_18[1] = \<const0> ;
  assign tx_cntvalueout_18[0] = \<const0> ;
  assign tx_cntvalueout_19[8] = \<const0> ;
  assign tx_cntvalueout_19[7] = \<const0> ;
  assign tx_cntvalueout_19[6] = \<const0> ;
  assign tx_cntvalueout_19[5] = \<const0> ;
  assign tx_cntvalueout_19[4] = \<const0> ;
  assign tx_cntvalueout_19[3] = \<const0> ;
  assign tx_cntvalueout_19[2] = \<const0> ;
  assign tx_cntvalueout_19[1] = \<const0> ;
  assign tx_cntvalueout_19[0] = \<const0> ;
  assign tx_cntvalueout_2[8] = \<const0> ;
  assign tx_cntvalueout_2[7] = \<const0> ;
  assign tx_cntvalueout_2[6] = \<const0> ;
  assign tx_cntvalueout_2[5] = \<const0> ;
  assign tx_cntvalueout_2[4] = \<const0> ;
  assign tx_cntvalueout_2[3] = \<const0> ;
  assign tx_cntvalueout_2[2] = \<const0> ;
  assign tx_cntvalueout_2[1] = \<const0> ;
  assign tx_cntvalueout_2[0] = \<const0> ;
  assign tx_cntvalueout_20[8] = \<const0> ;
  assign tx_cntvalueout_20[7] = \<const0> ;
  assign tx_cntvalueout_20[6] = \<const0> ;
  assign tx_cntvalueout_20[5] = \<const0> ;
  assign tx_cntvalueout_20[4] = \<const0> ;
  assign tx_cntvalueout_20[3] = \<const0> ;
  assign tx_cntvalueout_20[2] = \<const0> ;
  assign tx_cntvalueout_20[1] = \<const0> ;
  assign tx_cntvalueout_20[0] = \<const0> ;
  assign tx_cntvalueout_21[8] = \<const0> ;
  assign tx_cntvalueout_21[7] = \<const0> ;
  assign tx_cntvalueout_21[6] = \<const0> ;
  assign tx_cntvalueout_21[5] = \<const0> ;
  assign tx_cntvalueout_21[4] = \<const0> ;
  assign tx_cntvalueout_21[3] = \<const0> ;
  assign tx_cntvalueout_21[2] = \<const0> ;
  assign tx_cntvalueout_21[1] = \<const0> ;
  assign tx_cntvalueout_21[0] = \<const0> ;
  assign tx_cntvalueout_22[8] = \<const0> ;
  assign tx_cntvalueout_22[7] = \<const0> ;
  assign tx_cntvalueout_22[6] = \<const0> ;
  assign tx_cntvalueout_22[5] = \<const0> ;
  assign tx_cntvalueout_22[4] = \<const0> ;
  assign tx_cntvalueout_22[3] = \<const0> ;
  assign tx_cntvalueout_22[2] = \<const0> ;
  assign tx_cntvalueout_22[1] = \<const0> ;
  assign tx_cntvalueout_22[0] = \<const0> ;
  assign tx_cntvalueout_23[8] = \<const0> ;
  assign tx_cntvalueout_23[7] = \<const0> ;
  assign tx_cntvalueout_23[6] = \<const0> ;
  assign tx_cntvalueout_23[5] = \<const0> ;
  assign tx_cntvalueout_23[4] = \<const0> ;
  assign tx_cntvalueout_23[3] = \<const0> ;
  assign tx_cntvalueout_23[2] = \<const0> ;
  assign tx_cntvalueout_23[1] = \<const0> ;
  assign tx_cntvalueout_23[0] = \<const0> ;
  assign tx_cntvalueout_24[8] = \<const0> ;
  assign tx_cntvalueout_24[7] = \<const0> ;
  assign tx_cntvalueout_24[6] = \<const0> ;
  assign tx_cntvalueout_24[5] = \<const0> ;
  assign tx_cntvalueout_24[4] = \<const0> ;
  assign tx_cntvalueout_24[3] = \<const0> ;
  assign tx_cntvalueout_24[2] = \<const0> ;
  assign tx_cntvalueout_24[1] = \<const0> ;
  assign tx_cntvalueout_24[0] = \<const0> ;
  assign tx_cntvalueout_25[8] = \<const0> ;
  assign tx_cntvalueout_25[7] = \<const0> ;
  assign tx_cntvalueout_25[6] = \<const0> ;
  assign tx_cntvalueout_25[5] = \<const0> ;
  assign tx_cntvalueout_25[4] = \<const0> ;
  assign tx_cntvalueout_25[3] = \<const0> ;
  assign tx_cntvalueout_25[2] = \<const0> ;
  assign tx_cntvalueout_25[1] = \<const0> ;
  assign tx_cntvalueout_25[0] = \<const0> ;
  assign tx_cntvalueout_26[8] = \<const0> ;
  assign tx_cntvalueout_26[7] = \<const0> ;
  assign tx_cntvalueout_26[6] = \<const0> ;
  assign tx_cntvalueout_26[5] = \<const0> ;
  assign tx_cntvalueout_26[4] = \<const0> ;
  assign tx_cntvalueout_26[3] = \<const0> ;
  assign tx_cntvalueout_26[2] = \<const0> ;
  assign tx_cntvalueout_26[1] = \<const0> ;
  assign tx_cntvalueout_26[0] = \<const0> ;
  assign tx_cntvalueout_27[8] = \<const0> ;
  assign tx_cntvalueout_27[7] = \<const0> ;
  assign tx_cntvalueout_27[6] = \<const0> ;
  assign tx_cntvalueout_27[5] = \<const0> ;
  assign tx_cntvalueout_27[4] = \<const0> ;
  assign tx_cntvalueout_27[3] = \<const0> ;
  assign tx_cntvalueout_27[2] = \<const0> ;
  assign tx_cntvalueout_27[1] = \<const0> ;
  assign tx_cntvalueout_27[0] = \<const0> ;
  assign tx_cntvalueout_28[8] = \<const0> ;
  assign tx_cntvalueout_28[7] = \<const0> ;
  assign tx_cntvalueout_28[6] = \<const0> ;
  assign tx_cntvalueout_28[5] = \<const0> ;
  assign tx_cntvalueout_28[4] = \<const0> ;
  assign tx_cntvalueout_28[3] = \<const0> ;
  assign tx_cntvalueout_28[2] = \<const0> ;
  assign tx_cntvalueout_28[1] = \<const0> ;
  assign tx_cntvalueout_28[0] = \<const0> ;
  assign tx_cntvalueout_29[8] = \<const0> ;
  assign tx_cntvalueout_29[7] = \<const0> ;
  assign tx_cntvalueout_29[6] = \<const0> ;
  assign tx_cntvalueout_29[5] = \<const0> ;
  assign tx_cntvalueout_29[4] = \<const0> ;
  assign tx_cntvalueout_29[3] = \<const0> ;
  assign tx_cntvalueout_29[2] = \<const0> ;
  assign tx_cntvalueout_29[1] = \<const0> ;
  assign tx_cntvalueout_29[0] = \<const0> ;
  assign tx_cntvalueout_3[8] = \<const0> ;
  assign tx_cntvalueout_3[7] = \<const0> ;
  assign tx_cntvalueout_3[6] = \<const0> ;
  assign tx_cntvalueout_3[5] = \<const0> ;
  assign tx_cntvalueout_3[4] = \<const0> ;
  assign tx_cntvalueout_3[3] = \<const0> ;
  assign tx_cntvalueout_3[2] = \<const0> ;
  assign tx_cntvalueout_3[1] = \<const0> ;
  assign tx_cntvalueout_3[0] = \<const0> ;
  assign tx_cntvalueout_30[8] = \<const0> ;
  assign tx_cntvalueout_30[7] = \<const0> ;
  assign tx_cntvalueout_30[6] = \<const0> ;
  assign tx_cntvalueout_30[5] = \<const0> ;
  assign tx_cntvalueout_30[4] = \<const0> ;
  assign tx_cntvalueout_30[3] = \<const0> ;
  assign tx_cntvalueout_30[2] = \<const0> ;
  assign tx_cntvalueout_30[1] = \<const0> ;
  assign tx_cntvalueout_30[0] = \<const0> ;
  assign tx_cntvalueout_31[8] = \<const0> ;
  assign tx_cntvalueout_31[7] = \<const0> ;
  assign tx_cntvalueout_31[6] = \<const0> ;
  assign tx_cntvalueout_31[5] = \<const0> ;
  assign tx_cntvalueout_31[4] = \<const0> ;
  assign tx_cntvalueout_31[3] = \<const0> ;
  assign tx_cntvalueout_31[2] = \<const0> ;
  assign tx_cntvalueout_31[1] = \<const0> ;
  assign tx_cntvalueout_31[0] = \<const0> ;
  assign tx_cntvalueout_32[8] = \<const0> ;
  assign tx_cntvalueout_32[7] = \<const0> ;
  assign tx_cntvalueout_32[6] = \<const0> ;
  assign tx_cntvalueout_32[5] = \<const0> ;
  assign tx_cntvalueout_32[4] = \<const0> ;
  assign tx_cntvalueout_32[3] = \<const0> ;
  assign tx_cntvalueout_32[2] = \<const0> ;
  assign tx_cntvalueout_32[1] = \<const0> ;
  assign tx_cntvalueout_32[0] = \<const0> ;
  assign tx_cntvalueout_33[8] = \<const0> ;
  assign tx_cntvalueout_33[7] = \<const0> ;
  assign tx_cntvalueout_33[6] = \<const0> ;
  assign tx_cntvalueout_33[5] = \<const0> ;
  assign tx_cntvalueout_33[4] = \<const0> ;
  assign tx_cntvalueout_33[3] = \<const0> ;
  assign tx_cntvalueout_33[2] = \<const0> ;
  assign tx_cntvalueout_33[1] = \<const0> ;
  assign tx_cntvalueout_33[0] = \<const0> ;
  assign tx_cntvalueout_34[8] = \<const0> ;
  assign tx_cntvalueout_34[7] = \<const0> ;
  assign tx_cntvalueout_34[6] = \<const0> ;
  assign tx_cntvalueout_34[5] = \<const0> ;
  assign tx_cntvalueout_34[4] = \<const0> ;
  assign tx_cntvalueout_34[3] = \<const0> ;
  assign tx_cntvalueout_34[2] = \<const0> ;
  assign tx_cntvalueout_34[1] = \<const0> ;
  assign tx_cntvalueout_34[0] = \<const0> ;
  assign tx_cntvalueout_35[8] = \<const0> ;
  assign tx_cntvalueout_35[7] = \<const0> ;
  assign tx_cntvalueout_35[6] = \<const0> ;
  assign tx_cntvalueout_35[5] = \<const0> ;
  assign tx_cntvalueout_35[4] = \<const0> ;
  assign tx_cntvalueout_35[3] = \<const0> ;
  assign tx_cntvalueout_35[2] = \<const0> ;
  assign tx_cntvalueout_35[1] = \<const0> ;
  assign tx_cntvalueout_35[0] = \<const0> ;
  assign tx_cntvalueout_36[8] = \<const0> ;
  assign tx_cntvalueout_36[7] = \<const0> ;
  assign tx_cntvalueout_36[6] = \<const0> ;
  assign tx_cntvalueout_36[5] = \<const0> ;
  assign tx_cntvalueout_36[4] = \<const0> ;
  assign tx_cntvalueout_36[3] = \<const0> ;
  assign tx_cntvalueout_36[2] = \<const0> ;
  assign tx_cntvalueout_36[1] = \<const0> ;
  assign tx_cntvalueout_36[0] = \<const0> ;
  assign tx_cntvalueout_37[8] = \<const0> ;
  assign tx_cntvalueout_37[7] = \<const0> ;
  assign tx_cntvalueout_37[6] = \<const0> ;
  assign tx_cntvalueout_37[5] = \<const0> ;
  assign tx_cntvalueout_37[4] = \<const0> ;
  assign tx_cntvalueout_37[3] = \<const0> ;
  assign tx_cntvalueout_37[2] = \<const0> ;
  assign tx_cntvalueout_37[1] = \<const0> ;
  assign tx_cntvalueout_37[0] = \<const0> ;
  assign tx_cntvalueout_38[8] = \<const0> ;
  assign tx_cntvalueout_38[7] = \<const0> ;
  assign tx_cntvalueout_38[6] = \<const0> ;
  assign tx_cntvalueout_38[5] = \<const0> ;
  assign tx_cntvalueout_38[4] = \<const0> ;
  assign tx_cntvalueout_38[3] = \<const0> ;
  assign tx_cntvalueout_38[2] = \<const0> ;
  assign tx_cntvalueout_38[1] = \<const0> ;
  assign tx_cntvalueout_38[0] = \<const0> ;
  assign tx_cntvalueout_39[8] = \<const0> ;
  assign tx_cntvalueout_39[7] = \<const0> ;
  assign tx_cntvalueout_39[6] = \<const0> ;
  assign tx_cntvalueout_39[5] = \<const0> ;
  assign tx_cntvalueout_39[4] = \<const0> ;
  assign tx_cntvalueout_39[3] = \<const0> ;
  assign tx_cntvalueout_39[2] = \<const0> ;
  assign tx_cntvalueout_39[1] = \<const0> ;
  assign tx_cntvalueout_39[0] = \<const0> ;
  assign tx_cntvalueout_4[8] = \<const0> ;
  assign tx_cntvalueout_4[7] = \<const0> ;
  assign tx_cntvalueout_4[6] = \<const0> ;
  assign tx_cntvalueout_4[5] = \<const0> ;
  assign tx_cntvalueout_4[4] = \<const0> ;
  assign tx_cntvalueout_4[3] = \<const0> ;
  assign tx_cntvalueout_4[2] = \<const0> ;
  assign tx_cntvalueout_4[1] = \<const0> ;
  assign tx_cntvalueout_4[0] = \<const0> ;
  assign tx_cntvalueout_40[8] = \<const0> ;
  assign tx_cntvalueout_40[7] = \<const0> ;
  assign tx_cntvalueout_40[6] = \<const0> ;
  assign tx_cntvalueout_40[5] = \<const0> ;
  assign tx_cntvalueout_40[4] = \<const0> ;
  assign tx_cntvalueout_40[3] = \<const0> ;
  assign tx_cntvalueout_40[2] = \<const0> ;
  assign tx_cntvalueout_40[1] = \<const0> ;
  assign tx_cntvalueout_40[0] = \<const0> ;
  assign tx_cntvalueout_41[8] = \<const0> ;
  assign tx_cntvalueout_41[7] = \<const0> ;
  assign tx_cntvalueout_41[6] = \<const0> ;
  assign tx_cntvalueout_41[5] = \<const0> ;
  assign tx_cntvalueout_41[4] = \<const0> ;
  assign tx_cntvalueout_41[3] = \<const0> ;
  assign tx_cntvalueout_41[2] = \<const0> ;
  assign tx_cntvalueout_41[1] = \<const0> ;
  assign tx_cntvalueout_41[0] = \<const0> ;
  assign tx_cntvalueout_42[8] = \<const0> ;
  assign tx_cntvalueout_42[7] = \<const0> ;
  assign tx_cntvalueout_42[6] = \<const0> ;
  assign tx_cntvalueout_42[5] = \<const0> ;
  assign tx_cntvalueout_42[4] = \<const0> ;
  assign tx_cntvalueout_42[3] = \<const0> ;
  assign tx_cntvalueout_42[2] = \<const0> ;
  assign tx_cntvalueout_42[1] = \<const0> ;
  assign tx_cntvalueout_42[0] = \<const0> ;
  assign tx_cntvalueout_43[8] = \<const0> ;
  assign tx_cntvalueout_43[7] = \<const0> ;
  assign tx_cntvalueout_43[6] = \<const0> ;
  assign tx_cntvalueout_43[5] = \<const0> ;
  assign tx_cntvalueout_43[4] = \<const0> ;
  assign tx_cntvalueout_43[3] = \<const0> ;
  assign tx_cntvalueout_43[2] = \<const0> ;
  assign tx_cntvalueout_43[1] = \<const0> ;
  assign tx_cntvalueout_43[0] = \<const0> ;
  assign tx_cntvalueout_44[8] = \<const0> ;
  assign tx_cntvalueout_44[7] = \<const0> ;
  assign tx_cntvalueout_44[6] = \<const0> ;
  assign tx_cntvalueout_44[5] = \<const0> ;
  assign tx_cntvalueout_44[4] = \<const0> ;
  assign tx_cntvalueout_44[3] = \<const0> ;
  assign tx_cntvalueout_44[2] = \<const0> ;
  assign tx_cntvalueout_44[1] = \<const0> ;
  assign tx_cntvalueout_44[0] = \<const0> ;
  assign tx_cntvalueout_45[8] = \<const0> ;
  assign tx_cntvalueout_45[7] = \<const0> ;
  assign tx_cntvalueout_45[6] = \<const0> ;
  assign tx_cntvalueout_45[5] = \<const0> ;
  assign tx_cntvalueout_45[4] = \<const0> ;
  assign tx_cntvalueout_45[3] = \<const0> ;
  assign tx_cntvalueout_45[2] = \<const0> ;
  assign tx_cntvalueout_45[1] = \<const0> ;
  assign tx_cntvalueout_45[0] = \<const0> ;
  assign tx_cntvalueout_46[8] = \<const0> ;
  assign tx_cntvalueout_46[7] = \<const0> ;
  assign tx_cntvalueout_46[6] = \<const0> ;
  assign tx_cntvalueout_46[5] = \<const0> ;
  assign tx_cntvalueout_46[4] = \<const0> ;
  assign tx_cntvalueout_46[3] = \<const0> ;
  assign tx_cntvalueout_46[2] = \<const0> ;
  assign tx_cntvalueout_46[1] = \<const0> ;
  assign tx_cntvalueout_46[0] = \<const0> ;
  assign tx_cntvalueout_47[8] = \<const0> ;
  assign tx_cntvalueout_47[7] = \<const0> ;
  assign tx_cntvalueout_47[6] = \<const0> ;
  assign tx_cntvalueout_47[5] = \<const0> ;
  assign tx_cntvalueout_47[4] = \<const0> ;
  assign tx_cntvalueout_47[3] = \<const0> ;
  assign tx_cntvalueout_47[2] = \<const0> ;
  assign tx_cntvalueout_47[1] = \<const0> ;
  assign tx_cntvalueout_47[0] = \<const0> ;
  assign tx_cntvalueout_48[8] = \<const0> ;
  assign tx_cntvalueout_48[7] = \<const0> ;
  assign tx_cntvalueout_48[6] = \<const0> ;
  assign tx_cntvalueout_48[5] = \<const0> ;
  assign tx_cntvalueout_48[4] = \<const0> ;
  assign tx_cntvalueout_48[3] = \<const0> ;
  assign tx_cntvalueout_48[2] = \<const0> ;
  assign tx_cntvalueout_48[1] = \<const0> ;
  assign tx_cntvalueout_48[0] = \<const0> ;
  assign tx_cntvalueout_49[8] = \<const0> ;
  assign tx_cntvalueout_49[7] = \<const0> ;
  assign tx_cntvalueout_49[6] = \<const0> ;
  assign tx_cntvalueout_49[5] = \<const0> ;
  assign tx_cntvalueout_49[4] = \<const0> ;
  assign tx_cntvalueout_49[3] = \<const0> ;
  assign tx_cntvalueout_49[2] = \<const0> ;
  assign tx_cntvalueout_49[1] = \<const0> ;
  assign tx_cntvalueout_49[0] = \<const0> ;
  assign tx_cntvalueout_5[8] = \<const0> ;
  assign tx_cntvalueout_5[7] = \<const0> ;
  assign tx_cntvalueout_5[6] = \<const0> ;
  assign tx_cntvalueout_5[5] = \<const0> ;
  assign tx_cntvalueout_5[4] = \<const0> ;
  assign tx_cntvalueout_5[3] = \<const0> ;
  assign tx_cntvalueout_5[2] = \<const0> ;
  assign tx_cntvalueout_5[1] = \<const0> ;
  assign tx_cntvalueout_5[0] = \<const0> ;
  assign tx_cntvalueout_50[8] = \<const0> ;
  assign tx_cntvalueout_50[7] = \<const0> ;
  assign tx_cntvalueout_50[6] = \<const0> ;
  assign tx_cntvalueout_50[5] = \<const0> ;
  assign tx_cntvalueout_50[4] = \<const0> ;
  assign tx_cntvalueout_50[3] = \<const0> ;
  assign tx_cntvalueout_50[2] = \<const0> ;
  assign tx_cntvalueout_50[1] = \<const0> ;
  assign tx_cntvalueout_50[0] = \<const0> ;
  assign tx_cntvalueout_51[8] = \<const0> ;
  assign tx_cntvalueout_51[7] = \<const0> ;
  assign tx_cntvalueout_51[6] = \<const0> ;
  assign tx_cntvalueout_51[5] = \<const0> ;
  assign tx_cntvalueout_51[4] = \<const0> ;
  assign tx_cntvalueout_51[3] = \<const0> ;
  assign tx_cntvalueout_51[2] = \<const0> ;
  assign tx_cntvalueout_51[1] = \<const0> ;
  assign tx_cntvalueout_51[0] = \<const0> ;
  assign tx_cntvalueout_6[8] = \<const0> ;
  assign tx_cntvalueout_6[7] = \<const0> ;
  assign tx_cntvalueout_6[6] = \<const0> ;
  assign tx_cntvalueout_6[5] = \<const0> ;
  assign tx_cntvalueout_6[4] = \<const0> ;
  assign tx_cntvalueout_6[3] = \<const0> ;
  assign tx_cntvalueout_6[2] = \<const0> ;
  assign tx_cntvalueout_6[1] = \<const0> ;
  assign tx_cntvalueout_6[0] = \<const0> ;
  assign tx_cntvalueout_7[8] = \<const0> ;
  assign tx_cntvalueout_7[7] = \<const0> ;
  assign tx_cntvalueout_7[6] = \<const0> ;
  assign tx_cntvalueout_7[5] = \<const0> ;
  assign tx_cntvalueout_7[4] = \<const0> ;
  assign tx_cntvalueout_7[3] = \<const0> ;
  assign tx_cntvalueout_7[2] = \<const0> ;
  assign tx_cntvalueout_7[1] = \<const0> ;
  assign tx_cntvalueout_7[0] = \<const0> ;
  assign tx_cntvalueout_8[8] = \<const0> ;
  assign tx_cntvalueout_8[7] = \<const0> ;
  assign tx_cntvalueout_8[6] = \<const0> ;
  assign tx_cntvalueout_8[5] = \<const0> ;
  assign tx_cntvalueout_8[4] = \<const0> ;
  assign tx_cntvalueout_8[3] = \<const0> ;
  assign tx_cntvalueout_8[2] = \<const0> ;
  assign tx_cntvalueout_8[1] = \<const0> ;
  assign tx_cntvalueout_8[0] = \<const0> ;
  assign tx_cntvalueout_9[8] = \<const0> ;
  assign tx_cntvalueout_9[7] = \<const0> ;
  assign tx_cntvalueout_9[6] = \<const0> ;
  assign tx_cntvalueout_9[5] = \<const0> ;
  assign tx_cntvalueout_9[4] = \<const0> ;
  assign tx_cntvalueout_9[3] = \<const0> ;
  assign tx_cntvalueout_9[2] = \<const0> ;
  assign tx_cntvalueout_9[1] = \<const0> ;
  assign tx_cntvalueout_9[0] = \<const0> ;
  assign vtc_rdy_bsc1 = \<const0> ;
  assign vtc_rdy_bsc2 = \<const0> ;
  assign vtc_rdy_bsc3 = \<const0> ;
  assign vtc_rdy_bsc4 = \<const0> ;
  assign vtc_rdy_bsc5 = \<const0> ;
  assign vtc_rdy_bsc6 = \<const0> ;
  assign vtc_rdy_bsc7 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  bd_91b0_phy_0_bd_91b0_phy_0_hssio_rx_hssio_wiz_top top_inst
       (.bs_rst_dphy_in(bs_rst_dphy_in),
        .clk(clk),
        .clk_rxn(clk_rxn),
        .clk_rxp(clk_rxp),
        .daddr(daddr),
        .data_rxn0(data_rxn0),
        .data_rxn1(data_rxn1),
        .data_rxp0(data_rxp0),
        .data_rxp1(data_rxp1),
        .data_to_fabric_clk_rxp(data_to_fabric_clk_rxp),
        .data_to_fabric_data_rxp0(data_to_fabric_data_rxp0),
        .data_to_fabric_data_rxp1(data_to_fabric_data_rxp1),
        .dclk(dclk),
        .den(den),
        .di(di),
        .dly_rdy_bsc0(dly_rdy_bsc0),
        .do_out(do_out),
        .drdy(drdy),
        .dwe(dwe),
        .en_vtc_bsc0(en_vtc_bsc0),
        .fifo_empty_0(fifo_empty_0),
        .fifo_empty_2(fifo_empty_2),
        .fifo_empty_4(fifo_empty_4),
        .fifo_rd_clk_0(fifo_rd_clk_0),
        .fifo_rd_clk_2(fifo_rd_clk_2),
        .fifo_rd_clk_4(fifo_rd_clk_4),
        .fifo_rd_en_0(fifo_rd_en_0),
        .fifo_rd_en_2(fifo_rd_en_2),
        .fifo_rd_en_4(fifo_rd_en_4),
        .fifo_wr_clk_0(fifo_wr_clk_0),
        .hs_rx_disable(hs_rx_disable),
        .in0(rst_seq_done),
        .lp_rx_disable(lp_rx_disable),
        .lp_rx_o_n(lp_rx_o_n),
        .lp_rx_o_p(lp_rx_o_p),
        .multi_intf_lock_in(multi_intf_lock_in),
        .n0_vtc_rdy_out(vtc_rdy_bsc0),
        .pll0_clkout0_out(pll0_clkout0),
        .pll0_locked(pll0_locked),
        .riu_addr_bg0(riu_addr_bg0),
        .riu_clk(riu_clk),
        .riu_nibble_sel_bg0(riu_nibble_sel_bg0[0]),
        .riu_rd_data_bg0_bs0(riu_rd_data_bg0_bs0),
        .riu_valid_bg0_bs0(riu_valid_bg0_bs0),
        .riu_wr_data_bg0(riu_wr_data_bg0),
        .riu_wr_en_bg0(riu_wr_en_bg0),
        .rst(rst),
        .shared_pll0_clkoutphy_out(shared_pll0_clkoutphy_out),
        .tri_tbyte0(tri_tbyte0),
        .tri_tbyte1(tri_tbyte1),
        .tri_tbyte2(tri_tbyte2),
        .tri_tbyte3(tri_tbyte3),
        .tri_tbyte4(tri_tbyte4),
        .tri_tbyte5(tri_tbyte5),
        .tri_tbyte6(tri_tbyte6),
        .tri_tbyte7(tri_tbyte7));
endmodule

(* ORIG_REF_NAME = "bd_91b0_phy_0_hssio_rx_hssio_wiz_top" *) 
module bd_91b0_phy_0_bd_91b0_phy_0_hssio_rx_hssio_wiz_top
   (lp_rx_o_n,
    lp_rx_o_p,
    fifo_empty_0,
    fifo_wr_clk_0,
    data_to_fabric_clk_rxp,
    fifo_empty_2,
    data_to_fabric_data_rxp0,
    fifo_empty_4,
    data_to_fabric_data_rxp1,
    dly_rdy_bsc0,
    riu_valid_bg0_bs0,
    n0_vtc_rdy_out,
    riu_rd_data_bg0_bs0,
    shared_pll0_clkoutphy_out,
    drdy,
    pll0_locked,
    do_out,
    pll0_clkout0_out,
    in0,
    hs_rx_disable,
    clk_rxp,
    clk_rxn,
    lp_rx_disable,
    data_rxp0,
    data_rxn0,
    data_rxp1,
    data_rxn1,
    fifo_rd_clk_0,
    fifo_rd_en_0,
    fifo_rd_clk_2,
    fifo_rd_en_2,
    fifo_rd_clk_4,
    fifo_rd_en_4,
    riu_clk,
    riu_nibble_sel_bg0,
    riu_wr_en_bg0,
    riu_wr_data_bg0,
    riu_addr_bg0,
    clk,
    dclk,
    den,
    dwe,
    di,
    daddr,
    rst,
    bs_rst_dphy_in,
    multi_intf_lock_in,
    tri_tbyte0,
    tri_tbyte1,
    tri_tbyte2,
    tri_tbyte3,
    tri_tbyte4,
    tri_tbyte5,
    tri_tbyte6,
    tri_tbyte7,
    en_vtc_bsc0);
  output [2:0]lp_rx_o_n;
  output [2:0]lp_rx_o_p;
  output fifo_empty_0;
  output fifo_wr_clk_0;
  output [7:0]data_to_fabric_clk_rxp;
  output fifo_empty_2;
  output [7:0]data_to_fabric_data_rxp0;
  output fifo_empty_4;
  output [7:0]data_to_fabric_data_rxp1;
  output dly_rdy_bsc0;
  output riu_valid_bg0_bs0;
  output n0_vtc_rdy_out;
  output [15:0]riu_rd_data_bg0_bs0;
  output shared_pll0_clkoutphy_out;
  output drdy;
  output pll0_locked;
  output [15:0]do_out;
  output pll0_clkout0_out;
  output in0;
  input [2:0]hs_rx_disable;
  input clk_rxp;
  input clk_rxn;
  input [2:0]lp_rx_disable;
  input data_rxp0;
  input data_rxn0;
  input data_rxp1;
  input data_rxn1;
  input fifo_rd_clk_0;
  input fifo_rd_en_0;
  input fifo_rd_clk_2;
  input fifo_rd_en_2;
  input fifo_rd_clk_4;
  input fifo_rd_en_4;
  input riu_clk;
  input [0:0]riu_nibble_sel_bg0;
  input riu_wr_en_bg0;
  input [15:0]riu_wr_data_bg0;
  input [5:0]riu_addr_bg0;
  input clk;
  input dclk;
  input den;
  input dwe;
  input [15:0]di;
  input [6:0]daddr;
  input rst;
  input bs_rst_dphy_in;
  input multi_intf_lock_in;
  input [3:0]tri_tbyte0;
  input [3:0]tri_tbyte1;
  input [3:0]tri_tbyte2;
  input [3:0]tri_tbyte3;
  input [3:0]tri_tbyte4;
  input [3:0]tri_tbyte5;
  input [3:0]tri_tbyte6;
  input [3:0]tri_tbyte7;
  input en_vtc_bsc0;

  wire [4:0]bs_rst;
  wire bs_rst_dphy_in;
  wire bsctrl_rst;
  wire clk;
  wire clk_rxn;
  wire clk_rxp;
  wire core_rdy;
  (* RTL_KEEP = "true" *) wire [51:0]core_rdy_r;
  wire [6:0]daddr;
  wire data_rxn0;
  wire data_rxn1;
  wire data_rxp0;
  wire data_rxp1;
  wire [4:0]data_to_bs;
  wire [7:0]data_to_fabric_clk_rxp;
  wire [7:0]data_to_fabric_data_rxp0;
  wire [7:0]data_to_fabric_data_rxp1;
  wire dclk;
  wire den;
  wire [15:0]di;
  wire dly_rdy_bsc0;
  wire [15:0]do_out;
  wire drdy;
  wire dwe;
  wire en_vtc_bsc0;
  wire fifo_empty_0;
  wire fifo_empty_2;
  wire fifo_empty_4;
  wire fifo_rd_clk_0;
  wire fifo_rd_clk_2;
  wire fifo_rd_clk_4;
  wire fifo_rd_en_0;
  wire fifo_rd_en_2;
  wire fifo_rd_en_4;
  wire fifo_wr_clk_0;
  wire [2:0]hs_rx_disable;
  wire [2:0]lp_rx_disable;
  wire [2:0]lp_rx_o_n;
  wire [2:0]lp_rx_o_p;
  wire multi_intf_lock_in;
  wire n0_en_vtc;
  wire [39:0]n0_rx_bit_ctrl_in0;
  wire [39:0]n0_rx_bit_ctrl_in2;
  wire [39:0]n0_rx_bit_ctrl_in4;
  wire [39:0]n0_rx_bit_ctrl_out0;
  wire [39:0]n0_rx_bit_ctrl_out2;
  wire [39:0]n0_rx_bit_ctrl_out4;
  (* RTL_KEEP = "true" *) wire [3:0]n0_tbyte_d;
  wire [39:0]n0_tx_bit_ctrl_in0;
  wire [39:0]n0_tx_bit_ctrl_in2;
  wire [39:0]n0_tx_bit_ctrl_in4;
  wire [39:0]n0_tx_bit_ctrl_out0;
  wire [39:0]n0_tx_bit_ctrl_out2;
  wire [39:0]n0_tx_bit_ctrl_out4;
  wire n0_vtc_rdy_out;
  (* RTL_KEEP = "true" *) wire [3:0]n1_tbyte_d;
  (* RTL_KEEP = "true" *) wire [3:0]n2_tbyte_d;
  (* RTL_KEEP = "true" *) wire [3:0]n3_tbyte_d;
  (* RTL_KEEP = "true" *) wire [3:0]n4_tbyte_d;
  (* RTL_KEEP = "true" *) wire [3:0]n5_tbyte_d;
  (* RTL_KEEP = "true" *) wire [3:0]n6_tbyte_d;
  (* RTL_KEEP = "true" *) wire [3:0]n7_tbyte_d;
  wire pll0_clkout0_out;
  wire pll0_locked;
  wire [5:0]riu_addr_bg0;
  wire riu_clk;
  wire [0:0]riu_nibble_sel_bg0;
  wire [15:0]riu_rd_data_bg0_bs0;
  wire riu_valid_bg0_bs0;
  wire [15:0]riu_wr_data_bg0;
  wire riu_wr_en_bg0;
  wire rst;
  wire [4:0]rst_dly;
  (* RTL_KEEP = "true" *) wire rst_seq_done1;
  (* RTL_KEEP = "true" *) wire rst_seq_done2;
  (* RTL_KEEP = "true" *) wire rst_seq_done3;
  wire shared_pll0_clkoutphy_out;
  wire [3:0]tri_tbyte0;
  wire [3:0]tri_tbyte1;
  wire [3:0]tri_tbyte2;
  wire [3:0]tri_tbyte3;
  wire [3:0]tri_tbyte4;
  wire [3:0]tri_tbyte5;
  wire [3:0]tri_tbyte6;
  wire [3:0]tri_tbyte7;

  assign in0 = rst_seq_done3;
  FDRE \CORE_RDY_GEN[0].core_rdy_r_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[10].core_rdy_r_reg[10] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[10]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[11].core_rdy_r_reg[11] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[11]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[12].core_rdy_r_reg[12] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[12]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[13].core_rdy_r_reg[13] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[13]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[14].core_rdy_r_reg[14] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[14]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[15].core_rdy_r_reg[15] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[15]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[16].core_rdy_r_reg[16] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[16]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[17].core_rdy_r_reg[17] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[17]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[18].core_rdy_r_reg[18] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[18]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[19].core_rdy_r_reg[19] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[19]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[1].core_rdy_r_reg[1] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[20].core_rdy_r_reg[20] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[20]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[21].core_rdy_r_reg[21] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[21]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[22].core_rdy_r_reg[22] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[22]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[23].core_rdy_r_reg[23] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[23]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[24].core_rdy_r_reg[24] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[24]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[25].core_rdy_r_reg[25] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[25]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[26].core_rdy_r_reg[26] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[26]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[27].core_rdy_r_reg[27] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[27]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[28].core_rdy_r_reg[28] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[28]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[29].core_rdy_r_reg[29] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[29]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[2].core_rdy_r_reg[2] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[30].core_rdy_r_reg[30] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[30]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[31].core_rdy_r_reg[31] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[31]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[32].core_rdy_r_reg[32] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[32]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[33].core_rdy_r_reg[33] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[33]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[34].core_rdy_r_reg[34] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[34]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[35].core_rdy_r_reg[35] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[35]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[36].core_rdy_r_reg[36] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[36]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[37].core_rdy_r_reg[37] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[37]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[38].core_rdy_r_reg[38] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[38]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[39].core_rdy_r_reg[39] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[39]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[3].core_rdy_r_reg[3] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[40].core_rdy_r_reg[40] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[40]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[41].core_rdy_r_reg[41] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[41]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[42].core_rdy_r_reg[42] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[42]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[43].core_rdy_r_reg[43] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[43]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[44].core_rdy_r_reg[44] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[44]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[45].core_rdy_r_reg[45] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[45]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[46].core_rdy_r_reg[46] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[46]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[47].core_rdy_r_reg[47] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[47]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[48].core_rdy_r_reg[48] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[48]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[49].core_rdy_r_reg[49] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[49]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[4].core_rdy_r_reg[4] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[50].core_rdy_r_reg[50] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[50]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[51].core_rdy_r_reg[51] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[51]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[5].core_rdy_r_reg[5] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[5]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[6].core_rdy_r_reg[6] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[6]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[7].core_rdy_r_reg[7] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[7]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[8].core_rdy_r_reg[8] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[8]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \CORE_RDY_GEN[9].core_rdy_r_reg[9] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(core_rdy),
        .Q(core_rdy_r[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB0_TBYTE.n0_tbyte_d_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte0[0]),
        .Q(n0_tbyte_d[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB0_TBYTE.n0_tbyte_d_reg[1] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte0[1]),
        .Q(n0_tbyte_d[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB0_TBYTE.n0_tbyte_d_reg[2] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte0[2]),
        .Q(n0_tbyte_d[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB0_TBYTE.n0_tbyte_d_reg[3] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte0[3]),
        .Q(n0_tbyte_d[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB1_TBYTE.n1_tbyte_d_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte1[0]),
        .Q(n1_tbyte_d[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB1_TBYTE.n1_tbyte_d_reg[1] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte1[1]),
        .Q(n1_tbyte_d[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB1_TBYTE.n1_tbyte_d_reg[2] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte1[2]),
        .Q(n1_tbyte_d[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB1_TBYTE.n1_tbyte_d_reg[3] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte1[3]),
        .Q(n1_tbyte_d[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB2_TBYTE.n2_tbyte_d_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte2[0]),
        .Q(n2_tbyte_d[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB2_TBYTE.n2_tbyte_d_reg[1] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte2[1]),
        .Q(n2_tbyte_d[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB2_TBYTE.n2_tbyte_d_reg[2] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte2[2]),
        .Q(n2_tbyte_d[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB2_TBYTE.n2_tbyte_d_reg[3] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte2[3]),
        .Q(n2_tbyte_d[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB3_TBYTE.n3_tbyte_d_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte3[0]),
        .Q(n3_tbyte_d[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB3_TBYTE.n3_tbyte_d_reg[1] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte3[1]),
        .Q(n3_tbyte_d[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB3_TBYTE.n3_tbyte_d_reg[2] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte3[2]),
        .Q(n3_tbyte_d[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB3_TBYTE.n3_tbyte_d_reg[3] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte3[3]),
        .Q(n3_tbyte_d[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB4_TBYTE.n4_tbyte_d_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte4[0]),
        .Q(n4_tbyte_d[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB4_TBYTE.n4_tbyte_d_reg[1] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte4[1]),
        .Q(n4_tbyte_d[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB4_TBYTE.n4_tbyte_d_reg[2] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte4[2]),
        .Q(n4_tbyte_d[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB4_TBYTE.n4_tbyte_d_reg[3] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte4[3]),
        .Q(n4_tbyte_d[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB5_TBYTE.n5_tbyte_d_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte5[0]),
        .Q(n5_tbyte_d[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB5_TBYTE.n5_tbyte_d_reg[1] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte5[1]),
        .Q(n5_tbyte_d[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB5_TBYTE.n5_tbyte_d_reg[2] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte5[2]),
        .Q(n5_tbyte_d[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB5_TBYTE.n5_tbyte_d_reg[3] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte5[3]),
        .Q(n5_tbyte_d[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB6_TBYTE.n6_tbyte_d_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte6[0]),
        .Q(n6_tbyte_d[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB6_TBYTE.n6_tbyte_d_reg[1] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte6[1]),
        .Q(n6_tbyte_d[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB6_TBYTE.n6_tbyte_d_reg[2] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte6[2]),
        .Q(n6_tbyte_d[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB6_TBYTE.n6_tbyte_d_reg[3] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte6[3]),
        .Q(n6_tbyte_d[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB7_TBYTE.n7_tbyte_d_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte7[0]),
        .Q(n7_tbyte_d[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB7_TBYTE.n7_tbyte_d_reg[1] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte7[1]),
        .Q(n7_tbyte_d[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB7_TBYTE.n7_tbyte_d_reg[2] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte7[2]),
        .Q(n7_tbyte_d[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \GEN_NIB7_TBYTE.n7_tbyte_d_reg[3] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(tri_tbyte7[3]),
        .Q(n7_tbyte_d[3]),
        .R(1'b0));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_bs_ctrl_top bs_ctrl_top_inst
       (.bsctrl_rst(bsctrl_rst),
        .core_rdy(core_rdy),
        .dly_rdy_bsc0(dly_rdy_bsc0),
        .n0_en_vtc(n0_en_vtc),
        .n0_vtc_rdy_out(n0_vtc_rdy_out),
        .out(n0_tbyte_d),
        .riu_addr_bg0(riu_addr_bg0),
        .riu_clk(riu_clk),
        .riu_nibble_sel_bg0(riu_nibble_sel_bg0),
        .riu_rd_data_bg0_bs0(riu_rd_data_bg0_bs0),
        .riu_valid_bg0_bs0(riu_valid_bg0_bs0),
        .riu_wr_data_bg0(riu_wr_data_bg0),
        .riu_wr_en_bg0(riu_wr_en_bg0),
        .rx_bs0_rx_bit_ctrl_in(n0_rx_bit_ctrl_out0),
        .rx_bs0_rx_bit_ctrl_out(n0_rx_bit_ctrl_in0),
        .rx_bs0_tx_bit_ctrl_in(n0_tx_bit_ctrl_out0),
        .rx_bs0_tx_bit_ctrl_out(n0_tx_bit_ctrl_in0),
        .rx_bs2_rx_bit_ctrl_in(n0_rx_bit_ctrl_out2),
        .rx_bs2_rx_bit_ctrl_out(n0_rx_bit_ctrl_in2),
        .rx_bs2_tx_bit_ctrl_in(n0_tx_bit_ctrl_out2),
        .rx_bs2_tx_bit_ctrl_out(n0_tx_bit_ctrl_in2),
        .rx_bs4_rx_bit_ctrl_in(n0_rx_bit_ctrl_out4),
        .rx_bs4_rx_bit_ctrl_out(n0_rx_bit_ctrl_in4),
        .rx_bs4_tx_bit_ctrl_in(n0_tx_bit_ctrl_out4),
        .rx_bs4_tx_bit_ctrl_out(n0_tx_bit_ctrl_in4),
        .shared_pll0_clkoutphy_out(shared_pll0_clkoutphy_out));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_bs_top bs_top_inst
       (.data_to_bs_out({data_to_bs[4],data_to_bs[2],data_to_bs[0]}),
        .data_to_fabric_clk_rxp(data_to_fabric_clk_rxp),
        .data_to_fabric_data_rxp0(data_to_fabric_data_rxp0),
        .data_to_fabric_data_rxp1(data_to_fabric_data_rxp1),
        .fifo_empty_0(fifo_empty_0),
        .fifo_empty_2(fifo_empty_2),
        .fifo_empty_4(fifo_empty_4),
        .fifo_rd_clk_0(fifo_rd_clk_0),
        .fifo_rd_clk_2(fifo_rd_clk_2),
        .fifo_rd_clk_4(fifo_rd_clk_4),
        .fifo_rd_en_0(fifo_rd_en_0),
        .fifo_rd_en_2(fifo_rd_en_2),
        .fifo_rd_en_4(fifo_rd_en_4),
        .fifo_wr_clk_0(fifo_wr_clk_0),
        .rx_bs0_rx_bit_ctrl_in(n0_rx_bit_ctrl_out0),
        .rx_bs0_rx_bit_ctrl_out(n0_rx_bit_ctrl_in0),
        .rx_bs0_tx_bit_ctrl_in(n0_tx_bit_ctrl_out0),
        .rx_bs0_tx_bit_ctrl_out(n0_tx_bit_ctrl_in0),
        .rx_bs2_rx_bit_ctrl_in(n0_rx_bit_ctrl_out2),
        .rx_bs2_rx_bit_ctrl_out(n0_rx_bit_ctrl_in2),
        .rx_bs2_tx_bit_ctrl_in(n0_tx_bit_ctrl_out2),
        .rx_bs2_tx_bit_ctrl_out(n0_tx_bit_ctrl_in2),
        .rx_bs4_rx_bit_ctrl_in(n0_rx_bit_ctrl_out4),
        .rx_bs4_rx_bit_ctrl_out(n0_rx_bit_ctrl_in4),
        .rx_bs4_tx_bit_ctrl_in(n0_tx_bit_ctrl_out4),
        .rx_bs4_tx_bit_ctrl_out(n0_tx_bit_ctrl_in4),
        .rx_bs_rst_dly_ext_in({rst_dly[4],rst_dly[2],rst_dly[0]}),
        .rx_bs_rst_in({bs_rst[4],bs_rst[2],bs_rst[0]}));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_clk_rst_top clk_rst_top_inst
       (.bs_rst_dphy_in(bs_rst_dphy_in),
        .\bs_rst_int_r_reg[4] ({bs_rst[4],bs_rst[2],bs_rst[0]}),
        .bsctrl_rst(bsctrl_rst),
        .clk(clk),
        .daddr(daddr),
        .dclk(dclk),
        .den(den),
        .di(di),
        .dly_rdy_bsc0(dly_rdy_bsc0),
        .do_out(do_out),
        .drdy(drdy),
        .dwe(dwe),
        .en_vtc_bsc0(en_vtc_bsc0),
        .in0(rst_seq_done3),
        .multi_intf_lock_in(multi_intf_lock_in),
        .n0_en_vtc(n0_en_vtc),
        .n0_vtc_rdy_out(n0_vtc_rdy_out),
        .out({rst_dly[4],rst_dly[2],rst_dly[0]}),
        .pll0_clkout0_out(pll0_clkout0_out),
        .pll0_locked_out(pll0_locked),
        .riu_clk(riu_clk),
        .rst(rst),
        .shared_pll0_clkoutphy_out(shared_pll0_clkoutphy_out));
  bd_91b0_phy_0_bd_91b0_phy_0_hssio_rx_mipi_iobuf_rx iobuf_top_inst
       (.data_from_pins({data_rxn1,data_rxp1,data_rxn0,data_rxp0,clk_rxn,clk_rxp}),
        .data_to_bs_out({data_to_bs[4],data_to_bs[2],data_to_bs[0]}),
        .hs_rx_disable(hs_rx_disable),
        .lp_rx_disable(lp_rx_disable),
        .lp_rx_o_n(lp_rx_o_n),
        .lp_rx_o_p(lp_rx_o_p));
  LUT1 #(
    .INIT(2'h2)) 
    rst_seq_done1_inst
       (.I0(rst_seq_done3),
        .O(rst_seq_done1));
  LUT1 #(
    .INIT(2'h2)) 
    rst_seq_done2_inst
       (.I0(rst_seq_done3),
        .O(rst_seq_done2));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell sync_cell_rst_seq_pll0_inst
       (.CLK(pll0_clkout0_out),
        .out(rst_seq_done1));
endmodule

(* ORIG_REF_NAME = "bd_91b0_phy_0_hssio_rx_mipi_iobuf_rx" *) 
module bd_91b0_phy_0_bd_91b0_phy_0_hssio_rx_mipi_iobuf_rx
   (data_to_bs_out,
    lp_rx_o_n,
    lp_rx_o_p,
    hs_rx_disable,
    data_from_pins,
    lp_rx_disable);
  output [2:0]data_to_bs_out;
  output [2:0]lp_rx_o_n;
  output [2:0]lp_rx_o_p;
  input [2:0]hs_rx_disable;
  input [5:0]data_from_pins;
  input [2:0]lp_rx_disable;

  wire [5:0]data_from_pins;
  wire [2:0]data_to_bs_out;
  wire [2:0]hs_rx_disable;
  wire [2:0]lp_rx_disable;
  wire [2:0]lp_rx_o_n;
  wire [2:0]lp_rx_o_p;

  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DPHY #(
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    \io_gen[0].ibufds_dphy 
       (.HSRX_DISABLE(hs_rx_disable[0]),
        .HSRX_O(data_to_bs_out[0]),
        .I(data_from_pins[0]),
        .IB(data_from_pins[1]),
        .LPRX_DISABLE(lp_rx_disable[0]),
        .LPRX_O_N(lp_rx_o_n[0]),
        .LPRX_O_P(lp_rx_o_p[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DPHY #(
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    \io_gen[2].ibufds_dphy 
       (.HSRX_DISABLE(hs_rx_disable[1]),
        .HSRX_O(data_to_bs_out[1]),
        .I(data_from_pins[2]),
        .IB(data_from_pins[3]),
        .LPRX_DISABLE(lp_rx_disable[1]),
        .LPRX_O_N(lp_rx_o_n[1]),
        .LPRX_O_P(lp_rx_o_p[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IBUFDS_DPHY #(
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    \io_gen[4].ibufds_dphy 
       (.HSRX_DISABLE(hs_rx_disable[2]),
        .HSRX_O(data_to_bs_out[2]),
        .I(data_from_pins[4]),
        .IB(data_from_pins[5]),
        .LPRX_DISABLE(lp_rx_disable[2]),
        .LPRX_O_N(lp_rx_o_n[2]),
        .LPRX_O_P(lp_rx_o_p[2]));
endmodule

(* ORIG_REF_NAME = "bd_91b0_phy_0_support" *) 
module bd_91b0_phy_0_bd_91b0_phy_0_support
   (system_rst_out,
    init_done,
    dl0_rxdatahs,
    dl0_rxvalidhs,
    dl0_rxactivehs,
    dl0_rxsynchs,
    dl0_stopstate,
    dl0_errsoths,
    dl0_errsotsynchs,
    dl1_rxdatahs,
    dl1_rxvalidhs,
    dl1_rxactivehs,
    dl1_rxsynchs,
    dl1_stopstate,
    dl1_errsoths,
    dl1_errsotsynchs,
    cl_rxclkactivehs,
    cl_stopstate,
    rxbyteclkhs,
    clkoutphy_out,
    pll_lock_out,
    core_rst,
    core_clk,
    cl_enable,
    clk_rxp,
    clk_rxn,
    data_rxp,
    data_rxn);
  output system_rst_out;
  output init_done;
  output [7:0]dl0_rxdatahs;
  output dl0_rxvalidhs;
  output dl0_rxactivehs;
  output dl0_rxsynchs;
  output dl0_stopstate;
  output dl0_errsoths;
  output dl0_errsotsynchs;
  output [7:0]dl1_rxdatahs;
  output dl1_rxvalidhs;
  output dl1_rxactivehs;
  output dl1_rxsynchs;
  output dl1_stopstate;
  output dl1_errsoths;
  output dl1_errsotsynchs;
  output cl_rxclkactivehs;
  output cl_stopstate;
  output rxbyteclkhs;
  output clkoutphy_out;
  output pll_lock_out;
  input core_rst;
  input core_clk;
  input cl_enable;
  input clk_rxp;
  input clk_rxn;
  input [1:0]data_rxp;
  input [1:0]data_rxn;

  wire bit_slc_rst_w;
  wire cl_enable;
  wire cl_enable_sync;
  wire cl_rxclkactivehs;
  wire cl_stopstate;
  wire clk_rxn;
  wire clk_rxp;
  wire clkoutphy_out;
  wire core_clk;
  wire core_ref_clk_w;
  wire core_rst;
  wire core_rst_coreclk_sync;
  wire [1:0]data_rxn;
  wire [1:0]data_rxp;
  wire div4_clk_t;
  wire dl0_errsoths;
  wire dl0_errsotsynchs;
  wire dl0_rxactivehs;
  wire [7:0]dl0_rxdatahs;
  wire dl0_rxsynchs;
  wire dl0_rxvalidhs;
  wire dl0_stopstate;
  wire dl1_errsoths;
  wire dl1_errsotsynchs;
  wire dl1_rxactivehs;
  wire [7:0]dl1_rxdatahs;
  wire dl1_rxsynchs;
  wire dl1_rxvalidhs;
  wire dl1_stopstate;
  wire init_done;
  wire phy_rdy_out;
  wire phy_reset_w;
  wire pll_lock_out;
  wire rx_cl_disable_ibuf_w;
  wire rx_cl_fifo_empty_w;
  wire [7:0]rx_cl_hs_dp_w;
  wire rx_dl0_disable_ibuf_w;
  wire rx_dl0_fifo_empty_w;
  wire [7:0]rx_dl0_hs_dp_w;
  wire rx_dl0_lp_dn_w;
  wire rx_dl0_lp_dp_w;
  wire rx_dl0_n_fifo_empty_w;
  wire rx_dl1_disable_ibuf_w;
  wire rx_dl1_fifo_empty_w;
  wire [7:0]rx_dl1_hs_dp_w;
  wire rx_dl1_lp_dn_w;
  wire rx_dl1_lp_dp_w;
  wire rx_dl1_n_fifo_empty_w;
  wire rxbyteclkhs;
  wire \slave_rx.bd_91b0_phy_0_rx_hssio_i_i_1_n_0 ;
  wire \slave_rx.bd_91b0_phy_0_rx_hssio_i_i_2_n_0 ;
  wire \slave_rx.bd_91b0_phy_0_rx_hssio_i_i_3_n_0 ;
  wire \slave_rx.bd_91b0_phy_0_rx_hssio_i_i_4_n_0 ;
  wire \slave_rx.bd_91b0_phy_0_rx_hssio_i_n_2 ;
  wire \slave_rx.bd_91b0_phy_0_rx_hssio_i_n_5 ;
  wire system_rst_out;
  wire \NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_dly_rdy_bsc0_UNCONNECTED ;
  wire \NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_fifo_empty_1_UNCONNECTED ;
  wire \NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_pll0_clkout0_UNCONNECTED ;
  wire \NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_vtc_rdy_bsc0_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_data_to_fabric_clk_rxn_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_data_to_fabric_data_rxn0_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_data_to_fabric_data_rxn1_UNCONNECTED ;
  wire \NLW_slave_rx.cl_enable_sync_support_i_prmry_ack_UNCONNECTED ;
  wire [1:0]\NLW_slave_rx.cl_enable_sync_support_i_scndry_vect_out_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_calib_status_l0_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_calib_status_l1_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_calib_status_l2_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_calib_status_l3_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_cl_rxulpsclknot_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_cl_ulpsactivenot_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl0_errcontrol_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl0_erresc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl0_errsyncesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl0_rxclkesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl0_rxlpdtesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl0_rxskewcalhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl0_rxulpsesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl0_rxvalidesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl0_ulpsactivenot_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl1_errcontrol_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl1_erresc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl1_errsyncesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl1_rxclkesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl1_rxlpdtesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl1_rxskewcalhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl1_rxulpsesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl1_rxvalidesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl1_ulpsactivenot_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_errcontrol_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_erresc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_errsoths_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_errsotsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_errsyncesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_rxactivehs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_rxclkesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_rxlpdtesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_rxskewcalhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_rxsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_rxulpsesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_rxvalidesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_rxvalidhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_stopstate_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl2_ulpsactivenot_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_errcontrol_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_erresc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_errsoths_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_errsotsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_errsyncesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_rxactivehs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_rxclkesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_rxlpdtesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_rxskewcalhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_rxsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_rxulpsesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_rxvalidesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_rxvalidhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_stopstate_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl3_ulpsactivenot_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_errcontrol_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_erresc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_errsoths_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_errsotsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_errsyncesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_rxactivehs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_rxclkesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_rxlpdtesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_rxskewcalhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_rxsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_rxulpsesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_rxvalidesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_rxvalidhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_stopstate_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl4_ulpsactivenot_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_errcontrol_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_erresc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_errsoths_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_errsotsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_errsyncesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_rxactivehs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_rxclkesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_rxlpdtesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_rxskewcalhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_rxsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_rxulpsesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_rxvalidesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_rxvalidhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_stopstate_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl5_ulpsactivenot_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_errcontrol_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_erresc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_errsoths_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_errsotsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_errsyncesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_rxactivehs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_rxclkesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_rxlpdtesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_rxskewcalhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_rxsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_rxulpsesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_rxvalidesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_rxvalidhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_stopstate_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl6_ulpsactivenot_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_errcontrol_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_erresc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_errsoths_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_errsotsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_errsyncesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_rxactivehs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_rxclkesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_rxlpdtesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_rxskewcalhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_rxsynchs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_rxulpsesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_rxvalidesc_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_rxvalidhs_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_stopstate_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dl7_ulpsactivenot_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dphy_en_out_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_dphy_srst_out_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_idelay_load_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_phy_rst_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_reg_cal_start_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_riu_nibble_sel_l0_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_riu_nibble_sel_l1_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_riu_nibble_sel_l2_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_riu_nibble_sel_l3_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_riu_wr_en_l0_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_riu_wr_en_l1_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_riu_wr_en_l2_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_riu_wr_en_l3_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_cl_en_hs_lpn_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_cl_fifo_rd_clk_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_cl_fifo_rd_en_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl0_en_hs_lpn_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl0_fifo_rd_clk_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl0_fifo_rd_en_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl1_en_hs_lpn_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl1_fifo_rd_clk_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl1_fifo_rd_en_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl2_disable_ibuf_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl2_en_hs_lpn_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl2_fifo_rd_clk_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl2_fifo_rd_en_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl3_disable_ibuf_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl3_en_hs_lpn_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl3_fifo_rd_clk_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl3_fifo_rd_en_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl4_disable_ibuf_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl4_en_hs_lpn_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl4_fifo_rd_clk_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl4_fifo_rd_en_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl5_disable_ibuf_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl5_en_hs_lpn_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl5_fifo_rd_clk_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl5_fifo_rd_en_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl6_disable_ibuf_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl6_en_hs_lpn_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl6_fifo_rd_clk_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl6_fifo_rd_en_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl7_disable_ibuf_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl7_en_hs_lpn_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl7_fifo_rd_clk_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_rx_dl7_fifo_rd_en_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_s_axi_arready_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_s_axi_awready_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_s_axi_bvalid_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_s_axi_rvalid_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_s_axi_wready_UNCONNECTED ;
  wire \NLW_slave_rx.dphy_rx_fab_top_sys_rst_byteclk_out_UNCONNECTED ;
  wire [1:0]\NLW_slave_rx.dphy_rx_fab_top_alt_skew_calb_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl0_rxdataesc_UNCONNECTED ;
  wire [3:0]\NLW_slave_rx.dphy_rx_fab_top_dl0_rxtriggeresc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl1_rxdataesc_UNCONNECTED ;
  wire [3:0]\NLW_slave_rx.dphy_rx_fab_top_dl1_rxtriggeresc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl2_rxdataesc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl2_rxdatahs_UNCONNECTED ;
  wire [3:0]\NLW_slave_rx.dphy_rx_fab_top_dl2_rxtriggeresc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl3_rxdataesc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl3_rxdatahs_UNCONNECTED ;
  wire [3:0]\NLW_slave_rx.dphy_rx_fab_top_dl3_rxtriggeresc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl4_rxdataesc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl4_rxdatahs_UNCONNECTED ;
  wire [3:0]\NLW_slave_rx.dphy_rx_fab_top_dl4_rxtriggeresc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl5_rxdataesc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl5_rxdatahs_UNCONNECTED ;
  wire [3:0]\NLW_slave_rx.dphy_rx_fab_top_dl5_rxtriggeresc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl6_rxdataesc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl6_rxdatahs_UNCONNECTED ;
  wire [3:0]\NLW_slave_rx.dphy_rx_fab_top_dl6_rxtriggeresc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl7_rxdataesc_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_dl7_rxdatahs_UNCONNECTED ;
  wire [3:0]\NLW_slave_rx.dphy_rx_fab_top_dl7_rxtriggeresc_UNCONNECTED ;
  wire [8:0]\NLW_slave_rx.dphy_rx_fab_top_idelay_tap_value_UNCONNECTED ;
  wire [1:0]\NLW_slave_rx.dphy_rx_fab_top_init_periodic_skew_calb_UNCONNECTED ;
  wire [5:0]\NLW_slave_rx.dphy_rx_fab_top_riu_addr_l0_UNCONNECTED ;
  wire [5:0]\NLW_slave_rx.dphy_rx_fab_top_riu_addr_l1_UNCONNECTED ;
  wire [5:0]\NLW_slave_rx.dphy_rx_fab_top_riu_addr_l2_UNCONNECTED ;
  wire [5:0]\NLW_slave_rx.dphy_rx_fab_top_riu_addr_l3_UNCONNECTED ;
  wire [15:0]\NLW_slave_rx.dphy_rx_fab_top_riu_wr_data_l0_UNCONNECTED ;
  wire [15:0]\NLW_slave_rx.dphy_rx_fab_top_riu_wr_data_l1_UNCONNECTED ;
  wire [15:0]\NLW_slave_rx.dphy_rx_fab_top_riu_wr_data_l2_UNCONNECTED ;
  wire [15:0]\NLW_slave_rx.dphy_rx_fab_top_riu_wr_data_l3_UNCONNECTED ;
  wire [1:0]\NLW_slave_rx.dphy_rx_fab_top_s_axi_bresp_UNCONNECTED ;
  wire [31:0]\NLW_slave_rx.dphy_rx_fab_top_s_axi_rdata_UNCONNECTED ;
  wire [1:0]\NLW_slave_rx.dphy_rx_fab_top_s_axi_rresp_UNCONNECTED ;
  wire [7:0]\NLW_slave_rx.dphy_rx_fab_top_tap_comp_res_UNCONNECTED ;
  wire [63:0]\NLW_slave_rx.dphy_rx_fab_top_tap_val_dyn_out_UNCONNECTED ;
  wire \NLW_slave_rx.u_rx_rst_logic_mmcm_rst_UNCONNECTED ;
  wire \NLW_slave_rx.u_rx_rst_logic_system_rst_byteclk_UNCONNECTED ;
  wire \NLW_slave_rx.u_rx_rst_logic_system_rst_div4clk_UNCONNECTED ;
  wire \NLW_slave_rx.u_rx_rst_logic_system_rst_escclk_UNCONNECTED ;
  wire \NLW_slave_rx.u_rx_rst_logic_txpll_rst_UNCONNECTED ;

  (* CHECK_LICENSE_TYPE = "bd_91b0_phy_0_hssio_rx,bd_91b0_phy_0_hssio_rx_high_speed_selectio_wiz_v3_6_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "bd_91b0_phy_0_hssio_rx_high_speed_selectio_wiz_v3_6_0,Vivado 2020.1" *) 
  bd_91b0_phy_0_bd_91b0_phy_0_hssio_rx \slave_rx.bd_91b0_phy_0_rx_hssio_i 
       (.bs_rst_dphy_in(bit_slc_rst_w),
        .clk(core_ref_clk_w),
        .clk_rxn(clk_rxn),
        .clk_rxp(clk_rxp),
        .data_rxn0(data_rxn[0]),
        .data_rxn1(data_rxn[1]),
        .data_rxp0(data_rxp[0]),
        .data_rxp1(data_rxp[1]),
        .data_to_fabric_clk_rxn(\NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_data_to_fabric_clk_rxn_UNCONNECTED [7:0]),
        .data_to_fabric_clk_rxp(rx_cl_hs_dp_w),
        .data_to_fabric_data_rxn0(\NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_data_to_fabric_data_rxn0_UNCONNECTED [7:0]),
        .data_to_fabric_data_rxn1(\NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_data_to_fabric_data_rxn1_UNCONNECTED [7:0]),
        .data_to_fabric_data_rxp0(rx_dl0_hs_dp_w),
        .data_to_fabric_data_rxp1(rx_dl1_hs_dp_w),
        .dly_rdy_bsc0(\NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_dly_rdy_bsc0_UNCONNECTED ),
        .en_vtc_bsc0(1'b1),
        .fifo_empty_0(rx_cl_fifo_empty_w),
        .fifo_empty_1(\NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_fifo_empty_1_UNCONNECTED ),
        .fifo_empty_2(rx_dl0_fifo_empty_w),
        .fifo_empty_3(rx_dl0_n_fifo_empty_w),
        .fifo_empty_4(rx_dl1_fifo_empty_w),
        .fifo_empty_5(rx_dl1_n_fifo_empty_w),
        .fifo_rd_clk_0(rxbyteclkhs),
        .fifo_rd_clk_1(rxbyteclkhs),
        .fifo_rd_clk_2(rxbyteclkhs),
        .fifo_rd_clk_3(rxbyteclkhs),
        .fifo_rd_clk_4(rxbyteclkhs),
        .fifo_rd_clk_5(rxbyteclkhs),
        .fifo_rd_en_0(1'b1),
        .fifo_rd_en_1(1'b1),
        .fifo_rd_en_2(\slave_rx.bd_91b0_phy_0_rx_hssio_i_i_1_n_0 ),
        .fifo_rd_en_3(\slave_rx.bd_91b0_phy_0_rx_hssio_i_i_2_n_0 ),
        .fifo_rd_en_4(\slave_rx.bd_91b0_phy_0_rx_hssio_i_i_3_n_0 ),
        .fifo_rd_en_5(\slave_rx.bd_91b0_phy_0_rx_hssio_i_i_4_n_0 ),
        .fifo_wr_clk_0(div4_clk_t),
        .hs_rx_disable({rx_dl1_disable_ibuf_w,rx_dl0_disable_ibuf_w,rx_cl_disable_ibuf_w}),
        .lp_rx_disable({1'b0,1'b0,1'b0}),
        .lp_rx_o_n({rx_dl1_lp_dn_w,rx_dl0_lp_dn_w,\slave_rx.bd_91b0_phy_0_rx_hssio_i_n_5 }),
        .lp_rx_o_p({rx_dl1_lp_dp_w,rx_dl0_lp_dp_w,\slave_rx.bd_91b0_phy_0_rx_hssio_i_n_2 }),
        .pll0_clkout0(\NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_pll0_clkout0_UNCONNECTED ),
        .pll0_locked(pll_lock_out),
        .riu_clk(core_ref_clk_w),
        .rst(phy_reset_w),
        .rst_seq_done(phy_rdy_out),
        .shared_pll0_clkoutphy_out(clkoutphy_out),
        .vtc_rdy_bsc0(\NLW_slave_rx.bd_91b0_phy_0_rx_hssio_i_vtc_rdy_bsc0_UNCONNECTED ));
  LUT1 #(
    .INIT(2'h1)) 
    \slave_rx.bd_91b0_phy_0_rx_hssio_i_i_1 
       (.I0(rx_dl0_fifo_empty_w),
        .O(\slave_rx.bd_91b0_phy_0_rx_hssio_i_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \slave_rx.bd_91b0_phy_0_rx_hssio_i_i_2 
       (.I0(rx_dl0_n_fifo_empty_w),
        .O(\slave_rx.bd_91b0_phy_0_rx_hssio_i_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \slave_rx.bd_91b0_phy_0_rx_hssio_i_i_3 
       (.I0(rx_dl1_fifo_empty_w),
        .O(\slave_rx.bd_91b0_phy_0_rx_hssio_i_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \slave_rx.bd_91b0_phy_0_rx_hssio_i_i_4 
       (.I0(rx_dl1_n_fifo_empty_w),
        .O(\slave_rx.bd_91b0_phy_0_rx_hssio_i_i_4_n_0 ));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_cdc_type = "2'b01" *) 
  (* c_flop_input = "1'b0" *) 
  (* c_mtbf_stages = "3" *) 
  (* c_reset_state = "1'b1" *) 
  (* c_single_bit = "1'b1" *) 
  (* c_vector_width = "8'b00000010" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__1 \slave_rx.cl_enable_sync_support_i 
       (.prmry_ack(\NLW_slave_rx.cl_enable_sync_support_i_prmry_ack_UNCONNECTED ),
        .prmry_aclk(1'b0),
        .prmry_in(cl_enable),
        .prmry_rst_n(1'b1),
        .prmry_vect_in({1'b0,1'b0}),
        .scndry_aclk(core_clk),
        .scndry_out(cl_enable_sync),
        .scndry_rst_n(1'b1),
        .scndry_vect_out(\NLW_slave_rx.cl_enable_sync_support_i_scndry_vect_out_UNCONNECTED [1:0]));
  (* BYTE_UI = "28" *) 
  (* CL_ACTIVE_BYTE_UI = "1" *) 
  (* C_CAL_MODE = "FIXED" *) 
  (* C_CLK_PREPARE_VAL = "40" *) 
  (* C_CLK_SETTLE_VAL = "95" *) 
  (* C_CLK_TERMEN_VAL = "38" *) 
  (* C_CLK_ZERO_VAL = "205" *) 
  (* C_COMP_CYCLES = "5" *) 
  (* C_DPHY_LANES = "2" *) 
  (* C_DPHY_MODE = "SLAVE" *) 
  (* C_D_TERMEN_VAL = "35" *) 
  (* C_EN_DEBUG_REGS = "0" *) 
  (* C_EN_REGISTER = "0" *) 
  (* C_EN_TIMEOUT_REGS = "0" *) 
  (* C_EN_ULPS_WAKEUP_CNT = "FALSE" *) 
  (* C_ESC_TIMEOUT = "25600" *) 
  (* C_HS_LINE_RATE = "280" *) 
  (* C_HS_RX_TIMEOUT = "65541" *) 
  (* C_HS_SETTLE_VAL = "170" *) 
  (* C_HS_SKIP_VAL = "40" *) 
  (* C_IDLY_TAP = "0" *) 
  (* C_INIT = "100000" *) 
  (* C_IO_ADDR = "8'b00010100" *) 
  (* C_IS_7SERIES = "FALSE" *) 
  (* C_LPX_PERIOD = "50" *) 
  (* C_NO_INCR_TAPS = "2" *) 
  (* C_RCVE_ALT_DESKEW_SEQ = "false" *) 
  (* C_RCVE_DESKEW_SEQ = "false" *) 
  (* C_STABLE_CLK_PERIOD = "5.000000" *) 
  (* C_UI_IN_TAPS = "64" *) 
  (* C_WAKEUP = "1000000" *) 
  (* DPHY_PRESET = "CSI2RX_XLNX" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* INIT_TIMEOUT_L = "19998" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* LPX_PERIOD_MIN = "25" *) 
  (* LP_STATE_CNT = "2" *) 
  (* MTBF_SYNC_STAGES = "3" *) 
  (* RESET_PULSE_EXTN = "4'b0001" *) 
  (* SETTLE_TIMEOUT_L = "29" *) 
  (* SUPPORT_LEVEL = "1" *) 
  (* UI10_VAL = "35" *) 
  (* UI_VAL = "3571" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_fab_top \slave_rx.dphy_rx_fab_top 
       (.alt_skew_calb(\NLW_slave_rx.dphy_rx_fab_top_alt_skew_calb_UNCONNECTED [1:0]),
        .bit_slc_rst(bit_slc_rst_w),
        .cal_done(1'b0),
        .cal_pass(1'b0),
        .calib_status_l0(\NLW_slave_rx.dphy_rx_fab_top_calib_status_l0_UNCONNECTED ),
        .calib_status_l1(\NLW_slave_rx.dphy_rx_fab_top_calib_status_l1_UNCONNECTED ),
        .calib_status_l2(\NLW_slave_rx.dphy_rx_fab_top_calib_status_l2_UNCONNECTED ),
        .calib_status_l3(\NLW_slave_rx.dphy_rx_fab_top_calib_status_l3_UNCONNECTED ),
        .cl_enable(cl_enable_sync),
        .cl_rxclkactivehs(cl_rxclkactivehs),
        .cl_rxulpsclknot(\NLW_slave_rx.dphy_rx_fab_top_cl_rxulpsclknot_UNCONNECTED ),
        .cl_stopstate(cl_stopstate),
        .cl_ulpsactivenot(\NLW_slave_rx.dphy_rx_fab_top_cl_ulpsactivenot_UNCONNECTED ),
        .clk_200m(1'b0),
        .core_clk(core_clk),
        .core_ref_clk(core_ref_clk_w),
        .core_rst(core_rst_coreclk_sync),
        .dl0_enable(1'b0),
        .dl0_errcontrol(\NLW_slave_rx.dphy_rx_fab_top_dl0_errcontrol_UNCONNECTED ),
        .dl0_erresc(\NLW_slave_rx.dphy_rx_fab_top_dl0_erresc_UNCONNECTED ),
        .dl0_errsoths(dl0_errsoths),
        .dl0_errsotsynchs(dl0_errsotsynchs),
        .dl0_errsyncesc(\NLW_slave_rx.dphy_rx_fab_top_dl0_errsyncesc_UNCONNECTED ),
        .dl0_forcerxmode(1'b0),
        .dl0_rxactivehs(dl0_rxactivehs),
        .dl0_rxclkesc(\NLW_slave_rx.dphy_rx_fab_top_dl0_rxclkesc_UNCONNECTED ),
        .dl0_rxdataesc(\NLW_slave_rx.dphy_rx_fab_top_dl0_rxdataesc_UNCONNECTED [7:0]),
        .dl0_rxdatahs(dl0_rxdatahs),
        .dl0_rxlpdtesc(\NLW_slave_rx.dphy_rx_fab_top_dl0_rxlpdtesc_UNCONNECTED ),
        .dl0_rxskewcalhs(\NLW_slave_rx.dphy_rx_fab_top_dl0_rxskewcalhs_UNCONNECTED ),
        .dl0_rxsynchs(dl0_rxsynchs),
        .dl0_rxtriggeresc(\NLW_slave_rx.dphy_rx_fab_top_dl0_rxtriggeresc_UNCONNECTED [3:0]),
        .dl0_rxulpsesc(\NLW_slave_rx.dphy_rx_fab_top_dl0_rxulpsesc_UNCONNECTED ),
        .dl0_rxvalidesc(\NLW_slave_rx.dphy_rx_fab_top_dl0_rxvalidesc_UNCONNECTED ),
        .dl0_rxvalidhs(dl0_rxvalidhs),
        .dl0_stopstate(dl0_stopstate),
        .dl0_ulpsactivenot(\NLW_slave_rx.dphy_rx_fab_top_dl0_ulpsactivenot_UNCONNECTED ),
        .dl1_enable(1'b0),
        .dl1_errcontrol(\NLW_slave_rx.dphy_rx_fab_top_dl1_errcontrol_UNCONNECTED ),
        .dl1_erresc(\NLW_slave_rx.dphy_rx_fab_top_dl1_erresc_UNCONNECTED ),
        .dl1_errsoths(dl1_errsoths),
        .dl1_errsotsynchs(dl1_errsotsynchs),
        .dl1_errsyncesc(\NLW_slave_rx.dphy_rx_fab_top_dl1_errsyncesc_UNCONNECTED ),
        .dl1_forcerxmode(1'b0),
        .dl1_rxactivehs(dl1_rxactivehs),
        .dl1_rxclkesc(\NLW_slave_rx.dphy_rx_fab_top_dl1_rxclkesc_UNCONNECTED ),
        .dl1_rxdataesc(\NLW_slave_rx.dphy_rx_fab_top_dl1_rxdataesc_UNCONNECTED [7:0]),
        .dl1_rxdatahs(dl1_rxdatahs),
        .dl1_rxlpdtesc(\NLW_slave_rx.dphy_rx_fab_top_dl1_rxlpdtesc_UNCONNECTED ),
        .dl1_rxskewcalhs(\NLW_slave_rx.dphy_rx_fab_top_dl1_rxskewcalhs_UNCONNECTED ),
        .dl1_rxsynchs(dl1_rxsynchs),
        .dl1_rxtriggeresc(\NLW_slave_rx.dphy_rx_fab_top_dl1_rxtriggeresc_UNCONNECTED [3:0]),
        .dl1_rxulpsesc(\NLW_slave_rx.dphy_rx_fab_top_dl1_rxulpsesc_UNCONNECTED ),
        .dl1_rxvalidesc(\NLW_slave_rx.dphy_rx_fab_top_dl1_rxvalidesc_UNCONNECTED ),
        .dl1_rxvalidhs(dl1_rxvalidhs),
        .dl1_stopstate(dl1_stopstate),
        .dl1_ulpsactivenot(\NLW_slave_rx.dphy_rx_fab_top_dl1_ulpsactivenot_UNCONNECTED ),
        .dl2_enable(1'b0),
        .dl2_errcontrol(\NLW_slave_rx.dphy_rx_fab_top_dl2_errcontrol_UNCONNECTED ),
        .dl2_erresc(\NLW_slave_rx.dphy_rx_fab_top_dl2_erresc_UNCONNECTED ),
        .dl2_errsoths(\NLW_slave_rx.dphy_rx_fab_top_dl2_errsoths_UNCONNECTED ),
        .dl2_errsotsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl2_errsotsynchs_UNCONNECTED ),
        .dl2_errsyncesc(\NLW_slave_rx.dphy_rx_fab_top_dl2_errsyncesc_UNCONNECTED ),
        .dl2_forcerxmode(1'b0),
        .dl2_rxactivehs(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxactivehs_UNCONNECTED ),
        .dl2_rxclkesc(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxclkesc_UNCONNECTED ),
        .dl2_rxdataesc(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxdataesc_UNCONNECTED [7:0]),
        .dl2_rxdatahs(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxdatahs_UNCONNECTED [7:0]),
        .dl2_rxlpdtesc(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxlpdtesc_UNCONNECTED ),
        .dl2_rxskewcalhs(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxskewcalhs_UNCONNECTED ),
        .dl2_rxsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxsynchs_UNCONNECTED ),
        .dl2_rxtriggeresc(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxtriggeresc_UNCONNECTED [3:0]),
        .dl2_rxulpsesc(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxulpsesc_UNCONNECTED ),
        .dl2_rxvalidesc(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxvalidesc_UNCONNECTED ),
        .dl2_rxvalidhs(\NLW_slave_rx.dphy_rx_fab_top_dl2_rxvalidhs_UNCONNECTED ),
        .dl2_stopstate(\NLW_slave_rx.dphy_rx_fab_top_dl2_stopstate_UNCONNECTED ),
        .dl2_ulpsactivenot(\NLW_slave_rx.dphy_rx_fab_top_dl2_ulpsactivenot_UNCONNECTED ),
        .dl3_enable(1'b0),
        .dl3_errcontrol(\NLW_slave_rx.dphy_rx_fab_top_dl3_errcontrol_UNCONNECTED ),
        .dl3_erresc(\NLW_slave_rx.dphy_rx_fab_top_dl3_erresc_UNCONNECTED ),
        .dl3_errsoths(\NLW_slave_rx.dphy_rx_fab_top_dl3_errsoths_UNCONNECTED ),
        .dl3_errsotsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl3_errsotsynchs_UNCONNECTED ),
        .dl3_errsyncesc(\NLW_slave_rx.dphy_rx_fab_top_dl3_errsyncesc_UNCONNECTED ),
        .dl3_forcerxmode(1'b0),
        .dl3_rxactivehs(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxactivehs_UNCONNECTED ),
        .dl3_rxclkesc(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxclkesc_UNCONNECTED ),
        .dl3_rxdataesc(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxdataesc_UNCONNECTED [7:0]),
        .dl3_rxdatahs(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxdatahs_UNCONNECTED [7:0]),
        .dl3_rxlpdtesc(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxlpdtesc_UNCONNECTED ),
        .dl3_rxskewcalhs(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxskewcalhs_UNCONNECTED ),
        .dl3_rxsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxsynchs_UNCONNECTED ),
        .dl3_rxtriggeresc(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxtriggeresc_UNCONNECTED [3:0]),
        .dl3_rxulpsesc(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxulpsesc_UNCONNECTED ),
        .dl3_rxvalidesc(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxvalidesc_UNCONNECTED ),
        .dl3_rxvalidhs(\NLW_slave_rx.dphy_rx_fab_top_dl3_rxvalidhs_UNCONNECTED ),
        .dl3_stopstate(\NLW_slave_rx.dphy_rx_fab_top_dl3_stopstate_UNCONNECTED ),
        .dl3_ulpsactivenot(\NLW_slave_rx.dphy_rx_fab_top_dl3_ulpsactivenot_UNCONNECTED ),
        .dl4_enable(1'b0),
        .dl4_errcontrol(\NLW_slave_rx.dphy_rx_fab_top_dl4_errcontrol_UNCONNECTED ),
        .dl4_erresc(\NLW_slave_rx.dphy_rx_fab_top_dl4_erresc_UNCONNECTED ),
        .dl4_errsoths(\NLW_slave_rx.dphy_rx_fab_top_dl4_errsoths_UNCONNECTED ),
        .dl4_errsotsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl4_errsotsynchs_UNCONNECTED ),
        .dl4_errsyncesc(\NLW_slave_rx.dphy_rx_fab_top_dl4_errsyncesc_UNCONNECTED ),
        .dl4_forcerxmode(1'b0),
        .dl4_rxactivehs(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxactivehs_UNCONNECTED ),
        .dl4_rxclkesc(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxclkesc_UNCONNECTED ),
        .dl4_rxdataesc(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxdataesc_UNCONNECTED [7:0]),
        .dl4_rxdatahs(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxdatahs_UNCONNECTED [7:0]),
        .dl4_rxlpdtesc(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxlpdtesc_UNCONNECTED ),
        .dl4_rxskewcalhs(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxskewcalhs_UNCONNECTED ),
        .dl4_rxsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxsynchs_UNCONNECTED ),
        .dl4_rxtriggeresc(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxtriggeresc_UNCONNECTED [3:0]),
        .dl4_rxulpsesc(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxulpsesc_UNCONNECTED ),
        .dl4_rxvalidesc(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxvalidesc_UNCONNECTED ),
        .dl4_rxvalidhs(\NLW_slave_rx.dphy_rx_fab_top_dl4_rxvalidhs_UNCONNECTED ),
        .dl4_stopstate(\NLW_slave_rx.dphy_rx_fab_top_dl4_stopstate_UNCONNECTED ),
        .dl4_ulpsactivenot(\NLW_slave_rx.dphy_rx_fab_top_dl4_ulpsactivenot_UNCONNECTED ),
        .dl5_enable(1'b0),
        .dl5_errcontrol(\NLW_slave_rx.dphy_rx_fab_top_dl5_errcontrol_UNCONNECTED ),
        .dl5_erresc(\NLW_slave_rx.dphy_rx_fab_top_dl5_erresc_UNCONNECTED ),
        .dl5_errsoths(\NLW_slave_rx.dphy_rx_fab_top_dl5_errsoths_UNCONNECTED ),
        .dl5_errsotsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl5_errsotsynchs_UNCONNECTED ),
        .dl5_errsyncesc(\NLW_slave_rx.dphy_rx_fab_top_dl5_errsyncesc_UNCONNECTED ),
        .dl5_forcerxmode(1'b0),
        .dl5_rxactivehs(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxactivehs_UNCONNECTED ),
        .dl5_rxclkesc(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxclkesc_UNCONNECTED ),
        .dl5_rxdataesc(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxdataesc_UNCONNECTED [7:0]),
        .dl5_rxdatahs(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxdatahs_UNCONNECTED [7:0]),
        .dl5_rxlpdtesc(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxlpdtesc_UNCONNECTED ),
        .dl5_rxskewcalhs(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxskewcalhs_UNCONNECTED ),
        .dl5_rxsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxsynchs_UNCONNECTED ),
        .dl5_rxtriggeresc(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxtriggeresc_UNCONNECTED [3:0]),
        .dl5_rxulpsesc(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxulpsesc_UNCONNECTED ),
        .dl5_rxvalidesc(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxvalidesc_UNCONNECTED ),
        .dl5_rxvalidhs(\NLW_slave_rx.dphy_rx_fab_top_dl5_rxvalidhs_UNCONNECTED ),
        .dl5_stopstate(\NLW_slave_rx.dphy_rx_fab_top_dl5_stopstate_UNCONNECTED ),
        .dl5_ulpsactivenot(\NLW_slave_rx.dphy_rx_fab_top_dl5_ulpsactivenot_UNCONNECTED ),
        .dl6_enable(1'b0),
        .dl6_errcontrol(\NLW_slave_rx.dphy_rx_fab_top_dl6_errcontrol_UNCONNECTED ),
        .dl6_erresc(\NLW_slave_rx.dphy_rx_fab_top_dl6_erresc_UNCONNECTED ),
        .dl6_errsoths(\NLW_slave_rx.dphy_rx_fab_top_dl6_errsoths_UNCONNECTED ),
        .dl6_errsotsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl6_errsotsynchs_UNCONNECTED ),
        .dl6_errsyncesc(\NLW_slave_rx.dphy_rx_fab_top_dl6_errsyncesc_UNCONNECTED ),
        .dl6_forcerxmode(1'b0),
        .dl6_rxactivehs(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxactivehs_UNCONNECTED ),
        .dl6_rxclkesc(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxclkesc_UNCONNECTED ),
        .dl6_rxdataesc(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxdataesc_UNCONNECTED [7:0]),
        .dl6_rxdatahs(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxdatahs_UNCONNECTED [7:0]),
        .dl6_rxlpdtesc(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxlpdtesc_UNCONNECTED ),
        .dl6_rxskewcalhs(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxskewcalhs_UNCONNECTED ),
        .dl6_rxsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxsynchs_UNCONNECTED ),
        .dl6_rxtriggeresc(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxtriggeresc_UNCONNECTED [3:0]),
        .dl6_rxulpsesc(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxulpsesc_UNCONNECTED ),
        .dl6_rxvalidesc(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxvalidesc_UNCONNECTED ),
        .dl6_rxvalidhs(\NLW_slave_rx.dphy_rx_fab_top_dl6_rxvalidhs_UNCONNECTED ),
        .dl6_stopstate(\NLW_slave_rx.dphy_rx_fab_top_dl6_stopstate_UNCONNECTED ),
        .dl6_ulpsactivenot(\NLW_slave_rx.dphy_rx_fab_top_dl6_ulpsactivenot_UNCONNECTED ),
        .dl7_enable(1'b0),
        .dl7_errcontrol(\NLW_slave_rx.dphy_rx_fab_top_dl7_errcontrol_UNCONNECTED ),
        .dl7_erresc(\NLW_slave_rx.dphy_rx_fab_top_dl7_erresc_UNCONNECTED ),
        .dl7_errsoths(\NLW_slave_rx.dphy_rx_fab_top_dl7_errsoths_UNCONNECTED ),
        .dl7_errsotsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl7_errsotsynchs_UNCONNECTED ),
        .dl7_errsyncesc(\NLW_slave_rx.dphy_rx_fab_top_dl7_errsyncesc_UNCONNECTED ),
        .dl7_forcerxmode(1'b0),
        .dl7_rxactivehs(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxactivehs_UNCONNECTED ),
        .dl7_rxclkesc(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxclkesc_UNCONNECTED ),
        .dl7_rxdataesc(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxdataesc_UNCONNECTED [7:0]),
        .dl7_rxdatahs(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxdatahs_UNCONNECTED [7:0]),
        .dl7_rxlpdtesc(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxlpdtesc_UNCONNECTED ),
        .dl7_rxskewcalhs(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxskewcalhs_UNCONNECTED ),
        .dl7_rxsynchs(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxsynchs_UNCONNECTED ),
        .dl7_rxtriggeresc(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxtriggeresc_UNCONNECTED [3:0]),
        .dl7_rxulpsesc(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxulpsesc_UNCONNECTED ),
        .dl7_rxvalidesc(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxvalidesc_UNCONNECTED ),
        .dl7_rxvalidhs(\NLW_slave_rx.dphy_rx_fab_top_dl7_rxvalidhs_UNCONNECTED ),
        .dl7_stopstate(\NLW_slave_rx.dphy_rx_fab_top_dl7_stopstate_UNCONNECTED ),
        .dl7_ulpsactivenot(\NLW_slave_rx.dphy_rx_fab_top_dl7_ulpsactivenot_UNCONNECTED ),
        .dly_ctrl_rdy(1'b0),
        .dphy_en_out(\NLW_slave_rx.dphy_rx_fab_top_dphy_en_out_UNCONNECTED ),
        .dphy_srst_out(\NLW_slave_rx.dphy_rx_fab_top_dphy_srst_out_UNCONNECTED ),
        .idelay_load(\NLW_slave_rx.dphy_rx_fab_top_idelay_load_UNCONNECTED ),
        .idelay_ready(1'b0),
        .idelay_tap_value(\NLW_slave_rx.dphy_rx_fab_top_idelay_tap_value_UNCONNECTED [8:0]),
        .idly_tap_val({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .init_done(init_done),
        .init_periodic_skew_calb(\NLW_slave_rx.dphy_rx_fab_top_init_periodic_skew_calb_UNCONNECTED [1:0]),
        .phy_ready(phy_rdy_out),
        .phy_rst(\NLW_slave_rx.dphy_rx_fab_top_phy_rst_UNCONNECTED ),
        .reg_cal_start(\NLW_slave_rx.dphy_rx_fab_top_reg_cal_start_UNCONNECTED ),
        .riu_addr_l0(\NLW_slave_rx.dphy_rx_fab_top_riu_addr_l0_UNCONNECTED [5:0]),
        .riu_addr_l1(\NLW_slave_rx.dphy_rx_fab_top_riu_addr_l1_UNCONNECTED [5:0]),
        .riu_addr_l2(\NLW_slave_rx.dphy_rx_fab_top_riu_addr_l2_UNCONNECTED [5:0]),
        .riu_addr_l3(\NLW_slave_rx.dphy_rx_fab_top_riu_addr_l3_UNCONNECTED [5:0]),
        .riu_nibble_sel_l0(\NLW_slave_rx.dphy_rx_fab_top_riu_nibble_sel_l0_UNCONNECTED ),
        .riu_nibble_sel_l1(\NLW_slave_rx.dphy_rx_fab_top_riu_nibble_sel_l1_UNCONNECTED ),
        .riu_nibble_sel_l2(\NLW_slave_rx.dphy_rx_fab_top_riu_nibble_sel_l2_UNCONNECTED ),
        .riu_nibble_sel_l3(\NLW_slave_rx.dphy_rx_fab_top_riu_nibble_sel_l3_UNCONNECTED ),
        .riu_rd_data_l0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_rd_data_l1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_rd_data_l2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_rd_data_l3({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .riu_valid_l0(1'b0),
        .riu_valid_l1(1'b0),
        .riu_valid_l2(1'b0),
        .riu_valid_l3(1'b0),
        .riu_wr_data_l0(\NLW_slave_rx.dphy_rx_fab_top_riu_wr_data_l0_UNCONNECTED [15:0]),
        .riu_wr_data_l1(\NLW_slave_rx.dphy_rx_fab_top_riu_wr_data_l1_UNCONNECTED [15:0]),
        .riu_wr_data_l2(\NLW_slave_rx.dphy_rx_fab_top_riu_wr_data_l2_UNCONNECTED [15:0]),
        .riu_wr_data_l3(\NLW_slave_rx.dphy_rx_fab_top_riu_wr_data_l3_UNCONNECTED [15:0]),
        .riu_wr_en_l0(\NLW_slave_rx.dphy_rx_fab_top_riu_wr_en_l0_UNCONNECTED ),
        .riu_wr_en_l1(\NLW_slave_rx.dphy_rx_fab_top_riu_wr_en_l1_UNCONNECTED ),
        .riu_wr_en_l2(\NLW_slave_rx.dphy_rx_fab_top_riu_wr_en_l2_UNCONNECTED ),
        .riu_wr_en_l3(\NLW_slave_rx.dphy_rx_fab_top_riu_wr_en_l3_UNCONNECTED ),
        .rx_cl_disable_ibuf(rx_cl_disable_ibuf_w),
        .rx_cl_en_hs_lpn(\NLW_slave_rx.dphy_rx_fab_top_rx_cl_en_hs_lpn_UNCONNECTED ),
        .rx_cl_fifo_empty(1'b0),
        .rx_cl_fifo_rd_clk(\NLW_slave_rx.dphy_rx_fab_top_rx_cl_fifo_rd_clk_UNCONNECTED ),
        .rx_cl_fifo_rd_en(\NLW_slave_rx.dphy_rx_fab_top_rx_cl_fifo_rd_en_UNCONNECTED ),
        .rx_cl_hs_dp({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_cl_lp_dn(\slave_rx.bd_91b0_phy_0_rx_hssio_i_n_5 ),
        .rx_cl_lp_dp(\slave_rx.bd_91b0_phy_0_rx_hssio_i_n_2 ),
        .rx_div4_clk(rxbyteclkhs),
        .rx_dl0_disable_ibuf(rx_dl0_disable_ibuf_w),
        .rx_dl0_en_hs_lpn(\NLW_slave_rx.dphy_rx_fab_top_rx_dl0_en_hs_lpn_UNCONNECTED ),
        .rx_dl0_fifo_empty(1'b0),
        .rx_dl0_fifo_rd_clk(\NLW_slave_rx.dphy_rx_fab_top_rx_dl0_fifo_rd_clk_UNCONNECTED ),
        .rx_dl0_fifo_rd_en(\NLW_slave_rx.dphy_rx_fab_top_rx_dl0_fifo_rd_en_UNCONNECTED ),
        .rx_dl0_hs_dp(rx_dl0_hs_dp_w),
        .rx_dl0_lp_dn(rx_dl0_lp_dn_w),
        .rx_dl0_lp_dp(rx_dl0_lp_dp_w),
        .rx_dl1_disable_ibuf(rx_dl1_disable_ibuf_w),
        .rx_dl1_en_hs_lpn(\NLW_slave_rx.dphy_rx_fab_top_rx_dl1_en_hs_lpn_UNCONNECTED ),
        .rx_dl1_fifo_empty(1'b0),
        .rx_dl1_fifo_rd_clk(\NLW_slave_rx.dphy_rx_fab_top_rx_dl1_fifo_rd_clk_UNCONNECTED ),
        .rx_dl1_fifo_rd_en(\NLW_slave_rx.dphy_rx_fab_top_rx_dl1_fifo_rd_en_UNCONNECTED ),
        .rx_dl1_hs_dp(rx_dl1_hs_dp_w),
        .rx_dl1_lp_dn(rx_dl1_lp_dn_w),
        .rx_dl1_lp_dp(rx_dl1_lp_dp_w),
        .rx_dl2_disable_ibuf(\NLW_slave_rx.dphy_rx_fab_top_rx_dl2_disable_ibuf_UNCONNECTED ),
        .rx_dl2_en_hs_lpn(\NLW_slave_rx.dphy_rx_fab_top_rx_dl2_en_hs_lpn_UNCONNECTED ),
        .rx_dl2_fifo_empty(1'b0),
        .rx_dl2_fifo_rd_clk(\NLW_slave_rx.dphy_rx_fab_top_rx_dl2_fifo_rd_clk_UNCONNECTED ),
        .rx_dl2_fifo_rd_en(\NLW_slave_rx.dphy_rx_fab_top_rx_dl2_fifo_rd_en_UNCONNECTED ),
        .rx_dl2_hs_dp({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_dl2_lp_dn(1'b0),
        .rx_dl2_lp_dp(1'b0),
        .rx_dl3_disable_ibuf(\NLW_slave_rx.dphy_rx_fab_top_rx_dl3_disable_ibuf_UNCONNECTED ),
        .rx_dl3_en_hs_lpn(\NLW_slave_rx.dphy_rx_fab_top_rx_dl3_en_hs_lpn_UNCONNECTED ),
        .rx_dl3_fifo_empty(1'b0),
        .rx_dl3_fifo_rd_clk(\NLW_slave_rx.dphy_rx_fab_top_rx_dl3_fifo_rd_clk_UNCONNECTED ),
        .rx_dl3_fifo_rd_en(\NLW_slave_rx.dphy_rx_fab_top_rx_dl3_fifo_rd_en_UNCONNECTED ),
        .rx_dl3_hs_dp({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_dl3_lp_dn(1'b0),
        .rx_dl3_lp_dp(1'b0),
        .rx_dl4_disable_ibuf(\NLW_slave_rx.dphy_rx_fab_top_rx_dl4_disable_ibuf_UNCONNECTED ),
        .rx_dl4_en_hs_lpn(\NLW_slave_rx.dphy_rx_fab_top_rx_dl4_en_hs_lpn_UNCONNECTED ),
        .rx_dl4_fifo_empty(1'b0),
        .rx_dl4_fifo_rd_clk(\NLW_slave_rx.dphy_rx_fab_top_rx_dl4_fifo_rd_clk_UNCONNECTED ),
        .rx_dl4_fifo_rd_en(\NLW_slave_rx.dphy_rx_fab_top_rx_dl4_fifo_rd_en_UNCONNECTED ),
        .rx_dl4_hs_dp({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_dl4_lp_dn(1'b0),
        .rx_dl4_lp_dp(1'b0),
        .rx_dl5_disable_ibuf(\NLW_slave_rx.dphy_rx_fab_top_rx_dl5_disable_ibuf_UNCONNECTED ),
        .rx_dl5_en_hs_lpn(\NLW_slave_rx.dphy_rx_fab_top_rx_dl5_en_hs_lpn_UNCONNECTED ),
        .rx_dl5_fifo_empty(1'b0),
        .rx_dl5_fifo_rd_clk(\NLW_slave_rx.dphy_rx_fab_top_rx_dl5_fifo_rd_clk_UNCONNECTED ),
        .rx_dl5_fifo_rd_en(\NLW_slave_rx.dphy_rx_fab_top_rx_dl5_fifo_rd_en_UNCONNECTED ),
        .rx_dl5_hs_dp({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_dl5_lp_dn(1'b0),
        .rx_dl5_lp_dp(1'b0),
        .rx_dl6_disable_ibuf(\NLW_slave_rx.dphy_rx_fab_top_rx_dl6_disable_ibuf_UNCONNECTED ),
        .rx_dl6_en_hs_lpn(\NLW_slave_rx.dphy_rx_fab_top_rx_dl6_en_hs_lpn_UNCONNECTED ),
        .rx_dl6_fifo_empty(1'b0),
        .rx_dl6_fifo_rd_clk(\NLW_slave_rx.dphy_rx_fab_top_rx_dl6_fifo_rd_clk_UNCONNECTED ),
        .rx_dl6_fifo_rd_en(\NLW_slave_rx.dphy_rx_fab_top_rx_dl6_fifo_rd_en_UNCONNECTED ),
        .rx_dl6_hs_dp({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_dl6_lp_dn(1'b0),
        .rx_dl6_lp_dp(1'b0),
        .rx_dl7_disable_ibuf(\NLW_slave_rx.dphy_rx_fab_top_rx_dl7_disable_ibuf_UNCONNECTED ),
        .rx_dl7_en_hs_lpn(\NLW_slave_rx.dphy_rx_fab_top_rx_dl7_en_hs_lpn_UNCONNECTED ),
        .rx_dl7_fifo_empty(1'b0),
        .rx_dl7_fifo_rd_clk(\NLW_slave_rx.dphy_rx_fab_top_rx_dl7_fifo_rd_clk_UNCONNECTED ),
        .rx_dl7_fifo_rd_en(\NLW_slave_rx.dphy_rx_fab_top_rx_dl7_fifo_rd_en_UNCONNECTED ),
        .rx_dl7_hs_dp({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_dl7_lp_dn(1'b0),
        .rx_dl7_lp_dp(1'b0),
        .s_axi_aclk(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(1'b0),
        .s_axi_arready(\NLW_slave_rx.dphy_rx_fab_top_s_axi_arready_UNCONNECTED ),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(\NLW_slave_rx.dphy_rx_fab_top_s_axi_awready_UNCONNECTED ),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(\NLW_slave_rx.dphy_rx_fab_top_s_axi_bresp_UNCONNECTED [1:0]),
        .s_axi_bvalid(\NLW_slave_rx.dphy_rx_fab_top_s_axi_bvalid_UNCONNECTED ),
        .s_axi_rdata(\NLW_slave_rx.dphy_rx_fab_top_s_axi_rdata_UNCONNECTED [31:0]),
        .s_axi_rready(1'b0),
        .s_axi_rresp(\NLW_slave_rx.dphy_rx_fab_top_s_axi_rresp_UNCONNECTED [1:0]),
        .s_axi_rvalid(\NLW_slave_rx.dphy_rx_fab_top_s_axi_rvalid_UNCONNECTED ),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(\NLW_slave_rx.dphy_rx_fab_top_s_axi_wready_UNCONNECTED ),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sys_rst_byteclk_out(\NLW_slave_rx.dphy_rx_fab_top_sys_rst_byteclk_out_UNCONNECTED ),
        .system_rst_byteclk_in(1'b0),
        .system_rst_in(system_rst_out),
        .system_rst_phybyteclk_in(1'b0),
        .tap_comp_res(\NLW_slave_rx.dphy_rx_fab_top_tap_comp_res_UNCONNECTED [7:0]),
        .tap_comp_rst(1'b0),
        .tap_val_dyn_out(\NLW_slave_rx.dphy_rx_fab_top_tap_val_dyn_out_UNCONNECTED [63:0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS")) 
    \slave_rx.rxbyteclkhs_buf 
       (.CE(1'b1),
        .I(div4_clk_t),
        .O(rxbyteclkhs));
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_init_val = "1'b1" *) 
  (* c_mtbf_stages = "5'b00010" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_rst_sync__1 \slave_rx.u_core_rst_coreclk_sync_rx_i 
       (.prmry_in(core_rst),
        .scndry_aclk(core_clk),
        .scndry_out(core_rst_coreclk_sync));
  (* ASSERT_ALL_RESETS = "3'b001" *) 
  (* DPHY_PRESET = "CSI2RX_XLNX" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MMCM_USED = "TRUE" *) 
  (* MTBF_SYNC_STAGES = "3" *) 
  (* RELEASE_MMCM_RESET = "3'b010" *) 
  (* RELEASE_TXPLL_RESET = "3'b011" *) 
  (* RESET_FSM_DONE = "3'b101" *) 
  (* RST_BEGIN = "3'b000" *) 
  (* STABLE_CLK_PERIOD = "5.000000" *) 
  (* TIME_OUT = "40000" *) 
  (* TXPLL_USED = "FALSE" *) 
  (* WAIT_FOR_ENABLE = "3'b100" *) 
  (* WATCHDOG_TIMEOUT = "200000" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_rst_logic \slave_rx.u_rx_rst_logic 
       (.cl_enable(cl_enable_sync),
        .core_clk(core_clk),
        .core_rst(core_rst_coreclk_sync),
        .dphyen(1'b1),
        .mmcm_lock(1'b1),
        .mmcm_rst(\NLW_slave_rx.u_rx_rst_logic_mmcm_rst_UNCONNECTED ),
        .phy_rdy(1'b1),
        .phy_rst(phy_reset_w),
        .srst(1'b0),
        .system_rst(system_rst_out),
        .system_rst_byteclk(\NLW_slave_rx.u_rx_rst_logic_system_rst_byteclk_UNCONNECTED ),
        .system_rst_div4clk(\NLW_slave_rx.u_rx_rst_logic_system_rst_div4clk_UNCONNECTED ),
        .system_rst_escclk(\NLW_slave_rx.u_rx_rst_logic_system_rst_escclk_UNCONNECTED ),
        .txpll_lock(1'b1),
        .txpll_rst(\NLW_slave_rx.u_rx_rst_logic_txpll_rst_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_bs_ctrl_top" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_bs_ctrl_top
   (dly_rdy_bsc0,
    riu_valid_bg0_bs0,
    n0_vtc_rdy_out,
    riu_rd_data_bg0_bs0,
    rx_bs0_rx_bit_ctrl_in,
    rx_bs2_rx_bit_ctrl_in,
    rx_bs4_rx_bit_ctrl_in,
    rx_bs0_tx_bit_ctrl_in,
    rx_bs2_tx_bit_ctrl_in,
    rx_bs4_tx_bit_ctrl_in,
    core_rdy,
    n0_en_vtc,
    shared_pll0_clkoutphy_out,
    riu_clk,
    riu_nibble_sel_bg0,
    riu_wr_en_bg0,
    bsctrl_rst,
    riu_wr_data_bg0,
    rx_bs0_rx_bit_ctrl_out,
    rx_bs2_rx_bit_ctrl_out,
    rx_bs4_rx_bit_ctrl_out,
    rx_bs0_tx_bit_ctrl_out,
    rx_bs2_tx_bit_ctrl_out,
    rx_bs4_tx_bit_ctrl_out,
    out,
    riu_addr_bg0);
  output dly_rdy_bsc0;
  output riu_valid_bg0_bs0;
  output n0_vtc_rdy_out;
  output [15:0]riu_rd_data_bg0_bs0;
  output [39:0]rx_bs0_rx_bit_ctrl_in;
  output [39:0]rx_bs2_rx_bit_ctrl_in;
  output [39:0]rx_bs4_rx_bit_ctrl_in;
  output [39:0]rx_bs0_tx_bit_ctrl_in;
  output [39:0]rx_bs2_tx_bit_ctrl_in;
  output [39:0]rx_bs4_tx_bit_ctrl_in;
  output core_rdy;
  input n0_en_vtc;
  input shared_pll0_clkoutphy_out;
  input riu_clk;
  input [0:0]riu_nibble_sel_bg0;
  input riu_wr_en_bg0;
  input bsctrl_rst;
  input [15:0]riu_wr_data_bg0;
  input [39:0]rx_bs0_rx_bit_ctrl_out;
  input [39:0]rx_bs2_rx_bit_ctrl_out;
  input [39:0]rx_bs4_rx_bit_ctrl_out;
  input [39:0]rx_bs0_tx_bit_ctrl_out;
  input [39:0]rx_bs2_tx_bit_ctrl_out;
  input [39:0]rx_bs4_tx_bit_ctrl_out;
  input [3:0]out;
  input [5:0]riu_addr_bg0;

  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_263 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_264 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_265 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_266 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_267 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_268 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_269 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_270 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_271 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_272 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_273 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_274 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_275 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_276 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_277 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_278 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_279 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_280 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_281 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_282 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_283 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_284 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_285 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_286 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_287 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_288 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_289 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_290 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_291 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_292 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_293 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_294 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_295 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_296 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_297 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_298 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_299 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_300 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_301 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_302 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_543 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_544 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_545 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_546 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_547 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_548 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_549 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_550 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_551 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_552 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_553 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_554 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_555 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_556 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_557 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_558 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_559 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_560 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_561 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_562 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_563 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_564 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_565 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_566 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_567 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_568 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_569 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_570 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_571 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_572 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_573 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_574 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_575 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_576 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_577 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_578 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_579 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_580 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_581 ;
  wire \BITSLICE_CTRL[0].bs_ctrl_inst_n_582 ;
  wire bsctrl_rst;
  wire core_rdy;
  wire dly_rdy_bsc0;
  wire n0_en_vtc;
  wire [39:0]n0_rx_bit_ctrl_in1;
  wire [39:0]n0_rx_bit_ctrl_in3;
  wire [39:0]n0_rx_bit_ctrl_in5;
  wire [39:0]n0_rx_bit_ctrl_out1;
  wire [39:0]n0_rx_bit_ctrl_out3;
  wire [39:0]n0_rx_bit_ctrl_out5;
  wire [39:0]n0_tx_bit_ctrl_in1;
  wire [39:0]n0_tx_bit_ctrl_in3;
  wire [39:0]n0_tx_bit_ctrl_in5;
  wire [39:0]n0_tx_bit_ctrl_out1;
  wire [39:0]n0_tx_bit_ctrl_out3;
  wire [39:0]n0_tx_bit_ctrl_out5;
  wire [39:0]n0_tx_bit_ctrl_out_tri;
  wire n0_vtc_rdy_out;
  wire [3:0]out;
  wire [5:0]riu_addr_bg0;
  wire riu_clk;
  wire [0:0]riu_nibble_sel_bg0;
  wire [15:0]riu_rd_data_bg0_bs0;
  wire riu_valid_bg0_bs0;
  wire [15:0]riu_wr_data_bg0;
  wire riu_wr_en_bg0;
  wire [39:0]rx_bs0_rx_bit_ctrl_in;
  wire [39:0]rx_bs0_rx_bit_ctrl_out;
  wire [39:0]rx_bs0_tx_bit_ctrl_in;
  wire [39:0]rx_bs0_tx_bit_ctrl_out;
  wire [39:0]rx_bs2_rx_bit_ctrl_in;
  wire [39:0]rx_bs2_rx_bit_ctrl_out;
  wire [39:0]rx_bs2_tx_bit_ctrl_in;
  wire [39:0]rx_bs2_tx_bit_ctrl_out;
  wire [39:0]rx_bs4_rx_bit_ctrl_in;
  wire [39:0]rx_bs4_rx_bit_ctrl_out;
  wire [39:0]rx_bs4_tx_bit_ctrl_in;
  wire [39:0]rx_bs4_tx_bit_ctrl_out;
  wire shared_pll0_clkoutphy_out;
  wire \NLW_BITSLICE_CTRL[0].bs_ctrl_inst_CLK_TO_EXT_NORTH_UNCONNECTED ;
  wire \NLW_BITSLICE_CTRL[0].bs_ctrl_inst_CLK_TO_EXT_SOUTH_UNCONNECTED ;
  wire \NLW_BITSLICE_CTRL[0].bs_ctrl_inst_NCLK_NIBBLE_OUT_UNCONNECTED ;
  wire \NLW_BITSLICE_CTRL[0].bs_ctrl_inst_PCLK_NIBBLE_OUT_UNCONNECTED ;
  wire [6:0]\NLW_BITSLICE_CTRL[0].bs_ctrl_inst_DYN_DCI_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BITSLICE_CONTROL #(
    .CTRL_CLK("EXTERNAL"),
    .DIV_MODE("DIV4"),
    .EN_CLK_TO_EXT_NORTH("DISABLE"),
    .EN_CLK_TO_EXT_SOUTH("DISABLE"),
    .EN_DYN_ODLY_MODE("FALSE"),
    .EN_OTHER_NCLK("FALSE"),
    .EN_OTHER_PCLK("FALSE"),
    .IDLY_VT_TRACK("TRUE"),
    .INV_RXCLK("FALSE"),
    .ODLY_VT_TRACK("TRUE"),
    .QDLY_VT_TRACK("TRUE"),
    .READ_IDLE_COUNT(6'h00),
    .REFCLK_SRC("PLLCLK"),
    .ROUNDING_FACTOR(16),
    .RXGATE_EXTEND("FALSE"),
    .RX_CLK_PHASE_N("SHIFT_0"),
    .RX_CLK_PHASE_P("SHIFT_0"),
    .RX_GATING("DISABLE"),
    .SELF_CALIBRATE("ENABLE"),
    .SERIAL_MODE("FALSE"),
    .SIM_DEVICE("ULTRASCALE_PLUS_ES1"),
    .SIM_SPEEDUP("FAST"),
    .SIM_VERSION(2.000000),
    .TX_GATING("DISABLE")) 
    \BITSLICE_CTRL[0].bs_ctrl_inst 
       (.CLK_FROM_EXT(1'b1),
        .CLK_TO_EXT_NORTH(\NLW_BITSLICE_CTRL[0].bs_ctrl_inst_CLK_TO_EXT_NORTH_UNCONNECTED ),
        .CLK_TO_EXT_SOUTH(\NLW_BITSLICE_CTRL[0].bs_ctrl_inst_CLK_TO_EXT_SOUTH_UNCONNECTED ),
        .DLY_RDY(dly_rdy_bsc0),
        .DYN_DCI(\NLW_BITSLICE_CTRL[0].bs_ctrl_inst_DYN_DCI_UNCONNECTED [6:0]),
        .EN_VTC(n0_en_vtc),
        .NCLK_NIBBLE_IN(1'b0),
        .NCLK_NIBBLE_OUT(\NLW_BITSLICE_CTRL[0].bs_ctrl_inst_NCLK_NIBBLE_OUT_UNCONNECTED ),
        .PCLK_NIBBLE_IN(1'b0),
        .PCLK_NIBBLE_OUT(\NLW_BITSLICE_CTRL[0].bs_ctrl_inst_PCLK_NIBBLE_OUT_UNCONNECTED ),
        .PHY_RDCS0({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDCS1({1'b0,1'b0,1'b0,1'b0}),
        .PHY_RDEN({1'b1,1'b1,1'b1,1'b1}),
        .PHY_WRCS0({1'b0,1'b0,1'b0,1'b0}),
        .PHY_WRCS1({1'b0,1'b0,1'b0,1'b0}),
        .PLL_CLK(shared_pll0_clkoutphy_out),
        .REFCLK(1'b0),
        .RIU_ADDR(riu_addr_bg0),
        .RIU_CLK(riu_clk),
        .RIU_NIBBLE_SEL(riu_nibble_sel_bg0),
        .RIU_RD_DATA(riu_rd_data_bg0_bs0),
        .RIU_VALID(riu_valid_bg0_bs0),
        .RIU_WR_DATA(riu_wr_data_bg0),
        .RIU_WR_EN(riu_wr_en_bg0),
        .RST(bsctrl_rst),
        .RX_BIT_CTRL_IN0(rx_bs0_rx_bit_ctrl_out),
        .RX_BIT_CTRL_IN1(n0_rx_bit_ctrl_in1),
        .RX_BIT_CTRL_IN2(rx_bs2_rx_bit_ctrl_out),
        .RX_BIT_CTRL_IN3(n0_rx_bit_ctrl_in3),
        .RX_BIT_CTRL_IN4(rx_bs4_rx_bit_ctrl_out),
        .RX_BIT_CTRL_IN5(n0_rx_bit_ctrl_in5),
        .RX_BIT_CTRL_IN6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RX_BIT_CTRL_OUT0(rx_bs0_rx_bit_ctrl_in),
        .RX_BIT_CTRL_OUT1(n0_rx_bit_ctrl_out1),
        .RX_BIT_CTRL_OUT2(rx_bs2_rx_bit_ctrl_in),
        .RX_BIT_CTRL_OUT3(n0_rx_bit_ctrl_out3),
        .RX_BIT_CTRL_OUT4(rx_bs4_rx_bit_ctrl_in),
        .RX_BIT_CTRL_OUT5(n0_rx_bit_ctrl_out5),
        .RX_BIT_CTRL_OUT6({\BITSLICE_CTRL[0].bs_ctrl_inst_n_263 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_264 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_265 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_266 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_267 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_268 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_269 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_270 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_271 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_272 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_273 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_274 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_275 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_276 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_277 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_278 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_279 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_280 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_281 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_282 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_283 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_284 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_285 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_286 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_287 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_288 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_289 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_290 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_291 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_292 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_293 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_294 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_295 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_296 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_297 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_298 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_299 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_300 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_301 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_302 }),
        .TBYTE_IN(out),
        .TX_BIT_CTRL_IN0(rx_bs0_tx_bit_ctrl_out),
        .TX_BIT_CTRL_IN1(n0_tx_bit_ctrl_in1),
        .TX_BIT_CTRL_IN2(rx_bs2_tx_bit_ctrl_out),
        .TX_BIT_CTRL_IN3(n0_tx_bit_ctrl_in3),
        .TX_BIT_CTRL_IN4(rx_bs4_tx_bit_ctrl_out),
        .TX_BIT_CTRL_IN5(n0_tx_bit_ctrl_in5),
        .TX_BIT_CTRL_IN6({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_BIT_CTRL_IN_TRI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX_BIT_CTRL_OUT0(rx_bs0_tx_bit_ctrl_in),
        .TX_BIT_CTRL_OUT1(n0_tx_bit_ctrl_out1),
        .TX_BIT_CTRL_OUT2(rx_bs2_tx_bit_ctrl_in),
        .TX_BIT_CTRL_OUT3(n0_tx_bit_ctrl_out3),
        .TX_BIT_CTRL_OUT4(rx_bs4_tx_bit_ctrl_in),
        .TX_BIT_CTRL_OUT5(n0_tx_bit_ctrl_out5),
        .TX_BIT_CTRL_OUT6({\BITSLICE_CTRL[0].bs_ctrl_inst_n_543 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_544 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_545 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_546 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_547 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_548 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_549 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_550 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_551 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_552 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_553 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_554 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_555 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_556 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_557 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_558 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_559 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_560 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_561 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_562 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_563 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_564 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_565 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_566 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_567 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_568 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_569 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_570 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_571 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_572 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_573 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_574 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_575 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_576 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_577 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_578 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_579 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_580 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_581 ,\BITSLICE_CTRL[0].bs_ctrl_inst_n_582 }),
        .TX_BIT_CTRL_OUT_TRI(n0_tx_bit_ctrl_out_tri),
        .VTC_RDY(n0_vtc_rdy_out));
  LUT2 #(
    .INIT(4'h8)) 
    \CORE_RDY_GEN[0].core_rdy_r[0]_i_1 
       (.I0(n0_vtc_rdy_out),
        .I1(dly_rdy_bsc0),
        .O(core_rdy));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_bs_top" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_bs_top
   (fifo_empty_0,
    fifo_wr_clk_0,
    rx_bs0_rx_bit_ctrl_out,
    rx_bs0_tx_bit_ctrl_out,
    data_to_fabric_clk_rxp,
    fifo_empty_2,
    rx_bs2_rx_bit_ctrl_out,
    rx_bs2_tx_bit_ctrl_out,
    data_to_fabric_data_rxp0,
    fifo_empty_4,
    rx_bs4_rx_bit_ctrl_out,
    rx_bs4_tx_bit_ctrl_out,
    data_to_fabric_data_rxp1,
    data_to_bs_out,
    fifo_rd_clk_0,
    fifo_rd_en_0,
    rx_bs_rst_in,
    rx_bs_rst_dly_ext_in,
    rx_bs0_rx_bit_ctrl_in,
    rx_bs0_tx_bit_ctrl_in,
    fifo_rd_clk_2,
    fifo_rd_en_2,
    rx_bs2_rx_bit_ctrl_in,
    rx_bs2_tx_bit_ctrl_in,
    fifo_rd_clk_4,
    fifo_rd_en_4,
    rx_bs4_rx_bit_ctrl_in,
    rx_bs4_tx_bit_ctrl_in);
  output fifo_empty_0;
  output fifo_wr_clk_0;
  output [39:0]rx_bs0_rx_bit_ctrl_out;
  output [39:0]rx_bs0_tx_bit_ctrl_out;
  output [7:0]data_to_fabric_clk_rxp;
  output fifo_empty_2;
  output [39:0]rx_bs2_rx_bit_ctrl_out;
  output [39:0]rx_bs2_tx_bit_ctrl_out;
  output [7:0]data_to_fabric_data_rxp0;
  output fifo_empty_4;
  output [39:0]rx_bs4_rx_bit_ctrl_out;
  output [39:0]rx_bs4_tx_bit_ctrl_out;
  output [7:0]data_to_fabric_data_rxp1;
  input [2:0]data_to_bs_out;
  input fifo_rd_clk_0;
  input fifo_rd_en_0;
  input [2:0]rx_bs_rst_in;
  input [2:0]rx_bs_rst_dly_ext_in;
  input [39:0]rx_bs0_rx_bit_ctrl_in;
  input [39:0]rx_bs0_tx_bit_ctrl_in;
  input fifo_rd_clk_2;
  input fifo_rd_en_2;
  input [39:0]rx_bs2_rx_bit_ctrl_in;
  input [39:0]rx_bs2_tx_bit_ctrl_in;
  input fifo_rd_clk_4;
  input fifo_rd_en_4;
  input [39:0]rx_bs4_rx_bit_ctrl_in;
  input [39:0]rx_bs4_tx_bit_ctrl_in;

  wire [2:0]data_to_bs_out;
  wire [7:0]data_to_fabric_clk_rxp;
  wire [7:0]data_to_fabric_data_rxp0;
  wire [7:0]data_to_fabric_data_rxp1;
  wire fifo_empty_0;
  wire fifo_empty_2;
  wire fifo_empty_4;
  wire fifo_rd_clk_0;
  wire fifo_rd_clk_2;
  wire fifo_rd_clk_4;
  wire fifo_rd_en_0;
  wire fifo_rd_en_2;
  wire fifo_rd_en_4;
  wire fifo_wr_clk_0;
  wire [39:0]rx_bs0_rx_bit_ctrl_in;
  wire [39:0]rx_bs0_rx_bit_ctrl_out;
  wire [39:0]rx_bs0_tx_bit_ctrl_in;
  wire [39:0]rx_bs0_tx_bit_ctrl_out;
  wire [39:0]rx_bs2_rx_bit_ctrl_in;
  wire [39:0]rx_bs2_rx_bit_ctrl_out;
  wire [39:0]rx_bs2_tx_bit_ctrl_in;
  wire [39:0]rx_bs2_tx_bit_ctrl_out;
  wire [39:0]rx_bs4_rx_bit_ctrl_in;
  wire [39:0]rx_bs4_rx_bit_ctrl_out;
  wire [39:0]rx_bs4_tx_bit_ctrl_in;
  wire [39:0]rx_bs4_tx_bit_ctrl_out;
  wire [2:0]rx_bs_rst_dly_ext_in;
  wire [2:0]rx_bs_rst_in;

  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_rx_bs u_rx_bs
       (.data_to_bs_out(data_to_bs_out),
        .data_to_fabric_clk_rxp(data_to_fabric_clk_rxp),
        .data_to_fabric_data_rxp0(data_to_fabric_data_rxp0),
        .data_to_fabric_data_rxp1(data_to_fabric_data_rxp1),
        .fifo_empty_0(fifo_empty_0),
        .fifo_empty_2(fifo_empty_2),
        .fifo_empty_4(fifo_empty_4),
        .fifo_rd_clk_0(fifo_rd_clk_0),
        .fifo_rd_clk_2(fifo_rd_clk_2),
        .fifo_rd_clk_4(fifo_rd_clk_4),
        .fifo_rd_en_0(fifo_rd_en_0),
        .fifo_rd_en_2(fifo_rd_en_2),
        .fifo_rd_en_4(fifo_rd_en_4),
        .fifo_wr_clk_0(fifo_wr_clk_0),
        .rx_bs0_rx_bit_ctrl_in(rx_bs0_rx_bit_ctrl_in),
        .rx_bs0_rx_bit_ctrl_out(rx_bs0_rx_bit_ctrl_out),
        .rx_bs0_tx_bit_ctrl_in(rx_bs0_tx_bit_ctrl_in),
        .rx_bs0_tx_bit_ctrl_out(rx_bs0_tx_bit_ctrl_out),
        .rx_bs2_rx_bit_ctrl_in(rx_bs2_rx_bit_ctrl_in),
        .rx_bs2_rx_bit_ctrl_out(rx_bs2_rx_bit_ctrl_out),
        .rx_bs2_tx_bit_ctrl_in(rx_bs2_tx_bit_ctrl_in),
        .rx_bs2_tx_bit_ctrl_out(rx_bs2_tx_bit_ctrl_out),
        .rx_bs4_rx_bit_ctrl_in(rx_bs4_rx_bit_ctrl_in),
        .rx_bs4_rx_bit_ctrl_out(rx_bs4_rx_bit_ctrl_out),
        .rx_bs4_tx_bit_ctrl_in(rx_bs4_tx_bit_ctrl_in),
        .rx_bs4_tx_bit_ctrl_out(rx_bs4_tx_bit_ctrl_out),
        .rx_bs_rst_dly_ext_in(rx_bs_rst_dly_ext_in),
        .rx_bs_rst_in(rx_bs_rst_in));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_clk_rst_top" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_clk_rst_top
   (pll0_locked_out,
    out,
    \bs_rst_int_r_reg[4] ,
    pll0_clkout0_out,
    bsctrl_rst,
    in0,
    n0_en_vtc,
    shared_pll0_clkoutphy_out,
    drdy,
    do_out,
    rst,
    bs_rst_dphy_in,
    multi_intf_lock_in,
    dly_rdy_bsc0,
    riu_clk,
    n0_vtc_rdy_out,
    en_vtc_bsc0,
    clk,
    dclk,
    den,
    dwe,
    di,
    daddr);
  output pll0_locked_out;
  output [2:0]out;
  output [2:0]\bs_rst_int_r_reg[4] ;
  output pll0_clkout0_out;
  output bsctrl_rst;
  output in0;
  output n0_en_vtc;
  output shared_pll0_clkoutphy_out;
  output drdy;
  output [15:0]do_out;
  input rst;
  input bs_rst_dphy_in;
  input multi_intf_lock_in;
  input dly_rdy_bsc0;
  input riu_clk;
  input n0_vtc_rdy_out;
  input en_vtc_bsc0;
  input clk;
  input dclk;
  input den;
  input dwe;
  input [15:0]di;
  input [6:0]daddr;

  wire bs_rst_dphy_in;
  wire [2:0]\bs_rst_int_r_reg[4] ;
  wire bsctrl_rst;
  wire clk;
  wire [6:0]daddr;
  wire dclk;
  wire den;
  wire [15:0]di;
  wire dly_rdy_bsc0;
  wire [15:0]do_out;
  wire drdy;
  wire dwe;
  wire en_vtc_bsc0;
  wire in0;
  wire multi_intf_lock_in;
  wire n0_en_vtc;
  wire n0_vtc_rdy_out;
  wire [2:0]out;
  wire pll0_clkout0_out;
  wire pll0_clkoutphy_en;
  wire pll0_locked_out;
  wire pll1_rst;
  wire riu_clk;
  wire rst;
  wire shared_pll0_clkoutphy_out;

  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_clk_scheme clk_scheme_inst
       (.clk(clk),
        .daddr(daddr),
        .dclk(dclk),
        .den(den),
        .di(di),
        .do_out(do_out),
        .drdy(drdy),
        .dwe(dwe),
        .pll0_clkout0_out(pll0_clkout0_out),
        .pll0_clkoutphy_en_in(pll0_clkoutphy_en),
        .pll0_locked_out(pll0_locked_out),
        .pll0_rst_in(pll1_rst),
        .shared_pll0_clkoutphy_out(shared_pll0_clkoutphy_out));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_rst_scheme rst_scheme_inst
       (.\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 (bsctrl_rst),
        .bs_rst_dphy_in(bs_rst_dphy_in),
        .\bs_rst_int_r_reg[4]_0 (\bs_rst_int_r_reg[4] ),
        .dly_rdy_bsc0(dly_rdy_bsc0),
        .en_vtc_bsc0(en_vtc_bsc0),
        .in0(in0),
        .multi_intf_lock_in(multi_intf_lock_in),
        .n0_en_vtc(n0_en_vtc),
        .n0_vtc_rdy_out(n0_vtc_rdy_out),
        .out(out),
        .pll0_clkout0_out(pll0_clkout0_out),
        .pll0_clkoutphy_en_in(pll0_clkoutphy_en),
        .pll0_locked_out(pll0_locked_out),
        .pll0_rst_in(pll1_rst),
        .riu_clk(riu_clk),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_clk_scheme" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_clk_scheme
   (shared_pll0_clkoutphy_out,
    drdy,
    pll0_locked_out,
    do_out,
    pll0_clkout0_out,
    clk,
    pll0_clkoutphy_en_in,
    dclk,
    den,
    dwe,
    pll0_rst_in,
    di,
    daddr);
  output shared_pll0_clkoutphy_out;
  output drdy;
  output pll0_locked_out;
  output [15:0]do_out;
  output pll0_clkout0_out;
  input clk;
  input pll0_clkoutphy_en_in;
  input dclk;
  input den;
  input dwe;
  input pll0_rst_in;
  input [15:0]di;
  input [6:0]daddr;

  wire \GEN_PLL_IN_IP_USP.pll0_clkout0 ;
  wire \GEN_PLL_IN_IP_USP.pll0_clkout1_buf_n_0 ;
  wire clk;
  wire [6:0]daddr;
  wire dclk;
  wire den;
  wire [15:0]di;
  wire [15:0]do_out;
  wire drdy;
  wire dwe;
  wire pll0_clkout0_out;
  wire pll0_clkout1;
  wire pll0_clkoutphy_en_in;
  wire pll0_locked_out;
  wire pll0_rst_in;
  wire shared_pll0_clkoutphy_out;
  wire \NLW_GEN_PLL_IN_IP_USP.plle4_adv_pll0_inst_CLKFBIN_UNCONNECTED ;
  wire \NLW_GEN_PLL_IN_IP_USP.plle4_adv_pll0_inst_CLKFBOUT_UNCONNECTED ;
  wire \NLW_GEN_PLL_IN_IP_USP.plle4_adv_pll0_inst_CLKOUT0B_UNCONNECTED ;
  wire \NLW_GEN_PLL_IN_IP_USP.plle4_adv_pll0_inst_CLKOUT1B_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    \GEN_PLL_IN_IP_USP.pll0_clkout0_buf 
       (.CE(pll0_locked_out),
        .I(\GEN_PLL_IN_IP_USP.pll0_clkout0 ),
        .O(pll0_clkout0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFGCE #(
    .CE_TYPE("SYNC"),
    .IS_CE_INVERTED(1'b0),
    .IS_I_INVERTED(1'b0),
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    \GEN_PLL_IN_IP_USP.pll0_clkout1_buf 
       (.CE(pll0_locked_out),
        .I(pll0_clkout1),
        .O(\GEN_PLL_IN_IP_USP.pll0_clkout1_buf_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  PLLE4_ADV #(
    .CLKFBOUT_MULT(15),
    .CLKFBOUT_PHASE(0.000000),
    .CLKIN_PERIOD(5.000000),
    .CLKOUT0_DIVIDE(8),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUTPHY_MODE("VCO"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(2),
    .IS_CLKFBIN_INVERTED(1'b0),
    .IS_CLKIN_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER(0.010000),
    .STARTUP_WAIT("FALSE")) 
    \GEN_PLL_IN_IP_USP.plle4_adv_pll0_inst 
       (.CLKFBIN(\NLW_GEN_PLL_IN_IP_USP.plle4_adv_pll0_inst_CLKFBIN_UNCONNECTED ),
        .CLKFBOUT(\NLW_GEN_PLL_IN_IP_USP.plle4_adv_pll0_inst_CLKFBOUT_UNCONNECTED ),
        .CLKIN(clk),
        .CLKOUT0(\GEN_PLL_IN_IP_USP.pll0_clkout0 ),
        .CLKOUT0B(\NLW_GEN_PLL_IN_IP_USP.plle4_adv_pll0_inst_CLKOUT0B_UNCONNECTED ),
        .CLKOUT1(pll0_clkout1),
        .CLKOUT1B(\NLW_GEN_PLL_IN_IP_USP.plle4_adv_pll0_inst_CLKOUT1B_UNCONNECTED ),
        .CLKOUTPHY(shared_pll0_clkoutphy_out),
        .CLKOUTPHYEN(pll0_clkoutphy_en_in),
        .DADDR(daddr),
        .DCLK(dclk),
        .DEN(den),
        .DI(di),
        .DO(do_out),
        .DRDY(drdy),
        .DWE(dwe),
        .LOCKED(pll0_locked_out),
        .PWRDWN(1'b0),
        .RST(pll0_rst_in));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_rst_scheme" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_rst_scheme
   (out,
    \bs_rst_int_r_reg[4]_0 ,
    \GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ,
    pll0_clkoutphy_en_in,
    pll0_rst_in,
    in0,
    n0_en_vtc,
    pll0_locked_out,
    rst,
    bs_rst_dphy_in,
    multi_intf_lock_in,
    dly_rdy_bsc0,
    riu_clk,
    pll0_clkout0_out,
    n0_vtc_rdy_out,
    en_vtc_bsc0);
  output [2:0]out;
  output [2:0]\bs_rst_int_r_reg[4]_0 ;
  output \GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ;
  output pll0_clkoutphy_en_in;
  output pll0_rst_in;
  output in0;
  output n0_en_vtc;
  input pll0_locked_out;
  input rst;
  input bs_rst_dphy_in;
  input multi_intf_lock_in;
  input dly_rdy_bsc0;
  input riu_clk;
  input pll0_clkout0_out;
  input n0_vtc_rdy_out;
  input en_vtc_bsc0;

  wire \GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_i_3_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state[0]_i_2_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.pll0_rst_i_1_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.pll0_rst_i_2_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.pll0_rst_i_3_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.pll0_rst_i_4_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_3_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_4_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_5_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_6_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_7_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_i_2_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_4_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_7_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_8_n_0 ;
  wire all_bsc_dly_rdy;
  wire bs_dly_rst;
  (* RTL_KEEP = "true" *) wire [51:0]bs_dly_rst_r;
  wire bs_rst_dphy_in;
  wire bs_rst_dphy_sync;
  (* RTL_KEEP = "true" *) wire [51:0]bs_rst_int_r;
  (* RTL_KEEP = "true" *) wire [51:0]bs_rst_r;
  wire bsc_en_vtc;
  wire bsc_en_vtc_2;
  wire dly_rdy_bsc0;
  wire en_vtc_bsc0;
  wire [8:0]hssio_state;
  wire \hssio_state_inferred__3/i___0_n_0 ;
  wire \hssio_state_inferred__3/i___1_n_0 ;
  wire \hssio_state_inferred__3/i___2_n_0 ;
  wire \hssio_state_inferred__3/i___3_n_0 ;
  wire \hssio_state_inferred__3/i__n_0 ;
  wire in0;
  wire locked;
  wire multi_intf_lock_in;
  wire n0_en_vtc;
  wire n0_vtc_rdy_out;
  wire [6:0]p_0_in;
  wire [8:0]p_0_in_0;
  wire pll0_clkout0_out;
  wire pll0_clkoutphy_en_in;
  wire \pll0_fab_clk_cntr[6]_i_3_n_0 ;
  wire \pll0_fab_clk_cntr[6]_i_4_n_0 ;
  wire [6:6]pll0_fab_clk_cntr_reg;
  wire [5:0]pll0_fab_clk_cntr_reg__0;
  wire pll0_locked_out;
  wire pll0_rst_in;
  wire riu_clk;
  wire rst;
  wire rst_in_sync;
  wire rst_seq_done;
  wire sync_cell_dly_rdy_inst_n_3;
  wire sync_cell_dly_rdy_inst_n_4;
  wire sync_cell_pll0lock_inst_n_10;
  wire sync_cell_pll0lock_inst_n_7;
  wire sync_cell_pll0lock_inst_n_8;
  wire sync_cell_pll0lock_inst_n_9;
  wire sync_cell_start_fab_cntr_pll0_inst_n_0;
  wire sync_cell_wait_pll0_fab_timeout_inst_n_2;
  wire sync_cell_wait_pll0_fab_timeout_inst_n_3;
  wire sync_cell_wait_pll0_fab_timeout_inst_n_4;
  wire timeout_cntr;
  wire \timeout_cntr[0]_i_3_n_0 ;
  wire \timeout_cntr[0]_i_4_n_0 ;
  wire \timeout_cntr[0]_i_5_n_0 ;
  wire \timeout_cntr[0]_i_6_n_0 ;
  wire [19:0]timeout_cntr_reg;
  wire \timeout_cntr_reg[0]_i_2_n_0 ;
  wire \timeout_cntr_reg[0]_i_2_n_1 ;
  wire \timeout_cntr_reg[0]_i_2_n_10 ;
  wire \timeout_cntr_reg[0]_i_2_n_11 ;
  wire \timeout_cntr_reg[0]_i_2_n_12 ;
  wire \timeout_cntr_reg[0]_i_2_n_13 ;
  wire \timeout_cntr_reg[0]_i_2_n_14 ;
  wire \timeout_cntr_reg[0]_i_2_n_15 ;
  wire \timeout_cntr_reg[0]_i_2_n_2 ;
  wire \timeout_cntr_reg[0]_i_2_n_3 ;
  wire \timeout_cntr_reg[0]_i_2_n_4 ;
  wire \timeout_cntr_reg[0]_i_2_n_5 ;
  wire \timeout_cntr_reg[0]_i_2_n_6 ;
  wire \timeout_cntr_reg[0]_i_2_n_7 ;
  wire \timeout_cntr_reg[0]_i_2_n_8 ;
  wire \timeout_cntr_reg[0]_i_2_n_9 ;
  wire \timeout_cntr_reg[16]_i_1_n_12 ;
  wire \timeout_cntr_reg[16]_i_1_n_13 ;
  wire \timeout_cntr_reg[16]_i_1_n_14 ;
  wire \timeout_cntr_reg[16]_i_1_n_15 ;
  wire \timeout_cntr_reg[16]_i_1_n_5 ;
  wire \timeout_cntr_reg[16]_i_1_n_6 ;
  wire \timeout_cntr_reg[16]_i_1_n_7 ;
  wire \timeout_cntr_reg[8]_i_1_n_0 ;
  wire \timeout_cntr_reg[8]_i_1_n_1 ;
  wire \timeout_cntr_reg[8]_i_1_n_10 ;
  wire \timeout_cntr_reg[8]_i_1_n_11 ;
  wire \timeout_cntr_reg[8]_i_1_n_12 ;
  wire \timeout_cntr_reg[8]_i_1_n_13 ;
  wire \timeout_cntr_reg[8]_i_1_n_14 ;
  wire \timeout_cntr_reg[8]_i_1_n_15 ;
  wire \timeout_cntr_reg[8]_i_1_n_2 ;
  wire \timeout_cntr_reg[8]_i_1_n_3 ;
  wire \timeout_cntr_reg[8]_i_1_n_4 ;
  wire \timeout_cntr_reg[8]_i_1_n_5 ;
  wire \timeout_cntr_reg[8]_i_1_n_6 ;
  wire \timeout_cntr_reg[8]_i_1_n_7 ;
  wire \timeout_cntr_reg[8]_i_1_n_8 ;
  wire \timeout_cntr_reg[8]_i_1_n_9 ;
  wire timeout_cntr_rst;
  wire timeout_cntr_rst_1;
  wire wait_pll0_x_fab_clk_timeout;
  wire wait_pll0_x_fab_clk_timeout_sync;
  wire wait_pll_lock_timeout_i_10_n_0;
  wire wait_pll_lock_timeout_i_1_n_0;
  wire wait_pll_lock_timeout_i_2_n_0;
  wire wait_pll_lock_timeout_i_3_n_0;
  wire wait_pll_lock_timeout_i_4_n_0;
  wire wait_pll_lock_timeout_i_5_n_0;
  wire wait_pll_lock_timeout_i_6_n_0;
  wire wait_pll_lock_timeout_i_7_n_0;
  wire wait_pll_lock_timeout_i_8_n_0;
  wire wait_pll_lock_timeout_i_9_n_0;
  wire wait_pll_lock_timeout_reg_n_0;
  wire [7:3]\NLW_timeout_cntr_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_timeout_cntr_reg[16]_i_1_O_UNCONNECTED ;

  assign \bs_rst_int_r_reg[4]_0 [2] = bs_rst_int_r[4];
  assign \bs_rst_int_r_reg[4]_0 [1] = bs_rst_int_r[2];
  assign \bs_rst_int_r_reg[4]_0 [0] = bs_rst_int_r[0];
  assign out[2] = bs_dly_rst_r[4];
  assign out[1] = bs_dly_rst_r[2];
  assign out[0] = bs_dly_rst_r[0];
  LUT3 #(
    .INIT(8'hB8)) 
    \BITSLICE_CTRL[0].bs_ctrl_inst_i_1 
       (.I0(en_vtc_bsc0),
        .I1(in0),
        .I2(bsc_en_vtc),
        .O(n0_en_vtc));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \GEN_RIU_NOT_FROM_PLL.bs_dly_rst_i_2 
       (.I0(hssio_state[4]),
        .I1(bsc_en_vtc_2),
        .I2(hssio_state[8]),
        .I3(hssio_state[3]),
        .I4(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_4_n_0 ),
        .O(bs_dly_rst));
  FDSE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_cell_pll0lock_inst_n_10),
        .Q(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .S(rst_in_sync));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_i_3 
       (.I0(hssio_state[3]),
        .I1(hssio_state[8]),
        .O(\GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_cell_dly_rdy_inst_n_4),
        .Q(bsc_en_vtc),
        .R(rst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[0]_i_2 
       (.I0(hssio_state[8]),
        .I1(hssio_state[3]),
        .I2(bsc_en_vtc_2),
        .I3(hssio_state[4]),
        .O(\GEN_RIU_NOT_FROM_PLL.hssio_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[1]_i_1 
       (.I0(hssio_state[0]),
        .I1(\hssio_state_inferred__3/i___3_n_0 ),
        .O(p_0_in_0[1]));
  (* FSM_ENCODED_STATES = "WAIT_FOR_PLL_LOCK:000000100,WAIT_FOR_BSC_VTC_RDY:010000000,ASSERT_BSC_EN_VTC:001000000,DEASSERT_PLL_RESET:000000010,ASSERT_PLL_CLKOUTPHYEN:000010000,ASSERT_ALL_RESETS:000000001,WAIT_FOR_BSC_DLY_RDY:000100000,DEASSERT_BS_RESETS:000001000,RESET_SEQ_DONE:100000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(p_0_in_0[0]),
        .Q(hssio_state[0]),
        .S(rst_in_sync));
  (* FSM_ENCODED_STATES = "WAIT_FOR_PLL_LOCK:000000100,WAIT_FOR_BSC_VTC_RDY:010000000,ASSERT_BSC_EN_VTC:001000000,DEASSERT_PLL_RESET:000000010,ASSERT_PLL_CLKOUTPHYEN:000010000,ASSERT_ALL_RESETS:000000001,WAIT_FOR_BSC_DLY_RDY:000100000,DEASSERT_BS_RESETS:000001000,RESET_SEQ_DONE:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[1] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(p_0_in_0[1]),
        .Q(hssio_state[1]),
        .R(rst_in_sync));
  (* FSM_ENCODED_STATES = "WAIT_FOR_PLL_LOCK:000000100,WAIT_FOR_BSC_VTC_RDY:010000000,ASSERT_BSC_EN_VTC:001000000,DEASSERT_PLL_RESET:000000010,ASSERT_PLL_CLKOUTPHYEN:000010000,ASSERT_ALL_RESETS:000000001,WAIT_FOR_BSC_DLY_RDY:000100000,DEASSERT_BS_RESETS:000001000,RESET_SEQ_DONE:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[2] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(p_0_in_0[2]),
        .Q(hssio_state[2]),
        .R(rst_in_sync));
  (* FSM_ENCODED_STATES = "WAIT_FOR_PLL_LOCK:000000100,WAIT_FOR_BSC_VTC_RDY:010000000,ASSERT_BSC_EN_VTC:001000000,DEASSERT_PLL_RESET:000000010,ASSERT_PLL_CLKOUTPHYEN:000010000,ASSERT_ALL_RESETS:000000001,WAIT_FOR_BSC_DLY_RDY:000100000,DEASSERT_BS_RESETS:000001000,RESET_SEQ_DONE:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(p_0_in_0[3]),
        .Q(hssio_state[3]),
        .R(rst_in_sync));
  (* FSM_ENCODED_STATES = "WAIT_FOR_PLL_LOCK:000000100,WAIT_FOR_BSC_VTC_RDY:010000000,ASSERT_BSC_EN_VTC:001000000,DEASSERT_PLL_RESET:000000010,ASSERT_PLL_CLKOUTPHYEN:000010000,ASSERT_ALL_RESETS:000000001,WAIT_FOR_BSC_DLY_RDY:000100000,DEASSERT_BS_RESETS:000001000,RESET_SEQ_DONE:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(p_0_in_0[4]),
        .Q(hssio_state[4]),
        .R(rst_in_sync));
  (* FSM_ENCODED_STATES = "WAIT_FOR_PLL_LOCK:000000100,WAIT_FOR_BSC_VTC_RDY:010000000,ASSERT_BSC_EN_VTC:001000000,DEASSERT_PLL_RESET:000000010,ASSERT_PLL_CLKOUTPHYEN:000010000,ASSERT_ALL_RESETS:000000001,WAIT_FOR_BSC_DLY_RDY:000100000,DEASSERT_BS_RESETS:000001000,RESET_SEQ_DONE:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(p_0_in_0[5]),
        .Q(hssio_state[5]),
        .R(rst_in_sync));
  (* FSM_ENCODED_STATES = "WAIT_FOR_PLL_LOCK:000000100,WAIT_FOR_BSC_VTC_RDY:010000000,ASSERT_BSC_EN_VTC:001000000,DEASSERT_PLL_RESET:000000010,ASSERT_PLL_CLKOUTPHYEN:000010000,ASSERT_ALL_RESETS:000000001,WAIT_FOR_BSC_DLY_RDY:000100000,DEASSERT_BS_RESETS:000001000,RESET_SEQ_DONE:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(p_0_in_0[6]),
        .Q(bsc_en_vtc_2),
        .R(rst_in_sync));
  (* FSM_ENCODED_STATES = "WAIT_FOR_PLL_LOCK:000000100,WAIT_FOR_BSC_VTC_RDY:010000000,ASSERT_BSC_EN_VTC:001000000,DEASSERT_PLL_RESET:000000010,ASSERT_PLL_CLKOUTPHYEN:000010000,ASSERT_ALL_RESETS:000000001,WAIT_FOR_BSC_DLY_RDY:000100000,DEASSERT_BS_RESETS:000001000,RESET_SEQ_DONE:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[7] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(p_0_in_0[7]),
        .Q(hssio_state[7]),
        .R(rst_in_sync));
  (* FSM_ENCODED_STATES = "WAIT_FOR_PLL_LOCK:000000100,WAIT_FOR_BSC_VTC_RDY:010000000,ASSERT_BSC_EN_VTC:001000000,DEASSERT_PLL_RESET:000000010,ASSERT_PLL_CLKOUTPHYEN:000010000,ASSERT_ALL_RESETS:000000001,WAIT_FOR_BSC_DLY_RDY:000100000,DEASSERT_BS_RESETS:000001000,RESET_SEQ_DONE:100000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[8] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(p_0_in_0[8]),
        .Q(hssio_state[8]),
        .R(rst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_cell_wait_pll0_fab_timeout_inst_n_3),
        .Q(pll0_clkoutphy_en_in),
        .R(rst_in_sync));
  LUT6 #(
    .INIT(64'hFDFDFDFFFDFDFD00)) 
    \GEN_RIU_NOT_FROM_PLL.pll0_rst_i_1 
       (.I0(hssio_state[1]),
        .I1(\GEN_RIU_NOT_FROM_PLL.pll0_rst_i_2_n_0 ),
        .I2(hssio_state[0]),
        .I3(\GEN_RIU_NOT_FROM_PLL.pll0_rst_i_3_n_0 ),
        .I4(\GEN_RIU_NOT_FROM_PLL.pll0_rst_i_4_n_0 ),
        .I5(pll0_rst_in),
        .O(\GEN_RIU_NOT_FROM_PLL.pll0_rst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \GEN_RIU_NOT_FROM_PLL.pll0_rst_i_2 
       (.I0(hssio_state[2]),
        .I1(hssio_state[8]),
        .I2(hssio_state[3]),
        .I3(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_8_n_0 ),
        .I4(hssio_state[7]),
        .I5(hssio_state[5]),
        .O(\GEN_RIU_NOT_FROM_PLL.pll0_rst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEEF)) 
    \GEN_RIU_NOT_FROM_PLL.pll0_rst_i_3 
       (.I0(hssio_state[0]),
        .I1(hssio_state[1]),
        .I2(hssio_state[2]),
        .I3(\GEN_RIU_NOT_FROM_PLL.hssio_state[0]_i_2_n_0 ),
        .I4(hssio_state[5]),
        .I5(hssio_state[7]),
        .O(\GEN_RIU_NOT_FROM_PLL.pll0_rst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8F888)) 
    \GEN_RIU_NOT_FROM_PLL.pll0_rst_i_4 
       (.I0(hssio_state[5]),
        .I1(hssio_state[7]),
        .I2(hssio_state[3]),
        .I3(hssio_state[8]),
        .I4(bsc_en_vtc_2),
        .I5(hssio_state[4]),
        .O(\GEN_RIU_NOT_FROM_PLL.pll0_rst_i_4_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.pll0_rst_reg 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.pll0_rst_i_1_n_0 ),
        .Q(pll0_rst_in),
        .S(rst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_2 
       (.I0(hssio_state[4]),
        .I1(bsc_en_vtc_2),
        .I2(hssio_state[8]),
        .I3(hssio_state[3]),
        .I4(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_4_n_0 ),
        .O(rst_seq_done));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEE9)) 
    \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_3 
       (.I0(hssio_state[1]),
        .I1(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_5_n_0 ),
        .I2(hssio_state[2]),
        .I3(\GEN_RIU_NOT_FROM_PLL.hssio_state[0]_i_2_n_0 ),
        .I4(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_6_n_0 ),
        .I5(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_7_n_0 ),
        .O(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_4 
       (.I0(hssio_state[2]),
        .I1(hssio_state[5]),
        .I2(hssio_state[7]),
        .I3(hssio_state[1]),
        .I4(hssio_state[0]),
        .O(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_5 
       (.I0(hssio_state[5]),
        .I1(hssio_state[7]),
        .O(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_6 
       (.I0(hssio_state[5]),
        .I1(hssio_state[7]),
        .I2(hssio_state[4]),
        .I3(bsc_en_vtc_2),
        .I4(hssio_state[0]),
        .O(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFEE0)) 
    \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_7 
       (.I0(hssio_state[4]),
        .I1(bsc_en_vtc_2),
        .I2(hssio_state[8]),
        .I3(hssio_state[3]),
        .O(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.rst_seq_done_reg 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_cell_pll0lock_inst_n_9),
        .Q(in0),
        .R(rst_in_sync));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_i_2 
       (.I0(hssio_state[1]),
        .I1(hssio_state[0]),
        .I2(hssio_state[5]),
        .I3(hssio_state[7]),
        .I4(\GEN_RIU_NOT_FROM_PLL.hssio_state[0]_i_2_n_0 ),
        .I5(hssio_state[2]),
        .O(\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_i_2_n_0 ));
  FDRE \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_cell_wait_pll0_fab_timeout_inst_n_4),
        .Q(\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_n_0 ),
        .R(rst_in_sync));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFECE0)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_4 
       (.I0(bsc_en_vtc_2),
        .I1(hssio_state[4]),
        .I2(hssio_state[3]),
        .I3(hssio_state[5]),
        .I4(hssio_state[8]),
        .I5(wait_pll_lock_timeout_i_4_n_0),
        .O(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_7 
       (.I0(hssio_state[7]),
        .I1(hssio_state[5]),
        .I2(hssio_state[2]),
        .O(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_8 
       (.I0(hssio_state[4]),
        .I1(bsc_en_vtc_2),
        .O(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_8_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_cell_pll0lock_inst_n_8),
        .Q(timeout_cntr_rst),
        .S(rst_in_sync));
  FDRE \bs_rst_gen[0].bs_dly_rst_r_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[0].bs_rst_r_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[10].bs_dly_rst_r_reg[10] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[10]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[10].bs_rst_r_reg[10] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[10]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[11].bs_dly_rst_r_reg[11] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[11]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[11].bs_rst_r_reg[11] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[11]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[12].bs_dly_rst_r_reg[12] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[12]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[12].bs_rst_r_reg[12] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[12]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[13].bs_dly_rst_r_reg[13] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[13]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[13].bs_rst_r_reg[13] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[13]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[14].bs_dly_rst_r_reg[14] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[14]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[14].bs_rst_r_reg[14] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[14]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[15].bs_dly_rst_r_reg[15] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[15]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[15].bs_rst_r_reg[15] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[15]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[16].bs_dly_rst_r_reg[16] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[16]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[16].bs_rst_r_reg[16] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[16]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[17].bs_dly_rst_r_reg[17] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[17]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[17].bs_rst_r_reg[17] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[17]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[18].bs_dly_rst_r_reg[18] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[18]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[18].bs_rst_r_reg[18] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[18]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[19].bs_dly_rst_r_reg[19] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[19]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[19].bs_rst_r_reg[19] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[19]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[1].bs_dly_rst_r_reg[1] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[1].bs_rst_r_reg[1] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[20].bs_dly_rst_r_reg[20] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[20]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[20].bs_rst_r_reg[20] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[20]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[21].bs_dly_rst_r_reg[21] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[21]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[21].bs_rst_r_reg[21] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[21]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[22].bs_dly_rst_r_reg[22] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[22]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[22].bs_rst_r_reg[22] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[22]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[23].bs_dly_rst_r_reg[23] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[23]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[23].bs_rst_r_reg[23] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[23]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[24].bs_dly_rst_r_reg[24] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[24]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[24].bs_rst_r_reg[24] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[24]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[25].bs_dly_rst_r_reg[25] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[25]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[25].bs_rst_r_reg[25] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[25]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[26].bs_dly_rst_r_reg[26] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[26]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[26].bs_rst_r_reg[26] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[26]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[27].bs_dly_rst_r_reg[27] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[27]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[27].bs_rst_r_reg[27] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[27]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[28].bs_dly_rst_r_reg[28] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[28]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[28].bs_rst_r_reg[28] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[28]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[29].bs_dly_rst_r_reg[29] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[29]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[29].bs_rst_r_reg[29] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[29]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[2].bs_dly_rst_r_reg[2] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[2].bs_rst_r_reg[2] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[30].bs_dly_rst_r_reg[30] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[30]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[30].bs_rst_r_reg[30] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[30]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[31].bs_dly_rst_r_reg[31] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[31]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[31].bs_rst_r_reg[31] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[31]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[32].bs_dly_rst_r_reg[32] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[32]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[32].bs_rst_r_reg[32] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[32]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[33].bs_dly_rst_r_reg[33] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[33]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[33].bs_rst_r_reg[33] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[33]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[34].bs_dly_rst_r_reg[34] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[34]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[34].bs_rst_r_reg[34] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[34]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[35].bs_dly_rst_r_reg[35] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[35]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[35].bs_rst_r_reg[35] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[35]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[36].bs_dly_rst_r_reg[36] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[36]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[36].bs_rst_r_reg[36] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[36]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[37].bs_dly_rst_r_reg[37] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[37]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[37].bs_rst_r_reg[37] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[37]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[38].bs_dly_rst_r_reg[38] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[38]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[38].bs_rst_r_reg[38] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[38]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[39].bs_dly_rst_r_reg[39] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[39]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[39].bs_rst_r_reg[39] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[39]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[3].bs_dly_rst_r_reg[3] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[3].bs_rst_r_reg[3] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[40].bs_dly_rst_r_reg[40] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[40]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[40].bs_rst_r_reg[40] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[40]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[41].bs_dly_rst_r_reg[41] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[41]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[41].bs_rst_r_reg[41] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[41]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[42].bs_dly_rst_r_reg[42] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[42]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[42].bs_rst_r_reg[42] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[42]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[43].bs_dly_rst_r_reg[43] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[43]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[43].bs_rst_r_reg[43] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[43]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[44].bs_dly_rst_r_reg[44] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[44]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[44].bs_rst_r_reg[44] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[44]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[45].bs_dly_rst_r_reg[45] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[45]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[45].bs_rst_r_reg[45] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[45]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[46].bs_dly_rst_r_reg[46] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[46]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[46].bs_rst_r_reg[46] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[46]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[47].bs_dly_rst_r_reg[47] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[47]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[47].bs_rst_r_reg[47] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[47]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[48].bs_dly_rst_r_reg[48] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[48]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[48].bs_rst_r_reg[48] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[48]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[49].bs_dly_rst_r_reg[49] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[49]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[49].bs_rst_r_reg[49] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[49]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[4].bs_dly_rst_r_reg[4] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[4].bs_rst_r_reg[4] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[50].bs_dly_rst_r_reg[50] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[50]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[50].bs_rst_r_reg[50] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[50]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[51].bs_dly_rst_r_reg[51] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[51]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[51].bs_rst_r_reg[51] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[51]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[5].bs_dly_rst_r_reg[5] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[5]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[5].bs_rst_r_reg[5] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[5]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[6].bs_dly_rst_r_reg[6] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[6]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[6].bs_rst_r_reg[6] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[6]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[7].bs_dly_rst_r_reg[7] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[7]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[7].bs_rst_r_reg[7] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[7]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[8].bs_dly_rst_r_reg[8] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[8]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[8].bs_rst_r_reg[8] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[8]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[9].bs_dly_rst_r_reg[9] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_dly_rst_r[9]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \bs_rst_gen[9].bs_rst_r_reg[9] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .Q(bs_rst_r[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[0]),
        .Q(bs_rst_int_r[0]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[10] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[10]),
        .Q(bs_rst_int_r[10]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[11] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[11]),
        .Q(bs_rst_int_r[11]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[12] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[12]),
        .Q(bs_rst_int_r[12]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[13] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[13]),
        .Q(bs_rst_int_r[13]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[14] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[14]),
        .Q(bs_rst_int_r[14]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[15] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[15]),
        .Q(bs_rst_int_r[15]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[16] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[16]),
        .Q(bs_rst_int_r[16]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[17] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[17]),
        .Q(bs_rst_int_r[17]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[18] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[18]),
        .Q(bs_rst_int_r[18]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[19] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[19]),
        .Q(bs_rst_int_r[19]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[1] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[1]),
        .Q(bs_rst_int_r[1]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[20] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[20]),
        .Q(bs_rst_int_r[20]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[21] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[21]),
        .Q(bs_rst_int_r[21]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[22] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[22]),
        .Q(bs_rst_int_r[22]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[23] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[23]),
        .Q(bs_rst_int_r[23]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[24] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[24]),
        .Q(bs_rst_int_r[24]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[25] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[25]),
        .Q(bs_rst_int_r[25]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[26] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[26]),
        .Q(bs_rst_int_r[26]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[27] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[27]),
        .Q(bs_rst_int_r[27]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[28] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[28]),
        .Q(bs_rst_int_r[28]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[29] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[29]),
        .Q(bs_rst_int_r[29]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[2] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[2]),
        .Q(bs_rst_int_r[2]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[30] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[30]),
        .Q(bs_rst_int_r[30]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[31] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[31]),
        .Q(bs_rst_int_r[31]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[32] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[32]),
        .Q(bs_rst_int_r[32]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[33] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[33]),
        .Q(bs_rst_int_r[33]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[34] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[34]),
        .Q(bs_rst_int_r[34]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[35] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[35]),
        .Q(bs_rst_int_r[35]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[36] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[36]),
        .Q(bs_rst_int_r[36]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[37] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[37]),
        .Q(bs_rst_int_r[37]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[38] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[38]),
        .Q(bs_rst_int_r[38]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[39] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[39]),
        .Q(bs_rst_int_r[39]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[3] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[3]),
        .Q(bs_rst_int_r[3]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[40] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[40]),
        .Q(bs_rst_int_r[40]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[41] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[41]),
        .Q(bs_rst_int_r[41]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[42] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[42]),
        .Q(bs_rst_int_r[42]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[43] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[43]),
        .Q(bs_rst_int_r[43]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[44] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[44]),
        .Q(bs_rst_int_r[44]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[45] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[45]),
        .Q(bs_rst_int_r[45]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[46] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[46]),
        .Q(bs_rst_int_r[46]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[47] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[47]),
        .Q(bs_rst_int_r[47]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[48] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[48]),
        .Q(bs_rst_int_r[48]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[49] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[49]),
        .Q(bs_rst_int_r[49]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[4] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[4]),
        .Q(bs_rst_int_r[4]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[50] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[50]),
        .Q(bs_rst_int_r[50]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[51] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[51]),
        .Q(bs_rst_int_r[51]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[5] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[5]),
        .Q(bs_rst_int_r[5]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[6] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[6]),
        .Q(bs_rst_int_r[6]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[7] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[7]),
        .Q(bs_rst_int_r[7]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[8] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[8]),
        .Q(bs_rst_int_r[8]),
        .S(bs_rst_dphy_sync));
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b0)) 
    \bs_rst_int_r_reg[9] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_r[9]),
        .Q(bs_rst_int_r[9]),
        .S(bs_rst_dphy_sync));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \hssio_state_inferred__3/i_ 
       (.I0(hssio_state[0]),
        .I1(hssio_state[1]),
        .I2(hssio_state[2]),
        .I3(hssio_state[3]),
        .O(\hssio_state_inferred__3/i__n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hFEE8)) 
    \hssio_state_inferred__3/i___0 
       (.I0(hssio_state[0]),
        .I1(hssio_state[1]),
        .I2(hssio_state[2]),
        .I3(hssio_state[3]),
        .O(\hssio_state_inferred__3/i___0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h00010116)) 
    \hssio_state_inferred__3/i___1 
       (.I0(hssio_state[4]),
        .I1(hssio_state[5]),
        .I2(bsc_en_vtc_2),
        .I3(hssio_state[7]),
        .I4(hssio_state[8]),
        .O(\hssio_state_inferred__3/i___1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFEFEE8)) 
    \hssio_state_inferred__3/i___2 
       (.I0(hssio_state[4]),
        .I1(hssio_state[5]),
        .I2(bsc_en_vtc_2),
        .I3(hssio_state[7]),
        .I4(hssio_state[8]),
        .O(\hssio_state_inferred__3/i___2_n_0 ));
  LUT4 #(
    .INIT(16'h0012)) 
    \hssio_state_inferred__3/i___3 
       (.I0(\hssio_state_inferred__3/i__n_0 ),
        .I1(\hssio_state_inferred__3/i___0_n_0 ),
        .I2(\hssio_state_inferred__3/i___1_n_0 ),
        .I3(\hssio_state_inferred__3/i___2_n_0 ),
        .O(\hssio_state_inferred__3/i___3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pll0_fab_clk_cntr[0]_i_1 
       (.I0(pll0_fab_clk_cntr_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pll0_fab_clk_cntr[1]_i_1 
       (.I0(pll0_fab_clk_cntr_reg__0[0]),
        .I1(pll0_fab_clk_cntr_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pll0_fab_clk_cntr[2]_i_1 
       (.I0(pll0_fab_clk_cntr_reg__0[0]),
        .I1(pll0_fab_clk_cntr_reg__0[1]),
        .I2(pll0_fab_clk_cntr_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pll0_fab_clk_cntr[3]_i_1 
       (.I0(pll0_fab_clk_cntr_reg__0[1]),
        .I1(pll0_fab_clk_cntr_reg__0[0]),
        .I2(pll0_fab_clk_cntr_reg__0[2]),
        .I3(pll0_fab_clk_cntr_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \pll0_fab_clk_cntr[4]_i_1 
       (.I0(pll0_fab_clk_cntr_reg__0[2]),
        .I1(pll0_fab_clk_cntr_reg__0[0]),
        .I2(pll0_fab_clk_cntr_reg__0[1]),
        .I3(pll0_fab_clk_cntr_reg__0[3]),
        .I4(pll0_fab_clk_cntr_reg__0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \pll0_fab_clk_cntr[5]_i_1 
       (.I0(pll0_fab_clk_cntr_reg__0[3]),
        .I1(pll0_fab_clk_cntr_reg__0[1]),
        .I2(pll0_fab_clk_cntr_reg__0[0]),
        .I3(pll0_fab_clk_cntr_reg__0[2]),
        .I4(pll0_fab_clk_cntr_reg__0[4]),
        .I5(pll0_fab_clk_cntr_reg__0[5]),
        .O(p_0_in[5]));
  LUT3 #(
    .INIT(8'h78)) 
    \pll0_fab_clk_cntr[6]_i_2 
       (.I0(\pll0_fab_clk_cntr[6]_i_4_n_0 ),
        .I1(pll0_fab_clk_cntr_reg__0[5]),
        .I2(pll0_fab_clk_cntr_reg),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \pll0_fab_clk_cntr[6]_i_3 
       (.I0(pll0_fab_clk_cntr_reg__0[3]),
        .I1(pll0_fab_clk_cntr_reg__0[2]),
        .I2(pll0_fab_clk_cntr_reg__0[5]),
        .I3(pll0_fab_clk_cntr_reg__0[4]),
        .I4(pll0_fab_clk_cntr_reg__0[1]),
        .I5(pll0_fab_clk_cntr_reg__0[0]),
        .O(\pll0_fab_clk_cntr[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \pll0_fab_clk_cntr[6]_i_4 
       (.I0(pll0_fab_clk_cntr_reg__0[4]),
        .I1(pll0_fab_clk_cntr_reg__0[2]),
        .I2(pll0_fab_clk_cntr_reg__0[0]),
        .I3(pll0_fab_clk_cntr_reg__0[1]),
        .I4(pll0_fab_clk_cntr_reg__0[3]),
        .O(\pll0_fab_clk_cntr[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pll0_fab_clk_cntr_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(pll0_fab_clk_cntr_reg__0[0]),
        .R(sync_cell_start_fab_cntr_pll0_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \pll0_fab_clk_cntr_reg[1] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pll0_fab_clk_cntr_reg__0[1]),
        .R(sync_cell_start_fab_cntr_pll0_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \pll0_fab_clk_cntr_reg[2] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(pll0_fab_clk_cntr_reg__0[2]),
        .R(sync_cell_start_fab_cntr_pll0_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \pll0_fab_clk_cntr_reg[3] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(pll0_fab_clk_cntr_reg__0[3]),
        .R(sync_cell_start_fab_cntr_pll0_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \pll0_fab_clk_cntr_reg[4] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(pll0_fab_clk_cntr_reg__0[4]),
        .R(sync_cell_start_fab_cntr_pll0_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \pll0_fab_clk_cntr_reg[5] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(pll0_fab_clk_cntr_reg__0[5]),
        .R(sync_cell_start_fab_cntr_pll0_inst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \pll0_fab_clk_cntr_reg[6] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(pll0_fab_clk_cntr_reg),
        .R(sync_cell_start_fab_cntr_pll0_inst_n_0));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_0 sync_cell_bs_rst_dphy_inst
       (.SS(bs_rst_dphy_sync),
        .bs_rst_dphy_in(bs_rst_dphy_in),
        .riu_clk(riu_clk));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_1 sync_cell_dly_rdy_inst
       (.D(p_0_in_0[6]),
        .\GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg (\GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_i_3_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg_0 (\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_4_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg_1 (\GEN_RIU_NOT_FROM_PLL.pll0_rst_i_2_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] (wait_pll_lock_timeout_reg_n_0),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6] (sync_cell_dly_rdy_inst_n_4),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_0 (\hssio_state_inferred__3/i___3_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_1 (locked),
        .\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg (\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_7_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_0 (\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_8_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_1 (sync_cell_wait_pll0_fab_timeout_inst_n_2),
        .\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_2 (\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_6_n_0 ),
        .Q({hssio_state[7],bsc_en_vtc_2,hssio_state[5:4],hssio_state[2:0]}),
        .bsc_en_vtc(bsc_en_vtc),
        .dly_rdy_bsc0(dly_rdy_bsc0),
        .n0_vtc_rdy_out(n0_vtc_rdy_out),
        .out(all_bsc_dly_rdy),
        .riu_clk(riu_clk),
        .\sync_flop_1_reg[0]_0 (sync_cell_dly_rdy_inst_n_3),
        .timeout_cntr_rst_1(timeout_cntr_rst_1));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_2 sync_cell_mult_intf_lock_inst
       (.multi_intf_lock_in(multi_intf_lock_in),
        .riu_clk(riu_clk));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_3 sync_cell_pll0lock_inst
       (.D({p_0_in_0[8:7],p_0_in_0[4:2],p_0_in_0[0]}),
        .\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg (\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg_0 ),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] (\GEN_RIU_NOT_FROM_PLL.hssio_state[0]_i_2_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0]_0 (sync_cell_dly_rdy_inst_n_3),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[2] (wait_pll_lock_timeout_reg_n_0),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3] (sync_cell_pll0lock_inst_n_7),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3]_0 (\hssio_state_inferred__3/i___3_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] (wait_pll0_x_fab_clk_timeout_sync),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[8] (all_bsc_dly_rdy),
        .\GEN_RIU_NOT_FROM_PLL.rst_seq_done_reg (\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_3_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg (\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_4_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg (sync_cell_pll0lock_inst_n_8),
        .\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_0 (\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_8_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_1 (\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_5_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_2 (\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_4_n_0 ),
        .Q({hssio_state[8:7],bsc_en_vtc_2,hssio_state[5:1]}),
        .bs_dly_rst(bs_dly_rst),
        .in0(in0),
        .n0_vtc_rdy_out(n0_vtc_rdy_out),
        .out(locked),
        .pll0_locked_out(pll0_locked_out),
        .riu_clk(riu_clk),
        .rst_seq_done(rst_seq_done),
        .\sync_flop_1_reg[0]_0 (sync_cell_pll0lock_inst_n_9),
        .\sync_flop_1_reg[0]_1 (sync_cell_pll0lock_inst_n_10),
        .timeout_cntr_rst(timeout_cntr_rst),
        .timeout_cntr_rst_1(timeout_cntr_rst_1));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_4 sync_cell_rst_inst
       (.out(rst_in_sync),
        .riu_clk(riu_clk),
        .rst(rst));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_5 sync_cell_start_fab_cntr_pll0_inst
       (.Q(pll0_fab_clk_cntr_reg),
        .SR(sync_cell_start_fab_cntr_pll0_inst_n_0),
        .in0(\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_n_0 ),
        .pll0_clkout0_out(pll0_clkout0_out),
        .\pll0_fab_clk_cntr_reg[0] (\pll0_fab_clk_cntr[6]_i_3_n_0 ));
  bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_6 sync_cell_wait_pll0_fab_timeout_inst
       (.D(p_0_in_0[5]),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] (sync_cell_wait_pll0_fab_timeout_inst_n_4),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5] (\hssio_state_inferred__3/i___3_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5]_0 (all_bsc_dly_rdy),
        .\GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg (locked),
        .\GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg_0 (\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_4_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg_1 (\GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_3_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg (\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_i_2_n_0 ),
        .\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_0 (sync_cell_pll0lock_inst_n_7),
        .\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_1 (\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_n_0 ),
        .Q({hssio_state[8],bsc_en_vtc_2,hssio_state[5:3]}),
        .in0(wait_pll0_x_fab_clk_timeout),
        .out(wait_pll0_x_fab_clk_timeout_sync),
        .pll0_clkoutphy_en_in(pll0_clkoutphy_en_in),
        .riu_clk(riu_clk),
        .\sync_flop_1_reg[0]_0 (sync_cell_wait_pll0_fab_timeout_inst_n_2),
        .\sync_flop_1_reg[0]_1 (sync_cell_wait_pll0_fab_timeout_inst_n_3));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timeout_cntr[0]_i_1 
       (.I0(timeout_cntr_reg[0]),
        .I1(timeout_cntr_reg[1]),
        .I2(\timeout_cntr[0]_i_3_n_0 ),
        .I3(\timeout_cntr[0]_i_4_n_0 ),
        .I4(\timeout_cntr[0]_i_5_n_0 ),
        .O(timeout_cntr));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \timeout_cntr[0]_i_3 
       (.I0(timeout_cntr_reg[6]),
        .I1(timeout_cntr_reg[7]),
        .I2(timeout_cntr_reg[4]),
        .I3(timeout_cntr_reg[5]),
        .I4(timeout_cntr_reg[3]),
        .I5(timeout_cntr_reg[2]),
        .O(\timeout_cntr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \timeout_cntr[0]_i_4 
       (.I0(timeout_cntr_reg[18]),
        .I1(timeout_cntr_reg[19]),
        .I2(timeout_cntr_reg[16]),
        .I3(timeout_cntr_reg[17]),
        .I4(timeout_cntr_reg[15]),
        .I5(timeout_cntr_reg[14]),
        .O(\timeout_cntr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \timeout_cntr[0]_i_5 
       (.I0(timeout_cntr_reg[12]),
        .I1(timeout_cntr_reg[13]),
        .I2(timeout_cntr_reg[10]),
        .I3(timeout_cntr_reg[11]),
        .I4(timeout_cntr_reg[8]),
        .I5(timeout_cntr_reg[9]),
        .O(\timeout_cntr[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \timeout_cntr[0]_i_6 
       (.I0(timeout_cntr_reg[0]),
        .O(\timeout_cntr[0]_i_6_n_0 ));
  FDRE \timeout_cntr_reg[0] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[0]_i_2_n_15 ),
        .Q(timeout_cntr_reg[0]),
        .R(timeout_cntr_rst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \timeout_cntr_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\timeout_cntr_reg[0]_i_2_n_0 ,\timeout_cntr_reg[0]_i_2_n_1 ,\timeout_cntr_reg[0]_i_2_n_2 ,\timeout_cntr_reg[0]_i_2_n_3 ,\timeout_cntr_reg[0]_i_2_n_4 ,\timeout_cntr_reg[0]_i_2_n_5 ,\timeout_cntr_reg[0]_i_2_n_6 ,\timeout_cntr_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\timeout_cntr_reg[0]_i_2_n_8 ,\timeout_cntr_reg[0]_i_2_n_9 ,\timeout_cntr_reg[0]_i_2_n_10 ,\timeout_cntr_reg[0]_i_2_n_11 ,\timeout_cntr_reg[0]_i_2_n_12 ,\timeout_cntr_reg[0]_i_2_n_13 ,\timeout_cntr_reg[0]_i_2_n_14 ,\timeout_cntr_reg[0]_i_2_n_15 }),
        .S({timeout_cntr_reg[7:1],\timeout_cntr[0]_i_6_n_0 }));
  FDRE \timeout_cntr_reg[10] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[8]_i_1_n_13 ),
        .Q(timeout_cntr_reg[10]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[11] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[8]_i_1_n_12 ),
        .Q(timeout_cntr_reg[11]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[12] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[8]_i_1_n_11 ),
        .Q(timeout_cntr_reg[12]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[13] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[8]_i_1_n_10 ),
        .Q(timeout_cntr_reg[13]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[14] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[8]_i_1_n_9 ),
        .Q(timeout_cntr_reg[14]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[15] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[8]_i_1_n_8 ),
        .Q(timeout_cntr_reg[15]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[16] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[16]_i_1_n_15 ),
        .Q(timeout_cntr_reg[16]),
        .R(timeout_cntr_rst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \timeout_cntr_reg[16]_i_1 
       (.CI(\timeout_cntr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_timeout_cntr_reg[16]_i_1_CO_UNCONNECTED [7:3],\timeout_cntr_reg[16]_i_1_n_5 ,\timeout_cntr_reg[16]_i_1_n_6 ,\timeout_cntr_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_timeout_cntr_reg[16]_i_1_O_UNCONNECTED [7:4],\timeout_cntr_reg[16]_i_1_n_12 ,\timeout_cntr_reg[16]_i_1_n_13 ,\timeout_cntr_reg[16]_i_1_n_14 ,\timeout_cntr_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,timeout_cntr_reg[19:16]}));
  FDRE \timeout_cntr_reg[17] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[16]_i_1_n_14 ),
        .Q(timeout_cntr_reg[17]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[18] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[16]_i_1_n_13 ),
        .Q(timeout_cntr_reg[18]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[19] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[16]_i_1_n_12 ),
        .Q(timeout_cntr_reg[19]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[1] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[0]_i_2_n_14 ),
        .Q(timeout_cntr_reg[1]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[2] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[0]_i_2_n_13 ),
        .Q(timeout_cntr_reg[2]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[3] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[0]_i_2_n_12 ),
        .Q(timeout_cntr_reg[3]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[4] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[0]_i_2_n_11 ),
        .Q(timeout_cntr_reg[4]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[5] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[0]_i_2_n_10 ),
        .Q(timeout_cntr_reg[5]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[6] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[0]_i_2_n_9 ),
        .Q(timeout_cntr_reg[6]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[7] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[0]_i_2_n_8 ),
        .Q(timeout_cntr_reg[7]),
        .R(timeout_cntr_rst));
  FDRE \timeout_cntr_reg[8] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[8]_i_1_n_15 ),
        .Q(timeout_cntr_reg[8]),
        .R(timeout_cntr_rst));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \timeout_cntr_reg[8]_i_1 
       (.CI(\timeout_cntr_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\timeout_cntr_reg[8]_i_1_n_0 ,\timeout_cntr_reg[8]_i_1_n_1 ,\timeout_cntr_reg[8]_i_1_n_2 ,\timeout_cntr_reg[8]_i_1_n_3 ,\timeout_cntr_reg[8]_i_1_n_4 ,\timeout_cntr_reg[8]_i_1_n_5 ,\timeout_cntr_reg[8]_i_1_n_6 ,\timeout_cntr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\timeout_cntr_reg[8]_i_1_n_8 ,\timeout_cntr_reg[8]_i_1_n_9 ,\timeout_cntr_reg[8]_i_1_n_10 ,\timeout_cntr_reg[8]_i_1_n_11 ,\timeout_cntr_reg[8]_i_1_n_12 ,\timeout_cntr_reg[8]_i_1_n_13 ,\timeout_cntr_reg[8]_i_1_n_14 ,\timeout_cntr_reg[8]_i_1_n_15 }),
        .S(timeout_cntr_reg[15:8]));
  FDRE \timeout_cntr_reg[9] 
       (.C(riu_clk),
        .CE(timeout_cntr),
        .D(\timeout_cntr_reg[8]_i_1_n_14 ),
        .Q(timeout_cntr_reg[9]),
        .R(timeout_cntr_rst));
  FDRE wait_pll0_x_fab_clk_timeout_reg
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(pll0_fab_clk_cntr_reg),
        .Q(wait_pll0_x_fab_clk_timeout),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000022222E22)) 
    wait_pll_lock_timeout_i_1
       (.I0(wait_pll_lock_timeout_reg_n_0),
        .I1(wait_pll_lock_timeout_i_2_n_0),
        .I2(wait_pll_lock_timeout_i_3_n_0),
        .I3(hssio_state[2]),
        .I4(wait_pll_lock_timeout_i_4_n_0),
        .I5(timeout_cntr_rst),
        .O(wait_pll_lock_timeout_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hFEEF)) 
    wait_pll_lock_timeout_i_10
       (.I0(hssio_state[1]),
        .I1(hssio_state[0]),
        .I2(hssio_state[7]),
        .I3(hssio_state[5]),
        .O(wait_pll_lock_timeout_i_10_n_0));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    wait_pll_lock_timeout_i_2
       (.I0(wait_pll_lock_timeout_i_5_n_0),
        .I1(wait_pll_lock_timeout_i_6_n_0),
        .I2(wait_pll_lock_timeout_i_7_n_0),
        .I3(wait_pll_lock_timeout_i_8_n_0),
        .I4(wait_pll_lock_timeout_i_9_n_0),
        .I5(wait_pll_lock_timeout_i_10_n_0),
        .O(wait_pll_lock_timeout_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    wait_pll_lock_timeout_i_3
       (.I0(hssio_state[7]),
        .I1(hssio_state[5]),
        .I2(hssio_state[4]),
        .I3(bsc_en_vtc_2),
        .I4(hssio_state[3]),
        .I5(hssio_state[8]),
        .O(wait_pll_lock_timeout_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'hE)) 
    wait_pll_lock_timeout_i_4
       (.I0(hssio_state[0]),
        .I1(hssio_state[1]),
        .O(wait_pll_lock_timeout_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    wait_pll_lock_timeout_i_5
       (.I0(timeout_cntr_reg[0]),
        .I1(timeout_cntr_reg[1]),
        .O(wait_pll_lock_timeout_i_5_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    wait_pll_lock_timeout_i_6
       (.I0(timeout_cntr_reg[16]),
        .I1(timeout_cntr_reg[17]),
        .I2(timeout_cntr_reg[14]),
        .I3(timeout_cntr_reg[15]),
        .I4(timeout_cntr_reg[19]),
        .I5(timeout_cntr_reg[18]),
        .O(wait_pll_lock_timeout_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    wait_pll_lock_timeout_i_7
       (.I0(timeout_cntr_reg[4]),
        .I1(timeout_cntr_reg[5]),
        .I2(timeout_cntr_reg[2]),
        .I3(timeout_cntr_reg[3]),
        .I4(timeout_cntr_reg[7]),
        .I5(timeout_cntr_reg[6]),
        .O(wait_pll_lock_timeout_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    wait_pll_lock_timeout_i_8
       (.I0(timeout_cntr_reg[10]),
        .I1(timeout_cntr_reg[11]),
        .I2(timeout_cntr_reg[9]),
        .I3(timeout_cntr_reg[8]),
        .I4(timeout_cntr_reg[13]),
        .I5(timeout_cntr_reg[12]),
        .O(wait_pll_lock_timeout_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    wait_pll_lock_timeout_i_9
       (.I0(hssio_state[4]),
        .I1(bsc_en_vtc_2),
        .I2(hssio_state[3]),
        .I3(hssio_state[8]),
        .I4(hssio_state[2]),
        .O(wait_pll_lock_timeout_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wait_pll_lock_timeout_reg
       (.C(riu_clk),
        .CE(1'b1),
        .D(wait_pll_lock_timeout_i_1_n_0),
        .Q(wait_pll_lock_timeout_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_rx_bs" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_rx_bs
   (fifo_empty_0,
    fifo_wr_clk_0,
    rx_bs0_rx_bit_ctrl_out,
    rx_bs0_tx_bit_ctrl_out,
    data_to_fabric_clk_rxp,
    fifo_empty_2,
    rx_bs2_rx_bit_ctrl_out,
    rx_bs2_tx_bit_ctrl_out,
    data_to_fabric_data_rxp0,
    fifo_empty_4,
    rx_bs4_rx_bit_ctrl_out,
    rx_bs4_tx_bit_ctrl_out,
    data_to_fabric_data_rxp1,
    data_to_bs_out,
    fifo_rd_clk_0,
    fifo_rd_en_0,
    rx_bs_rst_in,
    rx_bs_rst_dly_ext_in,
    rx_bs0_rx_bit_ctrl_in,
    rx_bs0_tx_bit_ctrl_in,
    fifo_rd_clk_2,
    fifo_rd_en_2,
    rx_bs2_rx_bit_ctrl_in,
    rx_bs2_tx_bit_ctrl_in,
    fifo_rd_clk_4,
    fifo_rd_en_4,
    rx_bs4_rx_bit_ctrl_in,
    rx_bs4_tx_bit_ctrl_in);
  output fifo_empty_0;
  output fifo_wr_clk_0;
  output [39:0]rx_bs0_rx_bit_ctrl_out;
  output [39:0]rx_bs0_tx_bit_ctrl_out;
  output [7:0]data_to_fabric_clk_rxp;
  output fifo_empty_2;
  output [39:0]rx_bs2_rx_bit_ctrl_out;
  output [39:0]rx_bs2_tx_bit_ctrl_out;
  output [7:0]data_to_fabric_data_rxp0;
  output fifo_empty_4;
  output [39:0]rx_bs4_rx_bit_ctrl_out;
  output [39:0]rx_bs4_tx_bit_ctrl_out;
  output [7:0]data_to_fabric_data_rxp1;
  input [2:0]data_to_bs_out;
  input fifo_rd_clk_0;
  input fifo_rd_en_0;
  input [2:0]rx_bs_rst_in;
  input [2:0]rx_bs_rst_dly_ext_in;
  input [39:0]rx_bs0_rx_bit_ctrl_in;
  input [39:0]rx_bs0_tx_bit_ctrl_in;
  input fifo_rd_clk_2;
  input fifo_rd_en_2;
  input [39:0]rx_bs2_rx_bit_ctrl_in;
  input [39:0]rx_bs2_tx_bit_ctrl_in;
  input fifo_rd_clk_4;
  input fifo_rd_en_4;
  input [39:0]rx_bs4_rx_bit_ctrl_in;
  input [39:0]rx_bs4_tx_bit_ctrl_in;

  wire [2:0]data_to_bs_out;
  wire [7:0]data_to_fabric_clk_rxp;
  wire [7:0]data_to_fabric_data_rxp0;
  wire [7:0]data_to_fabric_data_rxp1;
  wire fifo_empty_0;
  wire fifo_empty_2;
  wire fifo_empty_4;
  wire fifo_rd_clk_0;
  wire fifo_rd_clk_2;
  wire fifo_rd_clk_4;
  wire fifo_rd_en_0;
  wire fifo_rd_en_2;
  wire fifo_rd_en_4;
  wire fifo_wr_clk_0;
  wire [39:0]rx_bs0_rx_bit_ctrl_in;
  wire [39:0]rx_bs0_rx_bit_ctrl_out;
  wire [39:0]rx_bs0_tx_bit_ctrl_in;
  wire [39:0]rx_bs0_tx_bit_ctrl_out;
  wire [39:0]rx_bs2_rx_bit_ctrl_in;
  wire [39:0]rx_bs2_rx_bit_ctrl_out;
  wire [39:0]rx_bs2_tx_bit_ctrl_in;
  wire [39:0]rx_bs2_tx_bit_ctrl_out;
  wire [39:0]rx_bs4_rx_bit_ctrl_in;
  wire [39:0]rx_bs4_rx_bit_ctrl_out;
  wire [39:0]rx_bs4_tx_bit_ctrl_in;
  wire [39:0]rx_bs4_tx_bit_ctrl_out;
  wire [2:0]rx_bs_rst_dly_ext_in;
  wire [2:0]rx_bs_rst_in;
  wire [8:0]\NLW_RX_BS[0].rx_bitslice_if_bs_CNTVALUEOUT_UNCONNECTED ;
  wire [8:0]\NLW_RX_BS[0].rx_bitslice_if_bs_CNTVALUEOUT_EXT_UNCONNECTED ;
  wire \NLW_RX_BS[2].rx_bitslice_if_bs_FIFO_WRCLK_OUT_UNCONNECTED ;
  wire [8:0]\NLW_RX_BS[2].rx_bitslice_if_bs_CNTVALUEOUT_UNCONNECTED ;
  wire [8:0]\NLW_RX_BS[2].rx_bitslice_if_bs_CNTVALUEOUT_EXT_UNCONNECTED ;
  wire \NLW_RX_BS[4].rx_bitslice_if_bs_FIFO_WRCLK_OUT_UNCONNECTED ;
  wire [8:0]\NLW_RX_BS[4].rx_bitslice_if_bs_CNTVALUEOUT_UNCONNECTED ;
  wire [8:0]\NLW_RX_BS[4].rx_bitslice_if_bs_CNTVALUEOUT_EXT_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RX_BITSLICE #(
    .CASCADE("FALSE"),
    .DATA_TYPE("DATA_AND_CLOCK"),
    .DATA_WIDTH(8),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .DELAY_VALUE_EXT(0),
    .FIFO_SYNC_MODE("FALSE"),
    .IS_CLK_EXT_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_DLY_EXT_INVERTED(1'b0),
    .IS_RST_DLY_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(1500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS_ES1"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC"),
    .UPDATE_MODE_EXT("ASYNC")) 
    \RX_BS[0].rx_bitslice_if_bs 
       (.CE(1'b0),
        .CE_EXT(1'b0),
        .CLK(1'b0),
        .CLK_EXT(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEIN_EXT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_RX_BS[0].rx_bitslice_if_bs_CNTVALUEOUT_UNCONNECTED [8:0]),
        .CNTVALUEOUT_EXT(\NLW_RX_BS[0].rx_bitslice_if_bs_CNTVALUEOUT_EXT_UNCONNECTED [8:0]),
        .DATAIN(data_to_bs_out[0]),
        .EN_VTC(1'b1),
        .EN_VTC_EXT(1'b1),
        .FIFO_EMPTY(fifo_empty_0),
        .FIFO_RD_CLK(fifo_rd_clk_0),
        .FIFO_RD_EN(fifo_rd_en_0),
        .FIFO_WRCLK_OUT(fifo_wr_clk_0),
        .INC(1'b0),
        .INC_EXT(1'b0),
        .LOAD(1'b0),
        .LOAD_EXT(1'b0),
        .Q(data_to_fabric_clk_rxp),
        .RST(rx_bs_rst_in[0]),
        .RST_DLY(rx_bs_rst_dly_ext_in[0]),
        .RST_DLY_EXT(rx_bs_rst_dly_ext_in[0]),
        .RX_BIT_CTRL_IN(rx_bs0_rx_bit_ctrl_in),
        .RX_BIT_CTRL_OUT(rx_bs0_rx_bit_ctrl_out),
        .TX_BIT_CTRL_IN(rx_bs0_tx_bit_ctrl_in),
        .TX_BIT_CTRL_OUT(rx_bs0_tx_bit_ctrl_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RX_BITSLICE #(
    .CASCADE("FALSE"),
    .DATA_TYPE("DATA"),
    .DATA_WIDTH(8),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .DELAY_VALUE_EXT(0),
    .FIFO_SYNC_MODE("FALSE"),
    .IS_CLK_EXT_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_DLY_EXT_INVERTED(1'b0),
    .IS_RST_DLY_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(1500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS_ES1"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC"),
    .UPDATE_MODE_EXT("ASYNC")) 
    \RX_BS[2].rx_bitslice_if_bs 
       (.CE(1'b0),
        .CE_EXT(1'b0),
        .CLK(1'b0),
        .CLK_EXT(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEIN_EXT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_RX_BS[2].rx_bitslice_if_bs_CNTVALUEOUT_UNCONNECTED [8:0]),
        .CNTVALUEOUT_EXT(\NLW_RX_BS[2].rx_bitslice_if_bs_CNTVALUEOUT_EXT_UNCONNECTED [8:0]),
        .DATAIN(data_to_bs_out[1]),
        .EN_VTC(1'b1),
        .EN_VTC_EXT(1'b1),
        .FIFO_EMPTY(fifo_empty_2),
        .FIFO_RD_CLK(fifo_rd_clk_2),
        .FIFO_RD_EN(fifo_rd_en_2),
        .FIFO_WRCLK_OUT(\NLW_RX_BS[2].rx_bitslice_if_bs_FIFO_WRCLK_OUT_UNCONNECTED ),
        .INC(1'b0),
        .INC_EXT(1'b0),
        .LOAD(1'b0),
        .LOAD_EXT(1'b0),
        .Q(data_to_fabric_data_rxp0),
        .RST(rx_bs_rst_in[1]),
        .RST_DLY(rx_bs_rst_dly_ext_in[1]),
        .RST_DLY_EXT(rx_bs_rst_dly_ext_in[1]),
        .RX_BIT_CTRL_IN(rx_bs2_rx_bit_ctrl_in),
        .RX_BIT_CTRL_OUT(rx_bs2_rx_bit_ctrl_out),
        .TX_BIT_CTRL_IN(rx_bs2_tx_bit_ctrl_in),
        .TX_BIT_CTRL_OUT(rx_bs2_tx_bit_ctrl_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  RX_BITSLICE #(
    .CASCADE("FALSE"),
    .DATA_TYPE("DATA"),
    .DATA_WIDTH(8),
    .DELAY_FORMAT("TIME"),
    .DELAY_TYPE("FIXED"),
    .DELAY_VALUE(0),
    .DELAY_VALUE_EXT(0),
    .FIFO_SYNC_MODE("FALSE"),
    .IS_CLK_EXT_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_RST_DLY_EXT_INVERTED(1'b0),
    .IS_RST_DLY_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REFCLK_FREQUENCY(1500.000000),
    .SIM_DEVICE("ULTRASCALE_PLUS_ES1"),
    .SIM_VERSION(2.000000),
    .UPDATE_MODE("ASYNC"),
    .UPDATE_MODE_EXT("ASYNC")) 
    \RX_BS[4].rx_bitslice_if_bs 
       (.CE(1'b0),
        .CE_EXT(1'b0),
        .CLK(1'b0),
        .CLK_EXT(1'b0),
        .CNTVALUEIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEIN_EXT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CNTVALUEOUT(\NLW_RX_BS[4].rx_bitslice_if_bs_CNTVALUEOUT_UNCONNECTED [8:0]),
        .CNTVALUEOUT_EXT(\NLW_RX_BS[4].rx_bitslice_if_bs_CNTVALUEOUT_EXT_UNCONNECTED [8:0]),
        .DATAIN(data_to_bs_out[2]),
        .EN_VTC(1'b1),
        .EN_VTC_EXT(1'b1),
        .FIFO_EMPTY(fifo_empty_4),
        .FIFO_RD_CLK(fifo_rd_clk_4),
        .FIFO_RD_EN(fifo_rd_en_4),
        .FIFO_WRCLK_OUT(\NLW_RX_BS[4].rx_bitslice_if_bs_FIFO_WRCLK_OUT_UNCONNECTED ),
        .INC(1'b0),
        .INC_EXT(1'b0),
        .LOAD(1'b0),
        .LOAD_EXT(1'b0),
        .Q(data_to_fabric_data_rxp1),
        .RST(rx_bs_rst_in[2]),
        .RST_DLY(rx_bs_rst_dly_ext_in[2]),
        .RST_DLY_EXT(rx_bs_rst_dly_ext_in[2]),
        .RX_BIT_CTRL_IN(rx_bs4_rx_bit_ctrl_in),
        .RX_BIT_CTRL_OUT(rx_bs4_rx_bit_ctrl_out),
        .TX_BIT_CTRL_IN(rx_bs4_tx_bit_ctrl_in),
        .TX_BIT_CTRL_OUT(rx_bs4_tx_bit_ctrl_out));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_sync_cell" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell
   (out,
    CLK);
  input out;
  input CLK;

  wire CLK;
  wire out;
  (* async_reg = "true" *) wire sync_flop_0;
  (* async_reg = "true" *) wire sync_flop_1;
  (* async_reg = "true" *) wire sync_flop_2;
  (* async_reg = "true" *) wire sync_flop_3;
  (* async_reg = "true" *) wire sync_flop_4;
  (* async_reg = "true" *) wire sync_flop_5;
  (* async_reg = "true" *) wire sync_flop_6;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_0_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(out),
        .Q(sync_flop_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(sync_flop_0),
        .Q(sync_flop_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_2_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(sync_flop_1),
        .Q(sync_flop_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_3_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(sync_flop_2),
        .Q(sync_flop_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_4_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(sync_flop_3),
        .Q(sync_flop_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_5_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(sync_flop_4),
        .Q(sync_flop_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_6_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(sync_flop_5),
        .Q(sync_flop_6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_sync_cell" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_0
   (SS,
    bs_rst_dphy_in,
    riu_clk);
  output [0:0]SS;
  input bs_rst_dphy_in;
  input riu_clk;

  wire bs_rst_dphy_in;
  wire riu_clk;
  (* async_reg = "true" *) wire sync_flop_0;
  (* async_reg = "true" *) wire sync_flop_1;
  (* async_reg = "true" *) wire sync_flop_2;
  (* async_reg = "true" *) wire sync_flop_3;
  (* async_reg = "true" *) wire sync_flop_4;
  (* async_reg = "true" *) wire sync_flop_5;
  (* async_reg = "true" *) wire sync_flop_6;

  assign SS[0] = sync_flop_1;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_0_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(bs_rst_dphy_in),
        .Q(sync_flop_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_1_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_0),
        .Q(sync_flop_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_2_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_1),
        .Q(sync_flop_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_3_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_2),
        .Q(sync_flop_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_4_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_3),
        .Q(sync_flop_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_5_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_4),
        .Q(sync_flop_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_6_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_5),
        .Q(sync_flop_6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_sync_cell" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_1
   (out,
    D,
    timeout_cntr_rst_1,
    \sync_flop_1_reg[0]_0 ,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6] ,
    dly_rdy_bsc0,
    riu_clk,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_0 ,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_1 ,
    Q,
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg ,
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_0 ,
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_1 ,
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_2 ,
    n0_vtc_rdy_out,
    \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg ,
    \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg_0 ,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] ,
    \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg_1 ,
    bsc_en_vtc);
  output out;
  output [0:0]D;
  output timeout_cntr_rst_1;
  output \sync_flop_1_reg[0]_0 ;
  output \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6] ;
  input dly_rdy_bsc0;
  input riu_clk;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_0 ;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_1 ;
  input [6:0]Q;
  input \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg ;
  input \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_0 ;
  input \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_1 ;
  input \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_2 ;
  input n0_vtc_rdy_out;
  input \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg ;
  input \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg_0 ;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] ;
  input \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg_1 ;
  input bsc_en_vtc;

  wire [0:0]D;
  wire \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_i_2_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg ;
  wire \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg_1 ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6] ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_1 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_6_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_1 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_2 ;
  wire [6:0]Q;
  wire bsc_en_vtc;
  wire dly_rdy_bsc0;
  wire n0_vtc_rdy_out;
  wire riu_clk;
  (* async_reg = "true" *) wire sync_flop_0;
  (* async_reg = "true" *) wire sync_flop_1;
  wire \sync_flop_1_reg[0]_0 ;
  (* async_reg = "true" *) wire sync_flop_2;
  (* async_reg = "true" *) wire sync_flop_3;
  (* async_reg = "true" *) wire sync_flop_4;
  (* async_reg = "true" *) wire sync_flop_5;
  (* async_reg = "true" *) wire sync_flop_6;
  wire timeout_cntr_rst_1;

  assign out = sync_flop_1;
  LUT6 #(
    .INIT(64'hAAAAFFEFAAAA0020)) 
    \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_i_1 
       (.I0(Q[5]),
        .I1(\GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg_1 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_i_2_n_0 ),
        .I5(bsc_en_vtc),
        .O(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6] ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_i_2 
       (.I0(\GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg ),
        .I1(Q[3]),
        .I2(Q[5]),
        .I3(sync_flop_1),
        .I4(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_1 ),
        .I5(\GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_reg_0 ),
        .O(\GEN_RIU_NOT_FROM_PLL.bsc_en_vtc_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h54FF545454545454)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[0]_i_3 
       (.I0(sync_flop_1),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_1 ),
        .I4(Q[2]),
        .I5(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] ),
        .O(\sync_flop_1_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[6]_i_1 
       (.I0(sync_flop_1),
        .I1(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_0 ),
        .I2(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_1 ),
        .I3(Q[4]),
        .O(D));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEED)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_2 
       (.I0(Q[1]),
        .I1(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_6_n_0 ),
        .I2(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg ),
        .I3(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_0 ),
        .I4(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_1 ),
        .I5(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_2 ),
        .O(timeout_cntr_rst_1));
  LUT6 #(
    .INIT(64'hFEFAFCF0FEFAFC00)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_6 
       (.I0(sync_flop_1),
        .I1(n0_vtc_rdy_out),
        .I2(Q[2]),
        .I3(Q[6]),
        .I4(Q[4]),
        .I5(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[6]_1 ),
        .O(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_6_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_0_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(dly_rdy_bsc0),
        .Q(sync_flop_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_1_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_0),
        .Q(sync_flop_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_2_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_1),
        .Q(sync_flop_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_3_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_2),
        .Q(sync_flop_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_4_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_3),
        .Q(sync_flop_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_5_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_4),
        .Q(sync_flop_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_6_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_5),
        .Q(sync_flop_6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_sync_cell" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_2
   (multi_intf_lock_in,
    riu_clk);
  input multi_intf_lock_in;
  input riu_clk;

  wire multi_intf_lock_in;
  wire riu_clk;
  (* async_reg = "true" *) wire sync_flop_0;
  (* async_reg = "true" *) wire sync_flop_1;
  (* async_reg = "true" *) wire sync_flop_2;
  (* async_reg = "true" *) wire sync_flop_3;
  (* async_reg = "true" *) wire sync_flop_4;
  (* async_reg = "true" *) wire sync_flop_5;
  (* async_reg = "true" *) wire sync_flop_6;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_0_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(multi_intf_lock_in),
        .Q(sync_flop_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_1_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_0),
        .Q(sync_flop_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_2_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_1),
        .Q(sync_flop_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_3_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_2),
        .Q(sync_flop_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_4_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_3),
        .Q(sync_flop_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_5_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_4),
        .Q(sync_flop_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_6_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_5),
        .Q(sync_flop_6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_sync_cell" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_3
   (out,
    D,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3] ,
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg ,
    \sync_flop_1_reg[0]_0 ,
    \sync_flop_1_reg[0]_1 ,
    pll0_locked_out,
    riu_clk,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3]_0 ,
    Q,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] ,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[8] ,
    n0_vtc_rdy_out,
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_0 ,
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_1 ,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[2] ,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] ,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0]_0 ,
    \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg ,
    timeout_cntr_rst_1,
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_2 ,
    timeout_cntr_rst,
    rst_seq_done,
    \GEN_RIU_NOT_FROM_PLL.rst_seq_done_reg ,
    in0,
    bs_dly_rst,
    \GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg );
  output out;
  output [5:0]D;
  output \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3] ;
  output \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg ;
  output \sync_flop_1_reg[0]_0 ;
  output \sync_flop_1_reg[0]_1 ;
  input pll0_locked_out;
  input riu_clk;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3]_0 ;
  input [7:0]Q;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] ;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[8] ;
  input n0_vtc_rdy_out;
  input \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_0 ;
  input \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_1 ;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[2] ;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] ;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0]_0 ;
  input \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg ;
  input timeout_cntr_rst_1;
  input \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_2 ;
  input timeout_cntr_rst;
  input rst_seq_done;
  input \GEN_RIU_NOT_FROM_PLL.rst_seq_done_reg ;
  input in0;
  input bs_dly_rst;
  input \GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg ;

  wire [5:0]D;
  wire \GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0]_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[2] ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3] ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3]_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[8] ;
  wire \GEN_RIU_NOT_FROM_PLL.rst_seq_done_reg ;
  wire \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_10_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_3_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_5_n_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_1 ;
  wire \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_2 ;
  wire [7:0]Q;
  wire bs_dly_rst;
  wire in0;
  wire n0_vtc_rdy_out;
  wire pll0_locked_out;
  wire riu_clk;
  wire rst_seq_done;
  (* async_reg = "true" *) wire sync_flop_0;
  (* async_reg = "true" *) wire sync_flop_1;
  wire \sync_flop_1_reg[0]_0 ;
  wire \sync_flop_1_reg[0]_1 ;
  (* async_reg = "true" *) wire sync_flop_2;
  (* async_reg = "true" *) wire sync_flop_3;
  (* async_reg = "true" *) wire sync_flop_4;
  (* async_reg = "true" *) wire sync_flop_5;
  (* async_reg = "true" *) wire sync_flop_6;
  wire timeout_cntr_rst;
  wire timeout_cntr_rst_1;

  assign out = sync_flop_1;
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \GEN_RIU_NOT_FROM_PLL.bs_dly_rst_i_1 
       (.I0(bs_dly_rst),
        .I1(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_reg ),
        .I2(sync_flop_1),
        .I3(Q[2]),
        .I4(\GEN_RIU_NOT_FROM_PLL.bs_dly_rst_reg ),
        .O(\sync_flop_1_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFF00FEFFFFFFFF)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[0]_i_1 
       (.I0(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0] ),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(sync_flop_1),
        .I4(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[0]_0 ),
        .I5(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAB00AA00)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[2]_i_1 
       (.I0(Q[0]),
        .I1(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[2] ),
        .I2(sync_flop_1),
        .I3(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3]_0 ),
        .I4(Q[1]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[3]_i_1 
       (.I0(sync_flop_1),
        .I1(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3]_0 ),
        .I2(Q[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h8080C080)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[4]_i_1 
       (.I0(Q[2]),
        .I1(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3]_0 ),
        .I2(sync_flop_1),
        .I3(Q[3]),
        .I4(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hBA00000000000000)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[7]_i_1 
       (.I0(Q[5]),
        .I1(n0_vtc_rdy_out),
        .I2(Q[6]),
        .I3(sync_flop_1),
        .I4(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3]_0 ),
        .I5(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[8] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hC080808080808080)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[8]_i_1 
       (.I0(Q[7]),
        .I1(sync_flop_1),
        .I2(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3]_0 ),
        .I3(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[8] ),
        .I4(Q[6]),
        .I5(n0_vtc_rdy_out),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \GEN_RIU_NOT_FROM_PLL.rst_seq_done_i_1 
       (.I0(rst_seq_done),
        .I1(\GEN_RIU_NOT_FROM_PLL.rst_seq_done_reg ),
        .I2(sync_flop_1),
        .I3(Q[7]),
        .I4(in0),
        .O(\sync_flop_1_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_i_3 
       (.I0(Q[2]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(sync_flop_1),
        .I4(Q[3]),
        .I5(\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg ),
        .O(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[3] ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_1 
       (.I0(timeout_cntr_rst_1),
        .I1(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_3_n_0 ),
        .I2(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_2 ),
        .I3(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_5_n_0 ),
        .I4(timeout_cntr_rst),
        .O(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg ));
  LUT5 #(
    .INIT(32'hEF00AA00)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_10 
       (.I0(Q[3]),
        .I1(n0_vtc_rdy_out),
        .I2(Q[6]),
        .I3(sync_flop_1),
        .I4(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[8] ),
        .O(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFCFEFCC2)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_3 
       (.I0(sync_flop_1),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[4]),
        .I4(Q[3]),
        .O(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCFCFCECEF)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_5 
       (.I0(sync_flop_1),
        .I1(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_10_n_0 ),
        .I2(Q[2]),
        .I3(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_0 ),
        .I4(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_reg_1 ),
        .I5(Q[1]),
        .O(\GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_5_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_0_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(pll0_locked_out),
        .Q(sync_flop_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_1_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_0),
        .Q(sync_flop_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_2_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_1),
        .Q(sync_flop_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_3_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_2),
        .Q(sync_flop_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_4_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_3),
        .Q(sync_flop_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_5_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_4),
        .Q(sync_flop_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_6_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_5),
        .Q(sync_flop_6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_sync_cell" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_4
   (out,
    rst,
    riu_clk);
  output out;
  input rst;
  input riu_clk;

  wire riu_clk;
  wire rst;
  (* async_reg = "true" *) wire sync_flop_0;
  (* async_reg = "true" *) wire sync_flop_1;
  (* async_reg = "true" *) wire sync_flop_2;
  (* async_reg = "true" *) wire sync_flop_3;
  (* async_reg = "true" *) wire sync_flop_4;
  (* async_reg = "true" *) wire sync_flop_5;
  (* async_reg = "true" *) wire sync_flop_6;

  assign out = sync_flop_1;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_0_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(rst),
        .Q(sync_flop_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_1_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_0),
        .Q(sync_flop_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_2_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_1),
        .Q(sync_flop_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_3_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_2),
        .Q(sync_flop_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_4_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_3),
        .Q(sync_flop_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_5_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_4),
        .Q(sync_flop_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_6_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_5),
        .Q(sync_flop_6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_sync_cell" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_5
   (SR,
    in0,
    pll0_clkout0_out,
    Q,
    \pll0_fab_clk_cntr_reg[0] );
  output [0:0]SR;
  input [0:0]in0;
  input pll0_clkout0_out;
  input [0:0]Q;
  input \pll0_fab_clk_cntr_reg[0] ;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]in0;
  wire pll0_clkout0_out;
  wire \pll0_fab_clk_cntr_reg[0] ;
  (* async_reg = "true" *) wire sync_flop_0;
  (* async_reg = "true" *) wire sync_flop_1;
  (* async_reg = "true" *) wire sync_flop_2;
  (* async_reg = "true" *) wire sync_flop_3;
  (* async_reg = "true" *) wire sync_flop_4;
  (* async_reg = "true" *) wire sync_flop_5;
  (* async_reg = "true" *) wire sync_flop_6;

  LUT3 #(
    .INIT(8'h5D)) 
    \pll0_fab_clk_cntr[6]_i_1 
       (.I0(sync_flop_1),
        .I1(Q),
        .I2(\pll0_fab_clk_cntr_reg[0] ),
        .O(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_0_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(in0),
        .Q(sync_flop_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_1_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(sync_flop_0),
        .Q(sync_flop_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_2_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(sync_flop_1),
        .Q(sync_flop_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_3_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(sync_flop_2),
        .Q(sync_flop_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_4_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(sync_flop_3),
        .Q(sync_flop_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_5_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(sync_flop_4),
        .Q(sync_flop_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_6_reg[0] 
       (.C(pll0_clkout0_out),
        .CE(1'b1),
        .D(sync_flop_5),
        .Q(sync_flop_6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "high_speed_selectio_wiz_v3_6_0_sync_cell" *) 
module bd_91b0_phy_0_high_speed_selectio_wiz_v3_6_0_sync_cell_6
   (out,
    D,
    \sync_flop_1_reg[0]_0 ,
    \sync_flop_1_reg[0]_1 ,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] ,
    in0,
    riu_clk,
    Q,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5] ,
    \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg ,
    \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5]_0 ,
    \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg_0 ,
    \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg_1 ,
    pll0_clkoutphy_en_in,
    \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg ,
    \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_0 ,
    \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_1 );
  output out;
  output [0:0]D;
  output \sync_flop_1_reg[0]_0 ;
  output \sync_flop_1_reg[0]_1 ;
  output \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] ;
  input [0:0]in0;
  input riu_clk;
  input [4:0]Q;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5] ;
  input \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg ;
  input \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5]_0 ;
  input \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg_0 ;
  input \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg_1 ;
  input pll0_clkoutphy_en_in;
  input \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg ;
  input \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_0 ;
  input [0:0]\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_1 ;

  wire [0:0]D;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5] ;
  wire \GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5]_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg ;
  wire \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg_0 ;
  wire \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg_1 ;
  wire \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg ;
  wire \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_0 ;
  wire [0:0]\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_1 ;
  wire [4:0]Q;
  wire [0:0]in0;
  wire pll0_clkoutphy_en;
  wire pll0_clkoutphy_en_in;
  wire riu_clk;
  (* async_reg = "true" *) wire sync_flop_0;
  (* async_reg = "true" *) wire sync_flop_1;
  wire \sync_flop_1_reg[0]_0 ;
  wire \sync_flop_1_reg[0]_1 ;
  (* async_reg = "true" *) wire sync_flop_2;
  (* async_reg = "true" *) wire sync_flop_3;
  (* async_reg = "true" *) wire sync_flop_4;
  (* async_reg = "true" *) wire sync_flop_5;
  (* async_reg = "true" *) wire sync_flop_6;

  assign out = sync_flop_1;
  LUT6 #(
    .INIT(64'h80008000F0008000)) 
    \GEN_RIU_NOT_FROM_PLL.hssio_state[5]_i_1 
       (.I0(sync_flop_1),
        .I1(Q[1]),
        .I2(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5] ),
        .I3(\GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg ),
        .I4(Q[2]),
        .I5(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[5]_0 ),
        .O(D));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_i_1 
       (.I0(pll0_clkoutphy_en),
        .I1(\GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg_1 ),
        .I2(\GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg ),
        .I3(Q[1]),
        .I4(pll0_clkoutphy_en_in),
        .O(\sync_flop_1_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_i_2 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(sync_flop_1),
        .I5(\GEN_RIU_NOT_FROM_PLL.pll0_clkoutphy_en_reg_0 ),
        .O(pll0_clkoutphy_en));
  LUT5 #(
    .INIT(32'h222F2220)) 
    \GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_i_1 
       (.I0(Q[1]),
        .I1(sync_flop_1),
        .I2(\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg ),
        .I3(\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_0 ),
        .I4(\GEN_RIU_NOT_FROM_PLL.start_fab_clk_cntr_reg_1 ),
        .O(\GEN_RIU_NOT_FROM_PLL.hssio_state_reg[4] ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \GEN_RIU_NOT_FROM_PLL.timeout_cntr_rst_i_9 
       (.I0(sync_flop_1),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[0]),
        .O(\sync_flop_1_reg[0]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_0_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(in0),
        .Q(sync_flop_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_1_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_0),
        .Q(sync_flop_1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_2_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_1),
        .Q(sync_flop_2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_3_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_2),
        .Q(sync_flop_3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_4_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_3),
        .Q(sync_flop_4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_5_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_4),
        .Q(sync_flop_5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \sync_flop_6_reg[0] 
       (.C(riu_clk),
        .CE(1'b1),
        .D(sync_flop_5),
        .Q(sync_flop_6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_csi_rx_clk_lane" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_csi_rx_clk_lane
   (out,
    cl_rxclkactivehs_reg_0,
    cl_stopstate,
    cl_en_hs_rx_term_reg_0,
    cl_init_done_coreclk_reg_0,
    cl_init_done_coreclk_reg_1,
    cl_rxclkactivehs_reg_1,
    cl_rxclkactivehs_reg_2,
    D,
    bit_slc_rst,
    \reset_pulse_extsn_cntr_r_reg[2] ,
    rx_cl_lp_dn,
    rx_cl_lp_dp,
    core_clk,
    SR,
    core_rst,
    \cl_rx_state_reg[1]_0 ,
    dl_en_hs_lpn_reg,
    dl_en_hs_lpn_reg_0,
    Q,
    rx_cl_disable_ibuf_r,
    en_falling_edge_r_reg);
  output out;
  output cl_rxclkactivehs_reg_0;
  output cl_stopstate;
  output cl_en_hs_rx_term_reg_0;
  output cl_init_done_coreclk_reg_0;
  output cl_init_done_coreclk_reg_1;
  output cl_rxclkactivehs_reg_1;
  output cl_rxclkactivehs_reg_2;
  output [3:0]D;
  output bit_slc_rst;
  output \reset_pulse_extsn_cntr_r_reg[2] ;
  input rx_cl_lp_dn;
  input rx_cl_lp_dp;
  input core_clk;
  input [0:0]SR;
  input core_rst;
  input \cl_rx_state_reg[1]_0 ;
  input dl_en_hs_lpn_reg;
  input dl_en_hs_lpn_reg_0;
  input [3:0]Q;
  input rx_cl_disable_ibuf_r;
  input en_falling_edge_r_reg;

  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]SR;
  wire bit_slc_rst;
  wire cl_en_hs_rx_term_i_1_n_0;
  wire cl_en_hs_rx_term_reg_0;
  wire cl_init_done_coreclk_i_1_n_0;
  wire cl_init_done_coreclk_i_3_n_0;
  wire cl_init_done_coreclk_i_4_n_0;
  wire cl_init_done_coreclk_i_5_n_0;
  wire cl_init_done_coreclk_i_6_n_0;
  wire cl_init_done_coreclk_reg_0;
  wire cl_init_done_coreclk_reg_1;
  wire cl_init_done_div4clk_i_1_n_0;
  wire cl_init_done_div4clk_i_2_n_0;
  wire cl_init_done_div4clk_i_3_n_0;
  wire cl_rx_state;
  wire \cl_rx_state[1]_i_1_n_0 ;
  wire \cl_rx_state_reg[1]_0 ;
  wire \cl_rx_state_reg_n_0_[0] ;
  wire \cl_rx_state_reg_n_0_[1] ;
  wire \cl_rx_state_reg_n_0_[2] ;
  wire cl_rxclkactivehs1_out;
  (* RTL_KEEP = "true" *) wire cl_rxclkactivehs_reg_0;
  wire cl_rxclkactivehs_reg_1;
  wire cl_rxclkactivehs_reg_2;
  (* DONT_TOUCH *) wire cl_status_reg_bit_4;
  wire cl_status_reg_bit_4__0;
  wire cl_status_reg_bit_4_i_3_n_0;
  wire cl_stopstate;
  wire core_clk;
  wire core_rst;
  wire dl_en_hs_lpn_reg;
  wire dl_en_hs_lpn_reg_0;
  wire en_falling_edge_r_reg;
  wire falling_edge_rx_cl_disable_ibuf_c;
  wire \init_count[0]_i_3_n_0 ;
  wire \init_count[0]_i_4_n_0 ;
  wire \init_count[0]_i_5_n_0 ;
  wire \init_count[0]_i_6_n_0 ;
  wire [20:0]init_count_reg;
  wire \init_count_reg[0]_i_2_n_0 ;
  wire \init_count_reg[0]_i_2_n_1 ;
  wire \init_count_reg[0]_i_2_n_10 ;
  wire \init_count_reg[0]_i_2_n_11 ;
  wire \init_count_reg[0]_i_2_n_12 ;
  wire \init_count_reg[0]_i_2_n_13 ;
  wire \init_count_reg[0]_i_2_n_14 ;
  wire \init_count_reg[0]_i_2_n_15 ;
  wire \init_count_reg[0]_i_2_n_2 ;
  wire \init_count_reg[0]_i_2_n_3 ;
  wire \init_count_reg[0]_i_2_n_4 ;
  wire \init_count_reg[0]_i_2_n_5 ;
  wire \init_count_reg[0]_i_2_n_6 ;
  wire \init_count_reg[0]_i_2_n_7 ;
  wire \init_count_reg[0]_i_2_n_8 ;
  wire \init_count_reg[0]_i_2_n_9 ;
  wire \init_count_reg[16]_i_1_n_11 ;
  wire \init_count_reg[16]_i_1_n_12 ;
  wire \init_count_reg[16]_i_1_n_13 ;
  wire \init_count_reg[16]_i_1_n_14 ;
  wire \init_count_reg[16]_i_1_n_15 ;
  wire \init_count_reg[16]_i_1_n_4 ;
  wire \init_count_reg[16]_i_1_n_5 ;
  wire \init_count_reg[16]_i_1_n_6 ;
  wire \init_count_reg[16]_i_1_n_7 ;
  wire \init_count_reg[8]_i_1_n_0 ;
  wire \init_count_reg[8]_i_1_n_1 ;
  wire \init_count_reg[8]_i_1_n_10 ;
  wire \init_count_reg[8]_i_1_n_11 ;
  wire \init_count_reg[8]_i_1_n_12 ;
  wire \init_count_reg[8]_i_1_n_13 ;
  wire \init_count_reg[8]_i_1_n_14 ;
  wire \init_count_reg[8]_i_1_n_15 ;
  wire \init_count_reg[8]_i_1_n_2 ;
  wire \init_count_reg[8]_i_1_n_3 ;
  wire \init_count_reg[8]_i_1_n_4 ;
  wire \init_count_reg[8]_i_1_n_5 ;
  wire \init_count_reg[8]_i_1_n_6 ;
  wire \init_count_reg[8]_i_1_n_7 ;
  wire \init_count_reg[8]_i_1_n_8 ;
  wire \init_count_reg[8]_i_1_n_9 ;
  wire lp_00_r;
  wire lp_00_r_i_2_n_0;
  wire lp_01_r;
  wire lp_01_r_i_1_n_0;
  wire lp_10_r;
  wire lp_10_r_i_1_n_0;
  wire lp_11_r;
  wire lp_11_r_dly;
  wire lp_11_r_i_1_n_0;
  wire lp_11_r_nxt;
  wire lp_11_r_reg_n_0;
  wire [4:0]lp_st_cnt;
  wire \lp_st_cnt[4]_i_3_n_0 ;
  wire [1:0]lp_st_dup;
  wire [1:0]lp_state_sync;
  wire lp_state_sync0_i_n_3;
  wire lp_state_sync0_i_n_4;
  wire lp_state_sync0_i_n_5;
  wire lp_state_sync0_i_n_6;
  wire lp_state_sync0_i_n_7;
  wire lp_state_sync0_i_n_8;
  wire lp_state_sync0_i_n_9;
  wire lp_state_sync1_i_n_1;
  wire lp_state_sync1_i_n_2;
  wire lp_state_sync1_i_n_6;
  (* DONT_TOUCH *) wire out;
  wire [2:0]p_0_out;
  wire \reset_pulse_extsn_cntr_r[3]_i_2_n_0 ;
  wire \reset_pulse_extsn_cntr_r_reg[2] ;
  wire rx_cl_disable_ibuf_r;
  wire rx_cl_lp_dn;
  wire rx_cl_lp_dp;
  wire [7:4]\NLW_init_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_init_count_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    bit_slc_rst_INST_0
       (.I0(rx_cl_disable_ibuf_r),
        .I1(cl_en_hs_rx_term_reg_0),
        .I2(en_falling_edge_r_reg),
        .O(bit_slc_rst));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002800)) 
    cl_en_hs_rx_term_i_1
       (.I0(lp_11_r_reg_n_0),
        .I1(\cl_rx_state_reg_n_0_[1] ),
        .I2(\cl_rx_state_reg_n_0_[0] ),
        .I3(\cl_rx_state_reg_n_0_[2] ),
        .I4(cl_init_done_coreclk_reg_0),
        .I5(cl_en_hs_rx_term_reg_0),
        .O(cl_en_hs_rx_term_i_1_n_0));
  FDSE cl_en_hs_rx_term_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(cl_en_hs_rx_term_i_1_n_0),
        .Q(cl_en_hs_rx_term_reg_0),
        .S(core_rst));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hEEEEEEE0)) 
    cl_init_done_coreclk_i_1
       (.I0(cl_init_done_coreclk_reg_1),
        .I1(lp_state_sync1_i_n_1),
        .I2(\cl_rx_state_reg_n_0_[1] ),
        .I3(\cl_rx_state_reg_n_0_[0] ),
        .I4(\cl_rx_state_reg_n_0_[2] ),
        .O(cl_init_done_coreclk_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    cl_init_done_coreclk_i_3
       (.I0(init_count_reg[12]),
        .I1(init_count_reg[13]),
        .I2(init_count_reg[8]),
        .I3(init_count_reg[20]),
        .I4(init_count_reg[16]),
        .I5(init_count_reg[3]),
        .O(cl_init_done_coreclk_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
    cl_init_done_coreclk_i_4
       (.I0(cl_init_done_coreclk_i_5_n_0),
        .I1(cl_init_done_coreclk_i_6_n_0),
        .I2(\init_count[0]_i_5_n_0 ),
        .I3(init_count_reg[4]),
        .I4(init_count_reg[7]),
        .I5(init_count_reg[14]),
        .O(cl_init_done_coreclk_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    cl_init_done_coreclk_i_5
       (.I0(init_count_reg[11]),
        .I1(init_count_reg[2]),
        .I2(init_count_reg[17]),
        .I3(init_count_reg[0]),
        .O(cl_init_done_coreclk_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    cl_init_done_coreclk_i_6
       (.I0(init_count_reg[19]),
        .I1(init_count_reg[6]),
        .I2(init_count_reg[1]),
        .I3(init_count_reg[15]),
        .O(cl_init_done_coreclk_i_6_n_0));
  FDRE cl_init_done_coreclk_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(cl_init_done_coreclk_i_1_n_0),
        .Q(cl_init_done_coreclk_reg_1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    cl_init_done_div4clk_i_1
       (.I0(\cl_rx_state_reg_n_0_[2] ),
        .I1(\cl_rx_state_reg_n_0_[0] ),
        .I2(\cl_rx_state_reg_n_0_[1] ),
        .O(cl_init_done_div4clk_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    cl_init_done_div4clk_i_2
       (.I0(\cl_rx_state_reg_n_0_[1] ),
        .I1(\cl_rx_state_reg_n_0_[2] ),
        .I2(\cl_rx_state_reg_n_0_[0] ),
        .I3(lp_state_sync[1]),
        .I4(lp_state_sync[0]),
        .I5(lp_state_sync1_i_n_1),
        .O(cl_init_done_div4clk_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    cl_init_done_div4clk_i_3
       (.I0(out),
        .I1(lp_state_sync1_i_n_1),
        .O(cl_init_done_div4clk_i_3_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE cl_init_done_div4clk_reg
       (.C(core_clk),
        .CE(cl_init_done_div4clk_i_2_n_0),
        .D(cl_init_done_div4clk_i_3_n_0),
        .Q(out),
        .R(cl_init_done_div4clk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFBBBF888)) 
    \cl_rx_state[1]_i_1 
       (.I0(p_0_out[1]),
        .I1(cl_rx_state),
        .I2(\cl_rx_state_reg[1]_0 ),
        .I3(cl_init_done_coreclk_reg_1),
        .I4(\cl_rx_state_reg_n_0_[1] ),
        .O(\cl_rx_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cl_rx_state_reg[0] 
       (.C(core_clk),
        .CE(cl_rx_state),
        .D(p_0_out[0]),
        .Q(\cl_rx_state_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cl_rx_state_reg[1] 
       (.C(core_clk),
        .CE(1'b1),
        .D(\cl_rx_state[1]_i_1_n_0 ),
        .Q(\cl_rx_state_reg_n_0_[1] ),
        .R(core_rst));
  FDRE #(
    .INIT(1'b0)) 
    \cl_rx_state_reg[2] 
       (.C(core_clk),
        .CE(cl_rx_state),
        .D(p_0_out[2]),
        .Q(\cl_rx_state_reg_n_0_[2] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h000000000000FF20)) 
    cl_rxclkactivehs_i_1
       (.I0(\cl_rx_state_reg_n_0_[1] ),
        .I1(\cl_rx_state_reg_n_0_[0] ),
        .I2(\cl_rx_state_reg_n_0_[2] ),
        .I3(cl_rxclkactivehs_reg_0),
        .I4(lp_11_r_reg_n_0),
        .I5(\cl_rx_state_reg[1]_0 ),
        .O(cl_rxclkactivehs1_out));
  (* KEEP = "yes" *) 
  FDCE cl_rxclkactivehs_reg
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(cl_rxclkactivehs1_out),
        .Q(cl_rxclkactivehs_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    cl_status_reg_bit_4_i_3
       (.I0(\cl_rx_state_reg_n_0_[1] ),
        .I1(\cl_rx_state_reg_n_0_[0] ),
        .O(cl_status_reg_bit_4_i_3_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE cl_status_reg_bit_4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(cl_status_reg_bit_4__0),
        .Q(cl_status_reg_bit_4),
        .R(SR));
  FDRE cl_stopstate_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync1_i_n_6),
        .Q(cl_stopstate),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    dl_en_hs_lpn_i_2
       (.I0(cl_rxclkactivehs_reg_0),
        .I1(dl_en_hs_lpn_reg),
        .O(cl_rxclkactivehs_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    dl_en_hs_lpn_i_2__0
       (.I0(cl_rxclkactivehs_reg_0),
        .I1(dl_en_hs_lpn_reg_0),
        .O(cl_rxclkactivehs_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    dl_en_hs_rx_term_i_6
       (.I0(cl_init_done_coreclk_reg_1),
        .I1(\cl_rx_state_reg[1]_0 ),
        .O(cl_init_done_coreclk_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFEFFAAAAAAAA)) 
    en_falling_edge_r_i_1
       (.I0(falling_edge_rx_cl_disable_ibuf_c),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(en_falling_edge_r_reg),
        .O(\reset_pulse_extsn_cntr_r_reg[2] ));
  LUT2 #(
    .INIT(4'h2)) 
    en_falling_edge_r_i_2
       (.I0(rx_cl_disable_ibuf_r),
        .I1(cl_en_hs_rx_term_reg_0),
        .O(falling_edge_rx_cl_disable_ibuf_c));
  LUT6 #(
    .INIT(64'hFFFFFFDFFFFFFFFF)) 
    \init_count[0]_i_3 
       (.I0(init_count_reg[14]),
        .I1(init_count_reg[7]),
        .I2(init_count_reg[4]),
        .I3(\init_count[0]_i_5_n_0 ),
        .I4(\init_count[0]_i_6_n_0 ),
        .I5(cl_init_done_coreclk_i_3_n_0),
        .O(\init_count[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \init_count[0]_i_4 
       (.I0(init_count_reg[0]),
        .O(\init_count[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \init_count[0]_i_5 
       (.I0(init_count_reg[10]),
        .I1(init_count_reg[18]),
        .I2(init_count_reg[9]),
        .I3(init_count_reg[5]),
        .O(\init_count[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \init_count[0]_i_6 
       (.I0(init_count_reg[15]),
        .I1(init_count_reg[1]),
        .I2(init_count_reg[6]),
        .I3(init_count_reg[19]),
        .I4(cl_init_done_coreclk_i_5_n_0),
        .O(\init_count[0]_i_6_n_0 ));
  FDRE \init_count_reg[0] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[0]_i_2_n_15 ),
        .Q(init_count_reg[0]),
        .R(cl_init_done_div4clk_i_1_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \init_count_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\init_count_reg[0]_i_2_n_0 ,\init_count_reg[0]_i_2_n_1 ,\init_count_reg[0]_i_2_n_2 ,\init_count_reg[0]_i_2_n_3 ,\init_count_reg[0]_i_2_n_4 ,\init_count_reg[0]_i_2_n_5 ,\init_count_reg[0]_i_2_n_6 ,\init_count_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\init_count_reg[0]_i_2_n_8 ,\init_count_reg[0]_i_2_n_9 ,\init_count_reg[0]_i_2_n_10 ,\init_count_reg[0]_i_2_n_11 ,\init_count_reg[0]_i_2_n_12 ,\init_count_reg[0]_i_2_n_13 ,\init_count_reg[0]_i_2_n_14 ,\init_count_reg[0]_i_2_n_15 }),
        .S({init_count_reg[7:1],\init_count[0]_i_4_n_0 }));
  FDRE \init_count_reg[10] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[8]_i_1_n_13 ),
        .Q(init_count_reg[10]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[11] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[8]_i_1_n_12 ),
        .Q(init_count_reg[11]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[12] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[8]_i_1_n_11 ),
        .Q(init_count_reg[12]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[13] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[8]_i_1_n_10 ),
        .Q(init_count_reg[13]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[14] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[8]_i_1_n_9 ),
        .Q(init_count_reg[14]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[15] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[8]_i_1_n_8 ),
        .Q(init_count_reg[15]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[16] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[16]_i_1_n_15 ),
        .Q(init_count_reg[16]),
        .R(cl_init_done_div4clk_i_1_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \init_count_reg[16]_i_1 
       (.CI(\init_count_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_init_count_reg[16]_i_1_CO_UNCONNECTED [7:4],\init_count_reg[16]_i_1_n_4 ,\init_count_reg[16]_i_1_n_5 ,\init_count_reg[16]_i_1_n_6 ,\init_count_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_init_count_reg[16]_i_1_O_UNCONNECTED [7:5],\init_count_reg[16]_i_1_n_11 ,\init_count_reg[16]_i_1_n_12 ,\init_count_reg[16]_i_1_n_13 ,\init_count_reg[16]_i_1_n_14 ,\init_count_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,init_count_reg[20:16]}));
  FDRE \init_count_reg[17] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[16]_i_1_n_14 ),
        .Q(init_count_reg[17]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[18] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[16]_i_1_n_13 ),
        .Q(init_count_reg[18]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[19] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[16]_i_1_n_12 ),
        .Q(init_count_reg[19]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[1] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[0]_i_2_n_14 ),
        .Q(init_count_reg[1]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[20] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[16]_i_1_n_11 ),
        .Q(init_count_reg[20]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[2] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[0]_i_2_n_13 ),
        .Q(init_count_reg[2]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[3] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[0]_i_2_n_12 ),
        .Q(init_count_reg[3]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[4] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[0]_i_2_n_11 ),
        .Q(init_count_reg[4]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[5] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[0]_i_2_n_10 ),
        .Q(init_count_reg[5]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[6] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[0]_i_2_n_9 ),
        .Q(init_count_reg[6]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[7] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[0]_i_2_n_8 ),
        .Q(init_count_reg[7]),
        .R(cl_init_done_div4clk_i_1_n_0));
  FDRE \init_count_reg[8] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[8]_i_1_n_15 ),
        .Q(init_count_reg[8]),
        .R(cl_init_done_div4clk_i_1_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \init_count_reg[8]_i_1 
       (.CI(\init_count_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\init_count_reg[8]_i_1_n_0 ,\init_count_reg[8]_i_1_n_1 ,\init_count_reg[8]_i_1_n_2 ,\init_count_reg[8]_i_1_n_3 ,\init_count_reg[8]_i_1_n_4 ,\init_count_reg[8]_i_1_n_5 ,\init_count_reg[8]_i_1_n_6 ,\init_count_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\init_count_reg[8]_i_1_n_8 ,\init_count_reg[8]_i_1_n_9 ,\init_count_reg[8]_i_1_n_10 ,\init_count_reg[8]_i_1_n_11 ,\init_count_reg[8]_i_1_n_12 ,\init_count_reg[8]_i_1_n_13 ,\init_count_reg[8]_i_1_n_14 ,\init_count_reg[8]_i_1_n_15 }),
        .S(init_count_reg[15:8]));
  FDRE \init_count_reg[9] 
       (.C(core_clk),
        .CE(lp_state_sync1_i_n_2),
        .D(\init_count_reg[8]_i_1_n_14 ),
        .Q(init_count_reg[9]),
        .R(cl_init_done_div4clk_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    lp_00_r_i_1
       (.I0(lp_st_cnt[0]),
        .I1(lp_st_cnt[1]),
        .I2(lp_st_cnt[2]),
        .I3(lp_st_cnt[3]),
        .I4(lp_st_cnt[4]),
        .O(lp_11_r));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h1)) 
    lp_00_r_i_2
       (.I0(lp_st_dup[0]),
        .I1(lp_st_dup[1]),
        .O(lp_00_r_i_2_n_0));
  FDRE lp_00_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_00_r_i_2_n_0),
        .Q(lp_00_r),
        .R(lp_11_r));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    lp_01_r_i_1
       (.I0(lp_st_dup[0]),
        .I1(lp_st_dup[1]),
        .O(lp_01_r_i_1_n_0));
  FDRE lp_01_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_01_r_i_1_n_0),
        .Q(lp_01_r),
        .R(lp_11_r));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    lp_10_r_i_1
       (.I0(lp_st_dup[1]),
        .I1(lp_st_dup[0]),
        .O(lp_10_r_i_1_n_0));
  FDRE lp_10_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_10_r_i_1_n_0),
        .Q(lp_10_r),
        .R(lp_11_r));
  FDRE lp_11_r_dly_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_11_r_nxt),
        .Q(lp_11_r_dly),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    lp_11_r_i_1
       (.I0(lp_st_dup[0]),
        .I1(lp_st_dup[1]),
        .O(lp_11_r_i_1_n_0));
  FDRE lp_11_r_nxt_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_11_r_reg_n_0),
        .Q(lp_11_r_nxt),
        .R(1'b0));
  FDRE lp_11_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_11_r_i_1_n_0),
        .Q(lp_11_r_reg_n_0),
        .R(lp_11_r));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lp_st_cnt[4]_i_3 
       (.I0(lp_10_r),
        .I1(lp_11_r_reg_n_0),
        .I2(lp_01_r),
        .I3(lp_00_r),
        .O(\lp_st_cnt[4]_i_3_n_0 ));
  FDRE \lp_st_cnt_reg[0] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync0_i_n_9),
        .Q(lp_st_cnt[0]),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[1] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync0_i_n_8),
        .Q(lp_st_cnt[1]),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[2] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync0_i_n_7),
        .Q(lp_st_cnt[2]),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[3] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync0_i_n_6),
        .Q(lp_st_cnt[3]),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[4] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync0_i_n_5),
        .Q(lp_st_cnt[4]),
        .R(1'b0));
  FDRE \lp_st_dup_reg[0] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync[0]),
        .Q(lp_st_dup[0]),
        .R(1'b0));
  FDRE \lp_st_dup_reg[1] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync[1]),
        .Q(lp_st_dup[1]),
        .R(1'b0));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_18 lp_state_sync0_i
       (.D({lp_state_sync0_i_n_5,lp_state_sync0_i_n_6,lp_state_sync0_i_n_7,lp_state_sync0_i_n_8,lp_state_sync0_i_n_9}),
        .Q({\cl_rx_state_reg_n_0_[2] ,\cl_rx_state_reg_n_0_[0] }),
        .\cl_rx_state_reg[1] (lp_state_sync0_i_n_3),
        .\cl_rx_state_reg[1]_0 (cl_init_done_coreclk_reg_1),
        .\cl_rx_state_reg[2] (lp_state_sync0_i_n_4),
        .\cl_rx_state_reg[2]_0 (lp_11_r_reg_n_0),
        .\cl_rx_state_reg[2]_1 (\cl_rx_state_reg_n_0_[1] ),
        .\cl_rx_state_reg[2]_2 (lp_state_sync[1]),
        .core_clk(core_clk),
        .lp_11_r_dly(lp_11_r_dly),
        .\lp_st_cnt_reg[0] (lp_st_dup),
        .\lp_st_cnt_reg[0]_0 (\lp_st_cnt[4]_i_3_n_0 ),
        .\lp_st_cnt_reg[4] (lp_st_cnt),
        .out(lp_state_sync[0]),
        .p_0_out(p_0_out[2:1]),
        .rx_cl_lp_dn(rx_cl_lp_dn));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_19 lp_state_sync1_i
       (.D(p_0_out[0]),
        .E(cl_rx_state),
        .Q({\cl_rx_state_reg_n_0_[2] ,\cl_rx_state_reg_n_0_[0] }),
        .cl_init_done_div4clk_reg(cl_init_done_coreclk_i_3_n_0),
        .cl_init_done_div4clk_reg_0(cl_init_done_coreclk_i_4_n_0),
        .\cl_rx_state_reg[0] (lp_11_r_reg_n_0),
        .\cl_rx_state_reg[0]_0 (cl_init_done_coreclk_reg_1),
        .\cl_rx_state_reg[0]_1 (lp_state_sync0_i_n_4),
        .\cl_rx_state_reg[1] (lp_state_sync1_i_n_1),
        .\cl_rx_state_reg[1]_0 (lp_state_sync1_i_n_2),
        .cl_status_reg_bit_4__0(cl_status_reg_bit_4__0),
        .cl_status_reg_bit_4_reg(cl_status_reg_bit_4),
        .cl_status_reg_bit_4_reg_0(cl_status_reg_bit_4_i_3_n_0),
        .cl_stopstate(cl_stopstate),
        .cl_stopstate_reg(lp_state_sync1_i_n_6),
        .cl_stopstate_reg_0(lp_state_sync0_i_n_3),
        .core_clk(core_clk),
        .\init_count_reg[0] (\cl_rx_state_reg_n_0_[1] ),
        .\init_count_reg[0]_0 (lp_state_sync[0]),
        .\init_count_reg[0]_1 (\init_count[0]_i_3_n_0 ),
        .lp_11_r_dly(lp_11_r_dly),
        .out(lp_state_sync[1]),
        .rx_cl_lp_dp(rx_cl_lp_dp));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h5504)) 
    \reset_pulse_extsn_cntr_r[0]_i_1 
       (.I0(Q[0]),
        .I1(rx_cl_disable_ibuf_r),
        .I2(cl_en_hs_rx_term_reg_0),
        .I3(en_falling_edge_r_reg),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h66660060)) 
    \reset_pulse_extsn_cntr_r[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(rx_cl_disable_ibuf_r),
        .I3(cl_en_hs_rx_term_reg_0),
        .I4(en_falling_edge_r_reg),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h7878787800007800)) 
    \reset_pulse_extsn_cntr_r[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(rx_cl_disable_ibuf_r),
        .I4(cl_en_hs_rx_term_reg_0),
        .I5(en_falling_edge_r_reg),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h15554000)) 
    \reset_pulse_extsn_cntr_r[3]_i_1 
       (.I0(\reset_pulse_extsn_cntr_r[3]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \reset_pulse_extsn_cntr_r[3]_i_2 
       (.I0(en_falling_edge_r_reg),
        .I1(cl_en_hs_rx_term_reg_0),
        .I2(rx_cl_disable_ibuf_r),
        .O(\reset_pulse_extsn_cntr_r[3]_i_2_n_0 ));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_csi_rx_data_lane_sm" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_csi_rx_data_lane_sm
   (time_out_settle_reg_0,
    dl_en_hs_lpn_i,
    rx_dl1_disable_ibuf,
    \gen_hs_high_rates_spec_v1_1.stopstate_reg ,
    E,
    D,
    rx_dl1_lp_dn,
    rx_dl1_lp_dp,
    core_clk,
    core_rst,
    \FSM_sequential_dl_rx_state_reg[1]_0 ,
    out,
    \FSM_sequential_dl_rx_state_reg[2]_0 ,
    dl_en_hs_lpn_reg_0,
    dl_en_hs_lpn_reg_1,
    dl1_stopstate,
    rxactivehs_coreclk_sync_r,
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ,
    Q,
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ,
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 );
  output time_out_settle_reg_0;
  output dl_en_hs_lpn_i;
  output rx_dl1_disable_ibuf;
  output \gen_hs_high_rates_spec_v1_1.stopstate_reg ;
  output [0:0]E;
  output [1:0]D;
  input rx_dl1_lp_dn;
  input rx_dl1_lp_dp;
  input core_clk;
  input core_rst;
  input \FSM_sequential_dl_rx_state_reg[1]_0 ;
  input out;
  input \FSM_sequential_dl_rx_state_reg[2]_0 ;
  input dl_en_hs_lpn_reg_0;
  input dl_en_hs_lpn_reg_1;
  input dl1_stopstate;
  input rxactivehs_coreclk_sync_r;
  input \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ;
  input [1:0]Q;
  input \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ;
  input \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_dl_rx_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[0]_i_3__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[2]_i_3__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_10__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_12_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_3__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_4__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_8__0_n_0 ;
  wire \FSM_sequential_dl_rx_state_reg[1]_0 ;
  wire \FSM_sequential_dl_rx_state_reg[2]_0 ;
  wire \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ;
  wire \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ;
  wire \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 ;
  wire [1:0]Q;
  (* DONT_TOUCH *) wire [31:0]SETTLE_TIMEOUT;
  wire core_clk;
  wire core_rst;
  wire dl1_stopstate;
  wire dl_en_hs_lpn_i;
  wire dl_en_hs_lpn_reg_0;
  wire dl_en_hs_lpn_reg_1;
  wire dl_en_hs_rx_term_i_2__0_n_0;
  wire dl_en_hs_rx_term_i_4__0_n_0;
  wire dl_en_hs_rx_term_i_5__0_n_0;
  wire dl_en_hs_rx_term_i_6__0_n_0;
  wire [3:0]dl_rx_state__0;
  wire dl_stopstate;
  wire dl_stopstate_i_2__0_n_0;
  wire dl_stopstate_i_4_n_0;
  wire \gen_hs_high_rates_spec_v1_1.stopstate_i_2_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stopstate_i_3__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stopstate_reg ;
  wire lp_00_r;
  wire lp_00_r_i_1__1_n_0;
  wire lp_00_r_i_2__1_n_0;
  wire lp_01_r;
  wire lp_01_r_i_1__1_n_0;
  wire lp_10_r;
  wire lp_10_r_i_1__1_n_0;
  wire lp_11_r_dly;
  wire lp_11_r_i_1__1_n_0;
  wire lp_11_r_nxt_reg_n_0;
  wire lp_11_r_reg_n_0;
  wire [4:0]lp_st_cnt;
  wire \lp_st_cnt[0]_i_2__0_n_0 ;
  wire \lp_st_cnt[0]_i_3__0_n_0 ;
  wire \lp_st_cnt_reg_n_0_[0] ;
  wire \lp_st_cnt_reg_n_0_[1] ;
  wire \lp_st_cnt_reg_n_0_[2] ;
  wire \lp_st_cnt_reg_n_0_[3] ;
  wire \lp_st_cnt_reg_n_0_[4] ;
  wire \lp_st_dup_reg_n_0_[0] ;
  wire \lp_st_dup_reg_n_0_[1] ;
  wire [1:0]lp_state_sync;
  wire lp_state_sync0_i_n_1;
  wire lp_state_sync0_i_n_2;
  wire lp_state_sync0_i_n_3;
  wire lp_state_sync0_i_n_4;
  wire lp_state_sync1_i_n_6;
  wire lp_state_sync1_i_n_7;
  wire lp_state_sync1_i_n_8;
  wire lp_state_sync1_i_n_9;
  wire out;
  wire [7:0]p_0_in;
  wire rx_dl1_disable_ibuf;
  wire rx_dl1_lp_dn;
  wire rx_dl1_lp_dp;
  wire rxactivehs_coreclk_sync_r;
  wire \settle_cnt[2]_i_1__0_n_0 ;
  wire \settle_cnt[5]_i_1__0_n_0 ;
  wire \settle_cnt[7]_i_1__0_n_0 ;
  wire \settle_cnt[7]_i_2__0_n_0 ;
  wire \settle_cnt[7]_i_4__0_n_0 ;
  wire [7:0]settle_cnt_reg;
  wire time_out_settle0_carry__0_i_1__0_n_0;
  wire time_out_settle0_carry__0_i_2__0_n_0;
  wire time_out_settle0_carry__0_i_3__0_n_0;
  wire time_out_settle0_carry__0_n_5;
  wire time_out_settle0_carry__0_n_6;
  wire time_out_settle0_carry__0_n_7;
  wire time_out_settle0_carry_i_1__0_n_0;
  wire time_out_settle0_carry_i_2__0_n_0;
  wire time_out_settle0_carry_i_3__0_n_0;
  wire time_out_settle0_carry_i_4__0_n_0;
  wire time_out_settle0_carry_i_5__0_n_0;
  wire time_out_settle0_carry_i_6__0_n_0;
  wire time_out_settle0_carry_i_7__0_n_0;
  wire time_out_settle0_carry_i_8__0_n_0;
  wire time_out_settle0_carry_n_0;
  wire time_out_settle0_carry_n_1;
  wire time_out_settle0_carry_n_2;
  wire time_out_settle0_carry_n_3;
  wire time_out_settle0_carry_n_4;
  wire time_out_settle0_carry_n_5;
  wire time_out_settle0_carry_n_6;
  wire time_out_settle0_carry_n_7;
  wire time_out_settle_i_1__0_n_0;
  wire time_out_settle_reg_0;
  wire [7:0]NLW_time_out_settle0_carry_O_UNCONNECTED;
  wire [7:3]NLW_time_out_settle0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_time_out_settle0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1115)) 
    \FSM_sequential_dl_rx_state[0]_i_1__0 
       (.I0(dl_rx_state__0[3]),
        .I1(\FSM_sequential_dl_rx_state[3]_i_4__0_n_0 ),
        .I2(\FSM_sequential_dl_rx_state[0]_i_2__0_n_0 ),
        .I3(lp_11_r_reg_n_0),
        .I4(\FSM_sequential_dl_rx_state[0]_i_3__0_n_0 ),
        .I5(dl_en_hs_lpn_reg_0),
        .O(\FSM_sequential_dl_rx_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_dl_rx_state[0]_i_2__0 
       (.I0(dl_rx_state__0[0]),
        .I1(dl_rx_state__0[2]),
        .O(\FSM_sequential_dl_rx_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0001111100010001)) 
    \FSM_sequential_dl_rx_state[0]_i_3__0 
       (.I0(dl_rx_state__0[2]),
        .I1(dl_rx_state__0[1]),
        .I2(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I3(dl_rx_state__0[0]),
        .I4(dl_rx_state__0[3]),
        .I5(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .O(\FSM_sequential_dl_rx_state[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \FSM_sequential_dl_rx_state[2]_i_3__0 
       (.I0(dl_rx_state__0[1]),
        .I1(dl_rx_state__0[3]),
        .I2(dl_rx_state__0[0]),
        .O(\FSM_sequential_dl_rx_state[2]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_dl_rx_state[3]_i_10__0 
       (.I0(dl_rx_state__0[1]),
        .I1(dl_rx_state__0[0]),
        .O(\FSM_sequential_dl_rx_state[3]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0FCC0DC)) 
    \FSM_sequential_dl_rx_state[3]_i_12 
       (.I0(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I1(dl_rx_state__0[1]),
        .I2(dl_rx_state__0[3]),
        .I3(dl_rx_state__0[0]),
        .I4(lp_11_r_reg_n_0),
        .I5(dl_en_hs_lpn_reg_0),
        .O(\FSM_sequential_dl_rx_state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_dl_rx_state[3]_i_3__0 
       (.I0(dl_rx_state__0[3]),
        .I1(dl_rx_state__0[1]),
        .O(\FSM_sequential_dl_rx_state[3]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_dl_rx_state[3]_i_4__0 
       (.I0(dl_rx_state__0[0]),
        .I1(dl_rx_state__0[1]),
        .O(\FSM_sequential_dl_rx_state[3]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_dl_rx_state[3]_i_8__0 
       (.I0(dl_rx_state__0[1]),
        .I1(dl_rx_state__0[2]),
        .O(\FSM_sequential_dl_rx_state[3]_i_8__0_n_0 ));
  (* FSM_ENCODED_STATES = "DL_RX_HS_RQST:0101,DL_RX_STOP:0100,DL_RX_INIT_DONE:0011,DL_WO_INIT_LP_11:0001,DL_RX_BEGIN:0000,DL_RX_HS_RUN:1000,DL_RX_HS_ABORT:1001,DL_RX_HS_SYNC:0111,iSTATE:0010,DL_RX_HS_TERM:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_dl_rx_state_reg[0] 
       (.C(core_clk),
        .CE(lp_state_sync0_i_n_3),
        .CLR(core_rst),
        .D(\FSM_sequential_dl_rx_state[0]_i_1__0_n_0 ),
        .Q(dl_rx_state__0[0]));
  (* FSM_ENCODED_STATES = "DL_RX_HS_RQST:0101,DL_RX_STOP:0100,DL_RX_INIT_DONE:0011,DL_WO_INIT_LP_11:0001,DL_RX_BEGIN:0000,DL_RX_HS_RUN:1000,DL_RX_HS_ABORT:1001,DL_RX_HS_SYNC:0111,iSTATE:0010,DL_RX_HS_TERM:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_dl_rx_state_reg[1] 
       (.C(core_clk),
        .CE(lp_state_sync0_i_n_3),
        .CLR(core_rst),
        .D(lp_state_sync0_i_n_2),
        .Q(dl_rx_state__0[1]));
  (* FSM_ENCODED_STATES = "DL_RX_HS_RQST:0101,DL_RX_STOP:0100,DL_RX_INIT_DONE:0011,DL_WO_INIT_LP_11:0001,DL_RX_BEGIN:0000,DL_RX_HS_RUN:1000,DL_RX_HS_ABORT:1001,DL_RX_HS_SYNC:0111,iSTATE:0010,DL_RX_HS_TERM:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_dl_rx_state_reg[2] 
       (.C(core_clk),
        .CE(lp_state_sync0_i_n_3),
        .CLR(core_rst),
        .D(lp_state_sync0_i_n_1),
        .Q(dl_rx_state__0[2]));
  (* FSM_ENCODED_STATES = "DL_RX_HS_RQST:0101,DL_RX_STOP:0100,DL_RX_INIT_DONE:0011,DL_WO_INIT_LP_11:0001,DL_RX_BEGIN:0000,DL_RX_HS_RUN:1000,DL_RX_HS_ABORT:1001,DL_RX_HS_SYNC:0111,iSTATE:0010,DL_RX_HS_TERM:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_dl_rx_state_reg[3] 
       (.C(core_clk),
        .CE(lp_state_sync0_i_n_3),
        .CLR(core_rst),
        .D(lp_state_sync1_i_n_9),
        .Q(dl_rx_state__0[3]));
  LUT6 #(
    .INIT(64'hBABBBABBBABABABB)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[0]_i_1__0 
       (.I0(\gen_hs_high_rates_spec_v1_1.stopstate_i_3__0_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(dl_en_hs_lpn_i),
        .I4(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ),
        .I5(rxactivehs_coreclk_sync_r),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h3333333332FE3332)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_1__0 
       (.I0(dl_stopstate),
        .I1(Q[1]),
        .I2(dl_en_hs_lpn_i),
        .I3(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ),
        .I4(rxactivehs_coreclk_sync_r),
        .I5(Q[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h554000005540FFFF)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_2__0 
       (.I0(Q[1]),
        .I1(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ),
        .I2(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 ),
        .I3(dl_en_hs_lpn_i),
        .I4(Q[0]),
        .I5(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_3__0_n_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBBAB)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_3__0 
       (.I0(Q[1]),
        .I1(dl_en_hs_lpn_i),
        .I2(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ),
        .I3(rxactivehs_coreclk_sync_r),
        .O(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_3__0_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[0] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(SETTLE_TIMEOUT[0]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[10] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[10]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[11] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[11]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[12] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[12]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[13] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[13]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[14] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[14]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[15] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[15]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[16] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[16]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[17] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[17]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[18] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[18]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[19] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[19]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[1] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[1]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[20] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[20]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[21] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[21]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[22] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[22]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[23] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[23]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[24] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[24]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[25] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[25]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[26] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[26]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[27] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[27]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[28] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[28]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[29] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[29]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[2] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(SETTLE_TIMEOUT[2]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[30] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[30]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[31] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[31]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[3] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(SETTLE_TIMEOUT[3]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[4] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(SETTLE_TIMEOUT[4]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[5] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[5]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[6] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[6]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[7] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[7]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[8] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[8]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[9] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[9]),
        .R(1'b0));
  FDCE dl_en_hs_lpn_reg
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(lp_state_sync1_i_n_7),
        .Q(dl_en_hs_lpn_i));
  LUT6 #(
    .INIT(64'hF0F0F0F0EEEEF0FF)) 
    dl_en_hs_rx_term_i_2__0
       (.I0(dl_rx_state__0[0]),
        .I1(\lp_st_cnt[0]_i_2__0_n_0 ),
        .I2(lp_11_r_reg_n_0),
        .I3(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I4(dl_rx_state__0[2]),
        .I5(dl_rx_state__0[1]),
        .O(dl_en_hs_rx_term_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    dl_en_hs_rx_term_i_4__0
       (.I0(dl_rx_state__0[2]),
        .I1(dl_rx_state__0[3]),
        .O(dl_en_hs_rx_term_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h0000000D00000000)) 
    dl_en_hs_rx_term_i_5__0
       (.I0(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I1(lp_11_r_reg_n_0),
        .I2(dl_rx_state__0[0]),
        .I3(dl_rx_state__0[2]),
        .I4(dl_rx_state__0[1]),
        .I5(dl_rx_state__0[3]),
        .O(dl_en_hs_rx_term_i_5__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    dl_en_hs_rx_term_i_6__0
       (.I0(dl_rx_state__0[1]),
        .I1(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I2(time_out_settle_reg_0),
        .I3(lp_11_r_reg_n_0),
        .O(dl_en_hs_rx_term_i_6__0_n_0));
  FDPE dl_en_hs_rx_term_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync1_i_n_8),
        .PRE(core_rst),
        .Q(rx_dl1_disable_ibuf));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1011)) 
    dl_stopstate_i_2__0
       (.I0(dl_rx_state__0[2]),
        .I1(dl_rx_state__0[0]),
        .I2(lp_11_r_reg_n_0),
        .I3(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .O(dl_stopstate_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h8888F888)) 
    dl_stopstate_i_4
       (.I0(out),
        .I1(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .I2(dl_rx_state__0[1]),
        .I3(dl_rx_state__0[2]),
        .I4(lp_11_r_reg_n_0),
        .O(dl_stopstate_i_4_n_0));
  FDCE dl_stopstate_reg
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(lp_state_sync0_i_n_4),
        .Q(dl_stopstate));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \gen_hs_high_rates_spec_v1_1.stopstate_i_1__0 
       (.I0(\gen_hs_high_rates_spec_v1_1.stopstate_i_2_n_0 ),
        .I1(\gen_hs_high_rates_spec_v1_1.stopstate_i_3__0_n_0 ),
        .I2(E),
        .I3(dl1_stopstate),
        .O(\gen_hs_high_rates_spec_v1_1.stopstate_reg ));
  LUT6 #(
    .INIT(64'h00220022000B0000)) 
    \gen_hs_high_rates_spec_v1_1.stopstate_i_2 
       (.I0(rxactivehs_coreclk_sync_r),
        .I1(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ),
        .I2(dl_en_hs_lpn_i),
        .I3(Q[0]),
        .I4(dl_stopstate),
        .I5(Q[1]),
        .O(\gen_hs_high_rates_spec_v1_1.stopstate_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004040404)) 
    \gen_hs_high_rates_spec_v1_1.stopstate_i_3__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(dl_en_hs_lpn_i),
        .I3(dl_stopstate),
        .I4(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 ),
        .I5(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ),
        .O(\gen_hs_high_rates_spec_v1_1.stopstate_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    lp_00_r_i_1__1
       (.I0(\lp_st_cnt_reg_n_0_[2] ),
        .I1(\lp_st_cnt_reg_n_0_[1] ),
        .I2(\lp_st_cnt_reg_n_0_[0] ),
        .I3(\lp_st_cnt_reg_n_0_[4] ),
        .I4(\lp_st_cnt_reg_n_0_[3] ),
        .O(lp_00_r_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    lp_00_r_i_2__1
       (.I0(\lp_st_dup_reg_n_0_[0] ),
        .I1(\lp_st_dup_reg_n_0_[1] ),
        .O(lp_00_r_i_2__1_n_0));
  FDRE lp_00_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_00_r_i_2__1_n_0),
        .Q(lp_00_r),
        .R(lp_00_r_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    lp_01_r_i_1__1
       (.I0(\lp_st_dup_reg_n_0_[0] ),
        .I1(\lp_st_dup_reg_n_0_[1] ),
        .O(lp_01_r_i_1__1_n_0));
  FDRE lp_01_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_01_r_i_1__1_n_0),
        .Q(lp_01_r),
        .R(lp_00_r_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    lp_10_r_i_1__1
       (.I0(\lp_st_dup_reg_n_0_[1] ),
        .I1(\lp_st_dup_reg_n_0_[0] ),
        .O(lp_10_r_i_1__1_n_0));
  FDRE lp_10_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_10_r_i_1__1_n_0),
        .Q(lp_10_r),
        .R(lp_00_r_i_1__1_n_0));
  FDRE lp_11_r_dly_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_11_r_nxt_reg_n_0),
        .Q(lp_11_r_dly),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    lp_11_r_i_1__1
       (.I0(\lp_st_dup_reg_n_0_[0] ),
        .I1(\lp_st_dup_reg_n_0_[1] ),
        .O(lp_11_r_i_1__1_n_0));
  FDRE lp_11_r_nxt_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_11_r_reg_n_0),
        .Q(lp_11_r_nxt_reg_n_0),
        .R(1'b0));
  FDRE lp_11_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_11_r_i_1__1_n_0),
        .Q(lp_11_r_reg_n_0),
        .R(lp_00_r_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \lp_st_cnt[0]_i_2__0 
       (.I0(lp_10_r),
        .I1(lp_00_r),
        .O(\lp_st_cnt[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \lp_st_cnt[0]_i_3__0 
       (.I0(\lp_st_cnt_reg_n_0_[3] ),
        .I1(\lp_st_cnt_reg_n_0_[4] ),
        .I2(\lp_st_cnt_reg_n_0_[0] ),
        .I3(\lp_st_cnt_reg_n_0_[1] ),
        .I4(\lp_st_cnt_reg_n_0_[2] ),
        .O(\lp_st_cnt[0]_i_3__0_n_0 ));
  FDRE \lp_st_cnt_reg[0] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_st_cnt[0]),
        .Q(\lp_st_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[1] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_st_cnt[1]),
        .Q(\lp_st_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[2] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_st_cnt[2]),
        .Q(\lp_st_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[3] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_st_cnt[3]),
        .Q(\lp_st_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[4] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_st_cnt[4]),
        .Q(\lp_st_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \lp_st_dup_reg[0] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync[0]),
        .Q(\lp_st_dup_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lp_st_dup_reg[1] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync[1]),
        .Q(\lp_st_dup_reg_n_0_[1] ),
        .R(1'b0));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_10 lp_state_sync0_i
       (.D({lp_state_sync0_i_n_1,lp_state_sync0_i_n_2}),
        .E(lp_state_sync0_i_n_3),
        .\FSM_sequential_dl_rx_state_reg[0] (\FSM_sequential_dl_rx_state[3]_i_3__0_n_0 ),
        .\FSM_sequential_dl_rx_state_reg[0]_0 (\FSM_sequential_dl_rx_state[3]_i_4__0_n_0 ),
        .\FSM_sequential_dl_rx_state_reg[0]_1 (lp_state_sync1_i_n_6),
        .\FSM_sequential_dl_rx_state_reg[0]_2 (\FSM_sequential_dl_rx_state[3]_i_10__0_n_0 ),
        .\FSM_sequential_dl_rx_state_reg[0]_3 (\FSM_sequential_dl_rx_state[3]_i_12_n_0 ),
        .\FSM_sequential_dl_rx_state_reg[0]_4 (dl_en_hs_rx_term_i_6__0_n_0),
        .\FSM_sequential_dl_rx_state_reg[1] (lp_state_sync0_i_n_4),
        .\FSM_sequential_dl_rx_state_reg[1]_0 (lp_state_sync[1]),
        .\FSM_sequential_dl_rx_state_reg[1]_1 (\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .\FSM_sequential_dl_rx_state_reg[1]_2 (out),
        .\FSM_sequential_dl_rx_state_reg[2] (dl_en_hs_lpn_reg_0),
        .\FSM_sequential_dl_rx_state_reg[2]_0 (\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .\FSM_sequential_dl_rx_state_reg[2]_1 (\FSM_sequential_dl_rx_state[2]_i_3__0_n_0 ),
        .Q(dl_rx_state__0),
        .core_clk(core_clk),
        .dl_stopstate(dl_stopstate),
        .dl_stopstate_reg(lp_11_r_reg_n_0),
        .dl_stopstate_reg_0(dl_stopstate_i_2__0_n_0),
        .dl_stopstate_reg_1(dl_stopstate_i_4_n_0),
        .lp_11_r_dly(lp_11_r_dly),
        .out(lp_state_sync[0]),
        .rx_dl1_lp_dn(rx_dl1_lp_dn));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_11 lp_state_sync1_i
       (.D(lp_st_cnt),
        .\FSM_sequential_dl_rx_state_reg[3] (\FSM_sequential_dl_rx_state[3]_i_4__0_n_0 ),
        .\FSM_sequential_dl_rx_state_reg[3]_0 (\FSM_sequential_dl_rx_state[3]_i_8__0_n_0 ),
        .Q(dl_rx_state__0),
        .core_clk(core_clk),
        .dl_en_hs_lpn_reg(lp_11_r_reg_n_0),
        .dl_en_hs_lpn_reg_0(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .dl_en_hs_lpn_reg_1(dl_en_hs_lpn_reg_1),
        .dl_en_hs_lpn_reg_2(dl_en_hs_lpn_reg_0),
        .dl_en_hs_lpn_reg_3(dl_en_hs_lpn_i),
        .dl_en_hs_rx_term_reg(lp_state_sync1_i_n_8),
        .dl_en_hs_rx_term_reg_0(dl_en_hs_rx_term_i_6__0_n_0),
        .dl_en_hs_rx_term_reg_1(lp_state_sync[0]),
        .dl_en_hs_rx_term_reg_2(dl_en_hs_rx_term_i_2__0_n_0),
        .dl_en_hs_rx_term_reg_3(dl_en_hs_rx_term_i_4__0_n_0),
        .dl_en_hs_rx_term_reg_4(dl_en_hs_rx_term_i_5__0_n_0),
        .lp_00_r(lp_00_r),
        .lp_01_r(lp_01_r),
        .lp_10_r(lp_10_r),
        .lp_11_r_reg(lp_state_sync1_i_n_7),
        .lp_11_r_reg_0(lp_state_sync1_i_n_9),
        .\lp_st_cnt_reg[0] (\lp_st_cnt[0]_i_2__0_n_0 ),
        .\lp_st_cnt_reg[0]_0 (\lp_st_cnt[0]_i_3__0_n_0 ),
        .\lp_st_cnt_reg[0]_1 ({\lp_st_dup_reg_n_0_[1] ,\lp_st_dup_reg_n_0_[0] }),
        .\lp_st_cnt_reg[1] ({\lp_st_cnt_reg_n_0_[4] ,\lp_st_cnt_reg_n_0_[3] ,\lp_st_cnt_reg_n_0_[2] ,\lp_st_cnt_reg_n_0_[1] ,\lp_st_cnt_reg_n_0_[0] }),
        .out(lp_state_sync[1]),
        .rx_dl1_disable_ibuf(rx_dl1_disable_ibuf),
        .rx_dl1_lp_dp(rx_dl1_lp_dp),
        .s_level_out_d2_reg_0(lp_state_sync1_i_n_6));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \settle_cnt[0]_i_1__0 
       (.I0(settle_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \settle_cnt[1]_i_1__0 
       (.I0(settle_cnt_reg[0]),
        .I1(settle_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \settle_cnt[2]_i_1__0 
       (.I0(settle_cnt_reg[2]),
        .I1(settle_cnt_reg[1]),
        .I2(settle_cnt_reg[0]),
        .O(\settle_cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \settle_cnt[3]_i_1__0 
       (.I0(settle_cnt_reg[3]),
        .I1(settle_cnt_reg[1]),
        .I2(settle_cnt_reg[0]),
        .I3(settle_cnt_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \settle_cnt[4]_i_1 
       (.I0(settle_cnt_reg[4]),
        .I1(settle_cnt_reg[2]),
        .I2(settle_cnt_reg[0]),
        .I3(settle_cnt_reg[1]),
        .I4(settle_cnt_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \settle_cnt[5]_i_1__0 
       (.I0(settle_cnt_reg[5]),
        .I1(settle_cnt_reg[4]),
        .I2(settle_cnt_reg[2]),
        .I3(settle_cnt_reg[0]),
        .I4(settle_cnt_reg[1]),
        .I5(settle_cnt_reg[3]),
        .O(\settle_cnt[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \settle_cnt[6]_i_1__0 
       (.I0(settle_cnt_reg[6]),
        .I1(\settle_cnt[7]_i_4__0_n_0 ),
        .I2(settle_cnt_reg[5]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \settle_cnt[7]_i_1__0 
       (.I0(dl_rx_state__0[3]),
        .I1(dl_rx_state__0[2]),
        .I2(dl_rx_state__0[1]),
        .I3(dl_rx_state__0[0]),
        .O(\settle_cnt[7]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \settle_cnt[7]_i_2__0 
       (.I0(time_out_settle0_carry__0_n_5),
        .O(\settle_cnt[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \settle_cnt[7]_i_3__0 
       (.I0(settle_cnt_reg[7]),
        .I1(settle_cnt_reg[6]),
        .I2(settle_cnt_reg[5]),
        .I3(\settle_cnt[7]_i_4__0_n_0 ),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \settle_cnt[7]_i_4__0 
       (.I0(settle_cnt_reg[3]),
        .I1(settle_cnt_reg[1]),
        .I2(settle_cnt_reg[0]),
        .I3(settle_cnt_reg[2]),
        .I4(settle_cnt_reg[4]),
        .O(\settle_cnt[7]_i_4__0_n_0 ));
  FDRE \settle_cnt_reg[0] 
       (.C(core_clk),
        .CE(\settle_cnt[7]_i_2__0_n_0 ),
        .D(p_0_in[0]),
        .Q(settle_cnt_reg[0]),
        .R(\settle_cnt[7]_i_1__0_n_0 ));
  FDRE \settle_cnt_reg[1] 
       (.C(core_clk),
        .CE(\settle_cnt[7]_i_2__0_n_0 ),
        .D(p_0_in[1]),
        .Q(settle_cnt_reg[1]),
        .R(\settle_cnt[7]_i_1__0_n_0 ));
  FDRE \settle_cnt_reg[2] 
       (.C(core_clk),
        .CE(\settle_cnt[7]_i_2__0_n_0 ),
        .D(\settle_cnt[2]_i_1__0_n_0 ),
        .Q(settle_cnt_reg[2]),
        .R(\settle_cnt[7]_i_1__0_n_0 ));
  FDRE \settle_cnt_reg[3] 
       (.C(core_clk),
        .CE(\settle_cnt[7]_i_2__0_n_0 ),
        .D(p_0_in[3]),
        .Q(settle_cnt_reg[3]),
        .R(\settle_cnt[7]_i_1__0_n_0 ));
  FDRE \settle_cnt_reg[4] 
       (.C(core_clk),
        .CE(\settle_cnt[7]_i_2__0_n_0 ),
        .D(p_0_in[4]),
        .Q(settle_cnt_reg[4]),
        .R(\settle_cnt[7]_i_1__0_n_0 ));
  FDRE \settle_cnt_reg[5] 
       (.C(core_clk),
        .CE(\settle_cnt[7]_i_2__0_n_0 ),
        .D(\settle_cnt[5]_i_1__0_n_0 ),
        .Q(settle_cnt_reg[5]),
        .R(\settle_cnt[7]_i_1__0_n_0 ));
  FDRE \settle_cnt_reg[6] 
       (.C(core_clk),
        .CE(\settle_cnt[7]_i_2__0_n_0 ),
        .D(p_0_in[6]),
        .Q(settle_cnt_reg[6]),
        .R(\settle_cnt[7]_i_1__0_n_0 ));
  FDRE \settle_cnt_reg[7] 
       (.C(core_clk),
        .CE(\settle_cnt[7]_i_2__0_n_0 ),
        .D(p_0_in[7]),
        .Q(settle_cnt_reg[7]),
        .R(\settle_cnt[7]_i_1__0_n_0 ));
  CARRY8 time_out_settle0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({time_out_settle0_carry_n_0,time_out_settle0_carry_n_1,time_out_settle0_carry_n_2,time_out_settle0_carry_n_3,time_out_settle0_carry_n_4,time_out_settle0_carry_n_5,time_out_settle0_carry_n_6,time_out_settle0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_time_out_settle0_carry_O_UNCONNECTED[7:0]),
        .S({time_out_settle0_carry_i_1__0_n_0,time_out_settle0_carry_i_2__0_n_0,time_out_settle0_carry_i_3__0_n_0,time_out_settle0_carry_i_4__0_n_0,time_out_settle0_carry_i_5__0_n_0,time_out_settle0_carry_i_6__0_n_0,time_out_settle0_carry_i_7__0_n_0,time_out_settle0_carry_i_8__0_n_0}));
  CARRY8 time_out_settle0_carry__0
       (.CI(time_out_settle0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_time_out_settle0_carry__0_CO_UNCONNECTED[7:3],time_out_settle0_carry__0_n_5,time_out_settle0_carry__0_n_6,time_out_settle0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_time_out_settle0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,time_out_settle0_carry__0_i_1__0_n_0,time_out_settle0_carry__0_i_2__0_n_0,time_out_settle0_carry__0_i_3__0_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    time_out_settle0_carry__0_i_1__0
       (.I0(SETTLE_TIMEOUT[30]),
        .I1(SETTLE_TIMEOUT[31]),
        .O(time_out_settle0_carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry__0_i_2__0
       (.I0(SETTLE_TIMEOUT[28]),
        .I1(SETTLE_TIMEOUT[27]),
        .I2(SETTLE_TIMEOUT[29]),
        .O(time_out_settle0_carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry__0_i_3__0
       (.I0(SETTLE_TIMEOUT[25]),
        .I1(SETTLE_TIMEOUT[24]),
        .I2(SETTLE_TIMEOUT[26]),
        .O(time_out_settle0_carry__0_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry_i_1__0
       (.I0(SETTLE_TIMEOUT[22]),
        .I1(SETTLE_TIMEOUT[21]),
        .I2(SETTLE_TIMEOUT[23]),
        .O(time_out_settle0_carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry_i_2__0
       (.I0(SETTLE_TIMEOUT[19]),
        .I1(SETTLE_TIMEOUT[18]),
        .I2(SETTLE_TIMEOUT[20]),
        .O(time_out_settle0_carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry_i_3__0
       (.I0(SETTLE_TIMEOUT[16]),
        .I1(SETTLE_TIMEOUT[15]),
        .I2(SETTLE_TIMEOUT[17]),
        .O(time_out_settle0_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry_i_4__0
       (.I0(SETTLE_TIMEOUT[13]),
        .I1(SETTLE_TIMEOUT[12]),
        .I2(SETTLE_TIMEOUT[14]),
        .O(time_out_settle0_carry_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry_i_5__0
       (.I0(SETTLE_TIMEOUT[10]),
        .I1(SETTLE_TIMEOUT[9]),
        .I2(SETTLE_TIMEOUT[11]),
        .O(time_out_settle0_carry_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h00009009)) 
    time_out_settle0_carry_i_6__0
       (.I0(SETTLE_TIMEOUT[6]),
        .I1(settle_cnt_reg[6]),
        .I2(settle_cnt_reg[7]),
        .I3(SETTLE_TIMEOUT[7]),
        .I4(SETTLE_TIMEOUT[8]),
        .O(time_out_settle0_carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    time_out_settle0_carry_i_7__0
       (.I0(SETTLE_TIMEOUT[5]),
        .I1(settle_cnt_reg[5]),
        .I2(settle_cnt_reg[3]),
        .I3(SETTLE_TIMEOUT[3]),
        .I4(settle_cnt_reg[4]),
        .I5(SETTLE_TIMEOUT[4]),
        .O(time_out_settle0_carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    time_out_settle0_carry_i_8__0
       (.I0(SETTLE_TIMEOUT[2]),
        .I1(settle_cnt_reg[2]),
        .I2(settle_cnt_reg[0]),
        .I3(SETTLE_TIMEOUT[0]),
        .I4(settle_cnt_reg[1]),
        .I5(SETTLE_TIMEOUT[1]),
        .O(time_out_settle0_carry_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h3000000020000000)) 
    time_out_settle_i_1__0
       (.I0(time_out_settle_reg_0),
        .I1(dl_rx_state__0[3]),
        .I2(dl_rx_state__0[2]),
        .I3(dl_rx_state__0[1]),
        .I4(dl_rx_state__0[0]),
        .I5(time_out_settle0_carry__0_n_5),
        .O(time_out_settle_i_1__0_n_0));
  FDRE time_out_settle_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(time_out_settle_i_1__0_n_0),
        .Q(time_out_settle_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_csi_rx_data_lane_sm" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_csi_rx_data_lane_sm_12
   (lp_11_r_reg_0,
    dl_en_hs_lpn_i,
    rx_dl0_disable_ibuf,
    \gen_hs_high_rates_spec_v1_1.stopstate_reg ,
    E,
    D,
    rx_dl0_lp_dn,
    rx_dl0_lp_dp,
    core_clk,
    core_rst,
    \FSM_sequential_dl_rx_state_reg[1]_0 ,
    out,
    \FSM_sequential_dl_rx_state_reg[2]_0 ,
    dl_stopstate_reg_0,
    dl_en_hs_lpn_reg_0,
    dl0_stopstate,
    rxactivehs_coreclk_sync_r,
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ,
    Q,
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ,
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 );
  output lp_11_r_reg_0;
  output dl_en_hs_lpn_i;
  output rx_dl0_disable_ibuf;
  output \gen_hs_high_rates_spec_v1_1.stopstate_reg ;
  output [0:0]E;
  output [1:0]D;
  input rx_dl0_lp_dn;
  input rx_dl0_lp_dp;
  input core_clk;
  input core_rst;
  input \FSM_sequential_dl_rx_state_reg[1]_0 ;
  input out;
  input \FSM_sequential_dl_rx_state_reg[2]_0 ;
  input dl_stopstate_reg_0;
  input dl_en_hs_lpn_reg_0;
  input dl0_stopstate;
  input rxactivehs_coreclk_sync_r;
  input \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ;
  input [1:0]Q;
  input \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ;
  input \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_dl_rx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_dl_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_dl_rx_state[0]_i_3_n_0 ;
  wire \FSM_sequential_dl_rx_state[0]_i_4_n_0 ;
  wire \FSM_sequential_dl_rx_state[2]_i_3_n_0 ;
  wire \FSM_sequential_dl_rx_state[2]_i_4__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_7__0_n_0 ;
  wire \FSM_sequential_dl_rx_state_reg[1]_0 ;
  wire \FSM_sequential_dl_rx_state_reg[2]_0 ;
  wire \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_3_n_0 ;
  wire \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ;
  wire \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ;
  wire \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 ;
  wire [1:0]Q;
  (* DONT_TOUCH *) wire [31:0]SETTLE_TIMEOUT;
  wire core_clk;
  wire core_rst;
  wire dl0_stopstate;
  wire dl_en_hs_lpn_i;
  wire dl_en_hs_lpn_reg_0;
  wire dl_en_hs_rx_term_i_2_n_0;
  wire dl_en_hs_rx_term_i_4_n_0;
  wire dl_en_hs_rx_term_i_5_n_0;
  wire dl_en_hs_rx_term_i_7_n_0;
  wire [3:0]dl_rx_state__0;
  wire dl_stopstate;
  wire dl_stopstate_reg_0;
  wire \gen_hs_high_rates_spec_v1_1.stopstate_i_3_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stopstate_i_4_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stopstate_reg ;
  wire lp_00_r;
  wire lp_00_r_i_1__0_n_0;
  wire lp_00_r_i_2__0_n_0;
  wire lp_01_r;
  wire lp_01_r_i_1__0_n_0;
  wire lp_10_r;
  wire lp_10_r_i_1__0_n_0;
  wire lp_11_r_dly;
  wire lp_11_r_i_1__0_n_0;
  wire lp_11_r_nxt_reg_n_0;
  wire lp_11_r_reg_0;
  wire [4:0]lp_st_cnt;
  wire \lp_st_cnt[0]_i_2_n_0 ;
  wire \lp_st_cnt[0]_i_3_n_0 ;
  wire \lp_st_cnt_reg_n_0_[0] ;
  wire \lp_st_cnt_reg_n_0_[1] ;
  wire \lp_st_cnt_reg_n_0_[2] ;
  wire \lp_st_cnt_reg_n_0_[3] ;
  wire \lp_st_cnt_reg_n_0_[4] ;
  wire \lp_st_dup_reg_n_0_[0] ;
  wire \lp_st_dup_reg_n_0_[1] ;
  wire [1:0]lp_state_sync;
  wire lp_state_sync0_i_n_1;
  wire lp_state_sync0_i_n_2;
  wire lp_state_sync0_i_n_3;
  wire lp_state_sync0_i_n_4;
  wire lp_state_sync0_i_n_5;
  wire lp_state_sync1_i_n_1;
  wire lp_state_sync1_i_n_7;
  wire lp_state_sync1_i_n_8;
  wire lp_state_sync1_i_n_9;
  wire out;
  wire [7:0]p_0_in;
  wire rx_dl0_disable_ibuf;
  wire rx_dl0_lp_dn;
  wire rx_dl0_lp_dp;
  wire rxactivehs_coreclk_sync_r;
  wire sel;
  wire \settle_cnt[2]_i_1_n_0 ;
  wire \settle_cnt[4]_i_1__0_n_0 ;
  wire \settle_cnt[7]_i_1_n_0 ;
  wire \settle_cnt[7]_i_4_n_0 ;
  wire [7:0]settle_cnt_reg;
  wire time_out_settle0_carry__0_i_1_n_0;
  wire time_out_settle0_carry__0_i_2_n_0;
  wire time_out_settle0_carry__0_i_3_n_0;
  wire time_out_settle0_carry__0_n_5;
  wire time_out_settle0_carry__0_n_6;
  wire time_out_settle0_carry__0_n_7;
  wire time_out_settle0_carry_i_1_n_0;
  wire time_out_settle0_carry_i_2_n_0;
  wire time_out_settle0_carry_i_3_n_0;
  wire time_out_settle0_carry_i_4_n_0;
  wire time_out_settle0_carry_i_5_n_0;
  wire time_out_settle0_carry_i_6_n_0;
  wire time_out_settle0_carry_i_7_n_0;
  wire time_out_settle0_carry_i_8_n_0;
  wire time_out_settle0_carry_n_0;
  wire time_out_settle0_carry_n_1;
  wire time_out_settle0_carry_n_2;
  wire time_out_settle0_carry_n_3;
  wire time_out_settle0_carry_n_4;
  wire time_out_settle0_carry_n_5;
  wire time_out_settle0_carry_n_6;
  wire time_out_settle0_carry_n_7;
  wire time_out_settle_i_1_n_0;
  wire time_out_settle_reg_n_0;
  wire [7:0]NLW_time_out_settle0_carry_O_UNCONNECTED;
  wire [7:3]NLW_time_out_settle0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_time_out_settle0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF0000222F)) 
    \FSM_sequential_dl_rx_state[0]_i_1 
       (.I0(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .I1(\FSM_sequential_dl_rx_state[0]_i_2_n_0 ),
        .I2(\FSM_sequential_dl_rx_state[0]_i_3_n_0 ),
        .I3(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I4(dl_rx_state__0[1]),
        .I5(\FSM_sequential_dl_rx_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_dl_rx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_dl_rx_state[0]_i_2 
       (.I0(dl_rx_state__0[3]),
        .I1(dl_rx_state__0[2]),
        .O(\FSM_sequential_dl_rx_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_dl_rx_state[0]_i_3 
       (.I0(dl_rx_state__0[0]),
        .I1(dl_rx_state__0[2]),
        .O(\FSM_sequential_dl_rx_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000040F)) 
    \FSM_sequential_dl_rx_state[0]_i_4 
       (.I0(lp_11_r_reg_0),
        .I1(dl_rx_state__0[2]),
        .I2(dl_rx_state__0[3]),
        .I3(dl_rx_state__0[1]),
        .I4(dl_rx_state__0[0]),
        .I5(dl_stopstate_reg_0),
        .O(\FSM_sequential_dl_rx_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_dl_rx_state[2]_i_3 
       (.I0(dl_rx_state__0[3]),
        .I1(dl_rx_state__0[1]),
        .O(\FSM_sequential_dl_rx_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \FSM_sequential_dl_rx_state[2]_i_4__0 
       (.I0(dl_rx_state__0[1]),
        .I1(dl_rx_state__0[3]),
        .I2(dl_rx_state__0[0]),
        .O(\FSM_sequential_dl_rx_state[2]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_dl_rx_state[3]_i_11 
       (.I0(dl_rx_state__0[0]),
        .I1(dl_rx_state__0[1]),
        .O(\FSM_sequential_dl_rx_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0FCC0DC)) 
    \FSM_sequential_dl_rx_state[3]_i_5 
       (.I0(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I1(dl_rx_state__0[1]),
        .I2(dl_rx_state__0[3]),
        .I3(dl_rx_state__0[0]),
        .I4(lp_11_r_reg_0),
        .I5(dl_stopstate_reg_0),
        .O(\FSM_sequential_dl_rx_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_dl_rx_state[3]_i_7__0 
       (.I0(dl_rx_state__0[1]),
        .I1(lp_11_r_reg_0),
        .O(\FSM_sequential_dl_rx_state[3]_i_7__0_n_0 ));
  (* FSM_ENCODED_STATES = "DL_RX_HS_RQST:0101,DL_RX_STOP:0100,DL_RX_INIT_DONE:0011,DL_WO_INIT_LP_11:0001,DL_RX_BEGIN:0000,DL_RX_HS_RUN:1000,DL_RX_HS_ABORT:1001,DL_RX_HS_SYNC:0111,iSTATE:0010,DL_RX_HS_TERM:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_dl_rx_state_reg[0] 
       (.C(core_clk),
        .CE(lp_state_sync0_i_n_3),
        .CLR(core_rst),
        .D(\FSM_sequential_dl_rx_state[0]_i_1_n_0 ),
        .Q(dl_rx_state__0[0]));
  (* FSM_ENCODED_STATES = "DL_RX_HS_RQST:0101,DL_RX_STOP:0100,DL_RX_INIT_DONE:0011,DL_WO_INIT_LP_11:0001,DL_RX_BEGIN:0000,DL_RX_HS_RUN:1000,DL_RX_HS_ABORT:1001,DL_RX_HS_SYNC:0111,iSTATE:0010,DL_RX_HS_TERM:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_dl_rx_state_reg[1] 
       (.C(core_clk),
        .CE(lp_state_sync0_i_n_3),
        .CLR(core_rst),
        .D(lp_state_sync0_i_n_2),
        .Q(dl_rx_state__0[1]));
  (* FSM_ENCODED_STATES = "DL_RX_HS_RQST:0101,DL_RX_STOP:0100,DL_RX_INIT_DONE:0011,DL_WO_INIT_LP_11:0001,DL_RX_BEGIN:0000,DL_RX_HS_RUN:1000,DL_RX_HS_ABORT:1001,DL_RX_HS_SYNC:0111,iSTATE:0010,DL_RX_HS_TERM:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_dl_rx_state_reg[2] 
       (.C(core_clk),
        .CE(lp_state_sync0_i_n_3),
        .CLR(core_rst),
        .D(lp_state_sync0_i_n_1),
        .Q(dl_rx_state__0[2]));
  (* FSM_ENCODED_STATES = "DL_RX_HS_RQST:0101,DL_RX_STOP:0100,DL_RX_INIT_DONE:0011,DL_WO_INIT_LP_11:0001,DL_RX_BEGIN:0000,DL_RX_HS_RUN:1000,DL_RX_HS_ABORT:1001,DL_RX_HS_SYNC:0111,iSTATE:0010,DL_RX_HS_TERM:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_dl_rx_state_reg[3] 
       (.C(core_clk),
        .CE(lp_state_sync0_i_n_3),
        .CLR(core_rst),
        .D(lp_state_sync1_i_n_9),
        .Q(dl_rx_state__0[3]));
  LUT6 #(
    .INIT(64'hBABBBABBBABABABB)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[0]_i_1 
       (.I0(\gen_hs_high_rates_spec_v1_1.stopstate_i_4_n_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(dl_en_hs_lpn_i),
        .I4(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ),
        .I5(rxactivehs_coreclk_sync_r),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h3333333332FE3332)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_1 
       (.I0(dl_stopstate),
        .I1(Q[1]),
        .I2(dl_en_hs_lpn_i),
        .I3(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ),
        .I4(rxactivehs_coreclk_sync_r),
        .I5(Q[0]),
        .O(E));
  LUT6 #(
    .INIT(64'h554000005540FFFF)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_2 
       (.I0(Q[1]),
        .I1(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ),
        .I2(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 ),
        .I3(dl_en_hs_lpn_i),
        .I4(Q[0]),
        .I5(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_3_n_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hBBAB)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_3 
       (.I0(Q[1]),
        .I1(dl_en_hs_lpn_i),
        .I2(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ),
        .I3(rxactivehs_coreclk_sync_r),
        .O(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state[1]_i_3_n_0 ));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[0] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(SETTLE_TIMEOUT[0]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[10] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[10]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[11] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[11]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[12] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[12]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[13] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[13]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[14] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[14]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[15] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[15]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[16] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[16]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[17] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[17]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[18] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[18]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[19] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[19]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[1] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[1]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[20] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[20]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[21] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[21]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[22] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[22]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[23] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[23]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[24] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[24]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[25] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[25]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[26] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[26]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[27] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[27]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[28] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[28]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[29] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[29]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[2] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(SETTLE_TIMEOUT[2]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[30] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[30]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[31] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[31]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[3] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(SETTLE_TIMEOUT[3]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[4] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(SETTLE_TIMEOUT[4]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[5] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[5]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[6] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[6]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[7] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[7]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[8] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[8]),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE \SETTLE_TIMEOUT_reg[9] 
       (.C(core_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(SETTLE_TIMEOUT[9]),
        .R(1'b0));
  FDCE dl_en_hs_lpn_reg
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(lp_state_sync1_i_n_8),
        .Q(dl_en_hs_lpn_i));
  LUT6 #(
    .INIT(64'hFE0EFE0EFF00FF0F)) 
    dl_en_hs_rx_term_i_2
       (.I0(dl_rx_state__0[0]),
        .I1(\lp_st_cnt[0]_i_2_n_0 ),
        .I2(dl_rx_state__0[1]),
        .I3(lp_11_r_reg_0),
        .I4(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I5(dl_rx_state__0[2]),
        .O(dl_en_hs_rx_term_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dl_en_hs_rx_term_i_4
       (.I0(dl_rx_state__0[2]),
        .I1(dl_rx_state__0[3]),
        .O(dl_en_hs_rx_term_i_4_n_0));
  LUT6 #(
    .INIT(64'h0004000400000004)) 
    dl_en_hs_rx_term_i_5
       (.I0(dl_rx_state__0[1]),
        .I1(dl_rx_state__0[3]),
        .I2(dl_rx_state__0[0]),
        .I3(dl_rx_state__0[2]),
        .I4(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I5(lp_11_r_reg_0),
        .O(dl_en_hs_rx_term_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h15FF)) 
    dl_en_hs_rx_term_i_7
       (.I0(lp_11_r_reg_0),
        .I1(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I2(time_out_settle_reg_n_0),
        .I3(dl_rx_state__0[1]),
        .O(dl_en_hs_rx_term_i_7_n_0));
  FDPE dl_en_hs_rx_term_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync0_i_n_5),
        .PRE(core_rst),
        .Q(rx_dl0_disable_ibuf));
  FDCE dl_stopstate_reg
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(lp_state_sync1_i_n_7),
        .Q(dl_stopstate));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \gen_hs_high_rates_spec_v1_1.stopstate_i_2__0 
       (.I0(\gen_hs_high_rates_spec_v1_1.stopstate_i_3_n_0 ),
        .I1(\gen_hs_high_rates_spec_v1_1.stopstate_i_4_n_0 ),
        .I2(E),
        .I3(dl0_stopstate),
        .O(\gen_hs_high_rates_spec_v1_1.stopstate_reg ));
  LUT6 #(
    .INIT(64'h00220022000B0000)) 
    \gen_hs_high_rates_spec_v1_1.stopstate_i_3 
       (.I0(rxactivehs_coreclk_sync_r),
        .I1(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] ),
        .I2(dl_en_hs_lpn_i),
        .I3(Q[0]),
        .I4(dl_stopstate),
        .I5(Q[1]),
        .O(\gen_hs_high_rates_spec_v1_1.stopstate_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000040004040404)) 
    \gen_hs_high_rates_spec_v1_1.stopstate_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(dl_en_hs_lpn_i),
        .I3(dl_stopstate),
        .I4(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 ),
        .I5(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ),
        .O(\gen_hs_high_rates_spec_v1_1.stopstate_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    lp_00_r_i_1__0
       (.I0(\lp_st_cnt_reg_n_0_[2] ),
        .I1(\lp_st_cnt_reg_n_0_[1] ),
        .I2(\lp_st_cnt_reg_n_0_[0] ),
        .I3(\lp_st_cnt_reg_n_0_[4] ),
        .I4(\lp_st_cnt_reg_n_0_[3] ),
        .O(lp_00_r_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    lp_00_r_i_2__0
       (.I0(\lp_st_dup_reg_n_0_[0] ),
        .I1(\lp_st_dup_reg_n_0_[1] ),
        .O(lp_00_r_i_2__0_n_0));
  FDRE lp_00_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_00_r_i_2__0_n_0),
        .Q(lp_00_r),
        .R(lp_00_r_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    lp_01_r_i_1__0
       (.I0(\lp_st_dup_reg_n_0_[0] ),
        .I1(\lp_st_dup_reg_n_0_[1] ),
        .O(lp_01_r_i_1__0_n_0));
  FDRE lp_01_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_01_r_i_1__0_n_0),
        .Q(lp_01_r),
        .R(lp_00_r_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    lp_10_r_i_1__0
       (.I0(\lp_st_dup_reg_n_0_[1] ),
        .I1(\lp_st_dup_reg_n_0_[0] ),
        .O(lp_10_r_i_1__0_n_0));
  FDRE lp_10_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_10_r_i_1__0_n_0),
        .Q(lp_10_r),
        .R(lp_00_r_i_1__0_n_0));
  FDRE lp_11_r_dly_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_11_r_nxt_reg_n_0),
        .Q(lp_11_r_dly),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    lp_11_r_i_1__0
       (.I0(\lp_st_dup_reg_n_0_[0] ),
        .I1(\lp_st_dup_reg_n_0_[1] ),
        .O(lp_11_r_i_1__0_n_0));
  FDRE lp_11_r_nxt_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_11_r_reg_0),
        .Q(lp_11_r_nxt_reg_n_0),
        .R(1'b0));
  FDRE lp_11_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_11_r_i_1__0_n_0),
        .Q(lp_11_r_reg_0),
        .R(lp_00_r_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \lp_st_cnt[0]_i_2 
       (.I0(lp_10_r),
        .I1(lp_00_r),
        .O(\lp_st_cnt[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \lp_st_cnt[0]_i_3 
       (.I0(\lp_st_cnt_reg_n_0_[3] ),
        .I1(\lp_st_cnt_reg_n_0_[4] ),
        .I2(\lp_st_cnt_reg_n_0_[0] ),
        .I3(\lp_st_cnt_reg_n_0_[1] ),
        .I4(\lp_st_cnt_reg_n_0_[2] ),
        .O(\lp_st_cnt[0]_i_3_n_0 ));
  FDRE \lp_st_cnt_reg[0] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_st_cnt[0]),
        .Q(\lp_st_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[1] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_st_cnt[1]),
        .Q(\lp_st_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[2] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_st_cnt[2]),
        .Q(\lp_st_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[3] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_st_cnt[3]),
        .Q(\lp_st_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \lp_st_cnt_reg[4] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_st_cnt[4]),
        .Q(\lp_st_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \lp_st_dup_reg[0] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync[0]),
        .Q(\lp_st_dup_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \lp_st_dup_reg[1] 
       (.C(core_clk),
        .CE(1'b1),
        .D(lp_state_sync[1]),
        .Q(\lp_st_dup_reg_n_0_[1] ),
        .R(1'b0));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_16 lp_state_sync0_i
       (.D({lp_state_sync0_i_n_1,lp_state_sync0_i_n_2}),
        .E(lp_state_sync0_i_n_3),
        .\FSM_sequential_dl_rx_state_reg[0] (\FSM_sequential_dl_rx_state[3]_i_5_n_0 ),
        .\FSM_sequential_dl_rx_state_reg[0]_0 (lp_state_sync1_i_n_1),
        .\FSM_sequential_dl_rx_state_reg[1] (lp_state_sync[1]),
        .\FSM_sequential_dl_rx_state_reg[1]_0 (\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .\FSM_sequential_dl_rx_state_reg[1]_1 (out),
        .\FSM_sequential_dl_rx_state_reg[2] (\FSM_sequential_dl_rx_state[2]_i_3_n_0 ),
        .\FSM_sequential_dl_rx_state_reg[2]_0 (\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .\FSM_sequential_dl_rx_state_reg[2]_1 (\FSM_sequential_dl_rx_state[2]_i_4__0_n_0 ),
        .\FSM_sequential_dl_rx_state_reg[2]_2 (lp_11_r_reg_0),
        .Q(dl_rx_state__0),
        .core_clk(core_clk),
        .dl_en_hs_rx_term_reg(lp_state_sync0_i_n_5),
        .dl_en_hs_rx_term_reg_0(dl_stopstate_reg_0),
        .dl_en_hs_rx_term_reg_1(dl_en_hs_rx_term_i_7_n_0),
        .dl_en_hs_rx_term_reg_2(\lp_st_cnt[0]_i_2_n_0 ),
        .dl_en_hs_rx_term_reg_3(dl_en_hs_rx_term_i_2_n_0),
        .dl_en_hs_rx_term_reg_4(dl_en_hs_rx_term_i_4_n_0),
        .dl_en_hs_rx_term_reg_5(dl_en_hs_rx_term_i_5_n_0),
        .lp_11_r_dly(lp_11_r_dly),
        .out(lp_state_sync[0]),
        .rx_dl0_disable_ibuf(rx_dl0_disable_ibuf),
        .rx_dl0_lp_dn(rx_dl0_lp_dn),
        .s_level_out_d2_reg_0(lp_state_sync0_i_n_4));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_17 lp_state_sync1_i
       (.D(lp_st_cnt),
        .\FSM_sequential_dl_rx_state_reg[0] (lp_state_sync1_i_n_8),
        .\FSM_sequential_dl_rx_state_reg[2] (lp_state_sync1_i_n_7),
        .\FSM_sequential_dl_rx_state_reg[3] (lp_state_sync1_i_n_9),
        .\FSM_sequential_dl_rx_state_reg[3]_0 (lp_state_sync[0]),
        .\FSM_sequential_dl_rx_state_reg[3]_1 (\FSM_sequential_dl_rx_state[3]_i_11_n_0 ),
        .Q(dl_rx_state__0),
        .core_clk(core_clk),
        .dl_en_hs_lpn_i_3_0(dl_en_hs_rx_term_i_7_n_0),
        .dl_en_hs_lpn_reg(time_out_settle_reg_n_0),
        .dl_en_hs_lpn_reg_0(dl_en_hs_lpn_reg_0),
        .dl_en_hs_lpn_reg_1(dl_en_hs_lpn_i),
        .dl_stopstate(dl_stopstate),
        .dl_stopstate_reg(lp_state_sync0_i_n_4),
        .dl_stopstate_reg_0(dl_stopstate_reg_0),
        .dl_stopstate_reg_1(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .dl_stopstate_reg_2(\FSM_sequential_dl_rx_state[3]_i_7__0_n_0 ),
        .lp_00_r(lp_00_r),
        .lp_01_r(lp_01_r),
        .lp_10_r(lp_10_r),
        .lp_11_r_dly(lp_11_r_dly),
        .\lp_st_cnt_reg[0] (lp_11_r_reg_0),
        .\lp_st_cnt_reg[0]_0 (\lp_st_cnt[0]_i_2_n_0 ),
        .\lp_st_cnt_reg[0]_1 (\lp_st_cnt[0]_i_3_n_0 ),
        .\lp_st_cnt_reg[0]_2 ({\lp_st_dup_reg_n_0_[1] ,\lp_st_dup_reg_n_0_[0] }),
        .\lp_st_cnt_reg[1] ({\lp_st_cnt_reg_n_0_[4] ,\lp_st_cnt_reg_n_0_[3] ,\lp_st_cnt_reg_n_0_[2] ,\lp_st_cnt_reg_n_0_[1] ,\lp_st_cnt_reg_n_0_[0] }),
        .out(lp_state_sync[1]),
        .rx_dl0_lp_dp(rx_dl0_lp_dp),
        .s_level_out_d2_reg_0(lp_state_sync1_i_n_1));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \settle_cnt[0]_i_1 
       (.I0(settle_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \settle_cnt[1]_i_1 
       (.I0(settle_cnt_reg[0]),
        .I1(settle_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \settle_cnt[2]_i_1 
       (.I0(settle_cnt_reg[2]),
        .I1(settle_cnt_reg[1]),
        .I2(settle_cnt_reg[0]),
        .O(\settle_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \settle_cnt[3]_i_1 
       (.I0(settle_cnt_reg[3]),
        .I1(settle_cnt_reg[1]),
        .I2(settle_cnt_reg[0]),
        .I3(settle_cnt_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \settle_cnt[4]_i_1__0 
       (.I0(settle_cnt_reg[4]),
        .I1(settle_cnt_reg[3]),
        .I2(settle_cnt_reg[1]),
        .I3(settle_cnt_reg[0]),
        .I4(settle_cnt_reg[2]),
        .O(\settle_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \settle_cnt[5]_i_1 
       (.I0(settle_cnt_reg[5]),
        .I1(settle_cnt_reg[2]),
        .I2(settle_cnt_reg[0]),
        .I3(settle_cnt_reg[1]),
        .I4(settle_cnt_reg[3]),
        .I5(settle_cnt_reg[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \settle_cnt[6]_i_1 
       (.I0(settle_cnt_reg[6]),
        .I1(settle_cnt_reg[4]),
        .I2(\settle_cnt[7]_i_4_n_0 ),
        .I3(settle_cnt_reg[5]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \settle_cnt[7]_i_1 
       (.I0(dl_rx_state__0[3]),
        .I1(dl_rx_state__0[2]),
        .I2(dl_rx_state__0[1]),
        .I3(dl_rx_state__0[0]),
        .O(\settle_cnt[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \settle_cnt[7]_i_2 
       (.I0(time_out_settle0_carry__0_n_5),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \settle_cnt[7]_i_3 
       (.I0(settle_cnt_reg[7]),
        .I1(settle_cnt_reg[6]),
        .I2(settle_cnt_reg[5]),
        .I3(\settle_cnt[7]_i_4_n_0 ),
        .I4(settle_cnt_reg[4]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \settle_cnt[7]_i_4 
       (.I0(settle_cnt_reg[2]),
        .I1(settle_cnt_reg[0]),
        .I2(settle_cnt_reg[1]),
        .I3(settle_cnt_reg[3]),
        .O(\settle_cnt[7]_i_4_n_0 ));
  FDRE \settle_cnt_reg[0] 
       (.C(core_clk),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(settle_cnt_reg[0]),
        .R(\settle_cnt[7]_i_1_n_0 ));
  FDRE \settle_cnt_reg[1] 
       (.C(core_clk),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(settle_cnt_reg[1]),
        .R(\settle_cnt[7]_i_1_n_0 ));
  FDRE \settle_cnt_reg[2] 
       (.C(core_clk),
        .CE(sel),
        .D(\settle_cnt[2]_i_1_n_0 ),
        .Q(settle_cnt_reg[2]),
        .R(\settle_cnt[7]_i_1_n_0 ));
  FDRE \settle_cnt_reg[3] 
       (.C(core_clk),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(settle_cnt_reg[3]),
        .R(\settle_cnt[7]_i_1_n_0 ));
  FDRE \settle_cnt_reg[4] 
       (.C(core_clk),
        .CE(sel),
        .D(\settle_cnt[4]_i_1__0_n_0 ),
        .Q(settle_cnt_reg[4]),
        .R(\settle_cnt[7]_i_1_n_0 ));
  FDRE \settle_cnt_reg[5] 
       (.C(core_clk),
        .CE(sel),
        .D(p_0_in[5]),
        .Q(settle_cnt_reg[5]),
        .R(\settle_cnt[7]_i_1_n_0 ));
  FDRE \settle_cnt_reg[6] 
       (.C(core_clk),
        .CE(sel),
        .D(p_0_in[6]),
        .Q(settle_cnt_reg[6]),
        .R(\settle_cnt[7]_i_1_n_0 ));
  FDRE \settle_cnt_reg[7] 
       (.C(core_clk),
        .CE(sel),
        .D(p_0_in[7]),
        .Q(settle_cnt_reg[7]),
        .R(\settle_cnt[7]_i_1_n_0 ));
  CARRY8 time_out_settle0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({time_out_settle0_carry_n_0,time_out_settle0_carry_n_1,time_out_settle0_carry_n_2,time_out_settle0_carry_n_3,time_out_settle0_carry_n_4,time_out_settle0_carry_n_5,time_out_settle0_carry_n_6,time_out_settle0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_time_out_settle0_carry_O_UNCONNECTED[7:0]),
        .S({time_out_settle0_carry_i_1_n_0,time_out_settle0_carry_i_2_n_0,time_out_settle0_carry_i_3_n_0,time_out_settle0_carry_i_4_n_0,time_out_settle0_carry_i_5_n_0,time_out_settle0_carry_i_6_n_0,time_out_settle0_carry_i_7_n_0,time_out_settle0_carry_i_8_n_0}));
  CARRY8 time_out_settle0_carry__0
       (.CI(time_out_settle0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_time_out_settle0_carry__0_CO_UNCONNECTED[7:3],time_out_settle0_carry__0_n_5,time_out_settle0_carry__0_n_6,time_out_settle0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_time_out_settle0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,time_out_settle0_carry__0_i_1_n_0,time_out_settle0_carry__0_i_2_n_0,time_out_settle0_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    time_out_settle0_carry__0_i_1
       (.I0(SETTLE_TIMEOUT[30]),
        .I1(SETTLE_TIMEOUT[31]),
        .O(time_out_settle0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry__0_i_2
       (.I0(SETTLE_TIMEOUT[28]),
        .I1(SETTLE_TIMEOUT[27]),
        .I2(SETTLE_TIMEOUT[29]),
        .O(time_out_settle0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry__0_i_3
       (.I0(SETTLE_TIMEOUT[25]),
        .I1(SETTLE_TIMEOUT[24]),
        .I2(SETTLE_TIMEOUT[26]),
        .O(time_out_settle0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry_i_1
       (.I0(SETTLE_TIMEOUT[22]),
        .I1(SETTLE_TIMEOUT[21]),
        .I2(SETTLE_TIMEOUT[23]),
        .O(time_out_settle0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry_i_2
       (.I0(SETTLE_TIMEOUT[19]),
        .I1(SETTLE_TIMEOUT[18]),
        .I2(SETTLE_TIMEOUT[20]),
        .O(time_out_settle0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry_i_3
       (.I0(SETTLE_TIMEOUT[16]),
        .I1(SETTLE_TIMEOUT[15]),
        .I2(SETTLE_TIMEOUT[17]),
        .O(time_out_settle0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry_i_4
       (.I0(SETTLE_TIMEOUT[13]),
        .I1(SETTLE_TIMEOUT[12]),
        .I2(SETTLE_TIMEOUT[14]),
        .O(time_out_settle0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    time_out_settle0_carry_i_5
       (.I0(SETTLE_TIMEOUT[10]),
        .I1(SETTLE_TIMEOUT[9]),
        .I2(SETTLE_TIMEOUT[11]),
        .O(time_out_settle0_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h00009009)) 
    time_out_settle0_carry_i_6
       (.I0(SETTLE_TIMEOUT[6]),
        .I1(settle_cnt_reg[6]),
        .I2(settle_cnt_reg[7]),
        .I3(SETTLE_TIMEOUT[7]),
        .I4(SETTLE_TIMEOUT[8]),
        .O(time_out_settle0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    time_out_settle0_carry_i_7
       (.I0(SETTLE_TIMEOUT[4]),
        .I1(settle_cnt_reg[4]),
        .I2(settle_cnt_reg[5]),
        .I3(SETTLE_TIMEOUT[5]),
        .I4(settle_cnt_reg[3]),
        .I5(SETTLE_TIMEOUT[3]),
        .O(time_out_settle0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    time_out_settle0_carry_i_8
       (.I0(SETTLE_TIMEOUT[2]),
        .I1(settle_cnt_reg[2]),
        .I2(settle_cnt_reg[1]),
        .I3(SETTLE_TIMEOUT[1]),
        .I4(settle_cnt_reg[0]),
        .I5(SETTLE_TIMEOUT[0]),
        .O(time_out_settle0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h3000000020000000)) 
    time_out_settle_i_1
       (.I0(time_out_settle_reg_n_0),
        .I1(dl_rx_state__0[3]),
        .I2(dl_rx_state__0[2]),
        .I3(dl_rx_state__0[1]),
        .I4(dl_rx_state__0[0]),
        .I5(time_out_settle0_carry__0_n_5),
        .O(time_out_settle_i_1_n_0));
  FDRE time_out_settle_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(time_out_settle_i_1_n_0),
        .Q(time_out_settle_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_data_lane" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_data_lane
   (dl0_rxsynchs,
    dl0_errsoths,
    dl0_errsotsynchs,
    lp_11_r_reg,
    dl0_rxactivehs,
    hs_dvalid_reg,
    rx_dl0_disable_ibuf,
    dl0_stopstate,
    align_done_reg,
    s_level_out_d3_reg,
    dl0_rxdatahs,
    rx_dl0_lp_dn,
    rx_dl0_lp_dp,
    rx_div4_clk,
    core_clk,
    core_rst,
    scndry_out,
    SR,
    \FSM_sequential_dl_rx_state_reg[1] ,
    out,
    \FSM_sequential_dl_rx_state_reg[2] ,
    dl_stopstate_reg,
    dl_en_hs_lpn_reg,
    \two_lane_hs_rx_timeout.maxfrm_wait_done_reg ,
    \two_lane_hs_rx_timeout.maxfrm_wait_done_reg_0 ,
    prmry_in,
    rx_dl0_hs_dp);
  output dl0_rxsynchs;
  output dl0_errsoths;
  output dl0_errsotsynchs;
  output lp_11_r_reg;
  output dl0_rxactivehs;
  output hs_dvalid_reg;
  output rx_dl0_disable_ibuf;
  output dl0_stopstate;
  output [0:0]align_done_reg;
  output s_level_out_d3_reg;
  output [7:0]dl0_rxdatahs;
  input rx_dl0_lp_dn;
  input rx_dl0_lp_dp;
  input rx_div4_clk;
  input core_clk;
  input core_rst;
  input scndry_out;
  input [0:0]SR;
  input \FSM_sequential_dl_rx_state_reg[1] ;
  input out;
  input \FSM_sequential_dl_rx_state_reg[2] ;
  input dl_stopstate_reg;
  input dl_en_hs_lpn_reg;
  input \two_lane_hs_rx_timeout.maxfrm_wait_done_reg ;
  input \two_lane_hs_rx_timeout.maxfrm_wait_done_reg_0 ;
  input prmry_in;
  input [7:0]rx_dl0_hs_dp;

  wire \FSM_sequential_dl_rx_state_reg[1] ;
  wire \FSM_sequential_dl_rx_state_reg[2] ;
  wire [0:0]SR;
  wire [0:0]align_done_reg;
  wire core_clk;
  wire core_rst;
  wire dl0_errsoths;
  wire dl0_errsotsynchs;
  wire dl0_rxactivehs;
  wire [7:0]dl0_rxdatahs;
  wire dl0_rxsynchs;
  wire dl0_stopstate;
  wire dl_en_hs_lpn_i;
  wire dl_en_hs_lpn_reg;
  wire [1:0]dl_state;
  wire [1:0]dl_state__0;
  wire dl_stopstate_reg;
  (* DONT_TOUCH *) wire fifo_rd_rst_t1;
  (* DONT_TOUCH *) wire fifo_rd_rst_t1_nxt;
  (* DONT_TOUCH *) wire fifo_rd_rst_t2;
  wire \gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_3 ;
  wire \gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_4 ;
  wire \gen_hs_high_rates_spec_v1_1.active_sm_r_reg_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[0]_i_1_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[1]_i_1_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[2]_i_1_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[3]_i_1_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_2_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[4] ;
  wire \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_1_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_2_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg_n_0 ;
  wire hs_dvalid_reg;
  wire lp_11_r_reg;
  wire out;
  wire prmry_in;
  wire rx_div4_clk;
  wire rx_dl0_disable_ibuf;
  wire [7:0]rx_dl0_hs_dp;
  wire rx_dl0_lp_dn;
  wire rx_dl0_lp_dp;
  wire rxactivehs_coreclk_sync_r;
  wire rxactivehs_sync;
  wire rxactivehs_sync_i_n_1;
  wire s_level_out_d3_reg;
  wire scndry_out;
  wire \two_lane_hs_rx_timeout.maxfrm_wait_done_reg ;
  wire \two_lane_hs_rx_timeout.maxfrm_wait_done_reg_0 ;

  (* FSM_ENCODED_STATES = "DL_ACTIVE:10,DL_START:00,DL_STOP:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] 
       (.C(core_clk),
        .CE(\gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_4 ),
        .D(dl_state__0[0]),
        .Q(dl_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "DL_ACTIVE:10,DL_START:00,DL_STOP:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] 
       (.C(core_clk),
        .CE(\gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_4 ),
        .D(dl_state__0[1]),
        .Q(dl_state[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE fifo_rd_rst_t1_nxt_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(fifo_rd_rst_t1),
        .Q(fifo_rd_rst_t1_nxt),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE fifo_rd_rst_t1_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(fifo_rd_rst_t1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE fifo_rd_rst_t2_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(fifo_rd_rst_t2),
        .R(1'b0));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_csi_rx_data_lane_sm_12 \gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm 
       (.D(dl_state__0),
        .E(\gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_4 ),
        .\FSM_sequential_dl_rx_state_reg[1]_0 (\FSM_sequential_dl_rx_state_reg[1] ),
        .\FSM_sequential_dl_rx_state_reg[2]_0 (\FSM_sequential_dl_rx_state_reg[2] ),
        .\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] (rxactivehs_sync),
        .\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] (\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg_n_0 ),
        .\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 (\gen_hs_high_rates_spec_v1_1.active_sm_r_reg_n_0 ),
        .Q(dl_state),
        .core_clk(core_clk),
        .core_rst(core_rst),
        .dl0_stopstate(dl0_stopstate),
        .dl_en_hs_lpn_i(dl_en_hs_lpn_i),
        .dl_en_hs_lpn_reg_0(dl_en_hs_lpn_reg),
        .dl_stopstate_reg_0(dl_stopstate_reg),
        .\gen_hs_high_rates_spec_v1_1.stopstate_reg (\gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_3 ),
        .lp_11_r_reg_0(lp_11_r_reg),
        .out(out),
        .rx_dl0_disable_ibuf(rx_dl0_disable_ibuf),
        .rx_dl0_lp_dn(rx_dl0_lp_dn),
        .rx_dl0_lp_dp(rx_dl0_lp_dp),
        .rxactivehs_coreclk_sync_r(rxactivehs_coreclk_sync_r));
  FDRE \gen_hs_high_rates_spec_v1_1.active_sm_r_reg 
       (.C(core_clk),
        .CE(1'b1),
        .D(rxactivehs_sync_i_n_1),
        .Q(\gen_hs_high_rates_spec_v1_1.active_sm_r_reg_n_0 ),
        .R(SR));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sot_det_align_13 \gen_hs_high_rates_spec_v1_1.rx_sot_det_align_i 
       (.E(dl0_rxactivehs),
        .align_done_reg_0(align_done_reg),
        .dl0_errsoths(dl0_errsoths),
        .dl0_errsotsynchs(dl0_errsotsynchs),
        .dl0_rxdatahs(dl0_rxdatahs),
        .dl0_rxsynchs(dl0_rxsynchs),
        .dl_en_hs_lpn_i(dl_en_hs_lpn_i),
        .hs_dvalid_reg_0(hs_dvalid_reg),
        .prmry_in(prmry_in),
        .rx_div4_clk(rx_div4_clk),
        .rx_dl0_hs_dp(rx_dl0_hs_dp),
        .s_level_out_d3_reg(s_level_out_d3_reg),
        .\two_lane_hs_rx_timeout.maxfrm_wait_done_reg (\two_lane_hs_rx_timeout.maxfrm_wait_done_reg ),
        .\two_lane_hs_rx_timeout.maxfrm_wait_done_reg_0 (\two_lane_hs_rx_timeout.maxfrm_wait_done_reg_0 ));
  FDCE \gen_hs_high_rates_spec_v1_1.rxactivehs_coreclk_sync_r_reg 
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(rxactivehs_sync),
        .Q(rxactivehs_coreclk_sync_r));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[0]_i_1 
       (.I0(dl_state[0]),
        .I1(dl_state[1]),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[1]_i_1 
       (.I0(dl_state[1]),
        .I1(dl_state[0]),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .I3(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00780000)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[2]_i_1 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ),
        .I3(dl_state[1]),
        .I4(dl_state[0]),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007F0000008000)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[3]_i_1 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .I3(dl_state[0]),
        .I4(dl_state[1]),
        .I5(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ),
        .I3(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3_n_0 ),
        .I4(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[4] ),
        .I5(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_2 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ),
        .I3(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ),
        .I4(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3_n_0 ),
        .I5(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[4] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3 
       (.I0(dl_state[1]),
        .I1(dl_state[0]),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3_n_0 ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg[0] 
       (.C(core_clk),
        .CE(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1_n_0 ),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[0]_i_1_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg[1] 
       (.C(core_clk),
        .CE(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1_n_0 ),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[1]_i_1_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg[2] 
       (.C(core_clk),
        .CE(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1_n_0 ),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[2]_i_1_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg[3] 
       (.C(core_clk),
        .CE(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1_n_0 ),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[3]_i_1_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg[4] 
       (.C(core_clk),
        .CE(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1_n_0 ),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_2_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h0000FFFF00000001)) 
    \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_1 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_2_n_0 ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ),
        .I3(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[4] ),
        .I4(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3_n_0 ),
        .I5(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg_n_0 ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_2 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_2_n_0 ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg 
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_1_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg_n_0 ));
  FDRE \gen_hs_high_rates_spec_v1_1.stopstate_reg 
       (.C(core_clk),
        .CE(1'b1),
        .D(\gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_3 ),
        .Q(dl0_stopstate),
        .R(SR));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized0_14 rxactivehs_sync_i
       (.\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] (rxactivehs_sync_i_n_1),
        .Q(dl_state),
        .core_clk(core_clk),
        .dl0_rxactivehs(dl0_rxactivehs),
        .dl_en_hs_lpn_i(dl_en_hs_lpn_i),
        .\gen_hs_high_rates_spec_v1_1.active_sm_r_reg (\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg_n_0 ),
        .\gen_hs_high_rates_spec_v1_1.active_sm_r_reg_0 (\gen_hs_high_rates_spec_v1_1.active_sm_r_reg_n_0 ),
        .out(rxactivehs_sync),
        .rxactivehs_coreclk_sync_r(rxactivehs_coreclk_sync_r));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_data_lane" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_data_lane_8
   (dl1_rxsynchs,
    dl1_errsoths,
    dl1_errsotsynchs,
    dl1_rxactivehs,
    dl1_rxvalidhs,
    time_out_settle_reg,
    rx_dl1_disable_ibuf,
    dl1_stopstate,
    dl1_rxdatahs,
    rx_dl1_lp_dn,
    rx_dl1_lp_dp,
    rx_div4_clk,
    core_clk,
    core_rst,
    scndry_out,
    SR,
    \FSM_sequential_dl_rx_state_reg[1] ,
    out,
    \FSM_sequential_dl_rx_state_reg[2] ,
    dl_en_hs_lpn_reg,
    dl_en_hs_lpn_reg_0,
    rx_dl1_hs_dp);
  output dl1_rxsynchs;
  output dl1_errsoths;
  output dl1_errsotsynchs;
  output dl1_rxactivehs;
  output dl1_rxvalidhs;
  output time_out_settle_reg;
  output rx_dl1_disable_ibuf;
  output dl1_stopstate;
  output [7:0]dl1_rxdatahs;
  input rx_dl1_lp_dn;
  input rx_dl1_lp_dp;
  input rx_div4_clk;
  input core_clk;
  input core_rst;
  input scndry_out;
  input [0:0]SR;
  input \FSM_sequential_dl_rx_state_reg[1] ;
  input out;
  input \FSM_sequential_dl_rx_state_reg[2] ;
  input dl_en_hs_lpn_reg;
  input dl_en_hs_lpn_reg_0;
  input [7:0]rx_dl1_hs_dp;

  wire \FSM_sequential_dl_rx_state_reg[1] ;
  wire \FSM_sequential_dl_rx_state_reg[2] ;
  wire [0:0]SR;
  wire core_clk;
  wire core_rst;
  wire dl1_errsoths;
  wire dl1_errsotsynchs;
  wire dl1_rxactivehs;
  wire [7:0]dl1_rxdatahs;
  wire dl1_rxsynchs;
  wire dl1_rxvalidhs;
  wire dl1_stopstate;
  wire dl_en_hs_lpn_i;
  wire dl_en_hs_lpn_reg;
  wire dl_en_hs_lpn_reg_0;
  wire [1:0]dl_state;
  wire [1:0]dl_state__0;
  (* DONT_TOUCH *) wire fifo_rd_rst_t1;
  (* DONT_TOUCH *) wire fifo_rd_rst_t1_nxt;
  (* DONT_TOUCH *) wire fifo_rd_rst_t2;
  wire \gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_3 ;
  wire \gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_4 ;
  wire \gen_hs_high_rates_spec_v1_1.active_sm_r_reg_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[0]_i_1__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[1]_i_1__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[2]_i_1__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[3]_i_1__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_2__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ;
  wire \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[4] ;
  wire \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_1__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_2__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg_n_0 ;
  wire out;
  wire rx_div4_clk;
  wire rx_dl1_disable_ibuf;
  wire [7:0]rx_dl1_hs_dp;
  wire rx_dl1_lp_dn;
  wire rx_dl1_lp_dp;
  wire rxactivehs_coreclk_sync_r;
  wire rxactivehs_sync;
  wire rxactivehs_sync_i_n_1;
  wire scndry_out;
  wire time_out_settle_reg;

  (* FSM_ENCODED_STATES = "DL_ACTIVE:10,DL_START:00,DL_STOP:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] 
       (.C(core_clk),
        .CE(\gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_4 ),
        .D(dl_state__0[0]),
        .Q(dl_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "DL_ACTIVE:10,DL_START:00,DL_STOP:01" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] 
       (.C(core_clk),
        .CE(\gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_4 ),
        .D(dl_state__0[1]),
        .Q(dl_state[1]),
        .R(SR));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE fifo_rd_rst_t1_nxt_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(fifo_rd_rst_t1),
        .Q(fifo_rd_rst_t1_nxt),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE fifo_rd_rst_t1_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(fifo_rd_rst_t1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE fifo_rd_rst_t2_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(scndry_out),
        .Q(fifo_rd_rst_t2),
        .R(1'b0));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_csi_rx_data_lane_sm \gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm 
       (.D(dl_state__0),
        .E(\gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_4 ),
        .\FSM_sequential_dl_rx_state_reg[1]_0 (\FSM_sequential_dl_rx_state_reg[1] ),
        .\FSM_sequential_dl_rx_state_reg[2]_0 (\FSM_sequential_dl_rx_state_reg[2] ),
        .\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[0] (rxactivehs_sync),
        .\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] (\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg_n_0 ),
        .\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1]_0 (\gen_hs_high_rates_spec_v1_1.active_sm_r_reg_n_0 ),
        .Q(dl_state),
        .core_clk(core_clk),
        .core_rst(core_rst),
        .dl1_stopstate(dl1_stopstate),
        .dl_en_hs_lpn_i(dl_en_hs_lpn_i),
        .dl_en_hs_lpn_reg_0(dl_en_hs_lpn_reg),
        .dl_en_hs_lpn_reg_1(dl_en_hs_lpn_reg_0),
        .\gen_hs_high_rates_spec_v1_1.stopstate_reg (\gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_3 ),
        .out(out),
        .rx_dl1_disable_ibuf(rx_dl1_disable_ibuf),
        .rx_dl1_lp_dn(rx_dl1_lp_dn),
        .rx_dl1_lp_dp(rx_dl1_lp_dp),
        .rxactivehs_coreclk_sync_r(rxactivehs_coreclk_sync_r),
        .time_out_settle_reg_0(time_out_settle_reg));
  FDRE \gen_hs_high_rates_spec_v1_1.active_sm_r_reg 
       (.C(core_clk),
        .CE(1'b1),
        .D(rxactivehs_sync_i_n_1),
        .Q(\gen_hs_high_rates_spec_v1_1.active_sm_r_reg_n_0 ),
        .R(SR));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sot_det_align \gen_hs_high_rates_spec_v1_1.rx_sot_det_align_i 
       (.E(dl1_rxactivehs),
        .dl1_errsoths(dl1_errsoths),
        .dl1_errsotsynchs(dl1_errsotsynchs),
        .dl1_rxdatahs(dl1_rxdatahs),
        .dl1_rxsynchs(dl1_rxsynchs),
        .dl1_rxvalidhs(dl1_rxvalidhs),
        .dl_en_hs_lpn_i(dl_en_hs_lpn_i),
        .rx_div4_clk(rx_div4_clk),
        .rx_dl1_hs_dp(rx_dl1_hs_dp));
  FDCE \gen_hs_high_rates_spec_v1_1.rxactivehs_coreclk_sync_r_reg 
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(rxactivehs_sync),
        .Q(rxactivehs_coreclk_sync_r));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[0]_i_1__0 
       (.I0(dl_state[0]),
        .I1(dl_state[1]),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[1]_i_1__0 
       (.I0(dl_state[1]),
        .I1(dl_state[0]),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .I3(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h00780000)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[2]_i_1__0 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ),
        .I3(dl_state[1]),
        .I4(dl_state[0]),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00007F0000008000)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[3]_i_1__0 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .I3(dl_state[0]),
        .I4(dl_state[1]),
        .I5(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1__0 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ),
        .I3(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3__0_n_0 ),
        .I4(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[4] ),
        .I5(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_2__0 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ),
        .I3(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ),
        .I4(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3__0_n_0 ),
        .I5(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[4] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3__0 
       (.I0(dl_state[1]),
        .I1(dl_state[0]),
        .O(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3__0_n_0 ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg[0] 
       (.C(core_clk),
        .CE(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1__0_n_0 ),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[0]_i_1__0_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg[1] 
       (.C(core_clk),
        .CE(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1__0_n_0 ),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[1]_i_1__0_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg[2] 
       (.C(core_clk),
        .CE(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1__0_n_0 ),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[2]_i_1__0_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg[3] 
       (.C(core_clk),
        .CE(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1__0_n_0 ),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[3]_i_1__0_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg[4] 
       (.C(core_clk),
        .CE(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_1__0_n_0 ),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_2__0_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[4] ));
  LUT6 #(
    .INIT(64'h0000FFFF00000001)) 
    \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_1__0 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_2__0_n_0 ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[2] ),
        .I2(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[3] ),
        .I3(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[4] ),
        .I4(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt[4]_i_3__0_n_0 ),
        .I5(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg_n_0 ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_2__0 
       (.I0(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[1] ),
        .I1(\gen_hs_high_rates_spec_v1_1.stop_extn_cnt_reg_n_0_[0] ),
        .O(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_2__0_n_0 ));
  FDCE \gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg 
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_i_1__0_n_0 ),
        .Q(\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg_n_0 ));
  FDRE \gen_hs_high_rates_spec_v1_1.stopstate_reg 
       (.C(core_clk),
        .CE(1'b1),
        .D(\gen_csi_rx_data_lane_sm.csi_rx_data_lane_sm_n_3 ),
        .Q(dl1_stopstate),
        .R(SR));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized0_9 rxactivehs_sync_i
       (.\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] (rxactivehs_sync_i_n_1),
        .Q(dl_state),
        .core_clk(core_clk),
        .dl1_rxactivehs(dl1_rxactivehs),
        .dl_en_hs_lpn_i(dl_en_hs_lpn_i),
        .\gen_hs_high_rates_spec_v1_1.active_sm_r_reg (\gen_hs_high_rates_spec_v1_1.stop_state_extn_r_reg_n_0 ),
        .\gen_hs_high_rates_spec_v1_1.active_sm_r_reg_0 (\gen_hs_high_rates_spec_v1_1.active_sm_r_reg_n_0 ),
        .out(rxactivehs_sync),
        .rxactivehs_coreclk_sync_r(rxactivehs_coreclk_sync_r));
endmodule

(* BYTE_UI = "28" *) (* CL_ACTIVE_BYTE_UI = "1" *) (* C_CAL_MODE = "FIXED" *) 
(* C_CLK_PREPARE_VAL = "40" *) (* C_CLK_SETTLE_VAL = "95" *) (* C_CLK_TERMEN_VAL = "38" *) 
(* C_CLK_ZERO_VAL = "205" *) (* C_COMP_CYCLES = "5" *) (* C_DPHY_LANES = "2" *) 
(* C_DPHY_MODE = "SLAVE" *) (* C_D_TERMEN_VAL = "35" *) (* C_EN_DEBUG_REGS = "0" *) 
(* C_EN_REGISTER = "0" *) (* C_EN_TIMEOUT_REGS = "0" *) (* C_EN_ULPS_WAKEUP_CNT = "FALSE" *) 
(* C_ESC_TIMEOUT = "25600" *) (* C_HS_LINE_RATE = "280" *) (* C_HS_RX_TIMEOUT = "65541" *) 
(* C_HS_SETTLE_VAL = "170" *) (* C_HS_SKIP_VAL = "40" *) (* C_IDLY_TAP = "0" *) 
(* C_INIT = "100000" *) (* C_IO_ADDR = "8'b00010100" *) (* C_IS_7SERIES = "FALSE" *) 
(* C_LPX_PERIOD = "50" *) (* C_NO_INCR_TAPS = "2" *) (* C_RCVE_ALT_DESKEW_SEQ = "false" *) 
(* C_RCVE_DESKEW_SEQ = "false" *) (* C_STABLE_CLK_PERIOD = "5.000000" *) (* C_UI_IN_TAPS = "64" *) 
(* C_WAKEUP = "1000000" *) (* DPHY_PRESET = "CSI2RX_XLNX" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* INIT_TIMEOUT_L = "19998" *) (* LPX_PERIOD_MIN = "25" *) (* LP_STATE_CNT = "2" *) 
(* MTBF_SYNC_STAGES = "3" *) (* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_fab_top" *) (* RESET_PULSE_EXTN = "4'b0001" *) 
(* SETTLE_TIMEOUT_L = "29" *) (* SUPPORT_LEVEL = "1" *) (* UI10_VAL = "35" *) 
(* UI_VAL = "3571" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_fab_top
   (rx_div4_clk,
    clk_200m,
    core_clk,
    core_rst,
    core_ref_clk,
    system_rst_in,
    dphy_srst_out,
    dphy_en_out,
    system_rst_phybyteclk_in,
    system_rst_byteclk_in,
    phy_rst,
    phy_ready,
    sys_rst_byteclk_out,
    init_done,
    idelay_tap_value,
    idelay_load,
    idelay_ready,
    tap_val_dyn_out,
    tap_comp_res,
    tap_comp_rst,
    cal_pass,
    cal_done,
    dly_ctrl_rdy,
    idly_tap_val,
    reg_cal_start,
    alt_skew_calb,
    init_periodic_skew_calb,
    rx_dl0_en_hs_lpn,
    rx_dl0_disable_ibuf,
    rx_dl0_lp_dp,
    rx_dl0_lp_dn,
    rx_dl0_hs_dp,
    rx_dl0_fifo_empty,
    rx_dl0_fifo_rd_en,
    rx_dl0_fifo_rd_clk,
    dl0_rxdatahs,
    dl0_rxvalidhs,
    dl0_rxactivehs,
    dl0_rxskewcalhs,
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
    rx_dl1_en_hs_lpn,
    rx_dl1_disable_ibuf,
    rx_dl1_lp_dp,
    rx_dl1_lp_dn,
    rx_dl1_hs_dp,
    rx_dl1_fifo_empty,
    rx_dl1_fifo_rd_en,
    rx_dl1_fifo_rd_clk,
    dl1_rxdatahs,
    dl1_rxvalidhs,
    dl1_rxactivehs,
    dl1_rxskewcalhs,
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
    rx_dl2_en_hs_lpn,
    rx_dl2_disable_ibuf,
    rx_dl2_lp_dp,
    rx_dl2_lp_dn,
    rx_dl2_hs_dp,
    rx_dl2_fifo_empty,
    rx_dl2_fifo_rd_en,
    rx_dl2_fifo_rd_clk,
    dl2_rxdatahs,
    dl2_rxvalidhs,
    dl2_rxactivehs,
    dl2_rxskewcalhs,
    dl2_rxsynchs,
    dl2_forcerxmode,
    dl2_stopstate,
    dl2_enable,
    dl2_ulpsactivenot,
    dl2_rxclkesc,
    dl2_rxlpdtesc,
    dl2_rxulpsesc,
    dl2_rxtriggeresc,
    dl2_rxdataesc,
    dl2_rxvalidesc,
    dl2_errsoths,
    dl2_errsotsynchs,
    dl2_erresc,
    dl2_errsyncesc,
    dl2_errcontrol,
    rx_dl3_en_hs_lpn,
    rx_dl3_disable_ibuf,
    rx_dl3_lp_dp,
    rx_dl3_lp_dn,
    rx_dl3_hs_dp,
    rx_dl3_fifo_empty,
    rx_dl3_fifo_rd_en,
    rx_dl3_fifo_rd_clk,
    dl3_rxdatahs,
    dl3_rxvalidhs,
    dl3_rxactivehs,
    dl3_rxskewcalhs,
    dl3_rxsynchs,
    dl3_forcerxmode,
    dl3_stopstate,
    dl3_enable,
    dl3_ulpsactivenot,
    dl3_rxclkesc,
    dl3_rxlpdtesc,
    dl3_rxulpsesc,
    dl3_rxtriggeresc,
    dl3_rxdataesc,
    dl3_rxvalidesc,
    dl3_errsoths,
    dl3_errsotsynchs,
    dl3_erresc,
    dl3_errsyncesc,
    dl3_errcontrol,
    rx_dl4_en_hs_lpn,
    rx_dl4_disable_ibuf,
    rx_dl4_lp_dp,
    rx_dl4_lp_dn,
    rx_dl4_hs_dp,
    rx_dl4_fifo_empty,
    rx_dl4_fifo_rd_en,
    rx_dl4_fifo_rd_clk,
    dl4_rxdatahs,
    dl4_rxvalidhs,
    dl4_rxactivehs,
    dl4_rxskewcalhs,
    dl4_rxsynchs,
    dl4_forcerxmode,
    dl4_stopstate,
    dl4_enable,
    dl4_ulpsactivenot,
    dl4_rxclkesc,
    dl4_rxlpdtesc,
    dl4_rxulpsesc,
    dl4_rxtriggeresc,
    dl4_rxdataesc,
    dl4_rxvalidesc,
    dl4_errsoths,
    dl4_errsotsynchs,
    dl4_erresc,
    dl4_errsyncesc,
    dl4_errcontrol,
    rx_dl5_en_hs_lpn,
    rx_dl5_disable_ibuf,
    rx_dl5_lp_dp,
    rx_dl5_lp_dn,
    rx_dl5_hs_dp,
    rx_dl5_fifo_empty,
    rx_dl5_fifo_rd_en,
    rx_dl5_fifo_rd_clk,
    dl5_rxdatahs,
    dl5_rxvalidhs,
    dl5_rxactivehs,
    dl5_rxskewcalhs,
    dl5_rxsynchs,
    dl5_forcerxmode,
    dl5_stopstate,
    dl5_enable,
    dl5_ulpsactivenot,
    dl5_rxclkesc,
    dl5_rxlpdtesc,
    dl5_rxulpsesc,
    dl5_rxtriggeresc,
    dl5_rxdataesc,
    dl5_rxvalidesc,
    dl5_errsoths,
    dl5_errsotsynchs,
    dl5_erresc,
    dl5_errsyncesc,
    dl5_errcontrol,
    rx_dl6_en_hs_lpn,
    rx_dl6_disable_ibuf,
    rx_dl6_lp_dp,
    rx_dl6_lp_dn,
    rx_dl6_hs_dp,
    rx_dl6_fifo_empty,
    rx_dl6_fifo_rd_en,
    rx_dl6_fifo_rd_clk,
    dl6_rxdatahs,
    dl6_rxvalidhs,
    dl6_rxactivehs,
    dl6_rxskewcalhs,
    dl6_rxsynchs,
    dl6_forcerxmode,
    dl6_stopstate,
    dl6_enable,
    dl6_ulpsactivenot,
    dl6_rxclkesc,
    dl6_rxlpdtesc,
    dl6_rxulpsesc,
    dl6_rxtriggeresc,
    dl6_rxdataesc,
    dl6_rxvalidesc,
    dl6_errsoths,
    dl6_errsotsynchs,
    dl6_erresc,
    dl6_errsyncesc,
    dl6_errcontrol,
    rx_dl7_en_hs_lpn,
    rx_dl7_disable_ibuf,
    rx_dl7_lp_dp,
    rx_dl7_lp_dn,
    rx_dl7_hs_dp,
    rx_dl7_fifo_empty,
    rx_dl7_fifo_rd_en,
    rx_dl7_fifo_rd_clk,
    dl7_rxdatahs,
    dl7_rxvalidhs,
    dl7_rxactivehs,
    dl7_rxskewcalhs,
    dl7_rxsynchs,
    dl7_forcerxmode,
    dl7_stopstate,
    dl7_enable,
    dl7_ulpsactivenot,
    dl7_rxclkesc,
    dl7_rxlpdtesc,
    dl7_rxulpsesc,
    dl7_rxtriggeresc,
    dl7_rxdataesc,
    dl7_rxvalidesc,
    dl7_errsoths,
    dl7_errsotsynchs,
    dl7_erresc,
    dl7_errsyncesc,
    dl7_errcontrol,
    cl_rxclkactivehs,
    cl_stopstate,
    cl_enable,
    cl_rxulpsclknot,
    cl_ulpsactivenot,
    rx_cl_en_hs_lpn,
    rx_cl_disable_ibuf,
    rx_cl_lp_dp,
    rx_cl_lp_dn,
    rx_cl_hs_dp,
    rx_cl_fifo_empty,
    rx_cl_fifo_rd_en,
    rx_cl_fifo_rd_clk,
    bit_slc_rst,
    riu_valid_l0,
    riu_rd_data_l0,
    riu_addr_l0,
    riu_wr_data_l0,
    riu_wr_en_l0,
    riu_nibble_sel_l0,
    calib_status_l0,
    riu_valid_l1,
    riu_rd_data_l1,
    riu_addr_l1,
    riu_wr_data_l1,
    riu_wr_en_l1,
    riu_nibble_sel_l1,
    calib_status_l1,
    riu_valid_l2,
    riu_rd_data_l2,
    riu_addr_l2,
    riu_wr_data_l2,
    riu_wr_en_l2,
    riu_nibble_sel_l2,
    calib_status_l2,
    riu_valid_l3,
    riu_rd_data_l3,
    riu_addr_l3,
    riu_wr_data_l3,
    riu_wr_en_l3,
    riu_nibble_sel_l3,
    calib_status_l3,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awready,
    s_axi_awvalid,
    s_axi_araddr,
    s_axi_arready,
    s_axi_arvalid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wready,
    s_axi_wvalid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rready,
    s_axi_rvalid,
    s_axi_bresp,
    s_axi_bready,
    s_axi_bvalid);
  input rx_div4_clk;
  input clk_200m;
  input core_clk;
  input core_rst;
  output core_ref_clk;
  input system_rst_in;
  output dphy_srst_out;
  output dphy_en_out;
  input system_rst_phybyteclk_in;
  input system_rst_byteclk_in;
  output phy_rst;
  input phy_ready;
  output sys_rst_byteclk_out;
  output init_done;
  output [8:0]idelay_tap_value;
  output idelay_load;
  input idelay_ready;
  output [63:0]tap_val_dyn_out;
  output [7:0]tap_comp_res;
  input tap_comp_rst;
  input cal_pass;
  input cal_done;
  input dly_ctrl_rdy;
  input [4:0]idly_tap_val;
  output reg_cal_start;
  output [1:0]alt_skew_calb;
  output [1:0]init_periodic_skew_calb;
  output rx_dl0_en_hs_lpn;
  output rx_dl0_disable_ibuf;
  input rx_dl0_lp_dp;
  input rx_dl0_lp_dn;
  input [7:0]rx_dl0_hs_dp;
  input rx_dl0_fifo_empty;
  output rx_dl0_fifo_rd_en;
  output rx_dl0_fifo_rd_clk;
  output [7:0]dl0_rxdatahs;
  output dl0_rxvalidhs;
  output dl0_rxactivehs;
  output dl0_rxskewcalhs;
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
  output rx_dl1_en_hs_lpn;
  output rx_dl1_disable_ibuf;
  input rx_dl1_lp_dp;
  input rx_dl1_lp_dn;
  input [7:0]rx_dl1_hs_dp;
  input rx_dl1_fifo_empty;
  output rx_dl1_fifo_rd_en;
  output rx_dl1_fifo_rd_clk;
  output [7:0]dl1_rxdatahs;
  output dl1_rxvalidhs;
  output dl1_rxactivehs;
  output dl1_rxskewcalhs;
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
  output rx_dl2_en_hs_lpn;
  output rx_dl2_disable_ibuf;
  input rx_dl2_lp_dp;
  input rx_dl2_lp_dn;
  input [7:0]rx_dl2_hs_dp;
  input rx_dl2_fifo_empty;
  output rx_dl2_fifo_rd_en;
  output rx_dl2_fifo_rd_clk;
  output [7:0]dl2_rxdatahs;
  output dl2_rxvalidhs;
  output dl2_rxactivehs;
  output dl2_rxskewcalhs;
  output dl2_rxsynchs;
  input dl2_forcerxmode;
  output dl2_stopstate;
  input dl2_enable;
  output dl2_ulpsactivenot;
  output dl2_rxclkesc;
  output dl2_rxlpdtesc;
  output dl2_rxulpsesc;
  output [3:0]dl2_rxtriggeresc;
  output [7:0]dl2_rxdataesc;
  output dl2_rxvalidesc;
  output dl2_errsoths;
  output dl2_errsotsynchs;
  output dl2_erresc;
  output dl2_errsyncesc;
  output dl2_errcontrol;
  output rx_dl3_en_hs_lpn;
  output rx_dl3_disable_ibuf;
  input rx_dl3_lp_dp;
  input rx_dl3_lp_dn;
  input [7:0]rx_dl3_hs_dp;
  input rx_dl3_fifo_empty;
  output rx_dl3_fifo_rd_en;
  output rx_dl3_fifo_rd_clk;
  output [7:0]dl3_rxdatahs;
  output dl3_rxvalidhs;
  output dl3_rxactivehs;
  output dl3_rxskewcalhs;
  output dl3_rxsynchs;
  input dl3_forcerxmode;
  output dl3_stopstate;
  input dl3_enable;
  output dl3_ulpsactivenot;
  output dl3_rxclkesc;
  output dl3_rxlpdtesc;
  output dl3_rxulpsesc;
  output [3:0]dl3_rxtriggeresc;
  output [7:0]dl3_rxdataesc;
  output dl3_rxvalidesc;
  output dl3_errsoths;
  output dl3_errsotsynchs;
  output dl3_erresc;
  output dl3_errsyncesc;
  output dl3_errcontrol;
  output rx_dl4_en_hs_lpn;
  output rx_dl4_disable_ibuf;
  input rx_dl4_lp_dp;
  input rx_dl4_lp_dn;
  input [7:0]rx_dl4_hs_dp;
  input rx_dl4_fifo_empty;
  output rx_dl4_fifo_rd_en;
  output rx_dl4_fifo_rd_clk;
  output [7:0]dl4_rxdatahs;
  output dl4_rxvalidhs;
  output dl4_rxactivehs;
  output dl4_rxskewcalhs;
  output dl4_rxsynchs;
  input dl4_forcerxmode;
  output dl4_stopstate;
  input dl4_enable;
  output dl4_ulpsactivenot;
  output dl4_rxclkesc;
  output dl4_rxlpdtesc;
  output dl4_rxulpsesc;
  output [3:0]dl4_rxtriggeresc;
  output [7:0]dl4_rxdataesc;
  output dl4_rxvalidesc;
  output dl4_errsoths;
  output dl4_errsotsynchs;
  output dl4_erresc;
  output dl4_errsyncesc;
  output dl4_errcontrol;
  output rx_dl5_en_hs_lpn;
  output rx_dl5_disable_ibuf;
  input rx_dl5_lp_dp;
  input rx_dl5_lp_dn;
  input [7:0]rx_dl5_hs_dp;
  input rx_dl5_fifo_empty;
  output rx_dl5_fifo_rd_en;
  output rx_dl5_fifo_rd_clk;
  output [7:0]dl5_rxdatahs;
  output dl5_rxvalidhs;
  output dl5_rxactivehs;
  output dl5_rxskewcalhs;
  output dl5_rxsynchs;
  input dl5_forcerxmode;
  output dl5_stopstate;
  input dl5_enable;
  output dl5_ulpsactivenot;
  output dl5_rxclkesc;
  output dl5_rxlpdtesc;
  output dl5_rxulpsesc;
  output [3:0]dl5_rxtriggeresc;
  output [7:0]dl5_rxdataesc;
  output dl5_rxvalidesc;
  output dl5_errsoths;
  output dl5_errsotsynchs;
  output dl5_erresc;
  output dl5_errsyncesc;
  output dl5_errcontrol;
  output rx_dl6_en_hs_lpn;
  output rx_dl6_disable_ibuf;
  input rx_dl6_lp_dp;
  input rx_dl6_lp_dn;
  input [7:0]rx_dl6_hs_dp;
  input rx_dl6_fifo_empty;
  output rx_dl6_fifo_rd_en;
  output rx_dl6_fifo_rd_clk;
  output [7:0]dl6_rxdatahs;
  output dl6_rxvalidhs;
  output dl6_rxactivehs;
  output dl6_rxskewcalhs;
  output dl6_rxsynchs;
  input dl6_forcerxmode;
  output dl6_stopstate;
  input dl6_enable;
  output dl6_ulpsactivenot;
  output dl6_rxclkesc;
  output dl6_rxlpdtesc;
  output dl6_rxulpsesc;
  output [3:0]dl6_rxtriggeresc;
  output [7:0]dl6_rxdataesc;
  output dl6_rxvalidesc;
  output dl6_errsoths;
  output dl6_errsotsynchs;
  output dl6_erresc;
  output dl6_errsyncesc;
  output dl6_errcontrol;
  output rx_dl7_en_hs_lpn;
  output rx_dl7_disable_ibuf;
  input rx_dl7_lp_dp;
  input rx_dl7_lp_dn;
  input [7:0]rx_dl7_hs_dp;
  input rx_dl7_fifo_empty;
  output rx_dl7_fifo_rd_en;
  output rx_dl7_fifo_rd_clk;
  output [7:0]dl7_rxdatahs;
  output dl7_rxvalidhs;
  output dl7_rxactivehs;
  output dl7_rxskewcalhs;
  output dl7_rxsynchs;
  input dl7_forcerxmode;
  output dl7_stopstate;
  input dl7_enable;
  output dl7_ulpsactivenot;
  output dl7_rxclkesc;
  output dl7_rxlpdtesc;
  output dl7_rxulpsesc;
  output [3:0]dl7_rxtriggeresc;
  output [7:0]dl7_rxdataesc;
  output dl7_rxvalidesc;
  output dl7_errsoths;
  output dl7_errsotsynchs;
  output dl7_erresc;
  output dl7_errsyncesc;
  output dl7_errcontrol;
  output cl_rxclkactivehs;
  output cl_stopstate;
  input cl_enable;
  output cl_rxulpsclknot;
  output cl_ulpsactivenot;
  output rx_cl_en_hs_lpn;
  output rx_cl_disable_ibuf;
  input rx_cl_lp_dp;
  input rx_cl_lp_dn;
  input [7:0]rx_cl_hs_dp;
  input rx_cl_fifo_empty;
  output rx_cl_fifo_rd_en;
  output rx_cl_fifo_rd_clk;
  output bit_slc_rst;
  input riu_valid_l0;
  input [15:0]riu_rd_data_l0;
  output [5:0]riu_addr_l0;
  output [15:0]riu_wr_data_l0;
  output riu_wr_en_l0;
  output riu_nibble_sel_l0;
  output calib_status_l0;
  input riu_valid_l1;
  input [15:0]riu_rd_data_l1;
  output [5:0]riu_addr_l1;
  output [15:0]riu_wr_data_l1;
  output riu_wr_en_l1;
  output riu_nibble_sel_l1;
  output calib_status_l1;
  input riu_valid_l2;
  input [15:0]riu_rd_data_l2;
  output [5:0]riu_addr_l2;
  output [15:0]riu_wr_data_l2;
  output riu_wr_en_l2;
  output riu_nibble_sel_l2;
  output calib_status_l2;
  input riu_valid_l3;
  input [15:0]riu_rd_data_l3;
  output [5:0]riu_addr_l3;
  output [15:0]riu_wr_data_l3;
  output riu_wr_en_l3;
  output riu_nibble_sel_l3;
  output calib_status_l3;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [6:0]s_axi_awaddr;
  output s_axi_awready;
  input s_axi_awvalid;
  input [6:0]s_axi_araddr;
  output s_axi_arready;
  input s_axi_arvalid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  output s_axi_wready;
  input s_axi_wvalid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  input s_axi_rready;
  output s_axi_rvalid;
  output [1:0]s_axi_bresp;
  input s_axi_bready;
  output s_axi_bvalid;

  wire \<const0> ;
  wire bit_slc_rst;
  wire cl_enable;
  wire cl_init_done_div4clk_i;
  wire cl_rxclkactivehs;
  wire cl_status_reg_bit_0;
  wire cl_stopstate;
  wire clk_active_r;
  wire core_clk;
  wire core_rst;
  wire dl0_errsoths;
  wire dl0_errsotsynchs;
  wire dl0_rxactivehs;
  wire [7:0]dl0_rxdatahs;
  wire dl0_rxsynchs;
  wire dl0_rxvalidhs;
  wire dl0_stopstate;
  wire dl1_errsoths;
  wire dl1_errsotsynchs;
  wire dl1_rxactivehs;
  wire [7:0]dl1_rxdatahs;
  wire dl1_rxsynchs;
  wire dl1_rxvalidhs;
  wire dl1_stopstate;
  wire en_falling_edge_r_reg_n_0;
  wire \gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_13 ;
  wire \gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_4 ;
  wire \gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_6 ;
  wire \gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_7 ;
  wire \gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_8 ;
  wire \gen_rx_data_lane[0].rx_data_lane_inst_n_3 ;
  wire \gen_rx_data_lane[0].rx_data_lane_inst_n_9 ;
  wire \gen_rx_data_lane[1].rx_data_lane_inst_n_5 ;
  wire init_done;
  wire init_done_div4clk_sync;
  wire maxfrm_wait_done;
  wire maxfrm_wait_done_sync_i_i_1_n_0;
  wire [2:0]p_0_in;
  wire [15:0]p_2_in;
  wire phy_ready;
  wire [3:0]reset_pulse_extsn_cntr_r_reg;
  wire rx_cl_disable_ibuf;
  wire rx_cl_disable_ibuf_r;
  wire rx_cl_lp_dn;
  wire rx_cl_lp_dp;
  wire rx_div4_clk;
  wire rx_dl0_disable_ibuf;
  wire [7:0]rx_dl0_hs_dp;
  wire rx_dl0_lp_dn;
  wire rx_dl0_lp_dp;
  wire rx_dl1_disable_ibuf;
  wire [7:0]rx_dl1_hs_dp;
  wire rx_dl1_lp_dn;
  wire rx_dl1_lp_dp;
  wire stopstate0;
  wire system_rst_byteclk_w;
  wire system_rst_in;
  wire system_rst_w;
  wire [0:0]\two_lane_hs_rx_timeout.hs_wait_count ;
  wire \two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count[15]_i_4_n_0 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count[15]_i_5_n_0 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count[15]_i_6_n_0 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count[7]_i_2_n_0 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_1 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_2 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_3 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_4 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_5 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_6 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_7 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_0 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_1 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_2 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_3 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_4 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_5 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_6 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_7 ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[0] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[10] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[11] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[12] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[13] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[14] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[15] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[1] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[2] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[3] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[4] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[5] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[6] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[7] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[8] ;
  wire \two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[9] ;
  wire \two_lane_hs_rx_timeout.maxfrm_wait_done_i_2_n_0 ;
  wire u_sys_rst_byteclk_sync_i_n_0;
  wire NLW_maxfrm_wait_done_sync_i_prmry_ack_UNCONNECTED;
  wire NLW_maxfrm_wait_done_sync_i_scndry_out_UNCONNECTED;
  wire [1:0]NLW_maxfrm_wait_done_sync_i_scndry_vect_out_UNCONNECTED;
  wire [7:7]\NLW_two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_CO_UNCONNECTED ;

  assign alt_skew_calb[1] = \<const0> ;
  assign alt_skew_calb[0] = \<const0> ;
  assign calib_status_l0 = \<const0> ;
  assign calib_status_l1 = \<const0> ;
  assign calib_status_l2 = \<const0> ;
  assign calib_status_l3 = \<const0> ;
  assign cl_rxulpsclknot = \<const0> ;
  assign cl_ulpsactivenot = \<const0> ;
  assign core_ref_clk = core_clk;
  assign dl0_errcontrol = \<const0> ;
  assign dl0_erresc = \<const0> ;
  assign dl0_errsyncesc = \<const0> ;
  assign dl0_rxclkesc = \<const0> ;
  assign dl0_rxdataesc[7] = \<const0> ;
  assign dl0_rxdataesc[6] = \<const0> ;
  assign dl0_rxdataesc[5] = \<const0> ;
  assign dl0_rxdataesc[4] = \<const0> ;
  assign dl0_rxdataesc[3] = \<const0> ;
  assign dl0_rxdataesc[2] = \<const0> ;
  assign dl0_rxdataesc[1] = \<const0> ;
  assign dl0_rxdataesc[0] = \<const0> ;
  assign dl0_rxlpdtesc = \<const0> ;
  assign dl0_rxskewcalhs = \<const0> ;
  assign dl0_rxtriggeresc[3] = \<const0> ;
  assign dl0_rxtriggeresc[2] = \<const0> ;
  assign dl0_rxtriggeresc[1] = \<const0> ;
  assign dl0_rxtriggeresc[0] = \<const0> ;
  assign dl0_rxulpsesc = \<const0> ;
  assign dl0_rxvalidesc = \<const0> ;
  assign dl0_ulpsactivenot = \<const0> ;
  assign dl1_errcontrol = \<const0> ;
  assign dl1_erresc = \<const0> ;
  assign dl1_errsyncesc = \<const0> ;
  assign dl1_rxclkesc = \<const0> ;
  assign dl1_rxdataesc[7] = \<const0> ;
  assign dl1_rxdataesc[6] = \<const0> ;
  assign dl1_rxdataesc[5] = \<const0> ;
  assign dl1_rxdataesc[4] = \<const0> ;
  assign dl1_rxdataesc[3] = \<const0> ;
  assign dl1_rxdataesc[2] = \<const0> ;
  assign dl1_rxdataesc[1] = \<const0> ;
  assign dl1_rxdataesc[0] = \<const0> ;
  assign dl1_rxlpdtesc = \<const0> ;
  assign dl1_rxskewcalhs = \<const0> ;
  assign dl1_rxtriggeresc[3] = \<const0> ;
  assign dl1_rxtriggeresc[2] = \<const0> ;
  assign dl1_rxtriggeresc[1] = \<const0> ;
  assign dl1_rxtriggeresc[0] = \<const0> ;
  assign dl1_rxulpsesc = \<const0> ;
  assign dl1_rxvalidesc = \<const0> ;
  assign dl1_ulpsactivenot = \<const0> ;
  assign dl2_errcontrol = \<const0> ;
  assign dl2_erresc = \<const0> ;
  assign dl2_errsoths = \<const0> ;
  assign dl2_errsotsynchs = \<const0> ;
  assign dl2_errsyncesc = \<const0> ;
  assign dl2_rxactivehs = \<const0> ;
  assign dl2_rxclkesc = \<const0> ;
  assign dl2_rxdataesc[7] = \<const0> ;
  assign dl2_rxdataesc[6] = \<const0> ;
  assign dl2_rxdataesc[5] = \<const0> ;
  assign dl2_rxdataesc[4] = \<const0> ;
  assign dl2_rxdataesc[3] = \<const0> ;
  assign dl2_rxdataesc[2] = \<const0> ;
  assign dl2_rxdataesc[1] = \<const0> ;
  assign dl2_rxdataesc[0] = \<const0> ;
  assign dl2_rxdatahs[7] = \<const0> ;
  assign dl2_rxdatahs[6] = \<const0> ;
  assign dl2_rxdatahs[5] = \<const0> ;
  assign dl2_rxdatahs[4] = \<const0> ;
  assign dl2_rxdatahs[3] = \<const0> ;
  assign dl2_rxdatahs[2] = \<const0> ;
  assign dl2_rxdatahs[1] = \<const0> ;
  assign dl2_rxdatahs[0] = \<const0> ;
  assign dl2_rxlpdtesc = \<const0> ;
  assign dl2_rxskewcalhs = \<const0> ;
  assign dl2_rxsynchs = \<const0> ;
  assign dl2_rxtriggeresc[3] = \<const0> ;
  assign dl2_rxtriggeresc[2] = \<const0> ;
  assign dl2_rxtriggeresc[1] = \<const0> ;
  assign dl2_rxtriggeresc[0] = \<const0> ;
  assign dl2_rxulpsesc = \<const0> ;
  assign dl2_rxvalidesc = \<const0> ;
  assign dl2_rxvalidhs = \<const0> ;
  assign dl2_stopstate = \<const0> ;
  assign dl2_ulpsactivenot = \<const0> ;
  assign dl3_errcontrol = \<const0> ;
  assign dl3_erresc = \<const0> ;
  assign dl3_errsoths = \<const0> ;
  assign dl3_errsotsynchs = \<const0> ;
  assign dl3_errsyncesc = \<const0> ;
  assign dl3_rxactivehs = \<const0> ;
  assign dl3_rxclkesc = \<const0> ;
  assign dl3_rxdataesc[7] = \<const0> ;
  assign dl3_rxdataesc[6] = \<const0> ;
  assign dl3_rxdataesc[5] = \<const0> ;
  assign dl3_rxdataesc[4] = \<const0> ;
  assign dl3_rxdataesc[3] = \<const0> ;
  assign dl3_rxdataesc[2] = \<const0> ;
  assign dl3_rxdataesc[1] = \<const0> ;
  assign dl3_rxdataesc[0] = \<const0> ;
  assign dl3_rxdatahs[7] = \<const0> ;
  assign dl3_rxdatahs[6] = \<const0> ;
  assign dl3_rxdatahs[5] = \<const0> ;
  assign dl3_rxdatahs[4] = \<const0> ;
  assign dl3_rxdatahs[3] = \<const0> ;
  assign dl3_rxdatahs[2] = \<const0> ;
  assign dl3_rxdatahs[1] = \<const0> ;
  assign dl3_rxdatahs[0] = \<const0> ;
  assign dl3_rxlpdtesc = \<const0> ;
  assign dl3_rxskewcalhs = \<const0> ;
  assign dl3_rxsynchs = \<const0> ;
  assign dl3_rxtriggeresc[3] = \<const0> ;
  assign dl3_rxtriggeresc[2] = \<const0> ;
  assign dl3_rxtriggeresc[1] = \<const0> ;
  assign dl3_rxtriggeresc[0] = \<const0> ;
  assign dl3_rxulpsesc = \<const0> ;
  assign dl3_rxvalidesc = \<const0> ;
  assign dl3_rxvalidhs = \<const0> ;
  assign dl3_stopstate = \<const0> ;
  assign dl3_ulpsactivenot = \<const0> ;
  assign dl4_errcontrol = \<const0> ;
  assign dl4_erresc = \<const0> ;
  assign dl4_errsoths = \<const0> ;
  assign dl4_errsotsynchs = \<const0> ;
  assign dl4_errsyncesc = \<const0> ;
  assign dl4_rxactivehs = \<const0> ;
  assign dl4_rxclkesc = \<const0> ;
  assign dl4_rxdataesc[7] = \<const0> ;
  assign dl4_rxdataesc[6] = \<const0> ;
  assign dl4_rxdataesc[5] = \<const0> ;
  assign dl4_rxdataesc[4] = \<const0> ;
  assign dl4_rxdataesc[3] = \<const0> ;
  assign dl4_rxdataesc[2] = \<const0> ;
  assign dl4_rxdataesc[1] = \<const0> ;
  assign dl4_rxdataesc[0] = \<const0> ;
  assign dl4_rxdatahs[7] = \<const0> ;
  assign dl4_rxdatahs[6] = \<const0> ;
  assign dl4_rxdatahs[5] = \<const0> ;
  assign dl4_rxdatahs[4] = \<const0> ;
  assign dl4_rxdatahs[3] = \<const0> ;
  assign dl4_rxdatahs[2] = \<const0> ;
  assign dl4_rxdatahs[1] = \<const0> ;
  assign dl4_rxdatahs[0] = \<const0> ;
  assign dl4_rxlpdtesc = \<const0> ;
  assign dl4_rxskewcalhs = \<const0> ;
  assign dl4_rxsynchs = \<const0> ;
  assign dl4_rxtriggeresc[3] = \<const0> ;
  assign dl4_rxtriggeresc[2] = \<const0> ;
  assign dl4_rxtriggeresc[1] = \<const0> ;
  assign dl4_rxtriggeresc[0] = \<const0> ;
  assign dl4_rxulpsesc = \<const0> ;
  assign dl4_rxvalidesc = \<const0> ;
  assign dl4_rxvalidhs = \<const0> ;
  assign dl4_stopstate = \<const0> ;
  assign dl4_ulpsactivenot = \<const0> ;
  assign dl5_errcontrol = \<const0> ;
  assign dl5_erresc = \<const0> ;
  assign dl5_errsoths = \<const0> ;
  assign dl5_errsotsynchs = \<const0> ;
  assign dl5_errsyncesc = \<const0> ;
  assign dl5_rxactivehs = \<const0> ;
  assign dl5_rxclkesc = \<const0> ;
  assign dl5_rxdataesc[7] = \<const0> ;
  assign dl5_rxdataesc[6] = \<const0> ;
  assign dl5_rxdataesc[5] = \<const0> ;
  assign dl5_rxdataesc[4] = \<const0> ;
  assign dl5_rxdataesc[3] = \<const0> ;
  assign dl5_rxdataesc[2] = \<const0> ;
  assign dl5_rxdataesc[1] = \<const0> ;
  assign dl5_rxdataesc[0] = \<const0> ;
  assign dl5_rxdatahs[7] = \<const0> ;
  assign dl5_rxdatahs[6] = \<const0> ;
  assign dl5_rxdatahs[5] = \<const0> ;
  assign dl5_rxdatahs[4] = \<const0> ;
  assign dl5_rxdatahs[3] = \<const0> ;
  assign dl5_rxdatahs[2] = \<const0> ;
  assign dl5_rxdatahs[1] = \<const0> ;
  assign dl5_rxdatahs[0] = \<const0> ;
  assign dl5_rxlpdtesc = \<const0> ;
  assign dl5_rxskewcalhs = \<const0> ;
  assign dl5_rxsynchs = \<const0> ;
  assign dl5_rxtriggeresc[3] = \<const0> ;
  assign dl5_rxtriggeresc[2] = \<const0> ;
  assign dl5_rxtriggeresc[1] = \<const0> ;
  assign dl5_rxtriggeresc[0] = \<const0> ;
  assign dl5_rxulpsesc = \<const0> ;
  assign dl5_rxvalidesc = \<const0> ;
  assign dl5_rxvalidhs = \<const0> ;
  assign dl5_stopstate = \<const0> ;
  assign dl5_ulpsactivenot = \<const0> ;
  assign dl6_errcontrol = \<const0> ;
  assign dl6_erresc = \<const0> ;
  assign dl6_errsoths = \<const0> ;
  assign dl6_errsotsynchs = \<const0> ;
  assign dl6_errsyncesc = \<const0> ;
  assign dl6_rxactivehs = \<const0> ;
  assign dl6_rxclkesc = \<const0> ;
  assign dl6_rxdataesc[7] = \<const0> ;
  assign dl6_rxdataesc[6] = \<const0> ;
  assign dl6_rxdataesc[5] = \<const0> ;
  assign dl6_rxdataesc[4] = \<const0> ;
  assign dl6_rxdataesc[3] = \<const0> ;
  assign dl6_rxdataesc[2] = \<const0> ;
  assign dl6_rxdataesc[1] = \<const0> ;
  assign dl6_rxdataesc[0] = \<const0> ;
  assign dl6_rxdatahs[7] = \<const0> ;
  assign dl6_rxdatahs[6] = \<const0> ;
  assign dl6_rxdatahs[5] = \<const0> ;
  assign dl6_rxdatahs[4] = \<const0> ;
  assign dl6_rxdatahs[3] = \<const0> ;
  assign dl6_rxdatahs[2] = \<const0> ;
  assign dl6_rxdatahs[1] = \<const0> ;
  assign dl6_rxdatahs[0] = \<const0> ;
  assign dl6_rxlpdtesc = \<const0> ;
  assign dl6_rxskewcalhs = \<const0> ;
  assign dl6_rxsynchs = \<const0> ;
  assign dl6_rxtriggeresc[3] = \<const0> ;
  assign dl6_rxtriggeresc[2] = \<const0> ;
  assign dl6_rxtriggeresc[1] = \<const0> ;
  assign dl6_rxtriggeresc[0] = \<const0> ;
  assign dl6_rxulpsesc = \<const0> ;
  assign dl6_rxvalidesc = \<const0> ;
  assign dl6_rxvalidhs = \<const0> ;
  assign dl6_stopstate = \<const0> ;
  assign dl6_ulpsactivenot = \<const0> ;
  assign dl7_errcontrol = \<const0> ;
  assign dl7_erresc = \<const0> ;
  assign dl7_errsoths = \<const0> ;
  assign dl7_errsotsynchs = \<const0> ;
  assign dl7_errsyncesc = \<const0> ;
  assign dl7_rxactivehs = \<const0> ;
  assign dl7_rxclkesc = \<const0> ;
  assign dl7_rxdataesc[7] = \<const0> ;
  assign dl7_rxdataesc[6] = \<const0> ;
  assign dl7_rxdataesc[5] = \<const0> ;
  assign dl7_rxdataesc[4] = \<const0> ;
  assign dl7_rxdataesc[3] = \<const0> ;
  assign dl7_rxdataesc[2] = \<const0> ;
  assign dl7_rxdataesc[1] = \<const0> ;
  assign dl7_rxdataesc[0] = \<const0> ;
  assign dl7_rxdatahs[7] = \<const0> ;
  assign dl7_rxdatahs[6] = \<const0> ;
  assign dl7_rxdatahs[5] = \<const0> ;
  assign dl7_rxdatahs[4] = \<const0> ;
  assign dl7_rxdatahs[3] = \<const0> ;
  assign dl7_rxdatahs[2] = \<const0> ;
  assign dl7_rxdatahs[1] = \<const0> ;
  assign dl7_rxdatahs[0] = \<const0> ;
  assign dl7_rxlpdtesc = \<const0> ;
  assign dl7_rxskewcalhs = \<const0> ;
  assign dl7_rxsynchs = \<const0> ;
  assign dl7_rxtriggeresc[3] = \<const0> ;
  assign dl7_rxtriggeresc[2] = \<const0> ;
  assign dl7_rxtriggeresc[1] = \<const0> ;
  assign dl7_rxtriggeresc[0] = \<const0> ;
  assign dl7_rxulpsesc = \<const0> ;
  assign dl7_rxvalidesc = \<const0> ;
  assign dl7_rxvalidhs = \<const0> ;
  assign dl7_stopstate = \<const0> ;
  assign dl7_ulpsactivenot = \<const0> ;
  assign dphy_en_out = \<const0> ;
  assign dphy_srst_out = \<const0> ;
  assign idelay_load = \<const0> ;
  assign idelay_tap_value[8] = \<const0> ;
  assign idelay_tap_value[7] = \<const0> ;
  assign idelay_tap_value[6] = \<const0> ;
  assign idelay_tap_value[5] = \<const0> ;
  assign idelay_tap_value[4] = \<const0> ;
  assign idelay_tap_value[3] = \<const0> ;
  assign idelay_tap_value[2] = \<const0> ;
  assign idelay_tap_value[1] = \<const0> ;
  assign idelay_tap_value[0] = \<const0> ;
  assign init_periodic_skew_calb[1] = \<const0> ;
  assign init_periodic_skew_calb[0] = \<const0> ;
  assign phy_rst = \<const0> ;
  assign reg_cal_start = \<const0> ;
  assign riu_addr_l0[5] = \<const0> ;
  assign riu_addr_l0[4] = \<const0> ;
  assign riu_addr_l0[3] = \<const0> ;
  assign riu_addr_l0[2] = \<const0> ;
  assign riu_addr_l0[1] = \<const0> ;
  assign riu_addr_l0[0] = \<const0> ;
  assign riu_addr_l1[5] = \<const0> ;
  assign riu_addr_l1[4] = \<const0> ;
  assign riu_addr_l1[3] = \<const0> ;
  assign riu_addr_l1[2] = \<const0> ;
  assign riu_addr_l1[1] = \<const0> ;
  assign riu_addr_l1[0] = \<const0> ;
  assign riu_addr_l2[5] = \<const0> ;
  assign riu_addr_l2[4] = \<const0> ;
  assign riu_addr_l2[3] = \<const0> ;
  assign riu_addr_l2[2] = \<const0> ;
  assign riu_addr_l2[1] = \<const0> ;
  assign riu_addr_l2[0] = \<const0> ;
  assign riu_addr_l3[5] = \<const0> ;
  assign riu_addr_l3[4] = \<const0> ;
  assign riu_addr_l3[3] = \<const0> ;
  assign riu_addr_l3[2] = \<const0> ;
  assign riu_addr_l3[1] = \<const0> ;
  assign riu_addr_l3[0] = \<const0> ;
  assign riu_nibble_sel_l0 = \<const0> ;
  assign riu_nibble_sel_l1 = \<const0> ;
  assign riu_nibble_sel_l2 = \<const0> ;
  assign riu_nibble_sel_l3 = \<const0> ;
  assign riu_wr_data_l0[15] = \<const0> ;
  assign riu_wr_data_l0[14] = \<const0> ;
  assign riu_wr_data_l0[13] = \<const0> ;
  assign riu_wr_data_l0[12] = \<const0> ;
  assign riu_wr_data_l0[11] = \<const0> ;
  assign riu_wr_data_l0[10] = \<const0> ;
  assign riu_wr_data_l0[9] = \<const0> ;
  assign riu_wr_data_l0[8] = \<const0> ;
  assign riu_wr_data_l0[7] = \<const0> ;
  assign riu_wr_data_l0[6] = \<const0> ;
  assign riu_wr_data_l0[5] = \<const0> ;
  assign riu_wr_data_l0[4] = \<const0> ;
  assign riu_wr_data_l0[3] = \<const0> ;
  assign riu_wr_data_l0[2] = \<const0> ;
  assign riu_wr_data_l0[1] = \<const0> ;
  assign riu_wr_data_l0[0] = \<const0> ;
  assign riu_wr_data_l1[15] = \<const0> ;
  assign riu_wr_data_l1[14] = \<const0> ;
  assign riu_wr_data_l1[13] = \<const0> ;
  assign riu_wr_data_l1[12] = \<const0> ;
  assign riu_wr_data_l1[11] = \<const0> ;
  assign riu_wr_data_l1[10] = \<const0> ;
  assign riu_wr_data_l1[9] = \<const0> ;
  assign riu_wr_data_l1[8] = \<const0> ;
  assign riu_wr_data_l1[7] = \<const0> ;
  assign riu_wr_data_l1[6] = \<const0> ;
  assign riu_wr_data_l1[5] = \<const0> ;
  assign riu_wr_data_l1[4] = \<const0> ;
  assign riu_wr_data_l1[3] = \<const0> ;
  assign riu_wr_data_l1[2] = \<const0> ;
  assign riu_wr_data_l1[1] = \<const0> ;
  assign riu_wr_data_l1[0] = \<const0> ;
  assign riu_wr_data_l2[15] = \<const0> ;
  assign riu_wr_data_l2[14] = \<const0> ;
  assign riu_wr_data_l2[13] = \<const0> ;
  assign riu_wr_data_l2[12] = \<const0> ;
  assign riu_wr_data_l2[11] = \<const0> ;
  assign riu_wr_data_l2[10] = \<const0> ;
  assign riu_wr_data_l2[9] = \<const0> ;
  assign riu_wr_data_l2[8] = \<const0> ;
  assign riu_wr_data_l2[7] = \<const0> ;
  assign riu_wr_data_l2[6] = \<const0> ;
  assign riu_wr_data_l2[5] = \<const0> ;
  assign riu_wr_data_l2[4] = \<const0> ;
  assign riu_wr_data_l2[3] = \<const0> ;
  assign riu_wr_data_l2[2] = \<const0> ;
  assign riu_wr_data_l2[1] = \<const0> ;
  assign riu_wr_data_l2[0] = \<const0> ;
  assign riu_wr_data_l3[15] = \<const0> ;
  assign riu_wr_data_l3[14] = \<const0> ;
  assign riu_wr_data_l3[13] = \<const0> ;
  assign riu_wr_data_l3[12] = \<const0> ;
  assign riu_wr_data_l3[11] = \<const0> ;
  assign riu_wr_data_l3[10] = \<const0> ;
  assign riu_wr_data_l3[9] = \<const0> ;
  assign riu_wr_data_l3[8] = \<const0> ;
  assign riu_wr_data_l3[7] = \<const0> ;
  assign riu_wr_data_l3[6] = \<const0> ;
  assign riu_wr_data_l3[5] = \<const0> ;
  assign riu_wr_data_l3[4] = \<const0> ;
  assign riu_wr_data_l3[3] = \<const0> ;
  assign riu_wr_data_l3[2] = \<const0> ;
  assign riu_wr_data_l3[1] = \<const0> ;
  assign riu_wr_data_l3[0] = \<const0> ;
  assign riu_wr_en_l0 = \<const0> ;
  assign riu_wr_en_l1 = \<const0> ;
  assign riu_wr_en_l2 = \<const0> ;
  assign riu_wr_en_l3 = \<const0> ;
  assign rx_cl_en_hs_lpn = \<const0> ;
  assign rx_cl_fifo_rd_clk = \<const0> ;
  assign rx_cl_fifo_rd_en = \<const0> ;
  assign rx_dl0_en_hs_lpn = \<const0> ;
  assign rx_dl0_fifo_rd_clk = \<const0> ;
  assign rx_dl0_fifo_rd_en = \<const0> ;
  assign rx_dl1_en_hs_lpn = \<const0> ;
  assign rx_dl1_fifo_rd_clk = \<const0> ;
  assign rx_dl1_fifo_rd_en = \<const0> ;
  assign rx_dl2_disable_ibuf = \<const0> ;
  assign rx_dl2_en_hs_lpn = \<const0> ;
  assign rx_dl2_fifo_rd_clk = \<const0> ;
  assign rx_dl2_fifo_rd_en = \<const0> ;
  assign rx_dl3_disable_ibuf = \<const0> ;
  assign rx_dl3_en_hs_lpn = \<const0> ;
  assign rx_dl3_fifo_rd_clk = \<const0> ;
  assign rx_dl3_fifo_rd_en = \<const0> ;
  assign rx_dl4_disable_ibuf = \<const0> ;
  assign rx_dl4_en_hs_lpn = \<const0> ;
  assign rx_dl4_fifo_rd_clk = \<const0> ;
  assign rx_dl4_fifo_rd_en = \<const0> ;
  assign rx_dl5_disable_ibuf = \<const0> ;
  assign rx_dl5_en_hs_lpn = \<const0> ;
  assign rx_dl5_fifo_rd_clk = \<const0> ;
  assign rx_dl5_fifo_rd_en = \<const0> ;
  assign rx_dl6_disable_ibuf = \<const0> ;
  assign rx_dl6_en_hs_lpn = \<const0> ;
  assign rx_dl6_fifo_rd_clk = \<const0> ;
  assign rx_dl6_fifo_rd_en = \<const0> ;
  assign rx_dl7_disable_ibuf = \<const0> ;
  assign rx_dl7_en_hs_lpn = \<const0> ;
  assign rx_dl7_fifo_rd_clk = \<const0> ;
  assign rx_dl7_fifo_rd_en = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sys_rst_byteclk_out = \<const0> ;
  assign tap_comp_res[7] = \<const0> ;
  assign tap_comp_res[6] = \<const0> ;
  assign tap_comp_res[5] = \<const0> ;
  assign tap_comp_res[4] = \<const0> ;
  assign tap_comp_res[3] = \<const0> ;
  assign tap_comp_res[2] = \<const0> ;
  assign tap_comp_res[1] = \<const0> ;
  assign tap_comp_res[0] = \<const0> ;
  assign tap_val_dyn_out[63] = \<const0> ;
  assign tap_val_dyn_out[62] = \<const0> ;
  assign tap_val_dyn_out[61] = \<const0> ;
  assign tap_val_dyn_out[60] = \<const0> ;
  assign tap_val_dyn_out[59] = \<const0> ;
  assign tap_val_dyn_out[58] = \<const0> ;
  assign tap_val_dyn_out[57] = \<const0> ;
  assign tap_val_dyn_out[56] = \<const0> ;
  assign tap_val_dyn_out[55] = \<const0> ;
  assign tap_val_dyn_out[54] = \<const0> ;
  assign tap_val_dyn_out[53] = \<const0> ;
  assign tap_val_dyn_out[52] = \<const0> ;
  assign tap_val_dyn_out[51] = \<const0> ;
  assign tap_val_dyn_out[50] = \<const0> ;
  assign tap_val_dyn_out[49] = \<const0> ;
  assign tap_val_dyn_out[48] = \<const0> ;
  assign tap_val_dyn_out[47] = \<const0> ;
  assign tap_val_dyn_out[46] = \<const0> ;
  assign tap_val_dyn_out[45] = \<const0> ;
  assign tap_val_dyn_out[44] = \<const0> ;
  assign tap_val_dyn_out[43] = \<const0> ;
  assign tap_val_dyn_out[42] = \<const0> ;
  assign tap_val_dyn_out[41] = \<const0> ;
  assign tap_val_dyn_out[40] = \<const0> ;
  assign tap_val_dyn_out[39] = \<const0> ;
  assign tap_val_dyn_out[38] = \<const0> ;
  assign tap_val_dyn_out[37] = \<const0> ;
  assign tap_val_dyn_out[36] = \<const0> ;
  assign tap_val_dyn_out[35] = \<const0> ;
  assign tap_val_dyn_out[34] = \<const0> ;
  assign tap_val_dyn_out[33] = \<const0> ;
  assign tap_val_dyn_out[32] = \<const0> ;
  assign tap_val_dyn_out[31] = \<const0> ;
  assign tap_val_dyn_out[30] = \<const0> ;
  assign tap_val_dyn_out[29] = \<const0> ;
  assign tap_val_dyn_out[28] = \<const0> ;
  assign tap_val_dyn_out[27] = \<const0> ;
  assign tap_val_dyn_out[26] = \<const0> ;
  assign tap_val_dyn_out[25] = \<const0> ;
  assign tap_val_dyn_out[24] = \<const0> ;
  assign tap_val_dyn_out[23] = \<const0> ;
  assign tap_val_dyn_out[22] = \<const0> ;
  assign tap_val_dyn_out[21] = \<const0> ;
  assign tap_val_dyn_out[20] = \<const0> ;
  assign tap_val_dyn_out[19] = \<const0> ;
  assign tap_val_dyn_out[18] = \<const0> ;
  assign tap_val_dyn_out[17] = \<const0> ;
  assign tap_val_dyn_out[16] = \<const0> ;
  assign tap_val_dyn_out[15] = \<const0> ;
  assign tap_val_dyn_out[14] = \<const0> ;
  assign tap_val_dyn_out[13] = \<const0> ;
  assign tap_val_dyn_out[12] = \<const0> ;
  assign tap_val_dyn_out[11] = \<const0> ;
  assign tap_val_dyn_out[10] = \<const0> ;
  assign tap_val_dyn_out[9] = \<const0> ;
  assign tap_val_dyn_out[8] = \<const0> ;
  assign tap_val_dyn_out[7] = \<const0> ;
  assign tap_val_dyn_out[6] = \<const0> ;
  assign tap_val_dyn_out[5] = \<const0> ;
  assign tap_val_dyn_out[4] = \<const0> ;
  assign tap_val_dyn_out[3] = \<const0> ;
  assign tap_val_dyn_out[2] = \<const0> ;
  assign tap_val_dyn_out[1] = \<const0> ;
  assign tap_val_dyn_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized0 cl_enable_sync_fab_top_i
       (.cl_enable(cl_enable),
        .core_clk(core_clk));
  FDCE clk_active_r_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .CLR(u_sys_rst_byteclk_sync_i_n_0),
        .D(1'b1),
        .Q(clk_active_r));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized0_7 clk_active_r_sync
       (.clk_active_r(clk_active_r),
        .core_clk(core_clk));
  FDCE en_falling_edge_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_13 ),
        .Q(en_falling_edge_r_reg_n_0));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_csi_rx_clk_lane \gen_csi_rx_clk_lane.dphy_rx_clk_lane 
       (.D({\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_8 ,p_0_in}),
        .Q(reset_pulse_extsn_cntr_r_reg),
        .SR(cl_status_reg_bit_0),
        .bit_slc_rst(bit_slc_rst),
        .cl_en_hs_rx_term_reg_0(rx_cl_disable_ibuf),
        .cl_init_done_coreclk_reg_0(\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_4 ),
        .cl_init_done_coreclk_reg_1(init_done),
        .\cl_rx_state_reg[1]_0 (system_rst_w),
        .cl_rxclkactivehs_reg_0(cl_rxclkactivehs),
        .cl_rxclkactivehs_reg_1(\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_6 ),
        .cl_rxclkactivehs_reg_2(\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_7 ),
        .cl_stopstate(cl_stopstate),
        .core_clk(core_clk),
        .core_rst(core_rst),
        .dl_en_hs_lpn_reg(\gen_rx_data_lane[0].rx_data_lane_inst_n_3 ),
        .dl_en_hs_lpn_reg_0(\gen_rx_data_lane[1].rx_data_lane_inst_n_5 ),
        .en_falling_edge_r_reg(en_falling_edge_r_reg_n_0),
        .out(cl_init_done_div4clk_i),
        .\reset_pulse_extsn_cntr_r_reg[2] (\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_13 ),
        .rx_cl_disable_ibuf_r(rx_cl_disable_ibuf_r),
        .rx_cl_lp_dn(rx_cl_lp_dn),
        .rx_cl_lp_dp(rx_cl_lp_dp));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_data_lane \gen_rx_data_lane[0].rx_data_lane_inst 
       (.\FSM_sequential_dl_rx_state_reg[1] (init_done),
        .\FSM_sequential_dl_rx_state_reg[2] (cl_rxclkactivehs),
        .SR(stopstate0),
        .align_done_reg(\two_lane_hs_rx_timeout.hs_wait_count ),
        .core_clk(core_clk),
        .core_rst(core_rst),
        .dl0_errsoths(dl0_errsoths),
        .dl0_errsotsynchs(dl0_errsotsynchs),
        .dl0_rxactivehs(dl0_rxactivehs),
        .dl0_rxdatahs(dl0_rxdatahs),
        .dl0_rxsynchs(dl0_rxsynchs),
        .dl0_stopstate(dl0_stopstate),
        .dl_en_hs_lpn_reg(\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_6 ),
        .dl_stopstate_reg(\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_4 ),
        .hs_dvalid_reg(dl0_rxvalidhs),
        .lp_11_r_reg(\gen_rx_data_lane[0].rx_data_lane_inst_n_3 ),
        .out(system_rst_w),
        .prmry_in(maxfrm_wait_done),
        .rx_div4_clk(rx_div4_clk),
        .rx_dl0_disable_ibuf(rx_dl0_disable_ibuf),
        .rx_dl0_hs_dp(rx_dl0_hs_dp),
        .rx_dl0_lp_dn(rx_dl0_lp_dn),
        .rx_dl0_lp_dp(rx_dl0_lp_dp),
        .s_level_out_d3_reg(\gen_rx_data_lane[0].rx_data_lane_inst_n_9 ),
        .scndry_out(u_sys_rst_byteclk_sync_i_n_0),
        .\two_lane_hs_rx_timeout.maxfrm_wait_done_reg (init_done_div4clk_sync),
        .\two_lane_hs_rx_timeout.maxfrm_wait_done_reg_0 (\two_lane_hs_rx_timeout.maxfrm_wait_done_i_2_n_0 ));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_data_lane_8 \gen_rx_data_lane[1].rx_data_lane_inst 
       (.\FSM_sequential_dl_rx_state_reg[1] (init_done),
        .\FSM_sequential_dl_rx_state_reg[2] (cl_rxclkactivehs),
        .SR(stopstate0),
        .core_clk(core_clk),
        .core_rst(core_rst),
        .dl1_errsoths(dl1_errsoths),
        .dl1_errsotsynchs(dl1_errsotsynchs),
        .dl1_rxactivehs(dl1_rxactivehs),
        .dl1_rxdatahs(dl1_rxdatahs),
        .dl1_rxsynchs(dl1_rxsynchs),
        .dl1_rxvalidhs(dl1_rxvalidhs),
        .dl1_stopstate(dl1_stopstate),
        .dl_en_hs_lpn_reg(\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_4 ),
        .dl_en_hs_lpn_reg_0(\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_7 ),
        .out(system_rst_w),
        .rx_div4_clk(rx_div4_clk),
        .rx_dl1_disable_ibuf(rx_dl1_disable_ibuf),
        .rx_dl1_hs_dp(rx_dl1_hs_dp),
        .rx_dl1_lp_dn(rx_dl1_lp_dn),
        .rx_dl1_lp_dp(rx_dl1_lp_dp),
        .scndry_out(u_sys_rst_byteclk_sync_i_n_0),
        .time_out_settle_reg(\gen_rx_data_lane[1].rx_data_lane_inst_n_5 ));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized2 init_done_div4clk_sync_i
       (.out(cl_init_done_div4clk_i),
        .rx_div4_clk(rx_div4_clk),
        .s_level_out_d3_reg_0(init_done_div4clk_sync));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_cdc_type = "2'b01" *) 
  (* c_flop_input = "1'b0" *) 
  (* c_mtbf_stages = "3" *) 
  (* c_reset_state = "1'b1" *) 
  (* c_single_bit = "1'b1" *) 
  (* c_vector_width = "8'b00000010" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell maxfrm_wait_done_sync_i
       (.prmry_ack(NLW_maxfrm_wait_done_sync_i_prmry_ack_UNCONNECTED),
        .prmry_aclk(1'b0),
        .prmry_in(maxfrm_wait_done),
        .prmry_rst_n(1'b1),
        .prmry_vect_in({1'b0,1'b0}),
        .scndry_aclk(core_clk),
        .scndry_out(NLW_maxfrm_wait_done_sync_i_scndry_out_UNCONNECTED),
        .scndry_rst_n(maxfrm_wait_done_sync_i_i_1_n_0),
        .scndry_vect_out(NLW_maxfrm_wait_done_sync_i_scndry_vect_out_UNCONNECTED[1:0]));
  LUT1 #(
    .INIT(2'h1)) 
    maxfrm_wait_done_sync_i_i_1
       (.I0(core_rst),
        .O(maxfrm_wait_done_sync_i_i_1_n_0));
  FDCE \reset_pulse_extsn_cntr_r_reg[0] 
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(p_0_in[0]),
        .Q(reset_pulse_extsn_cntr_r_reg[0]));
  FDCE \reset_pulse_extsn_cntr_r_reg[1] 
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(p_0_in[1]),
        .Q(reset_pulse_extsn_cntr_r_reg[1]));
  FDCE \reset_pulse_extsn_cntr_r_reg[2] 
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(p_0_in[2]),
        .Q(reset_pulse_extsn_cntr_r_reg[2]));
  FDCE \reset_pulse_extsn_cntr_r_reg[3] 
       (.C(core_clk),
        .CE(1'b1),
        .CLR(core_rst),
        .D(\gen_csi_rx_clk_lane.dphy_rx_clk_lane_n_8 ),
        .Q(reset_pulse_extsn_cntr_r_reg[3]));
  FDPE rx_cl_disable_ibuf_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(rx_cl_disable_ibuf),
        .PRE(core_rst),
        .Q(rx_cl_disable_ibuf_r));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \two_lane_hs_rx_timeout.hs_wait_count[15]_i_2 
       (.I0(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_4_n_0 ),
        .I1(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[10] ),
        .I2(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[4] ),
        .I3(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[13] ),
        .I4(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[6] ),
        .I5(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_5_n_0 ),
        .O(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \two_lane_hs_rx_timeout.hs_wait_count[15]_i_4 
       (.I0(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[12] ),
        .I1(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[8] ),
        .I2(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[1] ),
        .I3(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[14] ),
        .O(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \two_lane_hs_rx_timeout.hs_wait_count[15]_i_5 
       (.I0(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[2] ),
        .I1(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[7] ),
        .I2(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[3] ),
        .I3(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[15] ),
        .I4(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_6_n_0 ),
        .O(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \two_lane_hs_rx_timeout.hs_wait_count[15]_i_6 
       (.I0(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[9] ),
        .I1(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[0] ),
        .I2(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[11] ),
        .I3(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[5] ),
        .O(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \two_lane_hs_rx_timeout.hs_wait_count[7]_i_2 
       (.I0(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[0] ),
        .O(\two_lane_hs_rx_timeout.hs_wait_count[7]_i_2_n_0 ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[0] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[0] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[10] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[10] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[11] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[11] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[12] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[12] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[13] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[13]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[13] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[14] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[14]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[14] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[15] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[15]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[15] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3 
       (.CI(\two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_CO_UNCONNECTED [7],\two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_1 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_2 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_3 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_4 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_5 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_6 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[15]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[15:8]),
        .S({\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[15] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[14] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[13] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[12] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[11] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[10] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[9] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[8] }));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[1] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[1] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[2] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[2] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[3] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[3] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[4] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[4] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[5] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[5] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[6] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[6] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[7] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[7] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_0 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_1 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_2 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_3 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_4 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_5 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_6 ,\two_lane_hs_rx_timeout.hs_wait_count_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[0] }),
        .O(p_2_in[7:0]),
        .S({\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[7] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[6] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[5] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[4] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[3] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[2] ,\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[1] ,\two_lane_hs_rx_timeout.hs_wait_count[7]_i_2_n_0 }));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[8] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[8] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  FDRE \two_lane_hs_rx_timeout.hs_wait_count_reg[9] 
       (.C(rx_div4_clk),
        .CE(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[9] ),
        .R(\two_lane_hs_rx_timeout.hs_wait_count ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \two_lane_hs_rx_timeout.maxfrm_wait_done_i_2 
       (.I0(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_4_n_0 ),
        .I1(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[10] ),
        .I2(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[4] ),
        .I3(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[13] ),
        .I4(\two_lane_hs_rx_timeout.hs_wait_count_reg_n_0_[6] ),
        .I5(\two_lane_hs_rx_timeout.hs_wait_count[15]_i_5_n_0 ),
        .O(\two_lane_hs_rx_timeout.maxfrm_wait_done_i_2_n_0 ));
  FDRE \two_lane_hs_rx_timeout.maxfrm_wait_done_reg 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\gen_rx_data_lane[0].rx_data_lane_inst_n_9 ),
        .Q(maxfrm_wait_done),
        .R(1'b0));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_support_rst_logic u_rx_support_rst_logic
       (.SR(cl_status_reg_bit_0),
        .cl_enable(cl_enable),
        .cl_status_reg_bit_4_reg(init_done),
        .core_clk(core_clk),
        .core_rst(core_rst),
        .out(system_rst_byteclk_w),
        .phy_ready(phy_ready),
        .system_rst_in(system_rst_in),
        .system_rst_reg_0(system_rst_w),
        .system_rst_reg_1(stopstate0));
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_init_val = "1'b1" *) 
  (* c_mtbf_stages = "5'b00010" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_rst_sync u_sys_rst_byteclk_sync_i
       (.prmry_in(system_rst_byteclk_w),
        .scndry_aclk(rx_div4_clk),
        .scndry_out(u_sys_rst_byteclk_sync_i_n_0));
endmodule

(* ASSERT_ALL_RESETS = "3'b001" *) (* DPHY_PRESET = "CSI2RX_XLNX" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* MMCM_USED = "TRUE" *) (* MTBF_SYNC_STAGES = "3" *) (* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_rst_logic" *) 
(* RELEASE_MMCM_RESET = "3'b010" *) (* RELEASE_TXPLL_RESET = "3'b011" *) (* RESET_FSM_DONE = "3'b101" *) 
(* RST_BEGIN = "3'b000" *) (* STABLE_CLK_PERIOD = "5.000000" *) (* TIME_OUT = "40000" *) 
(* TXPLL_USED = "FALSE" *) (* WAIT_FOR_ENABLE = "3'b100" *) (* WATCHDOG_TIMEOUT = "200000" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_rst_logic
   (core_clk,
    core_rst,
    cl_enable,
    srst,
    dphyen,
    mmcm_lock,
    txpll_lock,
    phy_rdy,
    mmcm_rst,
    txpll_rst,
    phy_rst,
    system_rst_div4clk,
    system_rst_byteclk,
    system_rst_escclk,
    system_rst);
  input core_clk;
  input core_rst;
  input cl_enable;
  input srst;
  input dphyen;
  input mmcm_lock;
  input txpll_lock;
  input phy_rdy;
  output mmcm_rst;
  output txpll_rst;
  output phy_rst;
  (* keep = "true" *) output system_rst_div4clk;
  (* keep = "true" *) output system_rst_byteclk;
  (* keep = "true" *) output system_rst_escclk;
  (* keep = "true" *) output system_rst;

  wire \<const0> ;
  wire \FSM_sequential_rst_blk_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rst_blk_state[1]_i_1_n_0 ;
  wire \FSM_sequential_rst_blk_state[2]_i_2_n_0 ;
  wire cl_enable;
  wire core_clk;
  wire core_rst;
  wire core_rst_sync;
  wire mmcm_lock_sync;
  wire [15:0]p_0_in;
  wire phy_rst;
  wire phy_rst_i_1_n_0;
  wire phy_rst_i_2_n_0;
  wire phy_rst_i_3_n_0;
  wire phy_rst_i_4_n_0;
  wire reset_timer_r;
  wire reset_timer_r_i_1_n_0;
  wire rst_blk_state;
  wire [2:0]rst_blk_state__0;
  (* RTL_KEEP = "true" *) wire system_rst;
  (* RTL_KEEP = "true" *) wire system_rst_byteclk;
  wire system_rst_byteclk_i_1_n_0;
  wire system_rst_byteclk_i_2_n_0;
  (* RTL_KEEP = "true" *) wire system_rst_div4clk;
  wire system_rst_div4clk_i_1_n_0;
  wire system_rst_div4clk_i_2_n_0;
  (* RTL_KEEP = "true" *) wire system_rst_escclk;
  wire system_rst_escclk_i_1_n_0;
  wire system_rst_escclk_i_2_n_0;
  wire system_rst_escclk_i_3_n_0;
  wire system_rst_escclk_i_4_n_0;
  wire system_rst_i_1_n_0;
  wire system_rst_i_2_n_0;
  wire time_out_counter;
  wire \time_out_counter[15]_i_3_n_0 ;
  wire \time_out_counter[15]_i_4_n_0 ;
  wire [15:0]time_out_counter_reg;
  wire \time_out_counter_reg[15]_i_2_n_2 ;
  wire \time_out_counter_reg[15]_i_2_n_3 ;
  wire \time_out_counter_reg[15]_i_2_n_4 ;
  wire \time_out_counter_reg[15]_i_2_n_5 ;
  wire \time_out_counter_reg[15]_i_2_n_6 ;
  wire \time_out_counter_reg[15]_i_2_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_out_r_i_1_n_0;
  wire time_out_r_i_2_n_0;
  wire time_out_r_i_3_n_0;
  wire time_out_r_i_4_n_0;
  wire time_out_r_reg_n_0;
  wire txpll_lock;
  wire NLW_core_rst_sync_i_prmry_ack_UNCONNECTED;
  wire [1:0]NLW_core_rst_sync_i_scndry_vect_out_UNCONNECTED;
  wire NLW_mmcm_lock_sync_i_prmry_ack_UNCONNECTED;
  wire [1:0]NLW_mmcm_lock_sync_i_scndry_vect_out_UNCONNECTED;
  wire [7:6]\NLW_time_out_counter_reg[15]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_time_out_counter_reg[15]_i_2_O_UNCONNECTED ;
  wire NLW_txpll_lock_sync_i_prmry_ack_UNCONNECTED;
  wire NLW_txpll_lock_sync_i_scndry_out_UNCONNECTED;
  wire [1:0]NLW_txpll_lock_sync_i_scndry_vect_out_UNCONNECTED;

  assign mmcm_rst = \<const0> ;
  assign txpll_rst = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF8C8F)) 
    \FSM_sequential_rst_blk_state[0]_i_1 
       (.I0(rst_blk_state__0[1]),
        .I1(cl_enable),
        .I2(rst_blk_state__0[0]),
        .I3(mmcm_lock_sync),
        .I4(rst_blk_state__0[2]),
        .O(\FSM_sequential_rst_blk_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00A80FF8)) 
    \FSM_sequential_rst_blk_state[1]_i_1 
       (.I0(cl_enable),
        .I1(mmcm_lock_sync),
        .I2(rst_blk_state__0[0]),
        .I3(rst_blk_state__0[2]),
        .I4(rst_blk_state__0[1]),
        .O(\FSM_sequential_rst_blk_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00F00AFF00FF0ACF)) 
    \FSM_sequential_rst_blk_state[2]_i_1 
       (.I0(cl_enable),
        .I1(time_out_r_reg_n_0),
        .I2(rst_blk_state__0[1]),
        .I3(rst_blk_state__0[2]),
        .I4(rst_blk_state__0[0]),
        .I5(mmcm_lock_sync),
        .O(rst_blk_state));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \FSM_sequential_rst_blk_state[2]_i_2 
       (.I0(rst_blk_state__0[1]),
        .I1(rst_blk_state__0[0]),
        .I2(mmcm_lock_sync),
        .I3(cl_enable),
        .I4(rst_blk_state__0[2]),
        .O(\FSM_sequential_rst_blk_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "RST_BEGIN:000,RELEASE_TXPLL_RESET:011,ASSERT_ALL_RESETS:001,RELEASE_MMCM_RESET:010,RESET_FSM_DONE:011,WAIT_FOR_ENABLE:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rst_blk_state_reg[0] 
       (.C(core_clk),
        .CE(rst_blk_state),
        .CLR(core_rst_sync),
        .D(\FSM_sequential_rst_blk_state[0]_i_1_n_0 ),
        .Q(rst_blk_state__0[0]));
  (* FSM_ENCODED_STATES = "RST_BEGIN:000,RELEASE_TXPLL_RESET:011,ASSERT_ALL_RESETS:001,RELEASE_MMCM_RESET:010,RESET_FSM_DONE:011,WAIT_FOR_ENABLE:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rst_blk_state_reg[1] 
       (.C(core_clk),
        .CE(rst_blk_state),
        .CLR(core_rst_sync),
        .D(\FSM_sequential_rst_blk_state[1]_i_1_n_0 ),
        .Q(rst_blk_state__0[1]));
  (* FSM_ENCODED_STATES = "RST_BEGIN:000,RELEASE_TXPLL_RESET:011,ASSERT_ALL_RESETS:001,RELEASE_MMCM_RESET:010,RESET_FSM_DONE:011,WAIT_FOR_ENABLE:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rst_blk_state_reg[2] 
       (.C(core_clk),
        .CE(rst_blk_state),
        .CLR(core_rst_sync),
        .D(\FSM_sequential_rst_blk_state[2]_i_2_n_0 ),
        .Q(rst_blk_state__0[2]));
  GND GND
       (.G(\<const0> ));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_cdc_type = "2'b01" *) 
  (* c_flop_input = "1'b0" *) 
  (* c_mtbf_stages = "3" *) 
  (* c_reset_state = "1'b1" *) 
  (* c_single_bit = "1'b1" *) 
  (* c_vector_width = "8'b00000010" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__2 core_rst_sync_i
       (.prmry_ack(NLW_core_rst_sync_i_prmry_ack_UNCONNECTED),
        .prmry_aclk(1'b0),
        .prmry_in(core_rst),
        .prmry_rst_n(1'b1),
        .prmry_vect_in({1'b0,1'b0}),
        .scndry_aclk(core_clk),
        .scndry_out(core_rst_sync),
        .scndry_rst_n(1'b1),
        .scndry_vect_out(NLW_core_rst_sync_i_scndry_vect_out_UNCONNECTED[1:0]));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_cdc_type = "2'b01" *) 
  (* c_flop_input = "1'b0" *) 
  (* c_mtbf_stages = "3" *) 
  (* c_reset_state = "1'b1" *) 
  (* c_single_bit = "1'b1" *) 
  (* c_vector_width = "8'b00000010" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__3 mmcm_lock_sync_i
       (.prmry_ack(NLW_mmcm_lock_sync_i_prmry_ack_UNCONNECTED),
        .prmry_aclk(1'b0),
        .prmry_in(1'b1),
        .prmry_rst_n(1'b1),
        .prmry_vect_in({1'b0,1'b0}),
        .scndry_aclk(core_clk),
        .scndry_out(mmcm_lock_sync),
        .scndry_rst_n(1'b1),
        .scndry_vect_out(NLW_mmcm_lock_sync_i_scndry_vect_out_UNCONNECTED[1:0]));
  LUT6 #(
    .INIT(64'hAAEAFFFFAAEA0000)) 
    phy_rst_i_1
       (.I0(phy_rst_i_2_n_0),
        .I1(phy_rst_i_3_n_0),
        .I2(time_out_r_reg_n_0),
        .I3(rst_blk_state__0[0]),
        .I4(phy_rst_i_4_n_0),
        .I5(phy_rst),
        .O(phy_rst_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h000D)) 
    phy_rst_i_2
       (.I0(mmcm_lock_sync),
        .I1(rst_blk_state__0[0]),
        .I2(rst_blk_state__0[2]),
        .I3(rst_blk_state__0[1]),
        .O(phy_rst_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    phy_rst_i_3
       (.I0(rst_blk_state__0[1]),
        .I1(rst_blk_state__0[2]),
        .O(phy_rst_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000CFCC0000DFDF)) 
    phy_rst_i_4
       (.I0(cl_enable),
        .I1(rst_blk_state__0[0]),
        .I2(mmcm_lock_sync),
        .I3(time_out_r_reg_n_0),
        .I4(rst_blk_state__0[2]),
        .I5(rst_blk_state__0[1]),
        .O(phy_rst_i_4_n_0));
  FDPE phy_rst_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(phy_rst_i_1_n_0),
        .PRE(core_rst_sync),
        .Q(phy_rst));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8BBB8BB)) 
    reset_timer_r_i_1
       (.I0(reset_timer_r),
        .I1(rst_blk_state__0[2]),
        .I2(mmcm_lock_sync),
        .I3(rst_blk_state__0[0]),
        .I4(time_out_r_reg_n_0),
        .I5(rst_blk_state__0[1]),
        .O(reset_timer_r_i_1_n_0));
  FDPE reset_timer_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(reset_timer_r_i_1_n_0),
        .PRE(core_rst_sync),
        .Q(reset_timer_r));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    system_rst_byteclk_i_1
       (.I0(system_rst_escclk_i_2_n_0),
        .I1(system_rst_byteclk),
        .I2(rst_blk_state__0[2]),
        .I3(rst_blk_state__0[1]),
        .I4(system_rst_escclk_i_3_n_0),
        .I5(system_rst_byteclk_i_2_n_0),
        .O(system_rst_byteclk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h11110111)) 
    system_rst_byteclk_i_2
       (.I0(rst_blk_state__0[2]),
        .I1(rst_blk_state__0[1]),
        .I2(mmcm_lock_sync),
        .I3(cl_enable),
        .I4(rst_blk_state__0[0]),
        .O(system_rst_byteclk_i_2_n_0));
  (* KEEP = "yes" *) 
  FDPE system_rst_byteclk_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(system_rst_byteclk_i_1_n_0),
        .PRE(core_rst_sync),
        .Q(system_rst_byteclk));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    system_rst_div4clk_i_1
       (.I0(system_rst_escclk_i_2_n_0),
        .I1(system_rst_div4clk),
        .I2(rst_blk_state__0[2]),
        .I3(rst_blk_state__0[1]),
        .I4(system_rst_escclk_i_3_n_0),
        .I5(system_rst_div4clk_i_2_n_0),
        .O(system_rst_div4clk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h11110111)) 
    system_rst_div4clk_i_2
       (.I0(rst_blk_state__0[2]),
        .I1(rst_blk_state__0[1]),
        .I2(mmcm_lock_sync),
        .I3(cl_enable),
        .I4(rst_blk_state__0[0]),
        .O(system_rst_div4clk_i_2_n_0));
  (* KEEP = "yes" *) 
  FDPE system_rst_div4clk_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(system_rst_div4clk_i_1_n_0),
        .PRE(core_rst_sync),
        .Q(system_rst_div4clk));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    system_rst_escclk_i_1
       (.I0(system_rst_escclk_i_2_n_0),
        .I1(system_rst_escclk),
        .I2(rst_blk_state__0[2]),
        .I3(rst_blk_state__0[1]),
        .I4(system_rst_escclk_i_3_n_0),
        .I5(system_rst_escclk_i_4_n_0),
        .O(system_rst_escclk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0F22)) 
    system_rst_escclk_i_2
       (.I0(rst_blk_state__0[1]),
        .I1(rst_blk_state__0[0]),
        .I2(cl_enable),
        .I3(rst_blk_state__0[2]),
        .O(system_rst_escclk_i_2_n_0));
  LUT4 #(
    .INIT(16'h0F22)) 
    system_rst_escclk_i_3
       (.I0(time_out_r_reg_n_0),
        .I1(mmcm_lock_sync),
        .I2(cl_enable),
        .I3(rst_blk_state__0[0]),
        .O(system_rst_escclk_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h11110111)) 
    system_rst_escclk_i_4
       (.I0(rst_blk_state__0[2]),
        .I1(rst_blk_state__0[1]),
        .I2(mmcm_lock_sync),
        .I3(cl_enable),
        .I4(rst_blk_state__0[0]),
        .O(system_rst_escclk_i_4_n_0));
  (* KEEP = "yes" *) 
  FDPE system_rst_escclk_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(system_rst_escclk_i_1_n_0),
        .PRE(core_rst_sync),
        .Q(system_rst_escclk));
  LUT6 #(
    .INIT(64'hFFFFFFFF00550404)) 
    system_rst_i_1
       (.I0(rst_blk_state__0[2]),
        .I1(time_out_r_reg_n_0),
        .I2(mmcm_lock_sync),
        .I3(cl_enable),
        .I4(rst_blk_state__0[0]),
        .I5(system_rst_i_2_n_0),
        .O(system_rst_i_1_n_0));
  LUT6 #(
    .INIT(64'h003000DDF0F0F0FF)) 
    system_rst_i_2
       (.I0(mmcm_lock_sync),
        .I1(rst_blk_state__0[0]),
        .I2(system_rst),
        .I3(rst_blk_state__0[2]),
        .I4(rst_blk_state__0[1]),
        .I5(cl_enable),
        .O(system_rst_i_2_n_0));
  (* KEEP = "yes" *) 
  FDPE system_rst_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(system_rst_i_1_n_0),
        .PRE(core_rst_sync),
        .Q(system_rst));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_counter_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \time_out_counter[15]_i_1 
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .I4(\time_out_counter[15]_i_3_n_0 ),
        .I5(\time_out_counter[15]_i_4_n_0 ),
        .O(time_out_counter));
  LUT6 #(
    .INIT(64'hFFDFFFFFFFFFFFFF)) 
    \time_out_counter[15]_i_3 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[11]),
        .I5(time_out_counter_reg[10]),
        .O(\time_out_counter[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \time_out_counter[15]_i_4 
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_counter_reg[4]),
        .O(\time_out_counter[15]_i_4_n_0 ));
  FDRE \time_out_counter_reg[0] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[0]),
        .Q(time_out_counter_reg[0]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[10] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[10]),
        .Q(time_out_counter_reg[10]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[11] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[11]),
        .Q(time_out_counter_reg[11]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[12] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[12]),
        .Q(time_out_counter_reg[12]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[13] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[13]),
        .Q(time_out_counter_reg[13]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[14] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[14]),
        .Q(time_out_counter_reg[14]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[15] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[15]),
        .Q(time_out_counter_reg[15]),
        .R(reset_timer_r));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \time_out_counter_reg[15]_i_2 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_time_out_counter_reg[15]_i_2_CO_UNCONNECTED [7:6],\time_out_counter_reg[15]_i_2_n_2 ,\time_out_counter_reg[15]_i_2_n_3 ,\time_out_counter_reg[15]_i_2_n_4 ,\time_out_counter_reg[15]_i_2_n_5 ,\time_out_counter_reg[15]_i_2_n_6 ,\time_out_counter_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[15]_i_2_O_UNCONNECTED [7],p_0_in[15:9]}),
        .S({1'b0,time_out_counter_reg[15:9]}));
  FDRE \time_out_counter_reg[1] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[1]),
        .Q(time_out_counter_reg[1]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[2] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[2]),
        .Q(time_out_counter_reg[2]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[3] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[3]),
        .Q(time_out_counter_reg[3]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[4] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[4]),
        .Q(time_out_counter_reg[4]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[5] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[5]),
        .Q(time_out_counter_reg[5]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[6] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[6]),
        .Q(time_out_counter_reg[6]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[7] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[7]),
        .Q(time_out_counter_reg[7]),
        .R(reset_timer_r));
  FDRE \time_out_counter_reg[8] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[8]),
        .Q(time_out_counter_reg[8]),
        .R(reset_timer_r));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \time_out_counter_reg[8]_i_1 
       (.CI(time_out_counter_reg[0]),
        .CI_TOP(1'b0),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 ,\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:1]),
        .S(time_out_counter_reg[8:1]));
  FDRE \time_out_counter_reg[9] 
       (.C(core_clk),
        .CE(time_out_counter),
        .D(p_0_in[9]),
        .Q(time_out_counter_reg[9]),
        .R(reset_timer_r));
  LUT5 #(
    .INIT(32'h0000EAAA)) 
    time_out_r_i_1
       (.I0(time_out_r_reg_n_0),
        .I1(time_out_r_i_2_n_0),
        .I2(time_out_r_i_3_n_0),
        .I3(time_out_r_i_4_n_0),
        .I4(reset_timer_r),
        .O(time_out_r_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    time_out_r_i_2
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[14]),
        .I5(time_out_counter_reg[15]),
        .O(time_out_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    time_out_r_i_3
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .O(time_out_r_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    time_out_r_i_4
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[9]),
        .I5(time_out_counter_reg[8]),
        .O(time_out_r_i_4_n_0));
  FDRE time_out_r_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(time_out_r_i_1_n_0),
        .Q(time_out_r_reg_n_0),
        .R(1'b0));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_cdc_type = "2'b01" *) 
  (* c_flop_input = "1'b0" *) 
  (* c_mtbf_stages = "3" *) 
  (* c_reset_state = "1'b1" *) 
  (* c_single_bit = "1'b1" *) 
  (* c_vector_width = "8'b00000010" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__4 txpll_lock_sync_i
       (.prmry_ack(NLW_txpll_lock_sync_i_prmry_ack_UNCONNECTED),
        .prmry_aclk(1'b0),
        .prmry_in(txpll_lock),
        .prmry_rst_n(1'b1),
        .prmry_vect_in({1'b0,1'b0}),
        .scndry_aclk(core_clk),
        .scndry_out(NLW_txpll_lock_sync_i_scndry_out_UNCONNECTED),
        .scndry_rst_n(1'b1),
        .scndry_vect_out(NLW_txpll_lock_sync_i_scndry_vect_out_UNCONNECTED[1:0]));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_rst_sync" *) (* c_init_val = "1'b1" *) (* c_mtbf_stages = "5'b00010" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_rst_sync
   (prmry_in,
    scndry_aclk,
    scndry_out);
  input prmry_in;
  input scndry_aclk;
  output scndry_out;

  wire prmry_in;
  wire scndry_aclk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_mipi_dphy_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;

  assign scndry_out = stg3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_mipi_dphy_cdc_to_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(stg1_mipi_dphy_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(stg1_mipi_dphy_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_rst_sync" *) (* c_init_val = "1'b1" *) (* c_mtbf_stages = "5'b00010" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_rst_sync__1
   (prmry_in,
    scndry_aclk,
    scndry_out);
  input prmry_in;
  input scndry_aclk;
  output scndry_out;

  wire prmry_in;
  wire scndry_aclk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg1_mipi_dphy_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire stg3;

  assign scndry_out = stg3;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg1_mipi_dphy_cdc_to_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(stg1_mipi_dphy_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg2_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(stg1_mipi_dphy_cdc_to),
        .Q(stg2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b1)) 
    stg3_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(stg2),
        .Q(stg3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sot_det_align" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sot_det_align
   (dl1_rxsynchs,
    dl1_errsoths,
    dl1_errsotsynchs,
    E,
    dl1_rxvalidhs,
    dl1_rxdatahs,
    dl_en_hs_lpn_i,
    rx_div4_clk,
    rx_dl1_hs_dp);
  output dl1_rxsynchs;
  output dl1_errsoths;
  output dl1_errsotsynchs;
  output [0:0]E;
  output dl1_rxvalidhs;
  output [7:0]dl1_rxdatahs;
  input dl_en_hs_lpn_i;
  input rx_div4_clk;
  input [7:0]rx_dl1_hs_dp;

  wire [0:0]E;
  wire align_done_i_10__0_n_0;
  wire align_done_i_11__0_n_0;
  wire align_done_i_12__0_n_0;
  wire align_done_i_13__0_n_0;
  wire align_done_i_14__0_n_0;
  wire align_done_i_15__0_n_0;
  wire align_done_i_16__0_n_0;
  wire align_done_i_17__0_n_0;
  wire align_done_i_18__0_n_0;
  wire align_done_i_19__0_n_0;
  wire align_done_i_1_n_0;
  wire align_done_i_20__0_n_0;
  wire align_done_i_21_n_0;
  wire align_done_i_2__0_n_0;
  wire align_done_i_3__0_n_0;
  wire align_done_i_4__0_n_0;
  wire align_done_i_5__0_n_0;
  wire align_done_i_6__0_n_0;
  wire align_done_i_7_n_0;
  wire align_done_i_8__0_n_0;
  wire align_done_i_9__0_n_0;
  wire dl1_errsoths;
  wire dl1_errsotsynchs;
  wire [7:0]dl1_rxdatahs;
  wire dl1_rxsynchs;
  wire dl1_rxvalidhs;
  wire dl_en_hs_lpn_i;
  wire en_hs_lpn_sync;
  wire en_hs_lpn_sync_r;
  wire errsoths3_out;
  wire errsoths_i_10__0_n_0;
  wire errsoths_i_11__0_n_0;
  wire errsoths_i_12__0_n_0;
  wire errsoths_i_13__0_n_0;
  wire errsoths_i_14__0_n_0;
  wire errsoths_i_15_n_0;
  wire errsoths_i_16_n_0;
  wire errsoths_i_2__0_n_0;
  wire errsoths_i_3__0_n_0;
  wire errsoths_i_4__0_n_0;
  wire errsoths_i_5_n_0;
  wire errsoths_i_6__0_n_0;
  wire errsoths_i_7__0_n_0;
  wire errsoths_i_8__0_n_0;
  wire errsoths_i_9__0_n_0;
  wire errsotsynchs1_out;
  wire errsotsynchs_i_2__0_n_0;
  wire errsotsynchs_i_3__0_n_0;
  wire errsotsynchs_i_4__0_n_0;
  wire errsotsynchs_i_5__0_n_0;
  wire errsotsynchs_i_6__0_n_0;
  wire errsotsynchs_i_7__0_n_0;
  wire errsotsynchs_i_8__0_n_0;
  wire \h_reg_reg_n_0_[10] ;
  wire \h_reg_reg_n_0_[11] ;
  wire \h_reg_reg_n_0_[12] ;
  wire \h_reg_reg_n_0_[13] ;
  wire \h_reg_reg_n_0_[14] ;
  wire \h_reg_reg_n_0_[15] ;
  wire \h_reg_reg_n_0_[1] ;
  wire \h_reg_reg_n_0_[2] ;
  wire \h_reg_reg_n_0_[3] ;
  wire \h_reg_reg_n_0_[4] ;
  wire \h_reg_reg_n_0_[5] ;
  wire \h_reg_reg_n_0_[6] ;
  wire \h_reg_reg_n_0_[7] ;
  wire \h_reg_reg_n_0_[8] ;
  wire \h_reg_reg_n_0_[9] ;
  wire [7:0]hs_data;
  wire \hs_data[0]_i_2__0_n_0 ;
  wire \hs_data[1]_i_2__0_n_0 ;
  wire \hs_data[2]_i_2__0_n_0 ;
  wire \hs_data[3]_i_2__0_n_0 ;
  wire \hs_data[4]_i_2__0_n_0 ;
  wire \hs_data[4]_i_3__0_n_0 ;
  wire \hs_data[5]_i_2__0_n_0 ;
  wire \hs_data[5]_i_3__0_n_0 ;
  wire \hs_data[6]_i_2__0_n_0 ;
  wire \hs_data[6]_i_3__0_n_0 ;
  wire \hs_data[7]_i_1__0_n_0 ;
  wire \hs_data[7]_i_3__0_n_0 ;
  wire \hs_data[7]_i_4__0_n_0 ;
  wire hs_dvalid_i_1__0_n_0;
  wire rx_div4_clk;
  wire [7:0]rx_dl1_hs_dp;
  wire \rx_hs_dp_r_reg_n_0_[0] ;
  wire \rx_hs_dp_r_reg_n_0_[1] ;
  wire \rx_hs_dp_r_reg_n_0_[2] ;
  wire \rx_hs_dp_r_reg_n_0_[3] ;
  wire \rx_hs_dp_r_reg_n_0_[4] ;
  wire \rx_hs_dp_r_reg_n_0_[5] ;
  wire \rx_hs_dp_r_reg_n_0_[6] ;
  wire \rx_hs_dp_r_reg_n_0_[7] ;
  wire rxsynchs5_out;
  wire rxsynchs_i_10__0_n_0;
  wire rxsynchs_i_11__0_n_0;
  wire rxsynchs_i_12__0_n_0;
  wire rxsynchs_i_13__0_n_0;
  wire rxsynchs_i_14__0_n_0;
  wire rxsynchs_i_15__0_n_0;
  wire rxsynchs_i_16__0_n_0;
  wire rxsynchs_i_17__0_n_0;
  wire rxsynchs_i_18__0_n_0;
  wire rxsynchs_i_19__0_n_0;
  wire rxsynchs_i_1_n_0;
  wire rxsynchs_i_20__0_n_0;
  wire rxsynchs_i_21__0_n_0;
  wire rxsynchs_i_22__0_n_0;
  wire rxsynchs_i_23__0_n_0;
  wire rxsynchs_i_3__0_n_0;
  wire rxsynchs_i_4__0_n_0;
  wire rxsynchs_i_5_n_0;
  wire rxsynchs_i_6__0_n_0;
  wire rxsynchs_i_7__0_n_0;
  wire rxsynchs_i_8__0_n_0;
  wire rxsynchs_i_9__0_n_0;
  wire \start_bit[0]_i_1__0_n_0 ;
  wire \start_bit[0]_i_2__0_n_0 ;
  wire \start_bit[0]_i_3__0_n_0 ;
  wire \start_bit[0]_i_4_n_0 ;
  wire \start_bit[0]_i_5_n_0 ;
  wire \start_bit[0]_i_6_n_0 ;
  wire \start_bit[0]_i_7_n_0 ;
  wire \start_bit[0]_i_8_n_0 ;
  wire \start_bit[1]_i_1__0_n_0 ;
  wire \start_bit[1]_i_2__0_n_0 ;
  wire \start_bit[1]_i_3__0_n_0 ;
  wire \start_bit[2]_i_1__0_n_0 ;
  wire \start_bit[2]_i_2__0_n_0 ;
  wire \start_bit[2]_i_3__0_n_0 ;
  wire \start_bit[2]_i_4__0_n_0 ;
  wire \start_bit[2]_i_5__0_n_0 ;
  wire \start_bit[2]_i_6__0_n_0 ;
  wire \start_bit[2]_i_7__0_n_0 ;
  wire \start_bit[2]_i_8__0_n_0 ;
  wire \start_bit[2]_i_9__0_n_0 ;
  wire \start_bit_reg_n_0_[0] ;
  wire \start_bit_reg_n_0_[1] ;
  wire \start_bit_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'hFF00F700FF00FF00)) 
    align_done_i_1
       (.I0(align_done_i_2__0_n_0),
        .I1(align_done_i_3__0_n_0),
        .I2(align_done_i_4__0_n_0),
        .I3(en_hs_lpn_sync_r),
        .I4(E),
        .I5(align_done_i_5__0_n_0),
        .O(align_done_i_1_n_0));
  LUT6 #(
    .INIT(64'hDF4DFFDFFFDFFFFF)) 
    align_done_i_10__0
       (.I0(\h_reg_reg_n_0_[11] ),
        .I1(\h_reg_reg_n_0_[10] ),
        .I2(\h_reg_reg_n_0_[13] ),
        .I3(\h_reg_reg_n_0_[14] ),
        .I4(\h_reg_reg_n_0_[15] ),
        .I5(\h_reg_reg_n_0_[12] ),
        .O(align_done_i_10__0_n_0));
  LUT6 #(
    .INIT(64'hBF2BFFBFFFBFFFFF)) 
    align_done_i_11__0
       (.I0(\h_reg_reg_n_0_[8] ),
        .I1(\h_reg_reg_n_0_[9] ),
        .I2(\h_reg_reg_n_0_[11] ),
        .I3(\h_reg_reg_n_0_[12] ),
        .I4(\h_reg_reg_n_0_[13] ),
        .I5(\h_reg_reg_n_0_[10] ),
        .O(align_done_i_11__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    align_done_i_12__0
       (.I0(\h_reg_reg_n_0_[13] ),
        .I1(\h_reg_reg_n_0_[12] ),
        .I2(\h_reg_reg_n_0_[10] ),
        .I3(\h_reg_reg_n_0_[11] ),
        .O(align_done_i_12__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00E2A2AA)) 
    align_done_i_13__0
       (.I0(\h_reg_reg_n_0_[9] ),
        .I1(\h_reg_reg_n_0_[13] ),
        .I2(\h_reg_reg_n_0_[12] ),
        .I3(\h_reg_reg_n_0_[11] ),
        .I4(\h_reg_reg_n_0_[10] ),
        .I5(\h_reg_reg_n_0_[8] ),
        .O(align_done_i_13__0_n_0));
  LUT6 #(
    .INIT(64'hFFABFFABFFABAAAB)) 
    align_done_i_14__0
       (.I0(\h_reg_reg_n_0_[9] ),
        .I1(\h_reg_reg_n_0_[6] ),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(\h_reg_reg_n_0_[10] ),
        .I4(\h_reg_reg_n_0_[12] ),
        .I5(\h_reg_reg_n_0_[11] ),
        .O(align_done_i_14__0_n_0));
  LUT6 #(
    .INIT(64'hFFABFFABFFABAAAB)) 
    align_done_i_15__0
       (.I0(\h_reg_reg_n_0_[11] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[9] ),
        .I3(\h_reg_reg_n_0_[12] ),
        .I4(\h_reg_reg_n_0_[13] ),
        .I5(\h_reg_reg_n_0_[14] ),
        .O(align_done_i_15__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF2202EA2A)) 
    align_done_i_16__0
       (.I0(\h_reg_reg_n_0_[11] ),
        .I1(\h_reg_reg_n_0_[12] ),
        .I2(\h_reg_reg_n_0_[15] ),
        .I3(\h_reg_reg_n_0_[14] ),
        .I4(\h_reg_reg_n_0_[13] ),
        .I5(\h_reg_reg_n_0_[10] ),
        .O(align_done_i_16__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    align_done_i_17__0
       (.I0(\h_reg_reg_n_0_[13] ),
        .I1(\h_reg_reg_n_0_[14] ),
        .I2(\h_reg_reg_n_0_[15] ),
        .I3(\h_reg_reg_n_0_[12] ),
        .O(align_done_i_17__0_n_0));
  LUT6 #(
    .INIT(64'hDFFFFFFF4DDFDFFF)) 
    align_done_i_18__0
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\h_reg_reg_n_0_[6] ),
        .I3(\h_reg_reg_n_0_[10] ),
        .I4(\h_reg_reg_n_0_[8] ),
        .I5(\h_reg_reg_n_0_[9] ),
        .O(align_done_i_18__0_n_0));
  LUT6 #(
    .INIT(64'h5101D54151115101)) 
    align_done_i_19__0
       (.I0(align_done_i_21_n_0),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\h_reg_reg_n_0_[6] ),
        .I3(\h_reg_reg_n_0_[7] ),
        .I4(\h_reg_reg_n_0_[8] ),
        .I5(\h_reg_reg_n_0_[9] ),
        .O(align_done_i_19__0_n_0));
  LUT6 #(
    .INIT(64'h20000000B2202000)) 
    align_done_i_20__0
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[5] ),
        .I3(\h_reg_reg_n_0_[6] ),
        .I4(\h_reg_reg_n_0_[9] ),
        .I5(\h_reg_reg_n_0_[4] ),
        .O(align_done_i_20__0_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAFE)) 
    align_done_i_21
       (.I0(\h_reg_reg_n_0_[4] ),
        .I1(\h_reg_reg_n_0_[3] ),
        .I2(\h_reg_reg_n_0_[2] ),
        .I3(\h_reg_reg_n_0_[6] ),
        .I4(\h_reg_reg_n_0_[5] ),
        .O(align_done_i_21_n_0));
  LUT5 #(
    .INIT(32'h00045555)) 
    align_done_i_2__0
       (.I0(align_done_i_6__0_n_0),
        .I1(align_done_i_7_n_0),
        .I2(align_done_i_8__0_n_0),
        .I3(align_done_i_9__0_n_0),
        .I4(align_done_i_10__0_n_0),
        .O(align_done_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA20AA2020)) 
    align_done_i_3__0
       (.I0(align_done_i_11__0_n_0),
        .I1(align_done_i_12__0_n_0),
        .I2(\h_reg_reg_n_0_[9] ),
        .I3(align_done_i_13__0_n_0),
        .I4(align_done_i_14__0_n_0),
        .I5(align_done_i_6__0_n_0),
        .O(align_done_i_3__0_n_0));
  LUT5 #(
    .INIT(32'hD0DDFFFF)) 
    align_done_i_4__0
       (.I0(align_done_i_15__0_n_0),
        .I1(align_done_i_16__0_n_0),
        .I2(align_done_i_17__0_n_0),
        .I3(\h_reg_reg_n_0_[11] ),
        .I4(align_done_i_10__0_n_0),
        .O(align_done_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h00A2)) 
    align_done_i_5__0
       (.I0(\start_bit[0]_i_4_n_0 ),
        .I1(align_done_i_18__0_n_0),
        .I2(align_done_i_19__0_n_0),
        .I3(align_done_i_20__0_n_0),
        .O(align_done_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h080000008E080800)) 
    align_done_i_6__0
       (.I0(\h_reg_reg_n_0_[10] ),
        .I1(\h_reg_reg_n_0_[11] ),
        .I2(\h_reg_reg_n_0_[13] ),
        .I3(\h_reg_reg_n_0_[12] ),
        .I4(\h_reg_reg_n_0_[14] ),
        .I5(\h_reg_reg_n_0_[9] ),
        .O(align_done_i_6__0_n_0));
  LUT5 #(
    .INIT(32'hBBB3FBB3)) 
    align_done_i_7
       (.I0(\h_reg_reg_n_0_[11] ),
        .I1(\h_reg_reg_n_0_[10] ),
        .I2(\h_reg_reg_n_0_[12] ),
        .I3(\h_reg_reg_n_0_[14] ),
        .I4(\h_reg_reg_n_0_[13] ),
        .O(align_done_i_7_n_0));
  LUT6 #(
    .INIT(64'h000000000E0E0EFE)) 
    align_done_i_8__0
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[11] ),
        .I3(\h_reg_reg_n_0_[12] ),
        .I4(\h_reg_reg_n_0_[13] ),
        .I5(\h_reg_reg_n_0_[10] ),
        .O(align_done_i_8__0_n_0));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    align_done_i_9__0
       (.I0(\h_reg_reg_n_0_[9] ),
        .I1(\h_reg_reg_n_0_[13] ),
        .I2(\h_reg_reg_n_0_[12] ),
        .I3(\h_reg_reg_n_0_[11] ),
        .I4(\h_reg_reg_n_0_[14] ),
        .O(align_done_i_9__0_n_0));
  FDRE align_done_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(align_done_i_1_n_0),
        .Q(E),
        .R(1'b0));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1 en_hs_lpn_sync_i
       (.dl_en_hs_lpn_i(dl_en_hs_lpn_i),
        .out(en_hs_lpn_sync),
        .rx_div4_clk(rx_div4_clk));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    en_hs_lpn_sync_r_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(en_hs_lpn_sync),
        .Q(en_hs_lpn_sync_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000800080006880)) 
    errsoths_i_10__0
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[11] ),
        .I2(\h_reg_reg_n_0_[8] ),
        .I3(\h_reg_reg_n_0_[9] ),
        .I4(\h_reg_reg_n_0_[10] ),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(errsoths_i_10__0_n_0));
  LUT6 #(
    .INIT(64'hBBBABBBBAAAAAAAA)) 
    errsoths_i_11__0
       (.I0(align_done_i_20__0_n_0),
        .I1(errsoths_i_14__0_n_0),
        .I2(align_done_i_21_n_0),
        .I3(errsoths_i_15_n_0),
        .I4(errsoths_i_16_n_0),
        .I5(align_done_i_18__0_n_0),
        .O(errsoths_i_11__0_n_0));
  LUT6 #(
    .INIT(64'h4000944000004000)) 
    errsoths_i_12__0
       (.I0(\h_reg_reg_n_0_[3] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\h_reg_reg_n_0_[4] ),
        .I3(\h_reg_reg_n_0_[8] ),
        .I4(\h_reg_reg_n_0_[7] ),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(errsoths_i_12__0_n_0));
  LUT6 #(
    .INIT(64'h4000000094404000)) 
    errsoths_i_13__0
       (.I0(\h_reg_reg_n_0_[8] ),
        .I1(\h_reg_reg_n_0_[7] ),
        .I2(\h_reg_reg_n_0_[6] ),
        .I3(\h_reg_reg_n_0_[9] ),
        .I4(\h_reg_reg_n_0_[5] ),
        .I5(\h_reg_reg_n_0_[4] ),
        .O(errsoths_i_13__0_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    errsoths_i_14__0
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[9] ),
        .I3(\h_reg_reg_n_0_[5] ),
        .I4(\h_reg_reg_n_0_[6] ),
        .O(errsoths_i_14__0_n_0));
  LUT5 #(
    .INIT(32'h08000B00)) 
    errsoths_i_15
       (.I0(\h_reg_reg_n_0_[9] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(\h_reg_reg_n_0_[6] ),
        .I4(\h_reg_reg_n_0_[5] ),
        .O(errsoths_i_15_n_0));
  LUT5 #(
    .INIT(32'hF7F3F333)) 
    errsoths_i_16
       (.I0(\h_reg_reg_n_0_[8] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\h_reg_reg_n_0_[6] ),
        .I3(\h_reg_reg_n_0_[9] ),
        .I4(\h_reg_reg_n_0_[7] ),
        .O(errsoths_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00EF0045)) 
    errsoths_i_1__0
       (.I0(rxsynchs_i_6__0_n_0),
        .I1(errsoths_i_2__0_n_0),
        .I2(errsoths_i_3__0_n_0),
        .I3(errsoths_i_4__0_n_0),
        .I4(errsoths_i_5_n_0),
        .I5(errsoths_i_6__0_n_0),
        .O(errsoths3_out));
  LUT6 #(
    .INIT(64'h2000000092202000)) 
    errsoths_i_2__0
       (.I0(\h_reg_reg_n_0_[13] ),
        .I1(\h_reg_reg_n_0_[12] ),
        .I2(\h_reg_reg_n_0_[10] ),
        .I3(\h_reg_reg_n_0_[11] ),
        .I4(\h_reg_reg_n_0_[9] ),
        .I5(\h_reg_reg_n_0_[8] ),
        .O(errsoths_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h00000000ABAAFFFF)) 
    errsoths_i_3__0
       (.I0(align_done_i_10__0_n_0),
        .I1(align_done_i_17__0_n_0),
        .I2(\h_reg_reg_n_0_[10] ),
        .I3(\h_reg_reg_n_0_[11] ),
        .I4(align_done_i_3__0_n_0),
        .I5(errsoths_i_7__0_n_0),
        .O(errsoths_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFBFFFBFBFFFFFFFF)) 
    errsoths_i_4__0
       (.I0(E),
        .I1(en_hs_lpn_sync_r),
        .I2(align_done_i_20__0_n_0),
        .I3(align_done_i_19__0_n_0),
        .I4(align_done_i_18__0_n_0),
        .I5(\start_bit[0]_i_4_n_0 ),
        .O(errsoths_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hFFF4)) 
    errsoths_i_5
       (.I0(errsoths_i_8__0_n_0),
        .I1(rxsynchs_i_10__0_n_0),
        .I2(errsoths_i_9__0_n_0),
        .I3(errsoths_i_10__0_n_0),
        .O(errsoths_i_5_n_0));
  LUT6 #(
    .INIT(64'h00D000D000D00000)) 
    errsoths_i_6__0
       (.I0(\start_bit[0]_i_4_n_0 ),
        .I1(errsoths_i_11__0_n_0),
        .I2(en_hs_lpn_sync_r),
        .I3(E),
        .I4(errsoths_i_12__0_n_0),
        .I5(errsoths_i_13__0_n_0),
        .O(errsoths_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h0800000086080800)) 
    errsoths_i_7__0
       (.I0(\h_reg_reg_n_0_[12] ),
        .I1(\h_reg_reg_n_0_[14] ),
        .I2(\h_reg_reg_n_0_[13] ),
        .I3(\h_reg_reg_n_0_[11] ),
        .I4(\h_reg_reg_n_0_[10] ),
        .I5(\h_reg_reg_n_0_[9] ),
        .O(errsoths_i_7__0_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFF79F7F7FF)) 
    errsoths_i_8__0
       (.I0(\h_reg_reg_n_0_[12] ),
        .I1(\h_reg_reg_n_0_[9] ),
        .I2(\h_reg_reg_n_0_[11] ),
        .I3(\h_reg_reg_n_0_[10] ),
        .I4(\h_reg_reg_n_0_[8] ),
        .I5(\h_reg_reg_n_0_[7] ),
        .O(errsoths_i_8__0_n_0));
  LUT6 #(
    .INIT(64'h4000000094404000)) 
    errsoths_i_9__0
       (.I0(\h_reg_reg_n_0_[9] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[10] ),
        .I3(\h_reg_reg_n_0_[6] ),
        .I4(\h_reg_reg_n_0_[7] ),
        .I5(\h_reg_reg_n_0_[5] ),
        .O(errsoths_i_9__0_n_0));
  FDRE errsoths_reg
       (.C(rx_div4_clk),
        .CE(rxsynchs_i_1_n_0),
        .D(errsoths3_out),
        .Q(dl1_errsoths),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABABABAAABABABAB)) 
    errsotsynchs_i_1__0
       (.I0(errsotsynchs_i_2__0_n_0),
        .I1(rxsynchs_i_7__0_n_0),
        .I2(errsoths_i_4__0_n_0),
        .I3(rxsynchs_i_6__0_n_0),
        .I4(errsotsynchs_i_3__0_n_0),
        .I5(errsotsynchs_i_4__0_n_0),
        .O(errsotsynchs1_out));
  LUT6 #(
    .INIT(64'h0000000000F0E0F0)) 
    errsotsynchs_i_2__0
       (.I0(align_done_i_18__0_n_0),
        .I1(align_done_i_20__0_n_0),
        .I2(rxsynchs_i_3__0_n_0),
        .I3(\start_bit[0]_i_4_n_0 ),
        .I4(align_done_i_19__0_n_0),
        .I5(rxsynchs_i_8__0_n_0),
        .O(errsotsynchs_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h51510051)) 
    errsotsynchs_i_3__0
       (.I0(align_done_i_6__0_n_0),
        .I1(align_done_i_14__0_n_0),
        .I2(align_done_i_13__0_n_0),
        .I3(\h_reg_reg_n_0_[9] ),
        .I4(align_done_i_12__0_n_0),
        .O(errsotsynchs_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hBFB0BBBBFFFFFFFF)) 
    errsotsynchs_i_4__0
       (.I0(align_done_i_6__0_n_0),
        .I1(errsotsynchs_i_5__0_n_0),
        .I2(errsotsynchs_i_6__0_n_0),
        .I3(errsotsynchs_i_7__0_n_0),
        .I4(align_done_i_10__0_n_0),
        .I5(align_done_i_3__0_n_0),
        .O(errsotsynchs_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    errsotsynchs_i_5__0
       (.I0(\h_reg_reg_n_0_[11] ),
        .I1(align_done_i_17__0_n_0),
        .I2(align_done_i_16__0_n_0),
        .I3(align_done_i_15__0_n_0),
        .O(errsotsynchs_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h02000202)) 
    errsotsynchs_i_6__0
       (.I0(align_done_i_7_n_0),
        .I1(align_done_i_8__0_n_0),
        .I2(\h_reg_reg_n_0_[9] ),
        .I3(errsotsynchs_i_8__0_n_0),
        .I4(\h_reg_reg_n_0_[14] ),
        .O(errsotsynchs_i_6__0_n_0));
  LUT5 #(
    .INIT(32'h08000000)) 
    errsotsynchs_i_7__0
       (.I0(\h_reg_reg_n_0_[10] ),
        .I1(\h_reg_reg_n_0_[11] ),
        .I2(\h_reg_reg_n_0_[13] ),
        .I3(\h_reg_reg_n_0_[14] ),
        .I4(\h_reg_reg_n_0_[12] ),
        .O(errsotsynchs_i_7__0_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    errsotsynchs_i_8__0
       (.I0(\h_reg_reg_n_0_[13] ),
        .I1(\h_reg_reg_n_0_[12] ),
        .I2(\h_reg_reg_n_0_[11] ),
        .O(errsotsynchs_i_8__0_n_0));
  FDRE errsotsynchs_reg
       (.C(rx_div4_clk),
        .CE(rxsynchs_i_1_n_0),
        .D(errsotsynchs1_out),
        .Q(dl1_errsotsynchs),
        .R(1'b0));
  FDRE \h_reg_reg[10] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\rx_hs_dp_r_reg_n_0_[2] ),
        .Q(\h_reg_reg_n_0_[10] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[11] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\rx_hs_dp_r_reg_n_0_[3] ),
        .Q(\h_reg_reg_n_0_[11] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[12] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\rx_hs_dp_r_reg_n_0_[4] ),
        .Q(\h_reg_reg_n_0_[12] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[13] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\rx_hs_dp_r_reg_n_0_[5] ),
        .Q(\h_reg_reg_n_0_[13] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[14] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\rx_hs_dp_r_reg_n_0_[6] ),
        .Q(\h_reg_reg_n_0_[14] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[15] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\rx_hs_dp_r_reg_n_0_[7] ),
        .Q(\h_reg_reg_n_0_[15] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[1] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\h_reg_reg_n_0_[9] ),
        .Q(\h_reg_reg_n_0_[1] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[2] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\h_reg_reg_n_0_[10] ),
        .Q(\h_reg_reg_n_0_[2] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[3] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\h_reg_reg_n_0_[11] ),
        .Q(\h_reg_reg_n_0_[3] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[4] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\h_reg_reg_n_0_[12] ),
        .Q(\h_reg_reg_n_0_[4] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[5] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\h_reg_reg_n_0_[13] ),
        .Q(\h_reg_reg_n_0_[5] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[6] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\h_reg_reg_n_0_[14] ),
        .Q(\h_reg_reg_n_0_[6] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[7] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\h_reg_reg_n_0_[15] ),
        .Q(\h_reg_reg_n_0_[7] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[8] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\rx_hs_dp_r_reg_n_0_[0] ),
        .Q(\h_reg_reg_n_0_[8] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \h_reg_reg[9] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\rx_hs_dp_r_reg_n_0_[1] ),
        .Q(\h_reg_reg_n_0_[9] ),
        .R(\hs_data[7]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[0]_i_1__0 
       (.I0(\hs_data[4]_i_3__0_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[0]_i_2__0_n_0 ),
        .O(hs_data[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[0]_i_2__0 
       (.I0(\h_reg_reg_n_0_[4] ),
        .I1(\h_reg_reg_n_0_[3] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[2] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[1] ),
        .O(\hs_data[0]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[1]_i_1__0 
       (.I0(\hs_data[5]_i_3__0_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[1]_i_2__0_n_0 ),
        .O(hs_data[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[1]_i_2__0 
       (.I0(\h_reg_reg_n_0_[5] ),
        .I1(\h_reg_reg_n_0_[4] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[3] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[2] ),
        .O(\hs_data[1]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[2]_i_1__0 
       (.I0(\hs_data[6]_i_3__0_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[2]_i_2__0_n_0 ),
        .O(hs_data[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[2]_i_2__0 
       (.I0(\h_reg_reg_n_0_[6] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[4] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[3] ),
        .O(\hs_data[2]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[3]_i_1__0 
       (.I0(\hs_data[7]_i_4__0_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[3]_i_2__0_n_0 ),
        .O(hs_data[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[3]_i_2__0 
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[6] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[5] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[4] ),
        .O(\hs_data[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[4]_i_1__0 
       (.I0(\hs_data[4]_i_2__0_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[4]_i_3__0_n_0 ),
        .O(hs_data[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[4]_i_2__0 
       (.I0(\h_reg_reg_n_0_[12] ),
        .I1(\h_reg_reg_n_0_[11] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[10] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[9] ),
        .O(\hs_data[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[4]_i_3__0 
       (.I0(\h_reg_reg_n_0_[8] ),
        .I1(\h_reg_reg_n_0_[7] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[6] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[5] ),
        .O(\hs_data[4]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[5]_i_1__0 
       (.I0(\hs_data[5]_i_2__0_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[5]_i_3__0_n_0 ),
        .O(hs_data[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[5]_i_2__0 
       (.I0(\h_reg_reg_n_0_[13] ),
        .I1(\h_reg_reg_n_0_[12] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[11] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[10] ),
        .O(\hs_data[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[5]_i_3__0 
       (.I0(\h_reg_reg_n_0_[9] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[7] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(\hs_data[5]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[6]_i_1__0 
       (.I0(\hs_data[6]_i_2__0_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[6]_i_3__0_n_0 ),
        .O(hs_data[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[6]_i_2__0 
       (.I0(\h_reg_reg_n_0_[14] ),
        .I1(\h_reg_reg_n_0_[13] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[12] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[11] ),
        .O(\hs_data[6]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[6]_i_3__0 
       (.I0(\h_reg_reg_n_0_[10] ),
        .I1(\h_reg_reg_n_0_[9] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[8] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[7] ),
        .O(\hs_data[6]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hs_data[7]_i_1__0 
       (.I0(en_hs_lpn_sync_r),
        .O(\hs_data[7]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[7]_i_2__0 
       (.I0(\hs_data[7]_i_3__0_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[7]_i_4__0_n_0 ),
        .O(hs_data[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[7]_i_3__0 
       (.I0(\h_reg_reg_n_0_[15] ),
        .I1(\h_reg_reg_n_0_[14] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[13] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[12] ),
        .O(\hs_data[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[7]_i_4__0 
       (.I0(\h_reg_reg_n_0_[11] ),
        .I1(\h_reg_reg_n_0_[10] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[9] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[8] ),
        .O(\hs_data[7]_i_4__0_n_0 ));
  FDRE \hs_data_reg[0] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[0]),
        .Q(dl1_rxdatahs[0]),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \hs_data_reg[1] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[1]),
        .Q(dl1_rxdatahs[1]),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \hs_data_reg[2] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[2]),
        .Q(dl1_rxdatahs[2]),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \hs_data_reg[3] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[3]),
        .Q(dl1_rxdatahs[3]),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \hs_data_reg[4] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[4]),
        .Q(dl1_rxdatahs[4]),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \hs_data_reg[5] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[5]),
        .Q(dl1_rxdatahs[5]),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \hs_data_reg[6] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[6]),
        .Q(dl1_rxdatahs[6]),
        .R(\hs_data[7]_i_1__0_n_0 ));
  FDRE \hs_data_reg[7] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[7]),
        .Q(dl1_rxdatahs[7]),
        .R(\hs_data[7]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    hs_dvalid_i_1__0
       (.I0(E),
        .I1(en_hs_lpn_sync_r),
        .I2(dl1_rxvalidhs),
        .O(hs_dvalid_i_1__0_n_0));
  FDRE hs_dvalid_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(hs_dvalid_i_1__0_n_0),
        .Q(dl1_rxvalidhs),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[0] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl1_hs_dp[0]),
        .Q(\rx_hs_dp_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[1] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl1_hs_dp[1]),
        .Q(\rx_hs_dp_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[2] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl1_hs_dp[2]),
        .Q(\rx_hs_dp_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[3] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl1_hs_dp[3]),
        .Q(\rx_hs_dp_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[4] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl1_hs_dp[4]),
        .Q(\rx_hs_dp_r_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[5] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl1_hs_dp[5]),
        .Q(\rx_hs_dp_r_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[6] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl1_hs_dp[6]),
        .Q(\rx_hs_dp_r_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[7] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl1_hs_dp[7]),
        .Q(\rx_hs_dp_r_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    rxsynchs_i_1
       (.I0(align_done_i_2__0_n_0),
        .I1(align_done_i_3__0_n_0),
        .I2(align_done_i_4__0_n_0),
        .I3(align_done_i_5__0_n_0),
        .I4(E),
        .I5(en_hs_lpn_sync_r),
        .O(rxsynchs_i_1_n_0));
  LUT5 #(
    .INIT(32'h8888888A)) 
    rxsynchs_i_10__0
       (.I0(align_done_i_18__0_n_0),
        .I1(rxsynchs_i_14__0_n_0),
        .I2(\start_bit[2]_i_7__0_n_0 ),
        .I3(\start_bit[2]_i_8__0_n_0 ),
        .I4(\start_bit[2]_i_9__0_n_0 ),
        .O(rxsynchs_i_10__0_n_0));
  LUT6 #(
    .INIT(64'hBFBBBFBFAAAAAAAA)) 
    rxsynchs_i_11__0
       (.I0(rxsynchs_i_14__0_n_0),
        .I1(rxsynchs_i_19__0_n_0),
        .I2(rxsynchs_i_20__0_n_0),
        .I3(rxsynchs_i_21__0_n_0),
        .I4(rxsynchs_i_22__0_n_0),
        .I5(rxsynchs_i_13__0_n_0),
        .O(rxsynchs_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFEEEEEE)) 
    rxsynchs_i_12__0
       (.I0(\start_bit[2]_i_7__0_n_0 ),
        .I1(\start_bit[2]_i_8__0_n_0 ),
        .I2(\h_reg_reg_n_0_[8] ),
        .I3(\h_reg_reg_n_0_[9] ),
        .I4(rxsynchs_i_23__0_n_0),
        .I5(\h_reg_reg_n_0_[5] ),
        .O(rxsynchs_i_12__0_n_0));
  LUT6 #(
    .INIT(64'hDF4DFFDFFFDFFFFF)) 
    rxsynchs_i_13__0
       (.I0(\h_reg_reg_n_0_[12] ),
        .I1(\h_reg_reg_n_0_[11] ),
        .I2(\h_reg_reg_n_0_[10] ),
        .I3(\h_reg_reg_n_0_[7] ),
        .I4(\h_reg_reg_n_0_[8] ),
        .I5(\h_reg_reg_n_0_[9] ),
        .O(rxsynchs_i_13__0_n_0));
  LUT6 #(
    .INIT(64'h20000000B2202000)) 
    rxsynchs_i_14__0
       (.I0(\h_reg_reg_n_0_[11] ),
        .I1(\h_reg_reg_n_0_[10] ),
        .I2(\h_reg_reg_n_0_[9] ),
        .I3(\h_reg_reg_n_0_[7] ),
        .I4(\h_reg_reg_n_0_[8] ),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(rxsynchs_i_14__0_n_0));
  LUT5 #(
    .INIT(32'hBBFBB3B3)) 
    rxsynchs_i_15__0
       (.I0(\h_reg_reg_n_0_[9] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[12] ),
        .I3(\h_reg_reg_n_0_[11] ),
        .I4(\h_reg_reg_n_0_[10] ),
        .O(rxsynchs_i_15__0_n_0));
  LUT5 #(
    .INIT(32'hF3FFFBFB)) 
    rxsynchs_i_16__0
       (.I0(\h_reg_reg_n_0_[8] ),
        .I1(\h_reg_reg_n_0_[9] ),
        .I2(\h_reg_reg_n_0_[10] ),
        .I3(\h_reg_reg_n_0_[12] ),
        .I4(\h_reg_reg_n_0_[11] ),
        .O(rxsynchs_i_16__0_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAFE)) 
    rxsynchs_i_17__0
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[6] ),
        .I2(\h_reg_reg_n_0_[5] ),
        .I3(\h_reg_reg_n_0_[9] ),
        .I4(\h_reg_reg_n_0_[8] ),
        .O(rxsynchs_i_17__0_n_0));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    rxsynchs_i_18__0
       (.I0(\h_reg_reg_n_0_[12] ),
        .I1(\h_reg_reg_n_0_[9] ),
        .I2(\h_reg_reg_n_0_[11] ),
        .I3(\h_reg_reg_n_0_[10] ),
        .I4(\h_reg_reg_n_0_[8] ),
        .O(rxsynchs_i_18__0_n_0));
  LUT5 #(
    .INIT(32'hDCFFC0FF)) 
    rxsynchs_i_19__0
       (.I0(\h_reg_reg_n_0_[10] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[11] ),
        .I3(\h_reg_reg_n_0_[7] ),
        .I4(\h_reg_reg_n_0_[9] ),
        .O(rxsynchs_i_19__0_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    rxsynchs_i_20__0
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[11] ),
        .I2(\h_reg_reg_n_0_[8] ),
        .I3(\h_reg_reg_n_0_[9] ),
        .I4(\h_reg_reg_n_0_[10] ),
        .O(rxsynchs_i_20__0_n_0));
  LUT5 #(
    .INIT(32'hABABABAA)) 
    rxsynchs_i_21__0
       (.I0(\h_reg_reg_n_0_[6] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(\h_reg_reg_n_0_[5] ),
        .I4(\h_reg_reg_n_0_[4] ),
        .O(rxsynchs_i_21__0_n_0));
  LUT5 #(
    .INIT(32'hCFEFFFEF)) 
    rxsynchs_i_22__0
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[9] ),
        .I2(\h_reg_reg_n_0_[8] ),
        .I3(\h_reg_reg_n_0_[10] ),
        .I4(\h_reg_reg_n_0_[11] ),
        .O(rxsynchs_i_22__0_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rxsynchs_i_23__0
       (.I0(\h_reg_reg_n_0_[10] ),
        .I1(\h_reg_reg_n_0_[7] ),
        .O(rxsynchs_i_23__0_n_0));
  LUT6 #(
    .INIT(64'hAA88A8888888A888)) 
    rxsynchs_i_2__0
       (.I0(rxsynchs_i_3__0_n_0),
        .I1(rxsynchs_i_4__0_n_0),
        .I2(rxsynchs_i_5_n_0),
        .I3(align_done_i_5__0_n_0),
        .I4(rxsynchs_i_6__0_n_0),
        .I5(rxsynchs_i_7__0_n_0),
        .O(rxsynchs5_out));
  LUT2 #(
    .INIT(4'h2)) 
    rxsynchs_i_3__0
       (.I0(en_hs_lpn_sync_r),
        .I1(E),
        .O(rxsynchs_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rxsynchs_i_4__0
       (.I0(rxsynchs_i_8__0_n_0),
        .I1(align_done_i_20__0_n_0),
        .O(rxsynchs_i_4__0_n_0));
  LUT5 #(
    .INIT(32'hFFFF02FF)) 
    rxsynchs_i_5
       (.I0(align_done_i_14__0_n_0),
        .I1(align_done_i_13__0_n_0),
        .I2(align_done_i_10__0_n_0),
        .I3(align_done_i_11__0_n_0),
        .I4(align_done_i_6__0_n_0),
        .O(rxsynchs_i_5_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    rxsynchs_i_6__0
       (.I0(rxsynchs_i_9__0_n_0),
        .I1(rxsynchs_i_10__0_n_0),
        .I2(rxsynchs_i_11__0_n_0),
        .O(rxsynchs_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hFF1F)) 
    rxsynchs_i_7__0
       (.I0(rxsynchs_i_12__0_n_0),
        .I1(rxsynchs_i_13__0_n_0),
        .I2(align_done_i_18__0_n_0),
        .I3(rxsynchs_i_14__0_n_0),
        .O(rxsynchs_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h4000D44000004000)) 
    rxsynchs_i_8__0
       (.I0(\h_reg_reg_n_0_[3] ),
        .I1(\h_reg_reg_n_0_[4] ),
        .I2(\h_reg_reg_n_0_[5] ),
        .I3(\h_reg_reg_n_0_[8] ),
        .I4(\h_reg_reg_n_0_[7] ),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(rxsynchs_i_8__0_n_0));
  LUT6 #(
    .INIT(64'hF7550000FFFFFFFF)) 
    rxsynchs_i_9__0
       (.I0(rxsynchs_i_15__0_n_0),
        .I1(rxsynchs_i_16__0_n_0),
        .I2(rxsynchs_i_17__0_n_0),
        .I3(rxsynchs_i_18__0_n_0),
        .I4(align_done_i_11__0_n_0),
        .I5(rxsynchs_i_13__0_n_0),
        .O(rxsynchs_i_9__0_n_0));
  FDRE rxsynchs_reg
       (.C(rx_div4_clk),
        .CE(rxsynchs_i_1_n_0),
        .D(rxsynchs5_out),
        .Q(dl1_rxsynchs),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F00000DD000000)) 
    \start_bit[0]_i_1__0 
       (.I0(\start_bit[0]_i_2__0_n_0 ),
        .I1(\start_bit[0]_i_3__0_n_0 ),
        .I2(\start_bit_reg_n_0_[0] ),
        .I3(\start_bit[0]_i_4_n_0 ),
        .I4(en_hs_lpn_sync_r),
        .I5(E),
        .O(\start_bit[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFBFBFBFB)) 
    \start_bit[0]_i_2__0 
       (.I0(rxsynchs_i_11__0_n_0),
        .I1(rxsynchs_i_10__0_n_0),
        .I2(rxsynchs_i_9__0_n_0),
        .I3(align_done_i_4__0_n_0),
        .I4(align_done_i_2__0_n_0),
        .I5(align_done_i_3__0_n_0),
        .O(\start_bit[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    \start_bit[0]_i_3__0 
       (.I0(rxsynchs_i_11__0_n_0),
        .I1(rxsynchs_i_10__0_n_0),
        .I2(align_done_i_18__0_n_0),
        .I3(align_done_i_19__0_n_0),
        .I4(align_done_i_20__0_n_0),
        .O(\start_bit[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h4454555544444444)) 
    \start_bit[0]_i_4 
       (.I0(rxsynchs_i_8__0_n_0),
        .I1(align_done_i_20__0_n_0),
        .I2(\start_bit[0]_i_5_n_0 ),
        .I3(\start_bit[0]_i_6_n_0 ),
        .I4(\start_bit[0]_i_7_n_0 ),
        .I5(\start_bit[0]_i_8_n_0 ),
        .O(\start_bit[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h5D5D5D55)) 
    \start_bit[0]_i_5 
       (.I0(\h_reg_reg_n_0_[4] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(\h_reg_reg_n_0_[6] ),
        .I4(\h_reg_reg_n_0_[5] ),
        .O(\start_bit[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00DF00DF00DF00D0)) 
    \start_bit[0]_i_6 
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[8] ),
        .I2(\h_reg_reg_n_0_[5] ),
        .I3(\h_reg_reg_n_0_[4] ),
        .I4(\h_reg_reg_n_0_[2] ),
        .I5(\h_reg_reg_n_0_[1] ),
        .O(\start_bit[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \start_bit[0]_i_7 
       (.I0(\h_reg_reg_n_0_[6] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .O(\start_bit[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h20000000FFFFFFFF)) 
    \start_bit[0]_i_8 
       (.I0(\h_reg_reg_n_0_[6] ),
        .I1(\h_reg_reg_n_0_[7] ),
        .I2(\h_reg_reg_n_0_[8] ),
        .I3(\h_reg_reg_n_0_[5] ),
        .I4(\h_reg_reg_n_0_[4] ),
        .I5(\h_reg_reg_n_0_[3] ),
        .O(\start_bit[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0444444004444)) 
    \start_bit[1]_i_1__0 
       (.I0(\start_bit[1]_i_2__0_n_0 ),
        .I1(\start_bit[1]_i_3__0_n_0 ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(align_done_i_5__0_n_0),
        .I4(en_hs_lpn_sync_r),
        .I5(E),
        .O(\start_bit[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF40FF)) 
    \start_bit[1]_i_2__0 
       (.I0(rxsynchs_i_11__0_n_0),
        .I1(rxsynchs_i_10__0_n_0),
        .I2(rxsynchs_i_9__0_n_0),
        .I3(en_hs_lpn_sync_r),
        .I4(E),
        .I5(errsoths_i_11__0_n_0),
        .O(\start_bit[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hEFCFFFCF)) 
    \start_bit[1]_i_3__0 
       (.I0(align_done_i_4__0_n_0),
        .I1(rxsynchs_i_11__0_n_0),
        .I2(rxsynchs_i_10__0_n_0),
        .I3(align_done_i_3__0_n_0),
        .I4(align_done_i_2__0_n_0),
        .O(\start_bit[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF100010)) 
    \start_bit[2]_i_1__0 
       (.I0(\start_bit[2]_i_2__0_n_0 ),
        .I1(\start_bit[2]_i_3__0_n_0 ),
        .I2(\start_bit[2]_i_4__0_n_0 ),
        .I3(\start_bit[2]_i_5__0_n_0 ),
        .I4(\start_bit_reg_n_0_[2] ),
        .I5(\start_bit[2]_i_6__0_n_0 ),
        .O(\start_bit[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF77777775)) 
    \start_bit[2]_i_2__0 
       (.I0(align_done_i_18__0_n_0),
        .I1(rxsynchs_i_14__0_n_0),
        .I2(\start_bit[2]_i_7__0_n_0 ),
        .I3(\start_bit[2]_i_8__0_n_0 ),
        .I4(\start_bit[2]_i_9__0_n_0 ),
        .I5(rxsynchs_i_11__0_n_0),
        .O(\start_bit[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFF2FFFF)) 
    \start_bit[2]_i_3__0 
       (.I0(align_done_i_18__0_n_0),
        .I1(align_done_i_19__0_n_0),
        .I2(align_done_i_20__0_n_0),
        .I3(E),
        .I4(en_hs_lpn_sync_r),
        .O(\start_bit[2]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \start_bit[2]_i_4__0 
       (.I0(rxsynchs_i_9__0_n_0),
        .I1(align_done_i_4__0_n_0),
        .I2(align_done_i_3__0_n_0),
        .I3(align_done_i_2__0_n_0),
        .O(\start_bit[2]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \start_bit[2]_i_5__0 
       (.I0(E),
        .I1(en_hs_lpn_sync_r),
        .O(\start_bit[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h4444444440444444)) 
    \start_bit[2]_i_6__0 
       (.I0(E),
        .I1(en_hs_lpn_sync_r),
        .I2(rxsynchs_i_11__0_n_0),
        .I3(rxsynchs_i_10__0_n_0),
        .I4(\start_bit[0]_i_4_n_0 ),
        .I5(errsoths_i_11__0_n_0),
        .O(\start_bit[2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E0E0EFE)) 
    \start_bit[2]_i_7__0 
       (.I0(\h_reg_reg_n_0_[3] ),
        .I1(\h_reg_reg_n_0_[4] ),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(\h_reg_reg_n_0_[8] ),
        .I4(\h_reg_reg_n_0_[9] ),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(\start_bit[2]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h080C0CCC)) 
    \start_bit[2]_i_8__0 
       (.I0(\h_reg_reg_n_0_[9] ),
        .I1(\h_reg_reg_n_0_[6] ),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(\h_reg_reg_n_0_[10] ),
        .I4(\h_reg_reg_n_0_[8] ),
        .O(\start_bit[2]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    \start_bit[2]_i_9__0 
       (.I0(\h_reg_reg_n_0_[5] ),
        .I1(\h_reg_reg_n_0_[10] ),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(\h_reg_reg_n_0_[9] ),
        .I4(\h_reg_reg_n_0_[8] ),
        .O(\start_bit[2]_i_9__0_n_0 ));
  FDRE \start_bit_reg[0] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\start_bit[0]_i_1__0_n_0 ),
        .Q(\start_bit_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \start_bit_reg[1] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\start_bit[1]_i_1__0_n_0 ),
        .Q(\start_bit_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \start_bit_reg[2] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\start_bit[2]_i_1__0_n_0 ),
        .Q(\start_bit_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sot_det_align" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sot_det_align_13
   (dl0_rxsynchs,
    dl0_errsoths,
    dl0_errsotsynchs,
    E,
    hs_dvalid_reg_0,
    align_done_reg_0,
    s_level_out_d3_reg,
    dl0_rxdatahs,
    dl_en_hs_lpn_i,
    rx_div4_clk,
    \two_lane_hs_rx_timeout.maxfrm_wait_done_reg ,
    \two_lane_hs_rx_timeout.maxfrm_wait_done_reg_0 ,
    prmry_in,
    rx_dl0_hs_dp);
  output dl0_rxsynchs;
  output dl0_errsoths;
  output dl0_errsotsynchs;
  output [0:0]E;
  output hs_dvalid_reg_0;
  output [0:0]align_done_reg_0;
  output s_level_out_d3_reg;
  output [7:0]dl0_rxdatahs;
  input dl_en_hs_lpn_i;
  input rx_div4_clk;
  input \two_lane_hs_rx_timeout.maxfrm_wait_done_reg ;
  input \two_lane_hs_rx_timeout.maxfrm_wait_done_reg_0 ;
  input prmry_in;
  input [7:0]rx_dl0_hs_dp;

  wire [0:0]E;
  wire align_done_i_10_n_0;
  wire align_done_i_11_n_0;
  wire align_done_i_12_n_0;
  wire align_done_i_13_n_0;
  wire align_done_i_14_n_0;
  wire align_done_i_15_n_0;
  wire align_done_i_16_n_0;
  wire align_done_i_17_n_0;
  wire align_done_i_18_n_0;
  wire align_done_i_19_n_0;
  wire align_done_i_1__0_n_0;
  wire align_done_i_20_n_0;
  wire align_done_i_21__0_n_0;
  wire align_done_i_22_n_0;
  wire align_done_i_23_n_0;
  wire align_done_i_24_n_0;
  wire align_done_i_25_n_0;
  wire align_done_i_26_n_0;
  wire align_done_i_2_n_0;
  wire align_done_i_3_n_0;
  wire align_done_i_4_n_0;
  wire align_done_i_5_n_0;
  wire align_done_i_6_n_0;
  wire align_done_i_7__0_n_0;
  wire align_done_i_8_n_0;
  wire align_done_i_9_n_0;
  wire [0:0]align_done_reg_0;
  wire [7:0]data7;
  wire dl0_errsoths;
  wire dl0_errsotsynchs;
  wire [7:0]dl0_rxdatahs;
  wire dl0_rxsynchs;
  wire dl_en_hs_lpn_i;
  wire en_hs_lpn_sync;
  wire en_hs_lpn_sync_r;
  wire errsoths3_out;
  wire errsoths_i_10_n_0;
  wire errsoths_i_11_n_0;
  wire errsoths_i_12_n_0;
  wire errsoths_i_13_n_0;
  wire errsoths_i_14_n_0;
  wire errsoths_i_2_n_0;
  wire errsoths_i_3_n_0;
  wire errsoths_i_4_n_0;
  wire errsoths_i_5__0_n_0;
  wire errsoths_i_6_n_0;
  wire errsoths_i_7_n_0;
  wire errsoths_i_8_n_0;
  wire errsoths_i_9_n_0;
  wire errsotsynchs1_out;
  wire errsotsynchs_i_2_n_0;
  wire errsotsynchs_i_3_n_0;
  wire errsotsynchs_i_4_n_0;
  wire errsotsynchs_i_5_n_0;
  wire errsotsynchs_i_6_n_0;
  wire errsotsynchs_i_7_n_0;
  wire errsotsynchs_i_8_n_0;
  wire errsotsynchs_i_9_n_0;
  wire \h_reg_reg_n_0_[1] ;
  wire \h_reg_reg_n_0_[2] ;
  wire \h_reg_reg_n_0_[3] ;
  wire \h_reg_reg_n_0_[4] ;
  wire \h_reg_reg_n_0_[5] ;
  wire \h_reg_reg_n_0_[6] ;
  wire \h_reg_reg_n_0_[7] ;
  wire [7:0]hs_data;
  wire \hs_data[0]_i_2_n_0 ;
  wire \hs_data[1]_i_2_n_0 ;
  wire \hs_data[2]_i_2_n_0 ;
  wire \hs_data[3]_i_2_n_0 ;
  wire \hs_data[4]_i_2_n_0 ;
  wire \hs_data[4]_i_3_n_0 ;
  wire \hs_data[5]_i_2_n_0 ;
  wire \hs_data[5]_i_3_n_0 ;
  wire \hs_data[6]_i_2_n_0 ;
  wire \hs_data[6]_i_3_n_0 ;
  wire \hs_data[7]_i_1_n_0 ;
  wire \hs_data[7]_i_3_n_0 ;
  wire \hs_data[7]_i_4_n_0 ;
  wire hs_dvalid_i_1_n_0;
  wire hs_dvalid_reg_0;
  wire prmry_in;
  wire rx_div4_clk;
  wire [7:0]rx_dl0_hs_dp;
  wire [7:0]rx_hs_dp_r;
  wire rxsynchs5_out;
  wire rxsynchs_i_10_n_0;
  wire rxsynchs_i_11_n_0;
  wire rxsynchs_i_12_n_0;
  wire rxsynchs_i_13_n_0;
  wire rxsynchs_i_14_n_0;
  wire rxsynchs_i_15_n_0;
  wire rxsynchs_i_16_n_0;
  wire rxsynchs_i_17_n_0;
  wire rxsynchs_i_18_n_0;
  wire rxsynchs_i_19_n_0;
  wire rxsynchs_i_1__0_n_0;
  wire rxsynchs_i_20_n_0;
  wire rxsynchs_i_21_n_0;
  wire rxsynchs_i_22_n_0;
  wire rxsynchs_i_23_n_0;
  wire rxsynchs_i_24_n_0;
  wire rxsynchs_i_25_n_0;
  wire rxsynchs_i_26_n_0;
  wire rxsynchs_i_3_n_0;
  wire rxsynchs_i_4_n_0;
  wire rxsynchs_i_5__0_n_0;
  wire rxsynchs_i_6_n_0;
  wire rxsynchs_i_7_n_0;
  wire rxsynchs_i_8_n_0;
  wire rxsynchs_i_9_n_0;
  wire s_level_out_d3_reg;
  wire \start_bit[0]_i_1_n_0 ;
  wire \start_bit[0]_i_2_n_0 ;
  wire \start_bit[0]_i_3_n_0 ;
  wire \start_bit[1]_i_1_n_0 ;
  wire \start_bit[1]_i_2_n_0 ;
  wire \start_bit[1]_i_3_n_0 ;
  wire \start_bit[1]_i_4_n_0 ;
  wire \start_bit[1]_i_5_n_0 ;
  wire \start_bit[1]_i_6_n_0 ;
  wire \start_bit[2]_i_1_n_0 ;
  wire \start_bit[2]_i_2_n_0 ;
  wire \start_bit[2]_i_3_n_0 ;
  wire \start_bit[2]_i_4_n_0 ;
  wire \start_bit[2]_i_5_n_0 ;
  wire \start_bit[2]_i_6_n_0 ;
  wire \start_bit[2]_i_7_n_0 ;
  wire \start_bit[2]_i_8_n_0 ;
  wire \start_bit[2]_i_9_n_0 ;
  wire \start_bit_reg_n_0_[0] ;
  wire \start_bit_reg_n_0_[1] ;
  wire \start_bit_reg_n_0_[2] ;
  wire \two_lane_hs_rx_timeout.maxfrm_wait_done_reg ;
  wire \two_lane_hs_rx_timeout.maxfrm_wait_done_reg_0 ;

  LUT6 #(
    .INIT(64'h088E000800080000)) 
    align_done_i_10
       (.I0(\h_reg_reg_n_0_[6] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\h_reg_reg_n_0_[4] ),
        .I3(data7[0]),
        .I4(\h_reg_reg_n_0_[7] ),
        .I5(data7[1]),
        .O(align_done_i_10_n_0));
  LUT5 #(
    .INIT(32'h08000000)) 
    align_done_i_11
       (.I0(data7[1]),
        .I1(\h_reg_reg_n_0_[7] ),
        .I2(data7[0]),
        .I3(\h_reg_reg_n_0_[5] ),
        .I4(\h_reg_reg_n_0_[6] ),
        .O(align_done_i_11_n_0));
  LUT5 #(
    .INIT(32'hAAAAAAFE)) 
    align_done_i_12
       (.I0(\h_reg_reg_n_0_[4] ),
        .I1(\h_reg_reg_n_0_[3] ),
        .I2(\h_reg_reg_n_0_[2] ),
        .I3(\h_reg_reg_n_0_[6] ),
        .I4(\h_reg_reg_n_0_[5] ),
        .O(align_done_i_12_n_0));
  LUT5 #(
    .INIT(32'h08000B00)) 
    align_done_i_13
       (.I0(data7[1]),
        .I1(data7[0]),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(\h_reg_reg_n_0_[6] ),
        .I4(\h_reg_reg_n_0_[5] ),
        .O(align_done_i_13_n_0));
  LUT5 #(
    .INIT(32'hF7F3F333)) 
    align_done_i_14
       (.I0(data7[0]),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\h_reg_reg_n_0_[6] ),
        .I3(data7[1]),
        .I4(\h_reg_reg_n_0_[7] ),
        .O(align_done_i_14_n_0));
  LUT6 #(
    .INIT(64'h20000000B2202000)) 
    align_done_i_15
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\h_reg_reg_n_0_[6] ),
        .I3(data7[2]),
        .I4(data7[0]),
        .I5(data7[1]),
        .O(align_done_i_15_n_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    align_done_i_16
       (.I0(data7[3]),
        .I1(align_done_i_21__0_n_0),
        .I2(align_done_i_22_n_0),
        .I3(align_done_i_23_n_0),
        .O(align_done_i_16_n_0));
  LUT4 #(
    .INIT(16'hBBAB)) 
    align_done_i_17
       (.I0(rxsynchs_i_11_n_0),
        .I1(align_done_i_18_n_0),
        .I2(rxsynchs_i_9_n_0),
        .I3(rxsynchs_i_10_n_0),
        .O(align_done_i_17_n_0));
  LUT6 #(
    .INIT(64'h20000000B2202000)) 
    align_done_i_18
       (.I0(data7[4]),
        .I1(data7[5]),
        .I2(data7[2]),
        .I3(data7[3]),
        .I4(data7[6]),
        .I5(data7[1]),
        .O(align_done_i_18_n_0));
  LUT5 #(
    .INIT(32'h0000000D)) 
    align_done_i_19
       (.I0(data7[6]),
        .I1(align_done_i_24_n_0),
        .I2(data7[1]),
        .I3(align_done_i_25_n_0),
        .I4(align_done_i_26_n_0),
        .O(align_done_i_19_n_0));
  LUT5 #(
    .INIT(32'hF0F0F0D0)) 
    align_done_i_1__0
       (.I0(align_done_i_2_n_0),
        .I1(align_done_i_3_n_0),
        .I2(en_hs_lpn_sync_r),
        .I3(E),
        .I4(align_done_i_4_n_0),
        .O(align_done_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h5555555500404444)) 
    align_done_i_2
       (.I0(align_done_i_5_n_0),
        .I1(align_done_i_6_n_0),
        .I2(align_done_i_7__0_n_0),
        .I3(align_done_i_8_n_0),
        .I4(align_done_i_9_n_0),
        .I5(align_done_i_10_n_0),
        .O(align_done_i_2_n_0));
  LUT6 #(
    .INIT(64'hDF4DFFDFFFDFFFFF)) 
    align_done_i_20
       (.I0(data7[3]),
        .I1(data7[2]),
        .I2(data7[5]),
        .I3(data7[6]),
        .I4(data7[7]),
        .I5(data7[4]),
        .O(align_done_i_20_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    align_done_i_21__0
       (.I0(data7[5]),
        .I1(data7[6]),
        .I2(data7[7]),
        .I3(data7[4]),
        .O(align_done_i_21__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF2202EA2A)) 
    align_done_i_22
       (.I0(data7[3]),
        .I1(data7[4]),
        .I2(data7[7]),
        .I3(data7[6]),
        .I4(data7[5]),
        .I5(data7[2]),
        .O(align_done_i_22_n_0));
  LUT6 #(
    .INIT(64'hFFABFFABFFABAAAB)) 
    align_done_i_23
       (.I0(data7[3]),
        .I1(data7[0]),
        .I2(data7[1]),
        .I3(data7[4]),
        .I4(data7[5]),
        .I5(data7[6]),
        .O(align_done_i_23_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    align_done_i_24
       (.I0(data7[3]),
        .I1(data7[4]),
        .I2(data7[5]),
        .O(align_done_i_24_n_0));
  LUT5 #(
    .INIT(32'h44044C4C)) 
    align_done_i_25
       (.I0(data7[3]),
        .I1(data7[2]),
        .I2(data7[4]),
        .I3(data7[5]),
        .I4(data7[6]),
        .O(align_done_i_25_n_0));
  LUT6 #(
    .INIT(64'h000000000E0E0EFE)) 
    align_done_i_26
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(data7[0]),
        .I2(data7[3]),
        .I3(data7[4]),
        .I4(data7[5]),
        .I5(data7[2]),
        .O(align_done_i_26_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAABBBABBBB)) 
    align_done_i_3
       (.I0(align_done_i_10_n_0),
        .I1(align_done_i_11_n_0),
        .I2(align_done_i_12_n_0),
        .I3(align_done_i_13_n_0),
        .I4(align_done_i_14_n_0),
        .I5(align_done_i_15_n_0),
        .O(align_done_i_3_n_0));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    align_done_i_4
       (.I0(align_done_i_16_n_0),
        .I1(align_done_i_17_n_0),
        .I2(align_done_i_18_n_0),
        .I3(align_done_i_19_n_0),
        .I4(align_done_i_20_n_0),
        .O(align_done_i_4_n_0));
  LUT6 #(
    .INIT(64'h4000D44000004000)) 
    align_done_i_5
       (.I0(\h_reg_reg_n_0_[3] ),
        .I1(\h_reg_reg_n_0_[4] ),
        .I2(\h_reg_reg_n_0_[5] ),
        .I3(data7[0]),
        .I4(\h_reg_reg_n_0_[7] ),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(align_done_i_5_n_0));
  LUT6 #(
    .INIT(64'h20000000FFFFFFFF)) 
    align_done_i_6
       (.I0(\h_reg_reg_n_0_[6] ),
        .I1(\h_reg_reg_n_0_[7] ),
        .I2(data7[0]),
        .I3(\h_reg_reg_n_0_[5] ),
        .I4(\h_reg_reg_n_0_[4] ),
        .I5(\h_reg_reg_n_0_[3] ),
        .O(align_done_i_6_n_0));
  LUT5 #(
    .INIT(32'h00E0FFFF)) 
    align_done_i_7__0
       (.I0(\h_reg_reg_n_0_[6] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(data7[0]),
        .I3(\h_reg_reg_n_0_[7] ),
        .I4(\h_reg_reg_n_0_[4] ),
        .O(align_done_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h00DF00DF00DF00D0)) 
    align_done_i_8
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(data7[0]),
        .I2(\h_reg_reg_n_0_[5] ),
        .I3(\h_reg_reg_n_0_[4] ),
        .I4(\h_reg_reg_n_0_[2] ),
        .I5(\h_reg_reg_n_0_[1] ),
        .O(align_done_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    align_done_i_9
       (.I0(\h_reg_reg_n_0_[6] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .O(align_done_i_9_n_0));
  FDRE align_done_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(align_done_i_1__0_n_0),
        .Q(E),
        .R(1'b0));
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_15 en_hs_lpn_sync_i
       (.dl_en_hs_lpn_i(dl_en_hs_lpn_i),
        .out(en_hs_lpn_sync),
        .rx_div4_clk(rx_div4_clk));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    en_hs_lpn_sync_r_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(en_hs_lpn_sync),
        .Q(en_hs_lpn_sync_r),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8888AA8A88888888)) 
    errsoths_i_1
       (.I0(rxsynchs_i_3_n_0),
        .I1(errsoths_i_2_n_0),
        .I2(rxsynchs_i_7_n_0),
        .I3(errsoths_i_3_n_0),
        .I4(errsoths_i_4_n_0),
        .I5(rxsynchs_i_6_n_0),
        .O(errsoths3_out));
  LUT6 #(
    .INIT(64'h0000800080006880)) 
    errsoths_i_10
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(data7[3]),
        .I2(data7[0]),
        .I3(data7[1]),
        .I4(data7[2]),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(errsoths_i_10_n_0));
  LUT6 #(
    .INIT(64'h00000000EFEFEEEF)) 
    errsoths_i_11
       (.I0(errsoths_i_13_n_0),
        .I1(rxsynchs_i_11_n_0),
        .I2(align_done_i_18_n_0),
        .I3(rxsynchs_i_9_n_0),
        .I4(rxsynchs_i_10_n_0),
        .I5(errsoths_i_14_n_0),
        .O(errsoths_i_11_n_0));
  LUT6 #(
    .INIT(64'h2000922000002000)) 
    errsoths_i_12
       (.I0(data7[1]),
        .I1(data7[0]),
        .I2(data7[2]),
        .I3(data7[3]),
        .I4(data7[4]),
        .I5(data7[5]),
        .O(errsoths_i_12_n_0));
  LUT6 #(
    .INIT(64'hDFFF6DDFFFFFDFFF)) 
    errsoths_i_13
       (.I0(data7[5]),
        .I1(data7[6]),
        .I2(data7[7]),
        .I3(data7[4]),
        .I4(data7[2]),
        .I5(data7[3]),
        .O(errsoths_i_13_n_0));
  LUT6 #(
    .INIT(64'h2000000092202000)) 
    errsoths_i_14
       (.I0(data7[4]),
        .I1(data7[5]),
        .I2(data7[6]),
        .I3(data7[3]),
        .I4(data7[2]),
        .I5(data7[1]),
        .O(errsoths_i_14_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF94559400)) 
    errsoths_i_2
       (.I0(\h_reg_reg_n_0_[4] ),
        .I1(\h_reg_reg_n_0_[6] ),
        .I2(\h_reg_reg_n_0_[5] ),
        .I3(errsoths_i_5__0_n_0),
        .I4(errsoths_i_6_n_0),
        .I5(errsoths_i_7_n_0),
        .O(errsoths_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFAB)) 
    errsoths_i_3
       (.I0(errsoths_i_8_n_0),
        .I1(rxsynchs_i_14_n_0),
        .I2(errsoths_i_9_n_0),
        .I3(errsoths_i_10_n_0),
        .O(errsoths_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000002)) 
    errsoths_i_4
       (.I0(errsoths_i_11_n_0),
        .I1(errsoths_i_12_n_0),
        .I2(rxsynchs_i_12_n_0),
        .I3(rxsynchs_i_13_n_0),
        .I4(rxsynchs_i_14_n_0),
        .O(errsoths_i_4_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    errsoths_i_5__0
       (.I0(data7[0]),
        .I1(\h_reg_reg_n_0_[7] ),
        .I2(data7[1]),
        .O(errsoths_i_5__0_n_0));
  LUT5 #(
    .INIT(32'h80C00080)) 
    errsoths_i_6
       (.I0(data7[1]),
        .I1(\h_reg_reg_n_0_[6] ),
        .I2(\h_reg_reg_n_0_[5] ),
        .I3(data7[0]),
        .I4(\h_reg_reg_n_0_[7] ),
        .O(errsoths_i_6_n_0));
  LUT6 #(
    .INIT(64'h4000944000004000)) 
    errsoths_i_7
       (.I0(\h_reg_reg_n_0_[3] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\h_reg_reg_n_0_[4] ),
        .I3(data7[0]),
        .I4(\h_reg_reg_n_0_[7] ),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(errsoths_i_7_n_0));
  LUT6 #(
    .INIT(64'h4000000094404000)) 
    errsoths_i_8
       (.I0(data7[1]),
        .I1(data7[0]),
        .I2(data7[2]),
        .I3(\h_reg_reg_n_0_[6] ),
        .I4(\h_reg_reg_n_0_[7] ),
        .I5(\h_reg_reg_n_0_[5] ),
        .O(errsoths_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFF7FFF7FFF977F)) 
    errsoths_i_9
       (.I0(data7[0]),
        .I1(data7[4]),
        .I2(data7[1]),
        .I3(data7[2]),
        .I4(data7[3]),
        .I5(\h_reg_reg_n_0_[7] ),
        .O(errsoths_i_9_n_0));
  FDRE errsoths_reg
       (.C(rx_div4_clk),
        .CE(rxsynchs_i_1__0_n_0),
        .D(errsoths3_out),
        .Q(dl0_errsoths),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8A888A8888888A88)) 
    errsotsynchs_i_1
       (.I0(rxsynchs_i_3_n_0),
        .I1(errsotsynchs_i_2_n_0),
        .I2(rxsynchs_i_8_n_0),
        .I3(rxsynchs_i_6_n_0),
        .I4(errsotsynchs_i_3_n_0),
        .I5(errsotsynchs_i_4_n_0),
        .O(errsotsynchs1_out));
  LUT4 #(
    .INIT(16'hFF01)) 
    errsotsynchs_i_2
       (.I0(align_done_i_15_n_0),
        .I1(errsotsynchs_i_5_n_0),
        .I2(align_done_i_5_n_0),
        .I3(errsotsynchs_i_6_n_0),
        .O(errsotsynchs_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAA33A3)) 
    errsotsynchs_i_3
       (.I0(errsotsynchs_i_7_n_0),
        .I1(align_done_i_16_n_0),
        .I2(align_done_i_20_n_0),
        .I3(align_done_i_19_n_0),
        .I4(align_done_i_18_n_0),
        .I5(align_done_i_17_n_0),
        .O(errsotsynchs_i_3_n_0));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEFF)) 
    errsotsynchs_i_4
       (.I0(rxsynchs_i_14_n_0),
        .I1(rxsynchs_i_13_n_0),
        .I2(rxsynchs_i_12_n_0),
        .I3(errsotsynchs_i_8_n_0),
        .I4(errsotsynchs_i_9_n_0),
        .I5(align_done_i_18_n_0),
        .O(errsotsynchs_i_4_n_0));
  LUT6 #(
    .INIT(64'h5101D54151115101)) 
    errsotsynchs_i_5
       (.I0(align_done_i_12_n_0),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\h_reg_reg_n_0_[6] ),
        .I3(\h_reg_reg_n_0_[7] ),
        .I4(data7[0]),
        .I5(data7[1]),
        .O(errsotsynchs_i_5_n_0));
  LUT6 #(
    .INIT(64'h1500151555555555)) 
    errsotsynchs_i_6
       (.I0(align_done_i_10_n_0),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\h_reg_reg_n_0_[6] ),
        .I3(align_done_i_8_n_0),
        .I4(align_done_i_7__0_n_0),
        .I5(align_done_i_6_n_0),
        .O(errsotsynchs_i_6_n_0));
  LUT5 #(
    .INIT(32'h00800000)) 
    errsotsynchs_i_7
       (.I0(data7[2]),
        .I1(data7[3]),
        .I2(data7[6]),
        .I3(data7[5]),
        .I4(data7[4]),
        .O(errsotsynchs_i_7_n_0));
  LUT5 #(
    .INIT(32'h08000000)) 
    errsotsynchs_i_8
       (.I0(data7[1]),
        .I1(data7[5]),
        .I2(data7[4]),
        .I3(data7[3]),
        .I4(data7[2]),
        .O(errsotsynchs_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    errsotsynchs_i_9
       (.I0(rxsynchs_i_9_n_0),
        .I1(rxsynchs_i_10_n_0),
        .O(errsotsynchs_i_9_n_0));
  FDRE errsotsynchs_reg
       (.C(rx_div4_clk),
        .CE(rxsynchs_i_1__0_n_0),
        .D(errsotsynchs1_out),
        .Q(dl0_errsotsynchs),
        .R(1'b0));
  FDRE \h_reg_reg[10] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_hs_dp_r[2]),
        .Q(data7[2]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[11] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_hs_dp_r[3]),
        .Q(data7[3]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[12] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_hs_dp_r[4]),
        .Q(data7[4]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[13] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_hs_dp_r[5]),
        .Q(data7[5]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[14] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_hs_dp_r[6]),
        .Q(data7[6]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[15] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_hs_dp_r[7]),
        .Q(data7[7]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[1] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(data7[1]),
        .Q(\h_reg_reg_n_0_[1] ),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[2] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(data7[2]),
        .Q(\h_reg_reg_n_0_[2] ),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[3] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(data7[3]),
        .Q(\h_reg_reg_n_0_[3] ),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[4] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(data7[4]),
        .Q(\h_reg_reg_n_0_[4] ),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[5] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(data7[5]),
        .Q(\h_reg_reg_n_0_[5] ),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[6] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(data7[6]),
        .Q(\h_reg_reg_n_0_[6] ),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[7] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(data7[7]),
        .Q(\h_reg_reg_n_0_[7] ),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[8] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_hs_dp_r[0]),
        .Q(data7[0]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \h_reg_reg[9] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_hs_dp_r[1]),
        .Q(data7[1]),
        .R(\hs_data[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[0]_i_1 
       (.I0(\hs_data[4]_i_3_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[0]_i_2_n_0 ),
        .O(hs_data[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[0]_i_2 
       (.I0(\h_reg_reg_n_0_[4] ),
        .I1(\h_reg_reg_n_0_[3] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[2] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[1] ),
        .O(\hs_data[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[1]_i_1 
       (.I0(\hs_data[5]_i_3_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[1]_i_2_n_0 ),
        .O(hs_data[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[1]_i_2 
       (.I0(\h_reg_reg_n_0_[5] ),
        .I1(\h_reg_reg_n_0_[4] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[3] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[2] ),
        .O(\hs_data[1]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[2]_i_1 
       (.I0(\hs_data[6]_i_3_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[2]_i_2_n_0 ),
        .O(hs_data[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[2]_i_2 
       (.I0(\h_reg_reg_n_0_[6] ),
        .I1(\h_reg_reg_n_0_[5] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[4] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[3] ),
        .O(\hs_data[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[3]_i_1 
       (.I0(\hs_data[7]_i_4_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[3]_i_2_n_0 ),
        .O(hs_data[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[3]_i_2 
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[6] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[5] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[4] ),
        .O(\hs_data[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[4]_i_1 
       (.I0(\hs_data[4]_i_2_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[4]_i_3_n_0 ),
        .O(hs_data[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[4]_i_2 
       (.I0(data7[4]),
        .I1(data7[3]),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(data7[2]),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(data7[1]),
        .O(\hs_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[4]_i_3 
       (.I0(data7[0]),
        .I1(\h_reg_reg_n_0_[7] ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[6] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[5] ),
        .O(\hs_data[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[5]_i_1 
       (.I0(\hs_data[5]_i_2_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[5]_i_3_n_0 ),
        .O(hs_data[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[5]_i_2 
       (.I0(data7[5]),
        .I1(data7[4]),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(data7[3]),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(data7[2]),
        .O(\hs_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[5]_i_3 
       (.I0(data7[1]),
        .I1(data7[0]),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(\h_reg_reg_n_0_[7] ),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(\hs_data[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[6]_i_1 
       (.I0(\hs_data[6]_i_2_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[6]_i_3_n_0 ),
        .O(hs_data[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[6]_i_2 
       (.I0(data7[6]),
        .I1(data7[5]),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(data7[4]),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(data7[3]),
        .O(\hs_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[6]_i_3 
       (.I0(data7[2]),
        .I1(data7[1]),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(data7[0]),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(\h_reg_reg_n_0_[7] ),
        .O(\hs_data[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \hs_data[7]_i_1 
       (.I0(en_hs_lpn_sync_r),
        .O(\hs_data[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \hs_data[7]_i_2 
       (.I0(\hs_data[7]_i_3_n_0 ),
        .I1(\start_bit_reg_n_0_[2] ),
        .I2(\hs_data[7]_i_4_n_0 ),
        .O(hs_data[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[7]_i_3 
       (.I0(data7[7]),
        .I1(data7[6]),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(data7[5]),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(data7[4]),
        .O(\hs_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \hs_data[7]_i_4 
       (.I0(data7[3]),
        .I1(data7[2]),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(data7[1]),
        .I4(\start_bit_reg_n_0_[0] ),
        .I5(data7[0]),
        .O(\hs_data[7]_i_4_n_0 ));
  FDRE \hs_data_reg[0] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[0]),
        .Q(dl0_rxdatahs[0]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \hs_data_reg[1] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[1]),
        .Q(dl0_rxdatahs[1]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \hs_data_reg[2] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[2]),
        .Q(dl0_rxdatahs[2]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \hs_data_reg[3] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[3]),
        .Q(dl0_rxdatahs[3]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \hs_data_reg[4] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[4]),
        .Q(dl0_rxdatahs[4]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \hs_data_reg[5] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[5]),
        .Q(dl0_rxdatahs[5]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \hs_data_reg[6] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[6]),
        .Q(dl0_rxdatahs[6]),
        .R(\hs_data[7]_i_1_n_0 ));
  FDRE \hs_data_reg[7] 
       (.C(rx_div4_clk),
        .CE(E),
        .D(hs_data[7]),
        .Q(dl0_rxdatahs[7]),
        .R(\hs_data[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hC8)) 
    hs_dvalid_i_1
       (.I0(E),
        .I1(en_hs_lpn_sync_r),
        .I2(hs_dvalid_reg_0),
        .O(hs_dvalid_i_1_n_0));
  FDRE hs_dvalid_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(hs_dvalid_i_1_n_0),
        .Q(hs_dvalid_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[0] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl0_hs_dp[0]),
        .Q(rx_hs_dp_r[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[1] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl0_hs_dp[1]),
        .Q(rx_hs_dp_r[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[2] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl0_hs_dp[2]),
        .Q(rx_hs_dp_r[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[3] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl0_hs_dp[3]),
        .Q(rx_hs_dp_r[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[4] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl0_hs_dp[4]),
        .Q(rx_hs_dp_r[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[5] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl0_hs_dp[5]),
        .Q(rx_hs_dp_r[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[6] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl0_hs_dp[6]),
        .Q(rx_hs_dp_r[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_hs_dp_r_reg[7] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(rx_dl0_hs_dp[7]),
        .Q(rx_hs_dp_r[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00A2E2AA)) 
    rxsynchs_i_10
       (.I0(data7[1]),
        .I1(data7[5]),
        .I2(data7[4]),
        .I3(data7[2]),
        .I4(data7[3]),
        .I5(data7[0]),
        .O(rxsynchs_i_10_n_0));
  LUT6 #(
    .INIT(64'h20000000B2202000)) 
    rxsynchs_i_11
       (.I0(data7[5]),
        .I1(data7[4]),
        .I2(data7[1]),
        .I3(data7[2]),
        .I4(data7[3]),
        .I5(data7[0]),
        .O(rxsynchs_i_11_n_0));
  LUT6 #(
    .INIT(64'h00007577FFFFFFFF)) 
    rxsynchs_i_12
       (.I0(rxsynchs_i_18_n_0),
        .I1(rxsynchs_i_19_n_0),
        .I2(rxsynchs_i_20_n_0),
        .I3(rxsynchs_i_21_n_0),
        .I4(rxsynchs_i_11_n_0),
        .I5(rxsynchs_i_15_n_0),
        .O(rxsynchs_i_12_n_0));
  LUT6 #(
    .INIT(64'hBFBBBFBFAAAAAAAA)) 
    rxsynchs_i_13
       (.I0(rxsynchs_i_17_n_0),
        .I1(rxsynchs_i_22_n_0),
        .I2(rxsynchs_i_23_n_0),
        .I3(rxsynchs_i_24_n_0),
        .I4(rxsynchs_i_25_n_0),
        .I5(rxsynchs_i_15_n_0),
        .O(rxsynchs_i_13_n_0));
  LUT5 #(
    .INIT(32'hAAAAFFEF)) 
    rxsynchs_i_14
       (.I0(align_done_i_15_n_0),
        .I1(\start_bit[2]_i_7_n_0 ),
        .I2(\start_bit[2]_i_8_n_0 ),
        .I3(\start_bit[2]_i_9_n_0 ),
        .I4(rxsynchs_i_17_n_0),
        .O(rxsynchs_i_14_n_0));
  LUT6 #(
    .INIT(64'hF771FFF7FFF7FFFF)) 
    rxsynchs_i_15
       (.I0(data7[4]),
        .I1(data7[2]),
        .I2(data7[3]),
        .I3(\h_reg_reg_n_0_[7] ),
        .I4(data7[0]),
        .I5(data7[1]),
        .O(rxsynchs_i_15_n_0));
  LUT6 #(
    .INIT(64'h0000000040444444)) 
    rxsynchs_i_16
       (.I0(\start_bit[2]_i_7_n_0 ),
        .I1(\start_bit[2]_i_8_n_0 ),
        .I2(data7[0]),
        .I3(data7[1]),
        .I4(rxsynchs_i_26_n_0),
        .I5(\h_reg_reg_n_0_[5] ),
        .O(rxsynchs_i_16_n_0));
  LUT6 #(
    .INIT(64'h20000000B2202000)) 
    rxsynchs_i_17
       (.I0(data7[1]),
        .I1(data7[2]),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(data7[0]),
        .I4(data7[3]),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(rxsynchs_i_17_n_0));
  LUT5 #(
    .INIT(32'hDCFFC0FF)) 
    rxsynchs_i_18
       (.I0(data7[3]),
        .I1(data7[1]),
        .I2(data7[2]),
        .I3(data7[0]),
        .I4(data7[4]),
        .O(rxsynchs_i_18_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    rxsynchs_i_19
       (.I0(data7[0]),
        .I1(data7[4]),
        .I2(data7[1]),
        .I3(data7[2]),
        .I4(data7[3]),
        .O(rxsynchs_i_19_n_0));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    rxsynchs_i_1__0
       (.I0(align_done_i_2_n_0),
        .I1(align_done_i_3_n_0),
        .I2(align_done_i_4_n_0),
        .I3(E),
        .I4(en_hs_lpn_sync_r),
        .O(rxsynchs_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hAA888A8888888A88)) 
    rxsynchs_i_2
       (.I0(rxsynchs_i_3_n_0),
        .I1(rxsynchs_i_4_n_0),
        .I2(rxsynchs_i_5__0_n_0),
        .I3(rxsynchs_i_6_n_0),
        .I4(rxsynchs_i_7_n_0),
        .I5(rxsynchs_i_8_n_0),
        .O(rxsynchs5_out));
  LUT5 #(
    .INIT(32'hAAAAAAFE)) 
    rxsynchs_i_20
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(\h_reg_reg_n_0_[6] ),
        .I2(\h_reg_reg_n_0_[5] ),
        .I3(data7[1]),
        .I4(data7[0]),
        .O(rxsynchs_i_20_n_0));
  LUT5 #(
    .INIT(32'hF3FFFBFB)) 
    rxsynchs_i_21
       (.I0(data7[0]),
        .I1(data7[1]),
        .I2(data7[2]),
        .I3(data7[4]),
        .I4(data7[3]),
        .O(rxsynchs_i_21_n_0));
  LUT5 #(
    .INIT(32'hF7F3F333)) 
    rxsynchs_i_22
       (.I0(data7[2]),
        .I1(\h_reg_reg_n_0_[7] ),
        .I2(data7[0]),
        .I3(data7[3]),
        .I4(data7[1]),
        .O(rxsynchs_i_22_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    rxsynchs_i_23
       (.I0(\h_reg_reg_n_0_[7] ),
        .I1(data7[3]),
        .I2(data7[0]),
        .I3(data7[1]),
        .I4(data7[2]),
        .O(rxsynchs_i_23_n_0));
  LUT5 #(
    .INIT(32'hABABABAA)) 
    rxsynchs_i_24
       (.I0(\h_reg_reg_n_0_[6] ),
        .I1(data7[0]),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(\h_reg_reg_n_0_[5] ),
        .I4(\h_reg_reg_n_0_[4] ),
        .O(rxsynchs_i_24_n_0));
  LUT5 #(
    .INIT(32'hFF5CFFFF)) 
    rxsynchs_i_25
       (.I0(data7[3]),
        .I1(\h_reg_reg_n_0_[7] ),
        .I2(data7[2]),
        .I3(data7[1]),
        .I4(data7[0]),
        .O(rxsynchs_i_25_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    rxsynchs_i_26
       (.I0(data7[2]),
        .I1(\h_reg_reg_n_0_[7] ),
        .O(rxsynchs_i_26_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rxsynchs_i_3
       (.I0(en_hs_lpn_sync_r),
        .I1(E),
        .O(rxsynchs_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    rxsynchs_i_4
       (.I0(align_done_i_5_n_0),
        .I1(align_done_i_10_n_0),
        .O(rxsynchs_i_4_n_0));
  LUT5 #(
    .INIT(32'h000000FD)) 
    rxsynchs_i_5__0
       (.I0(rxsynchs_i_9_n_0),
        .I1(rxsynchs_i_10_n_0),
        .I2(align_done_i_20_n_0),
        .I3(align_done_i_18_n_0),
        .I4(rxsynchs_i_11_n_0),
        .O(rxsynchs_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    rxsynchs_i_6
       (.I0(align_done_i_2_n_0),
        .I1(align_done_i_3_n_0),
        .O(rxsynchs_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    rxsynchs_i_7
       (.I0(rxsynchs_i_12_n_0),
        .I1(rxsynchs_i_13_n_0),
        .I2(rxsynchs_i_14_n_0),
        .O(rxsynchs_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFF4)) 
    rxsynchs_i_8
       (.I0(rxsynchs_i_15_n_0),
        .I1(rxsynchs_i_16_n_0),
        .I2(rxsynchs_i_17_n_0),
        .I3(align_done_i_15_n_0),
        .O(rxsynchs_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFABFFABFFABAAAB)) 
    rxsynchs_i_9
       (.I0(data7[1]),
        .I1(\h_reg_reg_n_0_[6] ),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(data7[2]),
        .I4(data7[4]),
        .I5(data7[3]),
        .O(rxsynchs_i_9_n_0));
  FDRE rxsynchs_reg
       (.C(rx_div4_clk),
        .CE(rxsynchs_i_1__0_n_0),
        .D(rxsynchs5_out),
        .Q(dl0_rxsynchs),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F00000DD000000)) 
    \start_bit[0]_i_1 
       (.I0(\start_bit[0]_i_2_n_0 ),
        .I1(\start_bit[0]_i_3_n_0 ),
        .I2(\start_bit_reg_n_0_[0] ),
        .I3(align_done_i_2_n_0),
        .I4(en_hs_lpn_sync_r),
        .I5(E),
        .O(\start_bit[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFEFFFEFF)) 
    \start_bit[0]_i_2 
       (.I0(rxsynchs_i_14_n_0),
        .I1(rxsynchs_i_13_n_0),
        .I2(rxsynchs_i_12_n_0),
        .I3(align_done_i_17_n_0),
        .I4(\start_bit[1]_i_5_n_0 ),
        .I5(\start_bit[1]_i_4_n_0 ),
        .O(\start_bit[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \start_bit[0]_i_3 
       (.I0(rxsynchs_i_14_n_0),
        .I1(rxsynchs_i_13_n_0),
        .I2(align_done_i_3_n_0),
        .O(\start_bit[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0444444F0440044)) 
    \start_bit[1]_i_1 
       (.I0(\start_bit[1]_i_2_n_0 ),
        .I1(\start_bit[1]_i_3_n_0 ),
        .I2(\start_bit_reg_n_0_[1] ),
        .I3(en_hs_lpn_sync_r),
        .I4(E),
        .I5(rxsynchs_i_6_n_0),
        .O(\start_bit[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF10FF)) 
    \start_bit[1]_i_2 
       (.I0(rxsynchs_i_14_n_0),
        .I1(rxsynchs_i_13_n_0),
        .I2(rxsynchs_i_12_n_0),
        .I3(en_hs_lpn_sync_r),
        .I4(E),
        .I5(align_done_i_3_n_0),
        .O(\start_bit[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF23)) 
    \start_bit[1]_i_3 
       (.I0(\start_bit[1]_i_4_n_0 ),
        .I1(align_done_i_17_n_0),
        .I2(\start_bit[1]_i_5_n_0 ),
        .I3(rxsynchs_i_14_n_0),
        .I4(rxsynchs_i_13_n_0),
        .O(\start_bit[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hD0DDFFFF)) 
    \start_bit[1]_i_4 
       (.I0(align_done_i_23_n_0),
        .I1(align_done_i_22_n_0),
        .I2(align_done_i_21__0_n_0),
        .I3(data7[3]),
        .I4(align_done_i_20_n_0),
        .O(\start_bit[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00045555)) 
    \start_bit[1]_i_5 
       (.I0(align_done_i_18_n_0),
        .I1(\start_bit[1]_i_6_n_0 ),
        .I2(align_done_i_25_n_0),
        .I3(align_done_i_26_n_0),
        .I4(align_done_i_20_n_0),
        .O(\start_bit[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h51555555)) 
    \start_bit[1]_i_6 
       (.I0(data7[1]),
        .I1(data7[3]),
        .I2(data7[4]),
        .I3(data7[5]),
        .I4(data7[6]),
        .O(\start_bit[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF100010)) 
    \start_bit[2]_i_1 
       (.I0(\start_bit[2]_i_2_n_0 ),
        .I1(\start_bit[2]_i_3_n_0 ),
        .I2(\start_bit[2]_i_4_n_0 ),
        .I3(\start_bit[2]_i_5_n_0 ),
        .I4(\start_bit_reg_n_0_[2] ),
        .I5(\start_bit[2]_i_6_n_0 ),
        .O(\start_bit[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAFFEF)) 
    \start_bit[2]_i_2 
       (.I0(align_done_i_15_n_0),
        .I1(\start_bit[2]_i_7_n_0 ),
        .I2(\start_bit[2]_i_8_n_0 ),
        .I3(\start_bit[2]_i_9_n_0 ),
        .I4(rxsynchs_i_17_n_0),
        .I5(rxsynchs_i_13_n_0),
        .O(\start_bit[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \start_bit[2]_i_3 
       (.I0(align_done_i_3_n_0),
        .I1(E),
        .I2(en_hs_lpn_sync_r),
        .O(\start_bit[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \start_bit[2]_i_4 
       (.I0(rxsynchs_i_12_n_0),
        .I1(align_done_i_20_n_0),
        .I2(align_done_i_19_n_0),
        .I3(align_done_i_18_n_0),
        .I4(align_done_i_17_n_0),
        .I5(align_done_i_16_n_0),
        .O(\start_bit[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \start_bit[2]_i_5 
       (.I0(E),
        .I1(en_hs_lpn_sync_r),
        .O(\start_bit[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444404444)) 
    \start_bit[2]_i_6 
       (.I0(E),
        .I1(en_hs_lpn_sync_r),
        .I2(rxsynchs_i_14_n_0),
        .I3(rxsynchs_i_13_n_0),
        .I4(align_done_i_2_n_0),
        .I5(align_done_i_3_n_0),
        .O(\start_bit[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E0E0EFE)) 
    \start_bit[2]_i_7 
       (.I0(\h_reg_reg_n_0_[3] ),
        .I1(\h_reg_reg_n_0_[4] ),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(data7[0]),
        .I4(data7[1]),
        .I5(\h_reg_reg_n_0_[6] ),
        .O(\start_bit[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF7F3F333)) 
    \start_bit[2]_i_8 
       (.I0(data7[1]),
        .I1(\h_reg_reg_n_0_[6] ),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(data7[2]),
        .I4(data7[0]),
        .O(\start_bit[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAEAAA)) 
    \start_bit[2]_i_9 
       (.I0(\h_reg_reg_n_0_[5] ),
        .I1(data7[2]),
        .I2(\h_reg_reg_n_0_[7] ),
        .I3(data7[1]),
        .I4(data7[0]),
        .O(\start_bit[2]_i_9_n_0 ));
  FDRE \start_bit_reg[0] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\start_bit[0]_i_1_n_0 ),
        .Q(\start_bit_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \start_bit_reg[1] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\start_bit[1]_i_1_n_0 ),
        .Q(\start_bit_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \start_bit_reg[2] 
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(\start_bit[2]_i_1_n_0 ),
        .Q(\start_bit_reg_n_0_[2] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \two_lane_hs_rx_timeout.hs_wait_count[15]_i_1 
       (.I0(E),
        .I1(hs_dvalid_reg_0),
        .O(align_done_reg_0));
  LUT5 #(
    .INIT(32'hB0008000)) 
    \two_lane_hs_rx_timeout.maxfrm_wait_done_i_1 
       (.I0(\two_lane_hs_rx_timeout.maxfrm_wait_done_reg ),
        .I1(\two_lane_hs_rx_timeout.maxfrm_wait_done_reg_0 ),
        .I2(hs_dvalid_reg_0),
        .I3(E),
        .I4(prmry_in),
        .O(s_level_out_d3_reg));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_support_rst_logic" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_support_rst_logic
   (out,
    system_rst_reg_0,
    SR,
    system_rst_reg_1,
    system_rst_in,
    core_clk,
    phy_ready,
    core_rst,
    cl_status_reg_bit_4_reg,
    cl_enable);
  output out;
  output system_rst_reg_0;
  output [0:0]SR;
  output [0:0]system_rst_reg_1;
  input system_rst_in;
  input core_clk;
  input phy_ready;
  input core_rst;
  input cl_status_reg_bit_4_reg;
  input cl_enable;

  wire \FSM_sequential_rst_blk_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rst_blk_state[1]_i_1_n_0 ;
  wire \FSM_sequential_rst_blk_state[2]_i_2_n_0 ;
  wire [0:0]SR;
  wire cl_enable;
  wire cl_status_reg_bit_4_reg;
  wire core_clk;
  wire core_rst;
  wire core_rst_sync;
  (* DONT_TOUCH *) wire out;
  wire phy_rdy_sync;
  wire phy_ready;
  wire rst_blk_state;
  wire [2:0]rst_blk_state__0;
  wire system_rst_byteclk_i_1_n_0;
  wire system_rst_i_1_n_0;
  wire system_rst_in;
  (* DONT_TOUCH *) wire system_rst_reg_0;
  wire [0:0]system_rst_reg_1;
  wire NLW_core_rst_sync_i_prmry_ack_UNCONNECTED;
  wire [1:0]NLW_core_rst_sync_i_scndry_vect_out_UNCONNECTED;
  wire NLW_phy_rdy_sync_i_prmry_ack_UNCONNECTED;
  wire [1:0]NLW_phy_rdy_sync_i_scndry_vect_out_UNCONNECTED;

  LUT5 #(
    .INIT(32'hEEEFAEAF)) 
    \FSM_sequential_rst_blk_state[0]_i_1 
       (.I0(rst_blk_state__0[2]),
        .I1(cl_enable),
        .I2(rst_blk_state__0[0]),
        .I3(phy_rdy_sync),
        .I4(rst_blk_state__0[1]),
        .O(\FSM_sequential_rst_blk_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00A833EC)) 
    \FSM_sequential_rst_blk_state[1]_i_1 
       (.I0(cl_enable),
        .I1(rst_blk_state__0[0]),
        .I2(phy_rdy_sync),
        .I3(rst_blk_state__0[2]),
        .I4(rst_blk_state__0[1]),
        .O(\FSM_sequential_rst_blk_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000AFC3F)) 
    \FSM_sequential_rst_blk_state[2]_i_1 
       (.I0(cl_enable),
        .I1(phy_rdy_sync),
        .I2(rst_blk_state__0[0]),
        .I3(rst_blk_state__0[1]),
        .I4(rst_blk_state__0[2]),
        .O(rst_blk_state));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00002230)) 
    \FSM_sequential_rst_blk_state[2]_i_2 
       (.I0(rst_blk_state__0[1]),
        .I1(rst_blk_state__0[2]),
        .I2(phy_rdy_sync),
        .I3(rst_blk_state__0[0]),
        .I4(cl_enable),
        .O(\FSM_sequential_rst_blk_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "RST_BEGIN:000,RELEASE_PHY_RESET:010,ASSERT_ALL_RESETS:001,RESET_FSM_DONE:011,CHECK_SRST:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rst_blk_state_reg[0] 
       (.C(core_clk),
        .CE(rst_blk_state),
        .CLR(core_rst_sync),
        .D(\FSM_sequential_rst_blk_state[0]_i_1_n_0 ),
        .Q(rst_blk_state__0[0]));
  (* FSM_ENCODED_STATES = "RST_BEGIN:000,RELEASE_PHY_RESET:010,ASSERT_ALL_RESETS:001,RESET_FSM_DONE:011,CHECK_SRST:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rst_blk_state_reg[1] 
       (.C(core_clk),
        .CE(rst_blk_state),
        .CLR(core_rst_sync),
        .D(\FSM_sequential_rst_blk_state[1]_i_1_n_0 ),
        .Q(rst_blk_state__0[1]));
  (* FSM_ENCODED_STATES = "RST_BEGIN:000,RELEASE_PHY_RESET:010,ASSERT_ALL_RESETS:001,RESET_FSM_DONE:011,CHECK_SRST:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_rst_blk_state_reg[2] 
       (.C(core_clk),
        .CE(rst_blk_state),
        .CLR(core_rst_sync),
        .D(\FSM_sequential_rst_blk_state[2]_i_2_n_0 ),
        .Q(rst_blk_state__0[2]));
  LUT3 #(
    .INIT(8'hEA)) 
    cl_stopstate_i_1
       (.I0(core_rst),
        .I1(system_rst_reg_0),
        .I2(cl_status_reg_bit_4_reg),
        .O(SR));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_cdc_type = "2'b01" *) 
  (* c_flop_input = "1'b0" *) 
  (* c_mtbf_stages = "3" *) 
  (* c_reset_state = "1'b1" *) 
  (* c_single_bit = "1'b1" *) 
  (* c_vector_width = "8'b00000010" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__5 core_rst_sync_i
       (.prmry_ack(NLW_core_rst_sync_i_prmry_ack_UNCONNECTED),
        .prmry_aclk(1'b0),
        .prmry_in(system_rst_in),
        .prmry_rst_n(1'b1),
        .prmry_vect_in({1'b0,1'b0}),
        .scndry_aclk(core_clk),
        .scndry_out(core_rst_sync),
        .scndry_rst_n(1'b1),
        .scndry_vect_out(NLW_core_rst_sync_i_scndry_vect_out_UNCONNECTED[1:0]));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_hs_high_rates_spec_v1_1.stopstate_i_1 
       (.I0(system_rst_reg_0),
        .I1(cl_status_reg_bit_4_reg),
        .O(system_rst_reg_1));
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_cdc_type = "2'b01" *) 
  (* c_flop_input = "1'b0" *) 
  (* c_mtbf_stages = "3" *) 
  (* c_reset_state = "1'b1" *) 
  (* c_single_bit = "1'b1" *) 
  (* c_vector_width = "8'b00000010" *) 
  bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__6 phy_rdy_sync_i
       (.prmry_ack(NLW_phy_rdy_sync_i_prmry_ack_UNCONNECTED),
        .prmry_aclk(1'b0),
        .prmry_in(phy_ready),
        .prmry_rst_n(1'b1),
        .prmry_vect_in({1'b0,1'b0}),
        .scndry_aclk(core_clk),
        .scndry_out(phy_rdy_sync),
        .scndry_rst_n(1'b1),
        .scndry_vect_out(NLW_phy_rdy_sync_i_scndry_vect_out_UNCONNECTED[1:0]));
  LUT6 #(
    .INIT(64'h00FF3DFF00000DCF)) 
    system_rst_byteclk_i_1
       (.I0(phy_rdy_sync),
        .I1(rst_blk_state__0[0]),
        .I2(rst_blk_state__0[1]),
        .I3(cl_enable),
        .I4(rst_blk_state__0[2]),
        .I5(out),
        .O(system_rst_byteclk_i_1_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDPE system_rst_byteclk_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(system_rst_byteclk_i_1_n_0),
        .PRE(core_rst_sync),
        .Q(out));
  LUT6 #(
    .INIT(64'h05400545DDCDDDCD)) 
    system_rst_i_1
       (.I0(rst_blk_state__0[2]),
        .I1(system_rst_reg_0),
        .I2(rst_blk_state__0[1]),
        .I3(rst_blk_state__0[0]),
        .I4(phy_rdy_sync),
        .I5(cl_enable),
        .O(system_rst_i_1_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDPE system_rst_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(system_rst_i_1_n_0),
        .PRE(core_rst_sync),
        .Q(system_rst_reg_0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) (* c_cdc_type = "2'b01" *) 
(* c_flop_input = "1'b0" *) (* c_mtbf_stages = "3" *) (* c_reset_state = "1'b1" *) 
(* c_single_bit = "1'b1" *) (* c_vector_width = "8'b00000010" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell
   (prmry_aclk,
    prmry_rst_n,
    prmry_in,
    prmry_vect_in,
    scndry_aclk,
    scndry_rst_n,
    prmry_ack,
    scndry_out,
    scndry_vect_out);
  input prmry_aclk;
  input prmry_rst_n;
  input prmry_in;
  input [1:0]prmry_vect_in;
  input scndry_aclk;
  input scndry_rst_n;
  output prmry_ack;
  output scndry_out;
  output [1:0]scndry_vect_out;

  wire \<const0> ;
  wire p_0_in;
  wire prmry_in;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire scndry_aclk;
  wire scndry_rst_n;

  assign prmry_ack = \<const0> ;
  assign scndry_out = s_level_out_d3;
  assign scndry_vect_out[1] = \<const0> ;
  assign scndry_vect_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h1)) 
    s_level_out_d1_cdc_to_i_1
       (.I0(scndry_rst_n),
        .O(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(p_0_in));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) (* c_cdc_type = "2'b01" *) 
(* c_flop_input = "1'b0" *) (* c_mtbf_stages = "3" *) (* c_reset_state = "1'b1" *) 
(* c_single_bit = "1'b1" *) (* c_vector_width = "8'b00000010" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__1
   (prmry_aclk,
    prmry_rst_n,
    prmry_in,
    prmry_vect_in,
    scndry_aclk,
    scndry_rst_n,
    prmry_ack,
    scndry_out,
    scndry_vect_out);
  input prmry_aclk;
  input prmry_rst_n;
  input prmry_in;
  input [1:0]prmry_vect_in;
  input scndry_aclk;
  input scndry_rst_n;
  output prmry_ack;
  output scndry_out;
  output [1:0]scndry_vect_out;

  wire \<const0> ;
  wire prmry_in;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire scndry_aclk;

  assign prmry_ack = \<const0> ;
  assign scndry_out = s_level_out_d3;
  assign scndry_vect_out[1] = \<const0> ;
  assign scndry_vect_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) (* c_cdc_type = "2'b01" *) 
(* c_flop_input = "1'b0" *) (* c_mtbf_stages = "3" *) (* c_reset_state = "1'b1" *) 
(* c_single_bit = "1'b1" *) (* c_vector_width = "8'b00000010" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__2
   (prmry_aclk,
    prmry_rst_n,
    prmry_in,
    prmry_vect_in,
    scndry_aclk,
    scndry_rst_n,
    prmry_ack,
    scndry_out,
    scndry_vect_out);
  input prmry_aclk;
  input prmry_rst_n;
  input prmry_in;
  input [1:0]prmry_vect_in;
  input scndry_aclk;
  input scndry_rst_n;
  output prmry_ack;
  output scndry_out;
  output [1:0]scndry_vect_out;

  wire \<const0> ;
  wire prmry_in;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire scndry_aclk;

  assign prmry_ack = \<const0> ;
  assign scndry_out = s_level_out_d3;
  assign scndry_vect_out[1] = \<const0> ;
  assign scndry_vect_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) (* c_cdc_type = "2'b01" *) 
(* c_flop_input = "1'b0" *) (* c_mtbf_stages = "3" *) (* c_reset_state = "1'b1" *) 
(* c_single_bit = "1'b1" *) (* c_vector_width = "8'b00000010" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__3
   (prmry_aclk,
    prmry_rst_n,
    prmry_in,
    prmry_vect_in,
    scndry_aclk,
    scndry_rst_n,
    prmry_ack,
    scndry_out,
    scndry_vect_out);
  input prmry_aclk;
  input prmry_rst_n;
  input prmry_in;
  input [1:0]prmry_vect_in;
  input scndry_aclk;
  input scndry_rst_n;
  output prmry_ack;
  output scndry_out;
  output [1:0]scndry_vect_out;

  wire \<const0> ;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire scndry_aclk;

  assign prmry_ack = \<const0> ;
  assign scndry_out = s_level_out_d3;
  assign scndry_vect_out[1] = \<const0> ;
  assign scndry_vect_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) (* c_cdc_type = "2'b01" *) 
(* c_flop_input = "1'b0" *) (* c_mtbf_stages = "3" *) (* c_reset_state = "1'b1" *) 
(* c_single_bit = "1'b1" *) (* c_vector_width = "8'b00000010" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__4
   (prmry_aclk,
    prmry_rst_n,
    prmry_in,
    prmry_vect_in,
    scndry_aclk,
    scndry_rst_n,
    prmry_ack,
    scndry_out,
    scndry_vect_out);
  input prmry_aclk;
  input prmry_rst_n;
  input prmry_in;
  input [1:0]prmry_vect_in;
  input scndry_aclk;
  input scndry_rst_n;
  output prmry_ack;
  output scndry_out;
  output [1:0]scndry_vect_out;

  wire \<const0> ;
  wire p_0_in;
  wire prmry_in;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire scndry_aclk;
  wire scndry_rst_n;

  assign prmry_ack = \<const0> ;
  assign scndry_out = s_level_out_d3;
  assign scndry_vect_out[1] = \<const0> ;
  assign scndry_vect_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT1 #(
    .INIT(2'h1)) 
    s_level_out_d1_cdc_to_i_1
       (.I0(scndry_rst_n),
        .O(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(p_0_in));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(p_0_in));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) (* c_cdc_type = "2'b01" *) 
(* c_flop_input = "1'b0" *) (* c_mtbf_stages = "3" *) (* c_reset_state = "1'b1" *) 
(* c_single_bit = "1'b1" *) (* c_vector_width = "8'b00000010" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__5
   (prmry_aclk,
    prmry_rst_n,
    prmry_in,
    prmry_vect_in,
    scndry_aclk,
    scndry_rst_n,
    prmry_ack,
    scndry_out,
    scndry_vect_out);
  input prmry_aclk;
  input prmry_rst_n;
  input prmry_in;
  input [1:0]prmry_vect_in;
  input scndry_aclk;
  input scndry_rst_n;
  output prmry_ack;
  output scndry_out;
  output [1:0]scndry_vect_out;

  wire \<const0> ;
  wire prmry_in;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire scndry_aclk;

  assign prmry_ack = \<const0> ;
  assign scndry_out = s_level_out_d3;
  assign scndry_vect_out[1] = \<const0> ;
  assign scndry_vect_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) (* c_cdc_type = "2'b01" *) 
(* c_flop_input = "1'b0" *) (* c_mtbf_stages = "3" *) (* c_reset_state = "1'b1" *) 
(* c_single_bit = "1'b1" *) (* c_vector_width = "8'b00000010" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__6
   (prmry_aclk,
    prmry_rst_n,
    prmry_in,
    prmry_vect_in,
    scndry_aclk,
    scndry_rst_n,
    prmry_ack,
    scndry_out,
    scndry_vect_out);
  input prmry_aclk;
  input prmry_rst_n;
  input prmry_in;
  input [1:0]prmry_vect_in;
  input scndry_aclk;
  input scndry_rst_n;
  output prmry_ack;
  output scndry_out;
  output [1:0]scndry_vect_out;

  wire \<const0> ;
  wire prmry_in;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;
  wire scndry_aclk;

  assign prmry_ack = \<const0> ;
  assign scndry_out = s_level_out_d3;
  assign scndry_vect_out[1] = \<const0> ;
  assign scndry_vect_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(prmry_in),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(scndry_aclk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized0
   (cl_enable,
    core_clk);
  input cl_enable;
  input core_clk;

  wire cl_enable;
  wire core_clk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(cl_enable),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized0_14
   (out,
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ,
    dl0_rxactivehs,
    core_clk,
    Q,
    \gen_hs_high_rates_spec_v1_1.active_sm_r_reg ,
    \gen_hs_high_rates_spec_v1_1.active_sm_r_reg_0 ,
    dl_en_hs_lpn_i,
    rxactivehs_coreclk_sync_r);
  output out;
  output \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ;
  input dl0_rxactivehs;
  input core_clk;
  input [1:0]Q;
  input \gen_hs_high_rates_spec_v1_1.active_sm_r_reg ;
  input \gen_hs_high_rates_spec_v1_1.active_sm_r_reg_0 ;
  input dl_en_hs_lpn_i;
  input rxactivehs_coreclk_sync_r;

  wire \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ;
  wire [1:0]Q;
  wire core_clk;
  wire dl0_rxactivehs;
  wire dl_en_hs_lpn_i;
  wire \gen_hs_high_rates_spec_v1_1.active_sm_r_i_2_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.active_sm_r_reg ;
  wire \gen_hs_high_rates_spec_v1_1.active_sm_r_reg_0 ;
  wire rxactivehs_coreclk_sync_r;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d2;
  LUT6 #(
    .INIT(64'hEFEFA8A847770000)) 
    \gen_hs_high_rates_spec_v1_1.active_sm_r_i_1 
       (.I0(\gen_hs_high_rates_spec_v1_1.active_sm_r_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\gen_hs_high_rates_spec_v1_1.active_sm_r_reg ),
        .I4(\gen_hs_high_rates_spec_v1_1.active_sm_r_reg_0 ),
        .I5(dl_en_hs_lpn_i),
        .O(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ));
  LUT3 #(
    .INIT(8'h10)) 
    \gen_hs_high_rates_spec_v1_1.active_sm_r_i_2 
       (.I0(s_level_out_d2),
        .I1(Q[0]),
        .I2(rxactivehs_coreclk_sync_r),
        .O(\gen_hs_high_rates_spec_v1_1.active_sm_r_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(dl0_rxactivehs),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized0_7
   (clk_active_r,
    core_clk);
  input clk_active_r;
  input core_clk;

  wire clk_active_r;
  wire core_clk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(clk_active_r),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized0_9
   (out,
    \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ,
    dl1_rxactivehs,
    core_clk,
    Q,
    \gen_hs_high_rates_spec_v1_1.active_sm_r_reg ,
    \gen_hs_high_rates_spec_v1_1.active_sm_r_reg_0 ,
    dl_en_hs_lpn_i,
    rxactivehs_coreclk_sync_r);
  output out;
  output \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ;
  input dl1_rxactivehs;
  input core_clk;
  input [1:0]Q;
  input \gen_hs_high_rates_spec_v1_1.active_sm_r_reg ;
  input \gen_hs_high_rates_spec_v1_1.active_sm_r_reg_0 ;
  input dl_en_hs_lpn_i;
  input rxactivehs_coreclk_sync_r;

  wire \FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ;
  wire [1:0]Q;
  wire core_clk;
  wire dl1_rxactivehs;
  wire dl_en_hs_lpn_i;
  wire \gen_hs_high_rates_spec_v1_1.active_sm_r_i_2__0_n_0 ;
  wire \gen_hs_high_rates_spec_v1_1.active_sm_r_reg ;
  wire \gen_hs_high_rates_spec_v1_1.active_sm_r_reg_0 ;
  wire rxactivehs_coreclk_sync_r;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d2;
  LUT6 #(
    .INIT(64'hEFEFA8A847770000)) 
    \gen_hs_high_rates_spec_v1_1.active_sm_r_i_1__0 
       (.I0(\gen_hs_high_rates_spec_v1_1.active_sm_r_i_2__0_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\gen_hs_high_rates_spec_v1_1.active_sm_r_reg ),
        .I4(\gen_hs_high_rates_spec_v1_1.active_sm_r_reg_0 ),
        .I5(dl_en_hs_lpn_i),
        .O(\FSM_sequential_gen_hs_high_rates_spec_v1_1.dl_state_reg[1] ));
  LUT3 #(
    .INIT(8'h10)) 
    \gen_hs_high_rates_spec_v1_1.active_sm_r_i_2__0 
       (.I0(s_level_out_d2),
        .I1(Q[0]),
        .I2(rxactivehs_coreclk_sync_r),
        .O(\gen_hs_high_rates_spec_v1_1.active_sm_r_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(dl1_rxactivehs),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1
   (out,
    dl_en_hs_lpn_i,
    rx_div4_clk);
  output out;
  input dl_en_hs_lpn_i;
  input rx_div4_clk;

  wire p_level_in_int;
  wire rx_div4_clk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d2;
  assign p_level_in_int = dl_en_hs_lpn_i;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_10
   (out,
    D,
    E,
    \FSM_sequential_dl_rx_state_reg[1] ,
    rx_dl1_lp_dn,
    core_clk,
    Q,
    \FSM_sequential_dl_rx_state_reg[1]_0 ,
    \FSM_sequential_dl_rx_state_reg[1]_1 ,
    \FSM_sequential_dl_rx_state_reg[1]_2 ,
    \FSM_sequential_dl_rx_state_reg[0] ,
    \FSM_sequential_dl_rx_state_reg[0]_0 ,
    \FSM_sequential_dl_rx_state_reg[0]_1 ,
    \FSM_sequential_dl_rx_state_reg[0]_2 ,
    \FSM_sequential_dl_rx_state_reg[0]_3 ,
    \FSM_sequential_dl_rx_state_reg[2] ,
    \FSM_sequential_dl_rx_state_reg[2]_0 ,
    \FSM_sequential_dl_rx_state_reg[2]_1 ,
    dl_stopstate_reg,
    lp_11_r_dly,
    \FSM_sequential_dl_rx_state_reg[0]_4 ,
    dl_stopstate_reg_0,
    dl_stopstate_reg_1,
    dl_stopstate);
  output out;
  output [1:0]D;
  output [0:0]E;
  output \FSM_sequential_dl_rx_state_reg[1] ;
  input rx_dl1_lp_dn;
  input core_clk;
  input [3:0]Q;
  input \FSM_sequential_dl_rx_state_reg[1]_0 ;
  input \FSM_sequential_dl_rx_state_reg[1]_1 ;
  input \FSM_sequential_dl_rx_state_reg[1]_2 ;
  input \FSM_sequential_dl_rx_state_reg[0] ;
  input \FSM_sequential_dl_rx_state_reg[0]_0 ;
  input \FSM_sequential_dl_rx_state_reg[0]_1 ;
  input \FSM_sequential_dl_rx_state_reg[0]_2 ;
  input \FSM_sequential_dl_rx_state_reg[0]_3 ;
  input \FSM_sequential_dl_rx_state_reg[2] ;
  input \FSM_sequential_dl_rx_state_reg[2]_0 ;
  input \FSM_sequential_dl_rx_state_reg[2]_1 ;
  input dl_stopstate_reg;
  input lp_11_r_dly;
  input \FSM_sequential_dl_rx_state_reg[0]_4 ;
  input dl_stopstate_reg_0;
  input dl_stopstate_reg_1;
  input dl_stopstate;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_dl_rx_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[2]_i_2__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[2]_i_4_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_11__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_6__0_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_dl_rx_state_reg[0] ;
  wire \FSM_sequential_dl_rx_state_reg[0]_0 ;
  wire \FSM_sequential_dl_rx_state_reg[0]_1 ;
  wire \FSM_sequential_dl_rx_state_reg[0]_2 ;
  wire \FSM_sequential_dl_rx_state_reg[0]_3 ;
  wire \FSM_sequential_dl_rx_state_reg[0]_4 ;
  wire \FSM_sequential_dl_rx_state_reg[1] ;
  wire \FSM_sequential_dl_rx_state_reg[1]_0 ;
  wire \FSM_sequential_dl_rx_state_reg[1]_1 ;
  wire \FSM_sequential_dl_rx_state_reg[1]_2 ;
  wire \FSM_sequential_dl_rx_state_reg[2] ;
  wire \FSM_sequential_dl_rx_state_reg[2]_0 ;
  wire \FSM_sequential_dl_rx_state_reg[2]_1 ;
  wire [3:0]Q;
  wire core_clk;
  wire dl_stopstate;
  wire dl_stopstate_i_3__0_n_0;
  wire dl_stopstate_i_5_n_0;
  wire dl_stopstate_i_6__0_n_0;
  wire dl_stopstate_i_7_n_0;
  wire dl_stopstate_reg;
  wire dl_stopstate_reg_0;
  wire dl_stopstate_reg_1;
  wire lp_11_r_dly;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d2;
  assign p_level_in_int = rx_dl1_lp_dn;
  LUT6 #(
    .INIT(64'hFFFFEA00FF00EA00)) 
    \FSM_sequential_dl_rx_state[1]_i_1__0 
       (.I0(Q[2]),
        .I1(s_level_out_d2),
        .I2(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .I3(\FSM_sequential_dl_rx_state[1]_i_2__0_n_0 ),
        .I4(\FSM_sequential_dl_rx_state_reg[1]_1 ),
        .I5(\FSM_sequential_dl_rx_state_reg[1]_2 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h000D0000000D0A00)) 
    \FSM_sequential_dl_rx_state[1]_i_2__0 
       (.I0(Q[2]),
        .I1(\FSM_sequential_dl_rx_state[1]_i_3__0_n_0 ),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(dl_stopstate_reg),
        .O(\FSM_sequential_dl_rx_state[1]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_dl_rx_state[1]_i_3__0 
       (.I0(s_level_out_d2),
        .I1(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .O(\FSM_sequential_dl_rx_state[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h4545454545444444)) 
    \FSM_sequential_dl_rx_state[2]_i_1__0 
       (.I0(\FSM_sequential_dl_rx_state_reg[2] ),
        .I1(\FSM_sequential_dl_rx_state[2]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(\FSM_sequential_dl_rx_state_reg[0] ),
        .I4(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I5(\FSM_sequential_dl_rx_state_reg[2]_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h080C0C0C080C0C00)) 
    \FSM_sequential_dl_rx_state[2]_i_2__0 
       (.I0(dl_stopstate_reg),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\FSM_sequential_dl_rx_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_dl_rx_state[2]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_dl_rx_state[2]_i_4 
       (.I0(s_level_out_d2),
        .I1(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .O(\FSM_sequential_dl_rx_state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_dl_rx_state[3]_i_11__0 
       (.I0(s_level_out_d2),
        .I1(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .O(\FSM_sequential_dl_rx_state[3]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBA0000)) 
    \FSM_sequential_dl_rx_state[3]_i_1__0 
       (.I0(\FSM_sequential_dl_rx_state_reg[0] ),
        .I1(\FSM_sequential_dl_rx_state_reg[0]_0 ),
        .I2(\FSM_sequential_dl_rx_state_reg[0]_1 ),
        .I3(\FSM_sequential_dl_rx_state[3]_i_6__0_n_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_dl_rx_state[3]_i_7_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF20020002)) 
    \FSM_sequential_dl_rx_state[3]_i_6__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(s_level_out_d2),
        .I3(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .I4(lp_11_r_dly),
        .I5(\FSM_sequential_dl_rx_state_reg[0]_4 ),
        .O(\FSM_sequential_dl_rx_state[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF11011001)) 
    \FSM_sequential_dl_rx_state[3]_i_7 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\FSM_sequential_dl_rx_state_reg[0]_2 ),
        .I3(\FSM_sequential_dl_rx_state[3]_i_11__0_n_0 ),
        .I4(\FSM_sequential_dl_rx_state_reg[1]_1 ),
        .I5(\FSM_sequential_dl_rx_state_reg[0]_3 ),
        .O(\FSM_sequential_dl_rx_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00FEFFFF00FE0000)) 
    dl_stopstate_i_1__0
       (.I0(Q[1]),
        .I1(dl_stopstate_reg_0),
        .I2(dl_stopstate_i_3__0_n_0),
        .I3(dl_stopstate_reg_1),
        .I4(dl_stopstate_i_5_n_0),
        .I5(dl_stopstate),
        .O(\FSM_sequential_dl_rx_state_reg[1] ));
  LUT6 #(
    .INIT(64'hA808080808080808)) 
    dl_stopstate_i_3__0
       (.I0(Q[0]),
        .I1(dl_stopstate_reg),
        .I2(Q[2]),
        .I3(s_level_out_d2),
        .I4(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .I5(lp_11_r_dly),
        .O(dl_stopstate_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00480F48)) 
    dl_stopstate_i_5
       (.I0(Q[2]),
        .I1(dl_stopstate_i_6__0_n_0),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(dl_stopstate_i_7_n_0),
        .I5(\FSM_sequential_dl_rx_state_reg[2] ),
        .O(dl_stopstate_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAEFAAEAAAEFAAEF)) 
    dl_stopstate_i_6__0
       (.I0(dl_stopstate_i_3__0_n_0),
        .I1(\FSM_sequential_dl_rx_state_reg[0]_1 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(dl_stopstate_reg),
        .I5(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .O(dl_stopstate_i_6__0_n_0));
  LUT5 #(
    .INIT(32'h007FFF7F)) 
    dl_stopstate_i_7
       (.I0(s_level_out_d2),
        .I1(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(dl_stopstate_reg),
        .O(dl_stopstate_i_7_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_11
   (out,
    D,
    s_level_out_d2_reg_0,
    lp_11_r_reg,
    dl_en_hs_rx_term_reg,
    lp_11_r_reg_0,
    rx_dl1_lp_dp,
    core_clk,
    Q,
    dl_en_hs_lpn_reg,
    dl_en_hs_lpn_reg_0,
    \lp_st_cnt_reg[0] ,
    dl_en_hs_rx_term_reg_0,
    dl_en_hs_rx_term_reg_1,
    \FSM_sequential_dl_rx_state_reg[3] ,
    lp_01_r,
    \lp_st_cnt_reg[1] ,
    \lp_st_cnt_reg[0]_0 ,
    lp_10_r,
    lp_00_r,
    \lp_st_cnt_reg[0]_1 ,
    dl_en_hs_lpn_reg_1,
    dl_en_hs_lpn_reg_2,
    dl_en_hs_lpn_reg_3,
    dl_en_hs_rx_term_reg_2,
    dl_en_hs_rx_term_reg_3,
    dl_en_hs_rx_term_reg_4,
    rx_dl1_disable_ibuf,
    \FSM_sequential_dl_rx_state_reg[3]_0 );
  output out;
  output [4:0]D;
  output s_level_out_d2_reg_0;
  output lp_11_r_reg;
  output dl_en_hs_rx_term_reg;
  output [0:0]lp_11_r_reg_0;
  input rx_dl1_lp_dp;
  input core_clk;
  input [3:0]Q;
  input dl_en_hs_lpn_reg;
  input dl_en_hs_lpn_reg_0;
  input \lp_st_cnt_reg[0] ;
  input dl_en_hs_rx_term_reg_0;
  input dl_en_hs_rx_term_reg_1;
  input \FSM_sequential_dl_rx_state_reg[3] ;
  input lp_01_r;
  input [4:0]\lp_st_cnt_reg[1] ;
  input \lp_st_cnt_reg[0]_0 ;
  input lp_10_r;
  input lp_00_r;
  input [1:0]\lp_st_cnt_reg[0]_1 ;
  input dl_en_hs_lpn_reg_1;
  input dl_en_hs_lpn_reg_2;
  input dl_en_hs_lpn_reg_3;
  input dl_en_hs_rx_term_reg_2;
  input dl_en_hs_rx_term_reg_3;
  input dl_en_hs_rx_term_reg_4;
  input rx_dl1_disable_ibuf;
  input \FSM_sequential_dl_rx_state_reg[3]_0 ;

  wire [4:0]D;
  wire \FSM_sequential_dl_rx_state[3]_i_9__0_n_0 ;
  wire \FSM_sequential_dl_rx_state_reg[3] ;
  wire \FSM_sequential_dl_rx_state_reg[3]_0 ;
  wire [3:0]Q;
  wire core_clk;
  wire dl_en_hs_lpn_i_3__0_n_0;
  wire dl_en_hs_lpn_i_4__0_n_0;
  wire dl_en_hs_lpn_i_5__0_n_0;
  wire dl_en_hs_lpn_reg;
  wire dl_en_hs_lpn_reg_0;
  wire dl_en_hs_lpn_reg_1;
  wire dl_en_hs_lpn_reg_2;
  wire dl_en_hs_lpn_reg_3;
  wire dl_en_hs_rx_term_i_3__0_n_0;
  wire dl_en_hs_rx_term_reg;
  wire dl_en_hs_rx_term_reg_0;
  wire dl_en_hs_rx_term_reg_1;
  wire dl_en_hs_rx_term_reg_2;
  wire dl_en_hs_rx_term_reg_3;
  wire dl_en_hs_rx_term_reg_4;
  wire lp_00_r;
  wire lp_01_r;
  wire lp_10_r;
  wire lp_11_r_reg;
  wire [0:0]lp_11_r_reg_0;
  wire \lp_st_cnt[0]_i_4__0_n_0 ;
  wire \lp_st_cnt[4]_i_2__0_n_0 ;
  wire \lp_st_cnt_reg[0] ;
  wire \lp_st_cnt_reg[0]_0 ;
  wire [1:0]\lp_st_cnt_reg[0]_1 ;
  wire [4:0]\lp_st_cnt_reg[1] ;
  wire p_level_in_int;
  wire rx_dl1_disable_ibuf;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  wire s_level_out_d2_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d2;
  assign p_level_in_int = rx_dl1_lp_dp;
  LUT6 #(
    .INIT(64'h0000001055555555)) 
    \FSM_sequential_dl_rx_state[3]_i_2__0 
       (.I0(dl_en_hs_lpn_reg_2),
        .I1(dl_en_hs_lpn_reg),
        .I2(Q[0]),
        .I3(\FSM_sequential_dl_rx_state_reg[3]_0 ),
        .I4(Q[3]),
        .I5(\FSM_sequential_dl_rx_state[3]_i_9__0_n_0 ),
        .O(lp_11_r_reg_0));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \FSM_sequential_dl_rx_state[3]_i_5__0 
       (.I0(s_level_out_d2),
        .I1(dl_en_hs_rx_term_reg_1),
        .I2(lp_00_r),
        .I3(lp_10_r),
        .O(s_level_out_d2_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF30AAFF)) 
    \FSM_sequential_dl_rx_state[3]_i_9__0 
       (.I0(dl_en_hs_lpn_reg_0),
        .I1(s_level_out_d2),
        .I2(dl_en_hs_rx_term_reg_1),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\FSM_sequential_dl_rx_state_reg[3] ),
        .O(\FSM_sequential_dl_rx_state[3]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'h004000FF00400000)) 
    dl_en_hs_lpn_i_1__0
       (.I0(dl_en_hs_lpn_reg),
        .I1(Q[0]),
        .I2(dl_en_hs_lpn_reg_1),
        .I3(dl_en_hs_lpn_reg_2),
        .I4(dl_en_hs_lpn_i_3__0_n_0),
        .I5(dl_en_hs_lpn_reg_3),
        .O(lp_11_r_reg));
  LUT5 #(
    .INIT(32'h28202828)) 
    dl_en_hs_lpn_i_3__0
       (.I0(dl_en_hs_lpn_i_4__0_n_0),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(dl_en_hs_lpn_reg),
        .I4(dl_en_hs_lpn_reg_0),
        .O(dl_en_hs_lpn_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hB8BBB88800330033)) 
    dl_en_hs_lpn_i_4__0
       (.I0(dl_en_hs_rx_term_reg_0),
        .I1(Q[0]),
        .I2(dl_en_hs_lpn_reg),
        .I3(Q[1]),
        .I4(dl_en_hs_lpn_i_5__0_n_0),
        .I5(Q[2]),
        .O(dl_en_hs_lpn_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hE0EE)) 
    dl_en_hs_lpn_i_5__0
       (.I0(lp_00_r),
        .I1(lp_10_r),
        .I2(s_level_out_d2),
        .I3(dl_en_hs_rx_term_reg_1),
        .O(dl_en_hs_lpn_i_5__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFAAEFFFFFAA20)) 
    dl_en_hs_rx_term_i_1__0
       (.I0(dl_en_hs_rx_term_reg_2),
        .I1(dl_en_hs_rx_term_i_3__0_n_0),
        .I2(dl_en_hs_rx_term_reg_3),
        .I3(dl_en_hs_rx_term_reg_4),
        .I4(dl_en_hs_lpn_reg_2),
        .I5(rx_dl1_disable_ibuf),
        .O(dl_en_hs_rx_term_reg));
  LUT6 #(
    .INIT(64'h3333000033301311)) 
    dl_en_hs_rx_term_i_3__0
       (.I0(\lp_st_cnt_reg[0] ),
        .I1(dl_en_hs_rx_term_reg_0),
        .I2(s_level_out_d2),
        .I3(dl_en_hs_rx_term_reg_1),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(dl_en_hs_rx_term_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT6 #(
    .INIT(64'h000000FF01FF01FF)) 
    \lp_st_cnt[0]_i_1__0 
       (.I0(dl_en_hs_lpn_reg),
        .I1(lp_01_r),
        .I2(\lp_st_cnt_reg[0] ),
        .I3(\lp_st_cnt_reg[1] [0]),
        .I4(\lp_st_cnt_reg[0]_0 ),
        .I5(\lp_st_cnt[0]_i_4__0_n_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \lp_st_cnt[0]_i_4__0 
       (.I0(\lp_st_cnt_reg[0]_1 [1]),
        .I1(s_level_out_d2),
        .I2(\lp_st_cnt_reg[0]_1 [0]),
        .I3(dl_en_hs_rx_term_reg_1),
        .O(\lp_st_cnt[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00FE000000)) 
    \lp_st_cnt[1]_i_1__0 
       (.I0(\lp_st_cnt_reg[1] [3]),
        .I1(\lp_st_cnt_reg[1] [4]),
        .I2(\lp_st_cnt_reg[1] [2]),
        .I3(\lp_st_cnt[4]_i_2__0_n_0 ),
        .I4(\lp_st_cnt_reg[1] [1]),
        .I5(\lp_st_cnt_reg[1] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lp_st_cnt[2]_i_1__0 
       (.I0(\lp_st_cnt[4]_i_2__0_n_0 ),
        .I1(\lp_st_cnt_reg[1] [0]),
        .I2(\lp_st_cnt_reg[1] [1]),
        .I3(\lp_st_cnt_reg[1] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lp_st_cnt[3]_i_1__0 
       (.I0(\lp_st_cnt[4]_i_2__0_n_0 ),
        .I1(\lp_st_cnt_reg[1] [1]),
        .I2(\lp_st_cnt_reg[1] [0]),
        .I3(\lp_st_cnt_reg[1] [2]),
        .I4(\lp_st_cnt_reg[1] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lp_st_cnt[4]_i_1__0 
       (.I0(\lp_st_cnt[4]_i_2__0_n_0 ),
        .I1(\lp_st_cnt_reg[1] [2]),
        .I2(\lp_st_cnt_reg[1] [0]),
        .I3(\lp_st_cnt_reg[1] [1]),
        .I4(\lp_st_cnt_reg[1] [3]),
        .I5(\lp_st_cnt_reg[1] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \lp_st_cnt[4]_i_2__0 
       (.I0(\lp_st_cnt[0]_i_4__0_n_0 ),
        .I1(dl_en_hs_lpn_reg),
        .I2(lp_01_r),
        .I3(lp_10_r),
        .I4(lp_00_r),
        .O(\lp_st_cnt[4]_i_2__0_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_15
   (out,
    dl_en_hs_lpn_i,
    rx_div4_clk);
  output out;
  input dl_en_hs_lpn_i;
  input rx_div4_clk;

  wire p_level_in_int;
  wire rx_div4_clk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d2;
  assign p_level_in_int = dl_en_hs_lpn_i;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_16
   (out,
    D,
    E,
    s_level_out_d2_reg_0,
    dl_en_hs_rx_term_reg,
    rx_dl0_lp_dn,
    core_clk,
    Q,
    \FSM_sequential_dl_rx_state_reg[1] ,
    \FSM_sequential_dl_rx_state_reg[1]_0 ,
    \FSM_sequential_dl_rx_state_reg[1]_1 ,
    \FSM_sequential_dl_rx_state_reg[0] ,
    dl_en_hs_rx_term_reg_0,
    \FSM_sequential_dl_rx_state_reg[2] ,
    \FSM_sequential_dl_rx_state_reg[2]_0 ,
    \FSM_sequential_dl_rx_state_reg[2]_1 ,
    lp_11_r_dly,
    \FSM_sequential_dl_rx_state_reg[0]_0 ,
    \FSM_sequential_dl_rx_state_reg[2]_2 ,
    dl_en_hs_rx_term_reg_1,
    dl_en_hs_rx_term_reg_2,
    dl_en_hs_rx_term_reg_3,
    dl_en_hs_rx_term_reg_4,
    dl_en_hs_rx_term_reg_5,
    rx_dl0_disable_ibuf);
  output out;
  output [1:0]D;
  output [0:0]E;
  output s_level_out_d2_reg_0;
  output dl_en_hs_rx_term_reg;
  input rx_dl0_lp_dn;
  input core_clk;
  input [3:0]Q;
  input \FSM_sequential_dl_rx_state_reg[1] ;
  input \FSM_sequential_dl_rx_state_reg[1]_0 ;
  input \FSM_sequential_dl_rx_state_reg[1]_1 ;
  input \FSM_sequential_dl_rx_state_reg[0] ;
  input dl_en_hs_rx_term_reg_0;
  input \FSM_sequential_dl_rx_state_reg[2] ;
  input \FSM_sequential_dl_rx_state_reg[2]_0 ;
  input \FSM_sequential_dl_rx_state_reg[2]_1 ;
  input lp_11_r_dly;
  input \FSM_sequential_dl_rx_state_reg[0]_0 ;
  input \FSM_sequential_dl_rx_state_reg[2]_2 ;
  input dl_en_hs_rx_term_reg_1;
  input dl_en_hs_rx_term_reg_2;
  input dl_en_hs_rx_term_reg_3;
  input dl_en_hs_rx_term_reg_4;
  input dl_en_hs_rx_term_reg_5;
  input rx_dl0_disable_ibuf;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_dl_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_dl_rx_state[1]_i_3_n_0 ;
  wire \FSM_sequential_dl_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_dl_rx_state[2]_i_5_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_dl_rx_state[3]_i_9_n_0 ;
  wire \FSM_sequential_dl_rx_state_reg[0] ;
  wire \FSM_sequential_dl_rx_state_reg[0]_0 ;
  wire \FSM_sequential_dl_rx_state_reg[1] ;
  wire \FSM_sequential_dl_rx_state_reg[1]_0 ;
  wire \FSM_sequential_dl_rx_state_reg[1]_1 ;
  wire \FSM_sequential_dl_rx_state_reg[2] ;
  wire \FSM_sequential_dl_rx_state_reg[2]_0 ;
  wire \FSM_sequential_dl_rx_state_reg[2]_1 ;
  wire \FSM_sequential_dl_rx_state_reg[2]_2 ;
  wire [3:0]Q;
  wire core_clk;
  wire dl_en_hs_rx_term_i_3_n_0;
  wire dl_en_hs_rx_term_reg;
  wire dl_en_hs_rx_term_reg_0;
  wire dl_en_hs_rx_term_reg_1;
  wire dl_en_hs_rx_term_reg_2;
  wire dl_en_hs_rx_term_reg_3;
  wire dl_en_hs_rx_term_reg_4;
  wire dl_en_hs_rx_term_reg_5;
  wire lp_11_r_dly;
  wire p_level_in_int;
  wire rx_dl0_disable_ibuf;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  wire s_level_out_d2_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d2;
  assign p_level_in_int = rx_dl0_lp_dn;
  LUT6 #(
    .INIT(64'hFFFFEA00FF00EA00)) 
    \FSM_sequential_dl_rx_state[1]_i_1 
       (.I0(Q[2]),
        .I1(s_level_out_d2),
        .I2(\FSM_sequential_dl_rx_state_reg[1] ),
        .I3(\FSM_sequential_dl_rx_state[1]_i_2_n_0 ),
        .I4(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .I5(\FSM_sequential_dl_rx_state_reg[1]_1 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h000D0000000D0A00)) 
    \FSM_sequential_dl_rx_state[1]_i_2 
       (.I0(Q[2]),
        .I1(\FSM_sequential_dl_rx_state[1]_i_3_n_0 ),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\FSM_sequential_dl_rx_state_reg[2]_2 ),
        .O(\FSM_sequential_dl_rx_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_dl_rx_state[1]_i_3 
       (.I0(s_level_out_d2),
        .I1(\FSM_sequential_dl_rx_state_reg[1] ),
        .O(\FSM_sequential_dl_rx_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4545454545444444)) 
    \FSM_sequential_dl_rx_state[2]_i_1 
       (.I0(dl_en_hs_rx_term_reg_0),
        .I1(\FSM_sequential_dl_rx_state[2]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\FSM_sequential_dl_rx_state_reg[2] ),
        .I4(\FSM_sequential_dl_rx_state_reg[2]_0 ),
        .I5(\FSM_sequential_dl_rx_state_reg[2]_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h080C0C0C080C0C00)) 
    \FSM_sequential_dl_rx_state[2]_i_2 
       (.I0(\FSM_sequential_dl_rx_state_reg[2]_2 ),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\FSM_sequential_dl_rx_state[2]_i_5_n_0 ),
        .O(\FSM_sequential_dl_rx_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_dl_rx_state[2]_i_5 
       (.I0(s_level_out_d2),
        .I1(\FSM_sequential_dl_rx_state_reg[1] ),
        .O(\FSM_sequential_dl_rx_state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFD0)) 
    \FSM_sequential_dl_rx_state[3]_i_1 
       (.I0(\FSM_sequential_dl_rx_state[3]_i_3_n_0 ),
        .I1(\FSM_sequential_dl_rx_state[3]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\FSM_sequential_dl_rx_state_reg[0] ),
        .I4(\FSM_sequential_dl_rx_state[3]_i_6_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hAAAAAA8A)) 
    \FSM_sequential_dl_rx_state[3]_i_3 
       (.I0(dl_en_hs_rx_term_reg_1),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_level_out_d2),
        .I4(\FSM_sequential_dl_rx_state_reg[1] ),
        .O(\FSM_sequential_dl_rx_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF008800F0)) 
    \FSM_sequential_dl_rx_state[3]_i_4 
       (.I0(lp_11_r_dly),
        .I1(\FSM_sequential_dl_rx_state[3]_i_9_n_0 ),
        .I2(\FSM_sequential_dl_rx_state_reg[0]_0 ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(\FSM_sequential_dl_rx_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FB0C)) 
    \FSM_sequential_dl_rx_state[3]_i_6 
       (.I0(\FSM_sequential_dl_rx_state_reg[1]_0 ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\FSM_sequential_dl_rx_state[3]_i_9_n_0 ),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_dl_rx_state[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_dl_rx_state[3]_i_9 
       (.I0(s_level_out_d2),
        .I1(\FSM_sequential_dl_rx_state_reg[1] ),
        .O(\FSM_sequential_dl_rx_state[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEFFFFFAA20)) 
    dl_en_hs_rx_term_i_1
       (.I0(dl_en_hs_rx_term_reg_3),
        .I1(dl_en_hs_rx_term_i_3_n_0),
        .I2(dl_en_hs_rx_term_reg_4),
        .I3(dl_en_hs_rx_term_reg_5),
        .I4(dl_en_hs_rx_term_reg_0),
        .I5(rx_dl0_disable_ibuf),
        .O(dl_en_hs_rx_term_reg));
  LUT6 #(
    .INIT(64'hAAA8AAA800202222)) 
    dl_en_hs_rx_term_i_3
       (.I0(dl_en_hs_rx_term_reg_1),
        .I1(Q[1]),
        .I2(s_level_out_d2),
        .I3(\FSM_sequential_dl_rx_state_reg[1] ),
        .I4(dl_en_hs_rx_term_reg_2),
        .I5(Q[0]),
        .O(dl_en_hs_rx_term_i_3_n_0));
  LUT5 #(
    .INIT(32'h007FFF7F)) 
    dl_stopstate_i_6
       (.I0(s_level_out_d2),
        .I1(\FSM_sequential_dl_rx_state_reg[1] ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\FSM_sequential_dl_rx_state_reg[2]_2 ),
        .O(s_level_out_d2_reg_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_17
   (out,
    s_level_out_d2_reg_0,
    D,
    \FSM_sequential_dl_rx_state_reg[2] ,
    \FSM_sequential_dl_rx_state_reg[0] ,
    \FSM_sequential_dl_rx_state_reg[3] ,
    rx_dl0_lp_dp,
    core_clk,
    Q,
    dl_stopstate_reg,
    dl_stopstate_reg_0,
    \lp_st_cnt_reg[0] ,
    dl_stopstate_reg_1,
    lp_11_r_dly,
    \FSM_sequential_dl_rx_state_reg[3]_0 ,
    \FSM_sequential_dl_rx_state_reg[3]_1 ,
    lp_01_r,
    \lp_st_cnt_reg[0]_0 ,
    \lp_st_cnt_reg[1] ,
    \lp_st_cnt_reg[0]_1 ,
    lp_10_r,
    lp_00_r,
    dl_en_hs_lpn_i_3_0,
    \lp_st_cnt_reg[0]_2 ,
    dl_stopstate_reg_2,
    dl_stopstate,
    dl_en_hs_lpn_reg,
    dl_en_hs_lpn_reg_0,
    dl_en_hs_lpn_reg_1);
  output out;
  output s_level_out_d2_reg_0;
  output [4:0]D;
  output \FSM_sequential_dl_rx_state_reg[2] ;
  output \FSM_sequential_dl_rx_state_reg[0] ;
  output [0:0]\FSM_sequential_dl_rx_state_reg[3] ;
  input rx_dl0_lp_dp;
  input core_clk;
  input [3:0]Q;
  input dl_stopstate_reg;
  input dl_stopstate_reg_0;
  input \lp_st_cnt_reg[0] ;
  input dl_stopstate_reg_1;
  input lp_11_r_dly;
  input \FSM_sequential_dl_rx_state_reg[3]_0 ;
  input \FSM_sequential_dl_rx_state_reg[3]_1 ;
  input lp_01_r;
  input \lp_st_cnt_reg[0]_0 ;
  input [4:0]\lp_st_cnt_reg[1] ;
  input \lp_st_cnt_reg[0]_1 ;
  input lp_10_r;
  input lp_00_r;
  input dl_en_hs_lpn_i_3_0;
  input [1:0]\lp_st_cnt_reg[0]_2 ;
  input dl_stopstate_reg_2;
  input dl_stopstate;
  input dl_en_hs_lpn_reg;
  input dl_en_hs_lpn_reg_0;
  input dl_en_hs_lpn_reg_1;

  wire [4:0]D;
  wire \FSM_sequential_dl_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_dl_rx_state_reg[0] ;
  wire \FSM_sequential_dl_rx_state_reg[2] ;
  wire [0:0]\FSM_sequential_dl_rx_state_reg[3] ;
  wire \FSM_sequential_dl_rx_state_reg[3]_0 ;
  wire \FSM_sequential_dl_rx_state_reg[3]_1 ;
  wire [3:0]Q;
  wire core_clk;
  wire dl_en_hs_lpn_i_3_0;
  wire dl_en_hs_lpn_i_3_n_0;
  wire dl_en_hs_lpn_i_4_n_0;
  wire dl_en_hs_lpn_i_5_n_0;
  wire dl_en_hs_lpn_reg;
  wire dl_en_hs_lpn_reg_0;
  wire dl_en_hs_lpn_reg_1;
  wire dl_stopstate;
  wire dl_stopstate_i_2_n_0;
  wire dl_stopstate_i_3_n_0;
  wire dl_stopstate_i_4__0_n_0;
  wire dl_stopstate_i_5__0_n_0;
  wire dl_stopstate_reg;
  wire dl_stopstate_reg_0;
  wire dl_stopstate_reg_1;
  wire dl_stopstate_reg_2;
  wire lp_00_r;
  wire lp_01_r;
  wire lp_10_r;
  wire lp_11_r_dly;
  wire \lp_st_cnt[0]_i_4_n_0 ;
  wire \lp_st_cnt[4]_i_2_n_0 ;
  wire \lp_st_cnt_reg[0] ;
  wire \lp_st_cnt_reg[0]_0 ;
  wire \lp_st_cnt_reg[0]_1 ;
  wire [1:0]\lp_st_cnt_reg[0]_2 ;
  wire [4:0]\lp_st_cnt_reg[1] ;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  wire s_level_out_d2_reg_0;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d2;
  assign p_level_in_int = rx_dl0_lp_dp;
  LUT4 #(
    .INIT(16'hFFF4)) 
    \FSM_sequential_dl_rx_state[3]_i_10 
       (.I0(s_level_out_d2),
        .I1(\FSM_sequential_dl_rx_state_reg[3]_0 ),
        .I2(lp_00_r),
        .I3(lp_10_r),
        .O(s_level_out_d2_reg_0));
  LUT6 #(
    .INIT(64'h1000000055555555)) 
    \FSM_sequential_dl_rx_state[3]_i_2 
       (.I0(dl_stopstate_reg_0),
        .I1(Q[3]),
        .I2(dl_stopstate_reg_2),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(\FSM_sequential_dl_rx_state[3]_i_8_n_0 ),
        .O(\FSM_sequential_dl_rx_state_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF44F0FF)) 
    \FSM_sequential_dl_rx_state[3]_i_8 
       (.I0(s_level_out_d2),
        .I1(\FSM_sequential_dl_rx_state_reg[3]_0 ),
        .I2(dl_stopstate_reg_1),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\FSM_sequential_dl_rx_state_reg[3]_1 ),
        .O(\FSM_sequential_dl_rx_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h008000FF00800000)) 
    dl_en_hs_lpn_i_1
       (.I0(Q[0]),
        .I1(dl_en_hs_lpn_reg),
        .I2(dl_en_hs_lpn_reg_0),
        .I3(dl_stopstate_reg_0),
        .I4(dl_en_hs_lpn_i_3_n_0),
        .I5(dl_en_hs_lpn_reg_1),
        .O(\FSM_sequential_dl_rx_state_reg[0] ));
  LUT5 #(
    .INIT(32'h28202828)) 
    dl_en_hs_lpn_i_3
       (.I0(dl_en_hs_lpn_i_4_n_0),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\lp_st_cnt_reg[0] ),
        .I4(dl_stopstate_reg_1),
        .O(dl_en_hs_lpn_i_3_n_0));
  LUT6 #(
    .INIT(64'h7477744400330033)) 
    dl_en_hs_lpn_i_4
       (.I0(dl_en_hs_lpn_i_3_0),
        .I1(Q[0]),
        .I2(\lp_st_cnt_reg[0] ),
        .I3(Q[1]),
        .I4(dl_en_hs_lpn_i_5_n_0),
        .I5(Q[2]),
        .O(dl_en_hs_lpn_i_4_n_0));
  LUT4 #(
    .INIT(16'hE0EE)) 
    dl_en_hs_lpn_i_5
       (.I0(lp_00_r),
        .I1(lp_10_r),
        .I2(s_level_out_d2),
        .I3(\FSM_sequential_dl_rx_state_reg[3]_0 ),
        .O(dl_en_hs_lpn_i_5_n_0));
  LUT6 #(
    .INIT(64'h002AFFFF002A0000)) 
    dl_stopstate_i_1
       (.I0(dl_stopstate_i_2_n_0),
        .I1(dl_stopstate_reg_2),
        .I2(Q[2]),
        .I3(dl_stopstate_reg_0),
        .I4(dl_stopstate_i_3_n_0),
        .I5(dl_stopstate),
        .O(\FSM_sequential_dl_rx_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAEF)) 
    dl_stopstate_i_2
       (.I0(dl_stopstate_i_4__0_n_0),
        .I1(\lp_st_cnt_reg[0] ),
        .I2(dl_stopstate_reg_1),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(dl_stopstate_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00480F48)) 
    dl_stopstate_i_3
       (.I0(Q[2]),
        .I1(dl_stopstate_i_5__0_n_0),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(dl_stopstate_reg),
        .I5(dl_stopstate_reg_0),
        .O(dl_stopstate_i_3_n_0));
  LUT6 #(
    .INIT(64'hC808080808080808)) 
    dl_stopstate_i_4__0
       (.I0(\lp_st_cnt_reg[0] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(lp_11_r_dly),
        .I4(s_level_out_d2),
        .I5(\FSM_sequential_dl_rx_state_reg[3]_0 ),
        .O(dl_stopstate_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hBBBBBABBABABAAAB)) 
    dl_stopstate_i_5__0
       (.I0(dl_stopstate_i_4__0_n_0),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(dl_stopstate_reg_1),
        .I4(\lp_st_cnt_reg[0] ),
        .I5(s_level_out_d2_reg_0),
        .O(dl_stopstate_i_5__0_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT6 #(
    .INIT(64'h000000FF01FF01FF)) 
    \lp_st_cnt[0]_i_1 
       (.I0(\lp_st_cnt_reg[0] ),
        .I1(lp_01_r),
        .I2(\lp_st_cnt_reg[0]_0 ),
        .I3(\lp_st_cnt_reg[1] [0]),
        .I4(\lp_st_cnt_reg[0]_1 ),
        .I5(\lp_st_cnt[0]_i_4_n_0 ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \lp_st_cnt[0]_i_4 
       (.I0(\lp_st_cnt_reg[0]_2 [1]),
        .I1(s_level_out_d2),
        .I2(\lp_st_cnt_reg[0]_2 [0]),
        .I3(\FSM_sequential_dl_rx_state_reg[3]_0 ),
        .O(\lp_st_cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00FE000000)) 
    \lp_st_cnt[1]_i_1 
       (.I0(\lp_st_cnt_reg[1] [3]),
        .I1(\lp_st_cnt_reg[1] [4]),
        .I2(\lp_st_cnt_reg[1] [2]),
        .I3(\lp_st_cnt[4]_i_2_n_0 ),
        .I4(\lp_st_cnt_reg[1] [1]),
        .I5(\lp_st_cnt_reg[1] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lp_st_cnt[2]_i_1 
       (.I0(\lp_st_cnt[4]_i_2_n_0 ),
        .I1(\lp_st_cnt_reg[1] [0]),
        .I2(\lp_st_cnt_reg[1] [1]),
        .I3(\lp_st_cnt_reg[1] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lp_st_cnt[3]_i_1 
       (.I0(\lp_st_cnt[4]_i_2_n_0 ),
        .I1(\lp_st_cnt_reg[1] [1]),
        .I2(\lp_st_cnt_reg[1] [0]),
        .I3(\lp_st_cnt_reg[1] [2]),
        .I4(\lp_st_cnt_reg[1] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lp_st_cnt[4]_i_1 
       (.I0(\lp_st_cnt[4]_i_2_n_0 ),
        .I1(\lp_st_cnt_reg[1] [2]),
        .I2(\lp_st_cnt_reg[1] [0]),
        .I3(\lp_st_cnt_reg[1] [1]),
        .I4(\lp_st_cnt_reg[1] [3]),
        .I5(\lp_st_cnt_reg[1] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \lp_st_cnt[4]_i_2 
       (.I0(\lp_st_cnt[0]_i_4_n_0 ),
        .I1(\lp_st_cnt_reg[0] ),
        .I2(lp_01_r),
        .I3(lp_10_r),
        .I4(lp_00_r),
        .O(\lp_st_cnt[4]_i_2_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_18
   (out,
    p_0_out,
    \cl_rx_state_reg[1] ,
    \cl_rx_state_reg[2] ,
    D,
    rx_cl_lp_dn,
    core_clk,
    \cl_rx_state_reg[2]_0 ,
    Q,
    \cl_rx_state_reg[2]_1 ,
    \cl_rx_state_reg[2]_2 ,
    \cl_rx_state_reg[1]_0 ,
    lp_11_r_dly,
    \lp_st_cnt_reg[4] ,
    \lp_st_cnt_reg[0] ,
    \lp_st_cnt_reg[0]_0 );
  output out;
  output [1:0]p_0_out;
  output \cl_rx_state_reg[1] ;
  output \cl_rx_state_reg[2] ;
  output [4:0]D;
  input rx_cl_lp_dn;
  input core_clk;
  input \cl_rx_state_reg[2]_0 ;
  input [1:0]Q;
  input \cl_rx_state_reg[2]_1 ;
  input \cl_rx_state_reg[2]_2 ;
  input \cl_rx_state_reg[1]_0 ;
  input lp_11_r_dly;
  input [4:0]\lp_st_cnt_reg[4] ;
  input [1:0]\lp_st_cnt_reg[0] ;
  input \lp_st_cnt_reg[0]_0 ;

  wire [4:0]D;
  wire [1:0]Q;
  wire \cl_rx_state[2]_i_5_n_0 ;
  wire \cl_rx_state[2]_i_6_n_0 ;
  wire \cl_rx_state_reg[1] ;
  wire \cl_rx_state_reg[1]_0 ;
  wire \cl_rx_state_reg[2] ;
  wire \cl_rx_state_reg[2]_0 ;
  wire \cl_rx_state_reg[2]_1 ;
  wire \cl_rx_state_reg[2]_2 ;
  wire core_clk;
  wire lp_11_r_dly;
  wire \lp_st_cnt[4]_i_2__1_n_0 ;
  wire [1:0]\lp_st_cnt_reg[0] ;
  wire \lp_st_cnt_reg[0]_0 ;
  wire [4:0]\lp_st_cnt_reg[4] ;
  wire [1:0]p_0_out;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d2;
  assign p_level_in_int = rx_cl_lp_dn;
  LUT6 #(
    .INIT(64'h5555FEFE5555AA80)) 
    \cl_rx_state[1]_i_2 
       (.I0(Q[0]),
        .I1(s_level_out_d2),
        .I2(\cl_rx_state_reg[2]_2 ),
        .I3(\cl_rx_state_reg[1]_0 ),
        .I4(\cl_rx_state_reg[2]_1 ),
        .I5(Q[1]),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'h0000FF003F33AA00)) 
    \cl_rx_state[2]_i_2 
       (.I0(\cl_rx_state[2]_i_5_n_0 ),
        .I1(\cl_rx_state[2]_i_6_n_0 ),
        .I2(\cl_rx_state_reg[2]_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\cl_rx_state_reg[2]_1 ),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'h0000000000002AA0)) 
    \cl_rx_state[2]_i_4 
       (.I0(Q[1]),
        .I1(lp_11_r_dly),
        .I2(s_level_out_d2),
        .I3(\cl_rx_state_reg[2]_2 ),
        .I4(\cl_rx_state_reg[2]_1 ),
        .I5(Q[0]),
        .O(\cl_rx_state_reg[2] ));
  LUT3 #(
    .INIT(8'h40)) 
    \cl_rx_state[2]_i_5 
       (.I0(\cl_rx_state_reg[1]_0 ),
        .I1(s_level_out_d2),
        .I2(\cl_rx_state_reg[2]_2 ),
        .O(\cl_rx_state[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cl_rx_state[2]_i_6 
       (.I0(Q[0]),
        .I1(s_level_out_d2),
        .I2(\cl_rx_state_reg[2]_2 ),
        .O(\cl_rx_state[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00202000)) 
    cl_stopstate_i_5
       (.I0(\cl_rx_state_reg[2]_1 ),
        .I1(Q[1]),
        .I2(s_level_out_d2),
        .I3(\cl_rx_state_reg[2]_2 ),
        .I4(Q[0]),
        .O(\cl_rx_state_reg[1] ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT6 #(
    .INIT(64'h0000FEFFFFFFFEFF)) 
    \lp_st_cnt[0]_i_1__1 
       (.I0(\lp_st_cnt_reg[4] [4]),
        .I1(\lp_st_cnt_reg[4] [3]),
        .I2(\lp_st_cnt_reg[4] [2]),
        .I3(\lp_st_cnt_reg[4] [1]),
        .I4(\lp_st_cnt_reg[4] [0]),
        .I5(\lp_st_cnt[4]_i_2__1_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000FF00FE000000)) 
    \lp_st_cnt[1]_i_1__1 
       (.I0(\lp_st_cnt_reg[4] [2]),
        .I1(\lp_st_cnt_reg[4] [3]),
        .I2(\lp_st_cnt_reg[4] [4]),
        .I3(\lp_st_cnt[4]_i_2__1_n_0 ),
        .I4(\lp_st_cnt_reg[4] [1]),
        .I5(\lp_st_cnt_reg[4] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \lp_st_cnt[2]_i_1__1 
       (.I0(\lp_st_cnt[4]_i_2__1_n_0 ),
        .I1(\lp_st_cnt_reg[4] [0]),
        .I2(\lp_st_cnt_reg[4] [1]),
        .I3(\lp_st_cnt_reg[4] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \lp_st_cnt[3]_i_1__1 
       (.I0(\lp_st_cnt[4]_i_2__1_n_0 ),
        .I1(\lp_st_cnt_reg[4] [1]),
        .I2(\lp_st_cnt_reg[4] [0]),
        .I3(\lp_st_cnt_reg[4] [2]),
        .I4(\lp_st_cnt_reg[4] [3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \lp_st_cnt[4]_i_1__1 
       (.I0(\lp_st_cnt[4]_i_2__1_n_0 ),
        .I1(\lp_st_cnt_reg[4] [2]),
        .I2(\lp_st_cnt_reg[4] [0]),
        .I3(\lp_st_cnt_reg[4] [1]),
        .I4(\lp_st_cnt_reg[4] [3]),
        .I5(\lp_st_cnt_reg[4] [4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFFF9009)) 
    \lp_st_cnt[4]_i_2__1 
       (.I0(s_level_out_d2),
        .I1(\lp_st_cnt_reg[0] [0]),
        .I2(\cl_rx_state_reg[2]_2 ),
        .I3(\lp_st_cnt_reg[0] [1]),
        .I4(\lp_st_cnt_reg[0]_0 ),
        .O(\lp_st_cnt[4]_i_2__1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized1_19
   (out,
    \cl_rx_state_reg[1] ,
    \cl_rx_state_reg[1]_0 ,
    D,
    E,
    cl_status_reg_bit_4__0,
    cl_stopstate_reg,
    rx_cl_lp_dp,
    core_clk,
    \init_count_reg[0] ,
    Q,
    cl_init_done_div4clk_reg,
    cl_init_done_div4clk_reg_0,
    \init_count_reg[0]_0 ,
    \init_count_reg[0]_1 ,
    \cl_rx_state_reg[0] ,
    \cl_rx_state_reg[0]_0 ,
    lp_11_r_dly,
    \cl_rx_state_reg[0]_1 ,
    cl_status_reg_bit_4_reg,
    cl_status_reg_bit_4_reg_0,
    cl_stopstate_reg_0,
    cl_stopstate);
  output out;
  output \cl_rx_state_reg[1] ;
  output \cl_rx_state_reg[1]_0 ;
  output [0:0]D;
  output [0:0]E;
  output cl_status_reg_bit_4__0;
  output cl_stopstate_reg;
  input rx_cl_lp_dp;
  input core_clk;
  input \init_count_reg[0] ;
  input [1:0]Q;
  input cl_init_done_div4clk_reg;
  input cl_init_done_div4clk_reg_0;
  input \init_count_reg[0]_0 ;
  input \init_count_reg[0]_1 ;
  input \cl_rx_state_reg[0] ;
  input \cl_rx_state_reg[0]_0 ;
  input lp_11_r_dly;
  input \cl_rx_state_reg[0]_1 ;
  input cl_status_reg_bit_4_reg;
  input cl_status_reg_bit_4_reg_0;
  input cl_stopstate_reg_0;
  input cl_stopstate;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire cl_init_done_div4clk_reg;
  wire cl_init_done_div4clk_reg_0;
  wire \cl_rx_state[0]_i_2_n_0 ;
  wire \cl_rx_state[2]_i_3_n_0 ;
  wire \cl_rx_state_reg[0] ;
  wire \cl_rx_state_reg[0]_0 ;
  wire \cl_rx_state_reg[0]_1 ;
  wire \cl_rx_state_reg[1] ;
  wire \cl_rx_state_reg[1]_0 ;
  wire cl_status_reg_bit_4__0;
  wire cl_status_reg_bit_4_i_2_n_0;
  wire cl_status_reg_bit_4_reg;
  wire cl_status_reg_bit_4_reg_0;
  wire cl_stopstate;
  wire cl_stopstate_i_3_n_0;
  wire cl_stopstate_i_4_n_0;
  wire cl_stopstate_reg;
  wire cl_stopstate_reg_0;
  wire core_clk;
  wire \init_count_reg[0] ;
  wire \init_count_reg[0]_0 ;
  wire \init_count_reg[0]_1 ;
  wire lp_11_r_dly;
  wire p_level_in_int;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign out = s_level_out_d2;
  assign p_level_in_int = rx_cl_lp_dp;
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    cl_init_done_coreclk_i_2
       (.I0(\init_count_reg[0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\cl_rx_state[0]_i_2_n_0 ),
        .I4(cl_init_done_div4clk_reg),
        .I5(cl_init_done_div4clk_reg_0),
        .O(\cl_rx_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000FFFF888DFFFF)) 
    \cl_rx_state[0]_i_1 
       (.I0(Q[1]),
        .I1(\cl_rx_state_reg[0] ),
        .I2(\cl_rx_state[0]_i_2_n_0 ),
        .I3(\cl_rx_state_reg[0]_0 ),
        .I4(Q[0]),
        .I5(\init_count_reg[0] ),
        .O(D));
  LUT2 #(
    .INIT(4'h7)) 
    \cl_rx_state[0]_i_2 
       (.I0(s_level_out_d2),
        .I1(\init_count_reg[0]_0 ),
        .O(\cl_rx_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222202222222222)) 
    \cl_rx_state[2]_i_1 
       (.I0(\cl_rx_state[2]_i_3_n_0 ),
        .I1(\cl_rx_state_reg[0]_1 ),
        .I2(\cl_rx_state_reg[0] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\init_count_reg[0] ),
        .O(E));
  LUT6 #(
    .INIT(64'hCFCCFCCCEFFFFCCC)) 
    \cl_rx_state[2]_i_3 
       (.I0(\cl_rx_state_reg[0]_0 ),
        .I1(Q[1]),
        .I2(s_level_out_d2),
        .I3(\init_count_reg[0]_0 ),
        .I4(Q[0]),
        .I5(\init_count_reg[0] ),
        .O(\cl_rx_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEE0EEEEEE)) 
    cl_status_reg_bit_4_i_1
       (.I0(cl_status_reg_bit_4_i_2_n_0),
        .I1(cl_status_reg_bit_4_reg),
        .I2(Q[1]),
        .I3(cl_status_reg_bit_4_reg_0),
        .I4(\init_count_reg[0]_0 ),
        .I5(s_level_out_d2),
        .O(cl_status_reg_bit_4__0));
  LUT6 #(
    .INIT(64'h0FF0F3200F000320)) 
    cl_status_reg_bit_4_i_2
       (.I0(lp_11_r_dly),
        .I1(\cl_rx_state[0]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\init_count_reg[0] ),
        .I4(Q[0]),
        .I5(\cl_rx_state_reg[0] ),
        .O(cl_status_reg_bit_4_i_2_n_0));
  LUT4 #(
    .INIT(16'hABA8)) 
    cl_stopstate_i_2
       (.I0(cl_stopstate_i_3_n_0),
        .I1(cl_stopstate_i_4_n_0),
        .I2(cl_stopstate_reg_0),
        .I3(cl_stopstate),
        .O(cl_stopstate_reg));
  LUT6 #(
    .INIT(64'hF000F0FFF00022FF)) 
    cl_stopstate_i_3
       (.I0(lp_11_r_dly),
        .I1(\cl_rx_state[0]_i_2_n_0 ),
        .I2(\cl_rx_state_reg[0] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\init_count_reg[0] ),
        .O(cl_stopstate_i_3_n_0));
  LUT6 #(
    .INIT(64'h00F0F02000000020)) 
    cl_stopstate_i_4
       (.I0(lp_11_r_dly),
        .I1(\cl_rx_state[0]_i_2_n_0 ),
        .I2(Q[1]),
        .I3(\init_count_reg[0] ),
        .I4(Q[0]),
        .I5(\cl_rx_state_reg[0] ),
        .O(cl_stopstate_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \init_count[0]_i_1 
       (.I0(\init_count_reg[0] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(s_level_out_d2),
        .I4(\init_count_reg[0]_0 ),
        .I5(\init_count_reg[0]_1 ),
        .O(\cl_rx_state_reg[1]_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(core_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mipi_dphy_v4_2_0_rx_sync_cell" *) 
module bd_91b0_phy_0_mipi_dphy_v4_2_0_rx_sync_cell__parameterized2
   (s_level_out_d3_reg_0,
    out,
    rx_div4_clk);
  output s_level_out_d3_reg_0;
  input out;
  input rx_div4_clk;

  wire p_level_in_int;
  wire rx_div4_clk;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire [1:0]s_level_out_bus_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_level_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d1_cdc_to;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d2;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d3;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d4;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d5;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d6;
  (* async_reg = "true" *) (* shift_extract = "{no}" *) wire s_out_d7;

  assign p_level_in_int = out;
  assign s_level_out_d3_reg_0 = s_level_out_d3;
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(s_out_d2));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(s_level_out_bus_d2[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(s_level_out_bus_d3[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(s_level_out_bus_d3[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(s_level_out_bus_d4[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(s_level_out_bus_d4[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(s_level_out_bus_d5[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(s_level_out_bus_d5[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(s_level_out_bus_d6[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(s_level_out_bus_d6[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(s_out_d3));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(s_out_d4));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(s_out_d5));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(s_out_d6));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(s_out_d7));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(s_level_out_bus_d1_cdc_to[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(s_level_out_bus_d2[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d1_cdc_to_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d2_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d3_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d4_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d5_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* shift_extract = "{no}" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_level_out_d6_reg
       (.C(rx_div4_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
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
