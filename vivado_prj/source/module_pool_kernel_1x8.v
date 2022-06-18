module module_pool_kernel_1x8
(
	input clk,
	input [31:0] ifm_win2x2_0,
	input [31:0] ifm_win2x2_1,
	input [31:0] ifm_win2x2_2,
	input [31:0] ifm_win2x2_3,
	input [31:0] ifm_win2x2_4,
	input [31:0] ifm_win2x2_5,
	input [31:0] ifm_win2x2_6,
	input [31:0] ifm_win2x2_7,
	input pool_zero_out,
	input [7:0] zero_point,
	
	output [7:0] ofm_stream_ch0,
	output [7:0] ofm_stream_ch1,
	output [7:0] ofm_stream_ch2,
	output [7:0] ofm_stream_ch3,
	output [7:0] ofm_stream_ch4,
	output [7:0] ofm_stream_ch5,
	output [7:0] ofm_stream_ch6,
	output [7:0] ofm_stream_ch7
);
	module_pool_kernel u_module_pool_kernel_0
	(
		.clk(clk),
		.ifm_win2x2(ifm_win2x2_0),
		.zero_out(pool_zero_out),
		.zero_point(zero_point),
		.ofm_stream(ofm_stream_ch0)
	);
	module_pool_kernel u_module_pool_kernel_1
	(
		.clk(clk),
		.ifm_win2x2(ifm_win2x2_1),
		.zero_out(pool_zero_out),
		.zero_point(zero_point),
		.ofm_stream(ofm_stream_ch1)
	);
	module_pool_kernel u_module_pool_kernel_2
	(
		.clk(clk),
		.ifm_win2x2(ifm_win2x2_2),
		.zero_out(pool_zero_out),
		.zero_point(zero_point),
		.ofm_stream(ofm_stream_ch2)
	);
	module_pool_kernel u_module_pool_kernel_3
	(
		.clk(clk),
		.ifm_win2x2(ifm_win2x2_3),
		.zero_out(pool_zero_out),
		.zero_point(zero_point),
		.ofm_stream(ofm_stream_ch3)
	);
	module_pool_kernel u_module_pool_kernel_4
	(
		.clk(clk),
		.ifm_win2x2(ifm_win2x2_4),
		.zero_out(pool_zero_out),
		.zero_point(zero_point),
		.ofm_stream(ofm_stream_ch4)
	);
	module_pool_kernel u_module_pool_kernel_5
	(
		.clk(clk),
		.ifm_win2x2(ifm_win2x2_5),
		.zero_out(pool_zero_out),
		.zero_point(zero_point),
		.ofm_stream(ofm_stream_ch5)
	);
	module_pool_kernel u_module_pool_kernel_6
	(
		.clk(clk),
		.ifm_win2x2(ifm_win2x2_6),
		.zero_out(pool_zero_out),
		.zero_point(zero_point),
		.ofm_stream(ofm_stream_ch6)
	);
	module_pool_kernel u_module_pool_kernel_7
	(
		.clk(clk),
		.ifm_win2x2(ifm_win2x2_7),
		.zero_out(pool_zero_out),
		.zero_point(zero_point),
		.ofm_stream(ofm_stream_ch7)
	);
endmodule