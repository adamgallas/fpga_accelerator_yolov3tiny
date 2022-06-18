module buffer_weight_1x8x8
#(
	parameter DEPTH=512,
	parameter ADDR_BIT=9,
	parameter RAM_STYLE_VAL="block"
)
(
	input clk,
	input rst,
	input clear,
	
	input bram_en_write,
	input [7:0] in_0,
	input [7:0] in_1,
	input [7:0] in_2,
	input [7:0] in_3,
	input [7:0] in_4,
	input [7:0] in_5,
	input [7:0] in_6,
	input [7:0] in_7,
	
	input [ADDR_BIT-1:0] read_addr,
	output [71:0] weight_win3x3_00,
	output [71:0] weight_win3x3_01,
	output [71:0] weight_win3x3_02,
	output [71:0] weight_win3x3_03,
	output [71:0] weight_win3x3_04,
	output [71:0] weight_win3x3_05,
	output [71:0] weight_win3x3_06,
	output [71:0] weight_win3x3_07,
	
	output [71:0] weight_win3x3_10,
	output [71:0] weight_win3x3_11,
	output [71:0] weight_win3x3_12,
	output [71:0] weight_win3x3_13,
	output [71:0] weight_win3x3_14,
	output [71:0] weight_win3x3_15,
	output [71:0] weight_win3x3_16,
	output [71:0] weight_win3x3_17,
	
	output [71:0] weight_win3x3_20,
	output [71:0] weight_win3x3_21,
	output [71:0] weight_win3x3_22,
	output [71:0] weight_win3x3_23,
	output [71:0] weight_win3x3_24,
	output [71:0] weight_win3x3_25,
	output [71:0] weight_win3x3_26,
	output [71:0] weight_win3x3_27,
	
	output [71:0] weight_win3x3_30,
	output [71:0] weight_win3x3_31,
	output [71:0] weight_win3x3_32,
	output [71:0] weight_win3x3_33,
	output [71:0] weight_win3x3_34,
	output [71:0] weight_win3x3_35,
	output [71:0] weight_win3x3_36,
	output [71:0] weight_win3x3_37,
	
	output [71:0] weight_win3x3_40,
	output [71:0] weight_win3x3_41,
	output [71:0] weight_win3x3_42,
	output [71:0] weight_win3x3_43,
	output [71:0] weight_win3x3_44,
	output [71:0] weight_win3x3_45,
	output [71:0] weight_win3x3_46,
	output [71:0] weight_win3x3_47,
	
	output [71:0] weight_win3x3_50,
	output [71:0] weight_win3x3_51,
	output [71:0] weight_win3x3_52,
	output [71:0] weight_win3x3_53,
	output [71:0] weight_win3x3_54,
	output [71:0] weight_win3x3_55,
	output [71:0] weight_win3x3_56,
	output [71:0] weight_win3x3_57,
	
	output [71:0] weight_win3x3_60,
	output [71:0] weight_win3x3_61,
	output [71:0] weight_win3x3_62,
	output [71:0] weight_win3x3_63,
	output [71:0] weight_win3x3_64,
	output [71:0] weight_win3x3_65,
	output [71:0] weight_win3x3_66,
	output [71:0] weight_win3x3_67,
	
	output [71:0] weight_win3x3_70,
	output [71:0] weight_win3x3_71,
	output [71:0] weight_win3x3_72,
	output [71:0] weight_win3x3_73,
	output [71:0] weight_win3x3_74,
	output [71:0] weight_win3x3_75,
	output [71:0] weight_win3x3_76,
	output [71:0] weight_win3x3_77
);
	wire [71:0] weight_0;
	wire [71:0] weight_1;
	wire [71:0] weight_2;
	wire [71:0] weight_3;
	wire [71:0] weight_4;
	wire [71:0] weight_5;
	wire [71:0] weight_6;
	wire [71:0] weight_7;
	
	reg [7:0] in_0_0;	reg [7:0] in_0_1;	reg [7:0] in_0_2;
	reg [7:0] in_0_3;	reg [7:0] in_0_4;	reg [7:0] in_0_5;
	reg [7:0] in_0_6;	reg [7:0] in_0_7;	reg [7:0] in_0_8;
	
	reg [7:0] in_1_0;	reg [7:0] in_1_1;	reg [7:0] in_1_2;
	reg [7:0] in_1_3;	reg [7:0] in_1_4;	reg [7:0] in_1_5;
	reg [7:0] in_1_6;	reg [7:0] in_1_7;	reg [7:0] in_1_8;
	
	reg [7:0] in_2_0;	reg [7:0] in_2_1;	reg [7:0] in_2_2;
	reg [7:0] in_2_3;	reg [7:0] in_2_4;	reg [7:0] in_2_5;
	reg [7:0] in_2_6;	reg [7:0] in_2_7;	reg [7:0] in_2_8;
	
	reg [7:0] in_3_0;	reg [7:0] in_3_1;	reg [7:0] in_3_2;
	reg [7:0] in_3_3;	reg [7:0] in_3_4;	reg [7:0] in_3_5;
	reg [7:0] in_3_6;	reg [7:0] in_3_7;	reg [7:0] in_3_8;
	
	reg [7:0] in_4_0;	reg [7:0] in_4_1;	reg [7:0] in_4_2;
	reg [7:0] in_4_3;	reg [7:0] in_4_4;	reg [7:0] in_4_5;
	reg [7:0] in_4_6;	reg [7:0] in_4_7;	reg [7:0] in_4_8;
	
	reg [7:0] in_5_0;	reg [7:0] in_5_1;	reg [7:0] in_5_2;
	reg [7:0] in_5_3;	reg [7:0] in_5_4;	reg [7:0] in_5_5;
	reg [7:0] in_5_6;	reg [7:0] in_5_7;	reg [7:0] in_5_8;
	
	reg [7:0] in_6_0;	reg [7:0] in_6_1;	reg [7:0] in_6_2;
	reg [7:0] in_6_3;	reg [7:0] in_6_4;	reg [7:0] in_6_5;
	reg [7:0] in_6_6;	reg [7:0] in_6_7;	reg [7:0] in_6_8;
	
	reg [7:0] in_7_0;	reg [7:0] in_7_1;	reg [7:0] in_7_2;
	reg [7:0] in_7_3;	reg [7:0] in_7_4;	reg [7:0] in_7_5;
	reg [7:0] in_7_6;	reg [7:0] in_7_7;	reg [7:0] in_7_8;
	
	always@(posedge clk) begin
		in_0_0<=in_0;		in_0_1<=in_0_0;		in_0_2<=in_0_1;
		in_0_3<=in_0_2;		in_0_4<=in_0_3;		in_0_5<=in_0_4;
		in_0_6<=in_0_5;		in_0_7<=in_0_6;		in_0_8<=in_0_7;
	end
	
	always@(posedge clk) begin
		in_1_0<=in_1;		in_1_1<=in_1_0;		in_1_2<=in_1_1;
		in_1_3<=in_1_2;		in_1_4<=in_1_3;		in_1_5<=in_1_4;
		in_1_6<=in_1_5;		in_1_7<=in_1_6;		in_1_8<=in_1_7;
	end

	always@(posedge clk) begin
		in_2_0<=in_2;		in_2_1<=in_2_0;		in_2_2<=in_2_1;
		in_2_3<=in_2_2;		in_2_4<=in_2_3;		in_2_5<=in_2_4;
		in_2_6<=in_2_5;		in_2_7<=in_2_6;		in_2_8<=in_2_7;
	end
	
	always@(posedge clk) begin
		in_3_0<=in_3;		in_3_1<=in_3_0;		in_3_2<=in_3_1;
		in_3_3<=in_3_2;		in_3_4<=in_3_3;		in_3_5<=in_3_4;
		in_3_6<=in_3_5;		in_3_7<=in_3_6;		in_3_8<=in_3_7;
	end
	
	always@(posedge clk) begin
		in_4_0<=in_4;		in_4_1<=in_4_0;		in_4_2<=in_4_1;
		in_4_3<=in_4_2;		in_4_4<=in_4_3;		in_4_5<=in_4_4;
		in_4_6<=in_4_5;		in_4_7<=in_4_6;		in_4_8<=in_4_7;
	end

	always@(posedge clk) begin
		in_5_0<=in_5;		in_5_1<=in_5_0;		in_5_2<=in_5_1;
		in_5_3<=in_5_2;		in_5_4<=in_5_3;		in_5_5<=in_5_4;
		in_5_6<=in_5_5;		in_5_7<=in_5_6;		in_5_8<=in_5_7;
	end
	
	always@(posedge clk) begin
		in_6_0<=in_6;		in_6_1<=in_6_0;		in_6_2<=in_6_1;
		in_6_3<=in_6_2;		in_6_4<=in_6_3;		in_6_5<=in_6_4;
		in_6_6<=in_6_5;		in_6_7<=in_6_6;		in_6_8<=in_6_7;
	end
	
	always@(posedge clk) begin
		in_7_0<=in_7;		in_7_1<=in_7_0;		in_7_2<=in_7_1;
		in_7_3<=in_7_2;		in_7_4<=in_7_3;		in_7_5<=in_7_4;
		in_7_6<=in_7_5;		in_7_7<=in_7_6;		in_7_8<=in_7_7;
	end
	
	assign weight_0[7:0]=in_0_8;	assign weight_0[15:8]=in_0_7;	assign weight_0[23:16]=in_0_6;
	assign weight_0[31:24]=in_0_5;	assign weight_0[39:32]=in_0_4;	assign weight_0[47:40]=in_0_3;
	assign weight_0[55:48]=in_0_2;	assign weight_0[63:56]=in_0_1;	assign weight_0[71:64]=in_0_0;
	
	assign weight_1[7:0]=in_1_8;	assign weight_1[15:8]=in_1_7;	assign weight_1[23:16]=in_1_6;
	assign weight_1[31:24]=in_1_5;	assign weight_1[39:32]=in_1_4;	assign weight_1[47:40]=in_1_3;
	assign weight_1[55:48]=in_1_2;	assign weight_1[63:56]=in_1_1;	assign weight_1[71:64]=in_1_0;
	
	assign weight_2[7:0]=in_2_8;	assign weight_2[15:8]=in_2_7;	assign weight_2[23:16]=in_2_6;
	assign weight_2[31:24]=in_2_5;	assign weight_2[39:32]=in_2_4;	assign weight_2[47:40]=in_2_3;
	assign weight_2[55:48]=in_2_2;	assign weight_2[63:56]=in_2_1;	assign weight_2[71:64]=in_2_0;
	
	assign weight_3[7:0]=in_3_8;	assign weight_3[15:8]=in_3_7;	assign weight_3[23:16]=in_3_6;
	assign weight_3[31:24]=in_3_5;	assign weight_3[39:32]=in_3_4;	assign weight_3[47:40]=in_3_3;
	assign weight_3[55:48]=in_3_2;	assign weight_3[63:56]=in_3_1;	assign weight_3[71:64]=in_3_0;
	
	assign weight_4[7:0]=in_4_8;	assign weight_4[15:8]=in_4_7;	assign weight_4[23:16]=in_4_6;
	assign weight_4[31:24]=in_4_5;	assign weight_4[39:32]=in_4_4;	assign weight_4[47:40]=in_4_3;
	assign weight_4[55:48]=in_4_2;	assign weight_4[63:56]=in_4_1;	assign weight_4[71:64]=in_4_0;
	
	assign weight_5[7:0]=in_5_8;	assign weight_5[15:8]=in_5_7;	assign weight_5[23:16]=in_5_6;
	assign weight_5[31:24]=in_5_5;	assign weight_5[39:32]=in_5_4;	assign weight_5[47:40]=in_5_3;
	assign weight_5[55:48]=in_5_2;	assign weight_5[63:56]=in_5_1;	assign weight_5[71:64]=in_5_0;
	
	assign weight_6[7:0]=in_6_8;	assign weight_6[15:8]=in_6_7;	assign weight_6[23:16]=in_6_6;
	assign weight_6[31:24]=in_6_5;	assign weight_6[39:32]=in_6_4;	assign weight_6[47:40]=in_6_3;
	assign weight_6[55:48]=in_6_2;	assign weight_6[63:56]=in_6_1;	assign weight_6[71:64]=in_6_0;
	
	assign weight_7[7:0]=in_7_8;	assign weight_7[15:8]=in_7_7;	assign weight_7[23:16]=in_7_6;
	assign weight_7[31:24]=in_7_5;	assign weight_7[39:32]=in_7_4;	assign weight_7[47:40]=in_7_3;
	assign weight_7[55:48]=in_7_2;	assign weight_7[63:56]=in_7_1;	assign weight_7[71:64]=in_7_0;
	
	
	wire ch0_en;	wire ch1_en;
	wire ch2_en;	wire ch3_en;
	wire ch4_en;	wire ch5_en;
	wire ch6_en;	wire ch7_en;
	
	reg ch0_en_d;	reg ch1_en_d;
	reg ch2_en_d;	reg ch3_en_d;
	reg ch4_en_d;	reg ch5_en_d;
	reg ch6_en_d;	reg ch7_en_d;
	
	reg [ADDR_BIT-1:0] ch0_cnt;	reg [ADDR_BIT-1:0] ch1_cnt;
	reg [ADDR_BIT-1:0] ch2_cnt;	reg [ADDR_BIT-1:0] ch3_cnt;
	reg [ADDR_BIT-1:0] ch4_cnt;	reg [ADDR_BIT-1:0] ch5_cnt;
	reg [ADDR_BIT-1:0] ch6_cnt;	reg [ADDR_BIT-1:0] ch7_cnt;
	
	reg [3:0] cnt_9;	reg [2:0] cnt_8;
	always@(posedge clk) begin
		if(rst||clear) begin
			cnt_8<=0;
			cnt_9<=0;
		end else begin
			if(bram_en_write) begin
				if(cnt_9==4'b1000) begin
					cnt_9<=0;
					cnt_8<=cnt_8+1;
				end else begin
					cnt_9<=cnt_9+1;
					cnt_8<=cnt_8;
				end
			end
		end
	end
	
	assign ch0_en=bram_en_write&&(cnt_8==3'b000)&&(cnt_9==4'b1000);
	assign ch1_en=bram_en_write&&(cnt_8==3'b001)&&(cnt_9==4'b1000);
	assign ch2_en=bram_en_write&&(cnt_8==3'b010)&&(cnt_9==4'b1000);
	assign ch3_en=bram_en_write&&(cnt_8==3'b011)&&(cnt_9==4'b1000);
	assign ch4_en=bram_en_write&&(cnt_8==3'b100)&&(cnt_9==4'b1000);
	assign ch5_en=bram_en_write&&(cnt_8==3'b101)&&(cnt_9==4'b1000);
	assign ch6_en=bram_en_write&&(cnt_8==3'b110)&&(cnt_9==4'b1000);
	assign ch7_en=bram_en_write&&(cnt_8==3'b111)&&(cnt_9==4'b1000);
	
	always@(posedge clk) begin
		ch0_en_d<=ch0_en;		ch1_en_d<=ch1_en;
		ch2_en_d<=ch2_en;		ch3_en_d<=ch3_en;
		ch4_en_d<=ch4_en;		ch5_en_d<=ch5_en;
		ch6_en_d<=ch6_en;		ch7_en_d<=ch7_en;
	end
	
	always@(posedge clk) begin
		if(rst||clear) begin
			ch0_cnt<=0;
		end else begin
			if(ch0_en_d) begin
				ch0_cnt<=ch0_cnt+1;
			end
		end
	end
	always@(posedge clk) begin
		if(rst||clear) begin
			ch1_cnt<=0;
		end else begin
			if(ch1_en_d) begin
				ch1_cnt<=ch1_cnt+1;
			end
		end
	end
	always@(posedge clk) begin
		if(rst||clear) begin
			ch2_cnt<=0;
		end else begin
			if(ch2_en_d) begin
				ch2_cnt<=ch2_cnt+1;
			end
		end
	end
	always@(posedge clk) begin
		if(rst||clear) begin
			ch3_cnt<=0;
		end else begin
			if(ch3_en_d) begin
				ch3_cnt<=ch3_cnt+1;
			end
		end
	end
	always@(posedge clk) begin
		if(rst||clear) begin
			ch4_cnt<=0;
		end else begin
			if(ch4_en_d) begin
				ch4_cnt<=ch4_cnt+1;
			end
		end
	end
	always@(posedge clk) begin
		if(rst||clear) begin
			ch5_cnt<=0;
		end else begin
			if(ch5_en_d) begin
				ch5_cnt<=ch5_cnt+1;
			end
		end
	end
	always@(posedge clk) begin
		if(rst||clear) begin
			ch6_cnt<=0;
		end else begin
			if(ch6_en_d) begin
				ch6_cnt<=ch6_cnt+1;
			end
		end
	end
	always@(posedge clk) begin
		if(rst||clear) begin
			ch7_cnt<=0;
		end else begin
			if(ch7_en_d) begin
				ch7_cnt<=ch7_cnt+1;
			end
		end
	end
	
	buffer_weight_1x8
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_buffer_weight_1x8_0
	(
		.clk(clk),
		.write_addr_0(ch0_cnt),	.write_en_0(ch0_en_d),
		.write_addr_1(ch1_cnt),	.write_en_1(ch1_en_d),
		.write_addr_2(ch2_cnt),	.write_en_2(ch2_en_d),
		.write_addr_3(ch3_cnt),	.write_en_3(ch3_en_d),
		.write_addr_4(ch4_cnt),	.write_en_4(ch4_en_d),
		.write_addr_5(ch5_cnt),	.write_en_5(ch5_en_d),
		.write_addr_6(ch6_cnt),	.write_en_6(ch6_en_d),
		.write_addr_7(ch7_cnt),	.write_en_7(ch7_en_d),
		.weight_in(weight_0),
		.read_addr(read_addr),
		.weight_out_0(weight_win3x3_00),
		.weight_out_1(weight_win3x3_01),
		.weight_out_2(weight_win3x3_02),
		.weight_out_3(weight_win3x3_03),
		.weight_out_4(weight_win3x3_04),
		.weight_out_5(weight_win3x3_05),
		.weight_out_6(weight_win3x3_06),
		.weight_out_7(weight_win3x3_07)
	);
	
	buffer_weight_1x8
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_buffer_weight_1x8_1
	(
		.clk(clk),
		.write_addr_0(ch0_cnt),	.write_en_0(ch0_en_d),
		.write_addr_1(ch1_cnt),	.write_en_1(ch1_en_d),
		.write_addr_2(ch2_cnt),	.write_en_2(ch2_en_d),
		.write_addr_3(ch3_cnt),	.write_en_3(ch3_en_d),
		.write_addr_4(ch4_cnt),	.write_en_4(ch4_en_d),
		.write_addr_5(ch5_cnt),	.write_en_5(ch5_en_d),
		.write_addr_6(ch6_cnt),	.write_en_6(ch6_en_d),
		.write_addr_7(ch7_cnt),	.write_en_7(ch7_en_d),
		.weight_in(weight_1),
		.read_addr(read_addr),
		.weight_out_0(weight_win3x3_10),
		.weight_out_1(weight_win3x3_11),
		.weight_out_2(weight_win3x3_12),
		.weight_out_3(weight_win3x3_13),
		.weight_out_4(weight_win3x3_14),
		.weight_out_5(weight_win3x3_15),
		.weight_out_6(weight_win3x3_16),
		.weight_out_7(weight_win3x3_17)
	);
	
	buffer_weight_1x8
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_buffer_weight_1x8_2
	(
		.clk(clk),
		.write_addr_0(ch0_cnt),	.write_en_0(ch0_en_d),
		.write_addr_1(ch1_cnt),	.write_en_1(ch1_en_d),
		.write_addr_2(ch2_cnt),	.write_en_2(ch2_en_d),
		.write_addr_3(ch3_cnt),	.write_en_3(ch3_en_d),
		.write_addr_4(ch4_cnt),	.write_en_4(ch4_en_d),
		.write_addr_5(ch5_cnt),	.write_en_5(ch5_en_d),
		.write_addr_6(ch6_cnt),	.write_en_6(ch6_en_d),
		.write_addr_7(ch7_cnt),	.write_en_7(ch7_en_d),
		.weight_in(weight_2),
		.read_addr(read_addr),
		.weight_out_0(weight_win3x3_20),
		.weight_out_1(weight_win3x3_21),
		.weight_out_2(weight_win3x3_22),
		.weight_out_3(weight_win3x3_23),
		.weight_out_4(weight_win3x3_24),
		.weight_out_5(weight_win3x3_25),
		.weight_out_6(weight_win3x3_26),
		.weight_out_7(weight_win3x3_27)
	);
	
	buffer_weight_1x8
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_buffer_weight_1x8_3
	(
		.clk(clk),
		.write_addr_0(ch0_cnt),	.write_en_0(ch0_en_d),
		.write_addr_1(ch1_cnt),	.write_en_1(ch1_en_d),
		.write_addr_2(ch2_cnt),	.write_en_2(ch2_en_d),
		.write_addr_3(ch3_cnt),	.write_en_3(ch3_en_d),
		.write_addr_4(ch4_cnt),	.write_en_4(ch4_en_d),
		.write_addr_5(ch5_cnt),	.write_en_5(ch5_en_d),
		.write_addr_6(ch6_cnt),	.write_en_6(ch6_en_d),
		.write_addr_7(ch7_cnt),	.write_en_7(ch7_en_d),
		.weight_in(weight_3),
		.read_addr(read_addr),
		.weight_out_0(weight_win3x3_30),
		.weight_out_1(weight_win3x3_31),
		.weight_out_2(weight_win3x3_32),
		.weight_out_3(weight_win3x3_33),
		.weight_out_4(weight_win3x3_34),
		.weight_out_5(weight_win3x3_35),
		.weight_out_6(weight_win3x3_36),
		.weight_out_7(weight_win3x3_37)
	);
	
	buffer_weight_1x8
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_buffer_weight_1x8_4
	(
		.clk(clk),
		.write_addr_0(ch0_cnt),	.write_en_0(ch0_en_d),
		.write_addr_1(ch1_cnt),	.write_en_1(ch1_en_d),
		.write_addr_2(ch2_cnt),	.write_en_2(ch2_en_d),
		.write_addr_3(ch3_cnt),	.write_en_3(ch3_en_d),
		.write_addr_4(ch4_cnt),	.write_en_4(ch4_en_d),
		.write_addr_5(ch5_cnt),	.write_en_5(ch5_en_d),
		.write_addr_6(ch6_cnt),	.write_en_6(ch6_en_d),
		.write_addr_7(ch7_cnt),	.write_en_7(ch7_en_d),
		.weight_in(weight_4),
		.read_addr(read_addr),
		.weight_out_0(weight_win3x3_40),
		.weight_out_1(weight_win3x3_41),
		.weight_out_2(weight_win3x3_42),
		.weight_out_3(weight_win3x3_43),
		.weight_out_4(weight_win3x3_44),
		.weight_out_5(weight_win3x3_45),
		.weight_out_6(weight_win3x3_46),
		.weight_out_7(weight_win3x3_47)
	);
	
	buffer_weight_1x8
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_buffer_weight_1x8_5
	(
		.clk(clk),
		.write_addr_0(ch0_cnt),	.write_en_0(ch0_en_d),
		.write_addr_1(ch1_cnt),	.write_en_1(ch1_en_d),
		.write_addr_2(ch2_cnt),	.write_en_2(ch2_en_d),
		.write_addr_3(ch3_cnt),	.write_en_3(ch3_en_d),
		.write_addr_4(ch4_cnt),	.write_en_4(ch4_en_d),
		.write_addr_5(ch5_cnt),	.write_en_5(ch5_en_d),
		.write_addr_6(ch6_cnt),	.write_en_6(ch6_en_d),
		.write_addr_7(ch7_cnt),	.write_en_7(ch7_en_d),
		.weight_in(weight_5),
		.read_addr(read_addr),
		.weight_out_0(weight_win3x3_50),
		.weight_out_1(weight_win3x3_51),
		.weight_out_2(weight_win3x3_52),
		.weight_out_3(weight_win3x3_53),
		.weight_out_4(weight_win3x3_54),
		.weight_out_5(weight_win3x3_55),
		.weight_out_6(weight_win3x3_56),
		.weight_out_7(weight_win3x3_57)
	);
	
	buffer_weight_1x8
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_buffer_weight_1x8_6
	(
		.clk(clk),
		.write_addr_0(ch0_cnt),	.write_en_0(ch0_en_d),
		.write_addr_1(ch1_cnt),	.write_en_1(ch1_en_d),
		.write_addr_2(ch2_cnt),	.write_en_2(ch2_en_d),
		.write_addr_3(ch3_cnt),	.write_en_3(ch3_en_d),
		.write_addr_4(ch4_cnt),	.write_en_4(ch4_en_d),
		.write_addr_5(ch5_cnt),	.write_en_5(ch5_en_d),
		.write_addr_6(ch6_cnt),	.write_en_6(ch6_en_d),
		.write_addr_7(ch7_cnt),	.write_en_7(ch7_en_d),
		.weight_in(weight_6),
		.read_addr(read_addr),
		.weight_out_0(weight_win3x3_60),
		.weight_out_1(weight_win3x3_61),
		.weight_out_2(weight_win3x3_62),
		.weight_out_3(weight_win3x3_63),
		.weight_out_4(weight_win3x3_64),
		.weight_out_5(weight_win3x3_65),
		.weight_out_6(weight_win3x3_66),
		.weight_out_7(weight_win3x3_67)
	);
	
	buffer_weight_1x8
	#(.DEPTH(DEPTH),.ADDR_BIT(ADDR_BIT),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_buffer_weight_1x8_7
	(
		.clk(clk),
		.write_addr_0(ch0_cnt),	.write_en_0(ch0_en_d),
		.write_addr_1(ch1_cnt),	.write_en_1(ch1_en_d),
		.write_addr_2(ch2_cnt),	.write_en_2(ch2_en_d),
		.write_addr_3(ch3_cnt),	.write_en_3(ch3_en_d),
		.write_addr_4(ch4_cnt),	.write_en_4(ch4_en_d),
		.write_addr_5(ch5_cnt),	.write_en_5(ch5_en_d),
		.write_addr_6(ch6_cnt),	.write_en_6(ch6_en_d),
		.write_addr_7(ch7_cnt),	.write_en_7(ch7_en_d),
		.weight_in(weight_7),
		.read_addr(read_addr),
		.weight_out_0(weight_win3x3_70),
		.weight_out_1(weight_win3x3_71),
		.weight_out_2(weight_win3x3_72),
		.weight_out_3(weight_win3x3_73),
		.weight_out_4(weight_win3x3_74),
		.weight_out_5(weight_win3x3_75),
		.weight_out_6(weight_win3x3_76),
		.weight_out_7(weight_win3x3_77)
	);
endmodule