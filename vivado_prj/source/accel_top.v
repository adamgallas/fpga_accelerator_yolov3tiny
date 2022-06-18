module accel_top
#(
	parameter IFMBUF_ADDR_BIT=12,
	parameter WEIGHTBUF_ADDR_BIT=7,
	parameter BIASBUF_ADDR_BIT=7,
	parameter ACC_ADDR_BIT=12,
	parameter OFMBUF_ADDR_BIT=12,
	
	parameter IFMBUF_DEPTH=4096*2,
	parameter WEIGHTBUF_DEPTH=128,
	parameter BIASBUF_DEPTH=128,
	parameter ACC_DEPTH=4096,
	parameter OFMBUF_DEPTH=4096,
	
	parameter LINEBUFFER_LEN1=16,
	parameter LINEBUFFER_LEN2=14,
	parameter LINEBUFFER_LEN3=28,
	parameter LINEBUFFER_LEN4=56,
	parameter LINEBUFFER_LEN5=112,
	parameter LINEBUFFER_LEN6=224,
	
	parameter IFM_RAM_STYLE="block",
	parameter WEIGHT_RAM_STYLE="distributed",
	parameter BIAS_RAM_STYLE="distributed",
	parameter OFM_RAM_STYLE="block"
)
(
	input clk,
	input rst,
	
	input [2:0] sel,
	input relu_type_sel,
	input pool_enable,
	
	input [IFMBUF_ADDR_BIT-2:0] ifmbuf_bram_addr_write,
	input [IFMBUF_ADDR_BIT-2:0] ifmbuf_bram_addr_read,
	input ifmbuf_bram_en_write,
	input ifmbuf_sel,
	
	input weightbuf_waddr_clear,
	input weightbuf_bram_en_write,
	input [WEIGHTBUF_ADDR_BIT-1:0] weightbuf_read_addr,
	
	input biasbuf_waddr_clear,
	input biasbuf_bram_en_write,
	input [BIASBUF_ADDR_BIT-1:0] biasbuf_read_addr,
	
	input acc_read_en,
	input acc_write_en,
	input [ACC_ADDR_BIT-1:0] acc_read_addr,
	input [ACC_ADDR_BIT-1:0] acc_write_addr,
	input acc_prev_data_zero,
	input acc_curr_data_zero,
	
	input pool_zero_out,
	
	input ofmbuf_bram_en_write,
	input [OFMBUF_ADDR_BIT-1:0] ofmbuf_bram_write_addr,
	input [OFMBUF_ADDR_BIT-1:0] ofmbuf_bram_read_addr,
	
	input	[15:0]	scale,
    input	[3:0]	shift,
	input	[7:0]	zero_point_in,
	input	[7:0]	zero_point_out,
	input	[7:0]	zero_point_act,
	
	input	[7:0]	ifm_in_0,
	input	[7:0]	ifm_in_1,
	input	[7:0]	ifm_in_2,
	input	[7:0]	ifm_in_3,
	input	[7:0]	ifm_in_4,
	input	[7:0]	ifm_in_5,
	input	[7:0]	ifm_in_6,
	input	[7:0]	ifm_in_7,
	
	input	[7:0]	weight_in_0,
	input	[7:0]	weight_in_1,
	input	[7:0]	weight_in_2,
	input	[7:0]	weight_in_3,
	input	[7:0]	weight_in_4,
	input	[7:0]	weight_in_5,
	input	[7:0]	weight_in_6,
	input	[7:0]	weight_in_7,

	input	[15:0]	write_addr_leakyrelu,
	input	[63:0]	write_data_leakyrelu,
	input			write_enable_leakyrelu,
	
	input [17:0] bias_in,
	input bias_valid,
	
	output [63:0] ofm_out_bundle
);

	wire	[7:0]	ifmstream_0;
	wire	[7:0]	ifmstream_1;
	wire	[7:0]	ifmstream_2;
	wire	[7:0]	ifmstream_3;
	wire	[7:0]	ifmstream_4;
	wire	[7:0]	ifmstream_5;
	wire	[7:0]	ifmstream_6;
	wire	[7:0]	ifmstream_7;
	
	wire	[7:0]	ifmstream_sub_zp_0;
	wire	[7:0]	ifmstream_sub_zp_1;
	wire	[7:0]	ifmstream_sub_zp_2;
	wire	[7:0]	ifmstream_sub_zp_3;
	wire	[7:0]	ifmstream_sub_zp_4;
	wire	[7:0]	ifmstream_sub_zp_5;
	wire	[7:0]	ifmstream_sub_zp_6;
	wire	[7:0]	ifmstream_sub_zp_7;
	
	wire	[71:0]	ifm_win3x3_0;
	wire	[71:0]	ifm_win3x3_1;
	wire	[71:0]	ifm_win3x3_2;
	wire	[71:0]	ifm_win3x3_3;
	wire	[71:0]	ifm_win3x3_4;
	wire	[71:0]	ifm_win3x3_5;
	wire	[71:0]	ifm_win3x3_6;
	wire	[71:0]	ifm_win3x3_7;
	
	wire	[71:0]	weight_win3x3_00;
	wire	[71:0]	weight_win3x3_01;
	wire	[71:0]	weight_win3x3_02;
	wire	[71:0]	weight_win3x3_03;
	wire	[71:0]	weight_win3x3_04;
	wire	[71:0]	weight_win3x3_05;
	wire	[71:0]	weight_win3x3_06;
	wire	[71:0]	weight_win3x3_07;
	
	wire	[71:0]	weight_win3x3_10;
	wire	[71:0]	weight_win3x3_11;
	wire	[71:0]	weight_win3x3_12;
	wire	[71:0]	weight_win3x3_13;
	wire	[71:0]	weight_win3x3_14;
	wire	[71:0]	weight_win3x3_15;
	wire	[71:0]	weight_win3x3_16;
	wire	[71:0]	weight_win3x3_17;
	
	wire	[71:0]	weight_win3x3_20;
	wire	[71:0]	weight_win3x3_21;
	wire	[71:0]	weight_win3x3_22;
	wire	[71:0]	weight_win3x3_23;
	wire	[71:0]	weight_win3x3_24;
	wire	[71:0]	weight_win3x3_25;
	wire	[71:0]	weight_win3x3_26;
	wire	[71:0]	weight_win3x3_27;
	
	wire	[71:0]	weight_win3x3_30;
	wire	[71:0]	weight_win3x3_31;
	wire	[71:0]	weight_win3x3_32;
	wire	[71:0]	weight_win3x3_33;
	wire	[71:0]	weight_win3x3_34;
	wire	[71:0]	weight_win3x3_35;
	wire	[71:0]	weight_win3x3_36;
	wire	[71:0]	weight_win3x3_37;
	
	wire	[71:0]	weight_win3x3_40;
	wire	[71:0]	weight_win3x3_41;
	wire	[71:0]	weight_win3x3_42;
	wire	[71:0]	weight_win3x3_43;
	wire	[71:0]	weight_win3x3_44;
	wire	[71:0]	weight_win3x3_45;
	wire	[71:0]	weight_win3x3_46;
	wire	[71:0]	weight_win3x3_47;
	
	wire	[71:0]	weight_win3x3_50;
	wire	[71:0]	weight_win3x3_51;
	wire	[71:0]	weight_win3x3_52;
	wire	[71:0]	weight_win3x3_53;
	wire	[71:0]	weight_win3x3_54;
	wire	[71:0]	weight_win3x3_55;
	wire	[71:0]	weight_win3x3_56;
	wire	[71:0]	weight_win3x3_57;
	
	wire	[71:0]	weight_win3x3_60;
	wire	[71:0]	weight_win3x3_61;
	wire	[71:0]	weight_win3x3_62;
	wire	[71:0]	weight_win3x3_63;
	wire	[71:0]	weight_win3x3_64;
	wire	[71:0]	weight_win3x3_65;
	wire	[71:0]	weight_win3x3_66;
	wire	[71:0]	weight_win3x3_67;
	
	wire	[71:0]	weight_win3x3_70;
	wire	[71:0]	weight_win3x3_71;
	wire	[71:0]	weight_win3x3_72;
	wire	[71:0]	weight_win3x3_73;
	wire	[71:0]	weight_win3x3_74;
	wire	[71:0]	weight_win3x3_75;
	wire	[71:0]	weight_win3x3_76;
	wire	[71:0]	weight_win3x3_77;
	
	
	wire	[17:0]	bias_0;
	wire	[17:0]	bias_1;
	wire	[17:0]	bias_2;
	wire	[17:0]	bias_3;
	wire	[17:0]	bias_4;
	wire	[17:0]	bias_5;
	wire	[17:0]	bias_6;
	wire	[17:0]	bias_7;
	
	wire	[17:0]	ofm_stream_ch0;
	wire	[17:0]	ofm_stream_ch1;
	wire	[17:0]	ofm_stream_ch2;
	wire	[17:0]	ofm_stream_ch3;
	wire	[17:0]	ofm_stream_ch4;
	wire	[17:0]	ofm_stream_ch5;
	wire	[17:0]	ofm_stream_ch6;
	wire	[17:0]	ofm_stream_ch7;
	
	wire	[17:0]	acc_result_0;
	wire	[17:0]	acc_result_1;
	wire	[17:0]	acc_result_2;
	wire	[17:0]	acc_result_3;
	wire	[17:0]	acc_result_4;
	wire	[17:0]	acc_result_5;
	wire	[17:0]	acc_result_6;
	wire	[17:0]	acc_result_7;
	
	wire	[31:0]	ifm_win2x2_0;
	wire	[31:0]	ifm_win2x2_1;
	wire	[31:0]	ifm_win2x2_2;
	wire	[31:0]	ifm_win2x2_3;
	wire	[31:0]	ifm_win2x2_4;
	wire	[31:0]	ifm_win2x2_5;
	wire	[31:0]	ifm_win2x2_6;
	wire	[31:0]	ifm_win2x2_7;
	
	wire	[7:0]	quant_result_0;
	wire	[7:0]	quant_result_1;
	wire	[7:0]	quant_result_2;
	wire	[7:0]	quant_result_3;
	wire	[7:0]	quant_result_4;
	wire	[7:0]	quant_result_5;
	wire	[7:0]	quant_result_6;
	wire	[7:0]	quant_result_7;
	
	wire	[7:0]	ofm_pool_out_0;
	wire	[7:0]	ofm_pool_out_1;
	wire	[7:0]	ofm_pool_out_2;
	wire	[7:0]	ofm_pool_out_3;
	wire	[7:0]	ofm_pool_out_4;
	wire	[7:0]	ofm_pool_out_5;
	wire	[7:0]	ofm_pool_out_6;
	wire	[7:0]	ofm_pool_out_7;
	
	//wire	[63:0]	quant_result_bundle;
	wire	[63:0]	pool_result_bundle;
	wire	[63:0]	ofm_store_bundle;

	wire	[63:0]	leaky_relu_out;
	wire	[63:0]	relu_out;
	wire	[63:0]	activ_out;
	wire	[7:0]	activ_out_0;
	wire	[7:0]	activ_out_1;
	wire	[7:0]	activ_out_2;
	wire	[7:0]	activ_out_3;
	wire	[7:0]	activ_out_4;
	wire	[7:0]	activ_out_5;
	wire	[7:0]	activ_out_6;
	wire	[7:0]	activ_out_7;

	assign activ_out   =(relu_type_sel)?relu_out:leaky_relu_out;
	assign activ_out_0 =activ_out[7:0];
	assign activ_out_1 =activ_out[15:8];
	assign activ_out_2 =activ_out[23:16];
	assign activ_out_3 =activ_out[31:24];
	assign activ_out_4 =activ_out[39:32];
	assign activ_out_5 =activ_out[47:40];
	assign activ_out_6 =activ_out[55:48];
	assign activ_out_7 =activ_out[63:56];
	
	//assign quant_result_bundle ={quant_result_7,quant_result_6,quant_result_5,quant_result_4,quant_result_3,quant_result_2,quant_result_1,quant_result_0};
	assign pool_result_bundle  ={ofm_pool_out_7,ofm_pool_out_6,ofm_pool_out_5,ofm_pool_out_4,ofm_pool_out_3,ofm_pool_out_2,ofm_pool_out_1,ofm_pool_out_0};
	assign ofm_store_bundle    =(pool_enable)?pool_result_bundle:activ_out;
	
	buffer_ifm_1x8
	#(.DEPTH(IFMBUF_DEPTH),.ADDR_BIT(IFMBUF_ADDR_BIT),.RAM_STYLE_VAL(IFM_RAM_STYLE))
	u_buffer_ifm_1x8
	(
		.clk(clk),
		.bram_addr_write(ifmbuf_bram_addr_write),
		.bram_addr_read(ifmbuf_bram_addr_read),
		.bram_en_write(ifmbuf_bram_en_write),
		.buf_sel(ifmbuf_sel),
		
		.in_0(ifm_in_0),
		.in_1(ifm_in_1),
		.in_2(ifm_in_2),
		.in_3(ifm_in_3),
		.in_4(ifm_in_4),
		.in_5(ifm_in_5),
		.in_6(ifm_in_6),
		.in_7(ifm_in_7),
		.ifmstream_0(ifmstream_0),
		.ifmstream_1(ifmstream_1),
		.ifmstream_2(ifmstream_2),
		.ifmstream_3(ifmstream_3),
		.ifmstream_4(ifmstream_4),
		.ifmstream_5(ifmstream_5),
		.ifmstream_6(ifmstream_6),
		.ifmstream_7(ifmstream_7)
	);
	buffer_weight_1x8x8
	#(.DEPTH(WEIGHTBUF_DEPTH),.ADDR_BIT(WEIGHTBUF_ADDR_BIT),.RAM_STYLE_VAL(WEIGHT_RAM_STYLE))
	u_buffer_weight_1x8x8
	(
		.clk(clk),
		.rst(rst),
		.clear(weightbuf_waddr_clear),
		.bram_en_write(weightbuf_bram_en_write),
		
		.in_0(weight_in_0),
		.in_1(weight_in_1),
		.in_2(weight_in_2),
		.in_3(weight_in_3),
		.in_4(weight_in_4),
		.in_5(weight_in_5),
		.in_6(weight_in_6),
		.in_7(weight_in_7),
		
		.read_addr(weightbuf_read_addr),
		.weight_win3x3_00(weight_win3x3_00),
		.weight_win3x3_01(weight_win3x3_01),
		.weight_win3x3_02(weight_win3x3_02),
		.weight_win3x3_03(weight_win3x3_03),
		.weight_win3x3_04(weight_win3x3_04),
		.weight_win3x3_05(weight_win3x3_05),
		.weight_win3x3_06(weight_win3x3_06),
		.weight_win3x3_07(weight_win3x3_07),
		
		.weight_win3x3_10(weight_win3x3_10),
		.weight_win3x3_11(weight_win3x3_11),
		.weight_win3x3_12(weight_win3x3_12),
		.weight_win3x3_13(weight_win3x3_13),
		.weight_win3x3_14(weight_win3x3_14),
		.weight_win3x3_15(weight_win3x3_15),
		.weight_win3x3_16(weight_win3x3_16),
		.weight_win3x3_17(weight_win3x3_17),
		
		.weight_win3x3_20(weight_win3x3_20),
		.weight_win3x3_21(weight_win3x3_21),
		.weight_win3x3_22(weight_win3x3_22),
		.weight_win3x3_23(weight_win3x3_23),
		.weight_win3x3_24(weight_win3x3_24),
		.weight_win3x3_25(weight_win3x3_25),
		.weight_win3x3_26(weight_win3x3_26),
		.weight_win3x3_27(weight_win3x3_27),
		
		.weight_win3x3_30(weight_win3x3_30),
		.weight_win3x3_31(weight_win3x3_31),
		.weight_win3x3_32(weight_win3x3_32),
		.weight_win3x3_33(weight_win3x3_33),
		.weight_win3x3_34(weight_win3x3_34),
		.weight_win3x3_35(weight_win3x3_35),
		.weight_win3x3_36(weight_win3x3_36),
		.weight_win3x3_37(weight_win3x3_37),
		
		.weight_win3x3_40(weight_win3x3_40),
		.weight_win3x3_41(weight_win3x3_41),
		.weight_win3x3_42(weight_win3x3_42),
		.weight_win3x3_43(weight_win3x3_43),
		.weight_win3x3_44(weight_win3x3_44),
		.weight_win3x3_45(weight_win3x3_45),
		.weight_win3x3_46(weight_win3x3_46),
		.weight_win3x3_47(weight_win3x3_47),
		
		.weight_win3x3_50(weight_win3x3_50),
		.weight_win3x3_51(weight_win3x3_51),
		.weight_win3x3_52(weight_win3x3_52),
		.weight_win3x3_53(weight_win3x3_53),
		.weight_win3x3_54(weight_win3x3_54),
		.weight_win3x3_55(weight_win3x3_55),
		.weight_win3x3_56(weight_win3x3_56),
		.weight_win3x3_57(weight_win3x3_57),
		
		.weight_win3x3_60(weight_win3x3_60),
		.weight_win3x3_61(weight_win3x3_61),
		.weight_win3x3_62(weight_win3x3_62),
		.weight_win3x3_63(weight_win3x3_63),
		.weight_win3x3_64(weight_win3x3_64),
		.weight_win3x3_65(weight_win3x3_65),
		.weight_win3x3_66(weight_win3x3_66),
		.weight_win3x3_67(weight_win3x3_67),
		
		.weight_win3x3_70(weight_win3x3_70),
		.weight_win3x3_71(weight_win3x3_71),
		.weight_win3x3_72(weight_win3x3_72),
		.weight_win3x3_73(weight_win3x3_73),
		.weight_win3x3_74(weight_win3x3_74),
		.weight_win3x3_75(weight_win3x3_75),
		.weight_win3x3_76(weight_win3x3_76),
		.weight_win3x3_77(weight_win3x3_77)
	);
	buffer_bias
	#(.DEPTH(BIASBUF_DEPTH),.ADDR_BIT(BIASBUF_ADDR_BIT),.RAM_STYLE_VAL(BIAS_RAM_STYLE))
	u_buffer_bias
	(
		.clk(clk),
		.rst(rst),
		.clear(biasbuf_waddr_clear),
		.bias_in(bias_in),
		.bram_addr_read(biasbuf_read_addr),
		.bram_en_write(biasbuf_bram_en_write),
		.bias_0(bias_0),
		.bias_1(bias_1),
		.bias_2(bias_2),
		.bias_3(bias_3),
		.bias_4(bias_4),
		.bias_5(bias_5),
		.bias_6(bias_6),
		.bias_7(bias_7)
	);
	module_sub_zero_point_1x8 u_module_sub_zero_point_1x8
	(
		.clk(clk),
		.zero_point(zero_point_in),
		
		.data_in_0(ifmstream_0),
		.data_in_1(ifmstream_1),
		.data_in_2(ifmstream_2),
		.data_in_3(ifmstream_3),
		.data_in_4(ifmstream_4),
		.data_in_5(ifmstream_5),
		.data_in_6(ifmstream_6),
		.data_in_7(ifmstream_7),
		
		.data_out_0(ifmstream_sub_zp_0),
		.data_out_1(ifmstream_sub_zp_1),
		.data_out_2(ifmstream_sub_zp_2),
		.data_out_3(ifmstream_sub_zp_3),
		.data_out_4(ifmstream_sub_zp_4),
		.data_out_5(ifmstream_sub_zp_5),
		.data_out_6(ifmstream_sub_zp_6),
		.data_out_7(ifmstream_sub_zp_7)
	);
	linebuffer_3x3_collect
	#(.LEN1(LINEBUFFER_LEN1),.LEN2(LINEBUFFER_LEN2),.LEN3(LINEBUFFER_LEN3),.LEN4(LINEBUFFER_LEN4),.LEN5(LINEBUFFER_LEN5),.LEN6(LINEBUFFER_LEN6))
	u_linebuffer_3x3_collect
	(
		.clk(clk),
		.sel(sel),
		.ifmstream_0(ifmstream_sub_zp_0),
		.ifmstream_1(ifmstream_sub_zp_1),
		.ifmstream_2(ifmstream_sub_zp_2),
		.ifmstream_3(ifmstream_sub_zp_3),
		.ifmstream_4(ifmstream_sub_zp_4),
		.ifmstream_5(ifmstream_sub_zp_5),
		.ifmstream_6(ifmstream_sub_zp_6),
		.ifmstream_7(ifmstream_sub_zp_7),
		
		.ifm_win3x3_0(ifm_win3x3_0),
		.ifm_win3x3_1(ifm_win3x3_1),
		.ifm_win3x3_2(ifm_win3x3_2),
		.ifm_win3x3_3(ifm_win3x3_3),
		.ifm_win3x3_4(ifm_win3x3_4),
		.ifm_win3x3_5(ifm_win3x3_5),
		.ifm_win3x3_6(ifm_win3x3_6),
		.ifm_win3x3_7(ifm_win3x3_7)
	);
	module_conv_kernel_1x2x8x4 u_module_conv_kernel_1x2x8x4
	(
		.clk(clk),
		.ifm_win3x3_0(ifm_win3x3_0),
		.ifm_win3x3_1(ifm_win3x3_1),
		.ifm_win3x3_2(ifm_win3x3_2),
		.ifm_win3x3_3(ifm_win3x3_3),
		.ifm_win3x3_4(ifm_win3x3_4),
		.ifm_win3x3_5(ifm_win3x3_5),
		.ifm_win3x3_6(ifm_win3x3_6),
		.ifm_win3x3_7(ifm_win3x3_7),

		.weight_win3x3_00(weight_win3x3_00),
		.weight_win3x3_01(weight_win3x3_01),
		.weight_win3x3_02(weight_win3x3_02),
		.weight_win3x3_03(weight_win3x3_03),
		.weight_win3x3_04(weight_win3x3_04),
		.weight_win3x3_05(weight_win3x3_05),
		.weight_win3x3_06(weight_win3x3_06),
		.weight_win3x3_07(weight_win3x3_07),
		
		.weight_win3x3_10(weight_win3x3_10),
		.weight_win3x3_11(weight_win3x3_11),
		.weight_win3x3_12(weight_win3x3_12),
		.weight_win3x3_13(weight_win3x3_13),
		.weight_win3x3_14(weight_win3x3_14),
		.weight_win3x3_15(weight_win3x3_15),
		.weight_win3x3_16(weight_win3x3_16),
		.weight_win3x3_17(weight_win3x3_17),
		
		.weight_win3x3_20(weight_win3x3_20),
		.weight_win3x3_21(weight_win3x3_21),
		.weight_win3x3_22(weight_win3x3_22),
		.weight_win3x3_23(weight_win3x3_23),
		.weight_win3x3_24(weight_win3x3_24),
		.weight_win3x3_25(weight_win3x3_25),
		.weight_win3x3_26(weight_win3x3_26),
		.weight_win3x3_27(weight_win3x3_27),
		
		.weight_win3x3_30(weight_win3x3_30),
		.weight_win3x3_31(weight_win3x3_31),
		.weight_win3x3_32(weight_win3x3_32),
		.weight_win3x3_33(weight_win3x3_33),
		.weight_win3x3_34(weight_win3x3_34),
		.weight_win3x3_35(weight_win3x3_35),
		.weight_win3x3_36(weight_win3x3_36),
		.weight_win3x3_37(weight_win3x3_37),
		
		.weight_win3x3_40(weight_win3x3_40),
		.weight_win3x3_41(weight_win3x3_41),
		.weight_win3x3_42(weight_win3x3_42),
		.weight_win3x3_43(weight_win3x3_43),
		.weight_win3x3_44(weight_win3x3_44),
		.weight_win3x3_45(weight_win3x3_45),
		.weight_win3x3_46(weight_win3x3_46),
		.weight_win3x3_47(weight_win3x3_47),
		
		.weight_win3x3_50(weight_win3x3_50),
		.weight_win3x3_51(weight_win3x3_51),
		.weight_win3x3_52(weight_win3x3_52),
		.weight_win3x3_53(weight_win3x3_53),
		.weight_win3x3_54(weight_win3x3_54),
		.weight_win3x3_55(weight_win3x3_55),
		.weight_win3x3_56(weight_win3x3_56),
		.weight_win3x3_57(weight_win3x3_57),
		
		.weight_win3x3_60(weight_win3x3_60),
		.weight_win3x3_61(weight_win3x3_61),
		.weight_win3x3_62(weight_win3x3_62),
		.weight_win3x3_63(weight_win3x3_63),
		.weight_win3x3_64(weight_win3x3_64),
		.weight_win3x3_65(weight_win3x3_65),
		.weight_win3x3_66(weight_win3x3_66),
		.weight_win3x3_67(weight_win3x3_67),
		
		.weight_win3x3_70(weight_win3x3_70),
		.weight_win3x3_71(weight_win3x3_71),
		.weight_win3x3_72(weight_win3x3_72),
		.weight_win3x3_73(weight_win3x3_73),
		.weight_win3x3_74(weight_win3x3_74),
		.weight_win3x3_75(weight_win3x3_75),
		.weight_win3x3_76(weight_win3x3_76),
		.weight_win3x3_77(weight_win3x3_77),
		
		.bias_0(bias_0),
		.bias_1(bias_1),
		.bias_2(bias_2),
		.bias_3(bias_3),
		.bias_4(bias_4),
		.bias_5(bias_5),
		.bias_6(bias_6),
		.bias_7(bias_7),
		.bias_valid(bias_valid),

		.ofm_stream_ch0(ofm_stream_ch0),
		.ofm_stream_ch1(ofm_stream_ch1),
		.ofm_stream_ch2(ofm_stream_ch2),
		.ofm_stream_ch3(ofm_stream_ch3),
		.ofm_stream_ch4(ofm_stream_ch4),
		.ofm_stream_ch5(ofm_stream_ch5),
		.ofm_stream_ch6(ofm_stream_ch6),
		.ofm_stream_ch7(ofm_stream_ch7)
	);
	module_acc_1x8
	#(.DEPTH(ACC_DEPTH),.ADDR_BIT(ACC_ADDR_BIT))
	u_module_acc_1x8
	(
		.clk            (clk),
		.prev_data_zero (acc_prev_data_zero),
		.curr_data_zero (acc_curr_data_zero),
		
		.read_en        (acc_read_en),
		.write_en       (acc_write_en),
		.read_addr      (acc_read_addr),
		.write_addr     (acc_write_addr),
		
		.curr_data_0    (ofm_stream_ch0),
		.curr_data_1    (ofm_stream_ch1),
		.curr_data_2    (ofm_stream_ch2),
		.curr_data_3    (ofm_stream_ch3),
		.curr_data_4    (ofm_stream_ch4),
		.curr_data_5    (ofm_stream_ch5),
		.curr_data_6    (ofm_stream_ch6),
		.curr_data_7    (ofm_stream_ch7),
		
		.acc_result_0   (acc_result_0),
		.acc_result_1   (acc_result_1),
		.acc_result_2   (acc_result_2),
		.acc_result_3   (acc_result_3),
		.acc_result_4   (acc_result_4),
		.acc_result_5   (acc_result_5),
		.acc_result_6   (acc_result_6),
		.acc_result_7   (acc_result_7)
	);
	module_quant_1x8 u_module_quant_1x8
	(
		.clk            (clk),
		.scale          (scale),
		.shift          (shift),
		.zero_point		(zero_point_out),
		.acc_result_0   (acc_result_0),
		.acc_result_1   (acc_result_1),
		.acc_result_2   (acc_result_2),
		.acc_result_3   (acc_result_3),
		.acc_result_4   (acc_result_4),
		.acc_result_5   (acc_result_5),
		.acc_result_6   (acc_result_6),
		.acc_result_7   (acc_result_7),
		.quant_result_0 (quant_result_0),
		.quant_result_1 (quant_result_1),
		.quant_result_2 (quant_result_2),
		.quant_result_3 (quant_result_3),
		.quant_result_4 (quant_result_4),
		.quant_result_5 (quant_result_5),
		.quant_result_6 (quant_result_6),
		.quant_result_7 (quant_result_7)
	);
	module_leaky_relu_1x8 #(
		.RAM_STYLE_VAL("distributed")
	) inst_module_leaky_relu_1x8 (
		.clk        (clk),
		.we_a       (write_enable_leakyrelu),
		.addr_a     (write_addr_leakyrelu[7:0]),
		.di_a       (write_data_leakyrelu[7:0]),
		.addr_0     (quant_result_0),
		.addr_1     (quant_result_1),
		.addr_2     (quant_result_2),
		.addr_3     (quant_result_3),
		.addr_4     (quant_result_4),
		.addr_5     (quant_result_5),
		.addr_6     (quant_result_6),
		.addr_7     (quant_result_7),
		.bundle_out (leaky_relu_out)
	);
	module_relu_1x8 inst_module_relu_1x8 (
		.clk        (clk),
		.zero_point (zero_point_out),
		.data_in_0  (quant_result_0),
		.data_in_1  (quant_result_1),
		.data_in_2  (quant_result_2),
		.data_in_3  (quant_result_3),
		.data_in_4  (quant_result_4),
		.data_in_5  (quant_result_5),
		.data_in_6  (quant_result_6),
		.data_in_7  (quant_result_7),
		.bundle_out (relu_out)
	);

	linebuffer_2x2_collect
	#(.LEN1(LINEBUFFER_LEN1),.LEN2(LINEBUFFER_LEN2),.LEN3(LINEBUFFER_LEN3),.LEN4(LINEBUFFER_LEN4),.LEN5(LINEBUFFER_LEN5),.LEN6(LINEBUFFER_LEN6))
	u_linebuffer_2x2_collect
	(
		.clk(clk),
		.sel(sel),
		.ifmstream_0(activ_out_0),
		.ifmstream_1(activ_out_1),
		.ifmstream_2(activ_out_2),
		.ifmstream_3(activ_out_3),
		.ifmstream_4(activ_out_4),
		.ifmstream_5(activ_out_5),
		.ifmstream_6(activ_out_6),
		.ifmstream_7(activ_out_7),
		
		.ifm_win2x2_0(ifm_win2x2_0),
		.ifm_win2x2_1(ifm_win2x2_1),
		.ifm_win2x2_2(ifm_win2x2_2),
		.ifm_win2x2_3(ifm_win2x2_3),
		.ifm_win2x2_4(ifm_win2x2_4),
		.ifm_win2x2_5(ifm_win2x2_5),
		.ifm_win2x2_6(ifm_win2x2_6),
		.ifm_win2x2_7(ifm_win2x2_7)
	);
	module_pool_kernel_1x8 u_module_pool_kernel_1x8
	(
		.clk(clk),
		.ifm_win2x2_0(ifm_win2x2_0),
		.ifm_win2x2_1(ifm_win2x2_1),
		.ifm_win2x2_2(ifm_win2x2_2),
		.ifm_win2x2_3(ifm_win2x2_3),
		.ifm_win2x2_4(ifm_win2x2_4),
		.ifm_win2x2_5(ifm_win2x2_5),
		.ifm_win2x2_6(ifm_win2x2_6),
		.ifm_win2x2_7(ifm_win2x2_7),
		.pool_zero_out(pool_zero_out),
		.zero_point(zero_point_act),
		
		.ofm_stream_ch0(ofm_pool_out_0),
		.ofm_stream_ch1(ofm_pool_out_1),
		.ofm_stream_ch2(ofm_pool_out_2),
		.ofm_stream_ch3(ofm_pool_out_3),
		.ofm_stream_ch4(ofm_pool_out_4),
		.ofm_stream_ch5(ofm_pool_out_5),
		.ofm_stream_ch6(ofm_pool_out_6),
		.ofm_stream_ch7(ofm_pool_out_7)
	);
	
	buffer_ofm
	#(
		.DEPTH(OFMBUF_DEPTH),
		.ADDR_BIT(OFMBUF_ADDR_BIT),
		.RAM_STYLE_VAL(OFM_RAM_STYLE)
	)
	u_buffer_ofm
	(
		.clk(clk),
		.bram_write_addr(ofmbuf_bram_write_addr),
		.bram_en_write(ofmbuf_bram_en_write),
		.bram_read_addr(ofmbuf_bram_read_addr),
		
		.ofm_store_bundle(ofm_store_bundle),
		.ofm_out_bundle(ofm_out_bundle)
	);
endmodule