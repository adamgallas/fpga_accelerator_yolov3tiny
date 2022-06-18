module cal_sub_zero_point
(
	input clk,
	input signed [7:0] zero_point,
	input signed [7:0] data_in,
	output reg signed [7:0] data_out
);
	always@(posedge clk) begin
		data_out<=data_in-zero_point;
	end
endmodule