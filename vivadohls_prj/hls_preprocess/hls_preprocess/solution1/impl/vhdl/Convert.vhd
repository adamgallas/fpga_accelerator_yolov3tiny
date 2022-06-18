-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Convert is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    src_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_0_V_empty_n : IN STD_LOGIC;
    src_data_stream_0_V_read : OUT STD_LOGIC;
    src_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_1_V_empty_n : IN STD_LOGIC;
    src_data_stream_1_V_read : OUT STD_LOGIC;
    src_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_2_V_empty_n : IN STD_LOGIC;
    src_data_stream_2_V_read : OUT STD_LOGIC;
    src_data_stream_3_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    src_data_stream_3_V_empty_n : IN STD_LOGIC;
    src_data_stream_3_V_read : OUT STD_LOGIC;
    dst_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_data_stream_0_V_full_n : IN STD_LOGIC;
    dst_data_stream_0_V_write : OUT STD_LOGIC;
    dst_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_data_stream_1_V_full_n : IN STD_LOGIC;
    dst_data_stream_1_V_write : OUT STD_LOGIC;
    dst_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_data_stream_2_V_full_n : IN STD_LOGIC;
    dst_data_stream_2_V_write : OUT STD_LOGIC;
    dst_data_stream_3_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_data_stream_3_V_full_n : IN STD_LOGIC;
    dst_data_stream_3_V_write : OUT STD_LOGIC );
end;


architecture behav of Convert is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv9_102 : STD_LOGIC_VECTOR (8 downto 0) := "100000010";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv9_1A2 : STD_LOGIC_VECTOR (8 downto 0) := "110100010";

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal quant_table_address0 : STD_LOGIC_VECTOR (7 downto 0);
    signal quant_table_ce0 : STD_LOGIC;
    signal quant_table_q0 : STD_LOGIC_VECTOR (6 downto 0);
    signal quant_table_address1 : STD_LOGIC_VECTOR (7 downto 0);
    signal quant_table_ce1 : STD_LOGIC;
    signal quant_table_q1 : STD_LOGIC_VECTOR (6 downto 0);
    signal quant_table_address2 : STD_LOGIC_VECTOR (7 downto 0);
    signal quant_table_ce2 : STD_LOGIC;
    signal quant_table_q2 : STD_LOGIC_VECTOR (6 downto 0);
    signal src_data_stream_0_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln29_reg_341 : STD_LOGIC_VECTOR (0 downto 0);
    signal src_data_stream_1_V_blk_n : STD_LOGIC;
    signal src_data_stream_2_V_blk_n : STD_LOGIC;
    signal src_data_stream_3_V_blk_n : STD_LOGIC;
    signal dst_data_stream_0_V_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal icmp_ln29_reg_341_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal dst_data_stream_1_V_blk_n : STD_LOGIC;
    signal dst_data_stream_2_V_blk_n : STD_LOGIC;
    signal dst_data_stream_3_V_blk_n : STD_LOGIC;
    signal j_0_reg_266 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln27_fu_277_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_283_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_reg_336 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln29_fu_289_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_fu_295_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal i_0_reg_255 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal zext_ln33_fu_301_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln34_fu_306_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln35_fu_311_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_14_fu_326_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component Convert_quant_table IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (6 downto 0);
        address1 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (6 downto 0);
        address2 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR (6 downto 0) );
    end component;



begin
    quant_table_U : component Convert_quant_table
    generic map (
        DataWidth => 7,
        AddressRange => 256,
        AddressWidth => 8)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => quant_table_address0,
        ce0 => quant_table_ce0,
        q0 => quant_table_q0,
        address1 => quant_table_address1,
        ce1 => quant_table_ce1,
        q1 => quant_table_q1,
        address2 => quant_table_address2,
        ce2 => quant_table_ce2,
        q2 => quant_table_q2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln27_fu_277_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln27_fu_277_p2 = ap_const_lv1_0))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln27_fu_277_p2 = ap_const_lv1_0))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_255_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                i_0_reg_255 <= i_reg_336;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_reg_255 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    j_0_reg_266_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_fu_289_p2 = ap_const_lv1_0))) then 
                j_0_reg_266 <= j_fu_295_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln27_fu_277_p2 = ap_const_lv1_0))) then 
                j_0_reg_266 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_336 <= i_fu_283_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln29_reg_341 <= icmp_ln29_fu_289_p2;
                icmp_ln29_reg_341_pp0_iter1_reg <= icmp_ln29_reg_341;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, icmp_ln27_fu_277_p2, ap_CS_fsm_state2, icmp_ln29_fu_289_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln27_fu_277_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln29_fu_289_p2 = ap_const_lv1_1))) and not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln29_fu_289_p2 = ap_const_lv1_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state6 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(src_data_stream_0_V_empty_n, src_data_stream_1_V_empty_n, src_data_stream_2_V_empty_n, src_data_stream_3_V_empty_n, dst_data_stream_0_V_full_n, dst_data_stream_1_V_full_n, dst_data_stream_2_V_full_n, dst_data_stream_3_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln29_reg_341, ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_01001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((src_data_stream_3_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_2_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_1_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_0_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)))) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (((dst_data_stream_3_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_2_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_1_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_0_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(src_data_stream_0_V_empty_n, src_data_stream_1_V_empty_n, src_data_stream_2_V_empty_n, src_data_stream_3_V_empty_n, dst_data_stream_0_V_full_n, dst_data_stream_1_V_full_n, dst_data_stream_2_V_full_n, dst_data_stream_3_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln29_reg_341, ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((src_data_stream_3_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_2_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_1_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_0_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)))) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (((dst_data_stream_3_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_2_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_1_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_0_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(src_data_stream_0_V_empty_n, src_data_stream_1_V_empty_n, src_data_stream_2_V_empty_n, src_data_stream_3_V_empty_n, dst_data_stream_0_V_full_n, dst_data_stream_1_V_full_n, dst_data_stream_2_V_full_n, dst_data_stream_3_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln29_reg_341, ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((src_data_stream_3_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_2_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_1_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_0_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)))) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (((dst_data_stream_3_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_2_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_1_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_0_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)))));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_pp0_stage0_iter1_assign_proc : process(src_data_stream_0_V_empty_n, src_data_stream_1_V_empty_n, src_data_stream_2_V_empty_n, src_data_stream_3_V_empty_n, icmp_ln29_reg_341)
    begin
                ap_block_state4_pp0_stage0_iter1 <= (((src_data_stream_3_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_2_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_1_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)) or ((src_data_stream_0_V_empty_n = ap_const_logic_0) and (icmp_ln29_reg_341 = ap_const_lv1_0)));
    end process;


    ap_block_state5_pp0_stage0_iter2_assign_proc : process(dst_data_stream_0_V_full_n, dst_data_stream_1_V_full_n, dst_data_stream_2_V_full_n, dst_data_stream_3_V_full_n, icmp_ln29_reg_341_pp0_iter1_reg)
    begin
                ap_block_state5_pp0_stage0_iter2 <= (((dst_data_stream_3_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_2_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_1_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)) or ((dst_data_stream_0_V_full_n = ap_const_logic_0) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0)));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln29_fu_289_p2)
    begin
        if ((icmp_ln29_fu_289_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, icmp_ln27_fu_277_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln27_fu_277_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    dst_data_stream_0_V_blk_n_assign_proc : process(dst_data_stream_0_V_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0))) then 
            dst_data_stream_0_V_blk_n <= dst_data_stream_0_V_full_n;
        else 
            dst_data_stream_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst_data_stream_0_V_din <= std_logic_vector(IEEE.numeric_std.resize(unsigned(quant_table_q0),8));

    dst_data_stream_0_V_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0))) then 
            dst_data_stream_0_V_write <= ap_const_logic_1;
        else 
            dst_data_stream_0_V_write <= ap_const_logic_0;
        end if; 
    end process;


    dst_data_stream_1_V_blk_n_assign_proc : process(dst_data_stream_1_V_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0))) then 
            dst_data_stream_1_V_blk_n <= dst_data_stream_1_V_full_n;
        else 
            dst_data_stream_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst_data_stream_1_V_din <= std_logic_vector(IEEE.numeric_std.resize(unsigned(quant_table_q1),8));

    dst_data_stream_1_V_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0))) then 
            dst_data_stream_1_V_write <= ap_const_logic_1;
        else 
            dst_data_stream_1_V_write <= ap_const_logic_0;
        end if; 
    end process;


    dst_data_stream_2_V_blk_n_assign_proc : process(dst_data_stream_2_V_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0))) then 
            dst_data_stream_2_V_blk_n <= dst_data_stream_2_V_full_n;
        else 
            dst_data_stream_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst_data_stream_2_V_din <= tmp_14_fu_326_p1;

    dst_data_stream_2_V_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0))) then 
            dst_data_stream_2_V_write <= ap_const_logic_1;
        else 
            dst_data_stream_2_V_write <= ap_const_logic_0;
        end if; 
    end process;


    dst_data_stream_3_V_blk_n_assign_proc : process(dst_data_stream_3_V_full_n, ap_block_pp0_stage0, ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0))) then 
            dst_data_stream_3_V_blk_n <= dst_data_stream_3_V_full_n;
        else 
            dst_data_stream_3_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst_data_stream_3_V_din <= tmp_14_fu_326_p1;

    dst_data_stream_3_V_write_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln29_reg_341_pp0_iter1_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_reg_341_pp0_iter1_reg = ap_const_lv1_0))) then 
            dst_data_stream_3_V_write <= ap_const_logic_1;
        else 
            dst_data_stream_3_V_write <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_283_p2 <= std_logic_vector(unsigned(i_0_reg_255) + unsigned(ap_const_lv9_1));
    icmp_ln27_fu_277_p2 <= "1" when (i_0_reg_255 = ap_const_lv9_102) else "0";
    icmp_ln29_fu_289_p2 <= "1" when (j_0_reg_266 = ap_const_lv9_1A2) else "0";

    internal_ap_ready_assign_proc : process(icmp_ln27_fu_277_p2, ap_CS_fsm_state2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln27_fu_277_p2 = ap_const_lv1_1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    j_fu_295_p2 <= std_logic_vector(unsigned(j_0_reg_266) + unsigned(ap_const_lv9_1));
    quant_table_address0 <= zext_ln33_fu_301_p1(8 - 1 downto 0);
    quant_table_address1 <= zext_ln34_fu_306_p1(8 - 1 downto 0);
    quant_table_address2 <= zext_ln35_fu_311_p1(8 - 1 downto 0);

    quant_table_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            quant_table_ce0 <= ap_const_logic_1;
        else 
            quant_table_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    quant_table_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            quant_table_ce1 <= ap_const_logic_1;
        else 
            quant_table_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    quant_table_ce2_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            quant_table_ce2 <= ap_const_logic_1;
        else 
            quant_table_ce2 <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;


    src_data_stream_0_V_blk_n_assign_proc : process(src_data_stream_0_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln29_reg_341)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln29_reg_341 = ap_const_lv1_0))) then 
            src_data_stream_0_V_blk_n <= src_data_stream_0_V_empty_n;
        else 
            src_data_stream_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_0_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln29_reg_341, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_reg_341 = ap_const_lv1_0))) then 
            src_data_stream_0_V_read <= ap_const_logic_1;
        else 
            src_data_stream_0_V_read <= ap_const_logic_0;
        end if; 
    end process;


    src_data_stream_1_V_blk_n_assign_proc : process(src_data_stream_1_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln29_reg_341)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln29_reg_341 = ap_const_lv1_0))) then 
            src_data_stream_1_V_blk_n <= src_data_stream_1_V_empty_n;
        else 
            src_data_stream_1_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_1_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln29_reg_341, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_reg_341 = ap_const_lv1_0))) then 
            src_data_stream_1_V_read <= ap_const_logic_1;
        else 
            src_data_stream_1_V_read <= ap_const_logic_0;
        end if; 
    end process;


    src_data_stream_2_V_blk_n_assign_proc : process(src_data_stream_2_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln29_reg_341)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln29_reg_341 = ap_const_lv1_0))) then 
            src_data_stream_2_V_blk_n <= src_data_stream_2_V_empty_n;
        else 
            src_data_stream_2_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_2_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln29_reg_341, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_reg_341 = ap_const_lv1_0))) then 
            src_data_stream_2_V_read <= ap_const_logic_1;
        else 
            src_data_stream_2_V_read <= ap_const_logic_0;
        end if; 
    end process;


    src_data_stream_3_V_blk_n_assign_proc : process(src_data_stream_3_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln29_reg_341)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln29_reg_341 = ap_const_lv1_0))) then 
            src_data_stream_3_V_blk_n <= src_data_stream_3_V_empty_n;
        else 
            src_data_stream_3_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    src_data_stream_3_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln29_reg_341, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln29_reg_341 = ap_const_lv1_0))) then 
            src_data_stream_3_V_read <= ap_const_logic_1;
        else 
            src_data_stream_3_V_read <= ap_const_logic_0;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    tmp_14_fu_326_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(quant_table_q2),8));
    zext_ln33_fu_301_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(src_data_stream_0_V_dout),64));
    zext_ln34_fu_306_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(src_data_stream_1_V_dout),64));
    zext_ln35_fu_311_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(src_data_stream_2_V_dout),64));
end behav;
