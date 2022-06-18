-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jul 21 00:04:59 2021
-- Host        : ADAM-GALLAS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/base/base.srcs/sources_1/bd/cam/ip/cam_hls_preprocess_0_0/cam_hls_preprocess_0_0_sim_netlist.vhdl
-- Design      : cam_hls_preprocess_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_Convert is
  port (
    start_once_reg_reg_0 : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln29_reg_341_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln29_reg_341_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln29_reg_341_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \icmp_ln29_reg_341_reg[0]_3\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    ce2 : out STD_LOGIC;
    \icmp_ln29_reg_341_reg[0]_4\ : out STD_LOGIC;
    \icmp_ln29_reg_341_pp0_iter1_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    shiftReg_ce : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    int_ap_idle_reg : in STD_LOGIC;
    AXIvideo2Mat_U0_ap_start : in STD_LOGIC;
    start_for_Downsample_U0_full_n : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    int_ap_idle_reg_0 : in STD_LOGIC;
    \mOutPtr_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mOutPtr_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mOutPtr_reg[1]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \mOutPtr_reg[1]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    start_for_Mat2AXIvideo_U0_full_n : in STD_LOGIC;
    Convert_U0_ap_start : in STD_LOGIC;
    Mat2AXIvideo_U0_img_data_stream_3_V_read : in STD_LOGIC;
    dst_img_data_stream_s_empty_n : in STD_LOGIC;
    dst_img_data_stream_1_empty_n : in STD_LOGIC;
    dst_img_data_stream_3_empty_n : in STD_LOGIC;
    dst_img_data_stream_2_empty_n : in STD_LOGIC;
    ifm_img_data_stream_s_full_n : in STD_LOGIC;
    ifm_img_data_stream_1_full_n : in STD_LOGIC;
    ifm_img_data_stream_2_full_n : in STD_LOGIC;
    ifm_img_data_stream_3_full_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_Convert : entity is "Convert";
end cam_hls_preprocess_0_0_Convert;

architecture STRUCTURE of cam_hls_preprocess_0_0_Convert is
  signal \ap_CS_fsm[2]_i_2__1_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_4_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_2__0_n_1\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_cs_fsm_reg[1]_0\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_block_pp0_stage0_subdone : STD_LOGIC;
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter00 : STD_LOGIC;
  signal \ap_enable_reg_pp0_iter0_i_1__0_n_1\ : STD_LOGIC;
  signal \ap_enable_reg_pp0_iter1_i_1__0_n_1\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_i_1_n_1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_reg_n_1 : STD_LOGIC;
  signal i_0_reg_255 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal i_0_reg_255_0 : STD_LOGIC;
  signal i_fu_283_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal i_reg_336 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \i_reg_336[8]_i_2_n_1\ : STD_LOGIC;
  signal icmp_ln29_fu_289_p2 : STD_LOGIC;
  signal icmp_ln29_reg_3410 : STD_LOGIC;
  signal \icmp_ln29_reg_341[0]_i_3_n_1\ : STD_LOGIC;
  signal \icmp_ln29_reg_341_pp0_iter1_reg_reg_n_1_[0]\ : STD_LOGIC;
  signal \icmp_ln29_reg_341_reg_n_1_[0]\ : STD_LOGIC;
  signal int_ap_idle_i_2_n_1 : STD_LOGIC;
  signal j_0_reg_266 : STD_LOGIC;
  signal j_0_reg_2660 : STD_LOGIC;
  signal \j_0_reg_266[8]_i_4_n_1\ : STD_LOGIC;
  signal j_0_reg_266_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal j_fu_295_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal q0_reg_i_20_n_1 : STD_LOGIC;
  signal \^shiftreg_ce\ : STD_LOGIC;
  signal \start_once_reg_i_1__1_n_1\ : STD_LOGIC;
  signal \^start_once_reg_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_4\ : label is "soft_lutpair73";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of \i_reg_336[0]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \i_reg_336[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \i_reg_336[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \i_reg_336[3]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \i_reg_336[4]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \i_reg_336[7]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \i_reg_336[8]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \icmp_ln29_reg_341[0]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of int_ap_idle_i_2 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of internal_empty_n_i_2 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \internal_full_n_i_1__3\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \j_0_reg_266[0]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \j_0_reg_266[1]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \j_0_reg_266[2]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \j_0_reg_266[3]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \j_0_reg_266[4]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \j_0_reg_266[7]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \j_0_reg_266[8]_i_3\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__9\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of q0_reg_i_20 : label is "soft_lutpair77";
begin
  \ap_CS_fsm_reg[0]_0\(0) <= \^ap_cs_fsm_reg[0]_0\(0);
  \ap_CS_fsm_reg[1]_0\ <= \^ap_cs_fsm_reg[1]_0\;
  shiftReg_ce <= \^shiftreg_ce\;
  start_once_reg_reg_0 <= \^start_once_reg_reg_0\;
\ap_CS_fsm[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1F00"
    )
        port map (
      I0 => \^start_once_reg_reg_0\,
      I1 => start_for_Mat2AXIvideo_U0_full_n,
      I2 => Convert_U0_ap_start,
      I3 => \^ap_cs_fsm_reg[0]_0\(0),
      I4 => \^ap_cs_fsm_reg[1]_0\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => i_0_reg_255(3),
      I2 => i_0_reg_255(7),
      I3 => i_0_reg_255(1),
      I4 => i_0_reg_255(6),
      I5 => \ap_CS_fsm[2]_i_4_n_1\,
      O => \^ap_cs_fsm_reg[1]_0\
    );
\ap_CS_fsm[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE000"
    )
        port map (
      I0 => \^start_once_reg_reg_0\,
      I1 => start_for_Mat2AXIvideo_U0_full_n,
      I2 => Convert_U0_ap_start,
      I3 => \^ap_cs_fsm_reg[0]_0\(0),
      I4 => ap_CS_fsm_state6,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \ap_CS_fsm[2]_i_2__1_n_1\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter00,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11101010"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_1,
      I1 => \ap_CS_fsm[3]_i_2__0_n_1\,
      I2 => ap_enable_reg_pp0_iter2_reg_n_1,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => icmp_ln29_fu_289_p2,
      O => \ap_CS_fsm[2]_i_2__1_n_1\
    );
\ap_CS_fsm[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA8AA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => i_0_reg_255(3),
      I2 => i_0_reg_255(7),
      I3 => i_0_reg_255(1),
      I4 => i_0_reg_255(6),
      I5 => \ap_CS_fsm[2]_i_4_n_1\,
      O => ap_enable_reg_pp0_iter00
    );
\ap_CS_fsm[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => i_0_reg_255(2),
      I1 => i_0_reg_255(5),
      I2 => i_0_reg_255(8),
      I3 => i_0_reg_255(0),
      I4 => i_0_reg_255(4),
      O => \ap_CS_fsm[2]_i_4_n_1\
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AA80"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => icmp_ln29_fu_289_p2,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => ap_enable_reg_pp0_iter2_reg_n_1,
      I4 => \ap_CS_fsm[3]_i_2__0_n_1\,
      I5 => ap_enable_reg_pp0_iter1_reg_n_1,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444444444444"
    )
        port map (
      I0 => \icmp_ln29_reg_341_pp0_iter1_reg_reg_n_1_[0]\,
      I1 => ap_enable_reg_pp0_iter2_reg_n_1,
      I2 => ifm_img_data_stream_s_full_n,
      I3 => ifm_img_data_stream_1_full_n,
      I4 => ifm_img_data_stream_2_full_n,
      I5 => ifm_img_data_stream_3_full_n,
      O => \ap_CS_fsm[3]_i_2__0_n_1\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \^ap_cs_fsm_reg[0]_0\(0),
      S => SS(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => SS(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_pp0_stage0,
      R => SS(0)
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state6,
      R => SS(0)
    );
\ap_enable_reg_pp0_iter0_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8A8A8"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter00,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => icmp_ln29_fu_289_p2,
      I4 => icmp_ln29_reg_3410,
      O => \ap_enable_reg_pp0_iter0_i_1__0_n_1\
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_enable_reg_pp0_iter0_i_1__0_n_1\,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
\ap_enable_reg_pp0_iter1_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0088A0A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => ap_enable_reg_pp0_iter1_reg_n_1,
      I3 => icmp_ln29_fu_289_p2,
      I4 => ap_block_pp0_stage0_subdone,
      O => \ap_enable_reg_pp0_iter1_i_1__0_n_1\
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_enable_reg_pp0_iter1_i_1__0_n_1\,
      Q => ap_enable_reg_pp0_iter1_reg_n_1,
      R => '0'
    );
ap_enable_reg_pp0_iter2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888800A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter1_reg_n_1,
      I2 => ap_enable_reg_pp0_iter2_reg_n_1,
      I3 => ap_enable_reg_pp0_iter00,
      I4 => ap_block_pp0_stage0_subdone,
      O => ap_enable_reg_pp0_iter2_i_1_n_1
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter2_i_1_n_1,
      Q => ap_enable_reg_pp0_iter2_reg_n_1,
      R => '0'
    );
\i_0_reg_255[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => \^ap_cs_fsm_reg[0]_0\(0),
      I2 => Convert_U0_ap_start,
      I3 => start_for_Mat2AXIvideo_U0_full_n,
      I4 => \^start_once_reg_reg_0\,
      O => i_0_reg_255_0
    );
\i_0_reg_255_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_reg_336(0),
      Q => i_0_reg_255(0),
      R => i_0_reg_255_0
    );
\i_0_reg_255_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_reg_336(1),
      Q => i_0_reg_255(1),
      R => i_0_reg_255_0
    );
\i_0_reg_255_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_reg_336(2),
      Q => i_0_reg_255(2),
      R => i_0_reg_255_0
    );
\i_0_reg_255_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_reg_336(3),
      Q => i_0_reg_255(3),
      R => i_0_reg_255_0
    );
\i_0_reg_255_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_reg_336(4),
      Q => i_0_reg_255(4),
      R => i_0_reg_255_0
    );
\i_0_reg_255_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_reg_336(5),
      Q => i_0_reg_255(5),
      R => i_0_reg_255_0
    );
\i_0_reg_255_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_reg_336(6),
      Q => i_0_reg_255(6),
      R => i_0_reg_255_0
    );
\i_0_reg_255_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_reg_336(7),
      Q => i_0_reg_255(7),
      R => i_0_reg_255_0
    );
\i_0_reg_255_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_reg_336(8),
      Q => i_0_reg_255(8),
      R => i_0_reg_255_0
    );
\i_reg_336[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_0_reg_255(0),
      O => i_fu_283_p2(0)
    );
\i_reg_336[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_0_reg_255(0),
      I1 => i_0_reg_255(1),
      O => i_fu_283_p2(1)
    );
\i_reg_336[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_0_reg_255(2),
      I1 => i_0_reg_255(1),
      I2 => i_0_reg_255(0),
      O => i_fu_283_p2(2)
    );
\i_reg_336[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_0_reg_255(3),
      I1 => i_0_reg_255(0),
      I2 => i_0_reg_255(1),
      I3 => i_0_reg_255(2),
      O => i_fu_283_p2(3)
    );
\i_reg_336[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i_0_reg_255(4),
      I1 => i_0_reg_255(2),
      I2 => i_0_reg_255(1),
      I3 => i_0_reg_255(0),
      I4 => i_0_reg_255(3),
      O => i_fu_283_p2(4)
    );
\i_reg_336[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i_0_reg_255(5),
      I1 => i_0_reg_255(3),
      I2 => i_0_reg_255(0),
      I3 => i_0_reg_255(1),
      I4 => i_0_reg_255(2),
      I5 => i_0_reg_255(4),
      O => i_fu_283_p2(5)
    );
\i_reg_336[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_0_reg_255(6),
      I1 => \i_reg_336[8]_i_2_n_1\,
      O => i_fu_283_p2(6)
    );
\i_reg_336[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_0_reg_255(7),
      I1 => \i_reg_336[8]_i_2_n_1\,
      I2 => i_0_reg_255(6),
      O => i_fu_283_p2(7)
    );
\i_reg_336[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_0_reg_255(8),
      I1 => i_0_reg_255(6),
      I2 => \i_reg_336[8]_i_2_n_1\,
      I3 => i_0_reg_255(7),
      O => i_fu_283_p2(8)
    );
\i_reg_336[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => i_0_reg_255(5),
      I1 => i_0_reg_255(3),
      I2 => i_0_reg_255(0),
      I3 => i_0_reg_255(1),
      I4 => i_0_reg_255(2),
      I5 => i_0_reg_255(4),
      O => \i_reg_336[8]_i_2_n_1\
    );
\i_reg_336_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_283_p2(0),
      Q => i_reg_336(0),
      R => '0'
    );
\i_reg_336_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_283_p2(1),
      Q => i_reg_336(1),
      R => '0'
    );
\i_reg_336_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_283_p2(2),
      Q => i_reg_336(2),
      R => '0'
    );
\i_reg_336_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_283_p2(3),
      Q => i_reg_336(3),
      R => '0'
    );
\i_reg_336_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_283_p2(4),
      Q => i_reg_336(4),
      R => '0'
    );
\i_reg_336_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_283_p2(5),
      Q => i_reg_336(5),
      R => '0'
    );
\i_reg_336_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_283_p2(6),
      Q => i_reg_336(6),
      R => '0'
    );
\i_reg_336_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_283_p2(7),
      Q => i_reg_336(7),
      R => '0'
    );
\i_reg_336_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_283_p2(8),
      Q => i_reg_336(8),
      R => '0'
    );
\icmp_ln29_reg_341[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => ap_block_pp0_stage0_subdone,
      O => icmp_ln29_reg_3410
    );
\icmp_ln29_reg_341[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \icmp_ln29_reg_341[0]_i_3_n_1\,
      I1 => j_0_reg_266_reg(0),
      I2 => j_0_reg_266_reg(1),
      I3 => j_0_reg_266_reg(2),
      O => icmp_ln29_fu_289_p2
    );
\icmp_ln29_reg_341[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => j_0_reg_266_reg(3),
      I1 => j_0_reg_266_reg(4),
      I2 => j_0_reg_266_reg(5),
      I3 => j_0_reg_266_reg(6),
      I4 => j_0_reg_266_reg(8),
      I5 => j_0_reg_266_reg(7),
      O => \icmp_ln29_reg_341[0]_i_3_n_1\
    );
\icmp_ln29_reg_341_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => icmp_ln29_reg_3410,
      D => \icmp_ln29_reg_341_reg_n_1_[0]\,
      Q => \icmp_ln29_reg_341_pp0_iter1_reg_reg_n_1_[0]\,
      R => '0'
    );
\icmp_ln29_reg_341_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => icmp_ln29_reg_3410,
      D => icmp_ln29_fu_289_p2,
      Q => \icmp_ln29_reg_341_reg_n_1_[0]\,
      R => '0'
    );
int_ap_idle_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101011100000000"
    )
        port map (
      I0 => int_ap_idle_i_2_n_1,
      I1 => int_ap_idle_reg,
      I2 => AXIvideo2Mat_U0_ap_start,
      I3 => start_for_Downsample_U0_full_n,
      I4 => start_once_reg,
      I5 => int_ap_idle_reg_0,
      O => ap_idle
    );
int_ap_idle_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^start_once_reg_reg_0\,
      I1 => start_for_Mat2AXIvideo_U0_full_n,
      I2 => Convert_U0_ap_start,
      O => int_ap_idle_i_2_n_1
    );
internal_empty_n_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \icmp_ln29_reg_341_reg_n_1_[0]\,
      I1 => ap_enable_reg_pp0_iter1_reg_n_1,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => ap_CS_fsm_pp0_stage0,
      O => \icmp_ln29_reg_341_reg[0]_4\
    );
\internal_full_n_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1000FFFF"
    )
        port map (
      I0 => \mOutPtr_reg[1]\,
      I1 => \icmp_ln29_reg_341_reg_n_1_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_1,
      I3 => icmp_ln29_reg_3410,
      I4 => ap_rst_n,
      O => \icmp_ln29_reg_341_reg[0]_3\
    );
\j_0_reg_266[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_0_reg_266_reg(0),
      O => j_fu_295_p2(0)
    );
\j_0_reg_266[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_0_reg_266_reg(0),
      I1 => j_0_reg_266_reg(1),
      O => j_fu_295_p2(1)
    );
\j_0_reg_266[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_0_reg_266_reg(2),
      I1 => j_0_reg_266_reg(1),
      I2 => j_0_reg_266_reg(0),
      O => j_fu_295_p2(2)
    );
\j_0_reg_266[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => j_0_reg_266_reg(3),
      I1 => j_0_reg_266_reg(0),
      I2 => j_0_reg_266_reg(1),
      I3 => j_0_reg_266_reg(2),
      O => j_fu_295_p2(3)
    );
\j_0_reg_266[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => j_0_reg_266_reg(4),
      I1 => j_0_reg_266_reg(2),
      I2 => j_0_reg_266_reg(1),
      I3 => j_0_reg_266_reg(0),
      I4 => j_0_reg_266_reg(3),
      O => j_fu_295_p2(4)
    );
\j_0_reg_266[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => j_0_reg_266_reg(5),
      I1 => j_0_reg_266_reg(3),
      I2 => j_0_reg_266_reg(0),
      I3 => j_0_reg_266_reg(1),
      I4 => j_0_reg_266_reg(2),
      I5 => j_0_reg_266_reg(4),
      O => j_fu_295_p2(5)
    );
\j_0_reg_266[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_0_reg_266_reg(6),
      I1 => \j_0_reg_266[8]_i_4_n_1\,
      O => j_fu_295_p2(6)
    );
\j_0_reg_266[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_0_reg_266_reg(7),
      I1 => \j_0_reg_266[8]_i_4_n_1\,
      I2 => j_0_reg_266_reg(6),
      O => j_fu_295_p2(7)
    );
\j_0_reg_266[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0000"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => icmp_ln29_fu_289_p2,
      I4 => ap_enable_reg_pp0_iter00,
      O => j_0_reg_266
    );
\j_0_reg_266[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_block_pp0_stage0_subdone,
      I3 => icmp_ln29_fu_289_p2,
      O => j_0_reg_2660
    );
\j_0_reg_266[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => j_0_reg_266_reg(8),
      I1 => j_0_reg_266_reg(6),
      I2 => \j_0_reg_266[8]_i_4_n_1\,
      I3 => j_0_reg_266_reg(7),
      O => j_fu_295_p2(8)
    );
\j_0_reg_266[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => j_0_reg_266_reg(5),
      I1 => j_0_reg_266_reg(3),
      I2 => j_0_reg_266_reg(0),
      I3 => j_0_reg_266_reg(1),
      I4 => j_0_reg_266_reg(2),
      I5 => j_0_reg_266_reg(4),
      O => \j_0_reg_266[8]_i_4_n_1\
    );
\j_0_reg_266_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2660,
      D => j_fu_295_p2(0),
      Q => j_0_reg_266_reg(0),
      R => j_0_reg_266
    );
\j_0_reg_266_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2660,
      D => j_fu_295_p2(1),
      Q => j_0_reg_266_reg(1),
      R => j_0_reg_266
    );
\j_0_reg_266_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2660,
      D => j_fu_295_p2(2),
      Q => j_0_reg_266_reg(2),
      R => j_0_reg_266
    );
\j_0_reg_266_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2660,
      D => j_fu_295_p2(3),
      Q => j_0_reg_266_reg(3),
      R => j_0_reg_266
    );
\j_0_reg_266_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2660,
      D => j_fu_295_p2(4),
      Q => j_0_reg_266_reg(4),
      R => j_0_reg_266
    );
\j_0_reg_266_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2660,
      D => j_fu_295_p2(5),
      Q => j_0_reg_266_reg(5),
      R => j_0_reg_266
    );
\j_0_reg_266_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2660,
      D => j_fu_295_p2(6),
      Q => j_0_reg_266_reg(6),
      R => j_0_reg_266
    );
\j_0_reg_266_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2660,
      D => j_fu_295_p2(7),
      Q => j_0_reg_266_reg(7),
      R => j_0_reg_266
    );
\j_0_reg_266_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2660,
      D => j_fu_295_p2(8),
      Q => j_0_reg_266_reg(8),
      R => j_0_reg_266
    );
\mOutPtr[1]_i_1__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^shiftreg_ce\,
      I1 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      O => \icmp_ln29_reg_341_pp0_iter1_reg_reg[0]_0\(0)
    );
\mOutPtr[1]_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000EFFFEFFF1000"
    )
        port map (
      I0 => \mOutPtr_reg[1]\,
      I1 => \icmp_ln29_reg_341_reg_n_1_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_1,
      I3 => icmp_ln29_reg_3410,
      I4 => Q(0),
      I5 => Q(1),
      O => D(0)
    );
\mOutPtr[1]_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000EFFFEFFF1000"
    )
        port map (
      I0 => \mOutPtr_reg[1]\,
      I1 => \icmp_ln29_reg_341_reg_n_1_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_1,
      I3 => icmp_ln29_reg_3410,
      I4 => \mOutPtr_reg[1]_0\(0),
      I5 => \mOutPtr_reg[1]_0\(1),
      O => \icmp_ln29_reg_341_reg[0]_0\(0)
    );
\mOutPtr[1]_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000EFFFEFFF1000"
    )
        port map (
      I0 => \mOutPtr_reg[1]\,
      I1 => \icmp_ln29_reg_341_reg_n_1_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_1,
      I3 => icmp_ln29_reg_3410,
      I4 => \mOutPtr_reg[1]_1\(0),
      I5 => \mOutPtr_reg[1]_1\(1),
      O => \icmp_ln29_reg_341_reg[0]_1\(0)
    );
\mOutPtr[1]_i_1__9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => icmp_ln29_reg_3410,
      I1 => ap_enable_reg_pp0_iter1_reg_n_1,
      I2 => \icmp_ln29_reg_341_reg_n_1_[0]\,
      I3 => \mOutPtr_reg[1]\,
      O => E(0)
    );
\mOutPtr[1]_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000EFFFEFFF1000"
    )
        port map (
      I0 => \mOutPtr_reg[1]\,
      I1 => \icmp_ln29_reg_341_reg_n_1_[0]\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_1,
      I3 => icmp_ln29_reg_3410,
      I4 => \mOutPtr_reg[1]_2\(0),
      I5 => \mOutPtr_reg[1]_2\(1),
      O => \icmp_ln29_reg_341_reg[0]_2\(0)
    );
q0_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => icmp_ln29_reg_3410,
      I1 => ap_enable_reg_pp0_iter1_reg_n_1,
      O => ce2
    );
q0_reg_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000055555555"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_2__0_n_1\,
      I1 => dst_img_data_stream_s_empty_n,
      I2 => dst_img_data_stream_1_empty_n,
      I3 => dst_img_data_stream_3_empty_n,
      I4 => dst_img_data_stream_2_empty_n,
      I5 => q0_reg_i_20_n_1,
      O => ap_block_pp0_stage0_subdone
    );
q0_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \icmp_ln29_reg_341_pp0_iter1_reg_reg_n_1_[0]\,
      I1 => ap_enable_reg_pp0_iter2_reg_n_1,
      I2 => ap_block_pp0_stage0_subdone,
      O => \^shiftreg_ce\
    );
q0_reg_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_1,
      I1 => \icmp_ln29_reg_341_reg_n_1_[0]\,
      O => q0_reg_i_20_n_1
    );
\start_once_reg_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[1]_0\,
      I1 => Convert_U0_ap_start,
      I2 => start_for_Mat2AXIvideo_U0_full_n,
      I3 => \^start_once_reg_reg_0\,
      O => \start_once_reg_i_1__1_n_1\
    );
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \start_once_reg_i_1__1_n_1\,
      Q => \^start_once_reg_reg_0\,
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_Downsample is
  port (
    start_once_reg_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[2]_0\ : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[1]_0\ : out STD_LOGIC;
    start_once_reg_reg_1 : out STD_LOGIC;
    \and_ln50_2_reg_358_reg[0]_0\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    AXIvideo2Mat_U0_img_data_stream_3_V_write : in STD_LOGIC;
    start_for_Convert_U0_full_n : in STD_LOGIC;
    Downsample_U0_ap_start : in STD_LOGIC;
    src_img_data_stream_s_empty_n : in STD_LOGIC;
    src_img_data_stream_1_empty_n : in STD_LOGIC;
    src_img_data_stream_3_empty_n : in STD_LOGIC;
    src_img_data_stream_2_empty_n : in STD_LOGIC;
    dst_img_data_stream_3_full_n : in STD_LOGIC;
    dst_img_data_stream_2_full_n : in STD_LOGIC;
    dst_img_data_stream_1_full_n : in STD_LOGIC;
    dst_img_data_stream_s_full_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_Downsample : entity is "Downsample";
end cam_hls_preprocess_0_0_Downsample;

architecture STRUCTURE of cam_hls_preprocess_0_0_Downsample is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal and_ln50_1_reg_344 : STD_LOGIC;
  signal \and_ln50_1_reg_344[0]_i_1_n_1\ : STD_LOGIC;
  signal \and_ln50_1_reg_344[0]_i_2_n_1\ : STD_LOGIC;
  signal \and_ln50_1_reg_344[0]_i_3_n_1\ : STD_LOGIC;
  signal \and_ln50_1_reg_344[0]_i_4_n_1\ : STD_LOGIC;
  signal and_ln50_2_fu_320_p2 : STD_LOGIC;
  signal and_ln50_2_reg_358 : STD_LOGIC;
  signal and_ln50_2_reg_3580 : STD_LOGIC;
  signal \and_ln50_2_reg_358[0]_i_1_n_1\ : STD_LOGIC;
  signal and_ln51_reg_362 : STD_LOGIC;
  signal \and_ln51_reg_362[0]_i_1_n_1\ : STD_LOGIC;
  signal \and_ln51_reg_362[0]_i_3_n_1\ : STD_LOGIC;
  signal \and_ln51_reg_362[0]_i_4_n_1\ : STD_LOGIC;
  signal \and_ln51_reg_362[0]_i_5_n_1\ : STD_LOGIC;
  signal \and_ln51_reg_362[0]_i_6_n_1\ : STD_LOGIC;
  signal \and_ln51_reg_362[0]_i_7_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_3_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_2_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_3_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_4_n_1\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_5_n_1\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal \^ap_cs_fsm_reg[1]_0\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[2]_0\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal \ap_enable_reg_pp0_iter0_i_1__1_n_1\ : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_1 : STD_LOGIC;
  signal i_0_reg_230 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal i_0_reg_230_0 : STD_LOGIC;
  signal i_fu_262_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal i_reg_339 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \i_reg_339[9]_i_2_n_1\ : STD_LOGIC;
  signal j_0_reg_241 : STD_LOGIC;
  signal j_0_reg_2410 : STD_LOGIC;
  signal \j_0_reg_241[10]_i_5_n_1\ : STD_LOGIC;
  signal \j_0_reg_241[7]_i_2_n_1\ : STD_LOGIC;
  signal j_0_reg_241_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal j_fu_296_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal \start_once_reg_i_1__0_n_1\ : STD_LOGIC;
  signal \^start_once_reg_reg_0\ : STD_LOGIC;
  signal trunc_ln44_reg_330 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG[0][7]_i_1__2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \and_ln51_reg_362[0]_i_5\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \and_ln51_reg_362[0]_i_7\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1__2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1__2\ : label is "soft_lutpair85";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM of \i_reg_339[0]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \i_reg_339[1]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \i_reg_339[2]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \i_reg_339[3]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \i_reg_339[4]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \i_reg_339[7]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \i_reg_339[8]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \i_reg_339[9]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of int_ap_idle_i_3 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \internal_full_n_i_1__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \j_0_reg_241[0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \j_0_reg_241[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \j_0_reg_241[2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \j_0_reg_241[3]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \j_0_reg_241[4]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \j_0_reg_241[7]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \j_0_reg_241[8]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \j_0_reg_241[9]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_3__1\ : label is "soft_lutpair83";
begin
  Q(0) <= \^q\(0);
  \ap_CS_fsm_reg[1]_0\ <= \^ap_cs_fsm_reg[1]_0\;
  \ap_CS_fsm_reg[2]_0\ <= \^ap_cs_fsm_reg[2]_0\;
  start_once_reg_reg_0 <= \^start_once_reg_reg_0\;
\SRL_SIG[0][7]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => and_ln50_2_reg_358,
      I1 => and_ln51_reg_362,
      I2 => ap_enable_reg_pp0_iter1_reg_n_1,
      I3 => \ap_CS_fsm[3]_i_2_n_1\,
      I4 => ap_CS_fsm_pp0_stage0,
      O => \and_ln50_2_reg_358_reg[0]_0\
    );
\and_ln50_1_reg_344[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3374FFFF33740000"
    )
        port map (
      I0 => \and_ln50_1_reg_344[0]_i_2_n_1\,
      I1 => i_0_reg_230(9),
      I2 => \and_ln50_1_reg_344[0]_i_3_n_1\,
      I3 => \and_ln50_1_reg_344[0]_i_4_n_1\,
      I4 => p_1_in,
      I5 => and_ln50_1_reg_344,
      O => \and_ln50_1_reg_344[0]_i_1_n_1\
    );
\and_ln50_1_reg_344[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888880808000"
    )
        port map (
      I0 => i_0_reg_230(6),
      I1 => i_0_reg_230(5),
      I2 => i_0_reg_230(3),
      I3 => i_0_reg_230(1),
      I4 => i_0_reg_230(2),
      I5 => i_0_reg_230(4),
      O => \and_ln50_1_reg_344[0]_i_2_n_1\
    );
\and_ln50_1_reg_344[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000F0008000"
    )
        port map (
      I0 => i_0_reg_230(1),
      I1 => i_0_reg_230(2),
      I2 => i_0_reg_230(6),
      I3 => i_0_reg_230(5),
      I4 => i_0_reg_230(4),
      I5 => i_0_reg_230(3),
      O => \and_ln50_1_reg_344[0]_i_3_n_1\
    );
\and_ln50_1_reg_344[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_0_reg_230(7),
      I1 => i_0_reg_230(8),
      O => \and_ln50_1_reg_344[0]_i_4_n_1\
    );
\and_ln50_1_reg_344_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \and_ln50_1_reg_344[0]_i_1_n_1\,
      Q => and_ln50_1_reg_344,
      R => '0'
    );
\and_ln50_2_reg_358[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => and_ln50_2_fu_320_p2,
      I1 => and_ln50_2_reg_3580,
      I2 => and_ln50_2_reg_358,
      O => \and_ln50_2_reg_358[0]_i_1_n_1\
    );
\and_ln50_2_reg_358_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \and_ln50_2_reg_358[0]_i_1_n_1\,
      Q => and_ln50_2_reg_358,
      R => '0'
    );
\and_ln51_reg_362[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => j_0_reg_241_reg(0),
      I1 => trunc_ln44_reg_330,
      I2 => and_ln50_2_reg_3580,
      I3 => and_ln50_2_fu_320_p2,
      I4 => and_ln51_reg_362,
      O => \and_ln51_reg_362[0]_i_1_n_1\
    );
\and_ln51_reg_362[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \and_ln51_reg_362[0]_i_3_n_1\,
      I1 => j_0_reg_241_reg(10),
      I2 => \and_ln51_reg_362[0]_i_4_n_1\,
      O => and_ln50_2_fu_320_p2
    );
\and_ln51_reg_362[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000100000001"
    )
        port map (
      I0 => j_0_reg_241_reg(8),
      I1 => j_0_reg_241_reg(9),
      I2 => j_0_reg_241_reg(6),
      I3 => j_0_reg_241_reg(7),
      I4 => j_0_reg_241_reg(5),
      I5 => \and_ln51_reg_362[0]_i_5_n_1\,
      O => \and_ln51_reg_362[0]_i_3_n_1\
    );
\and_ln51_reg_362[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000EFFFFFFFF"
    )
        port map (
      I0 => \and_ln51_reg_362[0]_i_6_n_1\,
      I1 => \and_ln51_reg_362[0]_i_7_n_1\,
      I2 => j_0_reg_241_reg(10),
      I3 => j_0_reg_241_reg(9),
      I4 => j_0_reg_241_reg(8),
      I5 => and_ln50_1_reg_344,
      O => \and_ln51_reg_362[0]_i_4_n_1\
    );
\and_ln51_reg_362[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => j_0_reg_241_reg(2),
      I1 => j_0_reg_241_reg(1),
      I2 => j_0_reg_241_reg(4),
      I3 => j_0_reg_241_reg(3),
      O => \and_ln51_reg_362[0]_i_5_n_1\
    );
\and_ln51_reg_362[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => j_0_reg_241_reg(6),
      I1 => j_0_reg_241_reg(7),
      O => \and_ln51_reg_362[0]_i_6_n_1\
    );
\and_ln51_reg_362[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007FFF"
    )
        port map (
      I0 => j_0_reg_241_reg(3),
      I1 => j_0_reg_241_reg(4),
      I2 => j_0_reg_241_reg(1),
      I3 => j_0_reg_241_reg(2),
      I4 => j_0_reg_241_reg(5),
      O => \and_ln51_reg_362[0]_i_7_n_1\
    );
\and_ln51_reg_362_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \and_ln51_reg_362[0]_i_1_n_1\,
      Q => and_ln51_reg_362,
      R => '0'
    );
\ap_CS_fsm[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1F00"
    )
        port map (
      I0 => \^start_once_reg_reg_0\,
      I1 => start_for_Convert_U0_full_n,
      I2 => Downsample_U0_ap_start,
      I3 => \^q\(0),
      I4 => \^ap_cs_fsm_reg[1]_0\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => i_0_reg_230(8),
      I2 => i_0_reg_230(3),
      I3 => i_0_reg_230(2),
      I4 => i_0_reg_230(1),
      I5 => \ap_CS_fsm[2]_i_3_n_1\,
      O => \^ap_cs_fsm_reg[1]_0\
    );
\ap_CS_fsm[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE000"
    )
        port map (
      I0 => \^start_once_reg_reg_0\,
      I1 => start_for_Convert_U0_full_n,
      I2 => Downsample_U0_ap_start,
      I3 => \^q\(0),
      I4 => ap_CS_fsm_state5,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFF0F0"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_2_n_1\,
      I1 => \ap_CS_fsm[3]_i_3_n_1\,
      I2 => p_1_in,
      I3 => ap_enable_reg_pp0_iter0,
      I4 => ap_CS_fsm_pp0_stage0,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => i_0_reg_230(8),
      I2 => i_0_reg_230(3),
      I3 => i_0_reg_230(2),
      I4 => i_0_reg_230(1),
      I5 => \ap_CS_fsm[2]_i_3_n_1\,
      O => p_1_in
    );
\ap_CS_fsm[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7FFFFFF"
    )
        port map (
      I0 => i_0_reg_230(4),
      I1 => i_0_reg_230(6),
      I2 => i_0_reg_230(0),
      I3 => i_0_reg_230(7),
      I4 => i_0_reg_230(9),
      I5 => i_0_reg_230(5),
      O => \ap_CS_fsm[2]_i_3_n_1\
    );
\ap_CS_fsm[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => \ap_CS_fsm[3]_i_2_n_1\,
      I2 => \ap_CS_fsm[3]_i_3_n_1\,
      I3 => ap_enable_reg_pp0_iter0,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1_reg_n_1,
      I1 => \ap_CS_fsm[3]_i_4_n_1\,
      I2 => src_img_data_stream_s_empty_n,
      I3 => src_img_data_stream_1_empty_n,
      I4 => src_img_data_stream_3_empty_n,
      I5 => src_img_data_stream_2_empty_n,
      O => \ap_CS_fsm[3]_i_2_n_1\
    );
\ap_CS_fsm[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => j_0_reg_241_reg(6),
      I1 => j_0_reg_241_reg(10),
      I2 => j_0_reg_241_reg(9),
      I3 => j_0_reg_241_reg(5),
      I4 => j_0_reg_241_reg(8),
      I5 => \ap_CS_fsm[3]_i_5_n_1\,
      O => \ap_CS_fsm[3]_i_3_n_1\
    );
\ap_CS_fsm[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F777777777777777"
    )
        port map (
      I0 => and_ln50_2_reg_358,
      I1 => and_ln51_reg_362,
      I2 => dst_img_data_stream_3_full_n,
      I3 => dst_img_data_stream_2_full_n,
      I4 => dst_img_data_stream_1_full_n,
      I5 => dst_img_data_stream_s_full_n,
      O => \ap_CS_fsm[3]_i_4_n_1\
    );
\ap_CS_fsm[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => j_0_reg_241_reg(0),
      I1 => j_0_reg_241_reg(7),
      I2 => j_0_reg_241_reg(3),
      I3 => j_0_reg_241_reg(4),
      I4 => j_0_reg_241_reg(1),
      I5 => j_0_reg_241_reg(2),
      O => \ap_CS_fsm[3]_i_5_n_1\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \^q\(0),
      S => SS(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => SS(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_pp0_stage0,
      R => SS(0)
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state5,
      R => SS(0)
    );
\ap_enable_reg_pp0_iter0_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD00FD00FD000000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => \ap_CS_fsm[3]_i_2_n_1\,
      I2 => \ap_CS_fsm[3]_i_3_n_1\,
      I3 => ap_rst_n,
      I4 => p_1_in,
      I5 => ap_enable_reg_pp0_iter0,
      O => \ap_enable_reg_pp0_iter0_i_1__1_n_1\
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_enable_reg_pp0_iter0_i_1__1_n_1\,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008888A000A000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter1_reg_n_1,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => \ap_CS_fsm[3]_i_3_n_1\,
      I4 => p_1_in,
      I5 => \ap_CS_fsm[3]_i_2_n_1\,
      O => ap_enable_reg_pp0_iter1_i_1_n_1
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_1,
      Q => ap_enable_reg_pp0_iter1_reg_n_1,
      R => '0'
    );
\i_0_reg_230[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => \^q\(0),
      I2 => Downsample_U0_ap_start,
      I3 => start_for_Convert_U0_full_n,
      I4 => \^start_once_reg_reg_0\,
      O => i_0_reg_230_0
    );
\i_0_reg_230_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_339(0),
      Q => i_0_reg_230(0),
      R => i_0_reg_230_0
    );
\i_0_reg_230_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_339(1),
      Q => i_0_reg_230(1),
      R => i_0_reg_230_0
    );
\i_0_reg_230_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_339(2),
      Q => i_0_reg_230(2),
      R => i_0_reg_230_0
    );
\i_0_reg_230_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_339(3),
      Q => i_0_reg_230(3),
      R => i_0_reg_230_0
    );
\i_0_reg_230_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_339(4),
      Q => i_0_reg_230(4),
      R => i_0_reg_230_0
    );
\i_0_reg_230_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_339(5),
      Q => i_0_reg_230(5),
      R => i_0_reg_230_0
    );
\i_0_reg_230_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_339(6),
      Q => i_0_reg_230(6),
      R => i_0_reg_230_0
    );
\i_0_reg_230_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_339(7),
      Q => i_0_reg_230(7),
      R => i_0_reg_230_0
    );
\i_0_reg_230_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_339(8),
      Q => i_0_reg_230(8),
      R => i_0_reg_230_0
    );
\i_0_reg_230_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state5,
      D => i_reg_339(9),
      Q => i_0_reg_230(9),
      R => i_0_reg_230_0
    );
\i_reg_339[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_0_reg_230(0),
      O => i_fu_262_p2(0)
    );
\i_reg_339[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_0_reg_230(0),
      I1 => i_0_reg_230(1),
      O => i_fu_262_p2(1)
    );
\i_reg_339[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_0_reg_230(2),
      I1 => i_0_reg_230(1),
      I2 => i_0_reg_230(0),
      O => i_fu_262_p2(2)
    );
\i_reg_339[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_0_reg_230(3),
      I1 => i_0_reg_230(0),
      I2 => i_0_reg_230(1),
      I3 => i_0_reg_230(2),
      O => i_fu_262_p2(3)
    );
\i_reg_339[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i_0_reg_230(4),
      I1 => i_0_reg_230(2),
      I2 => i_0_reg_230(1),
      I3 => i_0_reg_230(0),
      I4 => i_0_reg_230(3),
      O => i_fu_262_p2(4)
    );
\i_reg_339[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i_0_reg_230(5),
      I1 => i_0_reg_230(4),
      I2 => i_0_reg_230(3),
      I3 => i_0_reg_230(0),
      I4 => i_0_reg_230(1),
      I5 => i_0_reg_230(2),
      O => i_fu_262_p2(5)
    );
\i_reg_339[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => i_0_reg_230(6),
      I1 => \i_reg_339[9]_i_2_n_1\,
      I2 => i_0_reg_230(5),
      O => i_fu_262_p2(6)
    );
\i_reg_339[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => i_0_reg_230(7),
      I1 => i_0_reg_230(5),
      I2 => i_0_reg_230(6),
      I3 => \i_reg_339[9]_i_2_n_1\,
      O => i_fu_262_p2(7)
    );
\i_reg_339[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => i_0_reg_230(8),
      I1 => \i_reg_339[9]_i_2_n_1\,
      I2 => i_0_reg_230(6),
      I3 => i_0_reg_230(5),
      I4 => i_0_reg_230(7),
      O => i_fu_262_p2(8)
    );
\i_reg_339[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => i_0_reg_230(9),
      I1 => i_0_reg_230(7),
      I2 => i_0_reg_230(5),
      I3 => i_0_reg_230(6),
      I4 => \i_reg_339[9]_i_2_n_1\,
      I5 => i_0_reg_230(8),
      O => i_fu_262_p2(9)
    );
\i_reg_339[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => i_0_reg_230(2),
      I1 => i_0_reg_230(1),
      I2 => i_0_reg_230(0),
      I3 => i_0_reg_230(3),
      I4 => i_0_reg_230(4),
      O => \i_reg_339[9]_i_2_n_1\
    );
\i_reg_339_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_262_p2(0),
      Q => i_reg_339(0),
      R => '0'
    );
\i_reg_339_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_262_p2(1),
      Q => i_reg_339(1),
      R => '0'
    );
\i_reg_339_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_262_p2(2),
      Q => i_reg_339(2),
      R => '0'
    );
\i_reg_339_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_262_p2(3),
      Q => i_reg_339(3),
      R => '0'
    );
\i_reg_339_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_262_p2(4),
      Q => i_reg_339(4),
      R => '0'
    );
\i_reg_339_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_262_p2(5),
      Q => i_reg_339(5),
      R => '0'
    );
\i_reg_339_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_262_p2(6),
      Q => i_reg_339(6),
      R => '0'
    );
\i_reg_339_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_262_p2(7),
      Q => i_reg_339(7),
      R => '0'
    );
\i_reg_339_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_262_p2(8),
      Q => i_reg_339(8),
      R => '0'
    );
\i_reg_339_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_fu_262_p2(9),
      Q => i_reg_339(9),
      R => '0'
    );
int_ap_idle_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^start_once_reg_reg_0\,
      I1 => start_for_Convert_U0_full_n,
      I2 => Downsample_U0_ap_start,
      O => start_once_reg_reg_1
    );
\internal_full_n_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[2]_0\,
      I1 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I2 => ap_rst_n,
      O => ap_rst_n_0
    );
\j_0_reg_241[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => j_0_reg_241_reg(0),
      O => j_fu_296_p2(0)
    );
\j_0_reg_241[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => p_1_in,
      I1 => and_ln50_2_reg_3580,
      I2 => ap_enable_reg_pp0_iter0,
      O => j_0_reg_241
    );
\j_0_reg_241[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => and_ln50_2_reg_3580,
      O => j_0_reg_2410
    );
\j_0_reg_241[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => j_0_reg_241_reg(10),
      I1 => j_0_reg_241_reg(8),
      I2 => j_0_reg_241_reg(6),
      I3 => j_0_reg_241_reg(7),
      I4 => \j_0_reg_241[10]_i_5_n_1\,
      I5 => j_0_reg_241_reg(9),
      O => j_fu_296_p2(10)
    );
\j_0_reg_241[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_3_n_1\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => \ap_CS_fsm[3]_i_2_n_1\,
      O => and_ln50_2_reg_3580
    );
\j_0_reg_241[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => j_0_reg_241_reg(5),
      I1 => j_0_reg_241_reg(3),
      I2 => j_0_reg_241_reg(4),
      I3 => j_0_reg_241_reg(1),
      I4 => j_0_reg_241_reg(0),
      I5 => j_0_reg_241_reg(2),
      O => \j_0_reg_241[10]_i_5_n_1\
    );
\j_0_reg_241[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => j_0_reg_241_reg(0),
      I1 => j_0_reg_241_reg(1),
      O => j_fu_296_p2(1)
    );
\j_0_reg_241[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => j_0_reg_241_reg(2),
      I1 => j_0_reg_241_reg(1),
      I2 => j_0_reg_241_reg(0),
      O => j_fu_296_p2(2)
    );
\j_0_reg_241[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => j_0_reg_241_reg(1),
      I1 => j_0_reg_241_reg(0),
      I2 => j_0_reg_241_reg(2),
      I3 => j_0_reg_241_reg(3),
      O => j_fu_296_p2(3)
    );
\j_0_reg_241[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => j_0_reg_241_reg(4),
      I1 => j_0_reg_241_reg(1),
      I2 => j_0_reg_241_reg(0),
      I3 => j_0_reg_241_reg(2),
      I4 => j_0_reg_241_reg(3),
      O => j_fu_296_p2(4)
    );
\j_0_reg_241[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => j_0_reg_241_reg(3),
      I1 => j_0_reg_241_reg(4),
      I2 => j_0_reg_241_reg(1),
      I3 => j_0_reg_241_reg(0),
      I4 => j_0_reg_241_reg(2),
      I5 => j_0_reg_241_reg(5),
      O => j_fu_296_p2(5)
    );
\j_0_reg_241[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => j_0_reg_241_reg(6),
      I1 => \j_0_reg_241[7]_i_2_n_1\,
      I2 => j_0_reg_241_reg(4),
      I3 => j_0_reg_241_reg(3),
      I4 => j_0_reg_241_reg(5),
      O => j_fu_296_p2(6)
    );
\j_0_reg_241[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => j_0_reg_241_reg(7),
      I1 => j_0_reg_241_reg(5),
      I2 => j_0_reg_241_reg(3),
      I3 => j_0_reg_241_reg(4),
      I4 => \j_0_reg_241[7]_i_2_n_1\,
      I5 => j_0_reg_241_reg(6),
      O => j_fu_296_p2(7)
    );
\j_0_reg_241[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => j_0_reg_241_reg(1),
      I1 => j_0_reg_241_reg(0),
      I2 => j_0_reg_241_reg(2),
      O => \j_0_reg_241[7]_i_2_n_1\
    );
\j_0_reg_241[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => j_0_reg_241_reg(8),
      I1 => j_0_reg_241_reg(6),
      I2 => j_0_reg_241_reg(7),
      I3 => \j_0_reg_241[10]_i_5_n_1\,
      O => j_fu_296_p2(8)
    );
\j_0_reg_241[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => j_0_reg_241_reg(9),
      I1 => \j_0_reg_241[10]_i_5_n_1\,
      I2 => j_0_reg_241_reg(7),
      I3 => j_0_reg_241_reg(6),
      I4 => j_0_reg_241_reg(8),
      O => j_fu_296_p2(9)
    );
\j_0_reg_241_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(0),
      Q => j_0_reg_241_reg(0),
      R => j_0_reg_241
    );
\j_0_reg_241_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(10),
      Q => j_0_reg_241_reg(10),
      R => j_0_reg_241
    );
\j_0_reg_241_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(1),
      Q => j_0_reg_241_reg(1),
      R => j_0_reg_241
    );
\j_0_reg_241_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(2),
      Q => j_0_reg_241_reg(2),
      R => j_0_reg_241
    );
\j_0_reg_241_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(3),
      Q => j_0_reg_241_reg(3),
      R => j_0_reg_241
    );
\j_0_reg_241_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(4),
      Q => j_0_reg_241_reg(4),
      R => j_0_reg_241
    );
\j_0_reg_241_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(5),
      Q => j_0_reg_241_reg(5),
      R => j_0_reg_241
    );
\j_0_reg_241_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(6),
      Q => j_0_reg_241_reg(6),
      R => j_0_reg_241
    );
\j_0_reg_241_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(7),
      Q => j_0_reg_241_reg(7),
      R => j_0_reg_241
    );
\j_0_reg_241_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(8),
      Q => j_0_reg_241_reg(8),
      R => j_0_reg_241
    );
\j_0_reg_241_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => j_0_reg_2410,
      D => j_fu_296_p2(9),
      Q => j_0_reg_241_reg(9),
      R => j_0_reg_241
    );
\mOutPtr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[2]_0\,
      I1 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      O => E(0)
    );
\mOutPtr[1]_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => \ap_CS_fsm[3]_i_2_n_1\,
      I2 => ap_enable_reg_pp0_iter1_reg_n_1,
      O => \^ap_cs_fsm_reg[2]_0\
    );
\start_once_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => Downsample_U0_ap_start,
      I1 => start_for_Convert_U0_full_n,
      I2 => \^start_once_reg_reg_0\,
      I3 => \^ap_cs_fsm_reg[1]_0\,
      O => \start_once_reg_i_1__0_n_1\
    );
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \start_once_reg_i_1__0_n_1\,
      Q => \^start_once_reg_reg_0\,
      R => SS(0)
    );
\trunc_ln44_reg_330_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state2,
      D => i_0_reg_230(0),
      Q => trunc_ln44_reg_330,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_1 is
  port (
    dst_img_data_stream_3_empty_n : out STD_LOGIC;
    dst_img_data_stream_3_full_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_1 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_1;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dst_img_data_stream_3_empty_n\ : STD_LOGIC;
  signal \^dst_img_data_stream_3_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__6_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__10_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__10_n_1\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  dst_img_data_stream_3_empty_n <= \^dst_img_data_stream_3_empty_n\;
  dst_img_data_stream_3_full_n <= \^dst_img_data_stream_3_full_n\;
\internal_empty_n_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A888A888A08"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^dst_img_data_stream_3_empty_n\,
      I2 => internal_empty_n_reg_0,
      I3 => internal_empty_n_reg_1,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \internal_empty_n_i_1__6_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__6_n_1\,
      Q => \^dst_img_data_stream_3_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^dst_img_data_stream_3_full_n\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => internal_empty_n_reg_1,
      I4 => internal_empty_n_reg_0,
      O => \internal_full_n_i_1__10_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__10_n_1\,
      Q => \^dst_img_data_stream_3_full_n\,
      S => internal_full_n_reg_0
    );
\mOutPtr[0]_i_1__10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \mOutPtr[0]_i_1__10_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__10_n_1\,
      Q => \^q\(0),
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => \^q\(1),
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_4 is
  port (
    ifm_img_data_stream_2_empty_n : out STD_LOGIC;
    ifm_img_data_stream_2_full_n : out STD_LOGIC;
    q2_reg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    Mat2AXIvideo_U0_img_data_stream_3_V_read : in STD_LOGIC;
    q2 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \odata_reg[16]\ : in STD_LOGIC;
    \odata_reg[16]_0\ : in STD_LOGIC;
    \odata_reg[22]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \odata_reg[17]\ : in STD_LOGIC;
    \odata_reg[18]\ : in STD_LOGIC;
    \odata_reg[19]\ : in STD_LOGIC;
    \odata_reg[20]\ : in STD_LOGIC;
    \odata_reg[21]\ : in STD_LOGIC;
    \odata_reg[22]_0\ : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_4 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_4;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_4 is
  signal \^ifm_img_data_stream_2_empty_n\ : STD_LOGIC;
  signal \^ifm_img_data_stream_2_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__11_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__12_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__1_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__12_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__12\ : label is "soft_lutpair123";
begin
  ifm_img_data_stream_2_empty_n <= \^ifm_img_data_stream_2_empty_n\;
  ifm_img_data_stream_2_full_n <= \^ifm_img_data_stream_2_full_n\;
\internal_empty_n_i_1__11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88A888A888A880A8"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ifm_img_data_stream_2_empty_n\,
      I2 => shiftReg_ce,
      I3 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      I4 => \mOutPtr_reg_n_1_[1]\,
      I5 => \mOutPtr_reg_n_1_[0]\,
      O => \internal_empty_n_i_1__11_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__11_n_1\,
      Q => \^ifm_img_data_stream_2_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^ifm_img_data_stream_2_full_n\,
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => shiftReg_ce,
      I4 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      O => \internal_full_n_i_1__12_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__12_n_1\,
      Q => \^ifm_img_data_stream_2_full_n\,
      S => internal_full_n_reg_0
    );
\ireg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(0),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[16]\,
      O => D(0)
    );
\ireg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(1),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[17]\,
      O => D(1)
    );
\ireg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(2),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[18]\,
      O => D(2)
    );
\ireg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(3),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[19]\,
      O => D(3)
    );
\ireg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(4),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[20]\,
      O => D(4)
    );
\ireg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(5),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[21]\,
      O => D(5)
    );
\ireg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(6),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[22]_0\,
      O => D(6)
    );
\mOutPtr[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1__1_n_1\
    );
\mOutPtr[1]_i_1__12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      I1 => shiftReg_ce,
      I2 => \mOutPtr_reg_n_1_[1]\,
      I3 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[1]_i_1__12_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__1_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1__12_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
\odata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(0),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[16]\,
      I4 => \odata_reg[16]_0\,
      I5 => \odata_reg[22]\(0),
      O => q2_reg(0)
    );
\odata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(1),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[17]\,
      I4 => \odata_reg[16]_0\,
      I5 => \odata_reg[22]\(1),
      O => q2_reg(1)
    );
\odata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(2),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[18]\,
      I4 => \odata_reg[16]_0\,
      I5 => \odata_reg[22]\(2),
      O => q2_reg(2)
    );
\odata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(3),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[19]\,
      I4 => \odata_reg[16]_0\,
      I5 => \odata_reg[22]\(3),
      O => q2_reg(3)
    );
\odata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(4),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[20]\,
      I4 => \odata_reg[16]_0\,
      I5 => \odata_reg[22]\(4),
      O => q2_reg(4)
    );
\odata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(5),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[21]\,
      I4 => \odata_reg[16]_0\,
      I5 => \odata_reg[22]\(5),
      O => q2_reg(5)
    );
\odata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(6),
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \odata_reg[22]_0\,
      I4 => \odata_reg[16]_0\,
      I5 => \odata_reg[22]\(6),
      O => q2_reg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_9 is
  port (
    src_img_data_stream_3_empty_n : out STD_LOGIC;
    src_img_data_stream_3_full_n : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    AXIvideo2Mat_U0_img_data_stream_3_V_write : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_9 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_9;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_9 is
  signal \internal_empty_n_i_1__3_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__7_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__6_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__1_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  signal \^src_img_data_stream_3_empty_n\ : STD_LOGIC;
  signal \^src_img_data_stream_3_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__6\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__1\ : label is "soft_lutpair128";
begin
  src_img_data_stream_3_empty_n <= \^src_img_data_stream_3_empty_n\;
  src_img_data_stream_3_full_n <= \^src_img_data_stream_3_full_n\;
\internal_empty_n_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888A888A888A880"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^src_img_data_stream_3_empty_n\,
      I2 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I3 => internal_full_n_reg_1,
      I4 => \mOutPtr_reg_n_1_[0]\,
      I5 => \mOutPtr_reg_n_1_[1]\,
      O => \internal_empty_n_i_1__3_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__3_n_1\,
      Q => \^src_img_data_stream_3_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA2A"
    )
        port map (
      I0 => \^src_img_data_stream_3_full_n\,
      I1 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I2 => internal_full_n_reg_1,
      I3 => \mOutPtr_reg_n_1_[0]\,
      I4 => \mOutPtr_reg_n_1_[1]\,
      O => \internal_full_n_i_1__7_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__7_n_1\,
      Q => \^src_img_data_stream_3_full_n\,
      S => internal_full_n_reg_0
    );
\mOutPtr[0]_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1__6_n_1\
    );
\mOutPtr[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => internal_full_n_reg_1,
      I1 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \mOutPtr_reg_n_1_[1]\,
      O => \mOutPtr[1]_i_1__1_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__6_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1__1_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg is
  port (
    \SRL_SIG_reg[0][7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIvideo2Mat_U0_img_data_stream_3_V_write : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg : entity is "fifo_w8_d2_A_shiftReg";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg is
  signal \SRL_SIG_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \SRL_SIG_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
\SRL_SIG[0][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(0),
      O => \SRL_SIG_reg[0][7]_0\(0)
    );
\SRL_SIG[0][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(1),
      O => \SRL_SIG_reg[0][7]_0\(1)
    );
\SRL_SIG[0][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(2),
      O => \SRL_SIG_reg[0][7]_0\(2)
    );
\SRL_SIG[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(3),
      O => \SRL_SIG_reg[0][7]_0\(3)
    );
\SRL_SIG[0][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(4),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(4),
      O => \SRL_SIG_reg[0][7]_0\(4)
    );
\SRL_SIG[0][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(5),
      O => \SRL_SIG_reg[0][7]_0\(5)
    );
\SRL_SIG[0][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(6),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(6),
      O => \SRL_SIG_reg[0][7]_0\(6)
    );
\SRL_SIG[0][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg[0]\(7),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg[1]\(7),
      O => \SRL_SIG_reg[0][7]_0\(7)
    );
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(0),
      Q => \SRL_SIG_reg[0]\(0),
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(1),
      Q => \SRL_SIG_reg[0]\(1),
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(2),
      Q => \SRL_SIG_reg[0]\(2),
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(3),
      Q => \SRL_SIG_reg[0]\(3),
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(4),
      Q => \SRL_SIG_reg[0]\(4),
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(5),
      Q => \SRL_SIG_reg[0]\(5),
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(6),
      Q => \SRL_SIG_reg[0]\(6),
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(7),
      Q => \SRL_SIG_reg[0]\(7),
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg[0]\(0),
      Q => \SRL_SIG_reg[1]\(0),
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg[0]\(1),
      Q => \SRL_SIG_reg[1]\(1),
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg[0]\(2),
      Q => \SRL_SIG_reg[1]\(2),
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg[0]\(3),
      Q => \SRL_SIG_reg[1]\(3),
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg[0]\(4),
      Q => \SRL_SIG_reg[1]\(4),
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg[0]\(5),
      Q => \SRL_SIG_reg[1]\(5),
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg[0]\(6),
      Q => \SRL_SIG_reg[1]\(6),
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg[0]\(7),
      Q => \SRL_SIG_reg[1]\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_11 is
  port (
    \SRL_SIG_reg[0][7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIvideo2Mat_U0_img_data_stream_3_V_write : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_11 : entity is "fifo_w8_d2_A_shiftReg";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_11;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_11 is
  signal \SRL_SIG_reg_n_1_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][7]\ : STD_LOGIC;
begin
\SRL_SIG[0][0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][0]\,
      O => \SRL_SIG_reg[0][7]_0\(0)
    );
\SRL_SIG[0][1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][1]\,
      O => \SRL_SIG_reg[0][7]_0\(1)
    );
\SRL_SIG[0][2]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][2]\,
      O => \SRL_SIG_reg[0][7]_0\(2)
    );
\SRL_SIG[0][3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][3]\,
      O => \SRL_SIG_reg[0][7]_0\(3)
    );
\SRL_SIG[0][4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][4]\,
      O => \SRL_SIG_reg[0][7]_0\(4)
    );
\SRL_SIG[0][5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][5]\,
      O => \SRL_SIG_reg[0][7]_0\(5)
    );
\SRL_SIG[0][6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][6]\,
      O => \SRL_SIG_reg[0][7]_0\(6)
    );
\SRL_SIG[0][7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][7]\,
      O => \SRL_SIG_reg[0][7]_0\(7)
    );
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(0),
      Q => \SRL_SIG_reg_n_1_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(1),
      Q => \SRL_SIG_reg_n_1_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(2),
      Q => \SRL_SIG_reg_n_1_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(3),
      Q => \SRL_SIG_reg_n_1_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(4),
      Q => \SRL_SIG_reg_n_1_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(5),
      Q => \SRL_SIG_reg_n_1_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(6),
      Q => \SRL_SIG_reg_n_1_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(7),
      Q => \SRL_SIG_reg_n_1_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][0]\,
      Q => \SRL_SIG_reg_n_1_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][1]\,
      Q => \SRL_SIG_reg_n_1_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][2]\,
      Q => \SRL_SIG_reg_n_1_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][3]\,
      Q => \SRL_SIG_reg_n_1_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][4]\,
      Q => \SRL_SIG_reg_n_1_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][5]\,
      Q => \SRL_SIG_reg_n_1_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][6]\,
      Q => \SRL_SIG_reg_n_1_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][7]\,
      Q => \SRL_SIG_reg_n_1_[1][7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_12 is
  port (
    \SRL_SIG_reg[0][7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    AXIvideo2Mat_U0_img_data_stream_3_V_write : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_12 : entity is "fifo_w8_d2_A_shiftReg";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_12;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_12 is
  signal \SRL_SIG_reg_n_1_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][7]\ : STD_LOGIC;
begin
\SRL_SIG[0][0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][0]\,
      O => \SRL_SIG_reg[0][7]_0\(0)
    );
\SRL_SIG[0][1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][1]\,
      O => \SRL_SIG_reg[0][7]_0\(1)
    );
\SRL_SIG[0][2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][2]\,
      O => \SRL_SIG_reg[0][7]_0\(2)
    );
\SRL_SIG[0][3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][3]\,
      O => \SRL_SIG_reg[0][7]_0\(3)
    );
\SRL_SIG[0][4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][4]\,
      O => \SRL_SIG_reg[0][7]_0\(4)
    );
\SRL_SIG[0][5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][5]\,
      O => \SRL_SIG_reg[0][7]_0\(5)
    );
\SRL_SIG[0][6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][6]\,
      O => \SRL_SIG_reg[0][7]_0\(6)
    );
\SRL_SIG[0][7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][7]\,
      O => \SRL_SIG_reg[0][7]_0\(7)
    );
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(0),
      Q => \SRL_SIG_reg_n_1_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(1),
      Q => \SRL_SIG_reg_n_1_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(2),
      Q => \SRL_SIG_reg_n_1_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(3),
      Q => \SRL_SIG_reg_n_1_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(4),
      Q => \SRL_SIG_reg_n_1_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(5),
      Q => \SRL_SIG_reg_n_1_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(6),
      Q => \SRL_SIG_reg_n_1_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => D(7),
      Q => \SRL_SIG_reg_n_1_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][0]\,
      Q => \SRL_SIG_reg_n_1_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][1]\,
      Q => \SRL_SIG_reg_n_1_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][2]\,
      Q => \SRL_SIG_reg_n_1_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][3]\,
      Q => \SRL_SIG_reg_n_1_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][4]\,
      Q => \SRL_SIG_reg_n_1_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][5]\,
      Q => \SRL_SIG_reg_n_1_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][6]\,
      Q => \SRL_SIG_reg_n_1_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D => \SRL_SIG_reg_n_1_[0][7]\,
      Q => \SRL_SIG_reg_n_1_[1][7]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_13 is
  port (
    q0_reg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    q0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \odata_reg[6]\ : in STD_LOGIC;
    \odata_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    shiftReg_ce : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_13 : entity is "fifo_w8_d2_A_shiftReg";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_13;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_13 is
  signal \SRL_SIG_reg_n_1_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][6]\ : STD_LOGIC;
begin
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q0(0),
      Q => \SRL_SIG_reg_n_1_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q0(1),
      Q => \SRL_SIG_reg_n_1_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q0(2),
      Q => \SRL_SIG_reg_n_1_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q0(3),
      Q => \SRL_SIG_reg_n_1_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q0(4),
      Q => \SRL_SIG_reg_n_1_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q0(5),
      Q => \SRL_SIG_reg_n_1_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q0(6),
      Q => \SRL_SIG_reg_n_1_[1][6]\,
      R => '0'
    );
\ireg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q0(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][0]\,
      O => D(0)
    );
\ireg[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q0(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][1]\,
      O => D(1)
    );
\ireg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q0(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][2]\,
      O => D(2)
    );
\ireg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q0(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][3]\,
      O => D(3)
    );
\ireg[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q0(4),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][4]\,
      O => D(4)
    );
\ireg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q0(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][5]\,
      O => D(5)
    );
\ireg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q0(6),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][6]\,
      O => D(6)
    );
\odata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q0(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][0]\,
      I4 => \odata_reg[6]\,
      I5 => \odata_reg[6]_0\(0),
      O => q0_reg(0)
    );
\odata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q0(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][1]\,
      I4 => \odata_reg[6]\,
      I5 => \odata_reg[6]_0\(1),
      O => q0_reg(1)
    );
\odata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q0(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][2]\,
      I4 => \odata_reg[6]\,
      I5 => \odata_reg[6]_0\(2),
      O => q0_reg(2)
    );
\odata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q0(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][3]\,
      I4 => \odata_reg[6]\,
      I5 => \odata_reg[6]_0\(3),
      O => q0_reg(3)
    );
\odata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q0(4),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][4]\,
      I4 => \odata_reg[6]\,
      I5 => \odata_reg[6]_0\(4),
      O => q0_reg(4)
    );
\odata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q0(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][5]\,
      I4 => \odata_reg[6]\,
      I5 => \odata_reg[6]_0\(5),
      O => q0_reg(5)
    );
\odata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q0(6),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][6]\,
      I4 => \odata_reg[6]\,
      I5 => \odata_reg[6]_0\(6),
      O => q0_reg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_14 is
  port (
    \SRL_SIG_reg[1][0]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[1][1]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[1][2]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[1][3]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[1][4]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[1][5]_0\ : out STD_LOGIC;
    \SRL_SIG_reg[1][6]_0\ : out STD_LOGIC;
    q2_reg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    shiftReg_ce : in STD_LOGIC;
    q2 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \odata_reg[30]\ : in STD_LOGIC;
    \odata_reg[30]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_14 : entity is "fifo_w8_d2_A_shiftReg";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_14;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_14 is
  signal \^srl_sig_reg[1][0]_0\ : STD_LOGIC;
  signal \^srl_sig_reg[1][1]_0\ : STD_LOGIC;
  signal \^srl_sig_reg[1][2]_0\ : STD_LOGIC;
  signal \^srl_sig_reg[1][3]_0\ : STD_LOGIC;
  signal \^srl_sig_reg[1][4]_0\ : STD_LOGIC;
  signal \^srl_sig_reg[1][5]_0\ : STD_LOGIC;
  signal \^srl_sig_reg[1][6]_0\ : STD_LOGIC;
begin
  \SRL_SIG_reg[1][0]_0\ <= \^srl_sig_reg[1][0]_0\;
  \SRL_SIG_reg[1][1]_0\ <= \^srl_sig_reg[1][1]_0\;
  \SRL_SIG_reg[1][2]_0\ <= \^srl_sig_reg[1][2]_0\;
  \SRL_SIG_reg[1][3]_0\ <= \^srl_sig_reg[1][3]_0\;
  \SRL_SIG_reg[1][4]_0\ <= \^srl_sig_reg[1][4]_0\;
  \SRL_SIG_reg[1][5]_0\ <= \^srl_sig_reg[1][5]_0\;
  \SRL_SIG_reg[1][6]_0\ <= \^srl_sig_reg[1][6]_0\;
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q2(0),
      Q => \^srl_sig_reg[1][0]_0\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q2(1),
      Q => \^srl_sig_reg[1][1]_0\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q2(2),
      Q => \^srl_sig_reg[1][2]_0\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q2(3),
      Q => \^srl_sig_reg[1][3]_0\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q2(4),
      Q => \^srl_sig_reg[1][4]_0\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q2(5),
      Q => \^srl_sig_reg[1][5]_0\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => q2(6),
      Q => \^srl_sig_reg[1][6]_0\,
      R => '0'
    );
\ireg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][0]_0\,
      O => D(0)
    );
\ireg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][1]_0\,
      O => D(1)
    );
\ireg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][2]_0\,
      O => D(2)
    );
\ireg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][3]_0\,
      O => D(3)
    );
\ireg[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(4),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][4]_0\,
      O => D(4)
    );
\ireg[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][5]_0\,
      O => D(5)
    );
\ireg[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => q2(6),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][6]_0\,
      O => D(6)
    );
\odata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][0]_0\,
      I4 => \odata_reg[30]\,
      I5 => \odata_reg[30]_0\(0),
      O => q2_reg(0)
    );
\odata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][1]_0\,
      I4 => \odata_reg[30]\,
      I5 => \odata_reg[30]_0\(1),
      O => q2_reg(1)
    );
\odata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][2]_0\,
      I4 => \odata_reg[30]\,
      I5 => \odata_reg[30]_0\(2),
      O => q2_reg(2)
    );
\odata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][3]_0\,
      I4 => \odata_reg[30]\,
      I5 => \odata_reg[30]_0\(3),
      O => q2_reg(3)
    );
\odata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(4),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][4]_0\,
      I4 => \odata_reg[30]\,
      I5 => \odata_reg[30]_0\(4),
      O => q2_reg(4)
    );
\odata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][5]_0\,
      I4 => \odata_reg[30]\,
      I5 => \odata_reg[30]_0\(5),
      O => q2_reg(5)
    );
\odata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => q2(6),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^srl_sig_reg[1][6]_0\,
      I4 => \odata_reg[30]\,
      I5 => \odata_reg[30]_0\(6),
      O => q2_reg(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_15 is
  port (
    q0_reg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    q0_reg_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \odata_reg[14]\ : in STD_LOGIC;
    \odata_reg[14]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    shiftReg_ce : in STD_LOGIC;
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_15 : entity is "fifo_w8_d2_A_shiftReg";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_15;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_15 is
  signal \SRL_SIG_reg_n_1_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][6]\ : STD_LOGIC;
begin
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(0),
      Q => \SRL_SIG_reg_n_1_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(1),
      Q => \SRL_SIG_reg_n_1_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(2),
      Q => \SRL_SIG_reg_n_1_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(3),
      Q => \SRL_SIG_reg_n_1_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(4),
      Q => \SRL_SIG_reg_n_1_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(5),
      Q => \SRL_SIG_reg_n_1_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => shiftReg_ce,
      D => D(6),
      Q => \SRL_SIG_reg_n_1_[1][6]\,
      R => '0'
    );
\ireg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][2]\,
      O => q0_reg_0(2)
    );
\ireg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][3]\,
      O => q0_reg_0(3)
    );
\ireg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(4),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][4]\,
      O => q0_reg_0(4)
    );
\ireg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][5]\,
      O => q0_reg_0(5)
    );
\ireg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(6),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][6]\,
      O => q0_reg_0(6)
    );
\ireg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][0]\,
      O => q0_reg_0(0)
    );
\ireg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => D(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][1]\,
      O => q0_reg_0(1)
    );
\odata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => D(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][2]\,
      I4 => \odata_reg[14]\,
      I5 => \odata_reg[14]_0\(2),
      O => q0_reg(2)
    );
\odata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => D(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][3]\,
      I4 => \odata_reg[14]\,
      I5 => \odata_reg[14]_0\(3),
      O => q0_reg(3)
    );
\odata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => D(4),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][4]\,
      I4 => \odata_reg[14]\,
      I5 => \odata_reg[14]_0\(4),
      O => q0_reg(4)
    );
\odata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => D(5),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][5]\,
      I4 => \odata_reg[14]\,
      I5 => \odata_reg[14]_0\(5),
      O => q0_reg(5)
    );
\odata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => D(6),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][6]\,
      I4 => \odata_reg[14]\,
      I5 => \odata_reg[14]_0\(6),
      O => q0_reg(6)
    );
\odata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => D(0),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][0]\,
      I4 => \odata_reg[14]\,
      I5 => \odata_reg[14]_0\(0),
      O => q0_reg(0)
    );
\odata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => D(1),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][1]\,
      I4 => \odata_reg[14]\,
      I5 => \odata_reg[14]_0\(1),
      O => q0_reg(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_16 is
  port (
    addr0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SRL_SIG_reg[0][7]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_16 : entity is "fifo_w8_d2_A_shiftReg";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_16;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_16 is
  signal \SRL_SIG_reg_n_1_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][7]\ : STD_LOGIC;
begin
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(0),
      Q => \SRL_SIG_reg_n_1_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(1),
      Q => \SRL_SIG_reg_n_1_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(2),
      Q => \SRL_SIG_reg_n_1_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(3),
      Q => \SRL_SIG_reg_n_1_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(4),
      Q => \SRL_SIG_reg_n_1_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(5),
      Q => \SRL_SIG_reg_n_1_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(6),
      Q => \SRL_SIG_reg_n_1_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(7),
      Q => \SRL_SIG_reg_n_1_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][0]\,
      Q => \SRL_SIG_reg_n_1_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][1]\,
      Q => \SRL_SIG_reg_n_1_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][2]\,
      Q => \SRL_SIG_reg_n_1_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][3]\,
      Q => \SRL_SIG_reg_n_1_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][4]\,
      Q => \SRL_SIG_reg_n_1_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][5]\,
      Q => \SRL_SIG_reg_n_1_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][6]\,
      Q => \SRL_SIG_reg_n_1_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][7]\,
      Q => \SRL_SIG_reg_n_1_[1][7]\,
      R => '0'
    );
q0_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][0]\,
      O => addr0(0)
    );
q0_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][7]\,
      O => addr0(7)
    );
q0_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][6]\,
      O => addr0(6)
    );
q0_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][5]\,
      O => addr0(5)
    );
q0_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][4]\,
      O => addr0(4)
    );
q0_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][3]\,
      O => addr0(3)
    );
q0_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][2]\,
      O => addr0(2)
    );
q0_reg_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][1]\,
      O => addr0(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_17 is
  port (
    addr2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SRL_SIG_reg[0][7]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_17 : entity is "fifo_w8_d2_A_shiftReg";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_17;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_17 is
  signal \SRL_SIG_reg_n_1_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][7]\ : STD_LOGIC;
begin
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(0),
      Q => \SRL_SIG_reg_n_1_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(1),
      Q => \SRL_SIG_reg_n_1_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(2),
      Q => \SRL_SIG_reg_n_1_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(3),
      Q => \SRL_SIG_reg_n_1_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(4),
      Q => \SRL_SIG_reg_n_1_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(5),
      Q => \SRL_SIG_reg_n_1_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(6),
      Q => \SRL_SIG_reg_n_1_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg[0][7]_1\(7),
      Q => \SRL_SIG_reg_n_1_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][0]\,
      Q => \SRL_SIG_reg_n_1_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][1]\,
      Q => \SRL_SIG_reg_n_1_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][2]\,
      Q => \SRL_SIG_reg_n_1_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][3]\,
      Q => \SRL_SIG_reg_n_1_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][4]\,
      Q => \SRL_SIG_reg_n_1_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][5]\,
      Q => \SRL_SIG_reg_n_1_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][6]\,
      Q => \SRL_SIG_reg_n_1_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[0][7]_0\,
      D => \SRL_SIG_reg_n_1_[0][7]\,
      Q => \SRL_SIG_reg_n_1_[1][7]\,
      R => '0'
    );
q2_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][7]\,
      O => addr2(7)
    );
q2_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][6]\,
      O => addr2(6)
    );
q2_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][5]\,
      O => addr2(5)
    );
q2_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][4]\,
      O => addr2(4)
    );
q2_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][3]\,
      O => addr2(3)
    );
q2_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][2]\,
      O => addr2(2)
    );
q2_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][1]\,
      O => addr2(1)
    );
q2_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][0]\,
      O => addr2(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_18 is
  port (
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \SRL_SIG_reg[1][0]_0\ : in STD_LOGIC;
    \SRL_SIG_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_18 : entity is "fifo_w8_d2_A_shiftReg";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_18;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_18 is
  signal \SRL_SIG_reg_n_1_[0][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[0][7]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][0]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][1]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][2]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][3]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][4]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][5]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][6]\ : STD_LOGIC;
  signal \SRL_SIG_reg_n_1_[1][7]\ : STD_LOGIC;
begin
\SRL_SIG_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg[0][7]_0\(0),
      Q => \SRL_SIG_reg_n_1_[0][0]\,
      R => '0'
    );
\SRL_SIG_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg[0][7]_0\(1),
      Q => \SRL_SIG_reg_n_1_[0][1]\,
      R => '0'
    );
\SRL_SIG_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg[0][7]_0\(2),
      Q => \SRL_SIG_reg_n_1_[0][2]\,
      R => '0'
    );
\SRL_SIG_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg[0][7]_0\(3),
      Q => \SRL_SIG_reg_n_1_[0][3]\,
      R => '0'
    );
\SRL_SIG_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg[0][7]_0\(4),
      Q => \SRL_SIG_reg_n_1_[0][4]\,
      R => '0'
    );
\SRL_SIG_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg[0][7]_0\(5),
      Q => \SRL_SIG_reg_n_1_[0][5]\,
      R => '0'
    );
\SRL_SIG_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg[0][7]_0\(6),
      Q => \SRL_SIG_reg_n_1_[0][6]\,
      R => '0'
    );
\SRL_SIG_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg[0][7]_0\(7),
      Q => \SRL_SIG_reg_n_1_[0][7]\,
      R => '0'
    );
\SRL_SIG_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg_n_1_[0][0]\,
      Q => \SRL_SIG_reg_n_1_[1][0]\,
      R => '0'
    );
\SRL_SIG_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg_n_1_[0][1]\,
      Q => \SRL_SIG_reg_n_1_[1][1]\,
      R => '0'
    );
\SRL_SIG_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg_n_1_[0][2]\,
      Q => \SRL_SIG_reg_n_1_[1][2]\,
      R => '0'
    );
\SRL_SIG_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg_n_1_[0][3]\,
      Q => \SRL_SIG_reg_n_1_[1][3]\,
      R => '0'
    );
\SRL_SIG_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg_n_1_[0][4]\,
      Q => \SRL_SIG_reg_n_1_[1][4]\,
      R => '0'
    );
\SRL_SIG_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg_n_1_[0][5]\,
      Q => \SRL_SIG_reg_n_1_[1][5]\,
      R => '0'
    );
\SRL_SIG_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg_n_1_[0][6]\,
      Q => \SRL_SIG_reg_n_1_[1][6]\,
      R => '0'
    );
\SRL_SIG_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \SRL_SIG_reg[1][0]_0\,
      D => \SRL_SIG_reg_n_1_[0][7]\,
      Q => \SRL_SIG_reg_n_1_[1][7]\,
      R => '0'
    );
q0_reg_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][7]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][7]\,
      O => ADDRBWRADDR(7)
    );
q0_reg_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][6]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][6]\,
      O => ADDRBWRADDR(6)
    );
q0_reg_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][5]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][5]\,
      O => ADDRBWRADDR(5)
    );
q0_reg_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][4]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][4]\,
      O => ADDRBWRADDR(4)
    );
q0_reg_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][3]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][3]\,
      O => ADDRBWRADDR(3)
    );
q0_reg_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][2]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][2]\,
      O => ADDRBWRADDR(2)
    );
q0_reg_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][1]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][1]\,
      O => ADDRBWRADDR(1)
    );
q0_reg_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \SRL_SIG_reg_n_1_[0][0]\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => \SRL_SIG_reg_n_1_[1][0]\,
      O => ADDRBWRADDR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_hls_preprocess_AXILiteS_s_axi is
  port (
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    AXIvideo2Mat_U0_ap_start : out STD_LOGIC;
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    int_ap_start_reg_0 : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 4 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_idle : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    AXIvideo2Mat_U0_ap_ready : in STD_LOGIC;
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    start_for_Downsample_U0_full_n : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    Mat2AXIvideo_U0_ap_ready : in STD_LOGIC;
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_hls_preprocess_AXILiteS_s_axi : entity is "hls_preprocess_AXILiteS_s_axi";
end cam_hls_preprocess_0_0_hls_preprocess_AXILiteS_s_axi;

architecture STRUCTURE of cam_hls_preprocess_0_0_hls_preprocess_AXILiteS_s_axi is
  signal \^axivideo2mat_u0_ap_start\ : STD_LOGIC;
  signal \FSM_onehot_rstate[1]_i_1_n_1\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_1\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_1\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_1\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_1\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal int_ap_done : STD_LOGIC;
  signal int_ap_done_i_1_n_1 : STD_LOGIC;
  signal int_ap_done_i_2_n_1 : STD_LOGIC;
  signal int_ap_idle : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_start3_out : STD_LOGIC;
  signal int_ap_start_i_1_n_1 : STD_LOGIC;
  signal int_auto_restart : STD_LOGIC;
  signal int_auto_restart_i_1_n_1 : STD_LOGIC;
  signal int_gie_i_1_n_1 : STD_LOGIC;
  signal int_gie_reg_n_1 : STD_LOGIC;
  signal int_ier9_out : STD_LOGIC;
  signal \int_ier[1]_i_2_n_1\ : STD_LOGIC;
  signal \int_ier_reg_n_1_[0]\ : STD_LOGIC;
  signal int_isr : STD_LOGIC;
  signal int_isr6_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_1\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_1\ : STD_LOGIC;
  signal \int_isr_reg_n_1_[0]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdata[0]_i_2_n_1\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_1\ : STD_LOGIC;
  signal \^s_axi_axilites_bvalid\ : STD_LOGIC;
  signal \^s_axi_axilites_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_1_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_1_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_1_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_1_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair121";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of int_ap_done_i_2 : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of int_ap_start_i_1 : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of int_ap_start_i_2 : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of int_auto_restart_i_1 : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of int_gie_i_1 : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \int_isr[1]_i_2\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \rdata[1]_i_2\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \rdata[2]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \rdata[7]_i_2\ : label is "soft_lutpair118";
begin
  AXIvideo2Mat_U0_ap_start <= \^axivideo2mat_u0_ap_start\;
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  s_axi_AXILiteS_BVALID <= \^s_axi_axilites_bvalid\;
  s_axi_AXILiteS_RVALID <= \^s_axi_axilites_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8FDD"
    )
        port map (
      I0 => \^s_axi_axilites_rvalid\,
      I1 => s_axi_AXILiteS_RREADY,
      I2 => s_axi_AXILiteS_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[1]_i_1_n_1\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_AXILiteS_RREADY,
      I1 => \^s_axi_axilites_rvalid\,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => s_axi_AXILiteS_ARVALID,
      O => \FSM_onehot_rstate[2]_i_1_n_1\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_1\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => SS(0)
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_1\,
      Q => \^s_axi_axilites_rvalid\,
      R => SS(0)
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF353035"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_AXILiteS_AWVALID,
      I2 => \^fsm_onehot_wstate_reg[1]_0\,
      I3 => \^s_axi_axilites_bvalid\,
      I4 => s_axi_AXILiteS_BREADY,
      O => \FSM_onehot_wstate[1]_i_2_n_1\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_AXILiteS_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_AXILiteS_AWVALID,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_1\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_AXILiteS_WVALID,
      I2 => s_axi_AXILiteS_BREADY,
      I3 => \^s_axi_axilites_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_1\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_2_n_1\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => SS(0)
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_1\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => SS(0)
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_1\,
      Q => \^s_axi_axilites_bvalid\,
      R => SS(0)
    );
int_ap_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFF00"
    )
        port map (
      I0 => int_ap_done_i_2_n_1,
      I1 => s_axi_AXILiteS_ARVALID,
      I2 => \^fsm_onehot_rstate_reg[1]_0\,
      I3 => Mat2AXIvideo_U0_ap_ready,
      I4 => int_ap_done,
      O => int_ap_done_i_1_n_1
    );
int_ap_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_AXILiteS_ARADDR(2),
      I1 => s_axi_AXILiteS_ARADDR(3),
      I2 => s_axi_AXILiteS_ARADDR(1),
      I3 => s_axi_AXILiteS_ARADDR(0),
      O => int_ap_done_i_2_n_1
    );
int_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_done_i_1_n_1,
      Q => int_ap_done,
      R => SS(0)
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => int_ap_idle,
      R => SS(0)
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => AXIvideo2Mat_U0_ap_ready,
      Q => int_ap_ready,
      R => SS(0)
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => int_auto_restart,
      I1 => AXIvideo2Mat_U0_ap_ready,
      I2 => int_ap_start3_out,
      I3 => \^axivideo2mat_u0_ap_start\,
      O => int_ap_start_i_1_n_1
    );
int_ap_start_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(0),
      I1 => \int_ier[1]_i_2_n_1\,
      I2 => \waddr_reg_n_1_[2]\,
      I3 => \waddr_reg_n_1_[3]\,
      O => int_ap_start3_out
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_1,
      Q => \^axivideo2mat_u0_ap_start\,
      R => SS(0)
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(2),
      I1 => \waddr_reg_n_1_[3]\,
      I2 => \waddr_reg_n_1_[2]\,
      I3 => \int_ier[1]_i_2_n_1\,
      I4 => int_auto_restart,
      O => int_auto_restart_i_1_n_1
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_1,
      Q => int_auto_restart,
      R => SS(0)
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(0),
      I1 => \waddr_reg_n_1_[3]\,
      I2 => \waddr_reg_n_1_[2]\,
      I3 => \int_ier[1]_i_2_n_1\,
      I4 => int_gie_reg_n_1,
      O => int_gie_i_1_n_1
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_1,
      Q => int_gie_reg_n_1,
      R => SS(0)
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \waddr_reg_n_1_[2]\,
      I1 => \waddr_reg_n_1_[3]\,
      I2 => \int_ier[1]_i_2_n_1\,
      O => int_ier9_out
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_AXILiteS_WSTRB(0),
      I1 => s_axi_AXILiteS_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_1_[0]\,
      I4 => \waddr_reg_n_1_[1]\,
      O => \int_ier[1]_i_2_n_1\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier9_out,
      D => s_axi_AXILiteS_WDATA(0),
      Q => \int_ier_reg_n_1_[0]\,
      R => SS(0)
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier9_out,
      D => s_axi_AXILiteS_WDATA(1),
      Q => \p_0_in__0\,
      R => SS(0)
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(0),
      I1 => int_isr6_out,
      I2 => Mat2AXIvideo_U0_ap_ready,
      I3 => \int_ier_reg_n_1_[0]\,
      I4 => \int_isr_reg_n_1_[0]\,
      O => \int_isr[0]_i_1_n_1\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \waddr_reg_n_1_[3]\,
      I1 => \waddr_reg_n_1_[2]\,
      I2 => \int_ier[1]_i_2_n_1\,
      O => int_isr6_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF8000"
    )
        port map (
      I0 => s_axi_AXILiteS_WDATA(1),
      I1 => \int_ier[1]_i_2_n_1\,
      I2 => \waddr_reg_n_1_[2]\,
      I3 => \waddr_reg_n_1_[3]\,
      I4 => int_isr,
      I5 => p_1_in,
      O => \int_isr[1]_i_1_n_1\
    );
\int_isr[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \p_0_in__0\,
      I1 => AXIvideo2Mat_U0_ap_ready,
      O => int_isr
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_1\,
      Q => \int_isr_reg_n_1_[0]\,
      R => SS(0)
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_1\,
      Q => p_1_in,
      R => SS(0)
    );
internal_full_n_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^axivideo2mat_u0_ap_start\,
      I1 => start_for_Downsample_U0_full_n,
      I2 => start_once_reg,
      O => int_ap_start_reg_0
    );
interrupt_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_1_[0]\,
      I1 => p_1_in,
      I2 => int_gie_reg_n_1,
      O => interrupt
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \rdata[0]_i_2_n_1\,
      I1 => s_axi_AXILiteS_ARADDR(1),
      I2 => s_axi_AXILiteS_ARADDR(0),
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => \int_ier_reg_n_1_[0]\,
      I1 => \int_isr_reg_n_1_[0]\,
      I2 => \^axivideo2mat_u0_ap_start\,
      I3 => s_axi_AXILiteS_ARADDR(2),
      I4 => s_axi_AXILiteS_ARADDR(3),
      I5 => int_gie_reg_n_1,
      O => \rdata[0]_i_2_n_1\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008F838C80"
    )
        port map (
      I0 => p_1_in,
      I1 => s_axi_AXILiteS_ARADDR(3),
      I2 => s_axi_AXILiteS_ARADDR(2),
      I3 => \p_0_in__0\,
      I4 => int_ap_done,
      I5 => \rdata[1]_i_2_n_1\,
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_AXILiteS_ARADDR(0),
      I1 => s_axi_AXILiteS_ARADDR(1),
      O => \rdata[1]_i_2_n_1\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => int_ap_idle,
      I1 => s_axi_AXILiteS_ARADDR(0),
      I2 => s_axi_AXILiteS_ARADDR(1),
      I3 => s_axi_AXILiteS_ARADDR(3),
      I4 => s_axi_AXILiteS_ARADDR(2),
      O => rdata(2)
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => int_ap_ready,
      I1 => s_axi_AXILiteS_ARADDR(0),
      I2 => s_axi_AXILiteS_ARADDR(1),
      I3 => s_axi_AXILiteS_ARADDR(3),
      I4 => s_axi_AXILiteS_ARADDR(2),
      O => rdata(3)
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_AXILiteS_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => int_auto_restart,
      I1 => s_axi_AXILiteS_ARADDR(0),
      I2 => s_axi_AXILiteS_ARADDR(1),
      I3 => s_axi_AXILiteS_ARADDR(3),
      I4 => s_axi_AXILiteS_ARADDR(2),
      O => rdata(7)
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_AXILiteS_RDATA(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_AXILiteS_RDATA(1),
      R => '0'
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_AXILiteS_RDATA(2),
      R => '0'
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_AXILiteS_RDATA(3),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_AXILiteS_RDATA(4),
      R => '0'
    );
\waddr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_AXILiteS_AWVALID,
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(0),
      Q => \waddr_reg_n_1_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(1),
      Q => \waddr_reg_n_1_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(2),
      Q => \waddr_reg_n_1_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_AXILiteS_AWADDR(3),
      Q => \waddr_reg_n_1_[3]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_ibuf is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    ap_rst_n_2 : out STD_LOGIC;
    \icmp_ln126_reg_288_reg[0]\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n_3 : out STD_LOGIC;
    ap_rst_n_4 : out STD_LOGIC;
    \tmp_user_V_fu_136_reg[0]\ : out STD_LOGIC;
    \t_V_1_reg_204_reg[0]\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_5 : out STD_LOGIC;
    \ireg_reg[32]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[32]_1\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    icmp_ln126_reg_2880 : out STD_LOGIC;
    \count_reg[1]\ : out STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[32]_2\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    icmp_ln126_fu_232_p2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter2_reg : in STD_LOGIC;
    ap_NS_fsm1 : in STD_LOGIC;
    video_dst_TREADY : in STD_LOGIC;
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    shiftReg_ce : in STD_LOGIC;
    \tmp_user_V_fu_136_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Mat2AXIvideo_U0_ap_start : in STD_LOGIC;
    \axi_last_V_reg_297_reg[0]\ : in STD_LOGIC;
    \axi_last_V_reg_297_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_last_V_reg_297_reg[0]_1\ : in STD_LOGIC;
    \axi_last_V_reg_297_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln126_reg_288_pp0_iter1_reg : in STD_LOGIC;
    \ireg_reg[32]_3\ : in STD_LOGIC;
    \ireg_reg[32]_4\ : in STD_LOGIC;
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \ireg_reg[30]_0\ : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_ibuf : entity is "ibuf";
end cam_hls_preprocess_0_0_ibuf;

architecture STRUCTURE of cam_hls_preprocess_0_0_ibuf is
  signal \ap_CS_fsm[3]_i_2__1_n_1\ : STD_LOGIC;
  signal \^ap_rst_n_5\ : STD_LOGIC;
  signal \icmp_ln126_reg_288[0]_i_3_n_1\ : STD_LOGIC;
  signal \^icmp_ln126_reg_288_reg[0]\ : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal \ireg[32]_i_4__0_n_1\ : STD_LOGIC;
  signal \^ireg_reg[32]_1\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1__0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter0_i_1 : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \icmp_ln126_reg_288[0]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \icmp_ln126_reg_288[0]_i_3\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \internal_full_n_i_1__4\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \ireg[32]_i_3__0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \odata[30]_i_3\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \odata[32]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \t_V_1_reg_204[8]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \t_V_1_reg_204[8]_i_2\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \tmp_user_V_fu_136[0]_i_1\ : label is "soft_lutpair99";
begin
  ap_rst_n_5 <= \^ap_rst_n_5\;
  \icmp_ln126_reg_288_reg[0]\ <= \^icmp_ln126_reg_288_reg[0]\;
  \ireg_reg[32]_1\(28 downto 0) <= \^ireg_reg[32]_1\(28 downto 0);
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \ap_CS_fsm[3]_i_2__1_n_1\,
      I1 => Q(1),
      I2 => ap_NS_fsm1,
      O => D(0)
    );
\ap_CS_fsm[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => \ap_CS_fsm[3]_i_2__1_n_1\,
      O => D(1)
    );
\ap_CS_fsm[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455540054005400"
    )
        port map (
      I0 => \ireg_reg[32]_2\,
      I1 => icmp_ln126_reg_288_pp0_iter1_reg,
      I2 => \^ap_rst_n_5\,
      I3 => ap_enable_reg_pp0_iter2_reg,
      I4 => ap_enable_reg_pp0_iter0,
      I5 => icmp_ln126_fu_232_p2,
      O => \ap_CS_fsm[3]_i_2__1_n_1\
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8A800A8"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_NS_fsm1,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => icmp_ln126_fu_232_p2,
      I4 => \icmp_ln126_reg_288[0]_i_3_n_1\,
      O => ap_rst_n_3
    );
\ap_enable_reg_pp0_iter1_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888800A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \ireg_reg[32]_2\,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => icmp_ln126_fu_232_p2,
      I4 => \ireg[32]_i_4__0_n_1\,
      O => ap_rst_n_0
    );
\ap_enable_reg_pp0_iter2_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A088A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_enable_reg_pp0_iter2_reg,
      I2 => \ireg_reg[32]_2\,
      I3 => \ireg[32]_i_4__0_n_1\,
      I4 => ap_NS_fsm1,
      O => ap_rst_n_1
    );
\axi_last_V_reg_297[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABBA00000010"
    )
        port map (
      I0 => \icmp_ln126_reg_288[0]_i_3_n_1\,
      I1 => \axi_last_V_reg_297_reg[0]\,
      I2 => \axi_last_V_reg_297_reg[0]_0\(0),
      I3 => \axi_last_V_reg_297_reg[0]_0\(1),
      I4 => \axi_last_V_reg_297_reg[0]_1\,
      I5 => \axi_last_V_reg_297_reg[0]_2\(0),
      O => \t_V_1_reg_204_reg[0]\
    );
\count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF20A0A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => video_dst_TREADY,
      I2 => \count_reg[0]\,
      I3 => \^icmp_ln126_reg_288_reg[0]\,
      I4 => \count_reg[0]_0\,
      O => ap_rst_n_2
    );
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => \^icmp_ln126_reg_288_reg[0]\,
      I1 => \count_reg[0]_0\,
      I2 => video_dst_TREADY,
      I3 => \count_reg[0]\,
      O => \count_reg[1]\
    );
\icmp_ln126_reg_288[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \icmp_ln126_reg_288[0]_i_3_n_1\,
      O => icmp_ln126_reg_2880
    );
\icmp_ln126_reg_288[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ireg[32]_i_4__0_n_1\,
      I1 => Q(1),
      O => \icmp_ln126_reg_288[0]_i_3_n_1\
    );
\internal_full_n_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^icmp_ln126_reg_288_reg[0]\,
      I2 => shiftReg_ce,
      O => ap_rst_n_4
    );
\ireg[32]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^ireg_reg[32]_1\(28),
      I1 => \ireg_reg[0]_0\(0),
      I2 => video_dst_TREADY,
      O => ireg01_out
    );
\ireg[32]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \ireg_reg[32]_3\,
      I1 => \ireg_reg[32]_2\,
      I2 => Q(1),
      I3 => \ireg[32]_i_4__0_n_1\,
      O => \^icmp_ln126_reg_288_reg[0]\
    );
\ireg[32]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404FF0404"
    )
        port map (
      I0 => \ireg_reg[32]_4\,
      I1 => \ireg_reg[32]_2\,
      I2 => \ireg_reg[32]_3\,
      I3 => \^ap_rst_n_5\,
      I4 => ap_enable_reg_pp0_iter2_reg,
      I5 => icmp_ln126_reg_288_pp0_iter1_reg,
      O => \ireg[32]_i_4__0_n_1\
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(0),
      Q => \^ireg_reg[32]_1\(0),
      R => SR(0)
    );
\ireg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(9),
      Q => \^ireg_reg[32]_1\(9),
      R => SR(0)
    );
\ireg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(10),
      Q => \^ireg_reg[32]_1\(10),
      R => SR(0)
    );
\ireg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(11),
      Q => \^ireg_reg[32]_1\(11),
      R => SR(0)
    );
\ireg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(12),
      Q => \^ireg_reg[32]_1\(12),
      R => SR(0)
    );
\ireg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(13),
      Q => \^ireg_reg[32]_1\(13),
      R => SR(0)
    );
\ireg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(14),
      Q => \^ireg_reg[32]_1\(14),
      R => SR(0)
    );
\ireg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(15),
      Q => \^ireg_reg[32]_1\(15),
      R => SR(0)
    );
\ireg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(16),
      Q => \^ireg_reg[32]_1\(16),
      R => SR(0)
    );
\ireg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(17),
      Q => \^ireg_reg[32]_1\(17),
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(1),
      Q => \^ireg_reg[32]_1\(1),
      R => SR(0)
    );
\ireg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(18),
      Q => \^ireg_reg[32]_1\(18),
      R => SR(0)
    );
\ireg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(19),
      Q => \^ireg_reg[32]_1\(19),
      R => SR(0)
    );
\ireg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(20),
      Q => \^ireg_reg[32]_1\(20),
      R => SR(0)
    );
\ireg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(21),
      Q => \^ireg_reg[32]_1\(21),
      R => SR(0)
    );
\ireg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(22),
      Q => \^ireg_reg[32]_1\(22),
      R => SR(0)
    );
\ireg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(23),
      Q => \^ireg_reg[32]_1\(23),
      R => SR(0)
    );
\ireg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(24),
      Q => \^ireg_reg[32]_1\(24),
      R => SR(0)
    );
\ireg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(25),
      Q => \^ireg_reg[32]_1\(25),
      R => SR(0)
    );
\ireg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(26),
      Q => \^ireg_reg[32]_1\(26),
      R => SR(0)
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(2),
      Q => \^ireg_reg[32]_1\(2),
      R => SR(0)
    );
\ireg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(27),
      Q => \^ireg_reg[32]_1\(27),
      R => SR(0)
    );
\ireg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \^icmp_ln126_reg_288_reg[0]\,
      Q => \^ireg_reg[32]_1\(28),
      R => SR(0)
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(3),
      Q => \^ireg_reg[32]_1\(3),
      R => SR(0)
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(4),
      Q => \^ireg_reg[32]_1\(4),
      R => SR(0)
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(5),
      Q => \^ireg_reg[32]_1\(5),
      R => SR(0)
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(6),
      Q => \^ireg_reg[32]_1\(6),
      R => SR(0)
    );
\ireg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(7),
      Q => \^ireg_reg[32]_1\(7),
      R => SR(0)
    );
\ireg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[30]_0\(8),
      Q => \^ireg_reg[32]_1\(8),
      R => SR(0)
    );
\odata[30]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ireg_reg[32]_1\(28),
      O => \^ap_rst_n_5\
    );
\odata[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ireg_reg[32]_1\(28),
      I1 => \^icmp_ln126_reg_288_reg[0]\,
      O => \ireg_reg[32]_0\(0)
    );
\t_V_1_reg_204[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => ap_NS_fsm1,
      I1 => \icmp_ln126_reg_288[0]_i_3_n_1\,
      I2 => ap_enable_reg_pp0_iter0,
      I3 => icmp_ln126_fu_232_p2,
      O => ap_enable_reg_pp0_iter0_reg(0)
    );
\t_V_1_reg_204[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => icmp_ln126_fu_232_p2,
      I1 => ap_enable_reg_pp0_iter0,
      I2 => \icmp_ln126_reg_288[0]_i_3_n_1\,
      O => ap_enable_reg_pp0_iter0_reg_0(0)
    );
\tmp_user_V_fu_136[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
        port map (
      I0 => \tmp_user_V_fu_136_reg[0]_0\(0),
      I1 => Mat2AXIvideo_U0_ap_start,
      I2 => Q(0),
      I3 => \^icmp_ln126_reg_288_reg[0]\,
      O => \tmp_user_V_fu_136_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_ibuf_29 is
  port (
    video_src_TREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \ireg_reg[32]_0\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    ap_rst_n : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_ibuf_29 : entity is "ibuf";
end cam_hls_preprocess_0_0_ibuf_29;

architecture STRUCTURE of cam_hls_preprocess_0_0_ibuf_29 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ireg_reg_n_1_[0]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[10]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[11]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[12]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[13]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[14]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[15]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[16]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[17]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[18]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[19]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[1]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[20]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[21]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[22]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[23]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[2]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[3]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[4]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[5]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[6]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[7]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[8]\ : STD_LOGIC;
  signal \ireg_reg_n_1_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata[0]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \odata[10]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \odata[11]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \odata[12]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \odata[13]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \odata[14]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \odata[15]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata[16]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \odata[17]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata[18]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \odata[19]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata[1]_i_1__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \odata[20]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \odata[21]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \odata[22]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \odata[23]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \odata[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \odata[32]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \odata[3]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \odata[4]_i_1__1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \odata[5]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \odata[6]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \odata[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \odata[8]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \odata[9]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of video_src_TREADY_INST_0 : label is "soft_lutpair12";
begin
  Q(0) <= \^q\(0);
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(0),
      Q => \ireg_reg_n_1_[0]\,
      R => SR(0)
    );
\ireg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(10),
      Q => \ireg_reg_n_1_[10]\,
      R => SR(0)
    );
\ireg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(11),
      Q => \ireg_reg_n_1_[11]\,
      R => SR(0)
    );
\ireg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(12),
      Q => \ireg_reg_n_1_[12]\,
      R => SR(0)
    );
\ireg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(13),
      Q => \ireg_reg_n_1_[13]\,
      R => SR(0)
    );
\ireg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(14),
      Q => \ireg_reg_n_1_[14]\,
      R => SR(0)
    );
\ireg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(15),
      Q => \ireg_reg_n_1_[15]\,
      R => SR(0)
    );
\ireg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(16),
      Q => \ireg_reg_n_1_[16]\,
      R => SR(0)
    );
\ireg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(17),
      Q => \ireg_reg_n_1_[17]\,
      R => SR(0)
    );
\ireg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(18),
      Q => \ireg_reg_n_1_[18]\,
      R => SR(0)
    );
\ireg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(19),
      Q => \ireg_reg_n_1_[19]\,
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(1),
      Q => \ireg_reg_n_1_[1]\,
      R => SR(0)
    );
\ireg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(20),
      Q => \ireg_reg_n_1_[20]\,
      R => SR(0)
    );
\ireg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(21),
      Q => \ireg_reg_n_1_[21]\,
      R => SR(0)
    );
\ireg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(22),
      Q => \ireg_reg_n_1_[22]\,
      R => SR(0)
    );
\ireg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(23),
      Q => \ireg_reg_n_1_[23]\,
      R => SR(0)
    );
\ireg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(2),
      Q => \ireg_reg_n_1_[2]\,
      R => SR(0)
    );
\ireg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(24),
      Q => \^q\(0),
      R => SR(0)
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(3),
      Q => \ireg_reg_n_1_[3]\,
      R => SR(0)
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(4),
      Q => \ireg_reg_n_1_[4]\,
      R => SR(0)
    );
\ireg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(5),
      Q => \ireg_reg_n_1_[5]\,
      R => SR(0)
    );
\ireg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(6),
      Q => \ireg_reg_n_1_[6]\,
      R => SR(0)
    );
\ireg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(7),
      Q => \ireg_reg_n_1_[7]\,
      R => SR(0)
    );
\ireg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(8),
      Q => \ireg_reg_n_1_[8]\,
      R => SR(0)
    );
\ireg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \ireg_reg[32]_0\(9),
      Q => \ireg_reg_n_1_[9]\,
      R => SR(0)
    );
\odata[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(0),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[0]\,
      O => D(0)
    );
\odata[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(10),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[10]\,
      O => D(10)
    );
\odata[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(11),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[11]\,
      O => D(11)
    );
\odata[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(12),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[12]\,
      O => D(12)
    );
\odata[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(13),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[13]\,
      O => D(13)
    );
\odata[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(14),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[14]\,
      O => D(14)
    );
\odata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(15),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[15]\,
      O => D(15)
    );
\odata[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(16),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[16]\,
      O => D(16)
    );
\odata[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(17),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[17]\,
      O => D(17)
    );
\odata[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(18),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[18]\,
      O => D(18)
    );
\odata[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(19),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[19]\,
      O => D(19)
    );
\odata[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(1),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[1]\,
      O => D(1)
    );
\odata[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(20),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[20]\,
      O => D(20)
    );
\odata[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(21),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[21]\,
      O => D(21)
    );
\odata[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(22),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[22]\,
      O => D(22)
    );
\odata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(23),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[23]\,
      O => D(23)
    );
\odata[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(2),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[2]\,
      O => D(2)
    );
\odata[32]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[32]_0\(24),
      O => D(24)
    );
\odata[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(3),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[3]\,
      O => D(3)
    );
\odata[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(4),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[4]\,
      O => D(4)
    );
\odata[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(5),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[5]\,
      O => D(5)
    );
\odata[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(6),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[6]\,
      O => D(6)
    );
\odata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(7),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[7]\,
      O => D(7)
    );
\odata[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(8),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[8]\,
      O => D(8)
    );
\odata[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[32]_0\(9),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[9]\,
      O => D(9)
    );
video_src_TREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \ireg_reg[32]_0\(24),
      I1 => \^q\(0),
      I2 => ap_rst_n,
      O => video_src_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_ibuf__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TREADY : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_ibuf__parameterized0\ : entity is "ibuf";
end \cam_hls_preprocess_0_0_ibuf__parameterized0\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_ibuf__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ireg01_out : STD_LOGIC;
  signal \ireg_reg_n_1_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata[3]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \odata[4]_i_1__0\ : label is "soft_lutpair105";
begin
  Q(0) <= \^q\(0);
\ireg[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[3]_0\(0),
      I2 => video_dst_TREADY,
      O => ireg01_out
    );
\ireg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => '1',
      Q => \ireg_reg_n_1_[3]\,
      R => SR(0)
    );
\ireg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[4]_0\(0),
      Q => \^q\(0),
      R => SR(0)
    );
\odata[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg_n_1_[3]\,
      O => D(0)
    );
\odata[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[4]_0\(0),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_ibuf__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TREADY : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_ibuf__parameterized1\ : entity is "ibuf";
end \cam_hls_preprocess_0_0_ibuf__parameterized1\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_ibuf__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ireg01_out : STD_LOGIC;
  signal \ireg_reg_n_1_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata[0]_i_2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \odata[1]_i_1__0\ : label is "soft_lutpair107";
begin
  Q(0) <= \^q\(0);
\ireg[1]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[0]_0\(0),
      I2 => video_dst_TREADY,
      O => ireg01_out
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[1]_0\(0),
      Q => \ireg_reg_n_1_[0]\,
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[1]_0\(1),
      Q => \^q\(0),
      R => SR(0)
    );
\odata[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[1]_0\(0),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[0]\,
      O => D(0)
    );
\odata[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[1]_0\(1),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_ibuf__parameterized1_20\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TREADY : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_ibuf__parameterized1_20\ : entity is "ibuf";
end \cam_hls_preprocess_0_0_ibuf__parameterized1_20\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_ibuf__parameterized1_20\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ireg01_out : STD_LOGIC;
  signal \ireg_reg_n_1_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata[0]_i_2__0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \odata[1]_i_1__1\ : label is "soft_lutpair106";
begin
  Q(0) <= \^q\(0);
\ireg[1]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[0]_0\(0),
      I2 => video_dst_TREADY,
      O => ireg01_out
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[1]_0\(0),
      Q => \ireg_reg_n_1_[0]\,
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[1]_0\(1),
      Q => \^q\(0),
      R => SR(0)
    );
\odata[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[1]_0\(0),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[0]\,
      O => D(0)
    );
\odata[1]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[1]_0\(1),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_ibuf__parameterized1_25\ is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[0]_1\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_ibuf__parameterized1_25\ : entity is "ibuf";
end \cam_hls_preprocess_0_0_ibuf__parameterized1_25\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_ibuf__parameterized1_25\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ireg01_out : STD_LOGIC;
  signal \ireg_reg_n_1_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata[0]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \odata[1]_i_2\ : label is "soft_lutpair47";
begin
  Q(0) <= \^q\(0);
\ireg[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[0]_0\(0),
      I2 => \ireg_reg[0]_1\,
      O => ireg01_out
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[1]_0\(0),
      Q => \ireg_reg_n_1_[0]\,
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[1]_0\(1),
      Q => \^q\(0),
      R => SR(0)
    );
\odata[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[1]_0\(0),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[0]\,
      O => D(0)
    );
\odata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[1]_0\(1),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_ibuf__parameterized1_27\ is
  port (
    \icmp_ln73_reg_451_reg[0]\ : out STD_LOGIC;
    \eol_0_reg_260_reg[0]\ : out STD_LOGIC;
    icmp_ln73_fu_362_p2 : out STD_LOGIC;
    \t_V_2_reg_249_reg[9]\ : out STD_LOGIC;
    \t_V_2_reg_249_reg[7]\ : out STD_LOGIC;
    \t_V_2_reg_249_reg[4]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_1_reg_474_reg[7]\ : in STD_LOGIC;
    \tmp_1_reg_474_reg[7]_0\ : in STD_LOGIC;
    src_img_data_stream_2_full_n : in STD_LOGIC;
    src_img_data_stream_3_full_n : in STD_LOGIC;
    src_img_data_stream_1_full_n : in STD_LOGIC;
    src_img_data_stream_s_full_n : in STD_LOGIC;
    \tmp_1_reg_474_reg[7]_1\ : in STD_LOGIC;
    \tmp_1_reg_474_reg[7]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sof_1_fu_146 : in STD_LOGIC;
    \tmp_1_reg_474_reg[7]_3\ : in STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[0]_1\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_ibuf__parameterized1_27\ : entity is "ibuf";
end \cam_hls_preprocess_0_0_ibuf__parameterized1_27\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_ibuf__parameterized1_27\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ireg01_out : STD_LOGIC;
  signal \ireg_reg_n_1_[0]\ : STD_LOGIC;
  signal \^t_v_2_reg_249_reg[7]\ : STD_LOGIC;
  signal \^t_v_2_reg_249_reg[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \odata[0]_i_1__2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \odata[1]_i_2__0\ : label is "soft_lutpair45";
begin
  Q(0) <= \^q\(0);
  \t_V_2_reg_249_reg[7]\ <= \^t_v_2_reg_249_reg[7]\;
  \t_V_2_reg_249_reg[9]\ <= \^t_v_2_reg_249_reg[9]\;
\ap_CS_fsm[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444444444444"
    )
        port map (
      I0 => \tmp_1_reg_474_reg[7]\,
      I1 => \tmp_1_reg_474_reg[7]_0\,
      I2 => src_img_data_stream_2_full_n,
      I3 => src_img_data_stream_3_full_n,
      I4 => src_img_data_stream_1_full_n,
      I5 => src_img_data_stream_s_full_n,
      O => \icmp_ln73_reg_451_reg[0]\
    );
\ap_CS_fsm[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \icmp_ln73_reg_451_reg[0]_0\(10),
      I1 => \icmp_ln73_reg_451_reg[0]_0\(6),
      I2 => \icmp_ln73_reg_451_reg[0]_0\(1),
      I3 => \icmp_ln73_reg_451_reg[0]_0\(4),
      I4 => \^t_v_2_reg_249_reg[9]\,
      I5 => \^t_v_2_reg_249_reg[7]\,
      O => icmp_ln73_fu_362_p2
    );
\ap_CS_fsm[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \icmp_ln73_reg_451_reg[0]_0\(9),
      I1 => \icmp_ln73_reg_451_reg[0]_0\(2),
      I2 => \icmp_ln73_reg_451_reg[0]_0\(1),
      I3 => \icmp_ln73_reg_451_reg[0]_0\(0),
      O => \^t_v_2_reg_249_reg[9]\
    );
\ap_CS_fsm[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \icmp_ln73_reg_451_reg[0]_0\(7),
      I1 => \icmp_ln73_reg_451_reg[0]_0\(3),
      I2 => \icmp_ln73_reg_451_reg[0]_0\(8),
      I3 => \icmp_ln73_reg_451_reg[0]_0\(5),
      O => \^t_v_2_reg_249_reg[7]\
    );
\ireg[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[0]_0\(0),
      I2 => \ireg_reg[0]_1\,
      O => ireg01_out
    );
\ireg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[1]_0\(0),
      Q => \ireg_reg_n_1_[0]\,
      R => SR(0)
    );
\ireg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ireg01_out,
      D => \ireg_reg[1]_0\(1),
      Q => \^q\(0),
      R => SR(0)
    );
\odata[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \ireg_reg[1]_0\(0),
      I1 => \^q\(0),
      I2 => \ireg_reg_n_1_[0]\,
      O => D(0)
    );
\odata[1]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[1]_0\(1),
      O => D(1)
    );
\tmp_reg_464[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005515000055D5"
    )
        port map (
      I0 => \tmp_1_reg_474_reg[7]_1\,
      I1 => \tmp_1_reg_474_reg[7]_2\(0),
      I2 => \tmp_1_reg_474_reg[7]_0\,
      I3 => \tmp_1_reg_474_reg[7]\,
      I4 => sof_1_fu_146,
      I5 => \tmp_1_reg_474_reg[7]_3\,
      O => \eol_0_reg_260_reg[0]\
    );
\tmp_reg_464[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \icmp_ln73_reg_451_reg[0]_0\(4),
      I1 => \icmp_ln73_reg_451_reg[0]_0\(1),
      I2 => \icmp_ln73_reg_451_reg[0]_0\(6),
      I3 => \icmp_ln73_reg_451_reg[0]_0\(10),
      O => \t_V_2_reg_249_reg[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_obuf is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[32]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 28 downto 0 );
    ap_rst_n : in STD_LOGIC;
    video_dst_TREADY : in STD_LOGIC;
    \ireg_reg[32]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 28 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_obuf : entity is "obuf";
end cam_hls_preprocess_0_0_obuf;

architecture STRUCTURE of cam_hls_preprocess_0_0_obuf is
  signal \^q\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \odata[30]_i_1_n_1\ : STD_LOGIC;
begin
  Q(28 downto 0) <= \^q\(28 downto 0);
  SR(0) <= \^sr\(0);
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\ireg[32]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^q\(28),
      I1 => video_dst_TREADY,
      I2 => \ireg_reg[32]\(0),
      I3 => ap_rst_n,
      O => \odata_reg[32]_0\(0)
    );
\odata[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => video_dst_TREADY,
      I1 => \^q\(28),
      O => \odata[30]_i_1_n_1\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\odata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(9),
      Q => \^q\(9),
      R => \^sr\(0)
    );
\odata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(10),
      Q => \^q\(10),
      R => \^sr\(0)
    );
\odata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(11),
      Q => \^q\(11),
      R => \^sr\(0)
    );
\odata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(12),
      Q => \^q\(12),
      R => \^sr\(0)
    );
\odata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(13),
      Q => \^q\(13),
      R => \^sr\(0)
    );
\odata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(14),
      Q => \^q\(14),
      R => \^sr\(0)
    );
\odata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(15),
      Q => \^q\(15),
      R => \^sr\(0)
    );
\odata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(16),
      Q => \^q\(16),
      R => \^sr\(0)
    );
\odata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(17),
      Q => \^q\(17),
      R => \^sr\(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(1),
      Q => \^q\(1),
      R => \^sr\(0)
    );
\odata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(18),
      Q => \^q\(18),
      R => \^sr\(0)
    );
\odata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(19),
      Q => \^q\(19),
      R => \^sr\(0)
    );
\odata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(20),
      Q => \^q\(20),
      R => \^sr\(0)
    );
\odata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(21),
      Q => \^q\(21),
      R => \^sr\(0)
    );
\odata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(22),
      Q => \^q\(22),
      R => \^sr\(0)
    );
\odata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(23),
      Q => \^q\(23),
      R => \^sr\(0)
    );
\odata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(24),
      Q => \^q\(24),
      R => \^sr\(0)
    );
\odata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(25),
      Q => \^q\(25),
      R => \^sr\(0)
    );
\odata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(26),
      Q => \^q\(26),
      R => \^sr\(0)
    );
\odata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(2),
      Q => \^q\(2),
      R => \^sr\(0)
    );
\odata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(27),
      Q => \^q\(27),
      R => \^sr\(0)
    );
\odata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(28),
      Q => \^q\(28),
      R => \^sr\(0)
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(3),
      Q => \^q\(3),
      R => \^sr\(0)
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(4),
      Q => \^q\(4),
      R => \^sr\(0)
    );
\odata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(5),
      Q => \^q\(5),
      R => \^sr\(0)
    );
\odata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(6),
      Q => \^q\(6),
      R => \^sr\(0)
    );
\odata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(7),
      Q => \^q\(7),
      R => \^sr\(0)
    );
\odata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[30]_i_1_n_1\,
      D => D(8),
      Q => \^q\(8),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_obuf_30 is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    \axi_last_V_2_reg_272_reg[0]\ : out STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_last_V_2_reg_272_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[32]_0\ : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \ap_CS_fsm_reg[4]_1\ : out STD_LOGIC;
    \odata_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_reg[23]_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \odata_reg[15]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_reg[23]_1\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[32]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_data_V_1_reg_238_reg[23]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \odata_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[1]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[32]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_4\ : out STD_LOGIC;
    \ap_CS_fsm_reg[4]_5\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_6\ : out STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \SRL_SIG_reg[1][0]\ : in STD_LOGIC;
    ap_enable_reg_pp1_iter0 : in STD_LOGIC;
    icmp_ln73_fu_362_p2 : in STD_LOGIC;
    p_1_in3_in : in STD_LOGIC;
    \eol_reg_227_reg[0]\ : in STD_LOGIC;
    \eol_0_reg_260_reg[0]\ : in STD_LOGIC;
    axi_last_V_0_reg_196 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \axi_data_V_1_reg_238_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \icmp_ln73_reg_451_reg[0]_0\ : in STD_LOGIC;
    \axi_data_V_3_reg_309_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ireg_reg[32]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_1_reg_474_reg[7]\ : in STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]_1\ : in STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]_2\ : in STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]_3\ : in STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]_4\ : in STD_LOGIC;
    \axi_data_V_3_reg_309_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \p_Val2_s_reg_285_reg[23]\ : in STD_LOGIC;
    \p_Val2_s_reg_285_reg[23]_0\ : in STD_LOGIC;
    \axi_data_V_3_reg_309_reg[0]_0\ : in STD_LOGIC;
    \odata_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sof_1_fu_146 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[32]_2\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_obuf_30 : entity is "obuf";
end cam_hls_preprocess_0_0_obuf_30;

architecture STRUCTURE of cam_hls_preprocess_0_0_obuf_30 is
  signal \^ap_cs_fsm_reg[4]_0\ : STD_LOGIC;
  signal \^ap_cs_fsm_reg[4]_1\ : STD_LOGIC;
  signal \^icmp_ln73_reg_451_reg[0]\ : STD_LOGIC;
  signal \ireg[32]_i_4_n_1\ : STD_LOGIC;
  signal \odata[32]_i_1__0_n_1\ : STD_LOGIC;
  signal \^odata_reg[32]_0\ : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \tmp_reg_464[7]_i_3_n_1\ : STD_LOGIC;
  signal \tmp_reg_464[7]_i_5_n_1\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SRL_SIG[0][7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[11]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[13]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[14]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[15]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[16]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[17]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[18]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[19]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[20]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[21]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[22]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[23]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[23]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[5]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[7]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_data_V_1_reg_238[9]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[10]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[12]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[14]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[15]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[16]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[17]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[18]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[19]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[20]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[21]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[22]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[23]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[5]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[6]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[7]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[8]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \axi_data_V_3_reg_309[9]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \eol_0_reg_260[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \eol_2_reg_321[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \eol_reg_227[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \icmp_ln73_reg_451[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ireg[32]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ireg[32]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ireg[32]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \odata[1]_i_1__3\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \odata[1]_i_1__4\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \p_Val2_s_reg_285[23]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \t_V_2_reg_249[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \t_V_2_reg_249[10]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tmp_last_V_reg_430[0]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \tmp_reg_464[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tmp_reg_464[7]_i_5\ : label is "soft_lutpair44";
begin
  \ap_CS_fsm_reg[4]_0\ <= \^ap_cs_fsm_reg[4]_0\;
  \ap_CS_fsm_reg[4]_1\ <= \^ap_cs_fsm_reg[4]_1\;
  \icmp_ln73_reg_451_reg[0]\ <= \^icmp_ln73_reg_451_reg[0]\;
  \odata_reg[32]_0\(24 downto 0) <= \^odata_reg[32]_0\(24 downto 0);
\SRL_SIG[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \tmp_reg_464[7]_i_3_n_1\,
      I1 => \icmp_ln73_reg_451_reg[0]_0\,
      I2 => \SRL_SIG_reg[1][0]\,
      I3 => \axi_data_V_3_reg_309_reg[0]\(2),
      O => \^icmp_ln73_reg_451_reg[0]\
    );
ap_enable_reg_pp1_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800A000A0"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \SRL_SIG_reg[1][0]\,
      I2 => ap_enable_reg_pp1_iter0,
      I3 => icmp_ln73_fu_362_p2,
      I4 => p_1_in3_in,
      I5 => \tmp_reg_464[7]_i_3_n_1\,
      O => ap_rst_n_0
    );
\axi_data_V_1_reg_238[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(0),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(0),
      O => D(0)
    );
\axi_data_V_1_reg_238[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(10),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(10),
      O => D(10)
    );
\axi_data_V_1_reg_238[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(11),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(11),
      O => D(11)
    );
\axi_data_V_1_reg_238[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(12),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(12),
      O => D(12)
    );
\axi_data_V_1_reg_238[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(13),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(13),
      O => D(13)
    );
\axi_data_V_1_reg_238[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(14),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(14),
      O => D(14)
    );
\axi_data_V_1_reg_238[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(15),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(15),
      O => D(15)
    );
\axi_data_V_1_reg_238[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(16),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(16),
      O => D(16)
    );
\axi_data_V_1_reg_238[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(17),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(17),
      O => D(17)
    );
\axi_data_V_1_reg_238[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(18),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(18),
      O => D(18)
    );
\axi_data_V_1_reg_238[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(19),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(19),
      O => D(19)
    );
\axi_data_V_1_reg_238[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(1),
      O => D(1)
    );
\axi_data_V_1_reg_238[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(20),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(20),
      O => D(20)
    );
\axi_data_V_1_reg_238[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(21),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(21),
      O => D(21)
    );
\axi_data_V_1_reg_238[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(22),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(22),
      O => D(22)
    );
\axi_data_V_1_reg_238[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^icmp_ln73_reg_451_reg[0]\,
      I1 => p_1_in3_in,
      O => E(0)
    );
\axi_data_V_1_reg_238[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(23),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(23),
      O => D(23)
    );
\axi_data_V_1_reg_238[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(2),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(2),
      O => D(2)
    );
\axi_data_V_1_reg_238[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(3),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(3),
      O => D(3)
    );
\axi_data_V_1_reg_238[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(4),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(4),
      O => D(4)
    );
\axi_data_V_1_reg_238[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(5),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(5),
      O => D(5)
    );
\axi_data_V_1_reg_238[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(6),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(6),
      O => D(6)
    );
\axi_data_V_1_reg_238[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(7),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(7),
      O => D(7)
    );
\axi_data_V_1_reg_238[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(8),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(8),
      O => D(8)
    );
\axi_data_V_1_reg_238[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(9),
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \axi_data_V_1_reg_238_reg[23]_0\(9),
      O => D(9)
    );
\axi_data_V_3_reg_309[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(0),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(0),
      O => \axi_data_V_1_reg_238_reg[23]\(0)
    );
\axi_data_V_3_reg_309[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(10),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(10),
      O => \axi_data_V_1_reg_238_reg[23]\(10)
    );
\axi_data_V_3_reg_309[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(11),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(11),
      O => \axi_data_V_1_reg_238_reg[23]\(11)
    );
\axi_data_V_3_reg_309[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(12),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(12),
      O => \axi_data_V_1_reg_238_reg[23]\(12)
    );
\axi_data_V_3_reg_309[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(13),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(13),
      O => \axi_data_V_1_reg_238_reg[23]\(13)
    );
\axi_data_V_3_reg_309[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(14),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(14),
      O => \axi_data_V_1_reg_238_reg[23]\(14)
    );
\axi_data_V_3_reg_309[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(15),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(15),
      O => \axi_data_V_1_reg_238_reg[23]\(15)
    );
\axi_data_V_3_reg_309[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(16),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(16),
      O => \axi_data_V_1_reg_238_reg[23]\(16)
    );
\axi_data_V_3_reg_309[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(17),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(17),
      O => \axi_data_V_1_reg_238_reg[23]\(17)
    );
\axi_data_V_3_reg_309[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(18),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(18),
      O => \axi_data_V_1_reg_238_reg[23]\(18)
    );
\axi_data_V_3_reg_309[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(19),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(19),
      O => \axi_data_V_1_reg_238_reg[23]\(19)
    );
\axi_data_V_3_reg_309[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(1),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(1),
      O => \axi_data_V_1_reg_238_reg[23]\(1)
    );
\axi_data_V_3_reg_309[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(20),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(20),
      O => \axi_data_V_1_reg_238_reg[23]\(20)
    );
\axi_data_V_3_reg_309[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(21),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(21),
      O => \axi_data_V_1_reg_238_reg[23]\(21)
    );
\axi_data_V_3_reg_309[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(22),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(22),
      O => \axi_data_V_1_reg_238_reg[23]\(22)
    );
\axi_data_V_3_reg_309[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(23),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(23),
      O => \axi_data_V_1_reg_238_reg[23]\(23)
    );
\axi_data_V_3_reg_309[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(2),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(2),
      O => \axi_data_V_1_reg_238_reg[23]\(2)
    );
\axi_data_V_3_reg_309[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(3),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(3),
      O => \axi_data_V_1_reg_238_reg[23]\(3)
    );
\axi_data_V_3_reg_309[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(4),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(4),
      O => \axi_data_V_1_reg_238_reg[23]\(4)
    );
\axi_data_V_3_reg_309[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(5),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(5),
      O => \axi_data_V_1_reg_238_reg[23]\(5)
    );
\axi_data_V_3_reg_309[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(6),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(6),
      O => \axi_data_V_1_reg_238_reg[23]\(6)
    );
\axi_data_V_3_reg_309[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(7),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(7),
      O => \axi_data_V_1_reg_238_reg[23]\(7)
    );
\axi_data_V_3_reg_309[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(8),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(8),
      O => \axi_data_V_1_reg_238_reg[23]\(8)
    );
\axi_data_V_3_reg_309[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[23]\(9),
      I1 => \axi_data_V_3_reg_309_reg[0]\(3),
      I2 => \^odata_reg[32]_0\(9),
      O => \axi_data_V_1_reg_238_reg[23]\(9)
    );
\eol_0_reg_260[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1C0"
    )
        port map (
      I0 => p_1_in3_in,
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => \eol_reg_227_reg[0]\,
      I3 => \eol_0_reg_260_reg[0]\,
      O => \axi_last_V_2_reg_272_reg[0]\
    );
\eol_2_reg_321[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAEA"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[0]\(3),
      I1 => \^odata_reg[32]_0\(24),
      I2 => \axi_data_V_3_reg_309_reg[0]\(4),
      I3 => \axi_data_V_3_reg_309_reg[0]_0\,
      O => \ap_CS_fsm_reg[5]\(0)
    );
\eol_reg_227[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \eol_reg_227_reg[0]\,
      I1 => \^icmp_ln73_reg_451_reg[0]\,
      I2 => axi_last_V_0_reg_196,
      O => \axi_last_V_2_reg_272_reg[0]_0\
    );
\icmp_ln73_reg_451[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4B0"
    )
        port map (
      I0 => \tmp_reg_464[7]_i_3_n_1\,
      I1 => \axi_data_V_3_reg_309_reg[0]\(2),
      I2 => \icmp_ln73_reg_451_reg[0]_0\,
      I3 => icmp_ln73_fu_362_p2,
      O => \ap_CS_fsm_reg[4]_6\
    );
\ireg[32]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^odata_reg[32]_0\(24),
      I1 => \^ap_cs_fsm_reg[4]_1\,
      I2 => \ireg_reg[32]_0\(0),
      I3 => ap_rst_n,
      O => SR(0)
    );
\ireg[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \ireg_reg[32]_0\(0),
      I1 => \^odata_reg[32]_0\(24),
      I2 => \^ap_cs_fsm_reg[4]_1\,
      O => \ireg_reg[32]\(0)
    );
\ireg[32]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAEAAAAAA"
    )
        port map (
      I0 => \ireg[32]_i_4_n_1\,
      I1 => \axi_data_V_3_reg_309_reg[0]\(2),
      I2 => \tmp_reg_464[7]_i_3_n_1\,
      I3 => ap_enable_reg_pp1_iter0,
      I4 => \tmp_1_reg_474_reg[7]\,
      I5 => icmp_ln73_fu_362_p2,
      O => \^ap_cs_fsm_reg[4]_1\
    );
\ireg[32]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88C8"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[0]\(0),
      I1 => \^odata_reg[32]_0\(24),
      I2 => \axi_data_V_3_reg_309_reg[0]\(4),
      I3 => \axi_data_V_3_reg_309_reg[0]_0\,
      O => \ireg[32]_i_4_n_1\
    );
\odata[1]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[4]_1\,
      I1 => \odata_reg[0]_0\(0),
      O => \odata_reg[1]_0\(0)
    );
\odata[1]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[4]_1\,
      I1 => \odata_reg[0]_1\(0),
      O => \odata_reg[1]_1\(0)
    );
\odata[32]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[4]_1\,
      I1 => \^odata_reg[32]_0\(24),
      O => \odata[32]_i_1__0_n_1\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(0),
      Q => \^odata_reg[32]_0\(0),
      R => SS(0)
    );
\odata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(10),
      Q => \^odata_reg[32]_0\(10),
      R => SS(0)
    );
\odata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(11),
      Q => \^odata_reg[32]_0\(11),
      R => SS(0)
    );
\odata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(12),
      Q => \^odata_reg[32]_0\(12),
      R => SS(0)
    );
\odata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(13),
      Q => \^odata_reg[32]_0\(13),
      R => SS(0)
    );
\odata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(14),
      Q => \^odata_reg[32]_0\(14),
      R => SS(0)
    );
\odata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(15),
      Q => \^odata_reg[32]_0\(15),
      R => SS(0)
    );
\odata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(16),
      Q => \^odata_reg[32]_0\(16),
      R => SS(0)
    );
\odata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(17),
      Q => \^odata_reg[32]_0\(17),
      R => SS(0)
    );
\odata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(18),
      Q => \^odata_reg[32]_0\(18),
      R => SS(0)
    );
\odata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(19),
      Q => \^odata_reg[32]_0\(19),
      R => SS(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(1),
      Q => \^odata_reg[32]_0\(1),
      R => SS(0)
    );
\odata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(20),
      Q => \^odata_reg[32]_0\(20),
      R => SS(0)
    );
\odata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(21),
      Q => \^odata_reg[32]_0\(21),
      R => SS(0)
    );
\odata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(22),
      Q => \^odata_reg[32]_0\(22),
      R => SS(0)
    );
\odata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(23),
      Q => \^odata_reg[32]_0\(23),
      R => SS(0)
    );
\odata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(2),
      Q => \^odata_reg[32]_0\(2),
      R => SS(0)
    );
\odata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(24),
      Q => \^odata_reg[32]_0\(24),
      R => SS(0)
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(3),
      Q => \^odata_reg[32]_0\(3),
      R => SS(0)
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(4),
      Q => \^odata_reg[32]_0\(4),
      R => SS(0)
    );
\odata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(5),
      Q => \^odata_reg[32]_0\(5),
      R => SS(0)
    );
\odata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(6),
      Q => \^odata_reg[32]_0\(6),
      R => SS(0)
    );
\odata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(7),
      Q => \^odata_reg[32]_0\(7),
      R => SS(0)
    );
\odata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(8),
      Q => \^odata_reg[32]_0\(8),
      R => SS(0)
    );
\odata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[32]_i_1__0_n_1\,
      D => \odata_reg[32]_2\(9),
      Q => \^odata_reg[32]_0\(9),
      R => SS(0)
    );
\p_Val2_s_reg_285[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(0),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(0),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(0),
      O => \odata_reg[23]_0\(0)
    );
\p_Val2_s_reg_285[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(10),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(10),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(10),
      O => \odata_reg[23]_0\(10)
    );
\p_Val2_s_reg_285[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(11),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(11),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(11),
      O => \odata_reg[23]_0\(11)
    );
\p_Val2_s_reg_285[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(12),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(12),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(12),
      O => \odata_reg[23]_0\(12)
    );
\p_Val2_s_reg_285[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(13),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(13),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(13),
      O => \odata_reg[23]_0\(13)
    );
\p_Val2_s_reg_285[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(14),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(14),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(14),
      O => \odata_reg[23]_0\(14)
    );
\p_Val2_s_reg_285[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(15),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(15),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(15),
      O => \odata_reg[23]_0\(15)
    );
\p_Val2_s_reg_285[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(16),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(16),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(16),
      O => \odata_reg[23]_0\(16)
    );
\p_Val2_s_reg_285[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(17),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(17),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(17),
      O => \odata_reg[23]_0\(17)
    );
\p_Val2_s_reg_285[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(18),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(18),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(18),
      O => \odata_reg[23]_0\(18)
    );
\p_Val2_s_reg_285[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(19),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(19),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(19),
      O => \odata_reg[23]_0\(19)
    );
\p_Val2_s_reg_285[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(1),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(1),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(1),
      O => \odata_reg[23]_0\(1)
    );
\p_Val2_s_reg_285[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(20),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(20),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(20),
      O => \odata_reg[23]_0\(20)
    );
\p_Val2_s_reg_285[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(21),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(21),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(21),
      O => \odata_reg[23]_0\(21)
    );
\p_Val2_s_reg_285[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(22),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(22),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(22),
      O => \odata_reg[23]_0\(22)
    );
\p_Val2_s_reg_285[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ap_cs_fsm_reg[4]_0\,
      O => \ap_CS_fsm_reg[4]\(0)
    );
\p_Val2_s_reg_285[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(23),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(23),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(23),
      O => \odata_reg[23]_0\(23)
    );
\p_Val2_s_reg_285[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \axi_data_V_3_reg_309_reg[0]\(2),
      I1 => \tmp_reg_464[7]_i_3_n_1\,
      I2 => ap_enable_reg_pp1_iter0,
      O => \^ap_cs_fsm_reg[4]_0\
    );
\p_Val2_s_reg_285[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(2),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(2),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(2),
      O => \odata_reg[23]_0\(2)
    );
\p_Val2_s_reg_285[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(3),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(3),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(3),
      O => \odata_reg[23]_0\(3)
    );
\p_Val2_s_reg_285[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(4),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(4),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(4),
      O => \odata_reg[23]_0\(4)
    );
\p_Val2_s_reg_285[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(5),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(5),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(5),
      O => \odata_reg[23]_0\(5)
    );
\p_Val2_s_reg_285[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(6),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(6),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(6),
      O => \odata_reg[23]_0\(6)
    );
\p_Val2_s_reg_285[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(7),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(7),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(7),
      O => \odata_reg[23]_0\(7)
    );
\p_Val2_s_reg_285[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(8),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(8),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(8),
      O => \odata_reg[23]_0\(8)
    );
\p_Val2_s_reg_285[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(9),
      I1 => \p_Val2_s_reg_285_reg[23]_0\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(9),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(9),
      O => \odata_reg[23]_0\(9)
    );
\sof_1_fu_146[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0BBB0FFF0FFF0"
    )
        port map (
      I0 => \tmp_reg_464[7]_i_3_n_1\,
      I1 => \axi_data_V_3_reg_309_reg[0]\(2),
      I2 => sof_1_fu_146,
      I3 => \axi_data_V_3_reg_309_reg[0]\(1),
      I4 => icmp_ln73_fu_362_p2,
      I5 => ap_enable_reg_pp1_iter0,
      O => \ap_CS_fsm_reg[4]_4\
    );
\t_V_2_reg_249[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0B0F0F0"
    )
        port map (
      I0 => \tmp_reg_464[7]_i_3_n_1\,
      I1 => \axi_data_V_3_reg_309_reg[0]\(2),
      I2 => p_1_in3_in,
      I3 => icmp_ln73_fu_362_p2,
      I4 => ap_enable_reg_pp1_iter0,
      O => \ap_CS_fsm_reg[4]_5\(0)
    );
\t_V_2_reg_249[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \tmp_reg_464[7]_i_3_n_1\,
      I1 => \axi_data_V_3_reg_309_reg[0]\(2),
      I2 => ap_enable_reg_pp1_iter0,
      I3 => icmp_ln73_fu_362_p2,
      O => \ap_CS_fsm_reg[4]_3\(0)
    );
\tmp_1_reg_474[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(16),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(16),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(16),
      O => \odata_reg[23]_1\(0)
    );
\tmp_1_reg_474[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(17),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(17),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(17),
      O => \odata_reg[23]_1\(1)
    );
\tmp_1_reg_474[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(18),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(18),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(18),
      O => \odata_reg[23]_1\(2)
    );
\tmp_1_reg_474[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(19),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(19),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(19),
      O => \odata_reg[23]_1\(3)
    );
\tmp_1_reg_474[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(20),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(20),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(20),
      O => \odata_reg[23]_1\(4)
    );
\tmp_1_reg_474[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(21),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(21),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(21),
      O => \odata_reg[23]_1\(5)
    );
\tmp_1_reg_474[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(22),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(22),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(22),
      O => \odata_reg[23]_1\(6)
    );
\tmp_1_reg_474[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(23),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(23),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(23),
      O => \odata_reg[23]_1\(7)
    );
\tmp_9_reg_469[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(8),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(8),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(8),
      O => \odata_reg[15]_0\(0)
    );
\tmp_9_reg_469[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(9),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(9),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(9),
      O => \odata_reg[15]_0\(1)
    );
\tmp_9_reg_469[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(10),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(10),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(10),
      O => \odata_reg[15]_0\(2)
    );
\tmp_9_reg_469[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(11),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(11),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(11),
      O => \odata_reg[15]_0\(3)
    );
\tmp_9_reg_469[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(12),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(12),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(12),
      O => \odata_reg[15]_0\(4)
    );
\tmp_9_reg_469[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(13),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(13),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(13),
      O => \odata_reg[15]_0\(5)
    );
\tmp_9_reg_469[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(14),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(14),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(14),
      O => \odata_reg[15]_0\(6)
    );
\tmp_9_reg_469[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(15),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(15),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(15),
      O => \odata_reg[15]_0\(7)
    );
\tmp_last_V_reg_430[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^odata_reg[32]_0\(24),
      I1 => \axi_data_V_3_reg_309_reg[0]\(0),
      O => \odata_reg[32]_1\(0)
    );
\tmp_reg_464[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(0),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(0),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(0),
      O => \odata_reg[7]_0\(0)
    );
\tmp_reg_464[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(1),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(1),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(1),
      O => \odata_reg[7]_0\(1)
    );
\tmp_reg_464[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(2),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(2),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(2),
      O => \odata_reg[7]_0\(2)
    );
\tmp_reg_464[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(3),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(3),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(3),
      O => \odata_reg[7]_0\(3)
    );
\tmp_reg_464[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(4),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(4),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(4),
      O => \odata_reg[7]_0\(4)
    );
\tmp_reg_464[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(5),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(5),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(5),
      O => \odata_reg[7]_0\(5)
    );
\tmp_reg_464[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(6),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(6),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(6),
      O => \odata_reg[7]_0\(6)
    );
\tmp_reg_464[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \tmp_reg_464[7]_i_3_n_1\,
      I1 => \axi_data_V_3_reg_309_reg[0]\(2),
      I2 => icmp_ln73_fu_362_p2,
      O => \ap_CS_fsm_reg[4]_2\(0)
    );
\tmp_reg_464[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^odata_reg[32]_0\(7),
      I1 => \tmp_1_reg_474_reg[7]\,
      I2 => \axi_data_V_3_reg_309_reg[23]\(7),
      I3 => \p_Val2_s_reg_285_reg[23]\,
      I4 => Q(7),
      O => \odata_reg[7]_0\(7)
    );
\tmp_reg_464[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88808888"
    )
        port map (
      I0 => \tmp_1_reg_474_reg[7]\,
      I1 => \tmp_reg_464[7]_i_5_n_1\,
      I2 => \icmp_ln73_reg_451_reg[0]_1\,
      I3 => \icmp_ln73_reg_451_reg[0]_2\,
      I4 => \icmp_ln73_reg_451_reg[0]_3\,
      I5 => \icmp_ln73_reg_451_reg[0]_4\,
      O => \tmp_reg_464[7]_i_3_n_1\
    );
\tmp_reg_464[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp1_iter0,
      I1 => \^odata_reg[32]_0\(24),
      O => \tmp_reg_464[7]_i_5_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_obuf__parameterized0\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    video_dst_TREADY : in STD_LOGIC;
    \ireg_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \odata_reg[4]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_obuf__parameterized0\ : entity is "obuf";
end \cam_hls_preprocess_0_0_obuf__parameterized0\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_obuf__parameterized0\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \odata[3]_i_1__1_n_1\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\ireg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => video_dst_TREADY,
      I2 => \ireg_reg[4]\(0),
      I3 => ap_rst_n,
      O => SR(0)
    );
\odata[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => video_dst_TREADY,
      I1 => \^q\(1),
      O => \odata[3]_i_1__1_n_1\
    );
\odata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[3]_i_1__1_n_1\,
      D => D(0),
      Q => \^q\(0),
      R => \odata_reg[4]_0\(0)
    );
\odata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[3]_i_1__1_n_1\,
      D => D(1),
      Q => \^q\(1),
      R => \odata_reg[4]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_obuf__parameterized1\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    video_dst_TREADY : in STD_LOGIC;
    \ireg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \odata_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_obuf__parameterized1\ : entity is "obuf";
end \cam_hls_preprocess_0_0_obuf__parameterized1\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_obuf__parameterized1\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \odata[0]_i_1__3_n_1\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\ireg[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => video_dst_TREADY,
      I2 => \ireg_reg[1]\(0),
      I3 => ap_rst_n,
      O => SR(0)
    );
\odata[0]_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => video_dst_TREADY,
      I1 => \^q\(1),
      O => \odata[0]_i_1__3_n_1\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[0]_i_1__3_n_1\,
      D => D(0),
      Q => \^q\(0),
      R => \odata_reg[1]_0\(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[0]_i_1__3_n_1\,
      D => D(1),
      Q => \^q\(1),
      R => \odata_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_obuf__parameterized1_21\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    video_dst_TREADY : in STD_LOGIC;
    \ireg_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \odata_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_obuf__parameterized1_21\ : entity is "obuf";
end \cam_hls_preprocess_0_0_obuf__parameterized1_21\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_obuf__parameterized1_21\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \odata[0]_i_1__4_n_1\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\ireg[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => video_dst_TREADY,
      I2 => \ireg_reg[1]\(0),
      I3 => ap_rst_n,
      O => SR(0)
    );
\odata[0]_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => video_dst_TREADY,
      I1 => \^q\(1),
      O => \odata[0]_i_1__4_n_1\
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[0]_i_1__4_n_1\,
      D => D(0),
      Q => \^q\(0),
      R => \odata_reg[1]_0\(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \odata[0]_i_1__4_n_1\,
      D => D(1),
      Q => \^q\(1),
      R => \odata_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_obuf__parameterized1_26\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[1]\ : in STD_LOGIC;
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_obuf__parameterized1_26\ : entity is "obuf";
end \cam_hls_preprocess_0_0_obuf__parameterized1_26\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_obuf__parameterized1_26\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tmp_user_V_fu_341_p1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1__0\ : label is "soft_lutpair48";
begin
  Q(0) <= \^q\(0);
\ap_CS_fsm[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F88FF88"
    )
        port map (
      I0 => \ap_CS_fsm_reg[1]\,
      I1 => \ap_CS_fsm_reg[2]\(0),
      I2 => tmp_user_V_fu_341_p1,
      I3 => \ap_CS_fsm_reg[2]\(1),
      I4 => \ap_CS_fsm_reg[2]_0\(0),
      O => D(0)
    );
\ap_CS_fsm[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => tmp_user_V_fu_341_p1,
      I1 => \ap_CS_fsm_reg[2]\(1),
      I2 => \ap_CS_fsm_reg[2]_0\(0),
      O => D(1)
    );
\ireg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ireg_reg[1]\,
      I2 => \ireg_reg[1]_0\(0),
      I3 => ap_rst_n,
      O => SR(0)
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \odata_reg[1]_0\(0),
      Q => tmp_user_V_fu_341_p1,
      R => SS(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => \odata_reg[1]_0\(1),
      Q => \^q\(0),
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_obuf__parameterized1_28\ is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \eol_0_reg_260_reg[0]\ : out STD_LOGIC;
    \eol_reg_227_reg[0]\ : out STD_LOGIC;
    \odata_reg[0]_0\ : out STD_LOGIC;
    \ireg_reg[1]\ : in STD_LOGIC;
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    \eol_2_reg_321_reg[0]\ : in STD_LOGIC;
    \axi_last_V_3_reg_297_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    eol_reg_227 : in STD_LOGIC;
    \axi_last_V_2_reg_272_reg[0]\ : in STD_LOGIC;
    \axi_last_V_2_reg_272_reg[0]_0\ : in STD_LOGIC;
    \axi_last_V_2_reg_272_reg[0]_1\ : in STD_LOGIC;
    \axi_last_V_2_reg_272_reg[0]_2\ : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_obuf__parameterized1_28\ : entity is "obuf";
end \cam_hls_preprocess_0_0_obuf__parameterized1_28\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_obuf__parameterized1_28\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_last_V_3_reg_297[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \eol_2_reg_321[0]_i_2\ : label is "soft_lutpair46";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\axi_last_V_2_reg_272[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAFFCF00AA00C0"
    )
        port map (
      I0 => \^q\(0),
      I1 => eol_reg_227,
      I2 => \axi_last_V_2_reg_272_reg[0]\,
      I3 => \axi_last_V_2_reg_272_reg[0]_0\,
      I4 => \axi_last_V_2_reg_272_reg[0]_1\,
      I5 => \axi_last_V_2_reg_272_reg[0]_2\,
      O => \odata_reg[0]_0\
    );
\axi_last_V_3_reg_297[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => eol_reg_227,
      I1 => \axi_last_V_3_reg_297_reg[0]\(0),
      I2 => \^q\(0),
      O => \eol_reg_227_reg[0]\
    );
\eol_2_reg_321[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \eol_2_reg_321_reg[0]\,
      I1 => \axi_last_V_3_reg_297_reg[0]\(0),
      I2 => \^q\(0),
      O => \eol_0_reg_260_reg[0]\
    );
\ireg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0FF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \ireg_reg[1]\,
      I2 => \ireg_reg[1]_0\(0),
      I3 => ap_rst_n,
      O => SR(0)
    );
\odata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => SS(0)
    );
\odata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => E(0),
      D => D(1),
      Q => \^q\(1),
      R => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_start_for_Convertcud is
  port (
    start_for_Convert_U0_full_n : out STD_LOGIC;
    Convert_U0_ap_start : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    Downsample_U0_ap_start : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    \mOutPtr_reg[0]_0\ : in STD_LOGIC;
    start_for_Mat2AXIvideo_U0_full_n : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_start_for_Convertcud : entity is "start_for_Convertcud";
end cam_hls_preprocess_0_0_start_for_Convertcud;

architecture STRUCTURE of cam_hls_preprocess_0_0_start_for_Convertcud is
  signal \^convert_u0_ap_start\ : STD_LOGIC;
  signal \internal_empty_n_i_1__5_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__2_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__12_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__5_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__2_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_3__2_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  signal \^start_for_convert_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_full_n_i_2__1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_3__2\ : label is "soft_lutpair130";
begin
  Convert_U0_ap_start <= \^convert_u0_ap_start\;
  start_for_Convert_U0_full_n <= \^start_for_convert_u0_full_n\;
\internal_empty_n_i_1__5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A888A888A08"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^convert_u0_ap_start\,
      I2 => \mOutPtr[1]_i_3__2_n_1\,
      I3 => internal_full_n_reg_0,
      I4 => \mOutPtr_reg_n_1_[1]\,
      I5 => \mOutPtr_reg_n_1_[0]\,
      O => \internal_empty_n_i_1__5_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__5_n_1\,
      Q => \^convert_u0_ap_start\,
      R => '0'
    );
\internal_full_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^start_for_convert_u0_full_n\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \mOutPtr_reg_n_1_[1]\,
      I4 => internal_full_n_reg_0,
      I5 => \mOutPtr[1]_i_3__2_n_1\,
      O => \internal_full_n_i_1__2_n_1\
    );
\internal_full_n_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^convert_u0_ap_start\,
      I1 => start_for_Mat2AXIvideo_U0_full_n,
      I2 => internal_empty_n_reg_1,
      O => internal_empty_n_reg_0
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__2_n_1\,
      Q => \^start_for_convert_u0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1__12_n_1\
    );
\mOutPtr[1]_i_1__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \mOutPtr_reg[1]_0\,
      I1 => \^start_for_convert_u0_full_n\,
      I2 => Downsample_U0_ap_start,
      I3 => \mOutPtr[1]_i_3__2_n_1\,
      O => \mOutPtr[1]_i_1__5_n_1\
    );
\mOutPtr[1]_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F70008FF08FFF700"
    )
        port map (
      I0 => Downsample_U0_ap_start,
      I1 => \^start_for_convert_u0_full_n\,
      I2 => \mOutPtr_reg[1]_0\,
      I3 => \mOutPtr[1]_i_3__2_n_1\,
      I4 => \mOutPtr_reg_n_1_[0]\,
      I5 => \mOutPtr_reg_n_1_[1]\,
      O => \mOutPtr[1]_i_2__2_n_1\
    );
\mOutPtr[1]_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^convert_u0_ap_start\,
      I1 => \mOutPtr_reg[0]_0\,
      O => \mOutPtr[1]_i_3__2_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__5_n_1\,
      D => \mOutPtr[0]_i_1__12_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__5_n_1\,
      D => \mOutPtr[1]_i_2__2_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_start_for_Downsambkb is
  port (
    start_for_Downsample_U0_full_n : out STD_LOGIC;
    Downsample_U0_ap_start : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    AXIvideo2Mat_U0_ap_start : in STD_LOGIC;
    start_once_reg : in STD_LOGIC;
    \mOutPtr_reg[0]_0\ : in STD_LOGIC;
    start_for_Convert_U0_full_n : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_start_for_Downsambkb : entity is "start_for_Downsambkb";
end cam_hls_preprocess_0_0_start_for_Downsambkb;

architecture STRUCTURE of cam_hls_preprocess_0_0_start_for_Downsambkb is
  signal \^downsample_u0_ap_start\ : STD_LOGIC;
  signal \internal_empty_n_i_1__4_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__1_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__11_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__4_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__1_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_3__0_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  signal \^start_for_downsample_u0_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \internal_full_n_i_2__0\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_3__0\ : label is "soft_lutpair131";
begin
  Downsample_U0_ap_start <= \^downsample_u0_ap_start\;
  start_for_Downsample_U0_full_n <= \^start_for_downsample_u0_full_n\;
\internal_empty_n_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A888A888A08"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^downsample_u0_ap_start\,
      I2 => \mOutPtr[1]_i_3__0_n_1\,
      I3 => internal_empty_n_reg_1,
      I4 => \mOutPtr_reg_n_1_[0]\,
      I5 => \mOutPtr_reg_n_1_[1]\,
      O => \internal_empty_n_i_1__4_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__4_n_1\,
      Q => \^downsample_u0_ap_start\,
      R => '0'
    );
\internal_full_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^start_for_downsample_u0_full_n\,
      I2 => \mOutPtr_reg_n_1_[1]\,
      I3 => \mOutPtr_reg_n_1_[0]\,
      I4 => internal_empty_n_reg_1,
      I5 => \mOutPtr[1]_i_3__0_n_1\,
      O => \internal_full_n_i_1__1_n_1\
    );
\internal_full_n_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^downsample_u0_ap_start\,
      I1 => start_for_Convert_U0_full_n,
      I2 => internal_full_n_reg_0,
      O => internal_empty_n_reg_0
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__1_n_1\,
      Q => \^start_for_downsample_u0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1__11_n_1\
    );
\mOutPtr[1]_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => start_once_reg,
      I1 => \^start_for_downsample_u0_full_n\,
      I2 => AXIvideo2Mat_U0_ap_start,
      I3 => \mOutPtr[1]_i_3__0_n_1\,
      O => \mOutPtr[1]_i_1__4_n_1\
    );
\mOutPtr[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F70008FF08FFF700"
    )
        port map (
      I0 => AXIvideo2Mat_U0_ap_start,
      I1 => \^start_for_downsample_u0_full_n\,
      I2 => start_once_reg,
      I3 => \mOutPtr[1]_i_3__0_n_1\,
      I4 => \mOutPtr_reg_n_1_[0]\,
      I5 => \mOutPtr_reg_n_1_[1]\,
      O => \mOutPtr[1]_i_2__1_n_1\
    );
\mOutPtr[1]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^downsample_u0_ap_start\,
      I1 => \mOutPtr_reg[0]_0\,
      O => \mOutPtr[1]_i_3__0_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__4_n_1\,
      D => \mOutPtr[0]_i_1__11_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1__4_n_1\,
      D => \mOutPtr[1]_i_2__1_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_start_for_Mat2AXIdEe is
  port (
    start_for_Mat2AXIvideo_U0_full_n : out STD_LOGIC;
    Mat2AXIvideo_U0_ap_start : out STD_LOGIC;
    internal_empty_n_reg_0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Convert_U0_ap_start : in STD_LOGIC;
    \mOutPtr_reg[1]_0\ : in STD_LOGIC;
    \mOutPtr_reg[1]_1\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Mat2AXIvideo_U0_ap_ready : in STD_LOGIC;
    internal_empty_n_reg_1 : in STD_LOGIC;
    int_ap_idle_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    int_ap_idle_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    int_ap_idle_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_start_for_Mat2AXIdEe : entity is "start_for_Mat2AXIdEe";
end cam_hls_preprocess_0_0_start_for_Mat2AXIdEe;

architecture STRUCTURE of cam_hls_preprocess_0_0_start_for_Mat2AXIdEe is
  signal \^mat2axivideo_u0_ap_start\ : STD_LOGIC;
  signal internal_empty_n_i_1_n_1 : STD_LOGIC;
  signal internal_full_n_i_1_n_1 : STD_LOGIC;
  signal \mOutPtr[0]_i_1__13_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  signal \^start_for_mat2axivideo_u0_full_n\ : STD_LOGIC;
begin
  Mat2AXIvideo_U0_ap_start <= \^mat2axivideo_u0_ap_start\;
  start_for_Mat2AXIvideo_U0_full_n <= \^start_for_mat2axivideo_u0_full_n\;
int_ap_idle_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^mat2axivideo_u0_ap_start\,
      I1 => int_ap_idle_reg(0),
      I2 => Q(0),
      I3 => int_ap_idle_reg_0(0),
      I4 => int_ap_idle_reg_1(0),
      O => internal_empty_n_reg_0
    );
internal_empty_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA0AAA0AAA0AA20"
    )
        port map (
      I0 => ap_rst_n,
      I1 => Mat2AXIvideo_U0_ap_ready,
      I2 => \^mat2axivideo_u0_ap_start\,
      I3 => internal_empty_n_reg_1,
      I4 => \mOutPtr_reg_n_1_[1]\,
      I5 => \mOutPtr_reg_n_1_[0]\,
      O => internal_empty_n_i_1_n_1
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_empty_n_i_1_n_1,
      Q => \^mat2axivideo_u0_ap_start\,
      R => '0'
    );
internal_full_n_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDFFFFDDD5DDDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^start_for_mat2axivideo_u0_full_n\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \mOutPtr_reg_n_1_[1]\,
      I4 => internal_empty_n_reg_1,
      I5 => \mOutPtr_reg[1]_1\,
      O => internal_full_n_i_1_n_1
    );
internal_full_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => internal_full_n_i_1_n_1,
      Q => \^start_for_mat2axivideo_u0_full_n\,
      R => '0'
    );
\mOutPtr[0]_i_1__13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1__13_n_1\
    );
\mOutPtr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF404040"
    )
        port map (
      I0 => \mOutPtr_reg[1]_0\,
      I1 => \^start_for_mat2axivideo_u0_full_n\,
      I2 => Convert_U0_ap_start,
      I3 => Mat2AXIvideo_U0_ap_ready,
      I4 => \^mat2axivideo_u0_ap_start\,
      O => \mOutPtr[1]_i_1_n_1\
    );
\mOutPtr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F70008FF08FFF700"
    )
        port map (
      I0 => Convert_U0_ap_start,
      I1 => \^start_for_mat2axivideo_u0_full_n\,
      I2 => \mOutPtr_reg[1]_0\,
      I3 => \mOutPtr_reg[1]_1\,
      I4 => \mOutPtr_reg_n_1_[0]\,
      I5 => \mOutPtr_reg_n_1_[1]\,
      O => \mOutPtr[1]_i_2_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1_n_1\,
      D => \mOutPtr[0]_i_1__13_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr[1]_i_1_n_1\,
      D => \mOutPtr[1]_i_2_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A is
  port (
    dst_img_data_stream_1_empty_n : out STD_LOGIC;
    dst_img_data_stream_1_full_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    \SRL_SIG_reg[1][0]\ : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SRL_SIG_reg[0][7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dst_img_data_stream_1_empty_n\ : STD_LOGIC;
  signal \^dst_img_data_stream_1_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__8_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__8_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__8_n_1\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  dst_img_data_stream_1_empty_n <= \^dst_img_data_stream_1_empty_n\;
  dst_img_data_stream_1_full_n <= \^dst_img_data_stream_1_full_n\;
U_fifo_w8_d2_A_ram: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_18
     port map (
      ADDRBWRADDR(7 downto 0) => ADDRBWRADDR(7 downto 0),
      Q(1 downto 0) => \^q\(1 downto 0),
      \SRL_SIG_reg[0][7]_0\(7 downto 0) => \SRL_SIG_reg[0][7]\(7 downto 0),
      \SRL_SIG_reg[1][0]_0\ => \SRL_SIG_reg[1][0]\,
      ap_clk => ap_clk
    );
\internal_empty_n_i_1__8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A888A888A08"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^dst_img_data_stream_1_empty_n\,
      I2 => internal_empty_n_reg_0,
      I3 => \SRL_SIG_reg[1][0]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \internal_empty_n_i_1__8_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__8_n_1\,
      Q => \^dst_img_data_stream_1_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^dst_img_data_stream_1_full_n\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \SRL_SIG_reg[1][0]\,
      I4 => internal_empty_n_reg_0,
      O => \internal_full_n_i_1__8_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__8_n_1\,
      Q => \^dst_img_data_stream_1_full_n\,
      S => internal_full_n_reg_0
    );
\mOutPtr[0]_i_1__8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \mOutPtr[0]_i_1__8_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__8_n_1\,
      Q => \^q\(0),
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => \^q\(1),
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_0 is
  port (
    dst_img_data_stream_2_empty_n : out STD_LOGIC;
    dst_img_data_stream_2_full_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    addr2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SRL_SIG_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_0 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_0;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dst_img_data_stream_2_empty_n\ : STD_LOGIC;
  signal \^dst_img_data_stream_2_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__7_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__9_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__9_n_1\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  dst_img_data_stream_2_empty_n <= \^dst_img_data_stream_2_empty_n\;
  dst_img_data_stream_2_full_n <= \^dst_img_data_stream_2_full_n\;
U_fifo_w8_d2_A_ram: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_17
     port map (
      Q(1 downto 0) => \^q\(1 downto 0),
      \SRL_SIG_reg[0][7]_0\ => \SRL_SIG_reg[0][7]\,
      \SRL_SIG_reg[0][7]_1\(7 downto 0) => \SRL_SIG_reg[0][7]_0\(7 downto 0),
      addr2(7 downto 0) => addr2(7 downto 0),
      ap_clk => ap_clk
    );
\internal_empty_n_i_1__7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A888A888A08"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^dst_img_data_stream_2_empty_n\,
      I2 => internal_empty_n_reg_0,
      I3 => \SRL_SIG_reg[0][7]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \internal_empty_n_i_1__7_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__7_n_1\,
      Q => \^dst_img_data_stream_2_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^dst_img_data_stream_2_full_n\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \SRL_SIG_reg[0][7]\,
      I4 => internal_empty_n_reg_0,
      O => \internal_full_n_i_1__9_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__9_n_1\,
      Q => \^dst_img_data_stream_2_full_n\,
      S => internal_full_n_reg_0
    );
\mOutPtr[0]_i_1__9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \mOutPtr[0]_i_1__9_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__9_n_1\,
      Q => \^q\(0),
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => \^q\(1),
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_10 is
  port (
    src_img_data_stream_s_empty_n : out STD_LOGIC;
    src_img_data_stream_s_full_n : out STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    AXIvideo2Mat_U0_img_data_stream_3_V_write : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_10 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_10;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_10 is
  signal \internal_empty_n_i_1__0_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_2__2_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__3_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__0_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  signal \^src_img_data_stream_s_empty_n\ : STD_LOGIC;
  signal \^src_img_data_stream_s_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__3\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2__0\ : label is "soft_lutpair129";
begin
  src_img_data_stream_s_empty_n <= \^src_img_data_stream_s_empty_n\;
  src_img_data_stream_s_full_n <= \^src_img_data_stream_s_full_n\;
U_fifo_w8_d2_A_ram: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg
     port map (
      AXIvideo2Mat_U0_img_data_stream_3_V_write => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D(7 downto 0) => D(7 downto 0),
      Q(1) => \mOutPtr_reg_n_1_[1]\,
      Q(0) => \mOutPtr_reg_n_1_[0]\,
      \SRL_SIG_reg[0][7]_0\(7 downto 0) => \SRL_SIG_reg[0][7]\(7 downto 0),
      ap_clk => ap_clk
    );
\internal_empty_n_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888A888A888A880"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^src_img_data_stream_s_empty_n\,
      I2 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I3 => internal_full_n_reg_1,
      I4 => \mOutPtr_reg_n_1_[0]\,
      I5 => \mOutPtr_reg_n_1_[1]\,
      O => \internal_empty_n_i_1__0_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__0_n_1\,
      Q => \^src_img_data_stream_s_empty_n\,
      R => '0'
    );
\internal_full_n_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA2A"
    )
        port map (
      I0 => \^src_img_data_stream_s_full_n\,
      I1 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I2 => internal_full_n_reg_1,
      I3 => \mOutPtr_reg_n_1_[0]\,
      I4 => \mOutPtr_reg_n_1_[1]\,
      O => \internal_full_n_i_2__2_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_2__2_n_1\,
      Q => \^src_img_data_stream_s_full_n\,
      S => internal_full_n_reg_0
    );
\mOutPtr[0]_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1__3_n_1\
    );
\mOutPtr[1]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => internal_full_n_reg_1,
      I1 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \mOutPtr_reg_n_1_[1]\,
      O => \mOutPtr[1]_i_2__0_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__3_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_2__0_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_2 is
  port (
    dst_img_data_stream_s_empty_n : out STD_LOGIC;
    dst_img_data_stream_s_full_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    addr0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    internal_empty_n_reg_0 : in STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \SRL_SIG_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_2 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_2;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_2 is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dst_img_data_stream_s_empty_n\ : STD_LOGIC;
  signal \^dst_img_data_stream_s_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__9_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_2__3_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__7_n_1\ : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
  dst_img_data_stream_s_empty_n <= \^dst_img_data_stream_s_empty_n\;
  dst_img_data_stream_s_full_n <= \^dst_img_data_stream_s_full_n\;
U_fifo_w8_d2_A_ram: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_16
     port map (
      Q(1 downto 0) => \^q\(1 downto 0),
      \SRL_SIG_reg[0][7]_0\ => \SRL_SIG_reg[0][7]\,
      \SRL_SIG_reg[0][7]_1\(7 downto 0) => \SRL_SIG_reg[0][7]_0\(7 downto 0),
      addr0(7 downto 0) => addr0(7 downto 0),
      ap_clk => ap_clk
    );
\internal_empty_n_i_1__9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A888A888A08"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^dst_img_data_stream_s_empty_n\,
      I2 => internal_empty_n_reg_0,
      I3 => \SRL_SIG_reg[0][7]\,
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \internal_empty_n_i_1__9_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__9_n_1\,
      Q => \^dst_img_data_stream_s_empty_n\,
      R => '0'
    );
\internal_full_n_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^dst_img_data_stream_s_full_n\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \SRL_SIG_reg[0][7]\,
      I4 => internal_empty_n_reg_0,
      O => \internal_full_n_i_2__3_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_2__3_n_1\,
      Q => \^dst_img_data_stream_s_full_n\,
      S => internal_full_n_reg_0
    );
\mOutPtr[0]_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \mOutPtr[0]_i_1__7_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__7_n_1\,
      Q => \^q\(0),
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => D(0),
      Q => \^q\(1),
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_3 is
  port (
    ifm_img_data_stream_1_full_n : out STD_LOGIC;
    q0_reg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    internal_empty_n_reg_0 : out STD_LOGIC;
    q0_reg_0 : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    Mat2AXIvideo_U0_img_data_stream_3_V_read : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \odata_reg[14]\ : in STD_LOGIC;
    \ireg[32]_i_4__0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ifm_img_data_stream_3_empty_n : in STD_LOGIC;
    ifm_img_data_stream_s_empty_n : in STD_LOGIC;
    ifm_img_data_stream_2_empty_n : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_3 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_3;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_3 is
  signal ifm_img_data_stream_1_empty_n : STD_LOGIC;
  signal \^ifm_img_data_stream_1_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__12_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__11_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__13_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__13\ : label is "soft_lutpair122";
begin
  ifm_img_data_stream_1_full_n <= \^ifm_img_data_stream_1_full_n\;
U_fifo_w8_d2_A_ram: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_15
     port map (
      D(6 downto 0) => D(6 downto 0),
      Q(1) => \mOutPtr_reg_n_1_[1]\,
      Q(0) => \mOutPtr_reg_n_1_[0]\,
      ap_clk => ap_clk,
      \odata_reg[14]\ => \odata_reg[14]\,
      \odata_reg[14]_0\(6 downto 0) => \ireg[32]_i_4__0\(6 downto 0),
      q0_reg(6 downto 0) => q0_reg(6 downto 0),
      q0_reg_0(6 downto 0) => q0_reg_0(6 downto 0),
      shiftReg_ce => shiftReg_ce
    );
\internal_empty_n_i_1__12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88A888A888A880A8"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ifm_img_data_stream_1_empty_n,
      I2 => shiftReg_ce,
      I3 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      I4 => \mOutPtr_reg_n_1_[1]\,
      I5 => \mOutPtr_reg_n_1_[0]\,
      O => \internal_empty_n_i_1__12_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__12_n_1\,
      Q => ifm_img_data_stream_1_empty_n,
      R => '0'
    );
\internal_full_n_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^ifm_img_data_stream_1_full_n\,
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => shiftReg_ce,
      I4 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      O => \internal_full_n_i_1__11_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__11_n_1\,
      Q => \^ifm_img_data_stream_1_full_n\,
      S => internal_full_n_reg_0
    );
\ireg[32]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => ifm_img_data_stream_1_empty_n,
      I1 => ifm_img_data_stream_3_empty_n,
      I2 => ifm_img_data_stream_s_empty_n,
      I3 => ifm_img_data_stream_2_empty_n,
      I4 => \ireg[32]_i_4__0\(7),
      I5 => ap_rst_n,
      O => internal_empty_n_reg_0
    );
\mOutPtr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1__0_n_1\
    );
\mOutPtr[1]_i_1__13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      I1 => shiftReg_ce,
      I2 => \mOutPtr_reg_n_1_[1]\,
      I3 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[1]_i_1__13_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__0_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1__13_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_5 is
  port (
    \SRL_SIG_reg[1][0]\ : out STD_LOGIC;
    \SRL_SIG_reg[1][1]\ : out STD_LOGIC;
    \SRL_SIG_reg[1][2]\ : out STD_LOGIC;
    \SRL_SIG_reg[1][3]\ : out STD_LOGIC;
    \SRL_SIG_reg[1][4]\ : out STD_LOGIC;
    \SRL_SIG_reg[1][5]\ : out STD_LOGIC;
    \SRL_SIG_reg[1][6]\ : out STD_LOGIC;
    ifm_img_data_stream_3_empty_n : out STD_LOGIC;
    ifm_img_data_stream_3_full_n : out STD_LOGIC;
    q2_reg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    shiftReg_ce : in STD_LOGIC;
    q2 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Mat2AXIvideo_U0_img_data_stream_3_V_read : in STD_LOGIC;
    \odata_reg[30]\ : in STD_LOGIC;
    \odata_reg[30]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_5 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_5;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_5 is
  signal \^ifm_img_data_stream_3_empty_n\ : STD_LOGIC;
  signal \^ifm_img_data_stream_3_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__13_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__13_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__2_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__11_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__2\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__11\ : label is "soft_lutpair124";
begin
  ifm_img_data_stream_3_empty_n <= \^ifm_img_data_stream_3_empty_n\;
  ifm_img_data_stream_3_full_n <= \^ifm_img_data_stream_3_full_n\;
U_fifo_w8_d2_A_ram: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_14
     port map (
      D(6 downto 0) => D(6 downto 0),
      Q(1) => \mOutPtr_reg_n_1_[1]\,
      Q(0) => \mOutPtr_reg_n_1_[0]\,
      \SRL_SIG_reg[1][0]_0\ => \SRL_SIG_reg[1][0]\,
      \SRL_SIG_reg[1][1]_0\ => \SRL_SIG_reg[1][1]\,
      \SRL_SIG_reg[1][2]_0\ => \SRL_SIG_reg[1][2]\,
      \SRL_SIG_reg[1][3]_0\ => \SRL_SIG_reg[1][3]\,
      \SRL_SIG_reg[1][4]_0\ => \SRL_SIG_reg[1][4]\,
      \SRL_SIG_reg[1][5]_0\ => \SRL_SIG_reg[1][5]\,
      \SRL_SIG_reg[1][6]_0\ => \SRL_SIG_reg[1][6]\,
      ap_clk => ap_clk,
      \odata_reg[30]\ => \odata_reg[30]\,
      \odata_reg[30]_0\(6 downto 0) => \odata_reg[30]_0\(6 downto 0),
      q2(6 downto 0) => q2(6 downto 0),
      q2_reg(6 downto 0) => q2_reg(6 downto 0),
      shiftReg_ce => shiftReg_ce
    );
\internal_empty_n_i_1__13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88A888A888A880A8"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ifm_img_data_stream_3_empty_n\,
      I2 => shiftReg_ce,
      I3 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      I4 => \mOutPtr_reg_n_1_[1]\,
      I5 => \mOutPtr_reg_n_1_[0]\,
      O => \internal_empty_n_i_1__13_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__13_n_1\,
      Q => \^ifm_img_data_stream_3_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^ifm_img_data_stream_3_full_n\,
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => shiftReg_ce,
      I4 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      O => \internal_full_n_i_1__13_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__13_n_1\,
      Q => \^ifm_img_data_stream_3_full_n\,
      S => internal_full_n_reg_0
    );
\mOutPtr[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1__2_n_1\
    );
\mOutPtr[1]_i_1__11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      I1 => shiftReg_ce,
      I2 => \mOutPtr_reg_n_1_[1]\,
      I3 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[1]_i_1__11_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__2_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1__11_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_6 is
  port (
    ifm_img_data_stream_s_empty_n : out STD_LOGIC;
    ifm_img_data_stream_s_full_n : out STD_LOGIC;
    q0_reg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    Mat2AXIvideo_U0_img_data_stream_3_V_read : in STD_LOGIC;
    q0 : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \odata_reg[6]\ : in STD_LOGIC;
    \odata_reg[6]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    \mOutPtr_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_6 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_6;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_6 is
  signal \^ifm_img_data_stream_s_empty_n\ : STD_LOGIC;
  signal \^ifm_img_data_stream_s_full_n\ : STD_LOGIC;
  signal \internal_empty_n_i_1__10_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_2__4_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_2__4_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_2__4\ : label is "soft_lutpair125";
begin
  ifm_img_data_stream_s_empty_n <= \^ifm_img_data_stream_s_empty_n\;
  ifm_img_data_stream_s_full_n <= \^ifm_img_data_stream_s_full_n\;
U_fifo_w8_d2_A_ram: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_13
     port map (
      D(6 downto 0) => D(6 downto 0),
      Q(1) => \mOutPtr_reg_n_1_[1]\,
      Q(0) => \mOutPtr_reg_n_1_[0]\,
      ap_clk => ap_clk,
      \odata_reg[6]\ => \odata_reg[6]\,
      \odata_reg[6]_0\(6 downto 0) => \odata_reg[6]_0\(6 downto 0),
      q0(6 downto 0) => q0(6 downto 0),
      q0_reg(6 downto 0) => q0_reg(6 downto 0),
      shiftReg_ce => shiftReg_ce
    );
\internal_empty_n_i_1__10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88A888A888A880A8"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^ifm_img_data_stream_s_empty_n\,
      I2 => shiftReg_ce,
      I3 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      I4 => \mOutPtr_reg_n_1_[1]\,
      I5 => \mOutPtr_reg_n_1_[0]\,
      O => \internal_empty_n_i_1__10_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__10_n_1\,
      Q => \^ifm_img_data_stream_s_empty_n\,
      R => '0'
    );
\internal_full_n_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => \^ifm_img_data_stream_s_full_n\,
      I1 => \mOutPtr_reg_n_1_[1]\,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => shiftReg_ce,
      I4 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      O => \internal_full_n_i_2__4_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_2__4_n_1\,
      Q => \^ifm_img_data_stream_s_full_n\,
      S => internal_full_n_reg_0
    );
\mOutPtr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1_n_1\
    );
\mOutPtr[1]_i_2__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      I1 => shiftReg_ce,
      I2 => \mOutPtr_reg_n_1_[1]\,
      I3 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[1]_i_2__4_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\(0),
      D => \mOutPtr[0]_i_1_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => \mOutPtr_reg[0]_0\(0),
      D => \mOutPtr[1]_i_2__4_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_7 is
  port (
    src_img_data_stream_1_empty_n : out STD_LOGIC;
    src_img_data_stream_1_full_n : out STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    AXIvideo2Mat_U0_img_data_stream_3_V_write : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_7 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_7;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_7 is
  signal \internal_empty_n_i_1__1_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__5_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__4_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__3_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  signal \^src_img_data_stream_1_empty_n\ : STD_LOGIC;
  signal \^src_img_data_stream_1_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__4\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__3\ : label is "soft_lutpair126";
begin
  src_img_data_stream_1_empty_n <= \^src_img_data_stream_1_empty_n\;
  src_img_data_stream_1_full_n <= \^src_img_data_stream_1_full_n\;
U_fifo_w8_d2_A_ram: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_12
     port map (
      AXIvideo2Mat_U0_img_data_stream_3_V_write => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D(7 downto 0) => D(7 downto 0),
      Q(1) => \mOutPtr_reg_n_1_[1]\,
      Q(0) => \mOutPtr_reg_n_1_[0]\,
      \SRL_SIG_reg[0][7]_0\(7 downto 0) => \SRL_SIG_reg[0][7]\(7 downto 0),
      ap_clk => ap_clk
    );
\internal_empty_n_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888A888A888A880"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^src_img_data_stream_1_empty_n\,
      I2 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I3 => internal_full_n_reg_1,
      I4 => \mOutPtr_reg_n_1_[0]\,
      I5 => \mOutPtr_reg_n_1_[1]\,
      O => \internal_empty_n_i_1__1_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__1_n_1\,
      Q => \^src_img_data_stream_1_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA2A"
    )
        port map (
      I0 => \^src_img_data_stream_1_full_n\,
      I1 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I2 => internal_full_n_reg_1,
      I3 => \mOutPtr_reg_n_1_[0]\,
      I4 => \mOutPtr_reg_n_1_[1]\,
      O => \internal_full_n_i_1__5_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__5_n_1\,
      Q => \^src_img_data_stream_1_full_n\,
      S => internal_full_n_reg_0
    );
\mOutPtr[0]_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1__4_n_1\
    );
\mOutPtr[1]_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => internal_full_n_reg_1,
      I1 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \mOutPtr_reg_n_1_[1]\,
      O => \mOutPtr[1]_i_1__3_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__4_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1__3_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_fifo_w8_d2_A_8 is
  port (
    src_img_data_stream_2_empty_n : out STD_LOGIC;
    src_img_data_stream_2_full_n : out STD_LOGIC;
    \SRL_SIG_reg[0][7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    internal_full_n_reg_0 : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    AXIvideo2Mat_U0_img_data_stream_3_V_write : in STD_LOGIC;
    internal_full_n_reg_1 : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_fifo_w8_d2_A_8 : entity is "fifo_w8_d2_A";
end cam_hls_preprocess_0_0_fifo_w8_d2_A_8;

architecture STRUCTURE of cam_hls_preprocess_0_0_fifo_w8_d2_A_8 is
  signal \internal_empty_n_i_1__2_n_1\ : STD_LOGIC;
  signal \internal_full_n_i_1__6_n_1\ : STD_LOGIC;
  signal \mOutPtr[0]_i_1__5_n_1\ : STD_LOGIC;
  signal \mOutPtr[1]_i_1__2_n_1\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[0]\ : STD_LOGIC;
  signal \mOutPtr_reg_n_1_[1]\ : STD_LOGIC;
  signal \^src_img_data_stream_2_empty_n\ : STD_LOGIC;
  signal \^src_img_data_stream_2_full_n\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mOutPtr[0]_i_1__5\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \mOutPtr[1]_i_1__2\ : label is "soft_lutpair127";
begin
  src_img_data_stream_2_empty_n <= \^src_img_data_stream_2_empty_n\;
  src_img_data_stream_2_full_n <= \^src_img_data_stream_2_full_n\;
U_fifo_w8_d2_A_ram: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_shiftReg_11
     port map (
      AXIvideo2Mat_U0_img_data_stream_3_V_write => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D(7 downto 0) => D(7 downto 0),
      Q(1) => \mOutPtr_reg_n_1_[1]\,
      Q(0) => \mOutPtr_reg_n_1_[0]\,
      \SRL_SIG_reg[0][7]_0\(7 downto 0) => \SRL_SIG_reg[0][7]\(7 downto 0),
      ap_clk => ap_clk
    );
\internal_empty_n_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888A888A888A880"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^src_img_data_stream_2_empty_n\,
      I2 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I3 => internal_full_n_reg_1,
      I4 => \mOutPtr_reg_n_1_[0]\,
      I5 => \mOutPtr_reg_n_1_[1]\,
      O => \internal_empty_n_i_1__2_n_1\
    );
internal_empty_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_empty_n_i_1__2_n_1\,
      Q => \^src_img_data_stream_2_empty_n\,
      R => '0'
    );
\internal_full_n_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA2A"
    )
        port map (
      I0 => \^src_img_data_stream_2_full_n\,
      I1 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I2 => internal_full_n_reg_1,
      I3 => \mOutPtr_reg_n_1_[0]\,
      I4 => \mOutPtr_reg_n_1_[1]\,
      O => \internal_full_n_i_1__6_n_1\
    );
internal_full_n_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \internal_full_n_i_1__6_n_1\,
      Q => \^src_img_data_stream_2_full_n\,
      S => internal_full_n_reg_0
    );
\mOutPtr[0]_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \mOutPtr_reg_n_1_[0]\,
      O => \mOutPtr[0]_i_1__5_n_1\
    );
\mOutPtr[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => internal_full_n_reg_1,
      I1 => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      I2 => \mOutPtr_reg_n_1_[0]\,
      I3 => \mOutPtr_reg_n_1_[1]\,
      O => \mOutPtr[1]_i_1__2_n_1\
    );
\mOutPtr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[0]_i_1__5_n_1\,
      Q => \mOutPtr_reg_n_1_[0]\,
      S => SS(0)
    );
\mOutPtr_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => E(0),
      D => \mOutPtr[1]_i_1__2_n_1\,
      Q => \mOutPtr_reg_n_1_[1]\,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_regslice_both is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_0 : out STD_LOGIC;
    ap_rst_n_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \icmp_ln126_reg_288_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    internal_empty_n_reg : out STD_LOGIC;
    Mat2AXIvideo_U0_ap_ready : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_2 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_3 : out STD_LOGIC;
    \odata_reg[32]\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \ireg_reg[32]\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \tmp_user_V_fu_136_reg[0]\ : out STD_LOGIC;
    \t_V_1_reg_204_reg[0]\ : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n_4 : out STD_LOGIC;
    icmp_ln126_reg_2880 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ireg_reg[32]_0\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    icmp_ln126_fu_232_p2 : in STD_LOGIC;
    ap_enable_reg_pp0_iter2_reg : in STD_LOGIC;
    Mat2AXIvideo_U0_ap_start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    video_dst_TREADY : in STD_LOGIC;
    \mOutPtr_reg[1]\ : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    \tmp_user_V_fu_136_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_last_V_reg_297_reg[0]\ : in STD_LOGIC;
    \axi_last_V_reg_297_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_last_V_reg_297_reg[0]_1\ : in STD_LOGIC;
    \axi_last_V_reg_297_reg[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    icmp_ln126_reg_288_pp0_iter1_reg : in STD_LOGIC;
    \ireg_reg[32]_1\ : in STD_LOGIC;
    \ireg_reg[32]_2\ : in STD_LOGIC;
    \ireg_reg[30]\ : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \odata_reg[30]\ : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_regslice_both : entity is "regslice_both";
end cam_hls_preprocess_0_0_regslice_both;

architecture STRUCTURE of cam_hls_preprocess_0_0_regslice_both is
  signal \^mat2axivideo_u0_ap_ready\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ap_CS_fsm[1]_i_2_n_1\ : STD_LOGIC;
  signal ap_NS_fsm1 : STD_LOGIC;
  signal \count_reg_n_1_[0]\ : STD_LOGIC;
  signal \count_reg_n_1_[1]\ : STD_LOGIC;
  signal ibuf_inst_n_14 : STD_LOGIC;
  signal ibuf_inst_n_3 : STD_LOGIC;
  signal ibuf_inst_n_45 : STD_LOGIC;
  signal \^ireg_reg[32]\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal obuf_inst_n_2 : STD_LOGIC;
  signal \^odata_reg[32]\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \i_V_reg_283[8]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \int_isr[0]_i_3\ : label is "soft_lutpair103";
begin
  Mat2AXIvideo_U0_ap_ready <= \^mat2axivideo_u0_ap_ready\;
  SR(0) <= \^sr\(0);
  \ireg_reg[32]\(28 downto 0) <= \^ireg_reg[32]\(28 downto 0);
  \odata_reg[32]\(28 downto 0) <= \^odata_reg[32]\(28 downto 0);
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Mat2AXIvideo_U0_ap_start,
      I1 => Q(0),
      I2 => \^mat2axivideo_u0_ap_ready\,
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => Mat2AXIvideo_U0_ap_start,
      I1 => Q(0),
      I2 => Q(3),
      I3 => \ap_CS_fsm[1]_i_2_n_1\,
      I4 => Q(1),
      O => D(1)
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => video_dst_TREADY,
      I1 => \count_reg_n_1_[1]\,
      I2 => \count_reg_n_1_[0]\,
      O => \ap_CS_fsm[1]_i_2_n_1\
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008F00"
    )
        port map (
      I0 => video_dst_TREADY,
      I1 => \count_reg_n_1_[1]\,
      I2 => \count_reg_n_1_[0]\,
      I3 => Q(1),
      I4 => \mOutPtr_reg[1]\,
      O => ap_NS_fsm1
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ibuf_inst_n_3,
      Q => \count_reg_n_1_[0]\,
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ibuf_inst_n_45,
      Q => \count_reg_n_1_[1]\,
      R => \^sr\(0)
    );
\i_V_reg_283[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => Q(1),
      I1 => \count_reg_n_1_[0]\,
      I2 => \count_reg_n_1_[1]\,
      I3 => video_dst_TREADY,
      O => E(0)
    );
ibuf_inst: entity work.cam_hls_preprocess_0_0_ibuf
     port map (
      D(1 downto 0) => D(3 downto 2),
      Mat2AXIvideo_U0_ap_start => Mat2AXIvideo_U0_ap_start,
      Q(1) => Q(2),
      Q(0) => Q(0),
      SR(0) => obuf_inst_n_2,
      ap_NS_fsm1 => ap_NS_fsm1,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg(0) => ap_enable_reg_pp0_iter0_reg(0),
      ap_enable_reg_pp0_iter0_reg_0(0) => ap_enable_reg_pp0_iter0_reg_0(0),
      ap_enable_reg_pp0_iter2_reg => ap_enable_reg_pp0_iter2_reg,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ap_rst_n_0,
      ap_rst_n_1 => ap_rst_n_1,
      ap_rst_n_2 => ibuf_inst_n_3,
      ap_rst_n_3 => ap_rst_n_2,
      ap_rst_n_4 => ap_rst_n_3,
      ap_rst_n_5 => ap_rst_n_4,
      \axi_last_V_reg_297_reg[0]\ => \axi_last_V_reg_297_reg[0]\,
      \axi_last_V_reg_297_reg[0]_0\(1 downto 0) => \axi_last_V_reg_297_reg[0]_0\(1 downto 0),
      \axi_last_V_reg_297_reg[0]_1\ => \axi_last_V_reg_297_reg[0]_1\,
      \axi_last_V_reg_297_reg[0]_2\(0) => \axi_last_V_reg_297_reg[0]_2\(0),
      \count_reg[0]\ => \count_reg_n_1_[0]\,
      \count_reg[0]_0\ => \count_reg_n_1_[1]\,
      \count_reg[1]\ => ibuf_inst_n_45,
      icmp_ln126_fu_232_p2 => icmp_ln126_fu_232_p2,
      icmp_ln126_reg_2880 => icmp_ln126_reg_2880,
      icmp_ln126_reg_288_pp0_iter1_reg => icmp_ln126_reg_288_pp0_iter1_reg,
      \icmp_ln126_reg_288_reg[0]\ => \icmp_ln126_reg_288_reg[0]\(0),
      \ireg_reg[0]_0\(0) => \^odata_reg[32]\(28),
      \ireg_reg[30]_0\(27 downto 0) => \ireg_reg[30]\(27 downto 0),
      \ireg_reg[32]_0\(0) => ibuf_inst_n_14,
      \ireg_reg[32]_1\(28 downto 0) => \^ireg_reg[32]\(28 downto 0),
      \ireg_reg[32]_2\ => \ireg_reg[32]_0\,
      \ireg_reg[32]_3\ => \ireg_reg[32]_1\,
      \ireg_reg[32]_4\ => \ireg_reg[32]_2\,
      shiftReg_ce => shiftReg_ce,
      \t_V_1_reg_204_reg[0]\ => \t_V_1_reg_204_reg[0]\,
      \tmp_user_V_fu_136_reg[0]\ => \tmp_user_V_fu_136_reg[0]\,
      \tmp_user_V_fu_136_reg[0]_0\(0) => \tmp_user_V_fu_136_reg[0]_0\(0),
      video_dst_TREADY => video_dst_TREADY
    );
\int_isr[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80AA0000"
    )
        port map (
      I0 => \mOutPtr_reg[1]\,
      I1 => video_dst_TREADY,
      I2 => \count_reg_n_1_[1]\,
      I3 => \count_reg_n_1_[0]\,
      I4 => Q(1),
      O => \^mat2axivideo_u0_ap_ready\
    );
\mOutPtr[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8808080800000000"
    )
        port map (
      I0 => Mat2AXIvideo_U0_ap_start,
      I1 => Q(1),
      I2 => \count_reg_n_1_[0]\,
      I3 => \count_reg_n_1_[1]\,
      I4 => video_dst_TREADY,
      I5 => \mOutPtr_reg[1]\,
      O => internal_empty_n_reg
    );
obuf_inst: entity work.cam_hls_preprocess_0_0_obuf
     port map (
      D(28) => ibuf_inst_n_14,
      D(27 downto 0) => \odata_reg[30]\(27 downto 0),
      Q(28 downto 0) => \^odata_reg[32]\(28 downto 0),
      SR(0) => \^sr\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[32]\(0) => \^ireg_reg[32]\(28),
      \odata_reg[32]_0\(0) => obuf_inst_n_2,
      video_dst_TREADY => video_dst_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_regslice_both_22 is
  port (
    ap_rst_n_0 : out STD_LOGIC;
    \axi_last_V_2_reg_272_reg[0]\ : out STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_last_V_2_reg_272_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_0\ : out STD_LOGIC;
    \odata_reg[32]\ : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \ap_CS_fsm_reg[4]_1\ : out STD_LOGIC;
    \odata_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_reg[23]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \odata_reg[15]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \odata_reg[23]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \ap_CS_fsm_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[32]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_src_TREADY : out STD_LOGIC;
    \axi_data_V_1_reg_238_reg[23]\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \odata_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_4\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]_5\ : out STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \SRL_SIG_reg[1][0]\ : in STD_LOGIC;
    ap_enable_reg_pp1_iter0 : in STD_LOGIC;
    icmp_ln73_fu_362_p2 : in STD_LOGIC;
    p_1_in3_in : in STD_LOGIC;
    \eol_reg_227_reg[0]\ : in STD_LOGIC;
    \eol_0_reg_260_reg[0]\ : in STD_LOGIC;
    axi_last_V_0_reg_196 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \axi_data_V_1_reg_238_reg[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \icmp_ln73_reg_451_reg[0]_0\ : in STD_LOGIC;
    \axi_data_V_3_reg_309_reg[0]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \tmp_1_reg_474_reg[7]\ : in STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]_1\ : in STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]_2\ : in STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]_3\ : in STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]_4\ : in STD_LOGIC;
    \axi_data_V_3_reg_309_reg[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \p_Val2_s_reg_285_reg[23]\ : in STD_LOGIC;
    \p_Val2_s_reg_285_reg[23]_0\ : in STD_LOGIC;
    \axi_data_V_3_reg_309_reg[0]_0\ : in STD_LOGIC;
    \ireg_reg[32]\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    \odata_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \odata_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sof_1_fu_146 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_regslice_both_22 : entity is "regslice_both";
end cam_hls_preprocess_0_0_regslice_both_22;

architecture STRUCTURE of cam_hls_preprocess_0_0_regslice_both_22 is
  signal ibuf_inst_n_10 : STD_LOGIC;
  signal ibuf_inst_n_11 : STD_LOGIC;
  signal ibuf_inst_n_12 : STD_LOGIC;
  signal ibuf_inst_n_13 : STD_LOGIC;
  signal ibuf_inst_n_14 : STD_LOGIC;
  signal ibuf_inst_n_15 : STD_LOGIC;
  signal ibuf_inst_n_16 : STD_LOGIC;
  signal ibuf_inst_n_17 : STD_LOGIC;
  signal ibuf_inst_n_18 : STD_LOGIC;
  signal ibuf_inst_n_19 : STD_LOGIC;
  signal ibuf_inst_n_20 : STD_LOGIC;
  signal ibuf_inst_n_21 : STD_LOGIC;
  signal ibuf_inst_n_22 : STD_LOGIC;
  signal ibuf_inst_n_23 : STD_LOGIC;
  signal ibuf_inst_n_24 : STD_LOGIC;
  signal ibuf_inst_n_25 : STD_LOGIC;
  signal ibuf_inst_n_26 : STD_LOGIC;
  signal ibuf_inst_n_27 : STD_LOGIC;
  signal ibuf_inst_n_3 : STD_LOGIC;
  signal ibuf_inst_n_4 : STD_LOGIC;
  signal ibuf_inst_n_5 : STD_LOGIC;
  signal ibuf_inst_n_6 : STD_LOGIC;
  signal ibuf_inst_n_7 : STD_LOGIC;
  signal ibuf_inst_n_8 : STD_LOGIC;
  signal ibuf_inst_n_9 : STD_LOGIC;
  signal ireg01_out : STD_LOGIC;
  signal obuf_inst_n_32 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.cam_hls_preprocess_0_0_ibuf_29
     port map (
      D(24) => ibuf_inst_n_3,
      D(23) => ibuf_inst_n_4,
      D(22) => ibuf_inst_n_5,
      D(21) => ibuf_inst_n_6,
      D(20) => ibuf_inst_n_7,
      D(19) => ibuf_inst_n_8,
      D(18) => ibuf_inst_n_9,
      D(17) => ibuf_inst_n_10,
      D(16) => ibuf_inst_n_11,
      D(15) => ibuf_inst_n_12,
      D(14) => ibuf_inst_n_13,
      D(13) => ibuf_inst_n_14,
      D(12) => ibuf_inst_n_15,
      D(11) => ibuf_inst_n_16,
      D(10) => ibuf_inst_n_17,
      D(9) => ibuf_inst_n_18,
      D(8) => ibuf_inst_n_19,
      D(7) => ibuf_inst_n_20,
      D(6) => ibuf_inst_n_21,
      D(5) => ibuf_inst_n_22,
      D(4) => ibuf_inst_n_23,
      D(3) => ibuf_inst_n_24,
      D(2) => ibuf_inst_n_25,
      D(1) => ibuf_inst_n_26,
      D(0) => ibuf_inst_n_27,
      E(0) => ireg01_out,
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_32,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[32]_0\(24 downto 0) => \ireg_reg[32]\(24 downto 0),
      video_src_TREADY => video_src_TREADY
    );
obuf_inst: entity work.cam_hls_preprocess_0_0_obuf_30
     port map (
      D(23 downto 0) => D(23 downto 0),
      E(0) => E(0),
      Q(23 downto 0) => Q(23 downto 0),
      SR(0) => obuf_inst_n_32,
      \SRL_SIG_reg[1][0]\ => \SRL_SIG_reg[1][0]\,
      SS(0) => SS(0),
      \ap_CS_fsm_reg[4]\(0) => \ap_CS_fsm_reg[4]\(0),
      \ap_CS_fsm_reg[4]_0\ => \ap_CS_fsm_reg[4]_0\,
      \ap_CS_fsm_reg[4]_1\ => \ap_CS_fsm_reg[4]_1\,
      \ap_CS_fsm_reg[4]_2\(0) => \ap_CS_fsm_reg[4]_2\(0),
      \ap_CS_fsm_reg[4]_3\(0) => \ap_CS_fsm_reg[4]_3\(0),
      \ap_CS_fsm_reg[4]_4\ => \ap_CS_fsm_reg[4]_4\,
      \ap_CS_fsm_reg[4]_5\(0) => SR(0),
      \ap_CS_fsm_reg[4]_6\ => \ap_CS_fsm_reg[4]_5\,
      \ap_CS_fsm_reg[5]\(0) => \ap_CS_fsm_reg[5]\(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp1_iter0 => ap_enable_reg_pp1_iter0,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => ap_rst_n_0,
      \axi_data_V_1_reg_238_reg[23]\(23 downto 0) => \axi_data_V_1_reg_238_reg[23]\(23 downto 0),
      \axi_data_V_1_reg_238_reg[23]_0\(23 downto 0) => \axi_data_V_1_reg_238_reg[23]_0\(23 downto 0),
      \axi_data_V_3_reg_309_reg[0]\(4 downto 0) => \axi_data_V_3_reg_309_reg[0]\(4 downto 0),
      \axi_data_V_3_reg_309_reg[0]_0\ => \axi_data_V_3_reg_309_reg[0]_0\,
      \axi_data_V_3_reg_309_reg[23]\(23 downto 0) => \axi_data_V_3_reg_309_reg[23]\(23 downto 0),
      axi_last_V_0_reg_196 => axi_last_V_0_reg_196,
      \axi_last_V_2_reg_272_reg[0]\ => \axi_last_V_2_reg_272_reg[0]\,
      \axi_last_V_2_reg_272_reg[0]_0\ => \axi_last_V_2_reg_272_reg[0]_0\,
      \eol_0_reg_260_reg[0]\ => \eol_0_reg_260_reg[0]\,
      \eol_reg_227_reg[0]\ => \eol_reg_227_reg[0]\,
      icmp_ln73_fu_362_p2 => icmp_ln73_fu_362_p2,
      \icmp_ln73_reg_451_reg[0]\ => \icmp_ln73_reg_451_reg[0]\,
      \icmp_ln73_reg_451_reg[0]_0\ => \icmp_ln73_reg_451_reg[0]_0\,
      \icmp_ln73_reg_451_reg[0]_1\ => \icmp_ln73_reg_451_reg[0]_1\,
      \icmp_ln73_reg_451_reg[0]_2\ => \icmp_ln73_reg_451_reg[0]_2\,
      \icmp_ln73_reg_451_reg[0]_3\ => \icmp_ln73_reg_451_reg[0]_3\,
      \icmp_ln73_reg_451_reg[0]_4\ => \icmp_ln73_reg_451_reg[0]_4\,
      \ireg_reg[32]\(0) => ireg01_out,
      \ireg_reg[32]_0\(0) => p_0_in,
      \odata_reg[0]_0\(0) => \odata_reg[0]\(0),
      \odata_reg[0]_1\(0) => \odata_reg[0]_0\(0),
      \odata_reg[15]_0\(7 downto 0) => \odata_reg[15]\(7 downto 0),
      \odata_reg[1]_0\(0) => \odata_reg[1]\(0),
      \odata_reg[1]_1\(0) => \odata_reg[1]_0\(0),
      \odata_reg[23]_0\(23 downto 0) => \odata_reg[23]\(23 downto 0),
      \odata_reg[23]_1\(7 downto 0) => \odata_reg[23]_0\(7 downto 0),
      \odata_reg[32]_0\(24 downto 0) => \odata_reg[32]\(24 downto 0),
      \odata_reg[32]_1\(0) => \odata_reg[32]_0\(0),
      \odata_reg[32]_2\(24) => ibuf_inst_n_3,
      \odata_reg[32]_2\(23) => ibuf_inst_n_4,
      \odata_reg[32]_2\(22) => ibuf_inst_n_5,
      \odata_reg[32]_2\(21) => ibuf_inst_n_6,
      \odata_reg[32]_2\(20) => ibuf_inst_n_7,
      \odata_reg[32]_2\(19) => ibuf_inst_n_8,
      \odata_reg[32]_2\(18) => ibuf_inst_n_9,
      \odata_reg[32]_2\(17) => ibuf_inst_n_10,
      \odata_reg[32]_2\(16) => ibuf_inst_n_11,
      \odata_reg[32]_2\(15) => ibuf_inst_n_12,
      \odata_reg[32]_2\(14) => ibuf_inst_n_13,
      \odata_reg[32]_2\(13) => ibuf_inst_n_14,
      \odata_reg[32]_2\(12) => ibuf_inst_n_15,
      \odata_reg[32]_2\(11) => ibuf_inst_n_16,
      \odata_reg[32]_2\(10) => ibuf_inst_n_17,
      \odata_reg[32]_2\(9) => ibuf_inst_n_18,
      \odata_reg[32]_2\(8) => ibuf_inst_n_19,
      \odata_reg[32]_2\(7) => ibuf_inst_n_20,
      \odata_reg[32]_2\(6) => ibuf_inst_n_21,
      \odata_reg[32]_2\(5) => ibuf_inst_n_22,
      \odata_reg[32]_2\(4) => ibuf_inst_n_23,
      \odata_reg[32]_2\(3) => ibuf_inst_n_24,
      \odata_reg[32]_2\(2) => ibuf_inst_n_25,
      \odata_reg[32]_2\(1) => ibuf_inst_n_26,
      \odata_reg[32]_2\(0) => ibuf_inst_n_27,
      \odata_reg[7]_0\(7 downto 0) => \odata_reg[7]\(7 downto 0),
      p_1_in3_in => p_1_in3_in,
      \p_Val2_s_reg_285_reg[23]\ => \p_Val2_s_reg_285_reg[23]\,
      \p_Val2_s_reg_285_reg[23]_0\ => \p_Val2_s_reg_285_reg[23]_0\,
      sof_1_fu_146 => sof_1_fu_146,
      \tmp_1_reg_474_reg[7]\ => \tmp_1_reg_474_reg[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_regslice_both__parameterized0\ is
  port (
    video_dst_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_regslice_both__parameterized0\ : entity is "regslice_both";
end \cam_hls_preprocess_0_0_regslice_both__parameterized0\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_regslice_both__parameterized0\ is
  signal cdata : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal obuf_inst_n_1 : STD_LOGIC;
  signal obuf_inst_n_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\cam_hls_preprocess_0_0_ibuf__parameterized0\
     port map (
      D(1 downto 0) => cdata(4 downto 3),
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_1,
      ap_clk => ap_clk,
      \ireg_reg[3]_0\(0) => obuf_inst_n_2,
      \ireg_reg[4]_0\(0) => D(0),
      video_dst_TREADY => video_dst_TREADY
    );
obuf_inst: entity work.\cam_hls_preprocess_0_0_obuf__parameterized0\
     port map (
      D(1 downto 0) => cdata(4 downto 3),
      Q(1) => obuf_inst_n_2,
      Q(0) => video_dst_TKEEP(0),
      SR(0) => obuf_inst_n_1,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[4]\(0) => p_0_in,
      \odata_reg[4]_0\(0) => SR(0),
      video_dst_TREADY => video_dst_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_regslice_both__parameterized1\ is
  port (
    video_dst_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_regslice_both__parameterized1\ : entity is "regslice_both";
end \cam_hls_preprocess_0_0_regslice_both__parameterized1\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_regslice_both__parameterized1\ is
  signal cdata : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal obuf_inst_n_1 : STD_LOGIC;
  signal obuf_inst_n_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\cam_hls_preprocess_0_0_ibuf__parameterized1_20\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_1,
      ap_clk => ap_clk,
      \ireg_reg[0]_0\(0) => obuf_inst_n_2,
      \ireg_reg[1]_0\(1 downto 0) => D(1 downto 0),
      video_dst_TREADY => video_dst_TREADY
    );
obuf_inst: entity work.\cam_hls_preprocess_0_0_obuf__parameterized1_21\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      Q(1) => obuf_inst_n_2,
      Q(0) => video_dst_TLAST(0),
      SR(0) => obuf_inst_n_1,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[1]\(0) => p_0_in,
      \odata_reg[1]_0\(0) => SR(0),
      video_dst_TREADY => video_dst_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_regslice_both__parameterized1_19\ is
  port (
    video_dst_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_regslice_both__parameterized1_19\ : entity is "regslice_both";
end \cam_hls_preprocess_0_0_regslice_both__parameterized1_19\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_regslice_both__parameterized1_19\ is
  signal cdata : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal obuf_inst_n_1 : STD_LOGIC;
  signal obuf_inst_n_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
ibuf_inst: entity work.\cam_hls_preprocess_0_0_ibuf__parameterized1\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_1,
      ap_clk => ap_clk,
      \ireg_reg[0]_0\(0) => obuf_inst_n_2,
      \ireg_reg[1]_0\(1 downto 0) => D(1 downto 0),
      video_dst_TREADY => video_dst_TREADY
    );
obuf_inst: entity work.\cam_hls_preprocess_0_0_obuf__parameterized1\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      Q(1) => obuf_inst_n_2,
      Q(0) => video_dst_TUSER(0),
      SR(0) => obuf_inst_n_1,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[1]\(0) => p_0_in,
      \odata_reg[1]_0\(0) => SR(0),
      video_dst_TREADY => video_dst_TREADY
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_regslice_both__parameterized1_23\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \icmp_ln73_reg_451_reg[0]\ : out STD_LOGIC;
    \eol_0_reg_260_reg[0]\ : out STD_LOGIC;
    icmp_ln73_fu_362_p2 : out STD_LOGIC;
    \t_V_2_reg_249_reg[9]\ : out STD_LOGIC;
    \t_V_2_reg_249_reg[7]\ : out STD_LOGIC;
    \t_V_2_reg_249_reg[4]\ : out STD_LOGIC;
    \eol_0_reg_260_reg[0]_0\ : out STD_LOGIC;
    \eol_reg_227_reg[0]\ : out STD_LOGIC;
    \odata_reg[0]\ : out STD_LOGIC;
    \ireg_reg[1]\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \tmp_1_reg_474_reg[7]\ : in STD_LOGIC;
    \tmp_1_reg_474_reg[7]_0\ : in STD_LOGIC;
    src_img_data_stream_2_full_n : in STD_LOGIC;
    src_img_data_stream_3_full_n : in STD_LOGIC;
    src_img_data_stream_1_full_n : in STD_LOGIC;
    src_img_data_stream_s_full_n : in STD_LOGIC;
    \eol_2_reg_321_reg[0]\ : in STD_LOGIC;
    \axi_last_V_3_reg_297_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sof_1_fu_146 : in STD_LOGIC;
    \axi_last_V_2_reg_272_reg[0]\ : in STD_LOGIC;
    \icmp_ln73_reg_451_reg[0]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    eol_reg_227 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_last_V_2_reg_272_reg[0]_0\ : in STD_LOGIC;
    \axi_last_V_2_reg_272_reg[0]_1\ : in STD_LOGIC;
    \axi_last_V_2_reg_272_reg[0]_2\ : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_regslice_both__parameterized1_23\ : entity is "regslice_both";
end \cam_hls_preprocess_0_0_regslice_both__parameterized1_23\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_regslice_both__parameterized1_23\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cdata : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal obuf_inst_n_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
ibuf_inst: entity work.\cam_hls_preprocess_0_0_ibuf__parameterized1_27\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_1,
      ap_clk => ap_clk,
      \eol_0_reg_260_reg[0]\ => \eol_0_reg_260_reg[0]\,
      icmp_ln73_fu_362_p2 => icmp_ln73_fu_362_p2,
      \icmp_ln73_reg_451_reg[0]\ => \icmp_ln73_reg_451_reg[0]\,
      \icmp_ln73_reg_451_reg[0]_0\(10 downto 0) => \icmp_ln73_reg_451_reg[0]_0\(10 downto 0),
      \ireg_reg[0]_0\(0) => \^q\(1),
      \ireg_reg[0]_1\ => \ireg_reg[1]\,
      \ireg_reg[1]_0\(1 downto 0) => D(1 downto 0),
      sof_1_fu_146 => sof_1_fu_146,
      src_img_data_stream_1_full_n => src_img_data_stream_1_full_n,
      src_img_data_stream_2_full_n => src_img_data_stream_2_full_n,
      src_img_data_stream_3_full_n => src_img_data_stream_3_full_n,
      src_img_data_stream_s_full_n => src_img_data_stream_s_full_n,
      \t_V_2_reg_249_reg[4]\ => \t_V_2_reg_249_reg[4]\,
      \t_V_2_reg_249_reg[7]\ => \t_V_2_reg_249_reg[7]\,
      \t_V_2_reg_249_reg[9]\ => \t_V_2_reg_249_reg[9]\,
      \tmp_1_reg_474_reg[7]\ => \tmp_1_reg_474_reg[7]\,
      \tmp_1_reg_474_reg[7]_0\ => \tmp_1_reg_474_reg[7]_0\,
      \tmp_1_reg_474_reg[7]_1\ => \eol_2_reg_321_reg[0]\,
      \tmp_1_reg_474_reg[7]_2\(0) => \axi_last_V_3_reg_297_reg[0]\(0),
      \tmp_1_reg_474_reg[7]_3\ => \axi_last_V_2_reg_272_reg[0]\
    );
obuf_inst: entity work.\cam_hls_preprocess_0_0_obuf__parameterized1_28\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      E(0) => E(0),
      Q(1 downto 0) => \^q\(1 downto 0),
      SR(0) => obuf_inst_n_1,
      SS(0) => SS(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \axi_last_V_2_reg_272_reg[0]\ => \axi_last_V_2_reg_272_reg[0]_0\,
      \axi_last_V_2_reg_272_reg[0]_0\ => \axi_last_V_2_reg_272_reg[0]_1\,
      \axi_last_V_2_reg_272_reg[0]_1\ => \axi_last_V_2_reg_272_reg[0]_2\,
      \axi_last_V_2_reg_272_reg[0]_2\ => \axi_last_V_2_reg_272_reg[0]\,
      \axi_last_V_3_reg_297_reg[0]\(0) => \axi_last_V_3_reg_297_reg[0]\(1),
      \eol_0_reg_260_reg[0]\ => \eol_0_reg_260_reg[0]_0\,
      \eol_2_reg_321_reg[0]\ => \eol_2_reg_321_reg[0]\,
      eol_reg_227 => eol_reg_227,
      \eol_reg_227_reg[0]\ => \eol_reg_227_reg[0]\,
      \ireg_reg[1]\ => \ireg_reg[1]\,
      \ireg_reg[1]_0\(0) => p_0_in,
      \odata_reg[0]_0\ => \odata_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \cam_hls_preprocess_0_0_regslice_both__parameterized1_24\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ireg_reg[1]\ : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    \ap_CS_fsm_reg[1]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ireg_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \cam_hls_preprocess_0_0_regslice_both__parameterized1_24\ : entity is "regslice_both";
end \cam_hls_preprocess_0_0_regslice_both__parameterized1_24\;

architecture STRUCTURE of \cam_hls_preprocess_0_0_regslice_both__parameterized1_24\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cdata : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal obuf_inst_n_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
ibuf_inst: entity work.\cam_hls_preprocess_0_0_ibuf__parameterized1_25\
     port map (
      D(1 downto 0) => cdata(1 downto 0),
      Q(0) => p_0_in,
      SR(0) => obuf_inst_n_1,
      ap_clk => ap_clk,
      \ireg_reg[0]_0\(0) => \^q\(0),
      \ireg_reg[0]_1\ => \ireg_reg[1]\,
      \ireg_reg[1]_0\(1 downto 0) => \ireg_reg[1]_0\(1 downto 0)
    );
obuf_inst: entity work.\cam_hls_preprocess_0_0_obuf__parameterized1_26\
     port map (
      D(1 downto 0) => D(1 downto 0),
      E(0) => E(0),
      Q(0) => \^q\(0),
      SR(0) => obuf_inst_n_1,
      SS(0) => SS(0),
      \ap_CS_fsm_reg[1]\ => \ap_CS_fsm_reg[1]\,
      \ap_CS_fsm_reg[2]\(1 downto 0) => \ap_CS_fsm_reg[2]\(1 downto 0),
      \ap_CS_fsm_reg[2]_0\(0) => \ap_CS_fsm_reg[2]_0\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[1]\ => \ireg_reg[1]\,
      \ireg_reg[1]_0\(0) => p_0_in,
      \odata_reg[1]_0\(1 downto 0) => cdata(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_AXIvideo2Mat is
  port (
    start_once_reg : out STD_LOGIC;
    AXIvideo2Mat_U0_img_data_stream_3_V_write : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    AXIvideo2Mat_U0_ap_ready : out STD_LOGIC;
    video_src_TREADY : out STD_LOGIC;
    \tmp_reg_464_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \tmp_9_reg_469_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \tmp_1_reg_474_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_rst_n : in STD_LOGIC;
    start_for_Downsample_U0_full_n : in STD_LOGIC;
    AXIvideo2Mat_U0_ap_start : in STD_LOGIC;
    src_img_data_stream_2_full_n : in STD_LOGIC;
    src_img_data_stream_3_full_n : in STD_LOGIC;
    src_img_data_stream_1_full_n : in STD_LOGIC;
    src_img_data_stream_s_full_n : in STD_LOGIC;
    video_src_TVALID : in STD_LOGIC;
    video_src_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    video_src_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_src_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_AXIvideo2Mat : entity is "AXIvideo2Mat";
end cam_hls_preprocess_0_0_AXIvideo2Mat;

architecture STRUCTURE of cam_hls_preprocess_0_0_AXIvideo2Mat is
  signal \^axivideo2mat_u0_ap_ready\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ack_out2 : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2__0_n_1\ : STD_LOGIC;
  signal ap_CS_fsm_pp1_stage0 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ap_condition_169 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter0_i_1_n_1 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter1_reg_n_1 : STD_LOGIC;
  signal axi_data_V_0_reg_206 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \axi_data_V_0_reg_206[0]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[10]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[11]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[12]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[13]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[14]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[15]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[16]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[17]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[18]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[19]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[1]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[20]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[21]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[22]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[23]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[2]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[3]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[4]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[5]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[6]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[7]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[8]_i_1_n_1\ : STD_LOGIC;
  signal \axi_data_V_0_reg_206[9]_i_1_n_1\ : STD_LOGIC;
  signal axi_data_V_1_reg_238 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axi_data_V_3_reg_309 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axi_last_V_0_reg_196 : STD_LOGIC;
  signal \axi_last_V_0_reg_196[0]_i_1_n_1\ : STD_LOGIC;
  signal \axi_last_V_2_reg_272_reg_n_1_[0]\ : STD_LOGIC;
  signal axi_last_V_3_reg_297 : STD_LOGIC;
  signal \eol_0_reg_260_reg_n_1_[0]\ : STD_LOGIC;
  signal eol_2_reg_321 : STD_LOGIC;
  signal \eol_2_reg_321_reg_n_1_[0]\ : STD_LOGIC;
  signal eol_reg_227 : STD_LOGIC;
  signal i_V_fu_356_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal i_V_reg_446 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \i_V_reg_446[9]_i_2_n_1\ : STD_LOGIC;
  signal icmp_ln73_fu_362_p2 : STD_LOGIC;
  signal \icmp_ln73_reg_451_reg_n_1_[0]\ : STD_LOGIC;
  signal int_ap_ready_i_2_n_1 : STD_LOGIC;
  signal j_V_fu_368_p2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal p_1_in3_in : STD_LOGIC;
  signal p_Val2_s_reg_285 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \p_Val2_s_reg_285[23]_i_4_n_1\ : STD_LOGIC;
  signal \p_Val2_s_reg_285[23]_i_5_n_1\ : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_1 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_10 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_100 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_101 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_102 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_103 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_104 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_105 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_11 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_12 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_13 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_133 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_134 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_137 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_139 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_14 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_15 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_16 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_17 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_18 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_19 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_2 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_20 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_21 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_22 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_23 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_24 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_25 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_26 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_27 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_28 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_29 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_31 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_33 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_34 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_35 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_36 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_37 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_38 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_39 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_4 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_40 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_41 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_42 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_43 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_44 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_45 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_46 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_47 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_48 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_49 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_5 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_50 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_51 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_52 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_53 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_54 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_55 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_56 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_57 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_58 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_59 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_6 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_60 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_61 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_62 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_63 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_64 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_65 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_66 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_67 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_68 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_69 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_7 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_70 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_71 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_72 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_73 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_74 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_75 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_76 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_77 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_78 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_79 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_8 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_80 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_81 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_82 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_83 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_84 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_85 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_86 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_87 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_88 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_89 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_9 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_98 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_99 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_last_V_U_n_1 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_last_V_U_n_10 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_last_V_U_n_11 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_last_V_U_n_3 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_last_V_U_n_4 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_last_V_U_n_6 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_last_V_U_n_7 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_last_V_U_n_8 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_last_V_U_n_9 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_user_V_U_n_1 : STD_LOGIC;
  signal sof_1_fu_146 : STD_LOGIC;
  signal sof_1_fu_1460 : STD_LOGIC;
  signal \^start_once_reg\ : STD_LOGIC;
  signal start_once_reg_i_1_n_1 : STD_LOGIC;
  signal t_V_2_reg_249 : STD_LOGIC;
  signal \t_V_2_reg_249[10]_i_4_n_1\ : STD_LOGIC;
  signal t_V_2_reg_249_reg : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal t_V_reg_216 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal tmp_1_reg_4740 : STD_LOGIC;
  signal tmp_data_V_reg_422 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal tmp_last_V_reg_430 : STD_LOGIC;
  signal video_src_TLAST_int : STD_LOGIC;
  signal video_src_TVALID_int : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_1\ : label is "soft_lutpair59";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[10]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[11]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[12]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[13]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[14]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[15]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[16]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[17]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[18]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[19]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[20]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[21]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[22]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[23]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[4]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[5]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[6]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[8]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \axi_data_V_0_reg_206[9]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \axi_last_V_0_reg_196[0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \i_V_reg_446[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \i_V_reg_446[2]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \i_V_reg_446[3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \i_V_reg_446[4]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \i_V_reg_446[6]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \i_V_reg_446[7]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \i_V_reg_446[8]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \i_V_reg_446[9]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \t_V_2_reg_249[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \t_V_2_reg_249[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \t_V_2_reg_249[3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \t_V_2_reg_249[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \t_V_2_reg_249[6]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \t_V_2_reg_249[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \t_V_2_reg_249[8]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \t_V_2_reg_249[9]_i_1\ : label is "soft_lutpair51";
begin
  AXIvideo2Mat_U0_ap_ready <= \^axivideo2mat_u0_ap_ready\;
  Q(0) <= \^q\(0);
  start_once_reg <= \^start_once_reg\;
\ap_CS_fsm[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1F00"
    )
        port map (
      I0 => \^start_once_reg\,
      I1 => start_for_Downsample_U0_full_n,
      I2 => AXIvideo2Mat_U0_ap_start,
      I3 => \^q\(0),
      I4 => \^axivideo2mat_u0_ap_ready\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^start_once_reg\,
      I1 => start_for_Downsample_U0_full_n,
      I2 => AXIvideo2Mat_U0_ap_start,
      O => \ap_CS_fsm[1]_i_2__0_n_1\
    );
\ap_CS_fsm[3]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => ap_CS_fsm_state9,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFF0F0"
    )
        port map (
      I0 => regslice_both_AXI_video_strm_V_last_V_U_n_3,
      I1 => icmp_ln73_fu_362_p2,
      I2 => p_1_in3_in,
      I3 => ap_enable_reg_pp1_iter0,
      I4 => ap_CS_fsm_pp1_stage0,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => t_V_reg_216(1),
      I2 => t_V_reg_216(0),
      I3 => t_V_reg_216(3),
      I4 => t_V_reg_216(2),
      I5 => int_ap_ready_i_2_n_1,
      O => p_1_in3_in
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => regslice_both_AXI_video_strm_V_last_V_U_n_3,
      I1 => icmp_ln73_fu_362_p2,
      I2 => ap_enable_reg_pp1_iter0,
      I3 => ap_CS_fsm_pp1_stage0,
      O => ap_NS_fsm(5)
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \eol_2_reg_321_reg_n_1_[0]\,
      I1 => ap_CS_fsm_state8,
      I2 => ap_CS_fsm_state7,
      O => ap_NS_fsm(6)
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \eol_2_reg_321_reg_n_1_[0]\,
      I1 => ap_CS_fsm_state8,
      O => ap_NS_fsm(7)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \^q\(0),
      S => SS(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => SS(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => SS(0)
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => SS(0)
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_pp1_stage0,
      R => SS(0)
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state7,
      R => SS(0)
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state8,
      R => SS(0)
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => ap_CS_fsm_state9,
      R => SS(0)
    );
ap_enable_reg_pp1_iter0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B000F0F0F000"
    )
        port map (
      I0 => regslice_both_AXI_video_strm_V_last_V_U_n_3,
      I1 => icmp_ln73_fu_362_p2,
      I2 => ap_rst_n,
      I3 => p_1_in3_in,
      I4 => ap_enable_reg_pp1_iter0,
      I5 => ap_CS_fsm_pp1_stage0,
      O => ap_enable_reg_pp1_iter0_i_1_n_1
    );
ap_enable_reg_pp1_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp1_iter0_i_1_n_1,
      Q => ap_enable_reg_pp1_iter0,
      R => '0'
    );
ap_enable_reg_pp1_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_1,
      Q => ap_enable_reg_pp1_iter1_reg_n_1,
      R => '0'
    );
\axi_data_V_0_reg_206[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(0),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(0),
      O => \axi_data_V_0_reg_206[0]_i_1_n_1\
    );
\axi_data_V_0_reg_206[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(10),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(10),
      O => \axi_data_V_0_reg_206[10]_i_1_n_1\
    );
\axi_data_V_0_reg_206[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(11),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(11),
      O => \axi_data_V_0_reg_206[11]_i_1_n_1\
    );
\axi_data_V_0_reg_206[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(12),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(12),
      O => \axi_data_V_0_reg_206[12]_i_1_n_1\
    );
\axi_data_V_0_reg_206[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(13),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(13),
      O => \axi_data_V_0_reg_206[13]_i_1_n_1\
    );
\axi_data_V_0_reg_206[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(14),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(14),
      O => \axi_data_V_0_reg_206[14]_i_1_n_1\
    );
\axi_data_V_0_reg_206[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(15),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(15),
      O => \axi_data_V_0_reg_206[15]_i_1_n_1\
    );
\axi_data_V_0_reg_206[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(16),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(16),
      O => \axi_data_V_0_reg_206[16]_i_1_n_1\
    );
\axi_data_V_0_reg_206[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(17),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(17),
      O => \axi_data_V_0_reg_206[17]_i_1_n_1\
    );
\axi_data_V_0_reg_206[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(18),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(18),
      O => \axi_data_V_0_reg_206[18]_i_1_n_1\
    );
\axi_data_V_0_reg_206[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(19),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(19),
      O => \axi_data_V_0_reg_206[19]_i_1_n_1\
    );
\axi_data_V_0_reg_206[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(1),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(1),
      O => \axi_data_V_0_reg_206[1]_i_1_n_1\
    );
\axi_data_V_0_reg_206[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(20),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(20),
      O => \axi_data_V_0_reg_206[20]_i_1_n_1\
    );
\axi_data_V_0_reg_206[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(21),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(21),
      O => \axi_data_V_0_reg_206[21]_i_1_n_1\
    );
\axi_data_V_0_reg_206[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(22),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(22),
      O => \axi_data_V_0_reg_206[22]_i_1_n_1\
    );
\axi_data_V_0_reg_206[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(23),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(23),
      O => \axi_data_V_0_reg_206[23]_i_1_n_1\
    );
\axi_data_V_0_reg_206[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(2),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(2),
      O => \axi_data_V_0_reg_206[2]_i_1_n_1\
    );
\axi_data_V_0_reg_206[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(3),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(3),
      O => \axi_data_V_0_reg_206[3]_i_1_n_1\
    );
\axi_data_V_0_reg_206[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(4),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(4),
      O => \axi_data_V_0_reg_206[4]_i_1_n_1\
    );
\axi_data_V_0_reg_206[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(5),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(5),
      O => \axi_data_V_0_reg_206[5]_i_1_n_1\
    );
\axi_data_V_0_reg_206[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(6),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(6),
      O => \axi_data_V_0_reg_206[6]_i_1_n_1\
    );
\axi_data_V_0_reg_206[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(7),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(7),
      O => \axi_data_V_0_reg_206[7]_i_1_n_1\
    );
\axi_data_V_0_reg_206[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(8),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(8),
      O => \axi_data_V_0_reg_206[8]_i_1_n_1\
    );
\axi_data_V_0_reg_206[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_data_V_reg_422(9),
      I1 => ap_CS_fsm_state3,
      I2 => axi_data_V_3_reg_309(9),
      O => \axi_data_V_0_reg_206[9]_i_1_n_1\
    );
\axi_data_V_0_reg_206_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[0]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(0),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[10]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(10),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[11]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(11),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[12]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(12),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[13]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(13),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[14]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(14),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[15]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(15),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[16]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(16),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[17]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(17),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[18]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(18),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[19]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(19),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[1]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(1),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[20]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(20),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[21]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(21),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[22]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(22),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[23]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(23),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[2]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(2),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[3]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(3),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[4]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(4),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[5]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(5),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[6]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(6),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[7]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(7),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[8]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(8),
      R => '0'
    );
\axi_data_V_0_reg_206_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_data_V_0_reg_206[9]_i_1_n_1\,
      Q => axi_data_V_0_reg_206(9),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_29,
      Q => axi_data_V_1_reg_238(0),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_19,
      Q => axi_data_V_1_reg_238(10),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_18,
      Q => axi_data_V_1_reg_238(11),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_17,
      Q => axi_data_V_1_reg_238(12),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_16,
      Q => axi_data_V_1_reg_238(13),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_15,
      Q => axi_data_V_1_reg_238(14),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_14,
      Q => axi_data_V_1_reg_238(15),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_13,
      Q => axi_data_V_1_reg_238(16),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_12,
      Q => axi_data_V_1_reg_238(17),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_11,
      Q => axi_data_V_1_reg_238(18),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_10,
      Q => axi_data_V_1_reg_238(19),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_28,
      Q => axi_data_V_1_reg_238(1),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_9,
      Q => axi_data_V_1_reg_238(20),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_8,
      Q => axi_data_V_1_reg_238(21),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_7,
      Q => axi_data_V_1_reg_238(22),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      Q => axi_data_V_1_reg_238(23),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_27,
      Q => axi_data_V_1_reg_238(2),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_26,
      Q => axi_data_V_1_reg_238(3),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_25,
      Q => axi_data_V_1_reg_238(4),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_24,
      Q => axi_data_V_1_reg_238(5),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_23,
      Q => axi_data_V_1_reg_238(6),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_22,
      Q => axi_data_V_1_reg_238(7),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_21,
      Q => axi_data_V_1_reg_238(8),
      R => '0'
    );
\axi_data_V_1_reg_238_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_20,
      Q => axi_data_V_1_reg_238(9),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(0),
      Q => axi_data_V_3_reg_309(0),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(10),
      Q => axi_data_V_3_reg_309(10),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(11),
      Q => axi_data_V_3_reg_309(11),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(12),
      Q => axi_data_V_3_reg_309(12),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(13),
      Q => axi_data_V_3_reg_309(13),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(14),
      Q => axi_data_V_3_reg_309(14),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(15),
      Q => axi_data_V_3_reg_309(15),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(16),
      Q => axi_data_V_3_reg_309(16),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(17),
      Q => axi_data_V_3_reg_309(17),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(18),
      Q => axi_data_V_3_reg_309(18),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(19),
      Q => axi_data_V_3_reg_309(19),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(1),
      Q => axi_data_V_3_reg_309(1),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(20),
      Q => axi_data_V_3_reg_309(20),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(21),
      Q => axi_data_V_3_reg_309(21),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(22),
      Q => axi_data_V_3_reg_309(22),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(23),
      Q => axi_data_V_3_reg_309(23),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(2),
      Q => axi_data_V_3_reg_309(2),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(3),
      Q => axi_data_V_3_reg_309(3),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(4),
      Q => axi_data_V_3_reg_309(4),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(5),
      Q => axi_data_V_3_reg_309(5),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(6),
      Q => axi_data_V_3_reg_309(6),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(7),
      Q => axi_data_V_3_reg_309(7),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(8),
      Q => axi_data_V_3_reg_309(8),
      R => '0'
    );
\axi_data_V_3_reg_309_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => p_1_in(9),
      Q => axi_data_V_3_reg_309(9),
      R => '0'
    );
\axi_last_V_0_reg_196[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_last_V_reg_430,
      I1 => ap_CS_fsm_state3,
      I2 => axi_last_V_3_reg_297,
      O => \axi_last_V_0_reg_196[0]_i_1_n_1\
    );
\axi_last_V_0_reg_196_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(3),
      D => \axi_last_V_0_reg_196[0]_i_1_n_1\,
      Q => axi_last_V_0_reg_196,
      R => '0'
    );
\axi_last_V_2_reg_272_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_last_V_U_n_11,
      Q => \axi_last_V_2_reg_272_reg_n_1_[0]\,
      R => '0'
    );
\axi_last_V_3_reg_297_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => regslice_both_AXI_video_strm_V_last_V_U_n_10,
      Q => axi_last_V_3_reg_297,
      R => '0'
    );
\eol_0_reg_260_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_2,
      Q => \eol_0_reg_260_reg_n_1_[0]\,
      R => '0'
    );
\eol_2_reg_321_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => eol_2_reg_321,
      D => regslice_both_AXI_video_strm_V_last_V_U_n_9,
      Q => \eol_2_reg_321_reg_n_1_[0]\,
      R => '0'
    );
\eol_reg_227_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_5,
      Q => eol_reg_227,
      R => '0'
    );
\i_V_reg_446[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_reg_216(0),
      O => i_V_fu_356_p2(0)
    );
\i_V_reg_446[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => t_V_reg_216(0),
      I1 => t_V_reg_216(1),
      O => i_V_fu_356_p2(1)
    );
\i_V_reg_446[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => t_V_reg_216(2),
      I1 => t_V_reg_216(1),
      I2 => t_V_reg_216(0),
      O => i_V_fu_356_p2(2)
    );
\i_V_reg_446[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => t_V_reg_216(3),
      I1 => t_V_reg_216(0),
      I2 => t_V_reg_216(1),
      I3 => t_V_reg_216(2),
      O => i_V_fu_356_p2(3)
    );
\i_V_reg_446[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => t_V_reg_216(4),
      I1 => t_V_reg_216(2),
      I2 => t_V_reg_216(1),
      I3 => t_V_reg_216(0),
      I4 => t_V_reg_216(3),
      O => i_V_fu_356_p2(4)
    );
\i_V_reg_446[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => t_V_reg_216(5),
      I1 => t_V_reg_216(3),
      I2 => t_V_reg_216(0),
      I3 => t_V_reg_216(1),
      I4 => t_V_reg_216(2),
      I5 => t_V_reg_216(4),
      O => i_V_fu_356_p2(5)
    );
\i_V_reg_446[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => t_V_reg_216(6),
      I1 => \i_V_reg_446[9]_i_2_n_1\,
      O => i_V_fu_356_p2(6)
    );
\i_V_reg_446[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => t_V_reg_216(7),
      I1 => \i_V_reg_446[9]_i_2_n_1\,
      I2 => t_V_reg_216(6),
      O => i_V_fu_356_p2(7)
    );
\i_V_reg_446[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => t_V_reg_216(8),
      I1 => t_V_reg_216(6),
      I2 => \i_V_reg_446[9]_i_2_n_1\,
      I3 => t_V_reg_216(7),
      O => i_V_fu_356_p2(8)
    );
\i_V_reg_446[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => t_V_reg_216(9),
      I1 => t_V_reg_216(7),
      I2 => \i_V_reg_446[9]_i_2_n_1\,
      I3 => t_V_reg_216(6),
      I4 => t_V_reg_216(8),
      O => i_V_fu_356_p2(9)
    );
\i_V_reg_446[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => t_V_reg_216(5),
      I1 => t_V_reg_216(3),
      I2 => t_V_reg_216(0),
      I3 => t_V_reg_216(1),
      I4 => t_V_reg_216(2),
      I5 => t_V_reg_216(4),
      O => \i_V_reg_446[9]_i_2_n_1\
    );
\i_V_reg_446_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_356_p2(0),
      Q => i_V_reg_446(0),
      R => '0'
    );
\i_V_reg_446_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_356_p2(1),
      Q => i_V_reg_446(1),
      R => '0'
    );
\i_V_reg_446_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_356_p2(2),
      Q => i_V_reg_446(2),
      R => '0'
    );
\i_V_reg_446_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_356_p2(3),
      Q => i_V_reg_446(3),
      R => '0'
    );
\i_V_reg_446_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_356_p2(4),
      Q => i_V_reg_446(4),
      R => '0'
    );
\i_V_reg_446_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_356_p2(5),
      Q => i_V_reg_446(5),
      R => '0'
    );
\i_V_reg_446_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_356_p2(6),
      Q => i_V_reg_446(6),
      R => '0'
    );
\i_V_reg_446_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_356_p2(7),
      Q => i_V_reg_446(7),
      R => '0'
    );
\i_V_reg_446_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_356_p2(8),
      Q => i_V_reg_446(8),
      R => '0'
    );
\i_V_reg_446_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state4,
      D => i_V_fu_356_p2(9),
      Q => i_V_reg_446(9),
      R => '0'
    );
\icmp_ln73_reg_451_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_139,
      Q => \icmp_ln73_reg_451_reg_n_1_[0]\,
      R => '0'
    );
int_ap_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => t_V_reg_216(1),
      I2 => t_V_reg_216(0),
      I3 => t_V_reg_216(3),
      I4 => t_V_reg_216(2),
      I5 => int_ap_ready_i_2_n_1,
      O => \^axivideo2mat_u0_ap_ready\
    );
int_ap_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => t_V_reg_216(4),
      I1 => t_V_reg_216(5),
      I2 => t_V_reg_216(6),
      I3 => t_V_reg_216(7),
      I4 => t_V_reg_216(8),
      I5 => t_V_reg_216(9),
      O => int_ap_ready_i_2_n_1
    );
\p_Val2_s_reg_285[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0131"
    )
        port map (
      I0 => \axi_last_V_2_reg_272_reg_n_1_[0]\,
      I1 => sof_1_fu_146,
      I2 => \p_Val2_s_reg_285[23]_i_5_n_1\,
      I3 => \eol_0_reg_260_reg_n_1_[0]\,
      I4 => icmp_ln73_fu_362_p2,
      O => \p_Val2_s_reg_285[23]_i_4_n_1\
    );
\p_Val2_s_reg_285[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => ap_CS_fsm_pp1_stage0,
      I1 => ap_enable_reg_pp1_iter1_reg_n_1,
      I2 => \icmp_ln73_reg_451_reg_n_1_[0]\,
      O => \p_Val2_s_reg_285[23]_i_5_n_1\
    );
\p_Val2_s_reg_285_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_89,
      Q => p_Val2_s_reg_285(0),
      R => '0'
    );
\p_Val2_s_reg_285_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_79,
      Q => p_Val2_s_reg_285(10),
      R => '0'
    );
\p_Val2_s_reg_285_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_78,
      Q => p_Val2_s_reg_285(11),
      R => '0'
    );
\p_Val2_s_reg_285_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_77,
      Q => p_Val2_s_reg_285(12),
      R => '0'
    );
\p_Val2_s_reg_285_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_76,
      Q => p_Val2_s_reg_285(13),
      R => '0'
    );
\p_Val2_s_reg_285_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_75,
      Q => p_Val2_s_reg_285(14),
      R => '0'
    );
\p_Val2_s_reg_285_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_74,
      Q => p_Val2_s_reg_285(15),
      R => '0'
    );
\p_Val2_s_reg_285_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_73,
      Q => p_Val2_s_reg_285(16),
      R => '0'
    );
\p_Val2_s_reg_285_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_72,
      Q => p_Val2_s_reg_285(17),
      R => '0'
    );
\p_Val2_s_reg_285_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_71,
      Q => p_Val2_s_reg_285(18),
      R => '0'
    );
\p_Val2_s_reg_285_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_70,
      Q => p_Val2_s_reg_285(19),
      R => '0'
    );
\p_Val2_s_reg_285_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_88,
      Q => p_Val2_s_reg_285(1),
      R => '0'
    );
\p_Val2_s_reg_285_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_69,
      Q => p_Val2_s_reg_285(20),
      R => '0'
    );
\p_Val2_s_reg_285_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_68,
      Q => p_Val2_s_reg_285(21),
      R => '0'
    );
\p_Val2_s_reg_285_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_67,
      Q => p_Val2_s_reg_285(22),
      R => '0'
    );
\p_Val2_s_reg_285_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_66,
      Q => p_Val2_s_reg_285(23),
      R => '0'
    );
\p_Val2_s_reg_285_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_87,
      Q => p_Val2_s_reg_285(2),
      R => '0'
    );
\p_Val2_s_reg_285_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_86,
      Q => p_Val2_s_reg_285(3),
      R => '0'
    );
\p_Val2_s_reg_285_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_85,
      Q => p_Val2_s_reg_285(4),
      R => '0'
    );
\p_Val2_s_reg_285_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_84,
      Q => p_Val2_s_reg_285(5),
      R => '0'
    );
\p_Val2_s_reg_285_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_83,
      Q => p_Val2_s_reg_285(6),
      R => '0'
    );
\p_Val2_s_reg_285_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_82,
      Q => p_Val2_s_reg_285(7),
      R => '0'
    );
\p_Val2_s_reg_285_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_81,
      Q => p_Val2_s_reg_285(8),
      R => '0'
    );
\p_Val2_s_reg_285_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_condition_169,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_80,
      Q => p_Val2_s_reg_285(9),
      R => '0'
    );
regslice_both_AXI_video_strm_V_data_V_U: entity work.cam_hls_preprocess_0_0_regslice_both_22
     port map (
      D(23) => regslice_both_AXI_video_strm_V_data_V_U_n_6,
      D(22) => regslice_both_AXI_video_strm_V_data_V_U_n_7,
      D(21) => regslice_both_AXI_video_strm_V_data_V_U_n_8,
      D(20) => regslice_both_AXI_video_strm_V_data_V_U_n_9,
      D(19) => regslice_both_AXI_video_strm_V_data_V_U_n_10,
      D(18) => regslice_both_AXI_video_strm_V_data_V_U_n_11,
      D(17) => regslice_both_AXI_video_strm_V_data_V_U_n_12,
      D(16) => regslice_both_AXI_video_strm_V_data_V_U_n_13,
      D(15) => regslice_both_AXI_video_strm_V_data_V_U_n_14,
      D(14) => regslice_both_AXI_video_strm_V_data_V_U_n_15,
      D(13) => regslice_both_AXI_video_strm_V_data_V_U_n_16,
      D(12) => regslice_both_AXI_video_strm_V_data_V_U_n_17,
      D(11) => regslice_both_AXI_video_strm_V_data_V_U_n_18,
      D(10) => regslice_both_AXI_video_strm_V_data_V_U_n_19,
      D(9) => regslice_both_AXI_video_strm_V_data_V_U_n_20,
      D(8) => regslice_both_AXI_video_strm_V_data_V_U_n_21,
      D(7) => regslice_both_AXI_video_strm_V_data_V_U_n_22,
      D(6) => regslice_both_AXI_video_strm_V_data_V_U_n_23,
      D(5) => regslice_both_AXI_video_strm_V_data_V_U_n_24,
      D(4) => regslice_both_AXI_video_strm_V_data_V_U_n_25,
      D(3) => regslice_both_AXI_video_strm_V_data_V_U_n_26,
      D(2) => regslice_both_AXI_video_strm_V_data_V_U_n_27,
      D(1) => regslice_both_AXI_video_strm_V_data_V_U_n_28,
      D(0) => regslice_both_AXI_video_strm_V_data_V_U_n_29,
      E(0) => regslice_both_AXI_video_strm_V_data_V_U_n_4,
      Q(23 downto 0) => p_Val2_s_reg_285(23 downto 0),
      SR(0) => t_V_2_reg_249,
      \SRL_SIG_reg[1][0]\ => ap_enable_reg_pp1_iter1_reg_n_1,
      SS(0) => SS(0),
      \ap_CS_fsm_reg[4]\(0) => ap_condition_169,
      \ap_CS_fsm_reg[4]_0\ => regslice_both_AXI_video_strm_V_data_V_U_n_31,
      \ap_CS_fsm_reg[4]_1\ => regslice_both_AXI_video_strm_V_data_V_U_n_57,
      \ap_CS_fsm_reg[4]_2\(0) => tmp_1_reg_4740,
      \ap_CS_fsm_reg[4]_3\(0) => sof_1_fu_1460,
      \ap_CS_fsm_reg[4]_4\ => regslice_both_AXI_video_strm_V_data_V_U_n_137,
      \ap_CS_fsm_reg[4]_5\ => regslice_both_AXI_video_strm_V_data_V_U_n_139,
      \ap_CS_fsm_reg[5]\(0) => eol_2_reg_321,
      ap_clk => ap_clk,
      ap_enable_reg_pp1_iter0 => ap_enable_reg_pp1_iter0,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => regslice_both_AXI_video_strm_V_data_V_U_n_1,
      \axi_data_V_1_reg_238_reg[23]\(23 downto 0) => p_1_in(23 downto 0),
      \axi_data_V_1_reg_238_reg[23]_0\(23 downto 0) => axi_data_V_0_reg_206(23 downto 0),
      \axi_data_V_3_reg_309_reg[0]\(4) => ap_CS_fsm_state8,
      \axi_data_V_3_reg_309_reg[0]\(3) => ap_CS_fsm_state7,
      \axi_data_V_3_reg_309_reg[0]\(2) => ap_CS_fsm_pp1_stage0,
      \axi_data_V_3_reg_309_reg[0]\(1) => ap_CS_fsm_state3,
      \axi_data_V_3_reg_309_reg[0]\(0) => ap_CS_fsm_state2,
      \axi_data_V_3_reg_309_reg[0]_0\ => \eol_2_reg_321_reg_n_1_[0]\,
      \axi_data_V_3_reg_309_reg[23]\(23 downto 0) => axi_data_V_1_reg_238(23 downto 0),
      axi_last_V_0_reg_196 => axi_last_V_0_reg_196,
      \axi_last_V_2_reg_272_reg[0]\ => regslice_both_AXI_video_strm_V_data_V_U_n_2,
      \axi_last_V_2_reg_272_reg[0]_0\ => regslice_both_AXI_video_strm_V_data_V_U_n_5,
      \eol_0_reg_260_reg[0]\ => \eol_0_reg_260_reg_n_1_[0]\,
      \eol_reg_227_reg[0]\ => \axi_last_V_2_reg_272_reg_n_1_[0]\,
      icmp_ln73_fu_362_p2 => icmp_ln73_fu_362_p2,
      \icmp_ln73_reg_451_reg[0]\ => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      \icmp_ln73_reg_451_reg[0]_0\ => \icmp_ln73_reg_451_reg_n_1_[0]\,
      \icmp_ln73_reg_451_reg[0]_1\ => regslice_both_AXI_video_strm_V_last_V_U_n_7,
      \icmp_ln73_reg_451_reg[0]_2\ => regslice_both_AXI_video_strm_V_last_V_U_n_6,
      \icmp_ln73_reg_451_reg[0]_3\ => regslice_both_AXI_video_strm_V_last_V_U_n_8,
      \icmp_ln73_reg_451_reg[0]_4\ => regslice_both_AXI_video_strm_V_last_V_U_n_3,
      \ireg_reg[32]\(24) => video_src_TVALID,
      \ireg_reg[32]\(23 downto 0) => video_src_TDATA(23 downto 0),
      \odata_reg[0]\(0) => regslice_both_AXI_video_strm_V_user_V_U_n_1,
      \odata_reg[0]_0\(0) => regslice_both_AXI_video_strm_V_last_V_U_n_1,
      \odata_reg[15]\(7 downto 0) => p_0_in(7 downto 0),
      \odata_reg[1]\(0) => regslice_both_AXI_video_strm_V_data_V_U_n_133,
      \odata_reg[1]_0\(0) => regslice_both_AXI_video_strm_V_data_V_U_n_134,
      \odata_reg[23]\(23) => regslice_both_AXI_video_strm_V_data_V_U_n_66,
      \odata_reg[23]\(22) => regslice_both_AXI_video_strm_V_data_V_U_n_67,
      \odata_reg[23]\(21) => regslice_both_AXI_video_strm_V_data_V_U_n_68,
      \odata_reg[23]\(20) => regslice_both_AXI_video_strm_V_data_V_U_n_69,
      \odata_reg[23]\(19) => regslice_both_AXI_video_strm_V_data_V_U_n_70,
      \odata_reg[23]\(18) => regslice_both_AXI_video_strm_V_data_V_U_n_71,
      \odata_reg[23]\(17) => regslice_both_AXI_video_strm_V_data_V_U_n_72,
      \odata_reg[23]\(16) => regslice_both_AXI_video_strm_V_data_V_U_n_73,
      \odata_reg[23]\(15) => regslice_both_AXI_video_strm_V_data_V_U_n_74,
      \odata_reg[23]\(14) => regslice_both_AXI_video_strm_V_data_V_U_n_75,
      \odata_reg[23]\(13) => regslice_both_AXI_video_strm_V_data_V_U_n_76,
      \odata_reg[23]\(12) => regslice_both_AXI_video_strm_V_data_V_U_n_77,
      \odata_reg[23]\(11) => regslice_both_AXI_video_strm_V_data_V_U_n_78,
      \odata_reg[23]\(10) => regslice_both_AXI_video_strm_V_data_V_U_n_79,
      \odata_reg[23]\(9) => regslice_both_AXI_video_strm_V_data_V_U_n_80,
      \odata_reg[23]\(8) => regslice_both_AXI_video_strm_V_data_V_U_n_81,
      \odata_reg[23]\(7) => regslice_both_AXI_video_strm_V_data_V_U_n_82,
      \odata_reg[23]\(6) => regslice_both_AXI_video_strm_V_data_V_U_n_83,
      \odata_reg[23]\(5) => regslice_both_AXI_video_strm_V_data_V_U_n_84,
      \odata_reg[23]\(4) => regslice_both_AXI_video_strm_V_data_V_U_n_85,
      \odata_reg[23]\(3) => regslice_both_AXI_video_strm_V_data_V_U_n_86,
      \odata_reg[23]\(2) => regslice_both_AXI_video_strm_V_data_V_U_n_87,
      \odata_reg[23]\(1) => regslice_both_AXI_video_strm_V_data_V_U_n_88,
      \odata_reg[23]\(0) => regslice_both_AXI_video_strm_V_data_V_U_n_89,
      \odata_reg[23]_0\(7) => regslice_both_AXI_video_strm_V_data_V_U_n_98,
      \odata_reg[23]_0\(6) => regslice_both_AXI_video_strm_V_data_V_U_n_99,
      \odata_reg[23]_0\(5) => regslice_both_AXI_video_strm_V_data_V_U_n_100,
      \odata_reg[23]_0\(4) => regslice_both_AXI_video_strm_V_data_V_U_n_101,
      \odata_reg[23]_0\(3) => regslice_both_AXI_video_strm_V_data_V_U_n_102,
      \odata_reg[23]_0\(2) => regslice_both_AXI_video_strm_V_data_V_U_n_103,
      \odata_reg[23]_0\(1) => regslice_both_AXI_video_strm_V_data_V_U_n_104,
      \odata_reg[23]_0\(0) => regslice_both_AXI_video_strm_V_data_V_U_n_105,
      \odata_reg[32]\(24) => video_src_TVALID_int,
      \odata_reg[32]\(23) => regslice_both_AXI_video_strm_V_data_V_U_n_33,
      \odata_reg[32]\(22) => regslice_both_AXI_video_strm_V_data_V_U_n_34,
      \odata_reg[32]\(21) => regslice_both_AXI_video_strm_V_data_V_U_n_35,
      \odata_reg[32]\(20) => regslice_both_AXI_video_strm_V_data_V_U_n_36,
      \odata_reg[32]\(19) => regslice_both_AXI_video_strm_V_data_V_U_n_37,
      \odata_reg[32]\(18) => regslice_both_AXI_video_strm_V_data_V_U_n_38,
      \odata_reg[32]\(17) => regslice_both_AXI_video_strm_V_data_V_U_n_39,
      \odata_reg[32]\(16) => regslice_both_AXI_video_strm_V_data_V_U_n_40,
      \odata_reg[32]\(15) => regslice_both_AXI_video_strm_V_data_V_U_n_41,
      \odata_reg[32]\(14) => regslice_both_AXI_video_strm_V_data_V_U_n_42,
      \odata_reg[32]\(13) => regslice_both_AXI_video_strm_V_data_V_U_n_43,
      \odata_reg[32]\(12) => regslice_both_AXI_video_strm_V_data_V_U_n_44,
      \odata_reg[32]\(11) => regslice_both_AXI_video_strm_V_data_V_U_n_45,
      \odata_reg[32]\(10) => regslice_both_AXI_video_strm_V_data_V_U_n_46,
      \odata_reg[32]\(9) => regslice_both_AXI_video_strm_V_data_V_U_n_47,
      \odata_reg[32]\(8) => regslice_both_AXI_video_strm_V_data_V_U_n_48,
      \odata_reg[32]\(7) => regslice_both_AXI_video_strm_V_data_V_U_n_49,
      \odata_reg[32]\(6) => regslice_both_AXI_video_strm_V_data_V_U_n_50,
      \odata_reg[32]\(5) => regslice_both_AXI_video_strm_V_data_V_U_n_51,
      \odata_reg[32]\(4) => regslice_both_AXI_video_strm_V_data_V_U_n_52,
      \odata_reg[32]\(3) => regslice_both_AXI_video_strm_V_data_V_U_n_53,
      \odata_reg[32]\(2) => regslice_both_AXI_video_strm_V_data_V_U_n_54,
      \odata_reg[32]\(1) => regslice_both_AXI_video_strm_V_data_V_U_n_55,
      \odata_reg[32]\(0) => regslice_both_AXI_video_strm_V_data_V_U_n_56,
      \odata_reg[32]_0\(0) => ack_out2,
      \odata_reg[7]\(7) => regslice_both_AXI_video_strm_V_data_V_U_n_58,
      \odata_reg[7]\(6) => regslice_both_AXI_video_strm_V_data_V_U_n_59,
      \odata_reg[7]\(5) => regslice_both_AXI_video_strm_V_data_V_U_n_60,
      \odata_reg[7]\(4) => regslice_both_AXI_video_strm_V_data_V_U_n_61,
      \odata_reg[7]\(3) => regslice_both_AXI_video_strm_V_data_V_U_n_62,
      \odata_reg[7]\(2) => regslice_both_AXI_video_strm_V_data_V_U_n_63,
      \odata_reg[7]\(1) => regslice_both_AXI_video_strm_V_data_V_U_n_64,
      \odata_reg[7]\(0) => regslice_both_AXI_video_strm_V_data_V_U_n_65,
      p_1_in3_in => p_1_in3_in,
      \p_Val2_s_reg_285_reg[23]\ => \p_Val2_s_reg_285[23]_i_5_n_1\,
      \p_Val2_s_reg_285_reg[23]_0\ => \p_Val2_s_reg_285[23]_i_4_n_1\,
      sof_1_fu_146 => sof_1_fu_146,
      \tmp_1_reg_474_reg[7]\ => regslice_both_AXI_video_strm_V_last_V_U_n_4,
      video_src_TREADY => video_src_TREADY
    );
regslice_both_AXI_video_strm_V_last_V_U: entity work.\cam_hls_preprocess_0_0_regslice_both__parameterized1_23\
     port map (
      D(1) => video_src_TVALID,
      D(0) => video_src_TLAST(0),
      E(0) => regslice_both_AXI_video_strm_V_data_V_U_n_134,
      Q(1) => regslice_both_AXI_video_strm_V_last_V_U_n_1,
      Q(0) => video_src_TLAST_int,
      SS(0) => SS(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \axi_last_V_2_reg_272_reg[0]\ => \axi_last_V_2_reg_272_reg_n_1_[0]\,
      \axi_last_V_2_reg_272_reg[0]_0\ => \p_Val2_s_reg_285[23]_i_5_n_1\,
      \axi_last_V_2_reg_272_reg[0]_1\ => regslice_both_AXI_video_strm_V_data_V_U_n_31,
      \axi_last_V_2_reg_272_reg[0]_2\ => \p_Val2_s_reg_285[23]_i_4_n_1\,
      \axi_last_V_3_reg_297_reg[0]\(1) => ap_CS_fsm_state7,
      \axi_last_V_3_reg_297_reg[0]\(0) => ap_CS_fsm_pp1_stage0,
      \eol_0_reg_260_reg[0]\ => regslice_both_AXI_video_strm_V_last_V_U_n_4,
      \eol_0_reg_260_reg[0]_0\ => regslice_both_AXI_video_strm_V_last_V_U_n_9,
      \eol_2_reg_321_reg[0]\ => \eol_0_reg_260_reg_n_1_[0]\,
      eol_reg_227 => eol_reg_227,
      \eol_reg_227_reg[0]\ => regslice_both_AXI_video_strm_V_last_V_U_n_10,
      icmp_ln73_fu_362_p2 => icmp_ln73_fu_362_p2,
      \icmp_ln73_reg_451_reg[0]\ => regslice_both_AXI_video_strm_V_last_V_U_n_3,
      \icmp_ln73_reg_451_reg[0]_0\(10 downto 0) => t_V_2_reg_249_reg(10 downto 0),
      \ireg_reg[1]\ => regslice_both_AXI_video_strm_V_data_V_U_n_57,
      \odata_reg[0]\ => regslice_both_AXI_video_strm_V_last_V_U_n_11,
      sof_1_fu_146 => sof_1_fu_146,
      src_img_data_stream_1_full_n => src_img_data_stream_1_full_n,
      src_img_data_stream_2_full_n => src_img_data_stream_2_full_n,
      src_img_data_stream_3_full_n => src_img_data_stream_3_full_n,
      src_img_data_stream_s_full_n => src_img_data_stream_s_full_n,
      \t_V_2_reg_249_reg[4]\ => regslice_both_AXI_video_strm_V_last_V_U_n_8,
      \t_V_2_reg_249_reg[7]\ => regslice_both_AXI_video_strm_V_last_V_U_n_7,
      \t_V_2_reg_249_reg[9]\ => regslice_both_AXI_video_strm_V_last_V_U_n_6,
      \tmp_1_reg_474_reg[7]\ => \icmp_ln73_reg_451_reg_n_1_[0]\,
      \tmp_1_reg_474_reg[7]_0\ => ap_enable_reg_pp1_iter1_reg_n_1
    );
regslice_both_AXI_video_strm_V_user_V_U: entity work.\cam_hls_preprocess_0_0_regslice_both__parameterized1_24\
     port map (
      D(1 downto 0) => ap_NS_fsm(2 downto 1),
      E(0) => regslice_both_AXI_video_strm_V_data_V_U_n_133,
      Q(0) => regslice_both_AXI_video_strm_V_user_V_U_n_1,
      SS(0) => SS(0),
      \ap_CS_fsm_reg[1]\ => \ap_CS_fsm[1]_i_2__0_n_1\,
      \ap_CS_fsm_reg[2]\(1) => ap_CS_fsm_state2,
      \ap_CS_fsm_reg[2]\(0) => \^q\(0),
      \ap_CS_fsm_reg[2]_0\(0) => video_src_TVALID_int,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      \ireg_reg[1]\ => regslice_both_AXI_video_strm_V_data_V_U_n_57,
      \ireg_reg[1]_0\(1) => video_src_TVALID,
      \ireg_reg[1]_0\(0) => video_src_TUSER(0)
    );
\sof_1_fu_146_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_137,
      Q => sof_1_fu_146,
      R => '0'
    );
start_once_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5540"
    )
        port map (
      I0 => \^axivideo2mat_u0_ap_ready\,
      I1 => AXIvideo2Mat_U0_ap_start,
      I2 => start_for_Downsample_U0_full_n,
      I3 => \^start_once_reg\,
      O => start_once_reg_i_1_n_1
    );
start_once_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => start_once_reg_i_1_n_1,
      Q => \^start_once_reg\,
      R => SS(0)
    );
\t_V_2_reg_249[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_2_reg_249_reg(0),
      O => j_V_fu_368_p2(0)
    );
\t_V_2_reg_249[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => t_V_2_reg_249_reg(10),
      I1 => t_V_2_reg_249_reg(7),
      I2 => \t_V_2_reg_249[10]_i_4_n_1\,
      I3 => t_V_2_reg_249_reg(6),
      I4 => t_V_2_reg_249_reg(8),
      I5 => t_V_2_reg_249_reg(9),
      O => j_V_fu_368_p2(10)
    );
\t_V_2_reg_249[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => t_V_2_reg_249_reg(4),
      I1 => t_V_2_reg_249_reg(2),
      I2 => t_V_2_reg_249_reg(0),
      I3 => t_V_2_reg_249_reg(1),
      I4 => t_V_2_reg_249_reg(3),
      I5 => t_V_2_reg_249_reg(5),
      O => \t_V_2_reg_249[10]_i_4_n_1\
    );
\t_V_2_reg_249[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => t_V_2_reg_249_reg(0),
      I1 => t_V_2_reg_249_reg(1),
      O => j_V_fu_368_p2(1)
    );
\t_V_2_reg_249[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => t_V_2_reg_249_reg(2),
      I1 => t_V_2_reg_249_reg(1),
      I2 => t_V_2_reg_249_reg(0),
      O => j_V_fu_368_p2(2)
    );
\t_V_2_reg_249[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => t_V_2_reg_249_reg(3),
      I1 => t_V_2_reg_249_reg(2),
      I2 => t_V_2_reg_249_reg(0),
      I3 => t_V_2_reg_249_reg(1),
      O => j_V_fu_368_p2(3)
    );
\t_V_2_reg_249[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => t_V_2_reg_249_reg(4),
      I1 => t_V_2_reg_249_reg(3),
      I2 => t_V_2_reg_249_reg(1),
      I3 => t_V_2_reg_249_reg(0),
      I4 => t_V_2_reg_249_reg(2),
      O => j_V_fu_368_p2(4)
    );
\t_V_2_reg_249[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => t_V_2_reg_249_reg(5),
      I1 => t_V_2_reg_249_reg(4),
      I2 => t_V_2_reg_249_reg(2),
      I3 => t_V_2_reg_249_reg(0),
      I4 => t_V_2_reg_249_reg(1),
      I5 => t_V_2_reg_249_reg(3),
      O => j_V_fu_368_p2(5)
    );
\t_V_2_reg_249[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => t_V_2_reg_249_reg(6),
      I1 => \t_V_2_reg_249[10]_i_4_n_1\,
      O => j_V_fu_368_p2(6)
    );
\t_V_2_reg_249[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => t_V_2_reg_249_reg(7),
      I1 => t_V_2_reg_249_reg(6),
      I2 => \t_V_2_reg_249[10]_i_4_n_1\,
      O => j_V_fu_368_p2(7)
    );
\t_V_2_reg_249[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => t_V_2_reg_249_reg(8),
      I1 => t_V_2_reg_249_reg(7),
      I2 => \t_V_2_reg_249[10]_i_4_n_1\,
      I3 => t_V_2_reg_249_reg(6),
      O => j_V_fu_368_p2(8)
    );
\t_V_2_reg_249[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => t_V_2_reg_249_reg(7),
      I1 => \t_V_2_reg_249[10]_i_4_n_1\,
      I2 => t_V_2_reg_249_reg(6),
      I3 => t_V_2_reg_249_reg(8),
      I4 => t_V_2_reg_249_reg(9),
      O => j_V_fu_368_p2(9)
    );
\t_V_2_reg_249_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(0),
      Q => t_V_2_reg_249_reg(0),
      R => t_V_2_reg_249
    );
\t_V_2_reg_249_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(10),
      Q => t_V_2_reg_249_reg(10),
      R => t_V_2_reg_249
    );
\t_V_2_reg_249_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(1),
      Q => t_V_2_reg_249_reg(1),
      R => t_V_2_reg_249
    );
\t_V_2_reg_249_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(2),
      Q => t_V_2_reg_249_reg(2),
      R => t_V_2_reg_249
    );
\t_V_2_reg_249_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(3),
      Q => t_V_2_reg_249_reg(3),
      R => t_V_2_reg_249
    );
\t_V_2_reg_249_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(4),
      Q => t_V_2_reg_249_reg(4),
      R => t_V_2_reg_249
    );
\t_V_2_reg_249_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(5),
      Q => t_V_2_reg_249_reg(5),
      R => t_V_2_reg_249
    );
\t_V_2_reg_249_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(6),
      Q => t_V_2_reg_249_reg(6),
      R => t_V_2_reg_249
    );
\t_V_2_reg_249_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(7),
      Q => t_V_2_reg_249_reg(7),
      R => t_V_2_reg_249
    );
\t_V_2_reg_249_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(8),
      Q => t_V_2_reg_249_reg(8),
      R => t_V_2_reg_249
    );
\t_V_2_reg_249_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => sof_1_fu_1460,
      D => j_V_fu_368_p2(9),
      Q => t_V_2_reg_249_reg(9),
      R => t_V_2_reg_249
    );
\t_V_reg_216_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_446(0),
      Q => t_V_reg_216(0),
      R => ap_CS_fsm_state3
    );
\t_V_reg_216_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_446(1),
      Q => t_V_reg_216(1),
      R => ap_CS_fsm_state3
    );
\t_V_reg_216_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_446(2),
      Q => t_V_reg_216(2),
      R => ap_CS_fsm_state3
    );
\t_V_reg_216_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_446(3),
      Q => t_V_reg_216(3),
      R => ap_CS_fsm_state3
    );
\t_V_reg_216_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_446(4),
      Q => t_V_reg_216(4),
      R => ap_CS_fsm_state3
    );
\t_V_reg_216_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_446(5),
      Q => t_V_reg_216(5),
      R => ap_CS_fsm_state3
    );
\t_V_reg_216_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_446(6),
      Q => t_V_reg_216(6),
      R => ap_CS_fsm_state3
    );
\t_V_reg_216_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_446(7),
      Q => t_V_reg_216(7),
      R => ap_CS_fsm_state3
    );
\t_V_reg_216_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_446(8),
      Q => t_V_reg_216(8),
      R => ap_CS_fsm_state3
    );
\t_V_reg_216_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state9,
      D => i_V_reg_446(9),
      Q => t_V_reg_216(9),
      R => ap_CS_fsm_state3
    );
\tmp_1_reg_474_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_105,
      Q => \tmp_1_reg_474_reg[7]_0\(0),
      R => '0'
    );
\tmp_1_reg_474_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_104,
      Q => \tmp_1_reg_474_reg[7]_0\(1),
      R => '0'
    );
\tmp_1_reg_474_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_103,
      Q => \tmp_1_reg_474_reg[7]_0\(2),
      R => '0'
    );
\tmp_1_reg_474_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_102,
      Q => \tmp_1_reg_474_reg[7]_0\(3),
      R => '0'
    );
\tmp_1_reg_474_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_101,
      Q => \tmp_1_reg_474_reg[7]_0\(4),
      R => '0'
    );
\tmp_1_reg_474_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_100,
      Q => \tmp_1_reg_474_reg[7]_0\(5),
      R => '0'
    );
\tmp_1_reg_474_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_99,
      Q => \tmp_1_reg_474_reg[7]_0\(6),
      R => '0'
    );
\tmp_1_reg_474_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_98,
      Q => \tmp_1_reg_474_reg[7]_0\(7),
      R => '0'
    );
\tmp_9_reg_469_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => p_0_in(0),
      Q => \tmp_9_reg_469_reg[7]_0\(0),
      R => '0'
    );
\tmp_9_reg_469_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => p_0_in(1),
      Q => \tmp_9_reg_469_reg[7]_0\(1),
      R => '0'
    );
\tmp_9_reg_469_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => p_0_in(2),
      Q => \tmp_9_reg_469_reg[7]_0\(2),
      R => '0'
    );
\tmp_9_reg_469_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => p_0_in(3),
      Q => \tmp_9_reg_469_reg[7]_0\(3),
      R => '0'
    );
\tmp_9_reg_469_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => p_0_in(4),
      Q => \tmp_9_reg_469_reg[7]_0\(4),
      R => '0'
    );
\tmp_9_reg_469_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => p_0_in(5),
      Q => \tmp_9_reg_469_reg[7]_0\(5),
      R => '0'
    );
\tmp_9_reg_469_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => p_0_in(6),
      Q => \tmp_9_reg_469_reg[7]_0\(6),
      R => '0'
    );
\tmp_9_reg_469_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => p_0_in(7),
      Q => \tmp_9_reg_469_reg[7]_0\(7),
      R => '0'
    );
\tmp_data_V_reg_422_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_56,
      Q => tmp_data_V_reg_422(0),
      R => '0'
    );
\tmp_data_V_reg_422_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_46,
      Q => tmp_data_V_reg_422(10),
      R => '0'
    );
\tmp_data_V_reg_422_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_45,
      Q => tmp_data_V_reg_422(11),
      R => '0'
    );
\tmp_data_V_reg_422_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_44,
      Q => tmp_data_V_reg_422(12),
      R => '0'
    );
\tmp_data_V_reg_422_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_43,
      Q => tmp_data_V_reg_422(13),
      R => '0'
    );
\tmp_data_V_reg_422_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_42,
      Q => tmp_data_V_reg_422(14),
      R => '0'
    );
\tmp_data_V_reg_422_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_41,
      Q => tmp_data_V_reg_422(15),
      R => '0'
    );
\tmp_data_V_reg_422_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_40,
      Q => tmp_data_V_reg_422(16),
      R => '0'
    );
\tmp_data_V_reg_422_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_39,
      Q => tmp_data_V_reg_422(17),
      R => '0'
    );
\tmp_data_V_reg_422_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_38,
      Q => tmp_data_V_reg_422(18),
      R => '0'
    );
\tmp_data_V_reg_422_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_37,
      Q => tmp_data_V_reg_422(19),
      R => '0'
    );
\tmp_data_V_reg_422_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_55,
      Q => tmp_data_V_reg_422(1),
      R => '0'
    );
\tmp_data_V_reg_422_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_36,
      Q => tmp_data_V_reg_422(20),
      R => '0'
    );
\tmp_data_V_reg_422_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_35,
      Q => tmp_data_V_reg_422(21),
      R => '0'
    );
\tmp_data_V_reg_422_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_34,
      Q => tmp_data_V_reg_422(22),
      R => '0'
    );
\tmp_data_V_reg_422_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_33,
      Q => tmp_data_V_reg_422(23),
      R => '0'
    );
\tmp_data_V_reg_422_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_54,
      Q => tmp_data_V_reg_422(2),
      R => '0'
    );
\tmp_data_V_reg_422_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_53,
      Q => tmp_data_V_reg_422(3),
      R => '0'
    );
\tmp_data_V_reg_422_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_52,
      Q => tmp_data_V_reg_422(4),
      R => '0'
    );
\tmp_data_V_reg_422_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_51,
      Q => tmp_data_V_reg_422(5),
      R => '0'
    );
\tmp_data_V_reg_422_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_50,
      Q => tmp_data_V_reg_422(6),
      R => '0'
    );
\tmp_data_V_reg_422_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_49,
      Q => tmp_data_V_reg_422(7),
      R => '0'
    );
\tmp_data_V_reg_422_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_48,
      Q => tmp_data_V_reg_422(8),
      R => '0'
    );
\tmp_data_V_reg_422_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_47,
      Q => tmp_data_V_reg_422(9),
      R => '0'
    );
\tmp_last_V_reg_430_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ack_out2,
      D => video_src_TLAST_int,
      Q => tmp_last_V_reg_430,
      R => '0'
    );
\tmp_reg_464_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_65,
      Q => \tmp_reg_464_reg[7]_0\(0),
      R => '0'
    );
\tmp_reg_464_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_64,
      Q => \tmp_reg_464_reg[7]_0\(1),
      R => '0'
    );
\tmp_reg_464_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_63,
      Q => \tmp_reg_464_reg[7]_0\(2),
      R => '0'
    );
\tmp_reg_464_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_62,
      Q => \tmp_reg_464_reg[7]_0\(3),
      R => '0'
    );
\tmp_reg_464_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_61,
      Q => \tmp_reg_464_reg[7]_0\(4),
      R => '0'
    );
\tmp_reg_464_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_60,
      Q => \tmp_reg_464_reg[7]_0\(5),
      R => '0'
    );
\tmp_reg_464_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_59,
      Q => \tmp_reg_464_reg[7]_0\(6),
      R => '0'
    );
\tmp_reg_464_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_1_reg_4740,
      D => regslice_both_AXI_video_strm_V_data_V_U_n_58,
      Q => \tmp_reg_464_reg[7]_0\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_Mat2AXIvideo is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    Mat2AXIvideo_U0_img_data_stream_3_V_read : out STD_LOGIC;
    internal_empty_n_reg : out STD_LOGIC;
    Mat2AXIvideo_U0_ap_ready : out STD_LOGIC;
    ap_rst_n_0 : out STD_LOGIC;
    \odata_reg[32]\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \ireg_reg[32]\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    ap_rst_n_1 : out STD_LOGIC;
    video_dst_TKEEP : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Mat2AXIvideo_U0_ap_start : in STD_LOGIC;
    video_dst_TREADY : in STD_LOGIC;
    shiftReg_ce : in STD_LOGIC;
    \ireg_reg[32]_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 27 downto 0 );
    \odata_reg[30]\ : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_Mat2AXIvideo : entity is "Mat2AXIvideo";
end cam_hls_preprocess_0_0_Mat2AXIvideo;

architecture STRUCTURE of cam_hls_preprocess_0_0_Mat2AXIvideo is
  signal \^mat2axivideo_u0_img_data_stream_3_v_read\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_reg_n_1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter2_reg_n_1 : STD_LOGIC;
  signal \axi_last_V_reg_297[0]_i_2_n_1\ : STD_LOGIC;
  signal \axi_last_V_reg_297_reg_n_1_[0]\ : STD_LOGIC;
  signal i_V_fu_226_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal i_V_reg_283 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal i_V_reg_2830 : STD_LOGIC;
  signal \i_V_reg_283[8]_i_3_n_1\ : STD_LOGIC;
  signal icmp_ln126_fu_232_p2 : STD_LOGIC;
  signal icmp_ln126_reg_2880 : STD_LOGIC;
  signal \icmp_ln126_reg_288[0]_i_4_n_1\ : STD_LOGIC;
  signal icmp_ln126_reg_288_pp0_iter1_reg : STD_LOGIC;
  signal \icmp_ln126_reg_288_reg_n_1_[0]\ : STD_LOGIC;
  signal \int_isr[0]_i_4_n_1\ : STD_LOGIC;
  signal \int_isr[0]_i_5_n_1\ : STD_LOGIC;
  signal j_V_fu_238_p2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal regslice_both_AXI_video_strm_V_data_V_U_n_12 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_2 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_3 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_73 : STD_LOGIC;
  signal regslice_both_AXI_video_strm_V_data_V_U_n_74 : STD_LOGIC;
  signal t_V_1_reg_204 : STD_LOGIC;
  signal t_V_1_reg_2040 : STD_LOGIC;
  signal \t_V_1_reg_204[8]_i_4_n_1\ : STD_LOGIC;
  signal t_V_1_reg_204_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal t_V_reg_193 : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal t_V_reg_193_0 : STD_LOGIC;
  signal tmp_user_V_fu_136 : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_last_V_reg_297[0]_i_2\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \i_V_reg_283[0]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \i_V_reg_283[1]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \i_V_reg_283[2]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \i_V_reg_283[3]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \i_V_reg_283[4]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \i_V_reg_283[7]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \i_V_reg_283[8]_i_2\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \int_isr[0]_i_4\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \t_V_1_reg_204[1]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \t_V_1_reg_204[2]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \t_V_1_reg_204[3]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \t_V_1_reg_204[4]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \t_V_1_reg_204[6]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \t_V_1_reg_204[7]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \t_V_1_reg_204[8]_i_3\ : label is "soft_lutpair112";
begin
  Mat2AXIvideo_U0_img_data_stream_3_V_read <= \^mat2axivideo_u0_img_data_stream_3_v_read\;
  Q(0) <= \^q\(0);
  SS(0) <= \^ss\(0);
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \^q\(0),
      S => \^ss\(0)
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => \^ss\(0)
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_pp0_stage0,
      R => \^ss\(0)
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state6,
      R => \^ss\(0)
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_12,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_2,
      Q => ap_enable_reg_pp0_iter1_reg_n_1,
      R => '0'
    );
ap_enable_reg_pp0_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_3,
      Q => ap_enable_reg_pp0_iter2_reg_n_1,
      R => '0'
    );
\axi_last_V_reg_297[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => t_V_1_reg_204_reg(6),
      I1 => t_V_1_reg_204_reg(2),
      I2 => t_V_1_reg_204_reg(3),
      O => \axi_last_V_reg_297[0]_i_2_n_1\
    );
\axi_last_V_reg_297_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_74,
      Q => \axi_last_V_reg_297_reg_n_1_[0]\,
      R => '0'
    );
\i_V_reg_283[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_reg_193(0),
      O => i_V_fu_226_p2(0)
    );
\i_V_reg_283[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => t_V_reg_193(0),
      I1 => t_V_reg_193(1),
      O => i_V_fu_226_p2(1)
    );
\i_V_reg_283[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => t_V_reg_193(2),
      I1 => t_V_reg_193(1),
      I2 => t_V_reg_193(0),
      O => i_V_fu_226_p2(2)
    );
\i_V_reg_283[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => t_V_reg_193(3),
      I1 => t_V_reg_193(0),
      I2 => t_V_reg_193(1),
      I3 => t_V_reg_193(2),
      O => i_V_fu_226_p2(3)
    );
\i_V_reg_283[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => t_V_reg_193(4),
      I1 => t_V_reg_193(2),
      I2 => t_V_reg_193(1),
      I3 => t_V_reg_193(0),
      I4 => t_V_reg_193(3),
      O => i_V_fu_226_p2(4)
    );
\i_V_reg_283[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => t_V_reg_193(5),
      I1 => t_V_reg_193(3),
      I2 => t_V_reg_193(0),
      I3 => t_V_reg_193(1),
      I4 => t_V_reg_193(2),
      I5 => t_V_reg_193(4),
      O => i_V_fu_226_p2(5)
    );
\i_V_reg_283[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => t_V_reg_193(6),
      I1 => \i_V_reg_283[8]_i_3_n_1\,
      O => i_V_fu_226_p2(6)
    );
\i_V_reg_283[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => t_V_reg_193(7),
      I1 => t_V_reg_193(6),
      I2 => \i_V_reg_283[8]_i_3_n_1\,
      O => i_V_fu_226_p2(7)
    );
\i_V_reg_283[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => t_V_reg_193(8),
      I1 => \i_V_reg_283[8]_i_3_n_1\,
      I2 => t_V_reg_193(6),
      I3 => t_V_reg_193(7),
      O => i_V_fu_226_p2(8)
    );
\i_V_reg_283[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => t_V_reg_193(5),
      I1 => t_V_reg_193(3),
      I2 => t_V_reg_193(0),
      I3 => t_V_reg_193(1),
      I4 => t_V_reg_193(2),
      I5 => t_V_reg_193(4),
      O => \i_V_reg_283[8]_i_3_n_1\
    );
\i_V_reg_283_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2830,
      D => i_V_fu_226_p2(0),
      Q => i_V_reg_283(0),
      R => '0'
    );
\i_V_reg_283_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2830,
      D => i_V_fu_226_p2(1),
      Q => i_V_reg_283(1),
      R => '0'
    );
\i_V_reg_283_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2830,
      D => i_V_fu_226_p2(2),
      Q => i_V_reg_283(2),
      R => '0'
    );
\i_V_reg_283_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2830,
      D => i_V_fu_226_p2(3),
      Q => i_V_reg_283(3),
      R => '0'
    );
\i_V_reg_283_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2830,
      D => i_V_fu_226_p2(4),
      Q => i_V_reg_283(4),
      R => '0'
    );
\i_V_reg_283_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2830,
      D => i_V_fu_226_p2(5),
      Q => i_V_reg_283(5),
      R => '0'
    );
\i_V_reg_283_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2830,
      D => i_V_fu_226_p2(6),
      Q => i_V_reg_283(6),
      R => '0'
    );
\i_V_reg_283_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2830,
      D => i_V_fu_226_p2(7),
      Q => i_V_reg_283(7),
      R => '0'
    );
\i_V_reg_283_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => i_V_reg_2830,
      D => i_V_fu_226_p2(8),
      Q => i_V_reg_283(8),
      R => '0'
    );
\icmp_ln126_reg_288[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \icmp_ln126_reg_288[0]_i_4_n_1\,
      I1 => t_V_1_reg_204_reg(1),
      I2 => t_V_1_reg_204_reg(0),
      I3 => t_V_1_reg_204_reg(3),
      I4 => t_V_1_reg_204_reg(2),
      I5 => t_V_1_reg_204_reg(6),
      O => icmp_ln126_fu_232_p2
    );
\icmp_ln126_reg_288[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => t_V_1_reg_204_reg(7),
      I1 => t_V_1_reg_204_reg(4),
      I2 => t_V_1_reg_204_reg(8),
      I3 => t_V_1_reg_204_reg(5),
      O => \icmp_ln126_reg_288[0]_i_4_n_1\
    );
\icmp_ln126_reg_288_pp0_iter1_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => icmp_ln126_reg_2880,
      D => \icmp_ln126_reg_288_reg_n_1_[0]\,
      Q => icmp_ln126_reg_288_pp0_iter1_reg,
      R => '0'
    );
\icmp_ln126_reg_288_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => icmp_ln126_reg_2880,
      D => icmp_ln126_fu_232_p2,
      Q => \icmp_ln126_reg_288_reg_n_1_[0]\,
      R => '0'
    );
\int_isr[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \int_isr[0]_i_5_n_1\,
      I1 => t_V_reg_193(0),
      I2 => t_V_reg_193(1),
      I3 => t_V_reg_193(2),
      O => \int_isr[0]_i_4_n_1\
    );
\int_isr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => t_V_reg_193(3),
      I1 => t_V_reg_193(4),
      I2 => t_V_reg_193(5),
      I3 => t_V_reg_193(6),
      I4 => t_V_reg_193(7),
      I5 => t_V_reg_193(8),
      O => \int_isr[0]_i_5_n_1\
    );
regslice_both_AXI_video_strm_V_data_V_U: entity work.cam_hls_preprocess_0_0_regslice_both
     port map (
      D(3 downto 0) => ap_NS_fsm(3 downto 0),
      E(0) => i_V_reg_2830,
      Mat2AXIvideo_U0_ap_ready => Mat2AXIvideo_U0_ap_ready,
      Mat2AXIvideo_U0_ap_start => Mat2AXIvideo_U0_ap_start,
      Q(3) => ap_CS_fsm_state6,
      Q(2) => ap_CS_fsm_pp0_stage0,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \^q\(0),
      SR(0) => \^ss\(0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg(0) => t_V_1_reg_204,
      ap_enable_reg_pp0_iter0_reg_0(0) => t_V_1_reg_2040,
      ap_enable_reg_pp0_iter2_reg => ap_enable_reg_pp0_iter2_reg_n_1,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => regslice_both_AXI_video_strm_V_data_V_U_n_2,
      ap_rst_n_1 => regslice_both_AXI_video_strm_V_data_V_U_n_3,
      ap_rst_n_2 => regslice_both_AXI_video_strm_V_data_V_U_n_12,
      ap_rst_n_3 => ap_rst_n_0,
      ap_rst_n_4 => ap_rst_n_1,
      \axi_last_V_reg_297_reg[0]\ => \axi_last_V_reg_297[0]_i_2_n_1\,
      \axi_last_V_reg_297_reg[0]_0\(1 downto 0) => t_V_1_reg_204_reg(1 downto 0),
      \axi_last_V_reg_297_reg[0]_1\ => \icmp_ln126_reg_288[0]_i_4_n_1\,
      \axi_last_V_reg_297_reg[0]_2\(0) => \axi_last_V_reg_297_reg_n_1_[0]\,
      icmp_ln126_fu_232_p2 => icmp_ln126_fu_232_p2,
      icmp_ln126_reg_2880 => icmp_ln126_reg_2880,
      icmp_ln126_reg_288_pp0_iter1_reg => icmp_ln126_reg_288_pp0_iter1_reg,
      \icmp_ln126_reg_288_reg[0]\(0) => \^mat2axivideo_u0_img_data_stream_3_v_read\,
      internal_empty_n_reg => internal_empty_n_reg,
      \ireg_reg[30]\(27 downto 0) => D(27 downto 0),
      \ireg_reg[32]\(28 downto 0) => \ireg_reg[32]\(28 downto 0),
      \ireg_reg[32]_0\ => ap_enable_reg_pp0_iter1_reg_n_1,
      \ireg_reg[32]_1\ => \icmp_ln126_reg_288_reg_n_1_[0]\,
      \ireg_reg[32]_2\ => \ireg_reg[32]_0\,
      \mOutPtr_reg[1]\ => \int_isr[0]_i_4_n_1\,
      \odata_reg[30]\(27 downto 0) => \odata_reg[30]\(27 downto 0),
      \odata_reg[32]\(28 downto 0) => \odata_reg[32]\(28 downto 0),
      shiftReg_ce => shiftReg_ce,
      \t_V_1_reg_204_reg[0]\ => regslice_both_AXI_video_strm_V_data_V_U_n_74,
      \tmp_user_V_fu_136_reg[0]\ => regslice_both_AXI_video_strm_V_data_V_U_n_73,
      \tmp_user_V_fu_136_reg[0]_0\(0) => tmp_user_V_fu_136,
      video_dst_TREADY => video_dst_TREADY
    );
regslice_both_AXI_video_strm_V_keep_V_U: entity work.\cam_hls_preprocess_0_0_regslice_both__parameterized0\
     port map (
      D(0) => \^mat2axivideo_u0_img_data_stream_3_v_read\,
      SR(0) => \^ss\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      video_dst_TKEEP(0) => video_dst_TKEEP(0),
      video_dst_TREADY => video_dst_TREADY
    );
regslice_both_AXI_video_strm_V_last_V_U: entity work.\cam_hls_preprocess_0_0_regslice_both__parameterized1\
     port map (
      D(1) => \^mat2axivideo_u0_img_data_stream_3_v_read\,
      D(0) => \axi_last_V_reg_297_reg_n_1_[0]\,
      SR(0) => \^ss\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      video_dst_TLAST(0) => video_dst_TLAST(0),
      video_dst_TREADY => video_dst_TREADY
    );
regslice_both_AXI_video_strm_V_user_V_U: entity work.\cam_hls_preprocess_0_0_regslice_both__parameterized1_19\
     port map (
      D(1) => \^mat2axivideo_u0_img_data_stream_3_v_read\,
      D(0) => tmp_user_V_fu_136,
      SR(0) => \^ss\(0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      video_dst_TREADY => video_dst_TREADY,
      video_dst_TUSER(0) => video_dst_TUSER(0)
    );
\t_V_1_reg_204[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => t_V_1_reg_204_reg(0),
      O => j_V_fu_238_p2(0)
    );
\t_V_1_reg_204[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => t_V_1_reg_204_reg(0),
      I1 => t_V_1_reg_204_reg(1),
      O => j_V_fu_238_p2(1)
    );
\t_V_1_reg_204[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => t_V_1_reg_204_reg(2),
      I1 => t_V_1_reg_204_reg(1),
      I2 => t_V_1_reg_204_reg(0),
      O => j_V_fu_238_p2(2)
    );
\t_V_1_reg_204[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => t_V_1_reg_204_reg(3),
      I1 => t_V_1_reg_204_reg(0),
      I2 => t_V_1_reg_204_reg(1),
      I3 => t_V_1_reg_204_reg(2),
      O => j_V_fu_238_p2(3)
    );
\t_V_1_reg_204[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => t_V_1_reg_204_reg(4),
      I1 => t_V_1_reg_204_reg(2),
      I2 => t_V_1_reg_204_reg(1),
      I3 => t_V_1_reg_204_reg(0),
      I4 => t_V_1_reg_204_reg(3),
      O => j_V_fu_238_p2(4)
    );
\t_V_1_reg_204[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => t_V_1_reg_204_reg(5),
      I1 => t_V_1_reg_204_reg(3),
      I2 => t_V_1_reg_204_reg(0),
      I3 => t_V_1_reg_204_reg(1),
      I4 => t_V_1_reg_204_reg(2),
      I5 => t_V_1_reg_204_reg(4),
      O => j_V_fu_238_p2(5)
    );
\t_V_1_reg_204[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => t_V_1_reg_204_reg(6),
      I1 => \t_V_1_reg_204[8]_i_4_n_1\,
      O => j_V_fu_238_p2(6)
    );
\t_V_1_reg_204[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => t_V_1_reg_204_reg(7),
      I1 => \t_V_1_reg_204[8]_i_4_n_1\,
      I2 => t_V_1_reg_204_reg(6),
      O => j_V_fu_238_p2(7)
    );
\t_V_1_reg_204[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => t_V_1_reg_204_reg(8),
      I1 => t_V_1_reg_204_reg(6),
      I2 => \t_V_1_reg_204[8]_i_4_n_1\,
      I3 => t_V_1_reg_204_reg(7),
      O => j_V_fu_238_p2(8)
    );
\t_V_1_reg_204[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => t_V_1_reg_204_reg(5),
      I1 => t_V_1_reg_204_reg(3),
      I2 => t_V_1_reg_204_reg(0),
      I3 => t_V_1_reg_204_reg(1),
      I4 => t_V_1_reg_204_reg(2),
      I5 => t_V_1_reg_204_reg(4),
      O => \t_V_1_reg_204[8]_i_4_n_1\
    );
\t_V_1_reg_204_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_2040,
      D => j_V_fu_238_p2(0),
      Q => t_V_1_reg_204_reg(0),
      R => t_V_1_reg_204
    );
\t_V_1_reg_204_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_2040,
      D => j_V_fu_238_p2(1),
      Q => t_V_1_reg_204_reg(1),
      R => t_V_1_reg_204
    );
\t_V_1_reg_204_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_2040,
      D => j_V_fu_238_p2(2),
      Q => t_V_1_reg_204_reg(2),
      R => t_V_1_reg_204
    );
\t_V_1_reg_204_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_2040,
      D => j_V_fu_238_p2(3),
      Q => t_V_1_reg_204_reg(3),
      R => t_V_1_reg_204
    );
\t_V_1_reg_204_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_2040,
      D => j_V_fu_238_p2(4),
      Q => t_V_1_reg_204_reg(4),
      R => t_V_1_reg_204
    );
\t_V_1_reg_204_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_2040,
      D => j_V_fu_238_p2(5),
      Q => t_V_1_reg_204_reg(5),
      R => t_V_1_reg_204
    );
\t_V_1_reg_204_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_2040,
      D => j_V_fu_238_p2(6),
      Q => t_V_1_reg_204_reg(6),
      R => t_V_1_reg_204
    );
\t_V_1_reg_204_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_2040,
      D => j_V_fu_238_p2(7),
      Q => t_V_1_reg_204_reg(7),
      R => t_V_1_reg_204
    );
\t_V_1_reg_204_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => t_V_1_reg_2040,
      D => j_V_fu_238_p2(8),
      Q => t_V_1_reg_204_reg(8),
      R => t_V_1_reg_204
    );
\t_V_reg_193[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(0),
      I1 => Mat2AXIvideo_U0_ap_start,
      I2 => ap_CS_fsm_state6,
      O => t_V_reg_193_0
    );
\t_V_reg_193_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_283(0),
      Q => t_V_reg_193(0),
      R => t_V_reg_193_0
    );
\t_V_reg_193_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_283(1),
      Q => t_V_reg_193(1),
      R => t_V_reg_193_0
    );
\t_V_reg_193_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_283(2),
      Q => t_V_reg_193(2),
      R => t_V_reg_193_0
    );
\t_V_reg_193_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_283(3),
      Q => t_V_reg_193(3),
      R => t_V_reg_193_0
    );
\t_V_reg_193_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_283(4),
      Q => t_V_reg_193(4),
      R => t_V_reg_193_0
    );
\t_V_reg_193_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_283(5),
      Q => t_V_reg_193(5),
      R => t_V_reg_193_0
    );
\t_V_reg_193_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_283(6),
      Q => t_V_reg_193(6),
      R => t_V_reg_193_0
    );
\t_V_reg_193_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_283(7),
      Q => t_V_reg_193(7),
      R => t_V_reg_193_0
    );
\t_V_reg_193_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_V_reg_283(8),
      Q => t_V_reg_193(8),
      R => t_V_reg_193_0
    );
\tmp_user_V_fu_136_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_AXI_video_strm_V_data_V_U_n_73,
      Q => tmp_user_V_fu_136,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0_hls_preprocess is
  port (
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    video_src_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    video_src_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    video_src_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    video_src_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_src_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_src_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_src_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    video_dst_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    video_dst_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    video_dst_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_src_TVALID : in STD_LOGIC;
    video_src_TREADY : out STD_LOGIC;
    video_dst_TVALID : out STD_LOGIC;
    video_dst_TREADY : in STD_LOGIC
  );
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of cam_hls_preprocess_0_0_hls_preprocess : entity is 32;
  attribute C_S_AXI_AXILITES_ADDR_WIDTH : integer;
  attribute C_S_AXI_AXILITES_ADDR_WIDTH of cam_hls_preprocess_0_0_hls_preprocess : entity is 4;
  attribute C_S_AXI_AXILITES_DATA_WIDTH : integer;
  attribute C_S_AXI_AXILITES_DATA_WIDTH of cam_hls_preprocess_0_0_hls_preprocess : entity is 32;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH : integer;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH of cam_hls_preprocess_0_0_hls_preprocess : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of cam_hls_preprocess_0_0_hls_preprocess : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of cam_hls_preprocess_0_0_hls_preprocess : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cam_hls_preprocess_0_0_hls_preprocess : entity is "hls_preprocess";
  attribute hls_module : string;
  attribute hls_module of cam_hls_preprocess_0_0_hls_preprocess : entity is "yes";
end cam_hls_preprocess_0_0_hls_preprocess;

architecture STRUCTURE of cam_hls_preprocess_0_0_hls_preprocess is
  signal \<const0>\ : STD_LOGIC;
  signal AXIvideo2Mat_U0_ap_ready : STD_LOGIC;
  signal AXIvideo2Mat_U0_ap_start : STD_LOGIC;
  signal AXIvideo2Mat_U0_img_data_stream_3_V_write : STD_LOGIC;
  signal AXIvideo2Mat_U0_n_3 : STD_LOGIC;
  signal Convert_U0_ap_start : STD_LOGIC;
  signal Convert_U0_dst_data_stream_0_V_din : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Convert_U0_dst_data_stream_1_V_din : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Convert_U0_dst_data_stream_3_V_din : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Convert_U0_n_1 : STD_LOGIC;
  signal Convert_U0_n_10 : STD_LOGIC;
  signal Convert_U0_n_12 : STD_LOGIC;
  signal Convert_U0_n_13 : STD_LOGIC;
  signal Convert_U0_n_3 : STD_LOGIC;
  signal Convert_U0_n_4 : STD_LOGIC;
  signal Convert_U0_n_5 : STD_LOGIC;
  signal Convert_U0_n_6 : STD_LOGIC;
  signal Convert_U0_n_7 : STD_LOGIC;
  signal Convert_U0_n_8 : STD_LOGIC;
  signal Convert_U0_n_9 : STD_LOGIC;
  signal Downsample_U0_ap_start : STD_LOGIC;
  signal Downsample_U0_n_1 : STD_LOGIC;
  signal Downsample_U0_n_2 : STD_LOGIC;
  signal Downsample_U0_n_3 : STD_LOGIC;
  signal Downsample_U0_n_4 : STD_LOGIC;
  signal Downsample_U0_n_5 : STD_LOGIC;
  signal Downsample_U0_n_6 : STD_LOGIC;
  signal Downsample_U0_n_7 : STD_LOGIC;
  signal Downsample_U0_n_8 : STD_LOGIC;
  signal Mat2AXIvideo_U0_ap_ready : STD_LOGIC;
  signal Mat2AXIvideo_U0_ap_start : STD_LOGIC;
  signal Mat2AXIvideo_U0_img_data_stream_3_V_read : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_2 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_37 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_38 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_39 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_4 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_40 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_41 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_42 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_43 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_44 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_45 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_46 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_47 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_48 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_49 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_50 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_51 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_52 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_53 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_54 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_55 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_56 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_57 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_58 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_59 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_6 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_60 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_61 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_62 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_63 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_64 : STD_LOGIC;
  signal Mat2AXIvideo_U0_n_65 : STD_LOGIC;
  signal ap_idle : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dst_img_data_stream_1_U_n_3 : STD_LOGIC;
  signal dst_img_data_stream_1_U_n_4 : STD_LOGIC;
  signal dst_img_data_stream_1_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dst_img_data_stream_1_empty_n : STD_LOGIC;
  signal dst_img_data_stream_1_full_n : STD_LOGIC;
  signal dst_img_data_stream_2_U_n_3 : STD_LOGIC;
  signal dst_img_data_stream_2_U_n_4 : STD_LOGIC;
  signal dst_img_data_stream_2_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dst_img_data_stream_2_empty_n : STD_LOGIC;
  signal dst_img_data_stream_2_full_n : STD_LOGIC;
  signal dst_img_data_stream_3_U_n_3 : STD_LOGIC;
  signal dst_img_data_stream_3_U_n_4 : STD_LOGIC;
  signal dst_img_data_stream_3_empty_n : STD_LOGIC;
  signal dst_img_data_stream_3_full_n : STD_LOGIC;
  signal dst_img_data_stream_s_U_n_3 : STD_LOGIC;
  signal dst_img_data_stream_s_U_n_4 : STD_LOGIC;
  signal dst_img_data_stream_s_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dst_img_data_stream_s_empty_n : STD_LOGIC;
  signal dst_img_data_stream_s_full_n : STD_LOGIC;
  signal hls_preprocess_AXILiteS_s_axi_U_n_8 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_10 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_11 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_12 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_13 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_14 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_15 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_16 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_2 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_3 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_4 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_5 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_6 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_7 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_8 : STD_LOGIC;
  signal ifm_img_data_stream_1_U_n_9 : STD_LOGIC;
  signal ifm_img_data_stream_1_full_n : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_10 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_11 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_12 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_13 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_14 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_15 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_16 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_3 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_4 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_5 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_6 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_7 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_8 : STD_LOGIC;
  signal ifm_img_data_stream_2_U_n_9 : STD_LOGIC;
  signal ifm_img_data_stream_2_empty_n : STD_LOGIC;
  signal ifm_img_data_stream_2_full_n : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_1 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_10 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_11 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_12 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_13 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_14 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_15 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_16 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_17 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_18 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_19 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_2 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_20 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_21 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_22 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_23 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_3 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_4 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_5 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_6 : STD_LOGIC;
  signal ifm_img_data_stream_3_U_n_7 : STD_LOGIC;
  signal ifm_img_data_stream_3_empty_n : STD_LOGIC;
  signal ifm_img_data_stream_3_full_n : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_10 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_11 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_12 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_13 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_14 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_15 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_16 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_3 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_4 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_5 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_6 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_7 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_8 : STD_LOGIC;
  signal ifm_img_data_stream_s_U_n_9 : STD_LOGIC;
  signal ifm_img_data_stream_s_empty_n : STD_LOGIC;
  signal ifm_img_data_stream_s_full_n : STD_LOGIC;
  signal p_22_in : STD_LOGIC;
  signal \regslice_both_AXI_video_strm_V_data_V_U/ibuf_inst/p_0_in\ : STD_LOGIC;
  signal \^s_axi_axilites_rdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shiftReg_ce : STD_LOGIC;
  signal src_img_data_stream_1_U_n_10 : STD_LOGIC;
  signal src_img_data_stream_1_U_n_3 : STD_LOGIC;
  signal src_img_data_stream_1_U_n_4 : STD_LOGIC;
  signal src_img_data_stream_1_U_n_5 : STD_LOGIC;
  signal src_img_data_stream_1_U_n_6 : STD_LOGIC;
  signal src_img_data_stream_1_U_n_7 : STD_LOGIC;
  signal src_img_data_stream_1_U_n_8 : STD_LOGIC;
  signal src_img_data_stream_1_U_n_9 : STD_LOGIC;
  signal src_img_data_stream_1_empty_n : STD_LOGIC;
  signal src_img_data_stream_1_full_n : STD_LOGIC;
  signal src_img_data_stream_2_U_n_10 : STD_LOGIC;
  signal src_img_data_stream_2_U_n_3 : STD_LOGIC;
  signal src_img_data_stream_2_U_n_4 : STD_LOGIC;
  signal src_img_data_stream_2_U_n_5 : STD_LOGIC;
  signal src_img_data_stream_2_U_n_6 : STD_LOGIC;
  signal src_img_data_stream_2_U_n_7 : STD_LOGIC;
  signal src_img_data_stream_2_U_n_8 : STD_LOGIC;
  signal src_img_data_stream_2_U_n_9 : STD_LOGIC;
  signal src_img_data_stream_2_empty_n : STD_LOGIC;
  signal src_img_data_stream_2_full_n : STD_LOGIC;
  signal src_img_data_stream_3_empty_n : STD_LOGIC;
  signal src_img_data_stream_3_full_n : STD_LOGIC;
  signal src_img_data_stream_s_empty_n : STD_LOGIC;
  signal src_img_data_stream_s_full_n : STD_LOGIC;
  signal start_for_Convert_U0_full_n : STD_LOGIC;
  signal start_for_Convertcud_U_n_3 : STD_LOGIC;
  signal start_for_Downsambkb_U_n_3 : STD_LOGIC;
  signal start_for_Downsample_U0_full_n : STD_LOGIC;
  signal start_for_Mat2AXIdEe_U_n_3 : STD_LOGIC;
  signal start_for_Mat2AXIvideo_U0_full_n : STD_LOGIC;
  signal start_once_reg : STD_LOGIC;
  signal tmp_1_reg_474 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_9_reg_469 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_reg_464 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^video_dst_tdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^video_dst_tkeep\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_q0_reg_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_q0_reg_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_q0_reg_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q0_reg_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q0_reg_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal NLW_q0_reg_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal NLW_q0_reg_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q2_reg_CASDOUTA_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_q2_reg_CASDOUTB_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_q2_reg_CASDOUTPA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q2_reg_CASDOUTPB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q2_reg_DOUTADOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 7 );
  signal NLW_q2_reg_DOUTBDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_q2_reg_DOUTPADOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_q2_reg_DOUTPBDOUTP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of q0_reg : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of q0_reg : label is "";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of q0_reg : label is "MLO";
  attribute RDADDR_COLLISION_HWCONFIG : string;
  attribute RDADDR_COLLISION_HWCONFIG of q0_reg : label is "PERFORMANCE";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of q0_reg : label is 1792;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of q0_reg : label is "q0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of q0_reg : label is "RAM_SP";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of q0_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of q0_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of q0_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of q0_reg : label is 6;
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of q0_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of q0_reg : label is 1023;
  attribute ram_offset : integer;
  attribute ram_offset of q0_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of q0_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of q0_reg : label is 6;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of q2_reg : label is "p0_d7";
  attribute METHODOLOGY_DRC_VIOS of q2_reg : label is "";
  attribute RDADDR_COLLISION_HWCONFIG of q2_reg : label is "PERFORMANCE";
  attribute RTL_RAM_BITS of q2_reg : label is 1792;
  attribute RTL_RAM_NAME of q2_reg : label is "q2";
  attribute RTL_RAM_TYPE of q2_reg : label is "RAM_SP";
  attribute bram_addr_begin of q2_reg : label is 0;
  attribute bram_addr_end of q2_reg : label is 1023;
  attribute bram_slice_begin of q2_reg : label is 0;
  attribute bram_slice_end of q2_reg : label is 6;
  attribute ram_addr_begin of q2_reg : label is 0;
  attribute ram_addr_end of q2_reg : label is 1023;
  attribute ram_offset of q2_reg : label is 0;
  attribute ram_slice_begin of q2_reg : label is 0;
  attribute ram_slice_end of q2_reg : label is 6;
begin
  s_axi_AXILiteS_BRESP(1) <= \<const0>\;
  s_axi_AXILiteS_BRESP(0) <= \<const0>\;
  s_axi_AXILiteS_RDATA(31) <= \<const0>\;
  s_axi_AXILiteS_RDATA(30) <= \<const0>\;
  s_axi_AXILiteS_RDATA(29) <= \<const0>\;
  s_axi_AXILiteS_RDATA(28) <= \<const0>\;
  s_axi_AXILiteS_RDATA(27) <= \<const0>\;
  s_axi_AXILiteS_RDATA(26) <= \<const0>\;
  s_axi_AXILiteS_RDATA(25) <= \<const0>\;
  s_axi_AXILiteS_RDATA(24) <= \<const0>\;
  s_axi_AXILiteS_RDATA(23) <= \<const0>\;
  s_axi_AXILiteS_RDATA(22) <= \<const0>\;
  s_axi_AXILiteS_RDATA(21) <= \<const0>\;
  s_axi_AXILiteS_RDATA(20) <= \<const0>\;
  s_axi_AXILiteS_RDATA(19) <= \<const0>\;
  s_axi_AXILiteS_RDATA(18) <= \<const0>\;
  s_axi_AXILiteS_RDATA(17) <= \<const0>\;
  s_axi_AXILiteS_RDATA(16) <= \<const0>\;
  s_axi_AXILiteS_RDATA(15) <= \<const0>\;
  s_axi_AXILiteS_RDATA(14) <= \<const0>\;
  s_axi_AXILiteS_RDATA(13) <= \<const0>\;
  s_axi_AXILiteS_RDATA(12) <= \<const0>\;
  s_axi_AXILiteS_RDATA(11) <= \<const0>\;
  s_axi_AXILiteS_RDATA(10) <= \<const0>\;
  s_axi_AXILiteS_RDATA(9) <= \<const0>\;
  s_axi_AXILiteS_RDATA(8) <= \<const0>\;
  s_axi_AXILiteS_RDATA(7) <= \^s_axi_axilites_rdata\(7);
  s_axi_AXILiteS_RDATA(6) <= \<const0>\;
  s_axi_AXILiteS_RDATA(5) <= \<const0>\;
  s_axi_AXILiteS_RDATA(4) <= \<const0>\;
  s_axi_AXILiteS_RDATA(3 downto 0) <= \^s_axi_axilites_rdata\(3 downto 0);
  s_axi_AXILiteS_RRESP(1) <= \<const0>\;
  s_axi_AXILiteS_RRESP(0) <= \<const0>\;
  video_dst_TDATA(31) <= \<const0>\;
  video_dst_TDATA(30 downto 24) <= \^video_dst_tdata\(30 downto 24);
  video_dst_TDATA(23) <= \<const0>\;
  video_dst_TDATA(22 downto 16) <= \^video_dst_tdata\(22 downto 16);
  video_dst_TDATA(15) <= \<const0>\;
  video_dst_TDATA(14 downto 8) <= \^video_dst_tdata\(14 downto 8);
  video_dst_TDATA(7) <= \<const0>\;
  video_dst_TDATA(6 downto 0) <= \^video_dst_tdata\(6 downto 0);
  video_dst_TDEST(0) <= \<const0>\;
  video_dst_TID(0) <= \<const0>\;
  video_dst_TKEEP(3) <= \^video_dst_tkeep\(2);
  video_dst_TKEEP(2) <= \^video_dst_tkeep\(2);
  video_dst_TKEEP(1) <= \^video_dst_tkeep\(2);
  video_dst_TKEEP(0) <= \^video_dst_tkeep\(2);
  video_dst_TSTRB(3) <= \<const0>\;
  video_dst_TSTRB(2) <= \<const0>\;
  video_dst_TSTRB(1) <= \<const0>\;
  video_dst_TSTRB(0) <= \<const0>\;
AXIvideo2Mat_U0: entity work.cam_hls_preprocess_0_0_AXIvideo2Mat
     port map (
      AXIvideo2Mat_U0_ap_ready => AXIvideo2Mat_U0_ap_ready,
      AXIvideo2Mat_U0_ap_start => AXIvideo2Mat_U0_ap_start,
      AXIvideo2Mat_U0_img_data_stream_3_V_write => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      Q(0) => AXIvideo2Mat_U0_n_3,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      src_img_data_stream_1_full_n => src_img_data_stream_1_full_n,
      src_img_data_stream_2_full_n => src_img_data_stream_2_full_n,
      src_img_data_stream_3_full_n => src_img_data_stream_3_full_n,
      src_img_data_stream_s_full_n => src_img_data_stream_s_full_n,
      start_for_Downsample_U0_full_n => start_for_Downsample_U0_full_n,
      start_once_reg => start_once_reg,
      \tmp_1_reg_474_reg[7]_0\(7 downto 0) => tmp_1_reg_474(7 downto 0),
      \tmp_9_reg_469_reg[7]_0\(7 downto 0) => tmp_9_reg_469(7 downto 0),
      \tmp_reg_464_reg[7]_0\(7 downto 0) => tmp_reg_464(7 downto 0),
      video_src_TDATA(23 downto 0) => video_src_TDATA(23 downto 0),
      video_src_TLAST(0) => video_src_TLAST(0),
      video_src_TREADY => video_src_TREADY,
      video_src_TUSER(0) => video_src_TUSER(0),
      video_src_TVALID => video_src_TVALID
    );
Convert_U0: entity work.cam_hls_preprocess_0_0_Convert
     port map (
      AXIvideo2Mat_U0_ap_start => AXIvideo2Mat_U0_ap_start,
      Convert_U0_ap_start => Convert_U0_ap_start,
      D(0) => Convert_U0_n_3,
      E(0) => Convert_U0_n_8,
      Mat2AXIvideo_U0_img_data_stream_3_V_read => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      Q(1) => dst_img_data_stream_3_U_n_3,
      Q(0) => dst_img_data_stream_3_U_n_4,
      SS(0) => ap_rst_n_inv,
      \ap_CS_fsm_reg[0]_0\(0) => Convert_U0_n_9,
      \ap_CS_fsm_reg[1]_0\ => Convert_U0_n_10,
      ap_clk => ap_clk,
      ap_idle => ap_idle,
      ap_rst_n => ap_rst_n,
      ce2 => p_22_in,
      dst_img_data_stream_1_empty_n => dst_img_data_stream_1_empty_n,
      dst_img_data_stream_2_empty_n => dst_img_data_stream_2_empty_n,
      dst_img_data_stream_3_empty_n => dst_img_data_stream_3_empty_n,
      dst_img_data_stream_s_empty_n => dst_img_data_stream_s_empty_n,
      \icmp_ln29_reg_341_pp0_iter1_reg_reg[0]_0\(0) => Convert_U0_n_13,
      \icmp_ln29_reg_341_reg[0]_0\(0) => Convert_U0_n_4,
      \icmp_ln29_reg_341_reg[0]_1\(0) => Convert_U0_n_5,
      \icmp_ln29_reg_341_reg[0]_2\(0) => Convert_U0_n_6,
      \icmp_ln29_reg_341_reg[0]_3\ => Convert_U0_n_7,
      \icmp_ln29_reg_341_reg[0]_4\ => Convert_U0_n_12,
      ifm_img_data_stream_1_full_n => ifm_img_data_stream_1_full_n,
      ifm_img_data_stream_2_full_n => ifm_img_data_stream_2_full_n,
      ifm_img_data_stream_3_full_n => ifm_img_data_stream_3_full_n,
      ifm_img_data_stream_s_full_n => ifm_img_data_stream_s_full_n,
      int_ap_idle_reg => Downsample_U0_n_7,
      int_ap_idle_reg_0 => start_for_Mat2AXIdEe_U_n_3,
      \mOutPtr_reg[1]\ => Downsample_U0_n_8,
      \mOutPtr_reg[1]_0\(1) => dst_img_data_stream_2_U_n_3,
      \mOutPtr_reg[1]_0\(0) => dst_img_data_stream_2_U_n_4,
      \mOutPtr_reg[1]_1\(1) => dst_img_data_stream_1_U_n_3,
      \mOutPtr_reg[1]_1\(0) => dst_img_data_stream_1_U_n_4,
      \mOutPtr_reg[1]_2\(1) => dst_img_data_stream_s_U_n_3,
      \mOutPtr_reg[1]_2\(0) => dst_img_data_stream_s_U_n_4,
      shiftReg_ce => shiftReg_ce,
      start_for_Downsample_U0_full_n => start_for_Downsample_U0_full_n,
      start_for_Mat2AXIvideo_U0_full_n => start_for_Mat2AXIvideo_U0_full_n,
      start_once_reg => start_once_reg,
      start_once_reg_reg_0 => Convert_U0_n_1
    );
Downsample_U0: entity work.cam_hls_preprocess_0_0_Downsample
     port map (
      AXIvideo2Mat_U0_img_data_stream_3_V_write => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      Downsample_U0_ap_start => Downsample_U0_ap_start,
      E(0) => Downsample_U0_n_2,
      Q(0) => Downsample_U0_n_5,
      SS(0) => ap_rst_n_inv,
      \and_ln50_2_reg_358_reg[0]_0\ => Downsample_U0_n_8,
      \ap_CS_fsm_reg[1]_0\ => Downsample_U0_n_6,
      \ap_CS_fsm_reg[2]_0\ => Downsample_U0_n_3,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => Downsample_U0_n_4,
      dst_img_data_stream_1_full_n => dst_img_data_stream_1_full_n,
      dst_img_data_stream_2_full_n => dst_img_data_stream_2_full_n,
      dst_img_data_stream_3_full_n => dst_img_data_stream_3_full_n,
      dst_img_data_stream_s_full_n => dst_img_data_stream_s_full_n,
      src_img_data_stream_1_empty_n => src_img_data_stream_1_empty_n,
      src_img_data_stream_2_empty_n => src_img_data_stream_2_empty_n,
      src_img_data_stream_3_empty_n => src_img_data_stream_3_empty_n,
      src_img_data_stream_s_empty_n => src_img_data_stream_s_empty_n,
      start_for_Convert_U0_full_n => start_for_Convert_U0_full_n,
      start_once_reg_reg_0 => Downsample_U0_n_1,
      start_once_reg_reg_1 => Downsample_U0_n_7
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
Mat2AXIvideo_U0: entity work.cam_hls_preprocess_0_0_Mat2AXIvideo
     port map (
      D(27) => ifm_img_data_stream_3_U_n_17,
      D(26) => ifm_img_data_stream_3_U_n_18,
      D(25) => ifm_img_data_stream_3_U_n_19,
      D(24) => ifm_img_data_stream_3_U_n_20,
      D(23) => ifm_img_data_stream_3_U_n_21,
      D(22) => ifm_img_data_stream_3_U_n_22,
      D(21) => ifm_img_data_stream_3_U_n_23,
      D(20) => ifm_img_data_stream_2_U_n_10,
      D(19) => ifm_img_data_stream_2_U_n_11,
      D(18) => ifm_img_data_stream_2_U_n_12,
      D(17) => ifm_img_data_stream_2_U_n_13,
      D(16) => ifm_img_data_stream_2_U_n_14,
      D(15) => ifm_img_data_stream_2_U_n_15,
      D(14) => ifm_img_data_stream_2_U_n_16,
      D(13) => ifm_img_data_stream_1_U_n_10,
      D(12) => ifm_img_data_stream_1_U_n_11,
      D(11) => ifm_img_data_stream_1_U_n_12,
      D(10) => ifm_img_data_stream_1_U_n_13,
      D(9) => ifm_img_data_stream_1_U_n_14,
      D(8) => ifm_img_data_stream_1_U_n_15,
      D(7) => ifm_img_data_stream_1_U_n_16,
      D(6) => ifm_img_data_stream_s_U_n_10,
      D(5) => ifm_img_data_stream_s_U_n_11,
      D(4) => ifm_img_data_stream_s_U_n_12,
      D(3) => ifm_img_data_stream_s_U_n_13,
      D(2) => ifm_img_data_stream_s_U_n_14,
      D(1) => ifm_img_data_stream_s_U_n_15,
      D(0) => ifm_img_data_stream_s_U_n_16,
      Mat2AXIvideo_U0_ap_ready => Mat2AXIvideo_U0_ap_ready,
      Mat2AXIvideo_U0_ap_start => Mat2AXIvideo_U0_ap_start,
      Mat2AXIvideo_U0_img_data_stream_3_V_read => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      Q(0) => Mat2AXIvideo_U0_n_2,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_rst_n_0 => Mat2AXIvideo_U0_n_6,
      ap_rst_n_1 => Mat2AXIvideo_U0_n_65,
      internal_empty_n_reg => Mat2AXIvideo_U0_n_4,
      \ireg_reg[32]\(28) => \regslice_both_AXI_video_strm_V_data_V_U/ibuf_inst/p_0_in\,
      \ireg_reg[32]\(27) => Mat2AXIvideo_U0_n_37,
      \ireg_reg[32]\(26) => Mat2AXIvideo_U0_n_38,
      \ireg_reg[32]\(25) => Mat2AXIvideo_U0_n_39,
      \ireg_reg[32]\(24) => Mat2AXIvideo_U0_n_40,
      \ireg_reg[32]\(23) => Mat2AXIvideo_U0_n_41,
      \ireg_reg[32]\(22) => Mat2AXIvideo_U0_n_42,
      \ireg_reg[32]\(21) => Mat2AXIvideo_U0_n_43,
      \ireg_reg[32]\(20) => Mat2AXIvideo_U0_n_44,
      \ireg_reg[32]\(19) => Mat2AXIvideo_U0_n_45,
      \ireg_reg[32]\(18) => Mat2AXIvideo_U0_n_46,
      \ireg_reg[32]\(17) => Mat2AXIvideo_U0_n_47,
      \ireg_reg[32]\(16) => Mat2AXIvideo_U0_n_48,
      \ireg_reg[32]\(15) => Mat2AXIvideo_U0_n_49,
      \ireg_reg[32]\(14) => Mat2AXIvideo_U0_n_50,
      \ireg_reg[32]\(13) => Mat2AXIvideo_U0_n_51,
      \ireg_reg[32]\(12) => Mat2AXIvideo_U0_n_52,
      \ireg_reg[32]\(11) => Mat2AXIvideo_U0_n_53,
      \ireg_reg[32]\(10) => Mat2AXIvideo_U0_n_54,
      \ireg_reg[32]\(9) => Mat2AXIvideo_U0_n_55,
      \ireg_reg[32]\(8) => Mat2AXIvideo_U0_n_56,
      \ireg_reg[32]\(7) => Mat2AXIvideo_U0_n_57,
      \ireg_reg[32]\(6) => Mat2AXIvideo_U0_n_58,
      \ireg_reg[32]\(5) => Mat2AXIvideo_U0_n_59,
      \ireg_reg[32]\(4) => Mat2AXIvideo_U0_n_60,
      \ireg_reg[32]\(3) => Mat2AXIvideo_U0_n_61,
      \ireg_reg[32]\(2) => Mat2AXIvideo_U0_n_62,
      \ireg_reg[32]\(1) => Mat2AXIvideo_U0_n_63,
      \ireg_reg[32]\(0) => Mat2AXIvideo_U0_n_64,
      \ireg_reg[32]_0\ => ifm_img_data_stream_1_U_n_9,
      \odata_reg[30]\(27) => ifm_img_data_stream_3_U_n_10,
      \odata_reg[30]\(26) => ifm_img_data_stream_3_U_n_11,
      \odata_reg[30]\(25) => ifm_img_data_stream_3_U_n_12,
      \odata_reg[30]\(24) => ifm_img_data_stream_3_U_n_13,
      \odata_reg[30]\(23) => ifm_img_data_stream_3_U_n_14,
      \odata_reg[30]\(22) => ifm_img_data_stream_3_U_n_15,
      \odata_reg[30]\(21) => ifm_img_data_stream_3_U_n_16,
      \odata_reg[30]\(20) => ifm_img_data_stream_2_U_n_3,
      \odata_reg[30]\(19) => ifm_img_data_stream_2_U_n_4,
      \odata_reg[30]\(18) => ifm_img_data_stream_2_U_n_5,
      \odata_reg[30]\(17) => ifm_img_data_stream_2_U_n_6,
      \odata_reg[30]\(16) => ifm_img_data_stream_2_U_n_7,
      \odata_reg[30]\(15) => ifm_img_data_stream_2_U_n_8,
      \odata_reg[30]\(14) => ifm_img_data_stream_2_U_n_9,
      \odata_reg[30]\(13) => ifm_img_data_stream_1_U_n_2,
      \odata_reg[30]\(12) => ifm_img_data_stream_1_U_n_3,
      \odata_reg[30]\(11) => ifm_img_data_stream_1_U_n_4,
      \odata_reg[30]\(10) => ifm_img_data_stream_1_U_n_5,
      \odata_reg[30]\(9) => ifm_img_data_stream_1_U_n_6,
      \odata_reg[30]\(8) => ifm_img_data_stream_1_U_n_7,
      \odata_reg[30]\(7) => ifm_img_data_stream_1_U_n_8,
      \odata_reg[30]\(6) => ifm_img_data_stream_s_U_n_3,
      \odata_reg[30]\(5) => ifm_img_data_stream_s_U_n_4,
      \odata_reg[30]\(4) => ifm_img_data_stream_s_U_n_5,
      \odata_reg[30]\(3) => ifm_img_data_stream_s_U_n_6,
      \odata_reg[30]\(2) => ifm_img_data_stream_s_U_n_7,
      \odata_reg[30]\(1) => ifm_img_data_stream_s_U_n_8,
      \odata_reg[30]\(0) => ifm_img_data_stream_s_U_n_9,
      \odata_reg[32]\(28) => video_dst_TVALID,
      \odata_reg[32]\(27 downto 21) => \^video_dst_tdata\(30 downto 24),
      \odata_reg[32]\(20 downto 14) => \^video_dst_tdata\(22 downto 16),
      \odata_reg[32]\(13 downto 7) => \^video_dst_tdata\(14 downto 8),
      \odata_reg[32]\(6 downto 0) => \^video_dst_tdata\(6 downto 0),
      shiftReg_ce => shiftReg_ce,
      video_dst_TKEEP(0) => \^video_dst_tkeep\(2),
      video_dst_TLAST(0) => video_dst_TLAST(0),
      video_dst_TREADY => video_dst_TREADY,
      video_dst_TUSER(0) => video_dst_TUSER(0)
    );
dst_img_data_stream_1_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A
     port map (
      ADDRBWRADDR(7 downto 0) => dst_img_data_stream_1_dout(7 downto 0),
      D(0) => Convert_U0_n_5,
      E(0) => Convert_U0_n_8,
      Q(1) => dst_img_data_stream_1_U_n_3,
      Q(0) => dst_img_data_stream_1_U_n_4,
      \SRL_SIG_reg[0][7]\(7) => src_img_data_stream_1_U_n_3,
      \SRL_SIG_reg[0][7]\(6) => src_img_data_stream_1_U_n_4,
      \SRL_SIG_reg[0][7]\(5) => src_img_data_stream_1_U_n_5,
      \SRL_SIG_reg[0][7]\(4) => src_img_data_stream_1_U_n_6,
      \SRL_SIG_reg[0][7]\(3) => src_img_data_stream_1_U_n_7,
      \SRL_SIG_reg[0][7]\(2) => src_img_data_stream_1_U_n_8,
      \SRL_SIG_reg[0][7]\(1) => src_img_data_stream_1_U_n_9,
      \SRL_SIG_reg[0][7]\(0) => src_img_data_stream_1_U_n_10,
      \SRL_SIG_reg[1][0]\ => Downsample_U0_n_8,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      dst_img_data_stream_1_empty_n => dst_img_data_stream_1_empty_n,
      dst_img_data_stream_1_full_n => dst_img_data_stream_1_full_n,
      internal_empty_n_reg_0 => Convert_U0_n_12,
      internal_full_n_reg_0 => Convert_U0_n_7
    );
dst_img_data_stream_2_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_0
     port map (
      D(0) => Convert_U0_n_4,
      E(0) => Convert_U0_n_8,
      Q(1) => dst_img_data_stream_2_U_n_3,
      Q(0) => dst_img_data_stream_2_U_n_4,
      \SRL_SIG_reg[0][7]\ => Downsample_U0_n_8,
      \SRL_SIG_reg[0][7]_0\(7) => src_img_data_stream_2_U_n_3,
      \SRL_SIG_reg[0][7]_0\(6) => src_img_data_stream_2_U_n_4,
      \SRL_SIG_reg[0][7]_0\(5) => src_img_data_stream_2_U_n_5,
      \SRL_SIG_reg[0][7]_0\(4) => src_img_data_stream_2_U_n_6,
      \SRL_SIG_reg[0][7]_0\(3) => src_img_data_stream_2_U_n_7,
      \SRL_SIG_reg[0][7]_0\(2) => src_img_data_stream_2_U_n_8,
      \SRL_SIG_reg[0][7]_0\(1) => src_img_data_stream_2_U_n_9,
      \SRL_SIG_reg[0][7]_0\(0) => src_img_data_stream_2_U_n_10,
      SS(0) => ap_rst_n_inv,
      addr2(7 downto 0) => dst_img_data_stream_2_dout(7 downto 0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      dst_img_data_stream_2_empty_n => dst_img_data_stream_2_empty_n,
      dst_img_data_stream_2_full_n => dst_img_data_stream_2_full_n,
      internal_empty_n_reg_0 => Convert_U0_n_12,
      internal_full_n_reg_0 => Convert_U0_n_7
    );
dst_img_data_stream_3_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_1
     port map (
      D(0) => Convert_U0_n_3,
      E(0) => Convert_U0_n_8,
      Q(1) => dst_img_data_stream_3_U_n_3,
      Q(0) => dst_img_data_stream_3_U_n_4,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      dst_img_data_stream_3_empty_n => dst_img_data_stream_3_empty_n,
      dst_img_data_stream_3_full_n => dst_img_data_stream_3_full_n,
      internal_empty_n_reg_0 => Convert_U0_n_12,
      internal_empty_n_reg_1 => Downsample_U0_n_8,
      internal_full_n_reg_0 => Convert_U0_n_7
    );
dst_img_data_stream_s_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_2
     port map (
      D(0) => Convert_U0_n_6,
      E(0) => Convert_U0_n_8,
      Q(1) => dst_img_data_stream_s_U_n_3,
      Q(0) => dst_img_data_stream_s_U_n_4,
      \SRL_SIG_reg[0][7]\ => Downsample_U0_n_8,
      \SRL_SIG_reg[0][7]_0\(7 downto 0) => data(7 downto 0),
      SS(0) => ap_rst_n_inv,
      addr0(7 downto 0) => dst_img_data_stream_s_dout(7 downto 0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      dst_img_data_stream_s_empty_n => dst_img_data_stream_s_empty_n,
      dst_img_data_stream_s_full_n => dst_img_data_stream_s_full_n,
      internal_empty_n_reg_0 => Convert_U0_n_12,
      internal_full_n_reg_0 => Convert_U0_n_7
    );
hls_preprocess_AXILiteS_s_axi_U: entity work.cam_hls_preprocess_0_0_hls_preprocess_AXILiteS_s_axi
     port map (
      AXIvideo2Mat_U0_ap_ready => AXIvideo2Mat_U0_ap_ready,
      AXIvideo2Mat_U0_ap_start => AXIvideo2Mat_U0_ap_start,
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_AXILiteS_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_AXILiteS_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_AXILiteS_WREADY,
      Mat2AXIvideo_U0_ap_ready => Mat2AXIvideo_U0_ap_ready,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_idle => ap_idle,
      int_ap_start_reg_0 => hls_preprocess_AXILiteS_s_axi_U_n_8,
      interrupt => interrupt,
      s_axi_AXILiteS_ARADDR(3 downto 0) => s_axi_AXILiteS_ARADDR(3 downto 0),
      s_axi_AXILiteS_ARVALID => s_axi_AXILiteS_ARVALID,
      s_axi_AXILiteS_AWADDR(3 downto 0) => s_axi_AXILiteS_AWADDR(3 downto 0),
      s_axi_AXILiteS_AWVALID => s_axi_AXILiteS_AWVALID,
      s_axi_AXILiteS_BREADY => s_axi_AXILiteS_BREADY,
      s_axi_AXILiteS_BVALID => s_axi_AXILiteS_BVALID,
      s_axi_AXILiteS_RDATA(4) => \^s_axi_axilites_rdata\(7),
      s_axi_AXILiteS_RDATA(3 downto 0) => \^s_axi_axilites_rdata\(3 downto 0),
      s_axi_AXILiteS_RREADY => s_axi_AXILiteS_RREADY,
      s_axi_AXILiteS_RVALID => s_axi_AXILiteS_RVALID,
      s_axi_AXILiteS_WDATA(2) => s_axi_AXILiteS_WDATA(7),
      s_axi_AXILiteS_WDATA(1 downto 0) => s_axi_AXILiteS_WDATA(1 downto 0),
      s_axi_AXILiteS_WSTRB(0) => s_axi_AXILiteS_WSTRB(0),
      s_axi_AXILiteS_WVALID => s_axi_AXILiteS_WVALID,
      start_for_Downsample_U0_full_n => start_for_Downsample_U0_full_n,
      start_once_reg => start_once_reg
    );
ifm_img_data_stream_1_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_3
     port map (
      D(6 downto 0) => Convert_U0_dst_data_stream_1_V_din(6 downto 0),
      E(0) => Convert_U0_n_13,
      Mat2AXIvideo_U0_img_data_stream_3_V_read => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ifm_img_data_stream_1_full_n => ifm_img_data_stream_1_full_n,
      ifm_img_data_stream_2_empty_n => ifm_img_data_stream_2_empty_n,
      ifm_img_data_stream_3_empty_n => ifm_img_data_stream_3_empty_n,
      ifm_img_data_stream_s_empty_n => ifm_img_data_stream_s_empty_n,
      internal_empty_n_reg_0 => ifm_img_data_stream_1_U_n_9,
      internal_full_n_reg_0 => Mat2AXIvideo_U0_n_6,
      \ireg[32]_i_4__0\(7) => \regslice_both_AXI_video_strm_V_data_V_U/ibuf_inst/p_0_in\,
      \ireg[32]_i_4__0\(6) => Mat2AXIvideo_U0_n_51,
      \ireg[32]_i_4__0\(5) => Mat2AXIvideo_U0_n_52,
      \ireg[32]_i_4__0\(4) => Mat2AXIvideo_U0_n_53,
      \ireg[32]_i_4__0\(3) => Mat2AXIvideo_U0_n_54,
      \ireg[32]_i_4__0\(2) => Mat2AXIvideo_U0_n_55,
      \ireg[32]_i_4__0\(1) => Mat2AXIvideo_U0_n_56,
      \ireg[32]_i_4__0\(0) => Mat2AXIvideo_U0_n_57,
      \odata_reg[14]\ => Mat2AXIvideo_U0_n_65,
      q0_reg(6) => ifm_img_data_stream_1_U_n_2,
      q0_reg(5) => ifm_img_data_stream_1_U_n_3,
      q0_reg(4) => ifm_img_data_stream_1_U_n_4,
      q0_reg(3) => ifm_img_data_stream_1_U_n_5,
      q0_reg(2) => ifm_img_data_stream_1_U_n_6,
      q0_reg(1) => ifm_img_data_stream_1_U_n_7,
      q0_reg(0) => ifm_img_data_stream_1_U_n_8,
      q0_reg_0(6) => ifm_img_data_stream_1_U_n_10,
      q0_reg_0(5) => ifm_img_data_stream_1_U_n_11,
      q0_reg_0(4) => ifm_img_data_stream_1_U_n_12,
      q0_reg_0(3) => ifm_img_data_stream_1_U_n_13,
      q0_reg_0(2) => ifm_img_data_stream_1_U_n_14,
      q0_reg_0(1) => ifm_img_data_stream_1_U_n_15,
      q0_reg_0(0) => ifm_img_data_stream_1_U_n_16,
      shiftReg_ce => shiftReg_ce
    );
ifm_img_data_stream_2_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_4
     port map (
      D(6) => ifm_img_data_stream_2_U_n_10,
      D(5) => ifm_img_data_stream_2_U_n_11,
      D(4) => ifm_img_data_stream_2_U_n_12,
      D(3) => ifm_img_data_stream_2_U_n_13,
      D(2) => ifm_img_data_stream_2_U_n_14,
      D(1) => ifm_img_data_stream_2_U_n_15,
      D(0) => ifm_img_data_stream_2_U_n_16,
      E(0) => Convert_U0_n_13,
      Mat2AXIvideo_U0_img_data_stream_3_V_read => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ifm_img_data_stream_2_empty_n => ifm_img_data_stream_2_empty_n,
      ifm_img_data_stream_2_full_n => ifm_img_data_stream_2_full_n,
      internal_full_n_reg_0 => Mat2AXIvideo_U0_n_6,
      \odata_reg[16]\ => ifm_img_data_stream_3_U_n_1,
      \odata_reg[16]_0\ => Mat2AXIvideo_U0_n_65,
      \odata_reg[17]\ => ifm_img_data_stream_3_U_n_2,
      \odata_reg[18]\ => ifm_img_data_stream_3_U_n_3,
      \odata_reg[19]\ => ifm_img_data_stream_3_U_n_4,
      \odata_reg[20]\ => ifm_img_data_stream_3_U_n_5,
      \odata_reg[21]\ => ifm_img_data_stream_3_U_n_6,
      \odata_reg[22]\(6) => Mat2AXIvideo_U0_n_44,
      \odata_reg[22]\(5) => Mat2AXIvideo_U0_n_45,
      \odata_reg[22]\(4) => Mat2AXIvideo_U0_n_46,
      \odata_reg[22]\(3) => Mat2AXIvideo_U0_n_47,
      \odata_reg[22]\(2) => Mat2AXIvideo_U0_n_48,
      \odata_reg[22]\(1) => Mat2AXIvideo_U0_n_49,
      \odata_reg[22]\(0) => Mat2AXIvideo_U0_n_50,
      \odata_reg[22]_0\ => ifm_img_data_stream_3_U_n_7,
      q2(6 downto 0) => Convert_U0_dst_data_stream_3_V_din(6 downto 0),
      q2_reg(6) => ifm_img_data_stream_2_U_n_3,
      q2_reg(5) => ifm_img_data_stream_2_U_n_4,
      q2_reg(4) => ifm_img_data_stream_2_U_n_5,
      q2_reg(3) => ifm_img_data_stream_2_U_n_6,
      q2_reg(2) => ifm_img_data_stream_2_U_n_7,
      q2_reg(1) => ifm_img_data_stream_2_U_n_8,
      q2_reg(0) => ifm_img_data_stream_2_U_n_9,
      shiftReg_ce => shiftReg_ce
    );
ifm_img_data_stream_3_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_5
     port map (
      D(6) => ifm_img_data_stream_3_U_n_17,
      D(5) => ifm_img_data_stream_3_U_n_18,
      D(4) => ifm_img_data_stream_3_U_n_19,
      D(3) => ifm_img_data_stream_3_U_n_20,
      D(2) => ifm_img_data_stream_3_U_n_21,
      D(1) => ifm_img_data_stream_3_U_n_22,
      D(0) => ifm_img_data_stream_3_U_n_23,
      E(0) => Convert_U0_n_13,
      Mat2AXIvideo_U0_img_data_stream_3_V_read => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      \SRL_SIG_reg[1][0]\ => ifm_img_data_stream_3_U_n_1,
      \SRL_SIG_reg[1][1]\ => ifm_img_data_stream_3_U_n_2,
      \SRL_SIG_reg[1][2]\ => ifm_img_data_stream_3_U_n_3,
      \SRL_SIG_reg[1][3]\ => ifm_img_data_stream_3_U_n_4,
      \SRL_SIG_reg[1][4]\ => ifm_img_data_stream_3_U_n_5,
      \SRL_SIG_reg[1][5]\ => ifm_img_data_stream_3_U_n_6,
      \SRL_SIG_reg[1][6]\ => ifm_img_data_stream_3_U_n_7,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ifm_img_data_stream_3_empty_n => ifm_img_data_stream_3_empty_n,
      ifm_img_data_stream_3_full_n => ifm_img_data_stream_3_full_n,
      internal_full_n_reg_0 => Mat2AXIvideo_U0_n_6,
      \odata_reg[30]\ => Mat2AXIvideo_U0_n_65,
      \odata_reg[30]_0\(6) => Mat2AXIvideo_U0_n_37,
      \odata_reg[30]_0\(5) => Mat2AXIvideo_U0_n_38,
      \odata_reg[30]_0\(4) => Mat2AXIvideo_U0_n_39,
      \odata_reg[30]_0\(3) => Mat2AXIvideo_U0_n_40,
      \odata_reg[30]_0\(2) => Mat2AXIvideo_U0_n_41,
      \odata_reg[30]_0\(1) => Mat2AXIvideo_U0_n_42,
      \odata_reg[30]_0\(0) => Mat2AXIvideo_U0_n_43,
      q2(6 downto 0) => Convert_U0_dst_data_stream_3_V_din(6 downto 0),
      q2_reg(6) => ifm_img_data_stream_3_U_n_10,
      q2_reg(5) => ifm_img_data_stream_3_U_n_11,
      q2_reg(4) => ifm_img_data_stream_3_U_n_12,
      q2_reg(3) => ifm_img_data_stream_3_U_n_13,
      q2_reg(2) => ifm_img_data_stream_3_U_n_14,
      q2_reg(1) => ifm_img_data_stream_3_U_n_15,
      q2_reg(0) => ifm_img_data_stream_3_U_n_16,
      shiftReg_ce => shiftReg_ce
    );
ifm_img_data_stream_s_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_6
     port map (
      D(6) => ifm_img_data_stream_s_U_n_10,
      D(5) => ifm_img_data_stream_s_U_n_11,
      D(4) => ifm_img_data_stream_s_U_n_12,
      D(3) => ifm_img_data_stream_s_U_n_13,
      D(2) => ifm_img_data_stream_s_U_n_14,
      D(1) => ifm_img_data_stream_s_U_n_15,
      D(0) => ifm_img_data_stream_s_U_n_16,
      Mat2AXIvideo_U0_img_data_stream_3_V_read => Mat2AXIvideo_U0_img_data_stream_3_V_read,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ifm_img_data_stream_s_empty_n => ifm_img_data_stream_s_empty_n,
      ifm_img_data_stream_s_full_n => ifm_img_data_stream_s_full_n,
      internal_full_n_reg_0 => Mat2AXIvideo_U0_n_6,
      \mOutPtr_reg[0]_0\(0) => Convert_U0_n_13,
      \odata_reg[6]\ => Mat2AXIvideo_U0_n_65,
      \odata_reg[6]_0\(6) => Mat2AXIvideo_U0_n_58,
      \odata_reg[6]_0\(5) => Mat2AXIvideo_U0_n_59,
      \odata_reg[6]_0\(4) => Mat2AXIvideo_U0_n_60,
      \odata_reg[6]_0\(3) => Mat2AXIvideo_U0_n_61,
      \odata_reg[6]_0\(2) => Mat2AXIvideo_U0_n_62,
      \odata_reg[6]_0\(1) => Mat2AXIvideo_U0_n_63,
      \odata_reg[6]_0\(0) => Mat2AXIvideo_U0_n_64,
      q0(6 downto 0) => Convert_U0_dst_data_stream_0_V_din(6 downto 0),
      q0_reg(6) => ifm_img_data_stream_s_U_n_3,
      q0_reg(5) => ifm_img_data_stream_s_U_n_4,
      q0_reg(4) => ifm_img_data_stream_s_U_n_5,
      q0_reg(3) => ifm_img_data_stream_s_U_n_6,
      q0_reg(2) => ifm_img_data_stream_s_U_n_7,
      q0_reg(1) => ifm_img_data_stream_s_U_n_8,
      q0_reg(0) => ifm_img_data_stream_s_U_n_9,
      shiftReg_ce => shiftReg_ce
    );
q0_reg: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 1,
      DOB_REG => 1,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0007000700060006000500050004000400030003000200020001000100000000",
      INIT_01 => X"000F000F000E000E000D000D000C000C000B000B000A000A0009000900080008",
      INIT_02 => X"0017001700160016001500150014001400130013001200120011001100100010",
      INIT_03 => X"001F001F001E001E001D001D001C001C001B001B001A001A0019001900180018",
      INIT_04 => X"0027002700260026002500250024002400230023002200220021002100200020",
      INIT_05 => X"002F002F002E002E002D002D002C002C002B002B002A002A0029002900280028",
      INIT_06 => X"0037003700360036003500350034003400330033003200320031003100300030",
      INIT_07 => X"003F003F003E003E003D003D003C003C003B003B003A003A0039003900380038",
      INIT_08 => X"0047004700460046004500450044004400430043004200420041004100400040",
      INIT_09 => X"004F004F004E004E004D004D004C004C004B004B004A004A0049004900480048",
      INIT_0A => X"0057005700560056005500550054005400530053005200520051005100500050",
      INIT_0B => X"005F005F005E005E005D005D005C005C005B005B005A005A0059005900580058",
      INIT_0C => X"0067006700660066006500650064006400630063006200620061006100600060",
      INIT_0D => X"006F006F006E006E006D006D006C006C006B006B006A006A0069006900680068",
      INIT_0E => X"0077007700760076007500750074007400730073007200720071007100700070",
      INIT_0F => X"007F007F007E007E007D007D007C007C007B007B007A007A0079007900780078",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 4) => dst_img_data_stream_s_dout(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 12) => B"00",
      ADDRBWRADDR(11 downto 4) => dst_img_data_stream_1_dout(7 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => NLW_q0_reg_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_q0_reg_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_q0_reg_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_q0_reg_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DINADIN(15 downto 0) => B"0000000001111111",
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 7) => NLW_q0_reg_DOUTADOUT_UNCONNECTED(15 downto 7),
      DOUTADOUT(6 downto 0) => Convert_U0_dst_data_stream_0_V_din(6 downto 0),
      DOUTBDOUT(15 downto 7) => NLW_q0_reg_DOUTBDOUT_UNCONNECTED(15 downto 7),
      DOUTBDOUT(6 downto 0) => Convert_U0_dst_data_stream_1_V_din(6 downto 0),
      DOUTPADOUTP(1 downto 0) => NLW_q0_reg_DOUTPADOUTP_UNCONNECTED(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => NLW_q0_reg_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => p_22_in,
      ENBWREN => p_22_in,
      REGCEAREGCE => shiftReg_ce,
      REGCEB => shiftReg_ce,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
q2_reg: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "INDEPENDENT",
      DOA_REG => 1,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0007000700060006000500050004000400030003000200020001000100000000",
      INIT_01 => X"000F000F000E000E000D000D000C000C000B000B000A000A0009000900080008",
      INIT_02 => X"0017001700160016001500150014001400130013001200120011001100100010",
      INIT_03 => X"001F001F001E001E001D001D001C001C001B001B001A001A0019001900180018",
      INIT_04 => X"0027002700260026002500250024002400230023002200220021002100200020",
      INIT_05 => X"002F002F002E002E002D002D002C002C002B002B002A002A0029002900280028",
      INIT_06 => X"0037003700360036003500350034003400330033003200320031003100300030",
      INIT_07 => X"003F003F003E003E003D003D003C003C003B003B003A003A0039003900380038",
      INIT_08 => X"0047004700460046004500450044004400430043004200420041004100400040",
      INIT_09 => X"004F004F004E004E004D004D004C004C004B004B004A004A0049004900480048",
      INIT_0A => X"0057005700560056005500550054005400530053005200520051005100500050",
      INIT_0B => X"005F005F005E005E005D005D005C005C005B005B005A005A0059005900580058",
      INIT_0C => X"0067006700660066006500650064006400630063006200620061006100600060",
      INIT_0D => X"006F006F006E006E006D006D006C006C006B006B006A006A0069006900680068",
      INIT_0E => X"0077007700760076007500750074007400730073007200720071007100700070",
      INIT_0F => X"007F007F007E007E007D007D007C007C007B007B007A007A0079007900780078",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 12) => B"00",
      ADDRARDADDR(11 downto 4) => dst_img_data_stream_2_dout(7 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '1',
      CASDOMUXEN_B => '1',
      CASDOUTA(15 downto 0) => NLW_q2_reg_CASDOUTA_UNCONNECTED(15 downto 0),
      CASDOUTB(15 downto 0) => NLW_q2_reg_CASDOUTB_UNCONNECTED(15 downto 0),
      CASDOUTPA(1 downto 0) => NLW_q2_reg_CASDOUTPA_UNCONNECTED(1 downto 0),
      CASDOUTPB(1 downto 0) => NLW_q2_reg_CASDOUTPB_UNCONNECTED(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '1',
      CASOREGIMUXEN_B => '1',
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DINADIN(15 downto 0) => B"0000000001111111",
      DINBDIN(15 downto 0) => B"1111111111111111",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"11",
      DOUTADOUT(15 downto 7) => NLW_q2_reg_DOUTADOUT_UNCONNECTED(15 downto 7),
      DOUTADOUT(6 downto 0) => Convert_U0_dst_data_stream_3_V_din(6 downto 0),
      DOUTBDOUT(15 downto 0) => NLW_q2_reg_DOUTBDOUT_UNCONNECTED(15 downto 0),
      DOUTPADOUTP(1 downto 0) => NLW_q2_reg_DOUTPADOUTP_UNCONNECTED(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => NLW_q2_reg_DOUTPBDOUTP_UNCONNECTED(1 downto 0),
      ENARDEN => p_22_in,
      ENBWREN => '0',
      REGCEAREGCE => shiftReg_ce,
      REGCEB => '1',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
src_img_data_stream_1_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_7
     port map (
      AXIvideo2Mat_U0_img_data_stream_3_V_write => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D(7 downto 0) => tmp_9_reg_469(7 downto 0),
      E(0) => Downsample_U0_n_2,
      \SRL_SIG_reg[0][7]\(7) => src_img_data_stream_1_U_n_3,
      \SRL_SIG_reg[0][7]\(6) => src_img_data_stream_1_U_n_4,
      \SRL_SIG_reg[0][7]\(5) => src_img_data_stream_1_U_n_5,
      \SRL_SIG_reg[0][7]\(4) => src_img_data_stream_1_U_n_6,
      \SRL_SIG_reg[0][7]\(3) => src_img_data_stream_1_U_n_7,
      \SRL_SIG_reg[0][7]\(2) => src_img_data_stream_1_U_n_8,
      \SRL_SIG_reg[0][7]\(1) => src_img_data_stream_1_U_n_9,
      \SRL_SIG_reg[0][7]\(0) => src_img_data_stream_1_U_n_10,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      internal_full_n_reg_0 => Downsample_U0_n_4,
      internal_full_n_reg_1 => Downsample_U0_n_3,
      src_img_data_stream_1_empty_n => src_img_data_stream_1_empty_n,
      src_img_data_stream_1_full_n => src_img_data_stream_1_full_n
    );
src_img_data_stream_2_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_8
     port map (
      AXIvideo2Mat_U0_img_data_stream_3_V_write => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D(7 downto 0) => tmp_1_reg_474(7 downto 0),
      E(0) => Downsample_U0_n_2,
      \SRL_SIG_reg[0][7]\(7) => src_img_data_stream_2_U_n_3,
      \SRL_SIG_reg[0][7]\(6) => src_img_data_stream_2_U_n_4,
      \SRL_SIG_reg[0][7]\(5) => src_img_data_stream_2_U_n_5,
      \SRL_SIG_reg[0][7]\(4) => src_img_data_stream_2_U_n_6,
      \SRL_SIG_reg[0][7]\(3) => src_img_data_stream_2_U_n_7,
      \SRL_SIG_reg[0][7]\(2) => src_img_data_stream_2_U_n_8,
      \SRL_SIG_reg[0][7]\(1) => src_img_data_stream_2_U_n_9,
      \SRL_SIG_reg[0][7]\(0) => src_img_data_stream_2_U_n_10,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      internal_full_n_reg_0 => Downsample_U0_n_4,
      internal_full_n_reg_1 => Downsample_U0_n_3,
      src_img_data_stream_2_empty_n => src_img_data_stream_2_empty_n,
      src_img_data_stream_2_full_n => src_img_data_stream_2_full_n
    );
src_img_data_stream_3_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_9
     port map (
      AXIvideo2Mat_U0_img_data_stream_3_V_write => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      E(0) => Downsample_U0_n_2,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      internal_full_n_reg_0 => Downsample_U0_n_4,
      internal_full_n_reg_1 => Downsample_U0_n_3,
      src_img_data_stream_3_empty_n => src_img_data_stream_3_empty_n,
      src_img_data_stream_3_full_n => src_img_data_stream_3_full_n
    );
src_img_data_stream_s_U: entity work.cam_hls_preprocess_0_0_fifo_w8_d2_A_10
     port map (
      AXIvideo2Mat_U0_img_data_stream_3_V_write => AXIvideo2Mat_U0_img_data_stream_3_V_write,
      D(7 downto 0) => tmp_reg_464(7 downto 0),
      E(0) => Downsample_U0_n_2,
      \SRL_SIG_reg[0][7]\(7 downto 0) => data(7 downto 0),
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      internal_full_n_reg_0 => Downsample_U0_n_4,
      internal_full_n_reg_1 => Downsample_U0_n_3,
      src_img_data_stream_s_empty_n => src_img_data_stream_s_empty_n,
      src_img_data_stream_s_full_n => src_img_data_stream_s_full_n
    );
start_for_Convertcud_U: entity work.cam_hls_preprocess_0_0_start_for_Convertcud
     port map (
      Convert_U0_ap_start => Convert_U0_ap_start,
      Downsample_U0_ap_start => Downsample_U0_ap_start,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      internal_empty_n_reg_0 => start_for_Convertcud_U_n_3,
      internal_empty_n_reg_1 => Convert_U0_n_1,
      internal_full_n_reg_0 => start_for_Downsambkb_U_n_3,
      \mOutPtr_reg[0]_0\ => Convert_U0_n_10,
      \mOutPtr_reg[1]_0\ => Downsample_U0_n_1,
      start_for_Convert_U0_full_n => start_for_Convert_U0_full_n,
      start_for_Mat2AXIvideo_U0_full_n => start_for_Mat2AXIvideo_U0_full_n
    );
start_for_Downsambkb_U: entity work.cam_hls_preprocess_0_0_start_for_Downsambkb
     port map (
      AXIvideo2Mat_U0_ap_start => AXIvideo2Mat_U0_ap_start,
      Downsample_U0_ap_start => Downsample_U0_ap_start,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      internal_empty_n_reg_0 => start_for_Downsambkb_U_n_3,
      internal_empty_n_reg_1 => hls_preprocess_AXILiteS_s_axi_U_n_8,
      internal_full_n_reg_0 => Downsample_U0_n_1,
      \mOutPtr_reg[0]_0\ => Downsample_U0_n_6,
      start_for_Convert_U0_full_n => start_for_Convert_U0_full_n,
      start_for_Downsample_U0_full_n => start_for_Downsample_U0_full_n,
      start_once_reg => start_once_reg
    );
start_for_Mat2AXIdEe_U: entity work.cam_hls_preprocess_0_0_start_for_Mat2AXIdEe
     port map (
      Convert_U0_ap_start => Convert_U0_ap_start,
      Mat2AXIvideo_U0_ap_ready => Mat2AXIvideo_U0_ap_ready,
      Mat2AXIvideo_U0_ap_start => Mat2AXIvideo_U0_ap_start,
      Q(0) => Downsample_U0_n_5,
      SS(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      int_ap_idle_reg(0) => Convert_U0_n_9,
      int_ap_idle_reg_0(0) => Mat2AXIvideo_U0_n_2,
      int_ap_idle_reg_1(0) => AXIvideo2Mat_U0_n_3,
      internal_empty_n_reg_0 => start_for_Mat2AXIdEe_U_n_3,
      internal_empty_n_reg_1 => start_for_Convertcud_U_n_3,
      \mOutPtr_reg[1]_0\ => Convert_U0_n_1,
      \mOutPtr_reg[1]_1\ => Mat2AXIvideo_U0_n_4,
      start_for_Mat2AXIvideo_U0_full_n => start_for_Mat2AXIvideo_U0_full_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cam_hls_preprocess_0_0 is
  port (
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    video_src_TVALID : in STD_LOGIC;
    video_src_TREADY : out STD_LOGIC;
    video_src_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    video_src_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    video_src_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    video_src_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_src_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_src_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_src_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TVALID : out STD_LOGIC;
    video_dst_TREADY : in STD_LOGIC;
    video_dst_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    video_dst_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    video_dst_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    video_dst_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    video_dst_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cam_hls_preprocess_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cam_hls_preprocess_0_0 : entity is "cam_hls_preprocess_0_0,hls_preprocess,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of cam_hls_preprocess_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of cam_hls_preprocess_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of cam_hls_preprocess_0_0 : entity is "hls_preprocess,Vivado 2020.1";
  attribute hls_module : string;
  attribute hls_module of cam_hls_preprocess_0_0 : entity is "yes";
end cam_hls_preprocess_0_0;

architecture STRUCTURE of cam_hls_preprocess_0_0 is
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_S_AXI_AXILITES_ADDR_WIDTH : integer;
  attribute C_S_AXI_AXILITES_ADDR_WIDTH of inst : label is 4;
  attribute C_S_AXI_AXILITES_DATA_WIDTH : integer;
  attribute C_S_AXI_AXILITES_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH : integer;
  attribute C_S_AXI_AXILITES_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_AXILiteS:video_src:video_dst, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARREADY";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARVALID";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWREADY";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWVALID";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BREADY";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BVALID";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_AXILiteS_RREADY : signal is "XIL_INTERFACENAME s_axi_AXILiteS, ADDR_WIDTH 4, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 250000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RVALID";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WREADY";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WVALID";
  attribute X_INTERFACE_INFO of video_dst_TREADY : signal is "xilinx.com:interface:axis:1.0 video_dst TREADY";
  attribute X_INTERFACE_INFO of video_dst_TVALID : signal is "xilinx.com:interface:axis:1.0 video_dst TVALID";
  attribute X_INTERFACE_INFO of video_src_TREADY : signal is "xilinx.com:interface:axis:1.0 video_src TREADY";
  attribute X_INTERFACE_INFO of video_src_TVALID : signal is "xilinx.com:interface:axis:1.0 video_src TVALID";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS ARADDR";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS AWADDR";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS BRESP";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RDATA";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS RRESP";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WDATA";
  attribute X_INTERFACE_INFO of s_axi_AXILiteS_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_AXILiteS WSTRB";
  attribute X_INTERFACE_INFO of video_dst_TDATA : signal is "xilinx.com:interface:axis:1.0 video_dst TDATA";
  attribute X_INTERFACE_INFO of video_dst_TDEST : signal is "xilinx.com:interface:axis:1.0 video_dst TDEST";
  attribute X_INTERFACE_PARAMETER of video_dst_TDEST : signal is "XIL_INTERFACENAME video_dst, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of video_dst_TID : signal is "xilinx.com:interface:axis:1.0 video_dst TID";
  attribute X_INTERFACE_INFO of video_dst_TKEEP : signal is "xilinx.com:interface:axis:1.0 video_dst TKEEP";
  attribute X_INTERFACE_INFO of video_dst_TLAST : signal is "xilinx.com:interface:axis:1.0 video_dst TLAST";
  attribute X_INTERFACE_INFO of video_dst_TSTRB : signal is "xilinx.com:interface:axis:1.0 video_dst TSTRB";
  attribute X_INTERFACE_INFO of video_dst_TUSER : signal is "xilinx.com:interface:axis:1.0 video_dst TUSER";
  attribute X_INTERFACE_INFO of video_src_TDATA : signal is "xilinx.com:interface:axis:1.0 video_src TDATA";
  attribute X_INTERFACE_INFO of video_src_TDEST : signal is "xilinx.com:interface:axis:1.0 video_src TDEST";
  attribute X_INTERFACE_PARAMETER of video_src_TDEST : signal is "XIL_INTERFACENAME video_src, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN cam_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of video_src_TID : signal is "xilinx.com:interface:axis:1.0 video_src TID";
  attribute X_INTERFACE_INFO of video_src_TKEEP : signal is "xilinx.com:interface:axis:1.0 video_src TKEEP";
  attribute X_INTERFACE_INFO of video_src_TLAST : signal is "xilinx.com:interface:axis:1.0 video_src TLAST";
  attribute X_INTERFACE_INFO of video_src_TSTRB : signal is "xilinx.com:interface:axis:1.0 video_src TSTRB";
  attribute X_INTERFACE_INFO of video_src_TUSER : signal is "xilinx.com:interface:axis:1.0 video_src TUSER";
begin
inst: entity work.cam_hls_preprocess_0_0_hls_preprocess
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      s_axi_AXILiteS_ARADDR(3 downto 0) => s_axi_AXILiteS_ARADDR(3 downto 0),
      s_axi_AXILiteS_ARREADY => s_axi_AXILiteS_ARREADY,
      s_axi_AXILiteS_ARVALID => s_axi_AXILiteS_ARVALID,
      s_axi_AXILiteS_AWADDR(3 downto 0) => s_axi_AXILiteS_AWADDR(3 downto 0),
      s_axi_AXILiteS_AWREADY => s_axi_AXILiteS_AWREADY,
      s_axi_AXILiteS_AWVALID => s_axi_AXILiteS_AWVALID,
      s_axi_AXILiteS_BREADY => s_axi_AXILiteS_BREADY,
      s_axi_AXILiteS_BRESP(1 downto 0) => s_axi_AXILiteS_BRESP(1 downto 0),
      s_axi_AXILiteS_BVALID => s_axi_AXILiteS_BVALID,
      s_axi_AXILiteS_RDATA(31 downto 0) => s_axi_AXILiteS_RDATA(31 downto 0),
      s_axi_AXILiteS_RREADY => s_axi_AXILiteS_RREADY,
      s_axi_AXILiteS_RRESP(1 downto 0) => s_axi_AXILiteS_RRESP(1 downto 0),
      s_axi_AXILiteS_RVALID => s_axi_AXILiteS_RVALID,
      s_axi_AXILiteS_WDATA(31 downto 0) => s_axi_AXILiteS_WDATA(31 downto 0),
      s_axi_AXILiteS_WREADY => s_axi_AXILiteS_WREADY,
      s_axi_AXILiteS_WSTRB(3 downto 0) => s_axi_AXILiteS_WSTRB(3 downto 0),
      s_axi_AXILiteS_WVALID => s_axi_AXILiteS_WVALID,
      video_dst_TDATA(31 downto 0) => video_dst_TDATA(31 downto 0),
      video_dst_TDEST(0) => video_dst_TDEST(0),
      video_dst_TID(0) => video_dst_TID(0),
      video_dst_TKEEP(3 downto 0) => video_dst_TKEEP(3 downto 0),
      video_dst_TLAST(0) => video_dst_TLAST(0),
      video_dst_TREADY => video_dst_TREADY,
      video_dst_TSTRB(3 downto 0) => video_dst_TSTRB(3 downto 0),
      video_dst_TUSER(0) => video_dst_TUSER(0),
      video_dst_TVALID => video_dst_TVALID,
      video_src_TDATA(31 downto 0) => video_src_TDATA(31 downto 0),
      video_src_TDEST(0) => video_src_TDEST(0),
      video_src_TID(0) => video_src_TID(0),
      video_src_TKEEP(3 downto 0) => video_src_TKEEP(3 downto 0),
      video_src_TLAST(0) => video_src_TLAST(0),
      video_src_TREADY => video_src_TREADY,
      video_src_TSTRB(3 downto 0) => video_src_TSTRB(3 downto 0),
      video_src_TUSER(0) => video_src_TUSER(0),
      video_src_TVALID => video_src_TVALID
    );
end STRUCTURE;
