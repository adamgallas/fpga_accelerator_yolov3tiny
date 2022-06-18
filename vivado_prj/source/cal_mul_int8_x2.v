module cal_mult_int8_x2
(
	input clk,
	input signed [7:0]a,
	input signed [7:0]b,
	input signed [7:0]c,
	
	output signed [15:0]ac,
	output signed [15:0]bc
);
	wire signed [15:0] ac_tmp;
	wire signed [15:0] bc_tmp;
	wire signed [15:0] ac_comp;
	cal_mult_int8_x2_dsp u_cal_mult_int8_x2_dsp
	(
		.clk(clk),
		.a(a),
		.b(b),
		.c(c),
		.ac(ac_tmp),
		.bc(bc_tmp)
	);
	assign ac_comp=(bc_tmp[15]==1'b1)?(ac_tmp+1'b1):ac_tmp;
	assign ac=ac_comp;
	assign bc=bc_tmp;
endmodule
