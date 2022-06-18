module cal_scale_shift
(
	input clk,
	input signed [31:0] din,
	input [3:0] shift,
	output signed [15:0] dout
);
	wire trunc;
	reg trunc_reg;
	wire [15:0] din_up;
	reg signed [15:0] dout_tmp;
	assign din_up=din[29:14];
	assign trunc=din_up[shift];
	
	always@(posedge clk) begin
		dout_tmp<=(din>>>(15+shift));
		trunc_reg<=trunc;
	end
	assign dout=(trunc_reg==1'b1)?(dout_tmp+1):(dout_tmp);
endmodule