module buffer_bias
#(
	parameter DEPTH=128,
	parameter ADDR_BIT=7,
	parameter RAM_STYLE_VAL="block"
)
(
	input clk,
	input rst,
	input clear,
	input [17:0] bias_in,
	input [ADDR_BIT-1:0] bram_addr_read,
	input bram_en_write,
	output [17:0] bias_0,
	output [17:0] bias_1,
	output [17:0] bias_2,
	output [17:0] bias_3,
	output [17:0] bias_4,
	output [17:0] bias_5,
	output [17:0] bias_6,
	output [17:0] bias_7
);
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
	
	reg [2:0] cnt_8;
	
	assign ch0_en=bram_en_write&&(cnt_8==3'b000);
	assign ch1_en=bram_en_write&&(cnt_8==3'b001);
	assign ch2_en=bram_en_write&&(cnt_8==3'b010);
	assign ch3_en=bram_en_write&&(cnt_8==3'b011);
	assign ch4_en=bram_en_write&&(cnt_8==3'b100);
	assign ch5_en=bram_en_write&&(cnt_8==3'b101);
	assign ch6_en=bram_en_write&&(cnt_8==3'b110);
	assign ch7_en=bram_en_write&&(cnt_8==3'b111);
	
	
	always@(posedge clk) begin
		if(rst||clear) begin
			cnt_8<=0;
		end else begin
			if(bram_en_write) begin
				cnt_8<=cnt_8+1;
			end
		end
	end
	
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

	com_simple_dual_port_ram
	#(.WIDTH(18),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_0
	(
		.clk(clk),
		.we_a(ch0_en),
		.en_a(1'b1),
		.addr_a(ch0_cnt),
		.di_a(bias_in),
		
		.addr_b(bram_addr_read),
		.dout_b(bias_0)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(18),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_1
	(
		.clk(clk),
		.we_a(ch1_en),
		.en_a(1'b1),
		.addr_a(ch1_cnt),
		.di_a(bias_in),
		
		.addr_b(bram_addr_read),
		.dout_b(bias_1)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(18),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_2
	(
		.clk(clk),
		.we_a(ch2_en),
		.en_a(1'b1),
		.addr_a(ch2_cnt),
		.di_a(bias_in),
		
		.addr_b(bram_addr_read),
		.dout_b(bias_2)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(18),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_3
	(
		.clk(clk),
		.we_a(ch3_en),
		.en_a(1'b1),
		.addr_a(ch3_cnt),
		.di_a(bias_in),
		
		.addr_b(bram_addr_read),
		.dout_b(bias_3)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(18),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_4
	(
		.clk(clk),
		.we_a(ch4_en),
		.en_a(1'b1),
		.addr_a(ch4_cnt),
		.di_a(bias_in),
		
		.addr_b(bram_addr_read),
		.dout_b(bias_4)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(18),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_5
	(
		.clk(clk),
		.we_a(ch5_en),
		.en_a(1'b1),
		.addr_a(ch5_cnt),
		.di_a(bias_in),
		
		.addr_b(bram_addr_read),
		.dout_b(bias_5)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(18),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_6
	(
		.clk(clk),
		.we_a(ch6_en),
		.en_a(1'b1),
		.addr_a(ch6_cnt),
		.di_a(bias_in),
		
		.addr_b(bram_addr_read),
		.dout_b(bias_6)
	);
	
	com_simple_dual_port_ram
	#(.WIDTH(18),.ADDR_BIT(ADDR_BIT),.DEPTH(DEPTH),.RAM_STYLE_VAL(RAM_STYLE_VAL))
	u_com_simple_dual_port_ram_7
	(
		.clk(clk),
		.we_a(ch7_en),
		.en_a(1'b1),
		.addr_a(ch7_cnt),
		.di_a(bias_in),
		
		.addr_b(bram_addr_read),
		.dout_b(bias_7)
	);
endmodule