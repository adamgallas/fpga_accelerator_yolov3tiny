module com_ctrl_task
#(
	parameter POLARITY=1'b1
)
(
	input clk,
	input rst,
	
	input start_signal,
	input done_signal,	
	output reg running
);
	localparam IDLE		=	2'b00;
	localparam RUNNING	=	2'b01;
	localparam PENDING	=	2'b10;
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
				if(start_signal) begin
					next_state<=RUNNING;
				end else begin
					next_state<=IDLE;
				end
			RUNNING:
				if(done_signal) begin
					next_state<=PENDING;
				end else begin
					next_state<=RUNNING;
				end
			PENDING:
				next_state<=IDLE;
			default:
				next_state<=IDLE;
		endcase
	end
	always@(posedge clk) begin
		if(rst) begin
			running<=~POLARITY;
		end else begin
			if(curr_state==RUNNING) begin
				running<=POLARITY;
			end else begin
				running<=~POLARITY;
			end
		end
	end
endmodule