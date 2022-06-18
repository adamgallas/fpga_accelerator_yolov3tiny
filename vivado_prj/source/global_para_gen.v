module global_para_gen
#(
	parameter FM_ADDR_BIT=12,
	parameter LINEBUFFER_LEN1=16,
	parameter LINEBUFFER_LEN2=14,
	parameter LINEBUFFER_LEN3=28,
	parameter LINEBUFFER_LEN4=56,
	parameter LINEBUFFER_LEN5=112,
	parameter LINEBUFFER_LEN6=224
)
(
	input clk,
	input [2:0] sel,
	input [7:0] row,
	input [1:0] ofm_send_sel,
	input pool_enable,
	
	output [8:0] conv_row,
	output reg [8:0] conv_col,
	output [8:0] pool_row,
	output reg [8:0] pool_col,
	
	output [FM_ADDR_BIT-1:0] conv_addr_len,
	output [FM_ADDR_BIT-1:0] pool_addr_len,
	output reg [FM_ADDR_BIT-1:0] ofm_addr_start,
	output reg [FM_ADDR_BIT-1:0] ofm_addr_end
);
	localparam [8:0] FM_COL_0=LINEBUFFER_LEN1;
	localparam [8:0] FM_COL_1=LINEBUFFER_LEN1+LINEBUFFER_LEN2;
	localparam [8:0] FM_COL_2=LINEBUFFER_LEN1+LINEBUFFER_LEN2+LINEBUFFER_LEN3;
	localparam [8:0] FM_COL_3=LINEBUFFER_LEN1+LINEBUFFER_LEN2+LINEBUFFER_LEN3+LINEBUFFER_LEN4;
	localparam [8:0] FM_COL_4=LINEBUFFER_LEN1+LINEBUFFER_LEN2+LINEBUFFER_LEN3+LINEBUFFER_LEN4+LINEBUFFER_LEN5;
	localparam [8:0] FM_COL_5=LINEBUFFER_LEN1+LINEBUFFER_LEN2+LINEBUFFER_LEN3+LINEBUFFER_LEN4+LINEBUFFER_LEN5+LINEBUFFER_LEN6;
	
	always@(*) begin
		case(sel)
			3'b000:	begin
				conv_col<=FM_COL_0;
				pool_col<=FM_COL_0;
			end
			3'b001:	begin
				conv_col<=FM_COL_1;
				pool_col<=FM_COL_0;
			end
			3'b010:	begin
				conv_col<=FM_COL_2;
				pool_col<=FM_COL_1;
			end
			3'b011:	begin
				conv_col<=FM_COL_3;
				pool_col<=FM_COL_2;
			end
			3'b100:	begin
				conv_col<=FM_COL_4;
				pool_col<=FM_COL_3;
			end
			3'b101:	begin
				conv_col<=FM_COL_5;
				pool_col<=FM_COL_4;
			end
			default: begin
				conv_col<=0;
				pool_col<=0;
			end
		endcase
	end
	wire [8:0] pool_row_t1;
	wire [8:0] pool_row_t2;
	wire [8:0] pool_row_t3;
	assign conv_row={1'b0,row};
	assign pool_row_t1=conv_row-2;
	assign pool_row_t2={1'b0,pool_row_t1[8:1]};
	assign pool_row=pool_row_t2+2;
	
	assign conv_addr_len=conv_row*conv_col;
	assign pool_addr_len=pool_row*pool_col;
	
	reg [FM_ADDR_BIT-1:0] no_pool_ofm_addr_start;
	reg [FM_ADDR_BIT-1:0] no_pool_ofm_addr_end;
	reg [FM_ADDR_BIT-1:0] pool_ofm_addr_start;
	reg [FM_ADDR_BIT-1:0] pool_ofm_addr_end;
	
	always@(posedge clk) begin
		case(ofm_send_sel)
			2'b00: begin // whole
				no_pool_ofm_addr_start<=0;
				no_pool_ofm_addr_end<=conv_addr_len;
				pool_ofm_addr_start<=0;
				pool_ofm_addr_end<=pool_addr_len;
			end
			2'b01: begin // no head
				no_pool_ofm_addr_start<=conv_col;
				no_pool_ofm_addr_end<=conv_addr_len;
				pool_ofm_addr_start<=pool_col;
				pool_ofm_addr_end<=pool_addr_len;
			end
			2'b10: begin // no tail
				no_pool_ofm_addr_start<=0;
				no_pool_ofm_addr_end<=conv_addr_len-conv_col;
				pool_ofm_addr_start<=0;
				pool_ofm_addr_end<=pool_addr_len-pool_col;
			end
			2'b11: begin // no head no tail
				no_pool_ofm_addr_start<=conv_col;
				no_pool_ofm_addr_end<=conv_addr_len-conv_col;
				pool_ofm_addr_start<=pool_col;
				pool_ofm_addr_end<=pool_addr_len-pool_col;
			end
			default: begin
				no_pool_ofm_addr_start<=0;
				no_pool_ofm_addr_end<=conv_addr_len;
				pool_ofm_addr_start<=0;
				pool_ofm_addr_end<=pool_addr_len;
			end
		endcase
	end
	always@(posedge clk) begin
		case(pool_enable)
		1'b1: begin
			ofm_addr_start<=pool_ofm_addr_start;
			ofm_addr_end<=pool_ofm_addr_end;
		end
		1'b0: begin
			ofm_addr_start<=no_pool_ofm_addr_start;
			ofm_addr_end<=no_pool_ofm_addr_end;
		end
		default: begin
			ofm_addr_start<=0;
			ofm_addr_end<=0;
		end
		endcase
	end
endmodule