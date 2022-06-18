// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module cam_v_demosaic_0_0_v_demosaic_mux_53fYi #(
parameter
    ID                = 0,
    NUM_STAGE         = 1,
    din0_WIDTH       = 32,
    din1_WIDTH       = 32,
    din2_WIDTH       = 32,
    din3_WIDTH       = 32,
    din4_WIDTH       = 32,
    din5_WIDTH         = 32,
    dout_WIDTH            = 32
)(
    input  [9 : 0]     din0,
    input  [9 : 0]     din1,
    input  [9 : 0]     din2,
    input  [9 : 0]     din3,
    input  [9 : 0]     din4,
    input  [2 : 0]    din5,
    output [9 : 0]   dout);

// puts internal signals
wire [2 : 0]     sel;
// level 1 signals
wire [9 : 0]         mux_1_0;
wire [9 : 0]         mux_1_1;
wire [9 : 0]         mux_1_2;
// level 2 signals
wire [9 : 0]         mux_2_0;
wire [9 : 0]         mux_2_1;
// level 3 signals
wire [9 : 0]         mux_3_0;

assign sel = din5;

// Generate level 1 logic
assign mux_1_0 = (sel[0] == 0)? din0 : din1;
assign mux_1_1 = (sel[0] == 0)? din2 : din3;
assign mux_1_2 = din4;

// Generate level 2 logic
assign mux_2_0 = (sel[1] == 0)? mux_1_0 : mux_1_1;
assign mux_2_1 = mux_1_2;

// Generate level 3 logic
assign mux_3_0 = (sel[2] == 0)? mux_2_0 : mux_2_1;

// output logic
assign dout = mux_3_0;

endmodule
