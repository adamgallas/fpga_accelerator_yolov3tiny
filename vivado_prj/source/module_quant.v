module module_quant
(
	input clk,
	input signed [17:0] acc_result,
	input signed [15:0] scale,
    input [3:0] shift,
	input [7:0] zero_point,
	output [7:0] quant_result
);
	wire [15:0] after_16bit_sat;
	wire [15:0] after_scale;
	wire signed [7:0] after_8bit_sat;
	
	cal_sat_int18_int16 u_cal_sat_int18_int16
	(
		.clk(clk),
		.data_in(acc_result),
		.data_out(after_16bit_sat)
	);

	cal_scale u_cal_scale
	(
		.clk(clk),
		.val(after_16bit_sat),
		.scale(scale),
		.shift(shift),
		.dout(after_scale)
	);
	
	cal_sat_int16_int8 u_cal_sat_int16_int8
	(
		.clk(clk),
		.data_in(after_scale),
		.data_out(after_8bit_sat)
	);
	assign quant_result=after_8bit_sat+zero_point;
	/*
	cal_relu u_cal_relu
	(
		.clk(clk),
		.zero_point(zero_point),
		.data_in(after_8bit_sat),
		.data_out(quant_result)
	);
	*/
endmodule