module module_conv_kernel_1x2x8
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
	
	input [17:0] bias_1,
	input [17:0] bias_2,
	input bias_valid,
	
	output [17:0] ofm_stream_ch1,
	output [17:0] ofm_stream_ch2
);
	wire [17:0] ofm_0_1;
	wire [17:0] ofm_1_1;
	wire [17:0] ofm_2_1;
	wire [17:0] ofm_3_1;
	wire [17:0] ofm_4_1;
	wire [17:0] ofm_5_1;
	wire [17:0] ofm_6_1;
	wire [17:0] ofm_7_1;
	
	wire [17:0] ofm_0_2;
	wire [17:0] ofm_1_2;
	wire [17:0] ofm_2_2;
	wire [17:0] ofm_3_2;
	wire [17:0] ofm_4_2;
	wire [17:0] ofm_5_2;
	wire [17:0] ofm_6_2;
	wire [17:0] ofm_7_2;
	
	wire [17:0] bias_1_mask;
	wire [17:0] bias_2_mask;
	assign bias_1_mask=(bias_valid)?bias_1:0;
	assign bias_2_mask=(bias_valid)?bias_2:0;

	module_conv_kernel_1x2 u_module_conv_kernel_1x2_0
	(
		.clk(clk),
		.ifm_win3x3(ifm_win3x3_0),
		.weight_win3x3_ch1(weight_win3x3_00),
		.weight_win3x3_ch2(weight_win3x3_10),
		.ofm_stream_ch1(ofm_0_1),
		.ofm_stream_ch2(ofm_0_2)
	);

	module_conv_kernel_1x2 u_module_conv_kernel_1x2_1
	(
		.clk(clk),
		.ifm_win3x3(ifm_win3x3_1),
		.weight_win3x3_ch1(weight_win3x3_01),
		.weight_win3x3_ch2(weight_win3x3_11),
		.ofm_stream_ch1(ofm_1_1),
		.ofm_stream_ch2(ofm_1_2)
	);
	
	module_conv_kernel_1x2 u_module_conv_kernel_1x2_2
	(
		.clk(clk),
		.ifm_win3x3(ifm_win3x3_2),
		.weight_win3x3_ch1(weight_win3x3_02),
		.weight_win3x3_ch2(weight_win3x3_12),
		.ofm_stream_ch1(ofm_2_1),
		.ofm_stream_ch2(ofm_2_2)
	);
	
	module_conv_kernel_1x2 u_module_conv_kernel_1x2_3
	(
		.clk(clk),
		.ifm_win3x3(ifm_win3x3_3),
		.weight_win3x3_ch1(weight_win3x3_03),
		.weight_win3x3_ch2(weight_win3x3_13),
		.ofm_stream_ch1(ofm_3_1),
		.ofm_stream_ch2(ofm_3_2)
	);
	
	module_conv_kernel_1x2 u_module_conv_kernel_1x2_4
	(
		.clk(clk),
		.ifm_win3x3(ifm_win3x3_4),
		.weight_win3x3_ch1(weight_win3x3_04),
		.weight_win3x3_ch2(weight_win3x3_14),
		.ofm_stream_ch1(ofm_4_1),
		.ofm_stream_ch2(ofm_4_2)
	);
	
	module_conv_kernel_1x2 u_module_conv_kernel_1x2_5
	(
		.clk(clk),
		.ifm_win3x3(ifm_win3x3_5),
		.weight_win3x3_ch1(weight_win3x3_05),
		.weight_win3x3_ch2(weight_win3x3_15),
		.ofm_stream_ch1(ofm_5_1),
		.ofm_stream_ch2(ofm_5_2)
	);
	
	module_conv_kernel_1x2 u_module_conv_kernel_1x2_6
	(
		.clk(clk),
		.ifm_win3x3(ifm_win3x3_6),
		.weight_win3x3_ch1(weight_win3x3_06),
		.weight_win3x3_ch2(weight_win3x3_16),
		.ofm_stream_ch1(ofm_6_1),
		.ofm_stream_ch2(ofm_6_2)
	);
	
	module_conv_kernel_1x2 u_module_conv_kernel_1x2_7
	(
		.clk(clk),
		.ifm_win3x3(ifm_win3x3_7),
		.weight_win3x3_ch1(weight_win3x3_07),
		.weight_win3x3_ch2(weight_win3x3_17),
		.ofm_stream_ch1(ofm_7_1),
		.ofm_stream_ch2(ofm_7_2)
	);
	
	cal_addtree_int18_x9 u_cal_addtree_int18_x9_0
	(
		.clk(clk),
		.a1(ofm_0_1),
		.a2(ofm_1_1),
		.a3(ofm_2_1),
		.a4(ofm_3_1),
		.a5(ofm_4_1),
		.a6(ofm_5_1),
		.a7(ofm_6_1),
		.a8(ofm_7_1),
		.bias(bias_1_mask),
		.dout(ofm_stream_ch1)
	);
	cal_addtree_int18_x9 u_cal_addtree_int18_x9_1
	(
		.clk(clk),
		.a1(ofm_0_2),
		.a2(ofm_1_2),
		.a3(ofm_2_2),
		.a4(ofm_3_2),
		.a5(ofm_4_2),
		.a6(ofm_5_2),
		.a7(ofm_6_2),
		.a8(ofm_7_2),
		.bias(bias_2_mask),
		.dout(ofm_stream_ch2)
	);
endmodule