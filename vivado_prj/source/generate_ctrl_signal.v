module generate_ctrl_signal
(
	input clk,
	input rst,
	
	input recv_enable,
	input send_enable,
	input conv_start,
	
	input recv_done,
	input send_done,
	input conv_done,
	
	output recv_running,
	output send_running,
	output conv_shutdown,
	
	input task_valid,
	output ap_done
);
	wire [2:0] task_ctrl_line;
	reg [2:0] task_reg;
	assign task_ctrl_line={recv_enable,send_enable,conv_start};
	always@(posedge clk) begin
		if(rst) begin
			task_reg<=0;
		end else begin
			if(task_valid) begin
				task_reg<=task_ctrl_line;
			end
		end
	end
	
	reg task_done;
	always@(posedge clk) begin
		case(task_reg)
			3'b100: task_done<=recv_done;
			3'b010: task_done<=send_done;
			3'b001: task_done<=conv_done;
			3'b101: task_done<=recv_done;
			default: task_done<=0;
		endcase
	end
	
	reg ap_done_reg;
	assign ap_done=ap_done_reg;
	always@(posedge clk) begin
		if(rst||task_valid) begin
			ap_done_reg<=1'b0;
		end else begin
			if(task_done) begin
				ap_done_reg<=1'b1;
			end
		end
	end
	
	com_ctrl_task
	#(.POLARITY(1'b1)) u_com_ctrl_task_recv
	(
		.clk(clk),.rst(rst),
		.start_signal(recv_enable),
		.done_signal(recv_done),
		.running(recv_running)
	);
	
	com_ctrl_task
	#(.POLARITY(1'b0)) u_com_ctrl_task_conv
	(
		.clk(clk),.rst(rst),
		.start_signal(conv_start),
		.done_signal(conv_done),
		.running(conv_shutdown)
	);
	
	com_ctrl_task
	#(.POLARITY(1'b1)) u_com_ctrl_task_send
	(
		.clk(clk),.rst(rst),
		.start_signal(send_enable),
		.done_signal(send_done),
		.running(send_running)
	);

endmodule