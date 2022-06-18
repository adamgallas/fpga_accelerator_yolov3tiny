
// -- (c) Copyright 2011-2016 Xilinx, Inc. All rights reserved.
// --
// -- This file contains confidential and proprietary information
// -- of Xilinx, Inc. and is protected under U.S. and
// -- international copyright and other intellectual property
// -- laws.
// --
// -- DISCLAIMER
// -- This disclaimer is not a license and does not grant any
// -- rights to the materials distributed herewith. Except as
// -- otherwise provided in a valid license issued to you by
// -- Xilinx, and to the maximum extent permitted by applicable
// -- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// -- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// -- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// -- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// -- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// -- (2) Xilinx shall not be liable (whether in contract or tort,
// -- including negligence, or under any other theory of
// -- liability) for any loss or damage of any kind or nature
// -- related to, arising under or in connection with these
// -- materials, including for any direct, or any indirect,
// -- special, incidental, or consequential loss or damage
// -- (including loss of data, profits, goodwill, or any type of
// -- loss or damage suffered as a result of any action brought
// -- by a third party) even if such damage or loss was
// -- reasonably foreseeable or Xilinx had been advised of the
// -- possibility of the same.
// --
// -- CRITICAL APPLICATIONS
// -- Xilinx products are not designed or intended to be fail-
// -- safe, or for use in any application requiring fail-safe
// -- performance, such as life-support or safety devices or
// -- systems, Class III medical devices, nuclear facilities,
// -- applications related to the deployment of airbags, or any
// -- other applications that could lead to death, personal
// -- injury, or severe property or environmental damage
// -- (individually and collectively, "Critical
// -- Applications"). Customer assumes the sole risk and
// -- liability of any use of Xilinx products in Critical
// -- Applications, subject only to applicable laws and
// -- regulations governing limitations on product liability.
// --
// -- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// -- PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
//
// AXIS Broadcaster
//   Generic single-channel AXIS to multiple channel AXIS.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module top_cam_axis_broadcaster_0_0 #(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
parameter         C_FAMILY           = "rtl",
parameter integer C_NUM_MI_SLOTS     = 2,
parameter integer C_S_AXIS_TDATA_WIDTH = 8,
parameter integer C_M_AXIS_TDATA_WIDTH = 8,
parameter integer C_AXIS_TID_WIDTH   = 1,
parameter integer C_AXIS_TDEST_WIDTH = 1,
parameter integer C_S_AXIS_TUSER_WIDTH = 1,
parameter integer C_M_AXIS_TUSER_WIDTH = 1,
parameter [31:0]  C_AXIS_SIGNAL_SET  = 32'hFF
// C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
//   [0] => TREADY present
//   [1] => TDATA present
//   [2] => TSTRB present, TDATA must be present
//   [3] => TKEEP present, TDATA must be present
//   [4] => TLAST present
//   [5] => TID present
//   [6] => TDEST present
//   [7] => TUSER present
) (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
// System Signals
input wire aclk,
input wire aresetn,
input wire aclken,

// Slave side
input  wire                              s_axis_tvalid,
output wire                              s_axis_tready,
input  wire [C_S_AXIS_TDATA_WIDTH-1:0]   s_axis_tdata,
input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] s_axis_tstrb,
input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] s_axis_tkeep,
input  wire                              s_axis_tlast,
input  wire [C_AXIS_TID_WIDTH-1:0]       s_axis_tid,
input  wire [C_AXIS_TDEST_WIDTH-1:0]     s_axis_tdest,
input  wire [C_S_AXIS_TUSER_WIDTH-1:0]   s_axis_tuser,

// Master side
output wire [C_NUM_MI_SLOTS-1:0]                           m_axis_tvalid,
input  wire [C_NUM_MI_SLOTS-1:0]                           m_axis_tready,
output wire [C_NUM_MI_SLOTS*C_M_AXIS_TDATA_WIDTH-1:0]      m_axis_tdata,
output wire [(C_NUM_MI_SLOTS*C_M_AXIS_TDATA_WIDTH/8)-1:0]  m_axis_tstrb,
output wire [(C_NUM_MI_SLOTS*C_M_AXIS_TDATA_WIDTH/8)-1:0]  m_axis_tkeep,
output wire [C_NUM_MI_SLOTS-1:0]                           m_axis_tlast,
output wire [(C_NUM_MI_SLOTS*C_AXIS_TID_WIDTH)-1:0]        m_axis_tid,
output wire [(C_NUM_MI_SLOTS*C_AXIS_TDEST_WIDTH)-1:0]      m_axis_tdest,
output wire [(C_NUM_MI_SLOTS*C_M_AXIS_TUSER_WIDTH)-1:0]    m_axis_tuser

);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_TPAYLOAD_WIDTH = f_payload_width(C_S_AXIS_TDATA_WIDTH, C_AXIS_TID_WIDTH,
C_AXIS_TDEST_WIDTH, C_S_AXIS_TUSER_WIDTH,
C_AXIS_SIGNAL_SET);



wire [(C_NUM_MI_SLOTS*C_S_AXIS_TDATA_WIDTH)-1:0]            m_axis_tdata_i;
wire [(C_NUM_MI_SLOTS*C_S_AXIS_TDATA_WIDTH/8)-1:0]          m_axis_tkeep_i;
wire [(C_NUM_MI_SLOTS*C_S_AXIS_TDATA_WIDTH/8)-1:0]          m_axis_tstrb_i;
wire [(C_NUM_MI_SLOTS*C_S_AXIS_TUSER_WIDTH)-1:0]            m_axis_tuser_i;

axis_broadcaster_v1_1_20_core #(
.C_FAMILY (C_FAMILY),
.C_NUM_MI_SLOTS ( C_NUM_MI_SLOTS ),
.C_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH ),
.C_AXIS_TID_WIDTH   ( C_AXIS_TID_WIDTH ),
.C_AXIS_TDEST_WIDTH ( C_AXIS_TDEST_WIDTH ),
.C_AXIS_TUSER_WIDTH ( C_S_AXIS_TUSER_WIDTH ),
.C_AXIS_SIGNAL_SET  ( C_AXIS_SIGNAL_SET )
)
broadcaster_core
(
.aclk          (aclk),
.aresetn       (aresetn),
.aclken        (aclken),
.s_axis_tvalid (s_axis_tvalid),
.s_axis_tready (s_axis_tready),
.s_axis_tdata  (s_axis_tdata),
.s_axis_tstrb  (s_axis_tstrb),
.s_axis_tkeep  (s_axis_tkeep),
.s_axis_tlast  (s_axis_tlast),
.s_axis_tid    (s_axis_tid),
.s_axis_tdest  (s_axis_tdest),
.s_axis_tuser  (s_axis_tuser),
.m_axis_tvalid (m_axis_tvalid),
.m_axis_tready (m_axis_tready),
.m_axis_tdata  (m_axis_tdata_i),
.m_axis_tstrb  (m_axis_tstrb_i),
.m_axis_tkeep  (m_axis_tkeep_i),
.m_axis_tlast  (m_axis_tlast),
.m_axis_tid    (m_axis_tid),
.m_axis_tdest  (m_axis_tdest),
.m_axis_tuser  (m_axis_tuser_i)
);

tdata_cam_axis_broadcaster_0_0 #(
.C_S_AXIS_TDATA_WIDTH ( C_NUM_MI_SLOTS * C_S_AXIS_TDATA_WIDTH ),
.C_M_AXIS_TDATA_WIDTH ( C_NUM_MI_SLOTS * C_M_AXIS_TDATA_WIDTH )
)
tdata (
.tdata     (m_axis_tdata_i),
.tdata_out (m_axis_tdata  )
);

assign m_axis_tstrb = (C_S_AXIS_TDATA_WIDTH == C_M_AXIS_TDATA_WIDTH) ? m_axis_tstrb_i : {(C_NUM_MI_SLOTS*(C_M_AXIS_TDATA_WIDTH/8)){1'b0}};
assign m_axis_tkeep = (C_S_AXIS_TDATA_WIDTH == C_M_AXIS_TDATA_WIDTH) ? m_axis_tkeep_i : {(C_NUM_MI_SLOTS*(C_M_AXIS_TDATA_WIDTH/8)){1'b0}};

tuser_cam_axis_broadcaster_0_0 #(
.C_S_AXIS_TUSER_WIDTH ( C_NUM_MI_SLOTS * C_S_AXIS_TUSER_WIDTH ),
.C_M_AXIS_TUSER_WIDTH ( C_NUM_MI_SLOTS * C_M_AXIS_TUSER_WIDTH )
)
tuser (
.tuser     (m_axis_tuser_i),
.tuser_out (m_axis_tuser  )
);

endmodule // axis_broadcaster_top

`default_nettype wire

