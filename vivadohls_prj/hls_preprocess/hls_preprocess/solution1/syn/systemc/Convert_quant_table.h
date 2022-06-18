// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __Convert_quant_table_H__
#define __Convert_quant_table_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct Convert_quant_table_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 7;
  static const unsigned AddressRange = 256;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in <sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(Convert_quant_table_ram) {
        ram[0] = "0b0000000";
        ram[1] = "0b0000000";
        ram[2] = "0b0000001";
        ram[3] = "0b0000001";
        ram[4] = "0b0000010";
        ram[5] = "0b0000010";
        ram[6] = "0b0000011";
        ram[7] = "0b0000011";
        ram[8] = "0b0000100";
        ram[9] = "0b0000100";
        ram[10] = "0b0000101";
        ram[11] = "0b0000101";
        ram[12] = "0b0000110";
        ram[13] = "0b0000110";
        ram[14] = "0b0000111";
        ram[15] = "0b0000111";
        ram[16] = "0b0001000";
        ram[17] = "0b0001000";
        ram[18] = "0b0001001";
        ram[19] = "0b0001001";
        ram[20] = "0b0001010";
        ram[21] = "0b0001010";
        ram[22] = "0b0001011";
        ram[23] = "0b0001011";
        ram[24] = "0b0001100";
        ram[25] = "0b0001100";
        ram[26] = "0b0001101";
        ram[27] = "0b0001101";
        ram[28] = "0b0001110";
        ram[29] = "0b0001110";
        ram[30] = "0b0001111";
        ram[31] = "0b0001111";
        ram[32] = "0b0010000";
        ram[33] = "0b0010000";
        ram[34] = "0b0010001";
        ram[35] = "0b0010001";
        ram[36] = "0b0010010";
        ram[37] = "0b0010010";
        ram[38] = "0b0010011";
        ram[39] = "0b0010011";
        ram[40] = "0b0010100";
        ram[41] = "0b0010100";
        ram[42] = "0b0010101";
        ram[43] = "0b0010101";
        ram[44] = "0b0010110";
        ram[45] = "0b0010110";
        ram[46] = "0b0010111";
        ram[47] = "0b0010111";
        ram[48] = "0b0011000";
        ram[49] = "0b0011000";
        ram[50] = "0b0011001";
        ram[51] = "0b0011001";
        ram[52] = "0b0011010";
        ram[53] = "0b0011010";
        ram[54] = "0b0011011";
        ram[55] = "0b0011011";
        ram[56] = "0b0011100";
        ram[57] = "0b0011100";
        ram[58] = "0b0011101";
        ram[59] = "0b0011101";
        ram[60] = "0b0011110";
        ram[61] = "0b0011110";
        ram[62] = "0b0011111";
        ram[63] = "0b0011111";
        ram[64] = "0b0100000";
        ram[65] = "0b0100000";
        ram[66] = "0b0100001";
        ram[67] = "0b0100001";
        ram[68] = "0b0100010";
        ram[69] = "0b0100010";
        ram[70] = "0b0100011";
        ram[71] = "0b0100011";
        ram[72] = "0b0100100";
        ram[73] = "0b0100100";
        ram[74] = "0b0100101";
        ram[75] = "0b0100101";
        ram[76] = "0b0100110";
        ram[77] = "0b0100110";
        ram[78] = "0b0100111";
        ram[79] = "0b0100111";
        ram[80] = "0b0101000";
        ram[81] = "0b0101000";
        ram[82] = "0b0101001";
        ram[83] = "0b0101001";
        ram[84] = "0b0101010";
        ram[85] = "0b0101010";
        ram[86] = "0b0101011";
        ram[87] = "0b0101011";
        ram[88] = "0b0101100";
        ram[89] = "0b0101100";
        ram[90] = "0b0101101";
        ram[91] = "0b0101101";
        ram[92] = "0b0101110";
        ram[93] = "0b0101110";
        ram[94] = "0b0101111";
        ram[95] = "0b0101111";
        ram[96] = "0b0110000";
        ram[97] = "0b0110000";
        ram[98] = "0b0110001";
        ram[99] = "0b0110001";
        ram[100] = "0b0110010";
        ram[101] = "0b0110010";
        ram[102] = "0b0110011";
        ram[103] = "0b0110011";
        ram[104] = "0b0110100";
        ram[105] = "0b0110100";
        ram[106] = "0b0110101";
        ram[107] = "0b0110101";
        ram[108] = "0b0110110";
        ram[109] = "0b0110110";
        ram[110] = "0b0110111";
        ram[111] = "0b0110111";
        ram[112] = "0b0111000";
        ram[113] = "0b0111000";
        ram[114] = "0b0111001";
        ram[115] = "0b0111001";
        ram[116] = "0b0111010";
        ram[117] = "0b0111010";
        ram[118] = "0b0111011";
        ram[119] = "0b0111011";
        ram[120] = "0b0111100";
        ram[121] = "0b0111100";
        ram[122] = "0b0111101";
        ram[123] = "0b0111101";
        ram[124] = "0b0111110";
        ram[125] = "0b0111110";
        ram[126] = "0b0111111";
        ram[127] = "0b0111111";
        ram[128] = "0b1000000";
        ram[129] = "0b1000000";
        ram[130] = "0b1000001";
        ram[131] = "0b1000001";
        ram[132] = "0b1000010";
        ram[133] = "0b1000010";
        ram[134] = "0b1000011";
        ram[135] = "0b1000011";
        ram[136] = "0b1000100";
        ram[137] = "0b1000100";
        ram[138] = "0b1000101";
        ram[139] = "0b1000101";
        ram[140] = "0b1000110";
        ram[141] = "0b1000110";
        ram[142] = "0b1000111";
        ram[143] = "0b1000111";
        ram[144] = "0b1001000";
        ram[145] = "0b1001000";
        ram[146] = "0b1001001";
        ram[147] = "0b1001001";
        ram[148] = "0b1001010";
        ram[149] = "0b1001010";
        ram[150] = "0b1001011";
        ram[151] = "0b1001011";
        ram[152] = "0b1001100";
        ram[153] = "0b1001100";
        ram[154] = "0b1001101";
        ram[155] = "0b1001101";
        ram[156] = "0b1001110";
        ram[157] = "0b1001110";
        ram[158] = "0b1001111";
        ram[159] = "0b1001111";
        ram[160] = "0b1010000";
        ram[161] = "0b1010000";
        ram[162] = "0b1010001";
        ram[163] = "0b1010001";
        ram[164] = "0b1010010";
        ram[165] = "0b1010010";
        ram[166] = "0b1010011";
        ram[167] = "0b1010011";
        ram[168] = "0b1010100";
        ram[169] = "0b1010100";
        ram[170] = "0b1010101";
        ram[171] = "0b1010101";
        ram[172] = "0b1010110";
        ram[173] = "0b1010110";
        ram[174] = "0b1010111";
        ram[175] = "0b1010111";
        ram[176] = "0b1011000";
        ram[177] = "0b1011000";
        ram[178] = "0b1011001";
        ram[179] = "0b1011001";
        ram[180] = "0b1011010";
        ram[181] = "0b1011010";
        ram[182] = "0b1011011";
        ram[183] = "0b1011011";
        ram[184] = "0b1011100";
        ram[185] = "0b1011100";
        ram[186] = "0b1011101";
        ram[187] = "0b1011101";
        ram[188] = "0b1011110";
        ram[189] = "0b1011110";
        ram[190] = "0b1011111";
        ram[191] = "0b1011111";
        ram[192] = "0b1100000";
        ram[193] = "0b1100000";
        ram[194] = "0b1100001";
        ram[195] = "0b1100001";
        ram[196] = "0b1100010";
        ram[197] = "0b1100010";
        ram[198] = "0b1100011";
        ram[199] = "0b1100011";
        ram[200] = "0b1100100";
        ram[201] = "0b1100100";
        ram[202] = "0b1100101";
        ram[203] = "0b1100101";
        ram[204] = "0b1100110";
        ram[205] = "0b1100110";
        ram[206] = "0b1100111";
        ram[207] = "0b1100111";
        ram[208] = "0b1101000";
        ram[209] = "0b1101000";
        ram[210] = "0b1101001";
        ram[211] = "0b1101001";
        ram[212] = "0b1101010";
        ram[213] = "0b1101010";
        ram[214] = "0b1101011";
        ram[215] = "0b1101011";
        ram[216] = "0b1101100";
        ram[217] = "0b1101100";
        ram[218] = "0b1101101";
        ram[219] = "0b1101101";
        ram[220] = "0b1101110";
        ram[221] = "0b1101110";
        ram[222] = "0b1101111";
        ram[223] = "0b1101111";
        ram[224] = "0b1110000";
        ram[225] = "0b1110000";
        ram[226] = "0b1110001";
        ram[227] = "0b1110001";
        ram[228] = "0b1110010";
        ram[229] = "0b1110010";
        ram[230] = "0b1110011";
        ram[231] = "0b1110011";
        ram[232] = "0b1110100";
        ram[233] = "0b1110100";
        ram[234] = "0b1110101";
        ram[235] = "0b1110101";
        ram[236] = "0b1110110";
        ram[237] = "0b1110110";
        ram[238] = "0b1110111";
        ram[239] = "0b1110111";
        ram[240] = "0b1111000";
        ram[241] = "0b1111000";
        ram[242] = "0b1111001";
        ram[243] = "0b1111001";
        ram[244] = "0b1111010";
        ram[245] = "0b1111010";
        ram[246] = "0b1111011";
        ram[247] = "0b1111011";
        ram[248] = "0b1111100";
        ram[249] = "0b1111100";
        ram[250] = "0b1111101";
        ram[251] = "0b1111101";
        ram[252] = "0b1111110";
        ram[253] = "0b1111110";
        ram[254] = "0b1111111";
        ram[255] = "0b1111111";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();


SC_METHOD(prc_write_1);
  sensitive<<clk.pos();


SC_METHOD(prc_write_2);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


void prc_write_1()
{
    if (ce1.read() == sc_dt::Log_1) 
    {
            if(address1.read().is_01() && address1.read().to_uint()<AddressRange)
              q1 = ram[address1.read().to_uint()];
            else
              q1 = sc_lv<DataWidth>();
    }
}


void prc_write_2()
{
    if (ce2.read() == sc_dt::Log_1) 
    {
            if(address2.read().is_01() && address2.read().to_uint()<AddressRange)
              q2 = ram[address2.read().to_uint()];
            else
              q2 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(Convert_quant_table) {


static const unsigned DataWidth = 7;
static const unsigned AddressRange = 256;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in <sc_lv<AddressWidth> > address2;
sc_core::sc_in<sc_logic> ce2;
sc_core::sc_out <sc_lv<DataWidth> > q2;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


Convert_quant_table_ram* meminst;


SC_CTOR(Convert_quant_table) {
meminst = new Convert_quant_table_ram("Convert_quant_table_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);

meminst->address2(address2);
meminst->ce2(ce2);
meminst->q2(q2);

meminst->reset(reset);
meminst->clk(clk);
}
~Convert_quant_table() {
    delete meminst;
}


};//endmodule
#endif
