module global_data_beat
#(
	parameter ADDR_BIT=12
)
(
	input clk,
	input shutdown,
	
	input [ADDR_BIT-1:0] conv_addr_len,
	input [ADDR_BIT-1:0] pool_addr_len,
	input [8:0] conv_col,
	input [8:0] conv_row,
	input pool_stride_sel,
	
	output [ADDR_BIT-1:0] ifmbuf_bram_addr_read,
	
	output acc_read_en,
	output acc_write_en,
	output [ADDR_BIT-1:0] acc_read_addr,
	output [ADDR_BIT-1:0] acc_write_addr,
	output acc_curr_data_zero,
	
	output [ADDR_BIT-1:0] ofm_after_quant_addr,
	output ofm_after_quant_valid,
	output ofm_after_quant_done,
	
	output [ADDR_BIT-1:0] ofm_after_pool_addr,
	output ofm_after_pool_valid,
	output ofm_after_pool_zero,
	output ofm_after_pool_done
);
	// global addr and global valid, zero
	wire [8:0] conv_col_minus_1;
	wire [8:0] conv_col_minus_2;
	wire [8:0] conv_row_minus_1;
	wire [8:0] conv_col_add_1;
	wire [15:0] conv_col_mult_2;
	wire [15:0] addr_len_add_conv_col_add_1;
	
	assign conv_col_minus_1=conv_col-1'b1;
	assign conv_col_minus_2=conv_col-2'b10;
	assign conv_row_minus_1=conv_row-1'b1;
	assign conv_col_add_1=conv_col+1'b1;
	assign conv_col_mult_2=(conv_col<<1);
	assign addr_len_add_conv_col_add_1=conv_addr_len+conv_col+1;
	
	reg [15:0] addr_cnt;
	reg [8:0] col_cnt;
	always@(posedge clk) begin
		if(shutdown) begin
			addr_cnt<=0;
			col_cnt<=0;
		end else begin
			if(col_cnt==conv_col_minus_1) begin
				addr_cnt<=addr_cnt+1;
				col_cnt<=0;
			end else begin
				addr_cnt<=addr_cnt+1;
				col_cnt<=col_cnt+1;
			end
		end
	end
	
	reg global_zero;
	reg global_valid;
	always@(posedge clk) begin
		if(col_cnt<2 || (addr_cnt<conv_col_mult_2 || addr_cnt>=conv_addr_len)) begin
			global_zero<=1'b1;
		end else begin
			global_zero<=1'b0;
		end
	end
	always@(posedge clk) begin
		if(addr_cnt>=conv_col_add_1 && addr_cnt<addr_len_add_conv_col_add_1) begin
			global_valid<=1'b1;
		end else begin
			global_valid<=1'b0;
		end
	end
	
	/* Latency Summary
	 * Linebuffer	1
	 * cal_mult_dsp	4
	 * adder_pre	2
	 * adder_post	2
	 * acc			1
	 * quant		7 */
	
	// delay valid	
	wire valid_delay_9;
	reg valid_delay_10;
	reg valid_delay_11;
	
	wire valid_delay_18;
	
	com_shift_reg
	#(.DEPTH(9),.WIDTH(1),.SRL_STYLE_VAL("srl_reg"))
	u_com_shift_reg_2
	(
		.clk(clk),
		.si(global_valid),
		.so(valid_delay_9)
	);
	com_shift_reg
	#(.DEPTH(18),.WIDTH(1),.SRL_STYLE_VAL("srl_reg"))
	u_com_shift_reg_3
	(
		.clk(clk),
		.si(global_valid),
		.so(valid_delay_18)
	);
	always@(posedge clk) begin
		valid_delay_10<=valid_delay_9;
		valid_delay_11<=valid_delay_10;
	end
	assign acc_read_en=valid_delay_9;
	assign acc_write_en=valid_delay_11;
	assign ofm_after_quant_valid=valid_delay_18;
	
	// delay addr
	reg [15:0] base_out_addr;
	wire [15:0] base_out_addr_delay_2;
	wire [15:0] base_out_addr_delay_9;
	always@(posedge clk) begin
		if(shutdown) begin
			base_out_addr<=0;
		end else begin
			if(valid_delay_9) begin
				base_out_addr<=base_out_addr+1;
			end
		end
	end
	com_shift_reg
	#(.DEPTH(2),.WIDTH(ADDR_BIT),.SRL_STYLE_VAL("srl_reg"))
	u_com_shift_reg_4
	(
		.clk(clk),
		.si(base_out_addr),
		.so(base_out_addr_delay_2)
	);
	com_shift_reg
	#(.DEPTH(7),.WIDTH(ADDR_BIT),.SRL_STYLE_VAL("srl_reg"))
	u_com_shift_reg_5
	(
		.clk(clk),
		.si(base_out_addr_delay_2),
		.so(base_out_addr_delay_9)
	);
	assign ifmbuf_bram_addr_read=addr_cnt;
	assign acc_read_addr=base_out_addr;
	assign acc_write_addr=base_out_addr_delay_2;
	assign ofm_after_quant_addr=base_out_addr_delay_9;
	
	// delay zero
	wire zero_delay_10;
	com_shift_reg
	#(.DEPTH(10),.WIDTH(1),.SRL_STYLE_VAL("srl_reg"))
	u_com_shift_reg_6
	(
		.clk(clk),
		.si(global_zero),
		.so(zero_delay_10)
	);
	assign acc_curr_data_zero=zero_delay_10;
	
	com_negedge_detect u_com_negedge_detect_quant_done
	(.clk(clk),.signal(ofm_after_quant_valid),.pulse(ofm_after_quant_done));
	
	// pool data beat
	wire [15:0] pool_addr_len_stride_1;
	wire [15:0] pool_addr_len_stride_2;
	assign pool_addr_len_stride_1={{4'b0000},conv_addr_len};
	assign pool_addr_len_stride_2={{4'b0000},pool_addr_len};

	wire pool_valid_in;
	assign pool_valid_in=ofm_after_quant_valid;
	
	localparam IDLE=1'b0;
	localparam RUNNING=1'b1;
	reg curr_state;
	reg next_state;
	wire pool_running;
	assign pool_idle=(curr_state==IDLE);
	always@(posedge clk) begin
		if(shutdown) begin
			curr_state<=IDLE;
		end else begin
			curr_state<=next_state;
		end
	end
	always@(*) begin
		case(curr_state)
			IDLE:
				if(pool_valid_in) begin
					next_state<=RUNNING;
				end else begin
					next_state<=IDLE;
				end
			RUNNING:
				if(ofm_after_pool_done) begin
					next_state<=IDLE;
				end else begin
					next_state<=RUNNING;
				end
			default:
				next_state<=IDLE;
		endcase
	end
	
	reg [8:0] pool_col_addr;
	reg [8:0] pool_row_addr;
	wire pool_cond;
	assign pool_cond=(pool_col_addr==conv_col_minus_1);
	always@(posedge clk) begin
		if(shutdown||pool_idle||pool_cond) begin
			pool_col_addr<=0;
		end else begin
			pool_col_addr<=pool_col_addr+1;
		end
	end
	always@(posedge clk) begin
		if(shutdown||pool_idle) begin
			pool_row_addr<=0;
		end else begin
			if(pool_cond) begin
				pool_row_addr<=pool_row_addr+1;
			end else begin
				pool_row_addr<=pool_row_addr;
			end
		end
	end
	
	// global addr and global valid, zero, stride=2----------------------------------------
	reg pool_col_valid_s2;
	reg pool_row_valid_s2;
	always@(posedge clk) begin
		if(shutdown||pool_idle) begin
			pool_col_valid_s2<=1;
		end else begin
			pool_col_valid_s2<=~pool_col_valid_s2;
		end
	end
	always@(posedge clk) begin
		if(shutdown||pool_idle) begin
			pool_row_valid_s2<=1;
		end else begin
			if(pool_cond) begin
				pool_row_valid_s2<=~pool_row_valid_s2;
			end
		end
	end
	
	wire pool_col_zero_s2;
	wire pool_row_zero_s2;
	assign pool_col_zero_s2=((pool_col_addr==0)||(pool_col_addr==conv_col_minus_1));
	assign pool_row_zero_s2=((pool_row_addr==0)||(pool_row_addr==conv_row_minus_1));
	
	wire gen_pool_valid_s2;
	wire gen_pool_zero_s2;
	assign gen_pool_valid_s2=(pool_col_valid_s2||pool_col_zero_s2)&&(pool_row_valid_s2||pool_row_zero_s2)&&(!pool_idle);
	assign gen_pool_zero_s2=pool_col_zero_s2||pool_row_zero_s2;

	reg pool_valid_d1_s2;
	reg pool_valid_d2_s2;
	reg pool_valid_d3_s2;
	reg pool_valid_d4_s2;
	reg pool_zero_d1_s2;
	reg pool_zero_d2_s2;
	reg pool_zero_d3_s2;
	reg pool_zero_d4_s2;
	reg [15:0] pool_addr_s2;
	wire pool_last_s2;
	assign pool_last_s2=(pool_addr_s2==pool_addr_len_stride_2-1);
	always@(posedge clk) begin
		pool_valid_d1_s2<=gen_pool_valid_s2;
		pool_valid_d2_s2<=pool_valid_d1_s2;
		pool_valid_d3_s2<=pool_valid_d2_s2;
		pool_valid_d4_s2<=pool_valid_d3_s2;
	end
	always@(posedge clk) begin
		pool_zero_d1_s2<=gen_pool_zero_s2;
		pool_zero_d2_s2<=pool_zero_d1_s2;
		pool_zero_d3_s2<=pool_zero_d2_s2;
		pool_zero_d4_s2<=pool_zero_d3_s2;
	end
	always@(posedge clk) begin
		if(shutdown||pool_idle) begin
			pool_addr_s2<=0;
		end else begin
			if(pool_valid_d3_s2) begin
				pool_addr_s2<=pool_addr_s2+1;
			end else begin
				pool_addr_s2<=pool_addr_s2;
			end
		end
	end

	// global addr and global valid, zero, stride=1----------------------------------------
	wire pool_col_zero_s1;
	wire pool_row_zero_s1;
	assign pool_col_zero_s1=((pool_col_addr==0)||(pool_col_addr==conv_col_minus_1)||(pool_col_addr==conv_col_minus_2));
	assign pool_row_zero_s1=((pool_row_addr==0)||(pool_row_addr==1)||(pool_row_addr==conv_row_minus_1)||(pool_row_addr==conv_row));
	wire gen_pool_valid_s1;
	wire gen_pool_zero_s1;
	assign gen_pool_valid_s1=((pool_row_addr>=1)&&(pool_row_addr<=conv_row)&&(!pool_idle));
	assign gen_pool_zero_s1=pool_col_zero_s1||pool_row_zero_s1;
	
	reg pool_valid_d1_s1;
	reg pool_valid_d2_s1;
	reg pool_valid_d3_s1;
	reg pool_valid_d4_s1;
	reg pool_zero_d1_s1;
	reg pool_zero_d2_s1;
	reg pool_zero_d3_s1;
	reg pool_zero_d4_s1;
	reg [15:0] pool_addr_s1;
	wire pool_last_s1;
	assign pool_last_s1=(pool_addr_s1==pool_addr_len_stride_1-1);
	always@(posedge clk) begin
		pool_valid_d1_s1<=gen_pool_valid_s1;
		pool_valid_d2_s1<=pool_valid_d1_s1;
		pool_valid_d3_s1<=pool_valid_d2_s1;
		pool_valid_d4_s1<=pool_valid_d3_s1;
	end
	always@(posedge clk) begin
		pool_zero_d1_s1<=gen_pool_zero_s1;
		pool_zero_d2_s1<=pool_zero_d1_s1;
		pool_zero_d3_s1<=pool_zero_d2_s1;
		pool_zero_d4_s1<=pool_zero_d3_s1;
	end
	always@(posedge clk) begin
		if(shutdown||pool_idle) begin
			pool_addr_s1<=0;
		end else begin
			if(pool_valid_d4_s1) begin
				pool_addr_s1<=pool_addr_s1+1;
			end else begin
				pool_addr_s1<=pool_addr_s1;
			end
		end
	end
	
	assign ofm_after_pool_addr=(pool_stride_sel==1'b1)?pool_addr_s1:pool_addr_s2;
	assign ofm_after_pool_valid=(pool_stride_sel==1'b1)?pool_valid_d4_s1:pool_valid_d3_s2;
	assign ofm_after_pool_zero=(pool_stride_sel==1'b1)?pool_zero_d3_s1:pool_zero_d2_s2;
	assign ofm_after_pool_done=(pool_stride_sel==1'b1)?pool_last_s1:pool_last_s2;
endmodule