module axis_buf_sel
#(
	parameter DMA_ADDR_BIT =18
)
(
	input	[1:0]				axis_buf_sel,

	input	[DMA_ADDR_BIT-1:0]	write_addr,
	input	[63:0]				write_data,
	input						write_enable,

	output	[DMA_ADDR_BIT-1:0]	write_addr_ifm,
	output	[63:0]				write_data_ifm,
	output						write_enable_ifm,

	output	[DMA_ADDR_BIT-1:0]	write_addr_weight,
	output	[63:0]				write_data_weight,
	output						write_enable_weight,

	output	[DMA_ADDR_BIT-1:0]	write_addr_bias,
	output	[63:0]				write_data_bias,
	output						write_enable_bias,

	output	[DMA_ADDR_BIT-1:0]	write_addr_leakyrelu,
	output	[63:0]				write_data_leakyrelu,
	output						write_enable_leakyrelu
);
	wire buf_sel_ifm;
	wire buf_sel_weight;
	wire buf_sel_bias;
	wire buf_sel_leakyrelu;
	
	assign buf_sel_ifm            =   (axis_buf_sel==2'b00);
	assign buf_sel_weight         =   (axis_buf_sel==2'b01);
	assign buf_sel_bias           =   (axis_buf_sel==2'b11);
	assign buf_sel_leakyrelu      =   (axis_buf_sel==2'b10);
	
	assign write_addr_ifm         =   (buf_sel_ifm)?write_addr:0;
	assign write_data_ifm         =   (buf_sel_ifm)?write_data:0;
	assign write_enable_ifm       =   (buf_sel_ifm)?write_enable:0;
	
	assign write_addr_bias        =   (buf_sel_bias)?write_addr:0;
	assign write_data_bias        =   (buf_sel_bias)?write_data:0;
	assign write_enable_bias      =   (buf_sel_bias)?write_enable:0;
	
	assign write_addr_weight      =   (buf_sel_weight)?write_addr:0;
	assign write_data_weight      =   (buf_sel_weight)?write_data:0;
	assign write_enable_weight    =   (buf_sel_weight)?write_enable:0;
	
	assign write_addr_leakyrelu   =   (buf_sel_leakyrelu)?write_addr:0;
	assign write_data_leakyrelu   =   (buf_sel_leakyrelu)?write_data:0;
	assign write_enable_leakyrelu =   (buf_sel_leakyrelu)?write_enable:0;

endmodule