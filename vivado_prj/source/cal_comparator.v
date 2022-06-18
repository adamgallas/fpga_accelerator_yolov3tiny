module cal_comparator
#(
	parameter WIDTH=8
)
(
	input clk,
	input signed [WIDTH-1:0] a,
	input signed [WIDTH-1:0] b,
	output reg signed [WIDTH-1:0] dout
);
	always@(posedge clk) begin
		if(a>=b) begin
			dout<=a;
		end else begin
			dout<=b;
		end
	end
endmodule