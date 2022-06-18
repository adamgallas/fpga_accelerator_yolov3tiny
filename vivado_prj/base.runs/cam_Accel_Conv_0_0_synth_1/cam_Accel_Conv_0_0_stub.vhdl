-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jul 21 00:06:01 2021
-- Host        : ADAM-GALLAS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cam_Accel_Conv_0_0_stub.vhdl
-- Design      : cam_Accel_Conv_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    S_AXI_LITE_CTRL_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_LITE_CTRL_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_LITE_CTRL_awvalid : in STD_LOGIC;
    S_AXI_LITE_CTRL_awready : out STD_LOGIC;
    S_AXI_LITE_CTRL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_CTRL_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_LITE_CTRL_wvalid : in STD_LOGIC;
    S_AXI_LITE_CTRL_wready : out STD_LOGIC;
    S_AXI_LITE_CTRL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_CTRL_bvalid : out STD_LOGIC;
    S_AXI_LITE_CTRL_bready : in STD_LOGIC;
    S_AXI_LITE_CTRL_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_LITE_CTRL_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_LITE_CTRL_arvalid : in STD_LOGIC;
    S_AXI_LITE_CTRL_arready : out STD_LOGIC;
    S_AXI_LITE_CTRL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_LITE_CTRL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_LITE_CTRL_rvalid : out STD_LOGIC;
    S_AXI_LITE_CTRL_rready : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,ap_done,S_AXI_LITE_CTRL_awaddr[4:0],S_AXI_LITE_CTRL_awprot[2:0],S_AXI_LITE_CTRL_awvalid,S_AXI_LITE_CTRL_awready,S_AXI_LITE_CTRL_wdata[31:0],S_AXI_LITE_CTRL_wstrb[3:0],S_AXI_LITE_CTRL_wvalid,S_AXI_LITE_CTRL_wready,S_AXI_LITE_CTRL_bresp[1:0],S_AXI_LITE_CTRL_bvalid,S_AXI_LITE_CTRL_bready,S_AXI_LITE_CTRL_araddr[4:0],S_AXI_LITE_CTRL_arprot[2:0],S_AXI_LITE_CTRL_arvalid,S_AXI_LITE_CTRL_arready,S_AXI_LITE_CTRL_rdata[31:0],S_AXI_LITE_CTRL_rresp[1:0],S_AXI_LITE_CTRL_rvalid,S_AXI_LITE_CTRL_rready,S_AXIS_tready,S_AXIS_tdata[63:0],S_AXIS_tlast,S_AXIS_tvalid,M_AXIS_tvalid,M_AXIS_tdata[63:0],M_AXIS_tlast,M_AXIS_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Accel_Conv,Vivado 2020.1";
begin
end;
