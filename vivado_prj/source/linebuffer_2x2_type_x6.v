module linebuffer_2x2_type_x4
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
	input [7:0] ifmstream_in,
	output [31:0] ifm_win2x2_batch
);
	
	reg [7:0] win1_1;
	reg [7:0] win1_2;
	reg [7:0] win2_1;
	reg [7:0] win2_2;

	wire [7:0] linetap1_1;
	wire [7:0] linetap1_2;
	wire [7:0] linetap1_3;
	wire [7:0] linetap1_4;
	wire [7:0] linetap1_5;
	wire [7:0] linetap1_6;
	
	wire [7:0] line1_in;
	wire [7:0] line1_out;
	
	assign ifm_win2x2_batch[7:0]=win1_1;
	assign ifm_win2x2_batch[15:8]=win1_2;
	assign ifm_win2x2_batch[23:16]=win2_1;
	assign ifm_win2x2_batch[31:24]=win2_2;	
	
	assign line1_in=ifmstream_in;

	// line 1
	com_shift_reg #(.DEPTH(LEN1),.WIDTH(8),.SRL_STYLE_VAL("reg_srl_reg"))
	u_com_shift_reg_line_1_segment_1
	(.clk(clk),.si(line1_in),.so(linetap1_1));
	
	com_shift_reg #(.DEPTH(LEN2),.WIDTH(8),.SRL_STYLE_VAL("reg_srl_reg"))
	u_com_shift_reg_line_1_segment_2
	(.clk(clk),.si(linetap1_1),.so(linetap1_2));
	
	com_shift_reg #(.DEPTH(LEN3),.WIDTH(8),.SRL_STYLE_VAL("reg_srl_reg"))
	u_com_shift_reg_line_1_segment_3
	(.clk(clk),.si(linetap1_2),.so(linetap1_3));
	
	com_shift_reg #(.DEPTH(LEN4),.WIDTH(8),.SRL_STYLE_VAL("reg_srl_reg"))
	u_com_shift_reg_line_1_segment_4
	(.clk(clk),.si(linetap1_3),.so(linetap1_4));
	
	com_shift_reg #(.DEPTH(LEN5),.WIDTH(8),.SRL_STYLE_VAL("reg_srl_reg"))
	u_com_shift_reg_line_1_segment_5
	(.clk(clk),.si(linetap1_4),.so(linetap1_5));
	
	com_shift_reg #(.DEPTH(LEN6),.WIDTH(8),.SRL_STYLE_VAL("reg_srl_reg"))
	u_com_shift_reg_line_1_segment_6
	(.clk(clk),.si(linetap1_5),.so(linetap1_6));
	
	com_mux_int_6sel1 u_com_mux_int_6sel1_1
	(
		.in_1(linetap1_1),
		.in_2(linetap1_2),
		.in_3(linetap1_3),
		.in_4(linetap1_4),
		.in_5(linetap1_5),
		.in_6(linetap1_6),
		.sel(sel),
		.out(line1_out)
	);
	
	always@(posedge clk) begin
		win1_1<=win1_2;
		win1_2<=line1_out;
		
		win2_1<=win2_2;
		win2_2<=ifmstream_in;
	end
endmodule