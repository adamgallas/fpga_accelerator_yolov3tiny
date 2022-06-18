module cal_sat_int18_int16
(
	input clk,
	input [17:0] data_in,
	output reg [15:0] data_out
);
	/*
    reg [17:0] data_in_d;
    always@(posedge clk) begin
        data_in_d<=data_in;
    end
	*/
	wire [17:0] data_in_d;
	assign data_in_d=data_in;
	always@(posedge clk) begin
		if(data_in_d[17]==1'b0&&((data_in_d[16:15]&2'b11)!=2'b00)) begin
			data_out<=16'b0111111111111111;
		end else begin
			if(data_in_d[17]==1'b1&&((data_in_d[16:15]|2'b00)!=2'b11)) begin
				data_out<=16'b1000000000000000;
			end else begin
				data_out<=data_in_d[15:0];
			end
		end
	end
endmodule