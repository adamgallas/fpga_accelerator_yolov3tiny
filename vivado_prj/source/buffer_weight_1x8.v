module buffer_weight_1x8
#(
	parameter DEPTH=512,
	parameter ADDR_BIT=9,
	parameter RAM_STYLE_VAL="block"
)
(
	input clk,
	
	input [ADDR_BIT-1:0] write_addr_0,	input write_en_0,
	input [ADDR_BIT-1:0] write_addr_1,	input write_en_1,
	input [ADDR_BIT-1:0] write_addr_2,	input write_en_2,
	input [ADDR_BIT-1:0] write_addr_3,	input write_en_3,
	input [ADDR_BIT-1:0] write_addr_4,	input write_en_4,
	input [ADDR_BIT-1:0] write_addr_5,	input write_en_5,
	input [ADDR_BIT-1:0] write_addr_6,	input write_en_6,
	input [ADDR_BIT-1:0] write_addr_7,	input write_en_7,
	input [71:0] weight_in,
	
	input [ADDR_BIT-1:0] read_addr,
	output [71:0] weight_out_0,
	output [71:0] weight_out_1,
	output [71:0] weight_out_2,
	output [71:0] weight_out_3,
	output [71:0] weight_out_4,
	output [71:0] weight_out_5,
	output [71:0] weight_out_6,
	output [71:0] weight_out_7
);

	com_simple_dual_port_ram
	#(.WIDTH(72),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_0
	(
		.clk(clk),
		.we_a(write_en_0),
		.en_a(1'b1),
		.addr_a(write_addr_0),
		.di_a(weight_in),
		
		.addr_b(read_addr),
		.dout_b(weight_out_0)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(72),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_1
	(
		.clk(clk),
		.we_a(write_en_1),
		.en_a(1'b1),
		.addr_a(write_addr_1),
		.di_a(weight_in),
		
		.addr_b(read_addr),
		.dout_b(weight_out_1)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(72),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_2
	(
		.clk(clk),
		.we_a(write_en_2),
		.en_a(1'b1),
		.addr_a(write_addr_2),
		.di_a(weight_in),
		
		.addr_b(read_addr),
		.dout_b(weight_out_2)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(72),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_3
	(
		.clk(clk),
		.we_a(write_en_3),
		.en_a(1'b1),
		.addr_a(write_addr_3),
		.di_a(weight_in),
		
		.addr_b(read_addr),
		.dout_b(weight_out_3)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(72),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_4
	(
		.clk(clk),
		.we_a(write_en_4),
		.en_a(1'b1),
		.addr_a(write_addr_4),
		.di_a(weight_in),
		
		.addr_b(read_addr),
		.dout_b(weight_out_4)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(72),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_5
	(
		.clk(clk),
		.we_a(write_en_5),
		.en_a(1'b1),
		.addr_a(write_addr_5),
		.di_a(weight_in),
		
		.addr_b(read_addr),
		.dout_b(weight_out_5)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(72),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_6
	(
		.clk(clk),
		.we_a(write_en_6),
		.en_a(1'b1),
		.addr_a(write_addr_6),
		.di_a(weight_in),
		
		.addr_b(read_addr),
		.dout_b(weight_out_6)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(72),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_7
	(
		.clk(clk),
		.we_a(write_en_7),
		.en_a(1'b1),
		.addr_a(write_addr_7),
		.di_a(weight_in),
		
		.addr_b(read_addr),
		.dout_b(weight_out_7)
	);
	
endmodule