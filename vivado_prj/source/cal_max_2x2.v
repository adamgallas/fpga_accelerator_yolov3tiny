module cal_max_2x2
#(
	parameter WIDTH=8
)
(
	input clk,
	input signed [WIDTH-1:0] val1_1,
	input signed [WIDTH-1:0] val1_2,
	input signed [WIDTH-1:0] val2_1,
	input signed [WIDTH-1:0] val2_2,
	output signed [WIDTH-1:0] max_out
);
	wire signed [WIDTH-1:0] tmp1;
	wire signed [WIDTH-1:0] tmp2;
	
	cal_comparator
	#(
		.WIDTH(WIDTH)
	)
	u_cal_comparator_1
	(
		.clk(clk),
		.a(val1_1),
		.b(val1_2),
		.dout(tmp1)
	);
	
	cal_comparator
	#(
		.WIDTH(WIDTH)
	)
	u_cal_comparator_2
	(
		.clk(clk),
		.a(val2_1),
		.b(val2_2),
		.dout(tmp2)
	);
	
	cal_comparator
	#(
		.WIDTH(WIDTH)
	)
	u_cal_comparator_3
	(
		.clk(clk),
		.a(tmp1),
		.b(tmp2),
		.dout(max_out)
	);
endmodule