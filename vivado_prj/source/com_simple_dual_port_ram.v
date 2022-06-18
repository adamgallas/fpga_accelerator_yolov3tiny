module com_simple_dual_port_ram
#(
	parameter WIDTH=72,
	parameter ADDR_BIT=9,
	parameter DEPTH=512,
	parameter RAM_STYLE_VAL="block"
)
(
	input clk,
	input we_a,
	input en_a,
	input [ADDR_BIT-1:0] addr_a,
	input [WIDTH-1:0] di_a,
	
	input [ADDR_BIT-1:0] addr_b,
	output reg [WIDTH-1:0] dout_b
);
	(*ram_style=RAM_STYLE_VAL*)
	reg [WIDTH-1:0] RAM[0:DEPTH-1];
	
	integer t;
	initial begin
		for(t=0;t<DEPTH;t=t+1)
			RAM[t]=0;
	end
	
	always@(posedge clk) begin
		if(en_a)
		begin
			if(we_a)
				RAM[addr_a]<=di_a;
		end
	end
	
	always@(posedge clk) begin
		begin
			dout_b<=RAM[addr_b];
		end
	end
endmodule
