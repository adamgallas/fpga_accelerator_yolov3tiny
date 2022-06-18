module module_leaky_relu_1x8
#(
	parameter RAM_STYLE_VAL="distributed"
)
(
	input clk,
	input we_a,
	input [7:0] addr_a,
	input [7:0] di_a,
	
	input [7:0] addr_0,
	input [7:0] addr_1,
	input [7:0] addr_2,
	input [7:0] addr_3,
	input [7:0] addr_4,
	input [7:0] addr_5,
	input [7:0] addr_6,
	input [7:0] addr_7,

	output [63:0] bundle_out
);
	wire	[7:0]	dout_0;
	wire	[7:0]	dout_1;
	wire	[7:0]	dout_2;
	wire	[7:0]	dout_3;
	wire	[7:0]	dout_4;
	wire	[7:0]	dout_5;
	wire	[7:0]	dout_6;
	wire	[7:0]	dout_7;

	assign bundle_out[7:0]   =dout_0;
	assign bundle_out[15:8]  =dout_1;
	assign bundle_out[23:16] =dout_2;
	assign bundle_out[31:24] =dout_3;
	assign bundle_out[39:32] =dout_4;
	assign bundle_out[47:40] =dout_5;
	assign bundle_out[55:48] =dout_6;
	assign bundle_out[63:56] =dout_7;

	com_simple_dual_port_ram
	#(.WIDTH(8),.ADDR_BIT(8),.DEPTH(256),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_0
	(
		.clk(clk),
		.we_a(we_a),
		.en_a(1'b1),
		.addr_a(addr_a),
		.di_a(di_a),
		
		.addr_b(addr_0),
		.dout_b(dout_0)
	);
	com_simple_dual_port_ram
	#(.WIDTH(8),.ADDR_BIT(8),.DEPTH(256),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_1
	(
		.clk(clk),
		.we_a(we_a),
		.en_a(1'b1),
		.addr_a(addr_a),
		.di_a(di_a),
		
		.addr_b(addr_1),
		.dout_b(dout_1)
	);
	com_simple_dual_port_ram
	#(.WIDTH(8),.ADDR_BIT(8),.DEPTH(256),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_2
	(
		.clk(clk),
		.we_a(we_a),
		.en_a(1'b1),
		.addr_a(addr_a),
		.di_a(di_a),
		
		.addr_b(addr_2),
		.dout_b(dout_2)
	);
	com_simple_dual_port_ram
	#(.WIDTH(8),.ADDR_BIT(8),.DEPTH(256),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_3
	(
		.clk(clk),
		.we_a(we_a),
		.en_a(1'b1),
		.addr_a(addr_a),
		.di_a(di_a),
		
		.addr_b(addr_3),
		.dout_b(dout_3)
	);
	com_simple_dual_port_ram
	#(.WIDTH(8),.ADDR_BIT(8),.DEPTH(256),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_4
	(
		.clk(clk),
		.we_a(we_a),
		.en_a(1'b1),
		.addr_a(addr_a),
		.di_a(di_a),
		
		.addr_b(addr_4),
		.dout_b(dout_4)
	);
	com_simple_dual_port_ram
	#(.WIDTH(8),.ADDR_BIT(8),.DEPTH(256),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_5
	(
		.clk(clk),
		.we_a(we_a),
		.en_a(1'b1),
		.addr_a(addr_a),
		.di_a(di_a),
		
		.addr_b(addr_5),
		.dout_b(dout_5)
	);
	com_simple_dual_port_ram
	#(.WIDTH(8),.ADDR_BIT(8),.DEPTH(256),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_6
	(
		.clk(clk),
		.we_a(we_a),
		.en_a(1'b1),
		.addr_a(addr_a),
		.di_a(di_a),
		
		.addr_b(addr_6),
		.dout_b(dout_6)
	);
	com_simple_dual_port_ram
	#(.WIDTH(8),.ADDR_BIT(8),.DEPTH(256),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_7
	(
		.clk(clk),
		.we_a(we_a),
		.en_a(1'b1),
		.addr_a(addr_a),
		.di_a(di_a),
		
		.addr_b(addr_7),
		.dout_b(dout_7)
	);
endmodule