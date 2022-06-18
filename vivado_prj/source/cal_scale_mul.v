(*use_dsp="yes"*)
module cal_scale_mul
(
	input clk,
	input signed [15:0] val,
	input signed [15:0] scale,
	output reg signed [31:0] dout
);
	reg signed [15:0] val_d;
	reg signed [15:0] scale_d;
	reg signed [31:0] dout_t;
	always@(posedge clk) begin
		val_d<=val;
		scale_d<=scale;
		dout_t<=val_d*scale_d;
		dout<=dout_t;
	end
endmodule
