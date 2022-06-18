module cal_scale
(
	input clk,
	input signed [15:0] val,
	input signed [15:0] scale,
	input [3:0] shift,
	output signed [15:0] dout
);
	wire [31:0] dtmp;
	cal_scale_mul u_cal_scale_mul
	(
		.clk(clk),
		.val(val),
		.scale(scale),
		.dout(dtmp)
	);
	cal_scale_shift u_cal_scale_shift
	(
		.clk(clk),
		.din(dtmp),
		.shift(shift),
		.dout(dout)
	);
endmodule