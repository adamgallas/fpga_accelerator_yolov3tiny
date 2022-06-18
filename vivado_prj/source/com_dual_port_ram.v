module com_dual_port_ram
#(
	parameter WIDTH=8,
	parameter ADDR_BIT=10,
	parameter DEPTH=1024,
	parameter RAM_STYLE_VAL="block"
)
(
	input clk,
	input we_a,
	input en_a,
	input [ADDR_BIT-1:0] addr_a,
	input [WIDTH-1:0] di_a,
	output reg [WIDTH-1:0] dout_a,
	
	input we_b,
	input en_b,
	input [ADDR_BIT-1:0] addr_b,
	input [WIDTH-1:0] di_b,
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
			else
				dout_a<=RAM[addr_a];
		end
	end
	
	always@(posedge clk) begin
		if(en_b)
		begin
			if(we_b)
				RAM[addr_b]<=di_b;
			else
				dout_b<=RAM[addr_b];
		end
	end
endmodule
