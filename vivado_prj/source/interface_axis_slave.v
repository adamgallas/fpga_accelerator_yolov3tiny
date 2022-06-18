module interface_axis_slave
#(
	parameter ADDR_BIT=16
)
(
	input clk,
	input rst,
	
	input recv_enable,
	output recv_done,
	
	output s_axis_tready,
	input [63:0] s_axis_tdata,
	input s_axis_tlast,
	input s_axis_tvalid,
	
	output reg [ADDR_BIT-1:0] write_addr,
	output [63:0] write_data,
	output write_enable
);
	localparam IDLE		=	2'b00;
	localparam SET		=	2'b01;
	localparam FINISH	=	2'b11;
	
	reg [1:0] curr_state;
	reg [1:0] next_state;
	
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
				if(recv_enable) begin
					next_state<=SET;
				end else begin
					next_state<=IDLE;
				end
			SET:
				if(s_axis_tlast) begin
					next_state<=FINISH;
				end else begin
					next_state<=SET;
				end
			FINISH:
				next_state<=IDLE;
			default:
				next_state<=IDLE;
		endcase
	end
	
	wire clr;
	
	assign recv_done     =(curr_state==FINISH);
	assign clr           =rst||recv_done;
	assign s_axis_tready =(curr_state!=IDLE);
	assign write_enable  =s_axis_tready&&s_axis_tvalid;
	assign write_data    =s_axis_tdata;

	always@(posedge clk) begin
		if(clr) begin
			write_addr<=0;
		end else begin
			if(write_enable) begin
				write_addr<=write_addr+1;
			end else begin
				write_addr<=write_addr;
			end
		end
	end
endmodule