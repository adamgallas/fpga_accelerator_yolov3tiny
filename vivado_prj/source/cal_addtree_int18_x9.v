module cal_addtree_int18_x9
(
	input clk,
	input signed [17:0] a1,
	input signed [17:0] a2,
	input signed [17:0] a3,
	input signed [17:0] a4,
	input signed [17:0] a5,
	input signed [17:0] a6,
	input signed [17:0] a7,
	input signed [17:0] a8,
	input signed [17:0] bias,
	output reg signed [17:0] dout
);
	wire signed [17:0]a1_d1;
	wire signed [17:0]a2_d1;
	wire signed [17:0]a3_d1;
	wire signed [17:0]a4_d1;
	wire signed [17:0]a5_d1;
	wire signed [17:0]a6_d1;
	wire signed [17:0]a7_d1;
	wire signed [17:0]a8_d1;
	wire signed [17:0]bias_d1;
	
	reg signed [17:0]b1_d2;
	reg signed [17:0]b2_d2;
	reg signed [17:0]b3_d2;
	
	assign a1_d1=a1;
	assign a2_d1=a2;
	assign a3_d1=a3;
	assign a4_d1=a4;
	assign a5_d1=a5;
	assign a6_d1=a6;
	assign a7_d1=a7;
	assign a8_d1=a8;
	assign bias_d1=bias;
	
	always@(posedge clk) begin
		b1_d2<=a1_d1+a2_d1+a3_d1;
		b2_d2<=a4_d1+a5_d1+a6_d1;
		b3_d2<=a7_d1+a8_d1+bias_d1;
		
		dout<=b1_d2+b2_d2+b3_d2;
	end
endmodule
