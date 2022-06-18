// /////////////////////////////////////////////////////////////////
// (c) Copyright 2015 - 2016 Xilinx, Inc. All rights reserved.	 
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
// ////////////////////////////////////////////////////////////////////
//-----------------------------------------------------------------------------
// bd_91b0_phy_0.v  bd_91b0_phy_0.v 
//-----------------------------------------------------------------------------
//
// Filename        : bd_91b0_phy_0.v
// Version         : v1.0
// Description     : D-PHY top module. This module consists logic for one
//                   clock lane and configured number of data lanes
// Verilog-Standard: Verilog'2001
//-----------------------------------------------------------------------------
//-- Structure: SWAP
//--               -- top.v (MASTER/TX)
//                     -- tx_fab_top.v
//                     -- tx_ioi.v
//                     -- tx_dphy_reg.v
//--               -- top.v (SLAVE/TX)
//                     -- rx_fab_top.v
//                     -- rx_ioi.v
//                     -- rx_dphy_reg.v
//-----------------------------------------------------------------------------
// Naming Conventions:
//      active low signals:                     "*_n"
//      clock signals:                          "clk", "clk_div#", "clk_#x" 
//      reset signals:                          "rst", "rst_n" 
//      parameters:                             "C_*" 
//      user defined types:                     "*_TYPE" 
//      state machine next state:               "*_ns" 
//      state machine current state:            "*_cs" 
//      combinatorial signals:                  "*_com" 
//      pipelined or register delay signals:    "*_d#" 
//      counter signals:                        "*cnt*"
//      clock enable signals:                   "*_ce" 
//      internal version of output port         "*_i"
//      device pins:                            "*_pin" 
//      component instantiations:               "<MODULE>I_<#|FUNC>
//-----------------------------------------------------------------------------

///////////////////////////////////////////////////////////////////////////////
// Module Declaration
///////////////////////////////////////////////////////////////////////////////
`timescale 1ps/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)
module bd_91b0_phy_0
#( 
   // DPHY Function Mode
   // Valid values are MASTER (TX) and SLAVE (RX)
   parameter C_DPHY_MODE = "SLAVE", 
   // DPHY Data Lanes
   // Valid values are from 1 to 4	   
   parameter C_DPHY_LANES = 2, 
   // DPHY Line Rate in Mbps
   // Valid values are from 80 to 1500 in the order of 1 Mbps for D-PHY v1.1 Spec
   // Valid values are from 80 to 2500 in the order of 1 Mbps for D-PHY v1.2 Spec
   // No real values are allowed in Line Rate	   
   parameter C_HS_LINE_RATE = 280,
   // Transmit first deskew calibration sequence by D-PHY TX for line rates above 1.5 Gbps
   parameter C_XMIT_FIRST_DESKEW_SEQ  =  "false",  
   // Transmit periodic deskew calibration sequence by D-PHY TX for line rates above 1.5 Gbps
   parameter C_XMIT_PERIODIC_DESKEW_SEQ  =  "false",  
   // First deskew calibration sequence duration in txbyteclkhs clocks
   parameter C_SKEWCAL_FIRST_TIME  =  4096,  
   // Periodic deskew calibration sequence duration in txbyteclkhs clocks
   parameter C_SKEWCAL_PERIODIC_TIME  =  128,
   // Enable deskew sequence detection logic in D-PHY RX for line rates above 1.5 Gbps
   parameter C_RCVE_DESKEW_SEQ  =  "false",  
   // T_LPX protocol timing parameter in ns
   // Default : 50 ns
   // Valid values are from 50 to 100 	   
   parameter C_LPX_PERIOD = 50,
   // Stable clock period in ns
   parameter C_STABLE_CLK_PERIOD = 5.000,
   // Escape mode clock period in ns
   // Valid range is from 50 to 100 ns (10 MHz to 20 MHz)
   // Usually equals to T_LPX timing parameter	   
   parameter C_ESC_CLK_PERIOD = 50.000,
   // T_WAKEUP timing parameter
   // Valid value is 1 ms for MASTER (TX) and SLAVE (RX)  
   parameter C_WAKEUP = 1000000,  
   // HS [T/R]X Timeout in bytes
   // Valid range is from 1000 to 65541	   
   parameter C_HS_TIMEOUT = 65541,
   // Escape mode timeout in ns
   // TX DPHY use this param as Escape Mode Silence Timeout for LPDT
   // RX DPHY use this param as Escape Mode Timeout for LPDT
   // 32 Bytes x T_LPX(50) x 16  = 25600
   parameter C_ESC_TIMEOUT = 25600,
   // Synchronizer flip-flop stages and arrived using device 
   // characterization metrics
   // Valid range is from 3 to 7	   
   parameter MTBF_SYNC_STAGES = 3,
   parameter C_EN_TIMEOUT_REGS = 0,
   parameter DPHY_PRESET = "CSI2RX_XLNX",
   parameter SUPPORT_LEVEL = 1,
   // AXI-Lite Register Interface Enable	   
   parameter C_EN_REG_IF = 0,
   // Additional debug registers	   
   parameter C_EN_DEBUG_REGS = 0,
   // Simulation control
   parameter C_EXAMPLE_SIMULATION = "false",
   // TXPLL input clock frequency in ns
   parameter C_TXPLL_CLKIN_PERIOD = 8.000,
   // byteclkhs clock period derived from line rate  
   parameter C_DIV4_CLK_PERIOD = 28.571,     
   // Calibration Mode for IDELAY in Slave mode of IP
   parameter C_CAL_MODE = "FIXED",
   parameter C_EN_SSC = "0",
   // IDELAY Tap value when calibration mode is Fixed
   parameter C_IDLY_TAP = 0
   )
   (
       input                core_clk,
       input                core_rst,
       output               rxbyteclkhs,


       output               clkoutphy_out,
       output               pll_lock_out,
       output               system_rst_out,
       output               init_done,

       //Clock lane PPI RX interface 
       output               cl_rxclkactivehs,
       output               cl_stopstate,
       input                cl_enable,
       output               cl_rxulpsclknot,
       output               cl_ulpsactivenot,

       //Data lane - 0 PPI RX high speed signals
       output   [7:0]       dl0_rxdatahs,
       output               dl0_rxvalidhs,
       output               dl0_rxactivehs,
       output               dl0_rxsynchs,

       //Data lane - 0 RX control siganls
       input                dl0_forcerxmode,
       output               dl0_stopstate,
       input                dl0_enable,
       output               dl0_ulpsactivenot,

       //Data lane - 0 RX escape mode signals
       output               dl0_rxclkesc,
       output               dl0_rxlpdtesc,
       output               dl0_rxulpsesc,
       output   [3:0]       dl0_rxtriggeresc,
       output   [7:0]       dl0_rxdataesc,
       output               dl0_rxvalidesc,

       //Data lane - 0 RX error signals
       output               dl0_errsoths,
       output               dl0_errsotsynchs,
       output               dl0_erresc,
       output               dl0_errsyncesc,
       output               dl0_errcontrol,

       //Data lane - 1 PPI RX high speed signals
       output   [7:0]       dl1_rxdatahs,
       output               dl1_rxvalidhs,
       output               dl1_rxactivehs,
       output               dl1_rxsynchs,

       //Data lane - 1 RX control siganls
       input                dl1_forcerxmode,
       output               dl1_stopstate,
       input                dl1_enable,
       output               dl1_ulpsactivenot,

       //Data lane - 1 RX escape mode signals
       output               dl1_rxclkesc,
       output               dl1_rxlpdtesc,
       output               dl1_rxulpsesc,
       output   [3:0]       dl1_rxtriggeresc,
       output   [7:0]       dl1_rxdataesc,
       output               dl1_rxvalidesc,

       //Data lane - 1 RX error signals
       output               dl1_errsoths,
       output               dl1_errsotsynchs,
       output               dl1_erresc,
       output               dl1_errsyncesc,
       output               dl1_errcontrol,






       //IO I/F signals for SLAVE(RX)
       input                clk_rxp,
       input                clk_rxn,
       input    [C_DPHY_LANES -1:0] data_rxp,
       input    [C_DPHY_LANES -1:0] data_rxn
   );
bd_91b0_phy_0_core inst (
.rxbyteclkhs(rxbyteclkhs),
.clkoutphy_out(clkoutphy_out),
.pll_lock_out(pll_lock_out),
.system_rst_out(system_rst_out),
.init_done(init_done),
.cl_rxclkactivehs(cl_rxclkactivehs),
.cl_stopstate(cl_stopstate),
.cl_enable(cl_enable),
.cl_rxulpsclknot(cl_rxulpsclknot),
.cl_ulpsactivenot(cl_ulpsactivenot),
.dl0_rxdatahs(dl0_rxdatahs),
.dl0_rxvalidhs(dl0_rxvalidhs),
.dl0_rxactivehs(dl0_rxactivehs),
.dl0_rxsynchs(dl0_rxsynchs),
.dl0_forcerxmode(dl0_forcerxmode),
.dl0_stopstate(dl0_stopstate),
.dl0_enable(dl0_enable),
.dl0_ulpsactivenot(dl0_ulpsactivenot),
.dl0_rxclkesc(dl0_rxclkesc),
.dl0_rxlpdtesc(dl0_rxlpdtesc),
.dl0_rxulpsesc(dl0_rxulpsesc),
.dl0_rxtriggeresc(dl0_rxtriggeresc),
.dl0_rxdataesc(dl0_rxdataesc),
.dl0_rxvalidesc(dl0_rxvalidesc),
.dl0_errsoths(dl0_errsoths),
.dl0_errsotsynchs(dl0_errsotsynchs),
.dl0_erresc(dl0_erresc),
.dl0_errsyncesc(dl0_errsyncesc),
.dl0_errcontrol(dl0_errcontrol),
.dl1_rxdatahs(dl1_rxdatahs),
.dl1_rxvalidhs(dl1_rxvalidhs),
.dl1_rxactivehs(dl1_rxactivehs),
.dl1_rxsynchs(dl1_rxsynchs),
.dl1_forcerxmode(dl1_forcerxmode),
.dl1_stopstate(dl1_stopstate),
.dl1_enable(dl1_enable),
.dl1_ulpsactivenot(dl1_ulpsactivenot),
.dl1_rxclkesc(dl1_rxclkesc),
.dl1_rxlpdtesc(dl1_rxlpdtesc),
.dl1_rxulpsesc(dl1_rxulpsesc),
.dl1_rxtriggeresc(dl1_rxtriggeresc),
.dl1_rxdataesc(dl1_rxdataesc),
.dl1_rxvalidesc(dl1_rxvalidesc),
.dl1_errsoths(dl1_errsoths),
.dl1_errsotsynchs(dl1_errsotsynchs),
.dl1_erresc(dl1_erresc),
.dl1_errsyncesc(dl1_errsyncesc),
.dl1_errcontrol(dl1_errcontrol),
.clk_rxp(clk_rxp),
.clk_rxn(clk_rxn),
.data_rxp(data_rxp),
.data_rxn(data_rxn),
.core_clk(core_clk),
.core_rst(core_rst) 
);
endmodule
