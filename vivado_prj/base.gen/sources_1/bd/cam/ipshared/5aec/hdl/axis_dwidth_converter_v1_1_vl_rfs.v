//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axisc_downsizer
//   Convert from SI data width > MI datawidth.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_dwidth_converter_v1_1_20_axisc_downsizer #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY             = "virtex6",
   parameter integer C_S_AXIS_TDATA_WIDTH = 96,
   parameter integer C_M_AXIS_TDATA_WIDTH = 32,
   parameter integer C_AXIS_TID_WIDTH     = 1,
   parameter integer C_AXIS_TDEST_WIDTH   = 1,
   parameter integer C_S_AXIS_TUSER_WIDTH = 3,
   parameter integer C_M_AXIS_TUSER_WIDTH = 1,
   parameter [31:0]  C_AXIS_SIGNAL_SET    = 32'hFF ,
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter integer C_RATIO = 3   // Should always be C_RATIO:1 (downsizer)
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESET,
   input wire ACLKEN,

   // Slave side
   input  wire                              S_AXIS_TVALID,
   output wire                              S_AXIS_TREADY,
   input  wire [C_S_AXIS_TDATA_WIDTH-1:0]   S_AXIS_TDATA,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TSTRB,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TKEEP,
   input  wire                              S_AXIS_TLAST,
   input  wire [C_AXIS_TID_WIDTH-1:0]       S_AXIS_TID,
   input  wire [C_AXIS_TDEST_WIDTH-1:0]     S_AXIS_TDEST,
   input  wire [C_S_AXIS_TUSER_WIDTH-1:0]   S_AXIS_TUSER,

   // Master side
   output wire                              M_AXIS_TVALID,
   input  wire                              M_AXIS_TREADY,
   output wire [C_M_AXIS_TDATA_WIDTH-1:0]   M_AXIS_TDATA,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TSTRB,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TKEEP,
   output wire                              M_AXIS_TLAST,
   output wire [C_AXIS_TID_WIDTH-1:0]       M_AXIS_TID,
   output wire [C_AXIS_TDEST_WIDTH-1:0]     M_AXIS_TDEST,
   output wire [C_M_AXIS_TUSER_WIDTH-1:0]   M_AXIS_TUSER
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_S_AXIS_TSTRB_WIDTH = C_S_AXIS_TDATA_WIDTH/8;
localparam P_M_AXIS_TSTRB_WIDTH = C_M_AXIS_TDATA_WIDTH/8;
localparam P_RATIO_WIDTH = f_clogb2(C_RATIO);
// State Machine possible states.
localparam SM_RESET          = 3'b000;
localparam SM_IDLE           = 3'b001;
localparam SM_ACTIVE         = 3'b010;
localparam SM_END           = 3'b011;
localparam SM_END_TO_ACTIVE = 3'b110;

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
(* fsm_encoding = "none" *) reg    [2:0]                    state = SM_RESET;

wire [C_RATIO-1:0]              is_null;
wire [C_RATIO-1:0]              r0_is_end;

wire [C_M_AXIS_TDATA_WIDTH-1:0] data_out; 
wire [P_M_AXIS_TSTRB_WIDTH-1:0] strb_out;
wire [P_M_AXIS_TSTRB_WIDTH-1:0] keep_out;
wire                            last_out;
wire [C_AXIS_TID_WIDTH-1:0]     id_out;
wire [C_AXIS_TDEST_WIDTH-1:0]   dest_out;
wire [C_M_AXIS_TUSER_WIDTH-1:0] user_out;

reg  [C_S_AXIS_TDATA_WIDTH-1:0] r0_data;
reg  [P_S_AXIS_TSTRB_WIDTH-1:0] r0_strb;
reg  [P_S_AXIS_TSTRB_WIDTH-1:0] r0_keep;
reg                             r0_last;
reg  [C_AXIS_TID_WIDTH-1:0]     r0_id;
reg  [C_AXIS_TDEST_WIDTH-1:0]   r0_dest;
reg  [C_S_AXIS_TUSER_WIDTH-1:0] r0_user;
reg  [C_RATIO-1:0]              r0_is_null_r = {C_RATIO{1'b0}};

wire                            r0_load;

reg  [C_M_AXIS_TDATA_WIDTH-1:0] r1_data;
reg  [P_M_AXIS_TSTRB_WIDTH-1:0] r1_strb;
reg  [P_M_AXIS_TSTRB_WIDTH-1:0] r1_keep;
reg                             r1_last;
reg  [C_AXIS_TID_WIDTH-1:0]     r1_id;
reg  [C_AXIS_TDEST_WIDTH-1:0]   r1_dest;
reg  [C_M_AXIS_TUSER_WIDTH-1:0] r1_user;

wire                            r1_load;

reg  [P_RATIO_WIDTH-1:0]        r0_out_sel_r = {P_RATIO_WIDTH{1'b0}};
wire [P_RATIO_WIDTH-1:0]        r0_out_sel_ns;
wire                            sel_adv;
reg  [P_RATIO_WIDTH-1:0]        r0_out_sel_next_r = {P_RATIO_WIDTH{1'b0}} + 1'b1;
wire [P_RATIO_WIDTH-1:0]        r0_out_sel_next_ns;
reg                             xfer_is_end;
reg                             next_xfer_is_end;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////
// S Ready/M Valid outputs are encoded in the current state.
assign S_AXIS_TREADY = state[0];
assign M_AXIS_TVALID = state[1];

// State machine controls M_AXIS_TVALID and S_AXIS_TREADY, and loading
always @(posedge ACLK) begin
  if (ARESET) begin
    state <= SM_RESET;
  end else if (ACLKEN) begin
    case (state)
      SM_RESET: begin
        state <= SM_IDLE;
      end
      
      // No transactions
      SM_IDLE: begin
        if (S_AXIS_TVALID) begin
          state <= SM_ACTIVE;
        end
        else begin
          state <= SM_IDLE;
        end
      end

      // Active entry in holding register r0
      SM_ACTIVE: begin
        if (M_AXIS_TREADY & r0_is_end[0]) begin
          state <= SM_IDLE;
        end
        else if (M_AXIS_TREADY & next_xfer_is_end) begin
          state <= SM_END;
        end
        else begin
          state <= SM_ACTIVE;
        end
      end

      // Entry in last transfer register r1.
      SM_END: begin
        if (M_AXIS_TREADY & S_AXIS_TVALID) begin
          state <= SM_ACTIVE;
        end
        else if (M_AXIS_TREADY & ~S_AXIS_TVALID) begin
          state <= SM_IDLE;
        end
        else if (~M_AXIS_TREADY & S_AXIS_TVALID) begin
          state <= SM_END_TO_ACTIVE;
        end
        else begin
          state <= SM_END;
        end
      end
        
      SM_END_TO_ACTIVE: begin
        if (M_AXIS_TREADY) begin
          state <= SM_ACTIVE;
        end
        else begin
          state <= SM_END_TO_ACTIVE;
        end
      end

      default: begin
        state <= SM_IDLE;
      end

    endcase // case (state)
  end
end 

// Algorithm to figure out which beat is the last non-null transfer. Split into 2 steps.
// 1) Figuring out which output transfers are null before storing in r0.
//    (cycle steal to reduce critical path).
// 2) For transfer X, if transfer X+1 to transfer C_RATIO-1 is null, then transfer
//    X is the new END transfer for the split. Transfer C_RATIO-1 is always marked
//    as END.
genvar i; 
generate
  if (C_AXIS_SIGNAL_SET[G_INDX_SS_TKEEP]) begin : gen_tkeep_is_enabled
    for (i = 0; i < C_RATIO-1; i = i + 1) begin : gen_is_null 
      // 1)
      assign is_null[i] = ~(|S_AXIS_TKEEP[i*P_M_AXIS_TSTRB_WIDTH +: P_M_AXIS_TSTRB_WIDTH]);
      // 2)
      assign r0_is_end[i] =  (&r0_is_null_r[C_RATIO-1:i+1]);
    end
    assign is_null[C_RATIO-1] = ~(|S_AXIS_TKEEP[(C_RATIO-1)*P_M_AXIS_TSTRB_WIDTH +: P_M_AXIS_TSTRB_WIDTH]);
    assign r0_is_end[C_RATIO-1] = 1'b1;
  end
  else begin : gen_tkeep_is_disabled
    assign is_null = {C_RATIO{1'b0}};
    assign r0_is_end = {1'b1, {C_RATIO-1{1'b0}}};
  end
endgenerate

assign M_AXIS_TDATA = data_out[0+:C_M_AXIS_TDATA_WIDTH];
assign M_AXIS_TSTRB = strb_out[0+:P_M_AXIS_TSTRB_WIDTH];
assign M_AXIS_TKEEP = keep_out[0+:P_M_AXIS_TSTRB_WIDTH];
assign M_AXIS_TLAST = last_out;
assign M_AXIS_TID   = id_out[0+:C_AXIS_TID_WIDTH];
assign M_AXIS_TDEST = dest_out[0+:C_AXIS_TDEST_WIDTH];
assign M_AXIS_TUSER = user_out[0+:C_M_AXIS_TUSER_WIDTH];

// Select data output by shifting data right, upper most datum is always from r1
assign data_out = {r1_data, r0_data[0+:C_M_AXIS_TDATA_WIDTH*(C_RATIO-1)]} >> (C_M_AXIS_TDATA_WIDTH*r0_out_sel_r);
assign strb_out = {r1_strb, r0_strb[0+:P_M_AXIS_TSTRB_WIDTH*(C_RATIO-1)]} >> (P_M_AXIS_TSTRB_WIDTH*r0_out_sel_r);
assign keep_out = {r1_keep, r0_keep[0+:P_M_AXIS_TSTRB_WIDTH*(C_RATIO-1)]} >> (P_M_AXIS_TSTRB_WIDTH*r0_out_sel_r);
assign last_out = (state == SM_END || state == SM_END_TO_ACTIVE) ? r1_last : r0_last & r0_is_end[0];
assign id_out   = (state == SM_END || state == SM_END_TO_ACTIVE) ? r1_id : r0_id;
assign dest_out = (state == SM_END || state == SM_END_TO_ACTIVE) ? r1_dest : r0_dest;
assign user_out = {r1_user, r0_user[0+:C_M_AXIS_TUSER_WIDTH*(C_RATIO-1)]} >> (C_M_AXIS_TUSER_WIDTH*r0_out_sel_r);

// First register stores the incoming transfer.
always @(posedge ACLK) begin
  if (ACLKEN) begin
    r0_data    <= r0_load ? S_AXIS_TDATA : r0_data;
    r0_strb    <= r0_load ? S_AXIS_TSTRB : r0_strb;
    r0_keep    <= r0_load ? S_AXIS_TKEEP : r0_keep;
    r0_last    <= r0_load ? S_AXIS_TLAST : r0_last;
    r0_id      <= r0_load ? S_AXIS_TID   : r0_id  ;
    r0_dest    <= r0_load ? S_AXIS_TDEST : r0_dest;
    r0_user    <= r0_load ? S_AXIS_TUSER : r0_user;
  end
end

// r0_is_null_r must always be set to known values to avoid x propagations.
always @(posedge ACLK) begin
  if (ARESET) begin
    r0_is_null_r <= {C_RATIO{1'b0}};
  end
  else if (ACLKEN) begin
    r0_is_null_r <= r0_load & S_AXIS_TVALID ? is_null : r0_is_null_r;
  end
end

assign r0_load = (state == SM_IDLE) || (state == SM_END);
// Second register only stores a single slice of r0.
always @(posedge ACLK) begin
  if (ACLKEN) begin
    r1_data    <= r1_load ? r0_data >> (C_M_AXIS_TDATA_WIDTH*r0_out_sel_next_r) : r1_data;
    r1_strb    <= r1_load ? r0_strb >> (P_M_AXIS_TSTRB_WIDTH*r0_out_sel_next_r) : r1_strb;
    r1_keep    <= r1_load ? r0_keep >> (P_M_AXIS_TSTRB_WIDTH*r0_out_sel_next_r) : r1_keep;
    r1_last    <= r1_load ? r0_last : r1_last;
    r1_id      <= r1_load ? r0_id   : r1_id  ;
    r1_dest    <= r1_load ? r0_dest : r1_dest;
    r1_user    <= r1_load ? r0_user >> (C_M_AXIS_TUSER_WIDTH*r0_out_sel_next_r) : r1_user;
  end
end

assign r1_load = (state == SM_ACTIVE);

// Counter to select which datum to send.
always @(posedge ACLK) begin
  if (ARESET) begin
    r0_out_sel_r <= {P_RATIO_WIDTH{1'b0}};
  end else if (ACLKEN) begin
    r0_out_sel_r <= r0_out_sel_ns;
 end
end

assign r0_out_sel_ns = (xfer_is_end & sel_adv) || (state == SM_IDLE) ? {P_RATIO_WIDTH{1'b0}} 
                       : next_xfer_is_end & sel_adv ? C_RATIO[P_RATIO_WIDTH-1:0]-1'b1 
                       : sel_adv ? r0_out_sel_next_r : r0_out_sel_r; 

assign sel_adv = M_AXIS_TREADY;


// Count ahead to the next value
always @(posedge ACLK) begin
  if (ARESET) begin
    r0_out_sel_next_r <= {P_RATIO_WIDTH{1'b0}} + 1'b1;
  end else if (ACLKEN) begin
    r0_out_sel_next_r <= r0_out_sel_next_ns;
 end
end

assign r0_out_sel_next_ns = (xfer_is_end & sel_adv) || (state == SM_IDLE) ? {P_RATIO_WIDTH{1'b0}} + 1'b1
                            : ~next_xfer_is_end & sel_adv ? r0_out_sel_next_r + 1'b1
                            : r0_out_sel_next_r;

always @(*) begin
  xfer_is_end = r0_is_end[r0_out_sel_r];
end

always @(*) begin
  next_xfer_is_end = r0_is_end[r0_out_sel_next_r];
end

endmodule // axisc_downsizer

`default_nettype wire


//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axisc_downsizer
//   Convert from SI data width < MI datawidth.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_dwidth_converter_v1_1_20_axisc_upsizer #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY             = "virtex6",
   parameter integer C_S_AXIS_TDATA_WIDTH = 32,
   parameter integer C_M_AXIS_TDATA_WIDTH = 96,
   parameter integer C_AXIS_TID_WIDTH     = 1,
   parameter integer C_AXIS_TDEST_WIDTH   = 1,
   parameter integer C_S_AXIS_TUSER_WIDTH = 1,
   parameter integer C_M_AXIS_TUSER_WIDTH = 3,
   parameter [31:0]  C_AXIS_SIGNAL_SET    = 32'hFF ,
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present
   //   [1] => TDATA present
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   parameter integer C_RATIO = 3   // Should always be 1:C_RATIO (upsizer)
   )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
   // System Signals
   input wire ACLK,
   input wire ARESET,
   input wire ACLKEN,

   // Slave side
   input  wire                              S_AXIS_TVALID,
   output wire                              S_AXIS_TREADY,
   input  wire [C_S_AXIS_TDATA_WIDTH-1:0]   S_AXIS_TDATA,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TSTRB,
   input  wire [C_S_AXIS_TDATA_WIDTH/8-1:0] S_AXIS_TKEEP,
   input  wire                              S_AXIS_TLAST,
   input  wire [C_AXIS_TID_WIDTH-1:0]       S_AXIS_TID,
   input  wire [C_AXIS_TDEST_WIDTH-1:0]     S_AXIS_TDEST,
   input  wire [C_S_AXIS_TUSER_WIDTH-1:0]   S_AXIS_TUSER,

   // Master side
   output wire                              M_AXIS_TVALID,
   input  wire                              M_AXIS_TREADY,
   output wire [C_M_AXIS_TDATA_WIDTH-1:0]   M_AXIS_TDATA,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TSTRB,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] M_AXIS_TKEEP,
   output wire                              M_AXIS_TLAST,
   output wire [C_AXIS_TID_WIDTH-1:0]       M_AXIS_TID,
   output wire [C_AXIS_TDEST_WIDTH-1:0]     M_AXIS_TDEST,
   output wire [C_M_AXIS_TUSER_WIDTH-1:0]   M_AXIS_TUSER
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam P_READY_EXIST = C_AXIS_SIGNAL_SET[0];
localparam P_DATA_EXIST  = C_AXIS_SIGNAL_SET[1];
localparam P_STRB_EXIST  = C_AXIS_SIGNAL_SET[2];
localparam P_KEEP_EXIST  = C_AXIS_SIGNAL_SET[3];
localparam P_LAST_EXIST  = C_AXIS_SIGNAL_SET[4];
localparam P_ID_EXIST    = C_AXIS_SIGNAL_SET[5];
localparam P_DEST_EXIST  = C_AXIS_SIGNAL_SET[6];
localparam P_USER_EXIST  = C_AXIS_SIGNAL_SET[7];
localparam P_S_AXIS_TSTRB_WIDTH = C_S_AXIS_TDATA_WIDTH/8;
localparam P_M_AXIS_TSTRB_WIDTH = C_M_AXIS_TDATA_WIDTH/8;

// State Machine possible states. Bits 1:0 used to encode output signals.
//                                     /--- M_AXIS_TVALID state
//                                     |/-- S_AXIS_TREADY state
localparam SM_RESET              = 3'b000; // De-assert Ready during reset
localparam SM_IDLE               = 3'b001; // R0 reg is empty
localparam SM_ACTIVE             = 3'b101; // R0 reg is active
localparam SM_END                = 3'b011; // R0 reg is empty and ACC reg is active
localparam SM_END_TO_ACTIVE      = 3'b010; // R0/ACC reg are both active.

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
(* fsm_encoding = "none" *)
reg  [2:0]                      state = SM_RESET;

reg  [C_M_AXIS_TDATA_WIDTH-1:0] acc_data;
reg  [P_M_AXIS_TSTRB_WIDTH-1:0] acc_strb;
reg  [P_M_AXIS_TSTRB_WIDTH-1:0] acc_keep;
reg                             acc_last;
reg  [C_AXIS_TID_WIDTH-1:0]     acc_id;
reg  [C_AXIS_TDEST_WIDTH-1:0]   acc_dest;
reg  [C_M_AXIS_TUSER_WIDTH-1:0] acc_user;

wire [C_RATIO-1:0]              acc_reg_en;
reg  [C_RATIO-1:0]              r0_reg_sel = {{C_RATIO-1{1'b0}},1'b1}; // 1-hot
wire                            next_xfer_is_end;

reg  [C_S_AXIS_TDATA_WIDTH-1:0] r0_data;
reg  [P_S_AXIS_TSTRB_WIDTH-1:0] r0_strb;
reg  [P_S_AXIS_TSTRB_WIDTH-1:0] r0_keep;
reg                             r0_last;
reg  [C_AXIS_TID_WIDTH-1:0]     r0_id;
reg  [C_AXIS_TDEST_WIDTH-1:0]   r0_dest;
reg  [C_S_AXIS_TUSER_WIDTH-1:0] r0_user;

wire                            id_match;
wire                            dest_match;
wire                            id_dest_mismatch;

////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

// S Ready/M Valid outputs are encoded in the current state.
assign S_AXIS_TREADY = state[0];
assign M_AXIS_TVALID = state[1];

// State machine controls M_AXIS_TVALID and S_AXIS_TREADY, and loading
always @(posedge ACLK) begin
  if (ARESET) begin
    state <= SM_RESET;
  end else if (ACLKEN) begin
    case (state)
      SM_RESET: begin
        state <= SM_IDLE;
      end
      
      SM_IDLE: begin
        if (S_AXIS_TVALID & id_dest_mismatch & ~r0_reg_sel[0]) begin
          state <= SM_END_TO_ACTIVE;
        end
        else if (S_AXIS_TVALID & next_xfer_is_end) begin
          state <= SM_END;
        end
        else if (S_AXIS_TVALID) begin
          state <= SM_ACTIVE;
        end
        else begin
          state <= SM_IDLE;
        end
      end

      SM_ACTIVE: begin 
        if (S_AXIS_TVALID & (id_dest_mismatch | r0_last)) begin
          state <= SM_END_TO_ACTIVE;
        end
        else if ((~S_AXIS_TVALID & r0_last) | (S_AXIS_TVALID & next_xfer_is_end)) begin
          state <= SM_END;
        end
        else if (S_AXIS_TVALID & ~next_xfer_is_end) begin
          state <= SM_ACTIVE;
        end
        else begin 
          state <= SM_IDLE;
        end
      end

      SM_END: begin
        if (M_AXIS_TREADY & S_AXIS_TVALID) begin
          state <= SM_ACTIVE;
        end
        else if ( ~M_AXIS_TREADY & S_AXIS_TVALID) begin
          state <= SM_END_TO_ACTIVE;
        end
        else if ( M_AXIS_TREADY & ~S_AXIS_TVALID) begin 
          state <= SM_IDLE;
        end
        else begin
          state <= SM_END;
        end
      end

      SM_END_TO_ACTIVE: begin
        if (M_AXIS_TREADY) begin
          state <= SM_ACTIVE;
        end
        else begin
          state <= SM_END_TO_ACTIVE;
        end
      end

      default: begin
        state <= SM_IDLE;
      end

    endcase // case (state)
  end
end 


assign M_AXIS_TDATA = acc_data;
assign M_AXIS_TSTRB = acc_strb;
assign M_AXIS_TKEEP = acc_keep;
assign M_AXIS_TUSER = acc_user;

generate 
  genvar i;
  // DATA/USER/STRB/KEEP accumulators
  always @(posedge ACLK) begin
    if (ACLKEN) begin
      acc_data[0*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH] <= acc_reg_en[0] ? r0_data
        : acc_data[0*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH];
      acc_user[0*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH] <= acc_reg_en[0] ? r0_user
        : acc_user[0*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH];
      acc_strb[0*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= acc_reg_en[0] ? r0_strb
        : acc_strb[0*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
      acc_keep[0*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= acc_reg_en[0] ? r0_keep
        : acc_keep[0*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
    end
  end
  for (i = 1; i < C_RATIO-1; i = i + 1) begin : gen_data_accumulator
    always @(posedge ACLK) begin
      if (ACLKEN) begin
        acc_data[i*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH] <= acc_reg_en[i] ? r0_data
          : acc_data[i*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH];
        acc_user[i*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH] <= acc_reg_en[i] ? r0_user
          : acc_user[i*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH];
        acc_strb[i*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= acc_reg_en[0] ? {P_S_AXIS_TSTRB_WIDTH{1'b0}} 
          : acc_reg_en[i] ? r0_strb : acc_strb[i*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
        acc_keep[i*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= acc_reg_en[0] ? {P_S_AXIS_TSTRB_WIDTH{1'b0}} 
          : acc_reg_en[i] ? r0_keep : acc_keep[i*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
      end
    end
  end
  always @(posedge ACLK) begin
    if (ACLKEN) begin
      acc_data[(C_RATIO-1)*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH] <= (state == SM_IDLE) | (state == SM_ACTIVE) 
        ? S_AXIS_TDATA : acc_data[(C_RATIO-1)*C_S_AXIS_TDATA_WIDTH+:C_S_AXIS_TDATA_WIDTH];
      acc_user[(C_RATIO-1)*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH] <= (state == SM_IDLE) | (state == SM_ACTIVE) 
        ? S_AXIS_TUSER : acc_user[(C_RATIO-1)*C_S_AXIS_TUSER_WIDTH+:C_S_AXIS_TUSER_WIDTH];
      acc_strb[(C_RATIO-1)*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= (acc_reg_en[0] && C_RATIO > 2) | (state == SM_ACTIVE & r0_last) | (id_dest_mismatch & (state == SM_ACTIVE | state == SM_IDLE))
        ? {P_S_AXIS_TSTRB_WIDTH{1'b0}} : (state == SM_IDLE) | (state == SM_ACTIVE) 
        ? S_AXIS_TSTRB : acc_strb[(C_RATIO-1)*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
      acc_keep[(C_RATIO-1)*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH] <= (acc_reg_en[0] && C_RATIO > 2) | (state == SM_ACTIVE & r0_last) | (id_dest_mismatch & (state == SM_ACTIVE| state == SM_IDLE))
        ? {P_S_AXIS_TSTRB_WIDTH{1'b0}} : (state == SM_IDLE) | (state == SM_ACTIVE) 
        ? S_AXIS_TKEEP : acc_keep[(C_RATIO-1)*P_S_AXIS_TSTRB_WIDTH+:P_S_AXIS_TSTRB_WIDTH];
    end
  end

endgenerate

assign acc_reg_en = (state == SM_ACTIVE) ? r0_reg_sel : {C_RATIO{1'b0}};

// Accumulator selector (1 hot left barrel shifter)
always @(posedge ACLK) begin
  if (ARESET) begin
    r0_reg_sel[0] <= 1'b1;
    r0_reg_sel[1+:C_RATIO-1] <= {C_RATIO{1'b0}};
  end else if (ACLKEN) begin
    r0_reg_sel[0]            <= M_AXIS_TVALID & M_AXIS_TREADY ? 1'b1              
        : (state == SM_ACTIVE) ? 1'b0 : r0_reg_sel[0];
    r0_reg_sel[1+:C_RATIO-1] <= M_AXIS_TVALID & M_AXIS_TREADY ? {C_RATIO-1{1'b0}} 
        : (state == SM_ACTIVE) ? r0_reg_sel[0+:C_RATIO-1] : r0_reg_sel[1+:C_RATIO-1];
  end
end

assign next_xfer_is_end  = (r0_reg_sel[C_RATIO-2] && (state == SM_ACTIVE)) | r0_reg_sel[C_RATIO-1];

always @(posedge ACLK) begin 
  if (ACLKEN) begin
    r0_data <= S_AXIS_TREADY ? S_AXIS_TDATA : r0_data;
    r0_strb <= S_AXIS_TREADY ? S_AXIS_TSTRB : r0_strb;
    r0_keep <= S_AXIS_TREADY ? S_AXIS_TKEEP : r0_keep;
    r0_last <= (!P_LAST_EXIST) ? 1'b0 : S_AXIS_TREADY ? S_AXIS_TLAST : r0_last;
    r0_id   <= (S_AXIS_TREADY & S_AXIS_TVALID) ? S_AXIS_TID   : r0_id;
    r0_dest <= (S_AXIS_TREADY & S_AXIS_TVALID) ? S_AXIS_TDEST : r0_dest;
    r0_user <= S_AXIS_TREADY ? S_AXIS_TUSER : r0_user;
  end
end

assign M_AXIS_TLAST = acc_last;

always @(posedge ACLK) begin
  if (ACLKEN) begin
    acc_last <= (state == SM_END | state == SM_END_TO_ACTIVE) ? acc_last : 
                (state == SM_ACTIVE & r0_last ) ? 1'b1 :
                (id_dest_mismatch & (state == SM_IDLE)) ? 1'b0 : 
                (id_dest_mismatch & (state == SM_ACTIVE)) ? r0_last :
                 S_AXIS_TLAST;
  end
end

assign M_AXIS_TID   = acc_id;
assign M_AXIS_TDEST = acc_dest;

always @(posedge ACLK) begin
  if (ACLKEN) begin
    acc_id <= acc_reg_en[0] ? r0_id : acc_id;
    acc_dest <= acc_reg_en[0] ? r0_dest : acc_dest;
  end
end

assign id_match = P_ID_EXIST ? (S_AXIS_TID == r0_id) : 1'b1;
assign dest_match = P_DEST_EXIST ?  (S_AXIS_TDEST == r0_dest) : 1'b1;

assign id_dest_mismatch = (~id_match | ~dest_match) ? 1'b1 : 1'b0;

endmodule // axisc_upsizer

`default_nettype wire


//  (c) Copyright 2011-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axis_dwidth_converter
//   Converts data when C_S_AXIS_TDATA_WIDTH != C_M_AXIS_TDATA_WIDTH.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axis_dwidth_converter
//     register_slice (instantiated with upsizer)
//     axisc_upsizer
//     axisc_downsizer
//     register_slice (instantiated with downsizer)
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axis_dwidth_converter_v1_1_20_axis_dwidth_converter #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
   parameter         C_FAMILY           = "virtex7",
   parameter integer C_S_AXIS_TDATA_WIDTH = 32,
   parameter integer C_M_AXIS_TDATA_WIDTH = 32,
   parameter integer C_AXIS_TID_WIDTH   = 1,
   parameter integer C_AXIS_TDEST_WIDTH = 1,
   parameter integer C_S_AXIS_TUSER_WIDTH = 1,
   parameter integer C_M_AXIS_TUSER_WIDTH = 1,
   // Ratio of C_S_AXIS_TDATA_WIDTH : C_M_AXIS_TDATA_WIDTH must be the same as 
   // the ratio of C_S_AXIS_TUSER_WIDTH : C_M_AXIS_TUSER_WIDTH if USER signals are present.
   parameter [31:0]  C_AXIS_SIGNAL_SET  = 32'hFF
   // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
   //   [0] => TREADY present (Required)
   //   [1] => TDATA present (Required, used to calculate ratios)
   //   [2] => TSTRB present, TDATA must be present
   //   [3] => TKEEP present, TDATA must be present (Required if TLAST, TID,
   //   TDEST present
   //   [4] => TLAST present
   //   [5] => TID present
   //   [6] => TDEST present
   //   [7] => TUSER present
   )
  (
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
   output wire                              m_axis_tvalid,
   input  wire                              m_axis_tready,
   output wire [C_M_AXIS_TDATA_WIDTH-1:0]   m_axis_tdata,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] m_axis_tstrb,
   output wire [C_M_AXIS_TDATA_WIDTH/8-1:0] m_axis_tkeep,
   output wire                              m_axis_tlast,
   output wire [C_AXIS_TID_WIDTH-1:0]       m_axis_tid,
   output wire [C_AXIS_TDEST_WIDTH-1:0]     m_axis_tdest,
   output wire [C_M_AXIS_TUSER_WIDTH-1:0]   m_axis_tuser
   );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
// TKEEP required if TID/TLAST/TDEST signals enabled
localparam [31:0]  P_SS_TKEEP_REQUIRED = (C_AXIS_SIGNAL_SET & (G_MASK_SS_TID | G_MASK_SS_TDEST | G_MASK_SS_TLAST)) 
                                          ? G_MASK_SS_TKEEP : 32'h0;
// TREADY/TDATA must always be present
localparam [31:0]  P_AXIS_SIGNAL_SET  = C_AXIS_SIGNAL_SET | G_MASK_SS_TREADY | G_MASK_SS_TDATA | P_SS_TKEEP_REQUIRED;
localparam P_S_RATIO = f_lcm(C_S_AXIS_TDATA_WIDTH, C_M_AXIS_TDATA_WIDTH) / C_S_AXIS_TDATA_WIDTH;
localparam P_M_RATIO = f_lcm(C_S_AXIS_TDATA_WIDTH, C_M_AXIS_TDATA_WIDTH) / C_M_AXIS_TDATA_WIDTH;
localparam P_D2_TDATA_WIDTH = C_S_AXIS_TDATA_WIDTH * P_S_RATIO;
// To protect against bad TUSER M/S ratios when not using TUSER, base all
// TUSER widths off of the calculated ratios and the slave tuser input width.
localparam P_D1_TUSER_WIDTH = C_AXIS_SIGNAL_SET[G_INDX_SS_TUSER] ? C_S_AXIS_TUSER_WIDTH : C_S_AXIS_TDATA_WIDTH/8;
localparam P_D2_TUSER_WIDTH = P_D1_TUSER_WIDTH * P_S_RATIO;
localparam P_D3_TUSER_WIDTH = P_D2_TUSER_WIDTH / P_M_RATIO;

localparam P_D1_REG_CONFIG = 0; // Disable
localparam P_D3_REG_CONFIG = 0; // Disable

////////////////////////////////////////////////////////////////////////////////
// DRCs
////////////////////////////////////////////////////////////////////////////////
// synthesis translate_off
integer retval;
integer retval_all;
initial
begin : DRC
  retval_all = 0;
  t_check_tdata_width(C_S_AXIS_TDATA_WIDTH, "C_S_AXIS_TDATA_WIDTH", "axis_dwidth_converter", G_TASK_SEVERITY_ERR, retval);
  retval_all = retval_all | retval;

  t_check_tdata_width(C_M_AXIS_TDATA_WIDTH, "C_M_AXIS_TDATA_WIDTH", "axis_dwidth_converter", G_TASK_SEVERITY_ERR, retval);
  retval_all = retval_all | retval;
  if (C_AXIS_SIGNAL_SET[G_INDX_SS_TUSER]) begin
    t_check_tuser_width (
      C_S_AXIS_TUSER_WIDTH, "C_S_AXIS_TUSER_WIDTH"   , 
      C_S_AXIS_TDATA_WIDTH, "C_S_AXIS_TDATA_WIDTH"   , 
      "axis_dwidth_converter", G_TASK_SEVERITY_ERR , 
      retval
    );
    retval_all = retval_all | retval;
    t_check_tuser_width(
      C_M_AXIS_TUSER_WIDTH, "C_M_AXIS_TUSER_WIDTH",
      C_M_AXIS_TDATA_WIDTH, "C_M_AXIS_TDATA_WIDTH",
      "axis_dwidth_converter", G_TASK_SEVERITY_ERR,
      retval
    );
    retval_all = retval_all | retval;
  end
  else begin 
    // No check
  end
  if (retval_all > 0) begin
    $stop;
  end else begin
    // Do nothing
  end


end
// synthesis translate_on
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////

reg                               areset_r = 1'b0;

// Tie-offs for required signals if not present on inputs
wire                              tready_in;
wire [C_S_AXIS_TDATA_WIDTH-1:0]   tdata_in;
wire [C_S_AXIS_TDATA_WIDTH/8-1:0] tkeep_in;
wire [P_D1_TUSER_WIDTH-1:0]       tuser_in;

// Output of first register stage
wire                              d1_valid;
wire                              d1_ready;
wire [C_S_AXIS_TDATA_WIDTH-1:0]   d1_data;
wire [C_S_AXIS_TDATA_WIDTH/8-1:0] d1_strb;
wire [C_S_AXIS_TDATA_WIDTH/8-1:0] d1_keep;
wire                              d1_last;
wire [C_AXIS_TID_WIDTH-1:0]       d1_id;
wire [C_AXIS_TDEST_WIDTH-1:0]     d1_dest;
wire [P_D1_TUSER_WIDTH-1:0]       d1_user;

// Output of upsizer stage
wire                              d2_valid;
wire                              d2_ready;
wire [P_D2_TDATA_WIDTH-1:0]       d2_data;
wire [P_D2_TDATA_WIDTH/8-1:0]     d2_strb;
wire [P_D2_TDATA_WIDTH/8-1:0]     d2_keep;
wire                              d2_last;
wire [C_AXIS_TID_WIDTH-1:0]       d2_id;
wire [C_AXIS_TDEST_WIDTH-1:0]     d2_dest;
wire [P_D2_TUSER_WIDTH-1:0]       d2_user;

// Output of downsizer stage
wire                              d3_valid;
wire                              d3_ready;
wire [C_M_AXIS_TDATA_WIDTH-1:0]   d3_data;
wire [C_M_AXIS_TDATA_WIDTH/8-1:0] d3_strb;
wire [C_M_AXIS_TDATA_WIDTH/8-1:0] d3_keep;
wire                              d3_last;
wire [C_AXIS_TID_WIDTH-1:0]       d3_id;
wire [C_AXIS_TDEST_WIDTH-1:0]     d3_dest;
wire [P_D3_TUSER_WIDTH-1:0]       d3_user;
wire [P_D3_TUSER_WIDTH-1:0]       m_axis_tuser_out;



////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

always @(posedge aclk) begin
  areset_r <= ~aresetn;
end

// Tie-offs for required signals if not present on inputs
assign tready_in = C_AXIS_SIGNAL_SET[G_INDX_SS_TREADY] ? m_axis_tready : 1'b1;
assign tdata_in = C_AXIS_SIGNAL_SET[G_INDX_SS_TDATA] ? s_axis_tdata : {C_S_AXIS_TDATA_WIDTH{1'b0}};
assign tkeep_in = C_AXIS_SIGNAL_SET[G_INDX_SS_TKEEP] ? s_axis_tkeep : {(C_S_AXIS_TDATA_WIDTH/8){1'b1}};
assign tuser_in = C_AXIS_SIGNAL_SET[G_INDX_SS_TUSER] ? s_axis_tuser : {P_D1_TUSER_WIDTH{1'b1}};

axis_register_slice_v1_1_21_axis_register_slice #(
  .C_FAMILY           ( C_FAMILY               ) ,
  .C_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH   ) ,
  .C_AXIS_TID_WIDTH   ( C_AXIS_TID_WIDTH       ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TDEST_WIDTH     ) ,
  .C_AXIS_TUSER_WIDTH ( P_D1_TUSER_WIDTH       ) ,
  .C_AXIS_SIGNAL_SET  ( P_AXIS_SIGNAL_SET      ) ,
  .C_REG_CONFIG       ( P_D1_REG_CONFIG        )
)
axis_register_slice_0
(
  .aclk          ( aclk          ) ,
  .aclk2x        ( 1'b1          ) ,
  .aclken        ( aclken        ) ,
  .aresetn       ( aresetn       ) ,
  .s_axis_tvalid ( s_axis_tvalid ) ,
  .s_axis_tready ( s_axis_tready ) ,
  .s_axis_tdata  ( tdata_in      ) ,
  .s_axis_tstrb  ( s_axis_tstrb  ) ,
  .s_axis_tkeep  ( tkeep_in      ) ,
  .s_axis_tlast  ( s_axis_tlast  ) ,
  .s_axis_tid    ( s_axis_tid    ) ,
  .s_axis_tdest  ( s_axis_tdest  ) ,
  .s_axis_tuser  ( tuser_in      ) ,
  .m_axis_tvalid ( d1_valid      ) ,
  .m_axis_tready ( d1_ready      ) ,
  .m_axis_tdata  ( d1_data       ) ,
  .m_axis_tstrb  ( d1_strb       ) ,
  .m_axis_tkeep  ( d1_keep       ) ,
  .m_axis_tlast  ( d1_last       ) ,
  .m_axis_tid    ( d1_id         ) ,
  .m_axis_tdest  ( d1_dest       ) ,
  .m_axis_tuser  ( d1_user       ) 
);


generate
  if (P_S_RATIO > 1) begin : gen_upsizer_conversion
    axis_dwidth_converter_v1_1_20_axisc_upsizer #(
      .C_FAMILY             ( C_FAMILY             ) ,
      .C_S_AXIS_TDATA_WIDTH ( C_S_AXIS_TDATA_WIDTH ) ,
      .C_M_AXIS_TDATA_WIDTH ( P_D2_TDATA_WIDTH     ) ,
      .C_AXIS_TID_WIDTH     ( C_AXIS_TID_WIDTH     ) ,
      .C_AXIS_TDEST_WIDTH   ( C_AXIS_TDEST_WIDTH   ) ,
      .C_S_AXIS_TUSER_WIDTH  ( P_D1_TUSER_WIDTH    ) ,
      .C_M_AXIS_TUSER_WIDTH  ( P_D2_TUSER_WIDTH    ) ,
      .C_AXIS_SIGNAL_SET    ( P_AXIS_SIGNAL_SET    ) ,
      .C_RATIO              ( P_S_RATIO            ) 
    )
    axisc_upsizer_0 (
      .ACLK          ( aclk     ) ,
      .ARESET        ( areset_r ) ,
      .ACLKEN        ( aclken   ) ,
      .S_AXIS_TVALID ( d1_valid ) ,
      .S_AXIS_TREADY ( d1_ready ) ,
      .S_AXIS_TDATA  ( d1_data  ) ,
      .S_AXIS_TSTRB  ( d1_strb  ) ,
      .S_AXIS_TKEEP  ( d1_keep  ) ,
      .S_AXIS_TLAST  ( d1_last  ) ,
      .S_AXIS_TID    ( d1_id    ) ,
      .S_AXIS_TDEST  ( d1_dest  ) ,
      .S_AXIS_TUSER  ( d1_user  ) ,
      .M_AXIS_TVALID ( d2_valid ) ,
      .M_AXIS_TREADY ( d2_ready ) ,
      .M_AXIS_TDATA  ( d2_data  ) ,
      .M_AXIS_TSTRB  ( d2_strb  ) ,
      .M_AXIS_TKEEP  ( d2_keep  ) ,
      .M_AXIS_TLAST  ( d2_last  ) ,
      .M_AXIS_TID    ( d2_id    ) ,
      .M_AXIS_TDEST  ( d2_dest  ) ,
      .M_AXIS_TUSER  ( d2_user  ) 
    );
  end
  else begin : gen_no_upsizer_passthru
    assign d2_valid = d1_valid;
    assign d1_ready = d2_ready;
    assign d2_data  = d1_data;
    assign d2_strb  = d1_strb;
    assign d2_keep  = d1_keep;
    assign d2_last  = d1_last;
    assign d2_id    = d1_id;
    assign d2_dest  = d1_dest;
    assign d2_user  = d1_user;
  end
  if (P_M_RATIO > 1) begin : gen_downsizer_conversion
    axis_dwidth_converter_v1_1_20_axisc_downsizer #(
      .C_FAMILY             ( C_FAMILY             ) ,
      .C_S_AXIS_TDATA_WIDTH ( P_D2_TDATA_WIDTH     ) ,
      .C_M_AXIS_TDATA_WIDTH ( C_M_AXIS_TDATA_WIDTH ) ,
      .C_AXIS_TID_WIDTH     ( C_AXIS_TID_WIDTH     ) ,
      .C_AXIS_TDEST_WIDTH   ( C_AXIS_TDEST_WIDTH   ) ,
      .C_S_AXIS_TUSER_WIDTH  ( P_D2_TUSER_WIDTH    ) ,
      .C_M_AXIS_TUSER_WIDTH  ( P_D3_TUSER_WIDTH    ) ,
      .C_AXIS_SIGNAL_SET    ( P_AXIS_SIGNAL_SET    ) ,
      .C_RATIO              ( P_M_RATIO            ) 
    )
    axisc_downsizer_0 (
      .ACLK          ( aclk     ) ,
      .ARESET        ( areset_r ) ,
      .ACLKEN        ( aclken   ) ,
      .S_AXIS_TVALID ( d2_valid ) ,
      .S_AXIS_TREADY ( d2_ready ) ,
      .S_AXIS_TDATA  ( d2_data  ) ,
      .S_AXIS_TSTRB  ( d2_strb  ) ,
      .S_AXIS_TKEEP  ( d2_keep  ) ,
      .S_AXIS_TLAST  ( d2_last  ) ,
      .S_AXIS_TID    ( d2_id    ) ,
      .S_AXIS_TDEST  ( d2_dest  ) ,
      .S_AXIS_TUSER  ( d2_user  ) ,
      .M_AXIS_TVALID ( d3_valid ) ,
      .M_AXIS_TREADY ( d3_ready ) ,
      .M_AXIS_TDATA  ( d3_data  ) ,
      .M_AXIS_TSTRB  ( d3_strb  ) ,
      .M_AXIS_TKEEP  ( d3_keep  ) ,
      .M_AXIS_TLAST  ( d3_last  ) ,
      .M_AXIS_TID    ( d3_id    ) ,
      .M_AXIS_TDEST  ( d3_dest  ) ,
      .M_AXIS_TUSER  ( d3_user  ) 
    );
  end
  else begin : gen_no_downsizer_passthru
    assign d3_valid = d2_valid;
    assign d2_ready = d3_ready;
    assign d3_data  = d2_data;
    assign d3_strb  = d2_strb;
    assign d3_keep  = d2_keep;
    assign d3_last  = d2_last;
    assign d3_id    = d2_id;
    assign d3_dest  = d2_dest;
    assign d3_user  = d2_user;
  end
endgenerate

axis_register_slice_v1_1_21_axis_register_slice #(
  .C_FAMILY           ( C_FAMILY             ) ,
  .C_AXIS_TDATA_WIDTH ( C_M_AXIS_TDATA_WIDTH ) ,
  .C_AXIS_TID_WIDTH   ( C_AXIS_TID_WIDTH     ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TDEST_WIDTH   ) ,
  .C_AXIS_TUSER_WIDTH ( P_D3_TUSER_WIDTH     ) ,
  .C_AXIS_SIGNAL_SET  ( P_AXIS_SIGNAL_SET    ) ,
  .C_REG_CONFIG       ( P_D3_REG_CONFIG      )
)
axis_register_slice_1
(
  .aclk          ( aclk          ) ,
  .aclk2x        ( 1'b1          ) ,
  .aclken        ( aclken        ) ,
  .aresetn       ( aresetn       ) ,
  .s_axis_tvalid ( d3_valid      ) ,
  .s_axis_tready ( d3_ready      ) ,
  .s_axis_tdata  ( d3_data       ) ,
  .s_axis_tstrb  ( d3_strb       ) ,
  .s_axis_tkeep  ( d3_keep       ) ,
  .s_axis_tlast  ( d3_last       ) ,
  .s_axis_tid    ( d3_id         ) ,
  .s_axis_tdest  ( d3_dest       ) ,
  .s_axis_tuser  ( d3_user       ) ,
  .m_axis_tvalid ( m_axis_tvalid ) ,
  .m_axis_tready ( tready_in     ) ,
  .m_axis_tdata  ( m_axis_tdata  ) ,
  .m_axis_tstrb  ( m_axis_tstrb  ) ,
  .m_axis_tkeep  ( m_axis_tkeep  ) ,
  .m_axis_tlast  ( m_axis_tlast  ) ,
  .m_axis_tid    ( m_axis_tid    ) ,
  .m_axis_tdest  ( m_axis_tdest  ) ,
  .m_axis_tuser  ( m_axis_tuser_out )
);

assign m_axis_tuser = C_AXIS_SIGNAL_SET[G_INDX_SS_TUSER] ? m_axis_tuser_out[P_D3_TUSER_WIDTH-1:0] 
                                                    : {C_M_AXIS_TUSER_WIDTH{1'bx}};

endmodule // axis_dwidth_converter

`default_nettype wire


