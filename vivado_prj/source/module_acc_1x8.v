module module_acc_1x8
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
	
	input [17:0] curr_data_0,
	input [17:0] curr_data_1,
	input [17:0] curr_data_2,
	input [17:0] curr_data_3,
	input [17:0] curr_data_4,
	input [17:0] curr_data_5,
	input [17:0] curr_data_6,
	input [17:0] curr_data_7,
	
	output [17:0] acc_result_0,
	output [17:0] acc_result_1,
	output [17:0] acc_result_2,
	output [17:0] acc_result_3,
	output [17:0] acc_result_4,
	output [17:0] acc_result_5,
	output [17:0] acc_result_6,
	output [17:0] acc_result_7
);
	module_acc
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT))
	u_module_acc_0
	(
		.clk(clk),
		.prev_data_zero(prev_data_zero),
		.curr_data_zero(curr_data_zero),
		.read_en(read_en),
		.write_en(write_en),
		.read_addr(read_addr),
		.write_addr(write_addr),
		.curr_data(curr_data_0),
		.acc_result(acc_result_0)
	);
	module_acc
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT))
	u_module_acc_1
	(
		.clk(clk),
		.prev_data_zero(prev_data_zero),
		.curr_data_zero(curr_data_zero),
		.read_en(read_en),
		.write_en(write_en),
		.read_addr(read_addr),
		.write_addr(write_addr),
		.curr_data(curr_data_1),
		.acc_result(acc_result_1)
	);
	module_acc
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT))
	u_module_acc_2
	(
		.clk(clk),
		.prev_data_zero(prev_data_zero),
		.curr_data_zero(curr_data_zero),
		.read_en(read_en),
		.write_en(write_en),
		.read_addr(read_addr),
		.write_addr(write_addr),
		.curr_data(curr_data_2),
		.acc_result(acc_result_2)
	);
	module_acc
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT))
	u_module_acc_3
	(
		.clk(clk),
		.prev_data_zero(prev_data_zero),
		.curr_data_zero(curr_data_zero),
		.read_en(read_en),
		.write_en(write_en),
		.read_addr(read_addr),
		.write_addr(write_addr),
		.curr_data(curr_data_3),
		.acc_result(acc_result_3)
	);
	module_acc
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT))
	u_module_acc_4
	(
		.clk(clk),
		.prev_data_zero(prev_data_zero),
		.curr_data_zero(curr_data_zero),
		.read_en(read_en),
		.write_en(write_en),
		.read_addr(read_addr),
		.write_addr(write_addr),
		.curr_data(curr_data_4),
		.acc_result(acc_result_4)
	);
	module_acc
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT))
	u_module_acc_5
	(
		.clk(clk),
		.prev_data_zero(prev_data_zero),
		.curr_data_zero(curr_data_zero),
		.read_en(read_en),
		.write_en(write_en),
		.read_addr(read_addr),
		.write_addr(write_addr),
		.curr_data(curr_data_5),
		.acc_result(acc_result_5)
	);
	module_acc
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT))
	u_module_acc_6
	(
		.clk(clk),
		.prev_data_zero(prev_data_zero),
		.curr_data_zero(curr_data_zero),
		.read_en(read_en),
		.write_en(write_en),
		.read_addr(read_addr),
		.write_addr(write_addr),
		.curr_data(curr_data_6),
		.acc_result(acc_result_6)
	);
	module_acc
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT))
	u_module_acc_7
	(
		.clk(clk),
		.prev_data_zero(prev_data_zero),
		.curr_data_zero(curr_data_zero),
		.read_en(read_en),
		.write_en(write_en),
		.read_addr(read_addr),
		.write_addr(write_addr),
		.curr_data(curr_data_7),
		.acc_result(acc_result_7)
	);
endmodule