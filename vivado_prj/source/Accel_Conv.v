module Accel_Conv
#(
	parameter FM_ADDR_BIT=12,
	parameter WEIGHT_AXI_ADDR_BIT=14,
	parameter WEIGHTBUF_ADDR_BIT=7,
	parameter BIASBUF_ADDR_BIT=7,
	
	parameter FM_DEPTH=4096,
	parameter WEIGHTBUF_DEPTH=128,
	parameter BIASBUF_DEPTH=128,
	
	parameter LINEBUFFER_LEN1=15,
	parameter LINEBUFFER_LEN2=13,
	parameter LINEBUFFER_LEN3=26,
	parameter LINEBUFFER_LEN4=52,
	parameter LINEBUFFER_LEN5=104,
	parameter LINEBUFFER_LEN6=208,
	
	parameter IFM_RAM_STYLE="block",
	parameter WEIGHT_RAM_STYLE="distributed",
	parameter BIAS_RAM_STYLE="distributed",
	parameter OFM_RAM_STYLE="block"
)
(
	input clk,
	input rst,
	output ap_done,
	
	// axi-lite interface
	input wire [4:0] S_AXI_LITE_CTRL_awaddr,
	input wire [2:0] S_AXI_LITE_CTRL_awprot,
	input wire  S_AXI_LITE_CTRL_awvalid,
	output wire  S_AXI_LITE_CTRL_awready,
	input wire [31:0] S_AXI_LITE_CTRL_wdata,
	input wire [3:0] S_AXI_LITE_CTRL_wstrb,
	input wire  S_AXI_LITE_CTRL_wvalid,
	output wire  S_AXI_LITE_CTRL_wready,
	output wire [1:0] S_AXI_LITE_CTRL_bresp,
	output wire  S_AXI_LITE_CTRL_bvalid,
	input wire  S_AXI_LITE_CTRL_bready,
	input wire [4:0] S_AXI_LITE_CTRL_araddr,
	input wire [2:0] S_AXI_LITE_CTRL_arprot,
	input wire  S_AXI_LITE_CTRL_arvalid,
	output wire  S_AXI_LITE_CTRL_arready,
	output wire [31:0] S_AXI_LITE_CTRL_rdata,
	output wire [1:0] S_AXI_LITE_CTRL_rresp,
	output wire  S_AXI_LITE_CTRL_rvalid,
	input wire  S_AXI_LITE_CTRL_rready,
	
	// axi-stream slave interface
	output wire  S_AXIS_tready,
	input wire [63:0] S_AXIS_tdata,
	input wire  S_AXIS_tlast,
	input wire  S_AXIS_tvalid,
	
	// axi-stream master interface
	output wire  M_AXIS_tvalid,
	output wire [63:0] M_AXIS_tdata,
	output wire  M_AXIS_tlast,
	input wire  M_AXIS_tready
);
	// axilite control reg
	wire [31:0] reg_0;
	wire [31:0] reg_1;
	wire [31:0] reg_2;
	wire [31:0] reg_3;
	
	// reg 0
	wire			recv_enable;
	wire			send_enable;
	wire			conv_start;
	wire			pool_enable;
	wire			first_conv;
	wire			last_conv;
	wire			ifmbuf_sel;
	wire			task_valid;
	wire	[1:0]	axis_buf_sel;
	wire	[2:0]	sel;
	wire	[1:0]	ofm_send_sel;
	wire			pool_stride_sel;
	wire	[7:0]	row;
	wire			relu_type_sel;
	
	// reg 1 reg 2
	wire	[15:0]	scale;
    wire	[3:0]	shift;
	wire	[7:0]	zero_point_in;
	wire	[7:0]	zero_point_out;
	wire	[7:0]	zero_point_act;
	
	// reg 2 reg 3
	wire	[WEIGHTBUF_ADDR_BIT-1:0]	weightbuf_read_addr_in;
	wire	[BIASBUF_ADDR_BIT-1:0]		biasbuf_read_addr_in;
	
	// reg 0
	assign recv_enable     =reg_0[0];
	assign send_enable     =reg_0[1];
	assign axis_buf_sel    =reg_0[3:2];
	assign conv_start      =reg_0[4];
	assign pool_enable     =reg_0[5];
	assign first_conv      =reg_0[6];
	assign last_conv       =reg_0[7];
	assign ifmbuf_sel      =reg_0[8];
	assign task_valid      =reg_0[9];
	assign sel             =reg_0[12:10];
	assign ofm_send_sel    =reg_0[14:13];
	assign pool_stride_sel =reg_0[15];
	assign relu_type_sel   =reg_0[16];
	assign row             =reg_0[31:24];

	// reg 1 reg 2
	assign scale          =reg_1[15:0];
	assign shift          =reg_1[19:16];
	assign zero_point_in  =reg_2[7:0];
	assign zero_point_out =reg_2[15:8];
	assign zero_point_act =reg_2[23:16];
	
	// reg 3
	assign weightbuf_read_addr_in =reg_3[WEIGHTBUF_ADDR_BIT-1:0];
	assign biasbuf_read_addr_in   =reg_3[16+BIASBUF_ADDR_BIT-1:16];
	
	// global parameter
	wire	[8:0]				conv_row;
	wire	[8:0]				conv_col;
	wire	[8:0]				pool_row;
	wire	[8:0]				pool_col;
	wire	[FM_ADDR_BIT-1:0]	conv_addr_len;
	wire	[FM_ADDR_BIT-1:0]	pool_addr_len;
	wire	[FM_ADDR_BIT-1:0]	ofm_addr_start;
	wire	[FM_ADDR_BIT-1:0]	ofm_addr_end;

	// ifm buffer
	wire	[FM_ADDR_BIT+1-2:0]	ifmbuf_bram_addr_write;
	wire	[FM_ADDR_BIT+1-2:0]	ifmbuf_bram_addr_read;
	wire ifmbuf_bram_en_write;
	
	// weight buffer
	wire								weightbuf_waddr_clear;
	wire								weightbuf_bram_en_write;
	wire	[WEIGHTBUF_ADDR_BIT-1:0]	weightbuf_read_addr;
	assign weightbuf_read_addr=weightbuf_read_addr_in;
	
	// bias buffer
	wire							biasbuf_waddr_clear;
	wire							biasbuf_bram_en_write;
	wire	[BIASBUF_ADDR_BIT-1:0]	biasbuf_read_addr;
	assign biasbuf_read_addr=biasbuf_read_addr_in;
	
	// ofm buffer
	wire						ofmbuf_bram_en_write;
	wire	[FM_ADDR_BIT-1:0]	ofmbuf_bram_write_addr;
	wire	[FM_ADDR_BIT-1:0]	ofmbuf_bram_read_addr;
	wire	[FM_ADDR_BIT-1:0]	ofm_after_quant_addr;
	wire						ofm_after_quant_valid;
	wire						ofm_after_quant_done;
	wire	[FM_ADDR_BIT-1:0]	ofm_after_pool_addr;
	wire						ofm_after_pool_valid;
	wire						ofm_after_pool_zero;
	wire						ofm_after_pool_done;
	assign ofmbuf_bram_en_write=(pool_enable==1'b1)?ofm_after_pool_valid:ofm_after_quant_valid;
	assign ofmbuf_bram_write_addr=(pool_enable==1'b1)?ofm_after_pool_addr:ofm_after_quant_addr;
	
	// acc
	wire						acc_read_en;
	wire						acc_write_en;
	wire	[FM_ADDR_BIT-1:0]	acc_read_addr;
	wire	[FM_ADDR_BIT-1:0]	acc_write_addr;
	wire						acc_prev_data_zero;
	wire						acc_curr_data_zero;
	assign acc_prev_data_zero=first_conv;
	
	// pool
	wire pool_zero_out;
	assign pool_zero_out=ofm_after_pool_zero;
	
	// ifm data port
	wire [7:0] ifm_in_0;
	wire [7:0] ifm_in_1;
	wire [7:0] ifm_in_2;
	wire [7:0] ifm_in_3;
	wire [7:0] ifm_in_4;
	wire [7:0] ifm_in_5;
	wire [7:0] ifm_in_6;
	wire [7:0] ifm_in_7;
	
	// weight data port
	wire [7:0] weight_in_0;
	wire [7:0] weight_in_1;
	wire [7:0] weight_in_2;
	wire [7:0] weight_in_3;
	wire [7:0] weight_in_4;
	wire [7:0] weight_in_5;
	wire [7:0] weight_in_6;
	wire [7:0] weight_in_7;
	
	// bias data port
	wire [17:0] bias_in;
	
	// ofm bundle
	wire [63:0] ofm_out_bundle;
	
	// control signal
	wire			recv_done;
	wire			send_done;
	wire			recv_running;
	wire			send_running;
	wire			write_enable;
	wire	[15:0]	write_addr;
	wire	[63:0]	write_data;
	wire	[15:0]	read_addr;
	wire	[63:0]	read_data;
	
	wire	conv_shutdown;
	wire	conv_done_t;
	reg		conv_done;
	assign conv_done_t=(pool_enable==1'b1)?ofm_after_pool_done:ofm_after_quant_done;
	always@(posedge clk) begin
		conv_done<=conv_done_t;
	end
	assign weightbuf_waddr_clear=task_valid;
	assign biasbuf_waddr_clear=task_valid;
	
	// interface
	wire	[15:0]		write_addr_ifm;
	wire	[63:0]		write_data_ifm;
	wire				write_enable_ifm;
	wire	[15:0]		write_addr_weight;
	wire	[63:0]		write_data_weight;
	wire				write_enable_weight;
	wire	[15:0]		write_addr_bias;
	wire	[63:0]		write_data_bias;
	wire				write_enable_bias;
	wire	[15:0]		write_addr_leakyrelu;
	wire	[63:0]		write_data_leakyrelu;
	wire				write_enable_leakyrelu;

	assign ifmbuf_bram_addr_write  =write_addr_ifm[FM_ADDR_BIT+1-2:0];
	assign ifmbuf_bram_en_write    =write_enable_ifm;
	assign ifm_in_0                =write_data_ifm[7:0];
	assign ifm_in_1                =write_data_ifm[15:8];
	assign ifm_in_2                =write_data_ifm[23:16];
	assign ifm_in_3                =write_data_ifm[31:24];
	assign ifm_in_4                =write_data_ifm[39:32];
	assign ifm_in_5                =write_data_ifm[47:40];
	assign ifm_in_6                =write_data_ifm[55:48];
	assign ifm_in_7                =write_data_ifm[63:56];

	assign weightbuf_bram_en_write =write_enable_weight;
	assign weight_in_0             =write_data_weight[7:0];
	assign weight_in_1             =write_data_weight[15:8];
	assign weight_in_2             =write_data_weight[23:16];
	assign weight_in_3             =write_data_weight[31:24];
	assign weight_in_4             =write_data_weight[39:32];
	assign weight_in_5             =write_data_weight[47:40];
	assign weight_in_6             =write_data_weight[55:48];
	assign weight_in_7             =write_data_weight[63:56];

	assign biasbuf_bram_en_write   =write_enable_bias;
	assign bias_in                 =write_data_bias;
	
	assign ofmbuf_bram_read_addr   =read_addr[FM_ADDR_BIT-1:0];
	assign read_data               =ofm_out_bundle;

	global_para_gen
	#(
		.FM_ADDR_BIT(FM_ADDR_BIT),
		.LINEBUFFER_LEN1(LINEBUFFER_LEN1),
		.LINEBUFFER_LEN2(LINEBUFFER_LEN2),
		.LINEBUFFER_LEN3(LINEBUFFER_LEN3),
		.LINEBUFFER_LEN4(LINEBUFFER_LEN4),
		.LINEBUFFER_LEN5(LINEBUFFER_LEN5),
		.LINEBUFFER_LEN6(LINEBUFFER_LEN6)
	)
	u_global_para_gen
	(
		.clk(clk),
		.sel(sel),
		.row(row),
		.ofm_send_sel(ofm_send_sel),
		.pool_enable((~pool_stride_sel)&&pool_enable),
		
		.conv_row(conv_row),
		.conv_col(conv_col),
		.pool_row(pool_row),
		.pool_col(pool_col),
		
		.conv_addr_len(conv_addr_len),
		.pool_addr_len(pool_addr_len),
		.ofm_addr_start(ofm_addr_start),
		.ofm_addr_end(ofm_addr_end)
	);
	interface_axilite_ctrl u_interface_axilite_ctrl
	(
		.reg_0(reg_0),
		.reg_1(reg_1),
		.reg_2(reg_2),
		.reg_3(reg_3),
		.clk(clk),
		.rst(rst),
		.S_AXI_AWADDR(S_AXI_LITE_CTRL_awaddr),
		.S_AXI_AWPROT(S_AXI_LITE_CTRL_awprot),
		.S_AXI_AWVALID(S_AXI_LITE_CTRL_awvalid),
		.S_AXI_AWREADY(S_AXI_LITE_CTRL_awready),
		.S_AXI_WDATA(S_AXI_LITE_CTRL_wdata),
		.S_AXI_WSTRB(S_AXI_LITE_CTRL_wstrb),
		.S_AXI_WVALID(S_AXI_LITE_CTRL_wvalid),
		.S_AXI_WREADY(S_AXI_LITE_CTRL_wready),
		.S_AXI_BRESP(S_AXI_LITE_CTRL_bresp),
		.S_AXI_BVALID(S_AXI_LITE_CTRL_bvalid),
		.S_AXI_BREADY(S_AXI_LITE_CTRL_bready),
		.S_AXI_ARADDR(S_AXI_LITE_CTRL_araddr),
		.S_AXI_ARPROT(S_AXI_LITE_CTRL_arprot),
		.S_AXI_ARVALID(S_AXI_LITE_CTRL_arvalid),
		.S_AXI_ARREADY(S_AXI_LITE_CTRL_arready),
		.S_AXI_RDATA(S_AXI_LITE_CTRL_rdata),
		.S_AXI_RRESP(S_AXI_LITE_CTRL_rresp),
		.S_AXI_RVALID(S_AXI_LITE_CTRL_rvalid),
		.S_AXI_RREADY(S_AXI_LITE_CTRL_rready)
	);
	generate_ctrl_signal inst_generate_ctrl_signal (
		.clk           (clk),
		.rst           (rst),
		.recv_enable   (recv_enable),
		.send_enable   (send_enable),
		.conv_start    (conv_start),
		.recv_done     (recv_done),
		.send_done     (send_done),
		.conv_done     (conv_done),
		.recv_running  (recv_running),
		.send_running  (send_running),
		.conv_shutdown (conv_shutdown),
		.task_valid    (task_valid),
		.ap_done       (ap_done)
	);
	interface_axis_slave #(
		.ADDR_BIT(16)
	) inst_interface_axis_slave (
		.clk           (clk),
		.rst           (rst),
		.recv_enable   (recv_enable),
		.recv_done     (recv_done),
		.s_axis_tready (S_AXIS_tready),
		.s_axis_tdata  (S_AXIS_tdata),
		.s_axis_tlast  (S_AXIS_tlast),
		.s_axis_tvalid (S_AXIS_tvalid),
		.write_addr    (write_addr),
		.write_data    (write_data),
		.write_enable  (write_enable)
	);
	interface_axis_master #(
		.ADDR_BIT(16)
	) inst_interface_axis_master (
		.clk           (clk),
		.rst           (rst),
		.send_enable   (send_enable),
		.send_done     (send_done),
		.m_axis_tvalid (M_AXIS_tvalid),
		.m_axis_tdata  (M_AXIS_tdata),
		.m_axis_tlast  (M_AXIS_tlast),
		.m_axis_tready (M_AXIS_tready),
		.addr_end      ({{4'b0000},ofm_addr_end}),
		.addr_start    ({{4'b0000},ofm_addr_start}),
		.read_addr     (read_addr),
		.read_data     (read_data)
	);
	axis_buf_sel #(
		.DMA_ADDR_BIT(16)
	) inst_axis_buf_sel (
		.axis_buf_sel           (axis_buf_sel),
		.write_addr             (write_addr),
		.write_data             (write_data),
		.write_enable           (write_enable),

		.write_addr_ifm         (write_addr_ifm),
		.write_data_ifm         (write_data_ifm),
		.write_enable_ifm       (write_enable_ifm),

		.write_addr_weight      (write_addr_weight),
		.write_data_weight      (write_data_weight),
		.write_enable_weight    (write_enable_weight),

		.write_addr_bias        (write_addr_bias),
		.write_data_bias        (write_data_bias),
		.write_enable_bias      (write_enable_bias),

		.write_addr_leakyrelu   (write_addr_leakyrelu),
		.write_data_leakyrelu   (write_data_leakyrelu),
		.write_enable_leakyrelu (write_enable_leakyrelu)
	);

	global_data_beat
	#(.ADDR_BIT(FM_ADDR_BIT))
	u_global_data_beat
	(
		.clk(clk),
		.shutdown(conv_shutdown),
		
		.conv_addr_len(conv_addr_len),
		.pool_addr_len(pool_addr_len),
		.conv_col(conv_col),
		.conv_row(conv_row),
		.pool_stride_sel(pool_stride_sel),
		
		.ifmbuf_bram_addr_read(ifmbuf_bram_addr_read),
		
		.acc_read_en(acc_read_en),
		.acc_write_en(acc_write_en),
		.acc_read_addr(acc_read_addr),
		.acc_write_addr(acc_write_addr),
		.acc_curr_data_zero(acc_curr_data_zero),
		
		.ofm_after_quant_addr(ofm_after_quant_addr),
		.ofm_after_quant_valid(ofm_after_quant_valid),
		.ofm_after_quant_done(ofm_after_quant_done),
		
		.ofm_after_pool_addr(ofm_after_pool_addr),
		.ofm_after_pool_valid(ofm_after_pool_valid),
		.ofm_after_pool_zero(ofm_after_pool_zero),
		.ofm_after_pool_done(ofm_after_pool_done)
	);

	accel_top
	#(
		.IFMBUF_ADDR_BIT(FM_ADDR_BIT+1),
		.WEIGHTBUF_ADDR_BIT(WEIGHTBUF_ADDR_BIT),
		.BIASBUF_ADDR_BIT(BIASBUF_ADDR_BIT),
		.ACC_ADDR_BIT(FM_ADDR_BIT),
		.OFMBUF_ADDR_BIT(FM_ADDR_BIT),
		
		.IFMBUF_DEPTH(FM_DEPTH*2),
		.WEIGHTBUF_DEPTH(WEIGHTBUF_DEPTH),
		.BIASBUF_DEPTH(BIASBUF_DEPTH),
		.ACC_DEPTH(FM_DEPTH),
		.OFMBUF_DEPTH(FM_DEPTH),
		
		.LINEBUFFER_LEN1(LINEBUFFER_LEN1),
		.LINEBUFFER_LEN2(LINEBUFFER_LEN2),
		.LINEBUFFER_LEN3(LINEBUFFER_LEN3),
		.LINEBUFFER_LEN4(LINEBUFFER_LEN4),
		.LINEBUFFER_LEN5(LINEBUFFER_LEN5),
		.LINEBUFFER_LEN6(LINEBUFFER_LEN6),
		
		.IFM_RAM_STYLE(IFM_RAM_STYLE),
		.WEIGHT_RAM_STYLE(WEIGHT_RAM_STYLE),
		.BIAS_RAM_STYLE(BIAS_RAM_STYLE),
		.OFM_RAM_STYLE(OFM_RAM_STYLE)
	)
	u_accel_top
	(
		.clk(clk),
		.rst(rst),
		
		.sel(sel),
		.relu_type_sel(relu_type_sel),
		.pool_enable(pool_enable),
		
		.ifmbuf_bram_addr_write(ifmbuf_bram_addr_write),
		.ifmbuf_bram_addr_read(ifmbuf_bram_addr_read),
		.ifmbuf_bram_en_write(ifmbuf_bram_en_write),
		.ifmbuf_sel(ifmbuf_sel),
		
		.weightbuf_waddr_clear(weightbuf_waddr_clear),
		.weightbuf_bram_en_write(weightbuf_bram_en_write),
		.weightbuf_read_addr(weightbuf_read_addr),
		
		.biasbuf_waddr_clear(biasbuf_waddr_clear),
		.biasbuf_bram_en_write(biasbuf_bram_en_write),
		.biasbuf_read_addr(biasbuf_read_addr),
		
		.acc_read_en(acc_read_en),
		.acc_write_en(acc_write_en),
		.acc_read_addr(acc_read_addr),
		.acc_write_addr(acc_write_addr),
		.acc_prev_data_zero(acc_prev_data_zero),
		.acc_curr_data_zero(acc_curr_data_zero),
		
		.pool_zero_out(pool_zero_out),
		
		.ofmbuf_bram_en_write(ofmbuf_bram_en_write),
		.ofmbuf_bram_write_addr(ofmbuf_bram_write_addr),
		.ofmbuf_bram_read_addr(ofmbuf_bram_read_addr),
		
		.scale(scale),
		.shift(shift),
		.zero_point_in(zero_point_in),
		.zero_point_out(zero_point_out),
		.zero_point_act(zero_point_act),
		
		.ifm_in_0(ifm_in_0),
		.ifm_in_1(ifm_in_1),
		.ifm_in_2(ifm_in_2),
		.ifm_in_3(ifm_in_3),
		.ifm_in_4(ifm_in_4),
		.ifm_in_5(ifm_in_5),
		.ifm_in_6(ifm_in_6),
		.ifm_in_7(ifm_in_7),
		
		.weight_in_0(weight_in_0),
		.weight_in_1(weight_in_1),
		.weight_in_2(weight_in_2),
		.weight_in_3(weight_in_3),
		.weight_in_4(weight_in_4),
		.weight_in_5(weight_in_5),
		.weight_in_6(weight_in_6),
		.weight_in_7(weight_in_7),

		.write_addr_leakyrelu(write_addr_leakyrelu),
		.write_data_leakyrelu(write_data_leakyrelu),
		.write_enable_leakyrelu(write_enable_leakyrelu),
		
		.bias_in(bias_in),
		.bias_valid(last_conv),
		
		.ofm_out_bundle(ofm_out_bundle)
	);	
endmodule