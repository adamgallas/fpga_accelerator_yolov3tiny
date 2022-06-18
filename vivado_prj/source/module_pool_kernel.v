module module_pool_kernel
(
	input clk,
	input [31:0] ifm_win2x2,
	input zero_out,
	input [7:0] zero_point,
	output reg [7:0] ofm_stream
);
	wire [7:0] win1_1;
	wire [7:0] win1_2;
	wire [7:0] win2_1;
	wire [7:0] win2_2;
	wire [7:0] res;
	
	assign win1_1=ifm_win2x2[7:0];
	assign win1_2=ifm_win2x2[15:8];
	assign win2_1=ifm_win2x2[23:16];
	assign win2_2=ifm_win2x2[31:24];
	
	cal_max_2x2
	#(
		.WIDTH(8)
	)
	u_cal_max_2x2
	(
		.clk(clk),
		.val1_1(win1_1),
		.val1_2(win1_2),
		.val2_1(win2_1),
		.val2_2(win2_2),
		.max_out(res)
	);
	always@(posedge clk) begin
		if(zero_out) begin
			ofm_stream<=zero_point;
		end else begin
			ofm_stream<=res;
		end
	end
endmodule