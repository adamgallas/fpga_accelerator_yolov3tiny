module module_sub_zero_point_1x8
(
	input clk,
	input signed [7:0] zero_point,
	
	input [7:0] data_in_0,
	input [7:0] data_in_1,
	input [7:0] data_in_2,
	input [7:0] data_in_3,
	input [7:0] data_in_4,
	input [7:0] data_in_5,
	input [7:0] data_in_6,
	input [7:0] data_in_7,
	
	output [7:0] data_out_0,
	output [7:0] data_out_1,
	output [7:0] data_out_2,
	output [7:0] data_out_3,
	output [7:0] data_out_4,
	output [7:0] data_out_5,
	output [7:0] data_out_6,
	output [7:0] data_out_7
);
	cal_sub_zero_point u_cal_sub_zero_point_0
	(
		.clk(clk),
		.zero_point(zero_point),
		.data_in(data_in_0),
		.data_out(data_out_0)
	);
	cal_sub_zero_point u_cal_sub_zero_point_1
	(
		.clk(clk),
		.zero_point(zero_point),
		.data_in(data_in_1),
		.data_out(data_out_1)
	);
	cal_sub_zero_point u_cal_sub_zero_point_2
	(
		.clk(clk),
		.zero_point(zero_point),
		.data_in(data_in_2),
		.data_out(data_out_2)
	);
	cal_sub_zero_point u_cal_sub_zero_point_3
	(
		.clk(clk),
		.zero_point(zero_point),
		.data_in(data_in_3),
		.data_out(data_out_3)
	);
	cal_sub_zero_point u_cal_sub_zero_point_4
	(
		.clk(clk),
		.zero_point(zero_point),
		.data_in(data_in_4),
		.data_out(data_out_4)
	);
	cal_sub_zero_point u_cal_sub_zero_point_5
	(
		.clk(clk),
		.zero_point(zero_point),
		.data_in(data_in_5),
		.data_out(data_out_5)
	);
	cal_sub_zero_point u_cal_sub_zero_point_6
	(
		.clk(clk),
		.zero_point(zero_point),
		.data_in(data_in_6),
		.data_out(data_out_6)
	);
	cal_sub_zero_point u_cal_sub_zero_point_7
	(
		.clk(clk),
		.zero_point(zero_point),
		.data_in(data_in_7),
		.data_out(data_out_7)
	);


endmodule