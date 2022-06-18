module buffer_ofm
#(
	parameter DEPTH=114*114,
	parameter ADDR_BIT=14,
	parameter RAM_STYLE_VAL="block"
)
(
	input clk,
	input [ADDR_BIT-1:0] bram_write_addr,
	input bram_en_write,
	
	input [ADDR_BIT-1:0] bram_read_addr,
	input [63:0] ofm_store_bundle,
	output [63:0] ofm_out_bundle
);
	com_simple_dual_port_ram
	#(
		.WIDTH(64),
		.ADDR_BIT(ADDR_BIT),
		.DEPTH(DEPTH),
		.RAM_STYLE_VAL(RAM_STYLE_VAL)
	)
	u_com_simple_dual_port_ram
	(
		.clk(clk),
		.we_a(bram_en_write),
		.en_a(1'b1),
		.addr_a(bram_write_addr),
		.di_a(ofm_store_bundle),
		
		.addr_b(bram_read_addr),
		.dout_b(ofm_out_bundle)
	);
endmodule