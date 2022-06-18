module com_mux_int_6sel1
(
	input [7:0] in_1,
	input [7:0] in_2,
	input [7:0] in_3,
	input [7:0] in_4,
	input [7:0] in_5,
	input [7:0] in_6,
	input [2:0] sel,
	output reg [7:0] out
);
	always@(*) begin
		case(sel)
			3'b000: out=in_1;
			3'b001: out=in_2;
			3'b010: out=in_3;
			3'b011: out=in_4;
			3'b100: out=in_5;
			3'b101: out=in_6;
			default: out=0;
		endcase
	end
endmodule