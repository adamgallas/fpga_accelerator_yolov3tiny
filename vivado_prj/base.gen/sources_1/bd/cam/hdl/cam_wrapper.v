//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Fri Aug 20 09:17:17 2021
//Host        : ADAM-GALLAS running 64-bit major release  (build 9200)
//Command     : generate_target cam_wrapper.bd
//Design      : cam_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cam_wrapper
   (dout_0,
    dp_aux_data_in_0,
    dp_aux_data_oe_n_0,
    dp_aux_data_out_0,
    dp_hot_plug_detect_0,
    mipi_phy_if_0_clk_n,
    mipi_phy_if_0_clk_p,
    mipi_phy_if_0_data_n,
    mipi_phy_if_0_data_p);
  output [0:0]dout_0;
  input dp_aux_data_in_0;
  output [0:0]dp_aux_data_oe_n_0;
  output dp_aux_data_out_0;
  input dp_hot_plug_detect_0;
  input mipi_phy_if_0_clk_n;
  input mipi_phy_if_0_clk_p;
  input [1:0]mipi_phy_if_0_data_n;
  input [1:0]mipi_phy_if_0_data_p;

  wire [0:0]dout_0;
  wire dp_aux_data_in_0;
  wire [0:0]dp_aux_data_oe_n_0;
  wire dp_aux_data_out_0;
  wire dp_hot_plug_detect_0;
  wire mipi_phy_if_0_clk_n;
  wire mipi_phy_if_0_clk_p;
  wire [1:0]mipi_phy_if_0_data_n;
  wire [1:0]mipi_phy_if_0_data_p;

  cam cam_i
       (.dout_0(dout_0),
        .dp_aux_data_in_0(dp_aux_data_in_0),
        .dp_aux_data_oe_n_0(dp_aux_data_oe_n_0),
        .dp_aux_data_out_0(dp_aux_data_out_0),
        .dp_hot_plug_detect_0(dp_hot_plug_detect_0),
        .mipi_phy_if_0_clk_n(mipi_phy_if_0_clk_n),
        .mipi_phy_if_0_clk_p(mipi_phy_if_0_clk_p),
        .mipi_phy_if_0_data_n(mipi_phy_if_0_data_n),
        .mipi_phy_if_0_data_p(mipi_phy_if_0_data_p));
endmodule
