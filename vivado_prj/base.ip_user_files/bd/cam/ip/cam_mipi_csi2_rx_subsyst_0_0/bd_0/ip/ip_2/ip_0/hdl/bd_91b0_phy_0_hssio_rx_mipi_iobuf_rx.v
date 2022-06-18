// (c) Copyright 2013 - 2015 Xilinx, Inc. All rights reserved.
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

module bd_91b0_phy_0_hssio_rx_mipi_iobuf_rx #(
   parameter  C_NUM_IO                               =  52,
   parameter  C_TEMPLATE                             =  0,   
   parameter  C_DATA_PIN_EN                          =  1,
   parameter  C_CLK_SOURCE                           =  "IBUF_TO_PLL",
   parameter  C_CLKIN_DIFF_EN                        =  0,
   parameter [C_NUM_IO-1 :0] C_DIFF_EN               =  52'd0,  // Indicates whether the pin is differential or single ended
   parameter [C_NUM_IO-1 :0] C_TX_BITSLICE_EN        =  52'd0,  // Bitslice # for which TX bitslice should be enabled 
   parameter [C_NUM_IO-1 :0] C_RX_PIN_EN             =  52'd0,  // Bitslice # for which RX bitslice should be enabled 
   parameter [C_NUM_IO-1 :0] C_BIDIR_BITSLICE_EN     =  52'd0   // Bitslice # for which Bidir bitslice should be enabled 

)
(  
   input [C_DATA_PIN_EN-1:0] lptx_t,
   input [C_DATA_PIN_EN-1:0] lptx_i_p,
   input [C_DATA_PIN_EN-1:0] lptx_i_n,
   input [51:0] hs_tx_t,

   input [C_DATA_PIN_EN-1:0] hs_rx_disable,
   input [C_DATA_PIN_EN-1:0] lp_rx_disable,
   output [C_DATA_PIN_EN-1:0] lp_rx_o_p,
   output [C_DATA_PIN_EN-1:0] lp_rx_o_n,

   input                     clkin_from_pins_p,    //Differential input clock from pins
   input                     clkin_from_pins_n,
   input                     clkin_from_pins,      //Single ended input clock from pins
   input     [C_NUM_IO-1 :0] bs_to_buf_data_in,    //Serialised input from TX or BiDir Bitslices
   input     [C_NUM_IO-1 :0] bs_to_buf_t_in,       //3-state input from BiDir Bitslices
   output                    clk_from_buf_out,     //clock output from IBUF
   output    [C_NUM_IO-1 :0] data_to_bs_out,       //Data from buffers to Rx or BiDir Bitslices
   output    [C_NUM_IO-1 :0] data_to_bs_n_out,     //Data from buffers to Rx or BiDir Bitslices
   output    [C_NUM_IO-1 :0] data_to_pins,         //Data ouput from buffers to pins
   input     [C_NUM_IO-1 :0] data_from_pins,       //data input to buffers from pins
   inout     [C_NUM_IO-1 :0] data_to_from_pins     //data input to buffers from pins
);

assign clk_from_buf_out = clkin_from_pins;

wire [C_NUM_IO-1 :0] lptx_t_int;
wire [C_NUM_IO-1 :0] lptx_i_p_int;
wire [C_NUM_IO-1 :0] lptx_i_n_int;
//wire [C_NUM_IO-1 :0] hs_tx_t_int;

wire [C_NUM_IO-1 :0] hs_rx_disable_int;
wire [C_NUM_IO-1 :0] lp_rx_disable_int;
wire [C_NUM_IO-1 :0] lp_rx_o_p_int;
wire [C_NUM_IO-1 :0] lp_rx_o_n_int;

localparam [51:0] C_RX_PIN_EN_INT = 52'b0000000000000000000000000000000000000000000000010101;

  assign hs_rx_disable_int[0] = hs_rx_disable[0];
  assign lp_rx_disable_int[0] = lp_rx_disable[0];
  assign lp_rx_o_p[0] = lp_rx_o_p_int[0];
  assign lp_rx_o_n[0] = lp_rx_o_n_int[0];
  assign hs_rx_disable_int[2] = hs_rx_disable[1];
  assign lp_rx_disable_int[2] = lp_rx_disable[1];
  assign lp_rx_o_p[1] = lp_rx_o_p_int[2];
  assign lp_rx_o_n[1] = lp_rx_o_n_int[2];
  assign hs_rx_disable_int[4] = hs_rx_disable[2];
  assign lp_rx_disable_int[4] = lp_rx_disable[2];
  assign lp_rx_o_p[2] = lp_rx_o_p_int[4];
  assign lp_rx_o_n[2] = lp_rx_o_n_int[4];

//IO BUFFERS
genvar i;
generate
  for (i = 0; i < C_NUM_IO ; i = i + 1) begin : io_gen
     if(C_TX_BITSLICE_EN[i] == 1'b1) begin
       if (C_TEMPLATE == 1) begin
        OBUFDS_DPHY #(.IOSTANDARD ("MIPI_DPHY_DCI"))
          obufds_inst
            (.HSTX_I (bs_to_buf_data_in[i]),
             .LPTX_T  (lptx_t_int[i]), 
             .LPTX_I_P  (lptx_i_p_int[i]), 
             .LPTX_I_N  (lptx_i_n_int[i]), 
             .HSTX_T  (hs_tx_t[i]), 
             .O  (data_to_pins[i]), 
             .OB (data_to_pins[i+1]));           
       end
     end //C_TX_BITSLICE_EN

     if(C_RX_PIN_EN_INT[i] == 1'b1) begin
      if(C_TEMPLATE == 2) begin
        IBUFDS_DPHY #(.IOSTANDARD ("MIPI_DPHY_DCI"))
          ibufds_dphy
            (.HSRX_O  (data_to_bs_out[i]),
             .HSRX_DISABLE (hs_rx_disable_int[i]),
             .LPRX_DISABLE (lp_rx_disable_int[i]),
             .LPRX_O_P (lp_rx_o_p_int[i]),
             .LPRX_O_N (lp_rx_o_n_int[i]),
             .I  (data_from_pins[i]), 
             .IB (data_from_pins[i+1]));
      end
     end //C_RX_PIN_EN_INT

  end //for
endgenerate








endmodule

