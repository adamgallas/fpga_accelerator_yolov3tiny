module cal_sat_int16_int8
(
	input clk,
	input [15:0] data_in,
	output reg [7:0] data_out
);
	/*
    reg [15:0] data_in_d;
    always@(posedge clk) begin
        data_in_d<=data_in;
    end
	*/
	wire [15:0] data_in_d;
	assign data_in_d=data_in;
	always@(posedge clk) begin
		if(data_in_d[15]==1'b0&&((data_in_d[14:7]&8'b11111111)!=8'b00000000)) begin
			data_out<=8'b01111111;
		end else begin
			if(data_in_d[15]==1'b1&&((data_in_d[14:7]|8'b00000000)!=8'b11111111)) begin
				data_out<=8'b10000000;
			end else begin
				data_out<=data_in_d[7:0];
			end
		end
	end
endmodule