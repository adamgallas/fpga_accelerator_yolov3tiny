-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Convert_quant_table_rom is 
    generic(
             DWIDTH     : integer := 7; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 256
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          addr2      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce2       : in std_logic; 
          q2         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Convert_quant_table_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr2_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem0 : mem_array := (
    0 to 1=> "0000000", 2 to 3=> "0000001", 4 to 5=> "0000010", 6 to 7=> "0000011", 
    8 to 9=> "0000100", 10 to 11=> "0000101", 12 to 13=> "0000110", 14 to 15=> "0000111", 
    16 to 17=> "0001000", 18 to 19=> "0001001", 20 to 21=> "0001010", 22 to 23=> "0001011", 
    24 to 25=> "0001100", 26 to 27=> "0001101", 28 to 29=> "0001110", 30 to 31=> "0001111", 
    32 to 33=> "0010000", 34 to 35=> "0010001", 36 to 37=> "0010010", 38 to 39=> "0010011", 
    40 to 41=> "0010100", 42 to 43=> "0010101", 44 to 45=> "0010110", 46 to 47=> "0010111", 
    48 to 49=> "0011000", 50 to 51=> "0011001", 52 to 53=> "0011010", 54 to 55=> "0011011", 
    56 to 57=> "0011100", 58 to 59=> "0011101", 60 to 61=> "0011110", 62 to 63=> "0011111", 
    64 to 65=> "0100000", 66 to 67=> "0100001", 68 to 69=> "0100010", 70 to 71=> "0100011", 
    72 to 73=> "0100100", 74 to 75=> "0100101", 76 to 77=> "0100110", 78 to 79=> "0100111", 
    80 to 81=> "0101000", 82 to 83=> "0101001", 84 to 85=> "0101010", 86 to 87=> "0101011", 
    88 to 89=> "0101100", 90 to 91=> "0101101", 92 to 93=> "0101110", 94 to 95=> "0101111", 
    96 to 97=> "0110000", 98 to 99=> "0110001", 100 to 101=> "0110010", 102 to 103=> "0110011", 
    104 to 105=> "0110100", 106 to 107=> "0110101", 108 to 109=> "0110110", 110 to 111=> "0110111", 
    112 to 113=> "0111000", 114 to 115=> "0111001", 116 to 117=> "0111010", 118 to 119=> "0111011", 
    120 to 121=> "0111100", 122 to 123=> "0111101", 124 to 125=> "0111110", 126 to 127=> "0111111", 
    128 to 129=> "1000000", 130 to 131=> "1000001", 132 to 133=> "1000010", 134 to 135=> "1000011", 
    136 to 137=> "1000100", 138 to 139=> "1000101", 140 to 141=> "1000110", 142 to 143=> "1000111", 
    144 to 145=> "1001000", 146 to 147=> "1001001", 148 to 149=> "1001010", 150 to 151=> "1001011", 
    152 to 153=> "1001100", 154 to 155=> "1001101", 156 to 157=> "1001110", 158 to 159=> "1001111", 
    160 to 161=> "1010000", 162 to 163=> "1010001", 164 to 165=> "1010010", 166 to 167=> "1010011", 
    168 to 169=> "1010100", 170 to 171=> "1010101", 172 to 173=> "1010110", 174 to 175=> "1010111", 
    176 to 177=> "1011000", 178 to 179=> "1011001", 180 to 181=> "1011010", 182 to 183=> "1011011", 
    184 to 185=> "1011100", 186 to 187=> "1011101", 188 to 189=> "1011110", 190 to 191=> "1011111", 
    192 to 193=> "1100000", 194 to 195=> "1100001", 196 to 197=> "1100010", 198 to 199=> "1100011", 
    200 to 201=> "1100100", 202 to 203=> "1100101", 204 to 205=> "1100110", 206 to 207=> "1100111", 
    208 to 209=> "1101000", 210 to 211=> "1101001", 212 to 213=> "1101010", 214 to 215=> "1101011", 
    216 to 217=> "1101100", 218 to 219=> "1101101", 220 to 221=> "1101110", 222 to 223=> "1101111", 
    224 to 225=> "1110000", 226 to 227=> "1110001", 228 to 229=> "1110010", 230 to 231=> "1110011", 
    232 to 233=> "1110100", 234 to 235=> "1110101", 236 to 237=> "1110110", 238 to 239=> "1110111", 
    240 to 241=> "1111000", 242 to 243=> "1111001", 244 to 245=> "1111010", 246 to 247=> "1111011", 
    248 to 249=> "1111100", 250 to 251=> "1111101", 252 to 253=> "1111110", 254 to 255=> "1111111" );
signal mem1 : mem_array := (
    0 to 1=> "0000000", 2 to 3=> "0000001", 4 to 5=> "0000010", 6 to 7=> "0000011", 
    8 to 9=> "0000100", 10 to 11=> "0000101", 12 to 13=> "0000110", 14 to 15=> "0000111", 
    16 to 17=> "0001000", 18 to 19=> "0001001", 20 to 21=> "0001010", 22 to 23=> "0001011", 
    24 to 25=> "0001100", 26 to 27=> "0001101", 28 to 29=> "0001110", 30 to 31=> "0001111", 
    32 to 33=> "0010000", 34 to 35=> "0010001", 36 to 37=> "0010010", 38 to 39=> "0010011", 
    40 to 41=> "0010100", 42 to 43=> "0010101", 44 to 45=> "0010110", 46 to 47=> "0010111", 
    48 to 49=> "0011000", 50 to 51=> "0011001", 52 to 53=> "0011010", 54 to 55=> "0011011", 
    56 to 57=> "0011100", 58 to 59=> "0011101", 60 to 61=> "0011110", 62 to 63=> "0011111", 
    64 to 65=> "0100000", 66 to 67=> "0100001", 68 to 69=> "0100010", 70 to 71=> "0100011", 
    72 to 73=> "0100100", 74 to 75=> "0100101", 76 to 77=> "0100110", 78 to 79=> "0100111", 
    80 to 81=> "0101000", 82 to 83=> "0101001", 84 to 85=> "0101010", 86 to 87=> "0101011", 
    88 to 89=> "0101100", 90 to 91=> "0101101", 92 to 93=> "0101110", 94 to 95=> "0101111", 
    96 to 97=> "0110000", 98 to 99=> "0110001", 100 to 101=> "0110010", 102 to 103=> "0110011", 
    104 to 105=> "0110100", 106 to 107=> "0110101", 108 to 109=> "0110110", 110 to 111=> "0110111", 
    112 to 113=> "0111000", 114 to 115=> "0111001", 116 to 117=> "0111010", 118 to 119=> "0111011", 
    120 to 121=> "0111100", 122 to 123=> "0111101", 124 to 125=> "0111110", 126 to 127=> "0111111", 
    128 to 129=> "1000000", 130 to 131=> "1000001", 132 to 133=> "1000010", 134 to 135=> "1000011", 
    136 to 137=> "1000100", 138 to 139=> "1000101", 140 to 141=> "1000110", 142 to 143=> "1000111", 
    144 to 145=> "1001000", 146 to 147=> "1001001", 148 to 149=> "1001010", 150 to 151=> "1001011", 
    152 to 153=> "1001100", 154 to 155=> "1001101", 156 to 157=> "1001110", 158 to 159=> "1001111", 
    160 to 161=> "1010000", 162 to 163=> "1010001", 164 to 165=> "1010010", 166 to 167=> "1010011", 
    168 to 169=> "1010100", 170 to 171=> "1010101", 172 to 173=> "1010110", 174 to 175=> "1010111", 
    176 to 177=> "1011000", 178 to 179=> "1011001", 180 to 181=> "1011010", 182 to 183=> "1011011", 
    184 to 185=> "1011100", 186 to 187=> "1011101", 188 to 189=> "1011110", 190 to 191=> "1011111", 
    192 to 193=> "1100000", 194 to 195=> "1100001", 196 to 197=> "1100010", 198 to 199=> "1100011", 
    200 to 201=> "1100100", 202 to 203=> "1100101", 204 to 205=> "1100110", 206 to 207=> "1100111", 
    208 to 209=> "1101000", 210 to 211=> "1101001", 212 to 213=> "1101010", 214 to 215=> "1101011", 
    216 to 217=> "1101100", 218 to 219=> "1101101", 220 to 221=> "1101110", 222 to 223=> "1101111", 
    224 to 225=> "1110000", 226 to 227=> "1110001", 228 to 229=> "1110010", 230 to 231=> "1110011", 
    232 to 233=> "1110100", 234 to 235=> "1110101", 236 to 237=> "1110110", 238 to 239=> "1110111", 
    240 to 241=> "1111000", 242 to 243=> "1111001", 244 to 245=> "1111010", 246 to 247=> "1111011", 
    248 to 249=> "1111100", 250 to 251=> "1111101", 252 to 253=> "1111110", 254 to 255=> "1111111" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem0 : signal is "block_rom";
attribute syn_rom_style of mem1 : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem0 : signal is "block";
attribute ROM_STYLE of mem1 : signal is "block";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

memory_access_guard_2: process (addr2) 
begin
      addr2_tmp <= addr2;
--synthesis translate_off
      if (CONV_INTEGER(addr2) > mem_size-1) then
           addr2_tmp <= (others => '0');
      else 
           addr2_tmp <= addr2;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem0(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem0(CONV_INTEGER(addr1_tmp)); 
        end if;
        if (ce2 = '1') then 
            q2 <= mem1(CONV_INTEGER(addr2_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity Convert_quant_table is
    generic (
        DataWidth : INTEGER := 7;
        AddressRange : INTEGER := 256;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address2 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Convert_quant_table is
    component Convert_quant_table_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR;
            addr2 : IN STD_LOGIC_VECTOR;
            ce2 : IN STD_LOGIC;
            q2 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Convert_quant_table_rom_U :  component Convert_quant_table_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1,
        addr2 => address2,
        ce2 => ce2,
        q2 => q2);

end architecture;


