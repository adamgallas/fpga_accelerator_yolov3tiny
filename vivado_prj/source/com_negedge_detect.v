module com_negedge_detect
(
	input clk,
	input signal,
	output pulse
);
	reg signal_d1;
	reg signal_d2;
	always@(posedge clk) begin
		signal_d1<=signal;
		signal_d2<=signal_d1;
	end
	assign pulse=(~signal_d1)&(signal_d2);
endmodule