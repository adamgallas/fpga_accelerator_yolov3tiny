module module_acc
#(
	parameter DEPTH=114*114,
	parameter ADDR_BIT=14
)
(
	input clk,
	input prev_data_zero,
	input curr_data_zero,
	
	input read_en,
	input write_en,
	input [ADDR_BIT-1:0] read_addr,
	input [ADDR_BIT-1:0] write_addr,
	
	input [17:0] curr_data,
	output [17:0] acc_result
);
	wire [17:0] prev_data;
	wire [17:0] post_data;
	
	com_dual_port_ram
	#(
		.WIDTH(18),
		.ADDR_BIT(ADDR_BIT),
		.DEPTH(DEPTH),
		.RAM_STYLE_VAL("block")
	)
	u_com_dual_port_ram_ofm
	(
		.clk(clk),
		.we_a(1'b0),
		.en_a(read_en),
		.addr_a(read_addr),
		.di_a(),
		.dout_a(prev_data),
		
		.we_b(1'b1),
		.en_b(write_en),
		.addr_b(write_addr),
		.di_b(post_data),
		.dout_b()
	);
	
	cal_acc u_cal_acc
	(
		.clk(clk),
		.a(prev_data),
		.b(curr_data),
		.a_zero(prev_data_zero),
		.b_zero(curr_data_zero),
		.c(post_data)
	);
	
	assign acc_result=post_data;
endmodule