module cal_acc
(
	input clk,
	input signed [17:0] a,
	input signed [17:0] b,
	input a_zero,
	input b_zero,
	output reg signed [17:0] c
);
	wire signed [17:0] a_z;
	wire signed [17:0] b_z;
	assign a_z=(a_zero)?0:a;
	assign b_z=(b_zero)?0:b;
	always@(posedge clk) begin
		c<=a_z+b_z;
	end
endmodule