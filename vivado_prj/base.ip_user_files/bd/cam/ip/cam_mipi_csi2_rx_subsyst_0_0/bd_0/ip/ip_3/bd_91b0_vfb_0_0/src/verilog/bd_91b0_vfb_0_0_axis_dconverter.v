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
module bd_91b0_vfb_0_0_axis_dconverter (
  input aclk,
  input aresetn,
  input s_axis_tvalid,
  output s_axis_tready,
  input [64-1:0] s_axis_tdata,
  input [8-1:0] s_axis_tkeep,
  input [32-1:0]  s_axis_tid,
  input [24-1:0] s_axis_tuser,
  input s_axis_tlast,
  output m_axis_tvalid,
  input m_axis_tready,
  output [16-1:0] m_axis_tdata,
  output [2-1:0] m_axis_tkeep,
  output [32-1:0]  m_axis_tid,
  output [3:0] m_axis_tuser,
  output m_axis_tlast
);
bd_91b0_vfb_0_0_axis_converter axis_conv_inst (
  .aclk         (aclk         ),
  .aresetn      (aresetn      ),
  .s_axis_tvalid(s_axis_tvalid),
  .s_axis_tready(s_axis_tready),
  .s_axis_tdata (s_axis_tdata ),
  .s_axis_tkeep (s_axis_tkeep ),
  .s_axis_tid   (s_axis_tid   ),
  .m_axis_tid   (m_axis_tid   ),
  .s_axis_tuser (s_axis_tuser ),
  .m_axis_tuser (m_axis_tuser ),
  .s_axis_tlast (s_axis_tlast ),
  .m_axis_tvalid(m_axis_tvalid),
  .m_axis_tready(m_axis_tready),
  .m_axis_tdata (m_axis_tdata ),
  .m_axis_tkeep (m_axis_tkeep ),
  .m_axis_tlast (m_axis_tlast ) 
);

endmodule
