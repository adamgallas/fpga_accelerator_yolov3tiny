module module_conv_kernel_1x2x8x4
(
	input clk,
	input [71:0] ifm_win3x3_0,
	input [71:0] ifm_win3x3_1,
	input [71:0] ifm_win3x3_2,
	input [71:0] ifm_win3x3_3,
	input [71:0] ifm_win3x3_4,
	input [71:0] ifm_win3x3_5,
	input [71:0] ifm_win3x3_6,
	input [71:0] ifm_win3x3_7,

	input [71:0] weight_win3x3_00,
	input [71:0] weight_win3x3_01,
	input [71:0] weight_win3x3_02,
	input [71:0] weight_win3x3_03,
	input [71:0] weight_win3x3_04,
	input [71:0] weight_win3x3_05,
	input [71:0] weight_win3x3_06,
	input [71:0] weight_win3x3_07,
	
	input [71:0] weight_win3x3_10,
	input [71:0] weight_win3x3_11,
	input [71:0] weight_win3x3_12,
	input [71:0] weight_win3x3_13,
	input [71:0] weight_win3x3_14,
	input [71:0] weight_win3x3_15,
	input [71:0] weight_win3x3_16,
	input [71:0] weight_win3x3_17,
	
	input [71:0] weight_win3x3_20,
	input [71:0] weight_win3x3_21,
	input [71:0] weight_win3x3_22,
	input [71:0] weight_win3x3_23,
	input [71:0] weight_win3x3_24,
	input [71:0] weight_win3x3_25,
	input [71:0] weight_win3x3_26,
	input [71:0] weight_win3x3_27,
	
	input [71:0] weight_win3x3_30,
	input [71:0] weight_win3x3_31,
	input [71:0] weight_win3x3_32,
	input [71:0] weight_win3x3_33,
	input [71:0] weight_win3x3_34,
	input [71:0] weight_win3x3_35,
	input [71:0] weight_win3x3_36,
	input [71:0] weight_win3x3_37,
	
	input [71:0] weight_win3x3_40,
	input [71:0] weight_win3x3_41,
	input [71:0] weight_win3x3_42,
	input [71:0] weight_win3x3_43,
	input [71:0] weight_win3x3_44,
	input [71:0] weight_win3x3_45,
	input [71:0] weight_win3x3_46,
	input [71:0] weight_win3x3_47,
	
	input [71:0] weight_win3x3_50,
	input [71:0] weight_win3x3_51,
	input [71:0] weight_win3x3_52,
	input [71:0] weight_win3x3_53,
	input [71:0] weight_win3x3_54,
	input [71:0] weight_win3x3_55,
	input [71:0] weight_win3x3_56,
	input [71:0] weight_win3x3_57,
	
	input [71:0] weight_win3x3_60,
	input [71:0] weight_win3x3_61,
	input [71:0] weight_win3x3_62,
	input [71:0] weight_win3x3_63,
	input [71:0] weight_win3x3_64,
	input [71:0] weight_win3x3_65,
	input [71:0] weight_win3x3_66,
	input [71:0] weight_win3x3_67,
	
	input [71:0] weight_win3x3_70,
	input [71:0] weight_win3x3_71,
	input [71:0] weight_win3x3_72,
	input [71:0] weight_win3x3_73,
	input [71:0] weight_win3x3_74,
	input [71:0] weight_win3x3_75,
	input [71:0] weight_win3x3_76,
	input [71:0] weight_win3x3_77,
	
	input [17:0] bias_0,
	input [17:0] bias_1,
	input [17:0] bias_2,
	input [17:0] bias_3,
	input [17:0] bias_4,
	input [17:0] bias_5,
	input [17:0] bias_6,
	input [17:0] bias_7,
	input bias_valid,
	
	output [17:0] ofm_stream_ch0,
	output [17:0] ofm_stream_ch1,
	output [17:0] ofm_stream_ch2,
	output [17:0] ofm_stream_ch3,
	output [17:0] ofm_stream_ch4,
	output [17:0] ofm_stream_ch5,
	output [17:0] ofm_stream_ch6,
	output [17:0] ofm_stream_ch7
);

	module_conv_kernel_1x2x8 u_module_conv_kernel_1x2x8_0
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
		
		.bias_1(bias_0),
		.bias_2(bias_1),
		.bias_valid(bias_valid),
		
		.ofm_stream_ch1(ofm_stream_ch0),
		.ofm_stream_ch2(ofm_stream_ch1)
	);

	module_conv_kernel_1x2x8 u_module_conv_kernel_1x2x8_1
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

		.weight_win3x3_00(weight_win3x3_20),
		.weight_win3x3_01(weight_win3x3_21),
		.weight_win3x3_02(weight_win3x3_22),
		.weight_win3x3_03(weight_win3x3_23),
		.weight_win3x3_04(weight_win3x3_24),
		.weight_win3x3_05(weight_win3x3_25),
		.weight_win3x3_06(weight_win3x3_26),
		.weight_win3x3_07(weight_win3x3_27),
		
		.weight_win3x3_10(weight_win3x3_30),
		.weight_win3x3_11(weight_win3x3_31),
		.weight_win3x3_12(weight_win3x3_32),
		.weight_win3x3_13(weight_win3x3_33),
		.weight_win3x3_14(weight_win3x3_34),
		.weight_win3x3_15(weight_win3x3_35),
		.weight_win3x3_16(weight_win3x3_36),
		.weight_win3x3_17(weight_win3x3_37),
		
		.bias_1(bias_2),
		.bias_2(bias_3),
		.bias_valid(bias_valid),
		
		.ofm_stream_ch1(ofm_stream_ch2),
		.ofm_stream_ch2(ofm_stream_ch3)
	);

	module_conv_kernel_1x2x8 u_module_conv_kernel_1x2x8_2
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

		.weight_win3x3_00(weight_win3x3_40),
		.weight_win3x3_01(weight_win3x3_41),
		.weight_win3x3_02(weight_win3x3_42),
		.weight_win3x3_03(weight_win3x3_43),
		.weight_win3x3_04(weight_win3x3_44),
		.weight_win3x3_05(weight_win3x3_45),
		.weight_win3x3_06(weight_win3x3_46),
		.weight_win3x3_07(weight_win3x3_47),
		
		.weight_win3x3_10(weight_win3x3_50),
		.weight_win3x3_11(weight_win3x3_51),
		.weight_win3x3_12(weight_win3x3_52),
		.weight_win3x3_13(weight_win3x3_53),
		.weight_win3x3_14(weight_win3x3_54),
		.weight_win3x3_15(weight_win3x3_55),
		.weight_win3x3_16(weight_win3x3_56),
		.weight_win3x3_17(weight_win3x3_57),
		
		.bias_1(bias_4),
		.bias_2(bias_5),
		.bias_valid(bias_valid),
		
		.ofm_stream_ch1(ofm_stream_ch4),
		.ofm_stream_ch2(ofm_stream_ch5)
	);
	
	module_conv_kernel_1x2x8 u_module_conv_kernel_1x2x8_3
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

		.weight_win3x3_00(weight_win3x3_60),
		.weight_win3x3_01(weight_win3x3_61),
		.weight_win3x3_02(weight_win3x3_62),
		.weight_win3x3_03(weight_win3x3_63),
		.weight_win3x3_04(weight_win3x3_64),
		.weight_win3x3_05(weight_win3x3_65),
		.weight_win3x3_06(weight_win3x3_66),
		.weight_win3x3_07(weight_win3x3_67),
		
		.weight_win3x3_10(weight_win3x3_70),
		.weight_win3x3_11(weight_win3x3_71),
		.weight_win3x3_12(weight_win3x3_72),
		.weight_win3x3_13(weight_win3x3_73),
		.weight_win3x3_14(weight_win3x3_74),
		.weight_win3x3_15(weight_win3x3_75),
		.weight_win3x3_16(weight_win3x3_76),
		.weight_win3x3_17(weight_win3x3_77),
		
		.bias_1(bias_6),
		.bias_2(bias_7),
		.bias_valid(bias_valid),
		
		.ofm_stream_ch1(ofm_stream_ch6),
		.ofm_stream_ch2(ofm_stream_ch7)
	);
endmodule