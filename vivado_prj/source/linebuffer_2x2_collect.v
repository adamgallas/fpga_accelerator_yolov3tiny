module linebuffer_2x2_collect
#(
	parameter LEN1=16,
	parameter LEN2=14,
	parameter LEN3=28,
	parameter LEN4=56,
	parameter LEN5=112,
	parameter LEN6=224
)
(
	input clk,
	input [2:0] sel,
	input [7:0] ifmstream_0,
	input [7:0] ifmstream_1,
	input [7:0] ifmstream_2,
	input [7:0] ifmstream_3,
	input [7:0] ifmstream_4,
	input [7:0] ifmstream_5,
	input [7:0] ifmstream_6,
	input [7:0] ifmstream_7,
	
	output [31:0] ifm_win2x2_0,
	output [31:0] ifm_win2x2_1,
	output [31:0] ifm_win2x2_2,
	output [31:0] ifm_win2x2_3,
	output [31:0] ifm_win2x2_4,
	output [31:0] ifm_win2x2_5,
	output [31:0] ifm_win2x2_6,
	output [31:0] ifm_win2x2_7
);

	linebuffer_2x2_type_x4
	#(
		.LEN1(LEN1),
		.LEN2(LEN2),
		.LEN3(LEN3),
		.LEN4(LEN4),
		.LEN5(LEN5),
		.LEN6(LEN6)
	)
	u_linebuffer_2x2_type_x4_0
	(
		.clk(clk),
		.sel(sel),
		.ifmstream_in(ifmstream_0),
		.ifm_win2x2_batch(ifm_win2x2_0)
	);
	linebuffer_2x2_type_x4
	#(
		.LEN1(LEN1),
		.LEN2(LEN2),
		.LEN3(LEN3),
		.LEN4(LEN4),
		.LEN5(LEN5),
		.LEN6(LEN6)
	)
	u_linebuffer_2x2_type_x4_1
	(
		.clk(clk),
		.sel(sel),
		.ifmstream_in(ifmstream_1),
		.ifm_win2x2_batch(ifm_win2x2_1)
	);
	linebuffer_2x2_type_x4
	#(
		.LEN1(LEN1),
		.LEN2(LEN2),
		.LEN3(LEN3),
		.LEN4(LEN4),
		.LEN5(LEN5),
		.LEN6(LEN6)
	)
	u_linebuffer_2x2_type_x4_2
	(
		.clk(clk),
		.sel(sel),
		.ifmstream_in(ifmstream_2),
		.ifm_win2x2_batch(ifm_win2x2_2)
	);
	linebuffer_2x2_type_x4
	#(
		.LEN1(LEN1),
		.LEN2(LEN2),
		.LEN3(LEN3),
		.LEN4(LEN4),
		.LEN5(LEN5),
		.LEN6(LEN6)
	)
	u_linebuffer_2x2_type_x4_3
	(
		.clk(clk),
		.sel(sel),
		.ifmstream_in(ifmstream_3),
		.ifm_win2x2_batch(ifm_win2x2_3)
	);
	linebuffer_2x2_type_x4
	#(
		.LEN1(LEN1),
		.LEN2(LEN2),
		.LEN3(LEN3),
		.LEN4(LEN4),
		.LEN5(LEN5),
		.LEN6(LEN6)
	)
	u_linebuffer_2x2_type_x4_4
	(
		.clk(clk),
		.sel(sel),
		.ifmstream_in(ifmstream_4),
		.ifm_win2x2_batch(ifm_win2x2_4)
	);
	linebuffer_2x2_type_x4
	#(
		.LEN1(LEN1),
		.LEN2(LEN2),
		.LEN3(LEN3),
		.LEN4(LEN4),
		.LEN5(LEN5),
		.LEN6(LEN6)
	)
	u_linebuffer_2x2_type_x4_5
	(
		.clk(clk),
		.sel(sel),
		.ifmstream_in(ifmstream_5),
		.ifm_win2x2_batch(ifm_win2x2_5)
	);
	linebuffer_2x2_type_x4
	#(
		.LEN1(LEN1),
		.LEN2(LEN2),
		.LEN3(LEN3),
		.LEN4(LEN4),
		.LEN5(LEN5),
		.LEN6(LEN6)
	)
	u_linebuffer_2x2_type_x4_6
	(
		.clk(clk),
		.sel(sel),
		.ifmstream_in(ifmstream_6),
		.ifm_win2x2_batch(ifm_win2x2_6)
	);
	linebuffer_2x2_type_x4
	#(
		.LEN1(LEN1),
		.LEN2(LEN2),
		.LEN3(LEN3),
		.LEN4(LEN4),
		.LEN5(LEN5),
		.LEN6(LEN6)
	)
	u_linebuffer_2x2_type_x4_7
	(
		.clk(clk),
		.sel(sel),
		.ifmstream_in(ifmstream_7),
		.ifm_win2x2_batch(ifm_win2x2_7)
	);
endmodule