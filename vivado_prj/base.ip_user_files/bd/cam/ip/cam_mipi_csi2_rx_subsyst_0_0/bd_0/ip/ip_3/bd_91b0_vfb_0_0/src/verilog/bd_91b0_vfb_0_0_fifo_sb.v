// (c) Copyright 2014 - 2015 Xilinx, Inc. All rights reserved.
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
`timescale 1ps/1ps
module bd_91b0_vfb_0_0_fifo_sb (
  input            s_axis_aclk    ,

  input         s_axis_aresetn ,
  input            vfb_clk        ,
  output    s_fifo_tr      ,
  input     s_fifo_tv      ,
  input      [64-1:0]  s_fifo_td      ,
  input      s_fifo_tid    ,   
  input      [1-1:0]  s_fifo_tu      ,
  input [9:0]      s_fifo_tdst      ,
  input      [8-1:0] s_fifo_tk      ,
  input      s_fifo_tl      ,
  input     m_fifo_tr      ,
  output     m_fifo_tv      ,
  output   [64-1:0]   m_fifo_td      ,
  output      m_fifo_tid    ,   
  output [9:0]    m_fifo_tdst    ,   
  output   [1-1:0]  m_fifo_tu      ,
  output    [8-1:0] m_fifo_tk      ,
  output      m_fifo_tl     , 
  output  strm_lb_full   
);

xpm_fifo_axis#(
      .CLOCKING_MODE("independent_clock"), // String
      .ECC_MODE("no_ecc"),            // String
      .FIFO_DEPTH(2048),              // DECIMAL
      .FIFO_MEMORY_TYPE("block"),      // String
      .PACKET_FIFO("false"),          // String
      .PROG_EMPTY_THRESH(10),         // DECIMAL
      .PROG_FULL_THRESH(2043),          // DECIMAL
      .RD_DATA_COUNT_WIDTH(1),        // DECIMAL
      .RELATED_CLOCKS(0),             // DECIMAL
      .SIM_ASSERT_CHK(0),             // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
      .TDATA_WIDTH(64),               // DECIMAL
      .TDEST_WIDTH(10),                // DECIMAL
      .TID_WIDTH(1),                  // DECIMAL
      .TUSER_WIDTH(1),                // DECIMAL
      .USE_ADV_FEATURES("1000"),      // String
      .WR_DATA_COUNT_WIDTH(1)         // DECIMAL
 ) fifo_async_asym(
  .s_aclk            (s_axis_aclk    ),
  .s_aresetn         (s_axis_aresetn ),
  .m_aclk            (vfb_clk        ),
  .s_axis_tready     (s_fifo_tr      ),
  .s_axis_tvalid     (s_fifo_tv      ),
  .s_axis_tdata      (s_fifo_td      ),
  .s_axis_tid      ( s_fifo_tid      ),
  .s_axis_tuser      (s_fifo_tu      ),
  .s_axis_tdest      (s_fifo_tdst      ),
  .s_axis_tkeep      (s_fifo_tk      ),
  .s_axis_tlast      (s_fifo_tl      ),
  .m_axis_tready     (m_fifo_tr      ),
  .m_axis_tvalid     (m_fifo_tv      ),
  .m_axis_tdata      (m_fifo_td      ),
  .m_axis_tid        (m_fifo_tid      ),
  .m_axis_tdest      (m_fifo_tdst     ),
  .m_axis_tuser      (m_fifo_tu      ),
  .m_axis_tkeep      (m_fifo_tk      ),
  .m_axis_tlast      (m_fifo_tl      ),
  .almost_full_axis  (strm_lb_full   )
);
endmodule
