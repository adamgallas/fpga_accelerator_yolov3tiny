module interface_axis_master
#(
	parameter ADDR_BIT=16
)
(
	input clk,
	input rst,
	
	input send_enable,
	output send_done,

	output m_axis_tvalid,
	output [63:0] m_axis_tdata,
	output m_axis_tlast,
	input m_axis_tready,

	input [ADDR_BIT-1:0] addr_end,
	input [ADDR_BIT-1:0] addr_start,
	
	output [ADDR_BIT-1:0] read_addr,
	input [63:0] read_data
);
	localparam IDLE    =1'b0;
	localparam RUNNING =1'b1;
	
	reg curr_state;
	reg next_state;

	reg [ADDR_BIT-1:0] addr;

	wire last;
	reg last_d;
	assign last=(addr==(addr_end-addr_start-1));
	always@(posedge clk) begin
		last_d<=last;
	end
	
	wire valid;
	assign valid         =(addr!=0);
	assign send_done     =last_d;
	assign m_axis_tlast  =last_d;
	assign m_axis_tvalid =valid;
	assign m_axis_tdata  =read_data;
	assign read_addr     =addr+addr_start;
	
	always@(posedge clk) begin
		if(rst) begin
			curr_state<=IDLE;
		end else begin
			curr_state<=next_state;
		end
	end
	
	always@(*) begin
		case(curr_state)
			IDLE:
				if(send_enable) begin
					next_state<=RUNNING;
				end else begin
					next_state<=IDLE;
				end
			RUNNING:
				if(last) begin
					next_state<=IDLE;
				end else begin
					next_state<=RUNNING;
				end
			default:
				next_state<=IDLE;
		endcase
	end
	
	always@(posedge clk) begin
		if(curr_state==IDLE) begin
			addr<=0;
		end else begin
			if(m_axis_tready) begin
				addr<=addr+1;
			end else begin
				addr<=addr;
			end
		end
	end
endmodule