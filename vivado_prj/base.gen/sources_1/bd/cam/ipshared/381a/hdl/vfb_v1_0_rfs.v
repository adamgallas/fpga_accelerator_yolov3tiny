//-----------------------------------------------------------------------------
// (c) Copyright 2012 - 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename:       axi_traffic_gen_v2_0_asynch_rst_ff.v
// Version : v2.0
// Description:    D-FF with asychronous reset
// Verilog-Standard:verilog-2001
//---------------------------------------------------------------------------

`timescale 1ps/1ps
module vfb_v1_0_15_arst_ff (
  data  ,
  clk   ,
  reset ,
  q     
);
input data, clk, reset ; 
output q;
(*ASYNC_REG = "TRUE" *) reg q;
always @ ( posedge clk or posedge reset) begin
  if (reset) begin
    q <= 1'b1;
  end  else begin
    q <= data;
  end
end
endmodule 


//-----------------------------------------------------------------------------
// (c) Copyright 2014 - 2015 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename:    vfb_v1_0_15_reorder.v
// Description: Processes CSI output and converts to UG934 style.
//---------------------------------------------------------------------------
`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module vfb_v1_0_15_reorder #
(
  parameter AXIS_TDATA_WIDTH       = 32       ,
  parameter AXIS_TUSER_WIDTH       = 96       ,
  parameter AXIS_TDEST_WIDTH       = 4        ,
  parameter VFB_TU_WIDTH           = 96       ,
  parameter VFB_TSB0_WIDTH         = 96       ,
  parameter VFB_TSB1_WIDTH         = 96       ,
  parameter VFB_TSB2_WIDTH         = 96       ,
  parameter VFB_OP_DWIDTH          = 8        ,
  parameter VFB_DATA_TYPE          = 6'h2A    ,
  parameter VFB_VC                 = 2'h0     ,
  parameter VFB_FILTER_VC          = 0        ,
  parameter VFB_REQ_BUFFER         = 0        ,
  parameter VFB_REQ_REORDER        = 0        ,
  parameter VFB_FIFO_WIDTH         = 0        , 
  parameter VFB_DCONV_TUW         = 96       ,
  parameter VFB_4PXL_W             = 0 ,
  parameter VFB_DEBUG_CNTS         = 0 
) (
 //AXIS Interface
 input                                      s_axis_aclk    ,
 input                                      s_axis_aresetn ,
 output                                     v_axis_tready  ,
 input                                      v_axis_tvalid  ,
 input                                      v_axis_tlast   ,
 input [AXIS_TDATA_WIDTH-1:0]               v_axis_tdata   ,
 input [(AXIS_TDATA_WIDTH/8)-1:0]           v_axis_tkeep   ,
 input [AXIS_TUSER_WIDTH-1:0]               v_axis_tuser   ,
 input [AXIS_TDEST_WIDTH-1:0]               v_axis_tdest   ,
 //sband i/f
 input                                      sband_tr       ,
 output                                     sband_tv,
 output  [AXIS_TDATA_WIDTH-1:0]             sband_td,
 output [VFB_TU_WIDTH-1:0]                  sband_tu,
 output [9:0]                               sband_ts,
 output  [(AXIS_TDATA_WIDTH/8)-1:0]         sband_tk,
 output                                     sband_tl,
 output                                     sband_te, //TUSER[1] error

 //FIFO i/f
 input                                      s_fifo_tr      ,
 output reg                                 s_fifo_tv      ,
 output reg [VFB_FIFO_WIDTH-1:0]            s_fifo_td      ,   
 output reg [(VFB_FIFO_WIDTH/8)-1:0]        s_fifo_tk      ,   
 output reg [31:0]                          s_fifo_tid     ,   
 output reg [31:0]                          s_fifo_tdst    ,   
 output reg [VFB_DCONV_TUW-1:0]            s_fifo_tu      ,   
 output reg                                 s_fifo_tl    
); 

//except fsync pass everything through side band identifier _ts
// when VFB_TSB2_WIDTH > 3 means the total tuser bits [96:0] getting used
// which includes data type which is needed as part tdest port
// when VFB_TSB2_WIDTH <= 3 means data type(6bits) is not selected by user, but need
// to be passed as part of tdest port.
localparam  SB_WIDTH = (VFB_TSB2_WIDTH > 3) ? 
                       (VFB_TSB0_WIDTH + VFB_TSB1_WIDTH + VFB_TSB2_WIDTH ):
                       (VFB_TSB0_WIDTH + VFB_TSB1_WIDTH + VFB_TSB2_WIDTH + 6);

localparam  TU_BYTES = (VFB_FIFO_WIDTH / 8) ;
//Filter only intended beats based user inputs
wire                              filt_vc;
wire                              filt_tv;
wire                              filt_tr;
wire [AXIS_TDATA_WIDTH-1:0]       filt_td;
wire                              filt_tu;
wire [SB_WIDTH-1:0]               filt_ts; //capture all sidebad signals
wire [(AXIS_TDATA_WIDTH/8)-1:0]   filt_tk;
wire                              filt_tl;
wire                              filt_te; //TUSER[1] error

wire                              buff_tv;
wire                              buff_tr;
wire [VFB_FIFO_WIDTH-1:0]         buff_td;
wire                              buff_tu;
wire [SB_WIDTH-1:0]               buff_ts;
wire [(VFB_FIFO_WIDTH/8)-1:0]     buff_tk;
wire                              buff_tl;
//wire				  R20_tv;
//wire				  R20_tu;
//wire				  R20_tl;
reg				  reord_hlt;
wire                              reord_tv;
wire                              reord_tr;
wire [VFB_FIFO_WIDTH-1:0]         reord_td;
wire                              reord_tu;
wire [SB_WIDTH-1:0]               reord_ts;
wire [(VFB_FIFO_WIDTH/8)-1:0]     reord_tk;
wire                              reord_tl;

wire                              fifo_tv;
wire                              fifo_tr;
wire [VFB_FIFO_WIDTH-1:0]         fifo_td;
wire                              fifo_tu;
wire [SB_WIDTH-1:0]               fifo_ts;
wire [(VFB_FIFO_WIDTH/8)-1:0]     fifo_tk;
wire                              fifo_tl;


//staging-start
 //wire                                      s_axis_tlast   ,
 //wire [AXIS_TDATA_WIDTH-1:0]               s_axis_tdata   ,
 //wire [(AXIS_TDATA_WIDTH/8)-1:0]           s_axis_tkeep   ,
 //wire [AXIS_TUSER_WIDTH-1:0]               s_axis_tuser   ,
 //wire [AXIS_TDEST_WIDTH-1:0]               s_axis_tdest   ,
 // 7 is to hold sum of bytes width info.
localparam STAGE_WIDTH = 7+ 1+ AXIS_TDATA_WIDTH+(AXIS_TDATA_WIDTH/8)+
                         AXIS_TUSER_WIDTH+AXIS_TDEST_WIDTH;
localparam TE_L =  0; 
localparam TE_H =  TE_L+AXIS_TDEST_WIDTH-1;
localparam TU_L =  TE_H+1;
localparam TU_H =  TU_L+AXIS_TUSER_WIDTH-1;
localparam TK_L =  TU_H+1;
localparam TK_H =  TK_L +(AXIS_TDATA_WIDTH/8)-1;
localparam TD_L =  TK_H+1;
localparam TD_H =  TD_L+ AXIS_TDATA_WIDTH-1;
localparam TL_L =  TD_H+1;
localparam TL_H =  TL_L+1-1;
localparam TB_L =  TL_H+1;
localparam TB_H =  TB_L+7-1;

reg [1:0]             buf_valid;
reg [STAGE_WIDTH-1:0] buf_data[1:0];
wire b_wen;
wire [STAGE_WIDTH-1:0] b_wdata;
wire b_ren;
wire [STAGE_WIDTH-1:0] b_rdata;

wire buf_ren;

wire [6:0] beat_width;
wire [3:0] beat_sum;
generate if(AXIS_TDATA_WIDTH  == 32 ) begin : TD_32
 assign beat_sum = v_axis_tkeep[3]+ 
                   v_axis_tkeep[2]+
                   v_axis_tkeep[1]+
                   v_axis_tkeep[0];
 assign beat_width = {beat_sum,3'b000};
end
endgenerate 
generate if(AXIS_TDATA_WIDTH  == 64 ) begin : TD_64
 assign beat_sum = v_axis_tkeep[7]+ 
                   v_axis_tkeep[6]+
                   v_axis_tkeep[5]+
                   v_axis_tkeep[4]+
                   v_axis_tkeep[3]+
                   v_axis_tkeep[2]+
                   v_axis_tkeep[1]+
                   v_axis_tkeep[0];
 assign beat_width = {beat_sum,3'b000};
end
endgenerate 

assign b_wen = v_axis_tvalid & v_axis_tready;
assign b_wdata = {
  beat_width     ,
  v_axis_tlast   ,
  v_axis_tdata   ,
  v_axis_tkeep   ,
  v_axis_tuser   ,
  v_axis_tdest   
 };
always @(posedge s_axis_aclk) begin
  if(~s_axis_aresetn) begin
    buf_valid <= 2'h0;
    buf_data[0] <= {STAGE_WIDTH{1'b0}};
    buf_data[1] <= {STAGE_WIDTH{1'b0}};
  end else if(buf_valid[0] & 
              (buf_ren )) begin 
    if(buf_valid[1]) begin
      buf_valid[0] <= buf_valid[1];
      buf_data[0]  <= buf_data[1];
      buf_valid[1] <= 1'b0;
    end else begin
      if(b_wen) begin
        buf_valid[0] <= 1'b1;
        buf_data[0]  <= b_wdata;
      end else begin
        buf_valid[0] <= 1'b0;
      end
    end
  end else if(~buf_valid[0] & (b_wen)) begin
    buf_valid[0] <= 1'b1;
    buf_data[0]  <= b_wdata;
  end else if(~buf_valid[1] & (b_wen)) begin
    buf_valid[1] <= 1'b1;
    buf_data[1]  <= b_wdata;
  end
end


//accept data if buffers are free
assign v_axis_tready = (buf_valid[1] == 1'b0);


//readside
 wire                                      s_axis_tready  ;
 wire                                      s_axis_tvalid  ;
 wire                                      s_axis_tlast   ;
 wire [AXIS_TDATA_WIDTH-1:0]               s_axis_tdata   ;
 wire [(AXIS_TDATA_WIDTH/8)-1:0]           s_axis_tkeep   ;
 wire [AXIS_TUSER_WIDTH-1:0]               s_axis_tuser   ;
 wire [AXIS_TDEST_WIDTH-1:0]               s_axis_tdest   ;
  wire [6:0] byt_sum;

assign s_axis_tvalid = buf_valid[0];
assign b_rdata = buf_data[0];
assign byt_sum        = b_rdata[TB_H:TB_L];
assign s_axis_tlast   = b_rdata[TL_H:TL_L]; 
assign s_axis_tdata   = b_rdata[TD_H:TD_L];
assign s_axis_tkeep   = b_rdata[TK_H:TK_L];
assign s_axis_tuser   = b_rdata[TU_H:TU_L];
assign s_axis_tdest   = b_rdata[TE_H:TE_L];
assign buf_ren = s_axis_tready;
//stagin-end



reg cur_dtype_pxls;
reg cur_dtype_udef;
reg cur_dtype_sink;
reg first_beat_rcvd;
wire sband_dtype;
wire dtype_udefs;
wire dtype_raw8;
wire dtype_pxls;
assign dtype_udefs = ((s_axis_tuser[69:68] == 2'b11) &
                      (s_axis_tuser[67]    == 1'b0) );
assign dtype_raw8  = (s_axis_tuser[69:64] == 6'h2A);
assign dtype_pxls  = (s_axis_tuser[69:64] == VFB_DATA_TYPE) &
                     (~dtype_raw8);

assign filt_vc = (VFB_FILTER_VC == 1)?(s_axis_tdest[3:0] == VFB_VC):1'b1;
assign filt_tv = ((dtype_pxls) & cur_dtype_pxls &
                   filt_vc & s_axis_tvalid)?
                  1'b1:1'b0;
assign filt_td = s_axis_tdata; 
assign filt_tu = s_axis_tuser[0] & filt_tv & s_axis_tready; 

//pass all sideband data. If RHS is less than LHS,unintended
// data automatically gets trimmed
// NOTE: tdest [vc value, data type] should be at LSB position as it
// need to be part of tdest port
assign filt_ts = {
                  s_axis_tuser[95:72],
                  s_axis_tuser[63:48],
                  s_axis_tuser[47:32],
                  s_axis_tuser[31:16],
                  s_axis_tuser[69:64],
                  s_axis_tdest[3:0]
                 };
assign filt_tk = s_axis_tkeep; 
assign filt_tl = s_axis_tready & s_axis_tlast &
                 s_axis_tvalid; //Filter invalid tlasts
assign filt_te = s_axis_tready & s_axis_tlast &
                 s_axis_tvalid & s_axis_tuser[1]; //Filter invalid tuser[1]
assign filt_tr = buff_tr & cur_dtype_pxls;

//assign s_axis_tready = (filt_tr  ) |
//                       (sband_tr );
assign s_axis_tready = //(filt_tr  & sband_tr & ~first_beat_rcvd)|
                       (           cur_dtype_sink) |
                       (filt_tr  & cur_dtype_pxls) |
                       (sband_tr & cur_dtype_udef);
//
//REQ_BUFFER logic not required.Bypass buffering 
//This applicable for RAW8,RGB565,RGB555,RGB444,YUV422_8bit data formats
//
generate if(VFB_REQ_BUFFER  == 0 ) begin : REQ_BUFFER_0
 assign buff_tv = filt_tv ;
 assign buff_td = filt_td ;
 assign buff_tu = filt_tu ;
 assign buff_ts = filt_ts ;
 assign buff_tk = filt_tk ;
 assign buff_tl = filt_tl | filt_te;
 assign buff_tr = reord_tr;
end
endgenerate

// 
//Buffering logic calculates the minimum required bytes to be read to
// form 4 complete pixels and writes to stream FIFO.
//Based on the data type CSI-2 Rx controller stream output interface width
// is calculated 32/64
//In addition minimum length constraint for each data format is taken into
// account to write less number of pixels(<4 pixels) if allowed by the
// particular data type. 
//

//Two major variations: 
// 4 pixels width <= Max supported CSI-2 Rx controller stream interface width
// 4 pixels width >  Max supported CSI-2 Rx controller stream interface width
//
//case1:Every read from stream i/f have 4pixels data to write to FIFO with
//      ex:RAW6,7,8
//case2:Need to wait for more than one read to 4 form pixels and write to FIFO
//      ex:RGB888
//|-------------------------------------------------------------------
//|Data Type     |1PixelWidth|MinPixels|MinBits|DataType  |TDATA Width  
//|-------------------------------------------------------------------
//|raw6          |     6     |      4   |  24  | 28       | 32
//|raw7          |     7     |      8   |  56  | 29       | 32
//|raw8          |     8     |      1   |  8   | 2a       | 32
//|raw10         |     10    |      4   |  40  | 2b       | 64
//|raw12         |     12    |      2   |  24  | 2c       | 64
//|raw14         |     14    |      4   |  56  | 2d       | 64
//|rgb888        |     24    |      1   |  24  | 24       | 64
//|rgb666        |     18    |      4   |  72  | 23       | 64
//|rgb565/555/444|     16    |      1   |  16  | 22,21,20 | 64
//|yuv 422-8b    |     16    |      2   |  32  | 1E       | 64
//|-------------------------------------------------------------------

//-------------------------------------------------------------------
//Below table is used in throttling stream i/f and writing pixels to FIFO
// In addition residual pixels are calculated as needed when
// the last beat of trasnfer do not form a complete 4 pixel info.
//-------------------------------------------------------------------
//Data Type   Stream       TDATA    Pixel   Total   Fifo 
//            I/f reads    width    width   pixels  Writes
//-------------------------------------------------------------------
//raw6           3           32       6       16      4
//raw7           7           32       7       32      8
//raw8           1           32       8       4       1
//raw10          5           64      10       32      8
//raw12          3           64      12       16      4
//raw14          7           64      14       32      8
//rgb888         3           64      24       8       2
//rgb666         9           64      18       32      8
//rgb565/555/444 1           64      16       4       1
//yuv 422-8b     1           64      16       4       1
//-------------------------------------------------------------------

//-----------------------------------------
//********RAW6 buffering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_BUFFER  == 1 && VFB_DATA_TYPE == 6'h28 )
                                            begin : REQ_BUFFER_RAW6
wire [AXIS_TDATA_WIDTH-1:0] data_4pxl[3:0];
reg  [AXIS_TDATA_WIDTH-1:0] res_data;
reg  [AXIS_TDATA_WIDTH-1:0] cur_data;
reg  [AXIS_TDATA_WIDTH-1:0] liv_data;

//buffer mappings for RAW6 on 32-bit stream interface
//pattern repeats for every 3*4 bytes received from stream 
// interface
assign data_4pxl[0] = {cur_data[23:0],cur_data[23:0] };
assign data_4pxl[1] = {cur_data[15:0],res_data[31:24]};
assign data_4pxl[2] = {cur_data[7:0 ],res_data[31:16]};
assign data_4pxl[3] = {cur_data[31:0],res_data[31:8] };

reg [1:0]                      indx_cntr;
reg                            buff_tv_i;
reg                            buff_tu_i;
reg [SB_WIDTH-1:0]             buff_ts_i;
reg [SB_WIDTH-1:0]             liv_ts;
reg [(VFB_FIFO_WIDTH/8)-1:0]   buff_tk_i;
reg [(VFB_FIFO_WIDTH/8)-1:0]   liv_tk   ;
reg                            buff_tl_i;

reg  [7:0] resi_wdth;
reg        filt_tl_on;
  //keep track to select the buffer combinations 
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      indx_cntr <= 2'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      indx_cntr <= 2'h0 ;
    end else if(buff_tv & reord_tr )begin
      indx_cntr <= indx_cntr + 2'h1;
    end 
  end
  //update residual data width available.Accept data from stream interface
  // if the current residual data is not enough to form the complete pixels
  wire [7:0] act_wdth;
  wire [3:0] b0,b1,b2,b3,b4,b5,b6,b7;
  assign b0 = filt_tk[0]?4'h8:4'h0;
  assign b1 = filt_tk[1]?4'h8:4'h0;
  assign b2 = filt_tk[2]?4'h8:4'h0;
  assign b3 = filt_tk[3]?4'h8:4'h0;
  assign act_wdth = b0+b1+b2+b3;
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      resi_wdth <= 8'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      resi_wdth <= 8'h0 ;
    end else if(filt_tv & buff_tr)begin
      if((buff_tv & reord_tr)| ~buff_tv) begin
        resi_wdth <= resi_wdth + act_wdth - VFB_4PXL_W;
      end else begin
        resi_wdth <= resi_wdth + act_wdth ;
      end
    end else if(resi_wdth>=VFB_4PXL_W & buff_tv & reord_tr) begin
      resi_wdth <= resi_wdth  - VFB_4PXL_W;
    end 
  end
  assign buff_tr = (resi_wdth < VFB_4PXL_W) &
                   (~buff_tl_i) &
                   (~filt_tl_on); //for cleaning up resi.width at eol
  //latch data received on stream interface.
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      liv_data <= {AXIS_TDATA_WIDTH{1'b0}};
      cur_data <= {AXIS_TDATA_WIDTH{1'b0}};
      res_data <= {AXIS_TDATA_WIDTH{1'b0}};
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      liv_tk    <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      buff_ts_i <= {SB_WIDTH{1'b0}}; 
      liv_ts    <= {SB_WIDTH{1'b0}}; 
    end else begin
      if(buff_tv & reord_tr) begin
        res_data <= cur_data;
      end
      if(filt_tv & buff_tr) begin
        liv_data <= filt_td;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        liv_tk  <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        liv_ts  <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr) begin
        liv_tk   <= filt_tk;
        liv_ts   <= filt_ts;
      end
      if(~buff_tv) begin
        cur_data <= filt_td;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        cur_data <= filt_td;
      end else if(buff_tv & reord_tr) begin
        cur_data <= liv_data;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        buff_ts_i <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr & ~buff_tv) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(buff_tv & reord_tr) begin
        buff_tk_i <= liv_tk;
        buff_ts_i <= liv_ts;
      end
    end 
  end
  //pump to next logic(reorder) once the complete pixel information available
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tv_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tv_i <= buff_tv_i;
    end else if(filt_tv & buff_tr) begin
      buff_tv_i <= 1'b1; 
    end else if ((resi_wdth >= VFB_4PXL_W) & 
                 (~buff_tl_i)) begin
      buff_tv_i <= 1'b1; 
    end else begin
      buff_tv_i <= 1'b0; 
    end
  end
  assign buff_tv = buff_tv_i;
  assign buff_td = data_4pxl[indx_cntr];
  //side band signal generation
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_i <= 1'b0; 
    end else if(buff_tu_i & buff_tv_i & reord_tr) begin
      buff_tu_i <= 1'b0; 
    end else if(filt_tu) begin
      buff_tu_i <= 1'b1; 
    end
  end
  //always @(posedge s_axis_aclk) begin
  //  if(~s_axis_aresetn) begin
  //    buff_ts_i <= 8'h0; 
  //  end else if(buff_tv_i & ~reord_tr) begin
  //  end else if(filt_tv & buff_tr) begin
  //    buff_ts_i <= filt_ts;
  //  end
  //end
  //latch tl on filt & reset once passed to buff
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      filt_tl_on <= 1'b0;
    end else if(filt_tl_on & buff_tv & buff_tl)begin
      filt_tl_on <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr)begin
      filt_tl_on <= 1'b1;
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tl_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tl_i <= buff_tl_i;
    end else if(buff_tv&reord_tr & buff_tl_i)begin
      buff_tl_i <= 1'b0; 
    end else if(filt_tv & filt_tl & buff_tr & 
                ((~buff_tv)|(buff_tv & reord_tr))  ) begin
      buff_tl_i <= (filt_tk[3] == 1'b0) |(filt_te); 
    end else if((resi_wdth <= VFB_4PXL_W)& filt_tl_on ) begin 
      buff_tl_i <= 1'b1; 
    end 
  end
  assign buff_tu =buff_tu_i ; 
  assign buff_ts =buff_ts_i ; 
  assign buff_tk =buff_tk_i ; 
  assign buff_tl =buff_tl_i ; 
  
end
endgenerate //REQ_BUFFER_RAW6
//-----------------------------------------
//********RAW7 buffering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_BUFFER  == 1 && VFB_DATA_TYPE == 6'h29 )
                                          begin : REQ_BUFFER_RAW7
wire [AXIS_TDATA_WIDTH-1:0] data_4pxl[7:0];
reg  [AXIS_TDATA_WIDTH-1:0] res_data;
reg  [AXIS_TDATA_WIDTH-1:0] cur_data;
reg  [AXIS_TDATA_WIDTH-1:0] liv_data;

//buffer mappings for RAW7 on 32-bit stream interface
//pattern repeats for every 7*4 bytes received from stream 
// interface
assign data_4pxl[0] = {cur_data[27:0] ,cur_data[27:0] };
assign data_4pxl[1] = {cur_data[23:0] ,res_data[31:28]};
assign data_4pxl[2] = {cur_data[19:0] ,res_data[31:24]};
assign data_4pxl[3] = {cur_data[15:0] ,res_data[31:20]};
assign data_4pxl[4] = {cur_data[11:0] ,res_data[31:16]};
assign data_4pxl[5] = {cur_data[7:0 ] ,res_data[31:12]};
assign data_4pxl[6] = {cur_data[3:0 ] ,res_data[31:8] };
assign data_4pxl[7] = {cur_data[0:0 ] ,res_data[31:4] };


reg [2:0]                     indx_cntr;
reg                           buff_tv_i;
reg                           buff_tu_i;
reg [SB_WIDTH-1:0]                      buff_ts_i;
reg [SB_WIDTH-1:0]           liv_ts;
reg [(VFB_FIFO_WIDTH/8)-1:0]  buff_tk_i;
reg [(VFB_FIFO_WIDTH/8)-1:0]  liv_tk;
reg                           buff_tl_i;

reg  [7:0] resi_wdth;
  reg filt_tl_on;
wire tl_nxt;
wire tl_cur;
  //keep track to select the buffer combinations 
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      indx_cntr <= 3'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      indx_cntr <= 3'h0 ;
    end else if(buff_tv & reord_tr )begin
      indx_cntr <= indx_cntr + 3'h1;
    end 
  end
  //update residual data width available.Accept data from stream interface
  // if the current residual data is not enough to form the complete pixels
  wire [7:0] act_wdth;
  wire [3:0] b0,b1,b2,b3,b4,b5,b6,b7;
  assign b0 = filt_tk[0]?4'h8:4'h0;
  assign b1 = filt_tk[1]?4'h8:4'h0;
  assign b2 = filt_tk[2]?4'h8:4'h0;
  assign b3 = filt_tk[3]?4'h8:4'h0;
  assign act_wdth = b0+b1+b2+b3;
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      resi_wdth <= 8'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      resi_wdth <= 8'h0 ;
    end else if(filt_tv & buff_tr)begin
      if((buff_tv & reord_tr)| ~buff_tv) begin
        resi_wdth <= resi_wdth + act_wdth - VFB_4PXL_W;
      end else begin
        resi_wdth <= resi_wdth + act_wdth ;
      end
    end else if(resi_wdth>=VFB_4PXL_W & buff_tv & reord_tr) begin
      resi_wdth <= resi_wdth  - VFB_4PXL_W;
    end 
  end
  assign buff_tr = (resi_wdth < VFB_4PXL_W) &
                   (~buff_tl_i) &
                   (~filt_tl_on); //for cleaning up resi.width at eol
  //latch data received on stream interface.
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      liv_data <= {AXIS_TDATA_WIDTH{1'b0}};
      cur_data <= {AXIS_TDATA_WIDTH{1'b0}};
      res_data <= {AXIS_TDATA_WIDTH{1'b0}};
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      liv_tk    <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      liv_ts    <= {SB_WIDTH{1'b0}}; 
    end else begin
      if(buff_tv & reord_tr) begin
        res_data <= cur_data;
      end
      if(filt_tv & buff_tr) begin
        liv_data <= filt_td;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        liv_tk  <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        liv_ts    <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr) begin
        liv_tk   <= filt_tk;
        liv_ts   <= filt_ts;
      end
      if(~buff_tv) begin
        cur_data <= filt_td;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        cur_data <= filt_td;
      end else if(buff_tv & reord_tr) begin
        cur_data <= liv_data;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        buff_ts_i <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr & ~buff_tv) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(buff_tv & reord_tr) begin
        buff_tk_i <= liv_tk;
        buff_ts_i <= liv_ts;
      end
    end 
  end
  //pump to next logic(reorder) once the complete pixel information available
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tv_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tv_i <= buff_tv_i;
    end else if(filt_tv & buff_tr) begin
      buff_tv_i <= 1'b1; 
    end else if ((resi_wdth >= VFB_4PXL_W) & 
                 (~buff_tl_i)) begin
      buff_tv_i <= 1'b1; 
    end else begin
      buff_tv_i <= 1'b0; 
    end
  end
  assign buff_tv = buff_tv_i;
  assign buff_td = data_4pxl[indx_cntr];
  //side band signal generation
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_i <= 1'b0; 
    end else if(buff_tu_i & buff_tv_i & reord_tr) begin
      buff_tu_i <= 1'b0; 
    end else if(filt_tu) begin
      buff_tu_i <= 1'b1; 
    end
  end
  //always @(posedge s_axis_aclk) begin
  //  if(~s_axis_aresetn) begin
  //    buff_ts_i <= 8'h0; 
  //  end else if(buff_tv_i & ~reord_tr) begin
  //  end else if(filt_tv & buff_tr) begin
  //    buff_ts_i <= filt_ts;
  //  end
  //end
  //latch tl on filt & reset once passed to buff
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      filt_tl_on <= 1'b0;
    end else if(filt_tl_on & buff_tv & buff_tl)begin
      filt_tl_on <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr)begin
      filt_tl_on <= 1'b1;
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tl_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tl_i <= buff_tl_i;
    end else if(buff_tv&reord_tr & buff_tl_i)begin
      buff_tl_i <= 1'b0; 
    end else if(filt_tv & filt_tl & buff_tr & 
                ((~buff_tv)|(buff_tv & reord_tr))  ) begin
      buff_tl_i <= (filt_tk[3] == 1'b0)|(filt_te); 
    end else if((resi_wdth <= VFB_4PXL_W)& filt_tl_on ) begin 
      buff_tl_i <= 1'b1; 
    end 
  end
  assign buff_tu =buff_tu_i ; 
  assign buff_ts =buff_ts_i ; 
  assign buff_tk =buff_tk_i ; 
  assign buff_tl =buff_tl_i ; 
  
end
endgenerate //REQ_BUFFER_RAW7
//-----------------------------------------
//********YUV10 buffering logic ***********//
//-----------------------------------------
/*
generate if(VFB_REQ_BUFFER  == 1 && VFB_DATA_TYPE == 6'h1F )
                                      begin : REQ_BUFFER_YUV422_10B
wire [VFB_FIFO_WIDTH-1:0] data_4pxl[4:0];
reg  [AXIS_TDATA_WIDTH-1:0] res_data;
reg  [AXIS_TDATA_WIDTH-1:0] cur_data;
reg  [AXIS_TDATA_WIDTH-1:0] liv_data;

assign data_4pxl[0] = {cur_data[63:0 ],cur_data[63:0] };
assign data_4pxl[1] = {cur_data[15:0 ],res_data[63:0]};
assign data_4pxl[2] = {cur_data[31:0 ],res_data[63:16]};
assign data_4pxl[3] = {cur_data[47:0 ],res_data[63:32]};
assign data_4pxl[4] = {cur_data[63:0 ],res_data[63:48]};

reg [(AXIS_TDATA_WIDTH/8)-1:0]   filt_tk_d;
reg [(VFB_FIFO_WIDTH/8)-1:0] buff_tk_i;

reg [2:0]                    indx_cntr;
reg                          buff_tv_i;
reg                          buff_tu_i;
reg [SB_WIDTH-1:0]           buff_ts_i;
reg [SB_WIDTH-1:0]           liv_ts;
reg [(VFB_FIFO_WIDTH/8)-1:0] liv_tk;
reg                          buff_tl_i;
reg        buff_tu_on;
reg	   filt_tl_on;
reg  [8:0] resi_wdth;
reg mod4;

  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      indx_cntr <= 3'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      indx_cntr <= 3'h0 ;
    end else if(buff_tv & reord_tr) begin
       if(indx_cntr == 3'h0 & mod4 != 1'b1 ) begin
      indx_cntr <= indx_cntr + 3'h1;end
       else if (reord_tv == 1'b1 & indx_cntr != 3'h4) begin
      indx_cntr <= indx_cntr + 3'h1;end
       else if (indx_cntr == 3'h4) begin
           indx_cntr <= 3'h0;end
    end
  end

always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      mod4 <= 3'h0 ;
    end else if (buff_tv == 1'b1 & reord_tr == 1'b1 & reord_tv == 1'b1 & indx_cntr == 3'h4) begin
       mod4 <= 3'h1;
    end else begin
       mod4 <= 1'b0;
    end
  end
wire [8:0] act_wdth;
  wire [3:0] b0,b1,b2,b3,b4,b5,b6,b7;
  assign b0 = filt_tk[0]?4'h8:4'h0;
  assign b1 = filt_tk[1]?4'h8:4'h0;
  assign b2 = filt_tk[2]?4'h8:4'h0;
  assign b3 = filt_tk[3]?4'h8:4'h0;
  assign b4 = filt_tk[4]?4'h8:4'h0;
  assign b5 = filt_tk[5]?4'h8:4'h0;
  assign b6 = filt_tk[6]?4'h8:4'h0;
  assign b7 = filt_tk[7]?4'h8:4'h0;
  assign act_wdth = b0+b1+b2+b3+
                    b4+b5+b6+b7;
  assign R20_tv = (indx_cntr == 3'h0 & filt_tl_on != 1'b1 ) ? 1'b1 : 1'b0 ;
always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      resi_wdth <= 8'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      resi_wdth <= 8'h0 ;
    end else if(filt_tv & buff_tr)begin
      if(indx_cntr == 3'h0 & buff_tv == 1'b0) begin
        resi_wdth <= resi_wdth + act_wdth;
      end else begin
        resi_wdth <= resi_wdth + act_wdth - VFB_4PXL_W;
      end
    end else if(resi_wdth>=VFB_4PXL_W & buff_tv & reord_tr) begin
      resi_wdth <= resi_wdth  - VFB_4PXL_W;
    end
  end
  assign buff_tr = (resi_wdth < VFB_4PXL_W) &
                   (~buff_tl_i) &
                   (~filt_tl_on);

  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      liv_data <= {AXIS_TDATA_WIDTH{1'b0}};
      cur_data <= {AXIS_TDATA_WIDTH{1'b0}};
      res_data <= {AXIS_TDATA_WIDTH{1'b0}};
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}};
      liv_tk    <= {(VFB_FIFO_WIDTH/8){1'b0}};
      buff_ts_i <= {SB_WIDTH{1'b0}};
      liv_ts    <= {SB_WIDTH{1'b0}};
   end else begin
      if(buff_tv & reord_tr) begin
        res_data <= cur_data;
      end
      if(filt_tv & buff_tr) begin
        liv_data <= filt_td;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        liv_tk  <= {(VFB_FIFO_WIDTH/8){1'b0}};
        liv_ts  <= {SB_WIDTH{1'b0}};
      end else if(filt_tv & buff_tr) begin
        liv_tk   <= filt_tk;
        liv_ts   <= filt_ts;
      end
      if(~buff_tv) begin
        cur_data <= filt_td;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        cur_data <= filt_td;
      end else if(buff_tv & reord_tr) begin
        cur_data <= liv_data;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}};
        buff_ts_i <= {SB_WIDTH{1'b0}};
      end else if(filt_tv & buff_tr & ~buff_tv) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(buff_tv & reord_tr) begin
        buff_tk_i <= liv_tk;
        buff_ts_i <= liv_ts;
      end
    end
  end

always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tv_i <= 1'b0;
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tv_i <= buff_tv_i;
    end else if(filt_tv & buff_tr) begin
      buff_tv_i <= 1'b1;
    end else if ((resi_wdth >= VFB_4PXL_W) &
                 (~buff_tl_i)) begin
      buff_tv_i <= 1'b1;
    end else if((resi_wdth <= VFB_4PXL_W)&
                (~buff_tl_i) &
                (filt_tl_on) ) begin
      buff_tv_i <= 1'b1;
    end else begin
      buff_tv_i <= 1'b0;
    end
  end

always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      reord_hlt <= 1'b0;
    end else if ((resi_wdth >= VFB_4PXL_W) &
                 (~buff_tl_i)) begin
      reord_hlt <= 1'b1;
    end else begin
      reord_hlt <= 1'b0;
    end
 end

  assign buff_tv = buff_tv_i;
  assign buff_td = data_4pxl[indx_cntr];
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_i <= 1'b0;
    end else if(buff_tu_i & buff_tv_i & reord_tr) begin
      buff_tu_i <= 1'b0;
    end else if(filt_tu) begin
      buff_tu_i <= 1'b1;
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_on <= 1'b0;
    end else if(buff_tu_on & buff_tv_i & reord_tr)begin
      buff_tu_on <= 1'b0;
    end else if(buff_tu_i)begin
      buff_tu_on <= 1'b1;
    end
  end

always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      filt_tl_on <= 1'b0;
    end else if(filt_tl_on & buff_tv & buff_tl)begin
      filt_tl_on <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr)begin
      filt_tl_on <= 1'b1;
    end
  end

assign R20_tu = (buff_tu_on)? 1'b1 : 1'b0;
assign R20_tl = (filt_tl_on)? 1'b1 : 1'b0;


 always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tl_i <= 1'b0;
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tl_i <= buff_tl_i;
    end else if(buff_tv&reord_tr & buff_tl_i)begin
      buff_tl_i <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr &
                ((~buff_tv)|(buff_tv & reord_tr))  ) begin
      buff_tl_i <= (filt_tk[5] == 1'b0) |(filt_te);
    end else if((resi_wdth <= VFB_4PXL_W)& filt_tl_on ) begin
      buff_tl_i <= 1'b1;
    end
  end
  assign buff_tu =buff_tu_i ;
  assign buff_ts =buff_ts_i ;
  assign buff_tk =buff_tk_i ;
  assign buff_tl =buff_tl_i ;
end
endgenerate //REQ_BUFFER_YUV422_10B

*/
//-----------------------------------------
//********RAW20 AND YUV_422 10 Bit buffering logic ***********//
//-----------------------------------------

generate if(VFB_REQ_BUFFER  == 1 && (VFB_DATA_TYPE == 6'h2F || VFB_DATA_TYPE == 6'h1F))
                                      begin : REQ_BUFFER_RAW20_YUV422_10B
wire [VFB_FIFO_WIDTH-1:0] data_4pxl[3:0];
reg  [AXIS_TDATA_WIDTH-1:0] res_data;
reg  [AXIS_TDATA_WIDTH-1:0] cur_data;
reg  [AXIS_TDATA_WIDTH-1:0] liv_data;
reg  [AXIS_TDATA_WIDTH-1:0] null_data;

//assign data_4pxl[0] = {cur_data[63:0 ],cur_data[63:0] };
assign data_4pxl[0] = {cur_data[15:0 ],res_data[63:0]};
assign data_4pxl[1] = {cur_data[31:0 ],res_data[63:16]};
assign data_4pxl[2] = {cur_data[47:0 ],res_data[63:32]};
assign data_4pxl[3] = {cur_data[63:0 ],res_data[63:48]};

reg [(AXIS_TDATA_WIDTH/8)-1:0]   filt_tk_d;
reg [(VFB_FIFO_WIDTH/8)-1:0] buff_tk_i;

reg [1:0]                    indx_cntr;
reg                          buff_tv_i;
reg                          buff_tu_i;
reg [SB_WIDTH-1:0]           buff_ts_i;
reg [SB_WIDTH-1:0]           liv_ts;
reg [(VFB_FIFO_WIDTH/8)-1:0] liv_tk;
reg                          buff_tl_i;
reg        buff_tu_on;
reg        filt_tl_on;
reg  [7:0] resi_wdth;
//reg mod4;

  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      indx_cntr <= 2'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      indx_cntr <= 2'h0 ;
    end else if(buff_tv & reord_tr) begin
      indx_cntr <= indx_cntr + 2'h1;end
  end

/*always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      mod4 <= 3'h0 ;
    end else if (buff_tv == 1'b1 & reord_tr == 1'b1 & reord_tv == 1'b1 & indx_cntr == 3'h4) begin
       mod4 <= 3'h1;
    end else begin
       mod4 <= 1'b0;
    end
  end*/

  wire [8:0] act_wdth;
  wire [3:0] b0,b1,b2,b3,b4,b5,b6,b7;
  assign b0 = filt_tk[0]?4'h8:4'h0;
  assign b1 = filt_tk[1]?4'h8:4'h0;
  assign b2 = filt_tk[2]?4'h8:4'h0;
  assign b3 = filt_tk[3]?4'h8:4'h0;
  assign b4 = filt_tk[4]?4'h8:4'h0;
  assign b5 = filt_tk[5]?4'h8:4'h0;
  assign b6 = filt_tk[6]?4'h8:4'h0;
  assign b7 = filt_tk[7]?4'h8:4'h0;
  assign act_wdth = b0+b1+b2+b3+b4+b5+b6+b7;
//assign R20_tv = (indx_cntr == 3'h0 & filt_tl_on != 1'b1) ? 1'b1 : 1'b0 ;
always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      resi_wdth <= 8'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      resi_wdth <= 8'h0 ;
    end else if(filt_tv & buff_tr)begin
      if(((buff_tv & reord_tr) | ~buff_tv) & (resi_wdth + act_wdth >= VFB_4PXL_W) ) begin
        resi_wdth <= resi_wdth + act_wdth - VFB_4PXL_W;
      end else begin
        resi_wdth <= resi_wdth + act_wdth ;
      end
    end else if(resi_wdth>=VFB_4PXL_W & buff_tv & reord_tr) begin
      resi_wdth <= resi_wdth  - VFB_4PXL_W;
    end
  end
  assign buff_tr = (resi_wdth < VFB_4PXL_W) &
                   (~buff_tl_i) &
                   (~filt_tl_on); 
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      liv_data <= {AXIS_TDATA_WIDTH{1'b0}};
      null_data <= {AXIS_TDATA_WIDTH{1'b0}};
      cur_data <= {AXIS_TDATA_WIDTH{1'b0}};
      res_data <= {AXIS_TDATA_WIDTH{1'b0}};
     // buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}};
     // liv_tk    <= {(VFB_FIFO_WIDTH/8){1'b0}};
      buff_ts_i <= {SB_WIDTH{1'b0}};
      liv_ts    <= {SB_WIDTH{1'b0}};
   end else begin
      if((buff_tv & reord_tr) & (indx_cntr == 3)) begin
       res_data <= null_data;
      end else if(buff_tv & reord_tr | (~buff_tv)) begin
       res_data <= cur_data ;
      end
      if(filt_tv & buff_tr) begin
        liv_data <= filt_td;
      end
      if((filt_tv & buff_tr) & (resi_wdth + act_wdth < VFB_4PXL_W )) begin
        null_data <= filt_td;
      end
      if(buff_tl & buff_tv & reord_tr) begin
       // liv_tk  <= {(VFB_FIFO_WIDTH/8){1'b0}};
        liv_ts  <= {SB_WIDTH{1'b0}};
      end else if(filt_tv & buff_tr) begin
       // liv_tk   <= filt_tk;
        liv_ts   <= filt_ts;
      end
      if(~buff_tv) begin
        cur_data <= filt_td;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        cur_data <= filt_td;
      end else if(buff_tv & reord_tr) begin
        cur_data <= liv_data;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        //buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}};
        buff_ts_i <= {SB_WIDTH{1'b0}};
      end else if(filt_tv & buff_tr & ~buff_tv) begin
        //buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        //buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(buff_tv & reord_tr) begin
       // buff_tk_i <= liv_tk;
        buff_ts_i <= liv_ts;
      end
    end
  end

always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}};
    end else begin
      if(buff_tv & ~reord_tr) begin
      buff_tk_i <= buff_tk_i;
    end else if(buff_tl & buff_tv & reord_tr) begin
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}};
    end else if(filt_tv & buff_tr & filt_tl & ((~buff_tv)|(buff_tv & reord_tr)) & (((filt_tk[4] == 1'b0) |(filt_te)) & (resi_wdth + act_wdth < VFB_4PXL_W))) begin
      buff_tk_i <= 16'h00FF;
    end else if((filt_tl_on) & (~buff_tl_i) &  (resi_wdth < VFB_4PXL_W)) begin
      buff_tk_i <= 16'h00FF;
    end else begin
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b1}};
    end
  end
end

always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tv_i <= 1'b0;
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tv_i <= buff_tv_i;
    end else if(filt_tv & buff_tr & (resi_wdth + act_wdth >= VFB_4PXL_W)) begin
      buff_tv_i <= 1'b1;
    end else if ((resi_wdth >= VFB_4PXL_W) &
                 (~buff_tl_i)) begin
      buff_tv_i <= 1'b1;
    end else if((resi_wdth <= VFB_4PXL_W)&
                (~buff_tl_i) &
                (filt_tl_on) ) begin
      buff_tv_i <= 1'b1;
    end else if(filt_tv & buff_tr & filt_tl & ((filt_tk[4] == 1'b0) | (filt_tk[7] == 1'b1) | (filt_te) ) ) begin
      buff_tv_i <= 1'b1;
    end else begin
      buff_tv_i <= 1'b0;
    end
  end

/*always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      reord_hlt <= 1'b0;
    end else if ((resi_wdth >= VFB_4PXL_W) &
                 (~buff_tl_i)) begin
      reord_hlt <= 1'b1;
    end else begin
      reord_hlt <= 1'b0;
    end
 end*/
    
  assign buff_tv = buff_tv_i;
  assign buff_td = data_4pxl[indx_cntr];
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_i <= 1'b0;
    end else if(buff_tu_i & buff_tv_i & reord_tr) begin
      buff_tu_i <= 1'b0;
    end else if(filt_tu) begin
      buff_tu_i <= 1'b1;
    end
  end
/*always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_on <= 1'b0;
    end else if(buff_tu_on & buff_tv_i & reord_tr)begin
      buff_tu_on <= 1'b0;
    end else if(buff_tu_i)begin
      buff_tu_on <= 1'b1;
    end
  end*/
always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      filt_tl_on <= 1'b0;
    end else if(filt_tl_on & buff_tv & buff_tl)begin
      filt_tl_on <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr)begin
      filt_tl_on <= 1'b1;
    end
  end


//assign R20_tu = (buff_tu_on)? 1'b1 : 1'b0;
//assign R20_tl = (filt_tl_on)? 1'b1 : 1'b0;
 
 always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tl_i <= 1'b0;
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tl_i <= buff_tl_i;
    end else if(buff_tv & reord_tr & buff_tl_i)begin
      buff_tl_i <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr &
                ((~buff_tv)|(buff_tv & reord_tr))  ) begin
       // if(resi_wdth + act_wdth <= VFB_4PXL_W) begin
        //  buff_tl_i <= 1'b1;end
       // else begin
         buff_tl_i <= (filt_tk[4] == 1'b0) | (filt_tk[7] == 1'b1) | (filt_te) | (resi_wdth + act_wdth == VFB_4PXL_W);
    end else if((resi_wdth <= VFB_4PXL_W)& filt_tl_on ) begin
      buff_tl_i <= 1'b1;
    end
  end
  assign buff_tu =buff_tu_i ;
  assign buff_ts =buff_ts_i ;
  assign buff_tk =buff_tk_i ;
  assign buff_tl =buff_tl_i ;
end
endgenerate //REQ_BUFFER_RAW20

//-----------------------------------------
//********RAW10 buffering logic ***********//
//-----------------------------------------

generate if(VFB_REQ_BUFFER  == 1 && VFB_DATA_TYPE == 6'h2B ) 
                                      begin : REQ_BUFFER_RAW10
wire [AXIS_TDATA_WIDTH-1:0] data_4pxl[7:0];
reg  [AXIS_TDATA_WIDTH-1:0] res_data;
reg  [AXIS_TDATA_WIDTH-1:0] cur_data;
reg  [AXIS_TDATA_WIDTH-1:0] liv_data;

//buffer mappings for RAW10 on 64-bit stream interface
//pattern repeats for every 5*8 bytes received from stream 
// interface
assign data_4pxl[0] = {cur_data[39:0 ],cur_data[39:0] };
assign data_4pxl[1] = {cur_data[15:0 ],res_data[63:40]};
assign data_4pxl[2] = {cur_data[55:55],res_data[55:16]};
assign data_4pxl[3] = {cur_data[31:0 ],res_data[63:56]};
assign data_4pxl[4] = {cur_data[7 :0 ],res_data[63:32]};
assign data_4pxl[5] = {cur_data[47:47],res_data[47:8] };
assign data_4pxl[6] = {cur_data[23:0 ],res_data[63:48]};
assign data_4pxl[7] = {cur_data[0 :0 ],res_data[63:24]};

reg [(AXIS_TDATA_WIDTH/8)-1:0]   filt_tk_d;
reg [(VFB_FIFO_WIDTH/8)-1:0] buff_tk_i;

reg [2:0]                    indx_cntr;
reg                          buff_tv_i;
reg                          buff_tu_i;
reg [SB_WIDTH-1:0]           buff_ts_i;
reg [SB_WIDTH-1:0]           liv_ts;
reg [(VFB_FIFO_WIDTH/8)-1:0] liv_tk;
reg                          buff_tl_i;
reg        filt_tl_on;
reg  [7:0] resi_wdth;
  //keep track to select the buffer combinations 
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      indx_cntr <= 3'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      indx_cntr <= 3'h0 ;
    end else if(buff_tv & reord_tr) begin
      indx_cntr <= indx_cntr + 3'h1;
    end 
  end
  //update residual data width available.Accept data from stream interface
  // if the current residual data is not enough to form the complete pixels
  wire [7:0] act_wdth;
  wire [3:0] b0,b1,b2,b3,b4,b5,b6,b7;
  assign b0 = filt_tk[0]?4'h8:4'h0;
  assign b1 = filt_tk[1]?4'h8:4'h0;
  assign b2 = filt_tk[2]?4'h8:4'h0;
  assign b3 = filt_tk[3]?4'h8:4'h0;
  assign b4 = filt_tk[4]?4'h8:4'h0;
  assign b5 = filt_tk[5]?4'h8:4'h0;
  assign b6 = filt_tk[6]?4'h8:4'h0;
  assign b7 = filt_tk[7]?4'h8:4'h0;
  assign act_wdth = b0+b1+b2+b3+
                    b4+b5+b6+b7;
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      resi_wdth <= 8'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      resi_wdth <= 8'h0 ;
    end else if(filt_tv & buff_tr)begin
      if((buff_tv & reord_tr)| ~buff_tv) begin
        resi_wdth <= resi_wdth + act_wdth - VFB_4PXL_W;
      end else begin
        resi_wdth <= resi_wdth + act_wdth ;
      end
    end else if(resi_wdth>=VFB_4PXL_W & buff_tv & reord_tr) begin
      resi_wdth <= resi_wdth  - VFB_4PXL_W;
    end 
  end
  assign buff_tr = (resi_wdth < VFB_4PXL_W) &
                   (~buff_tl_i) &
                   (~filt_tl_on); //for cleaning up resi.width at eol
  //latch data received on stream interface.
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      liv_data <= {AXIS_TDATA_WIDTH{1'b0}};
      cur_data <= {AXIS_TDATA_WIDTH{1'b0}};
      res_data <= {AXIS_TDATA_WIDTH{1'b0}};
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      liv_tk    <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      buff_ts_i <= {SB_WIDTH{1'b0}}; 
      liv_ts    <= {SB_WIDTH{1'b0}}; 
    end else begin
      if(buff_tv & reord_tr) begin
        res_data <= cur_data;
      end
      if(filt_tv & buff_tr) begin
        liv_data <= filt_td;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        liv_tk  <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        liv_ts  <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr) begin
        liv_tk   <= filt_tk;
        liv_ts   <= filt_ts;
      end
      if(~buff_tv) begin
        cur_data <= filt_td;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        cur_data <= filt_td;
      end else if(buff_tv & reord_tr) begin
        cur_data <= liv_data;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        buff_ts_i <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr & ~buff_tv) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(buff_tv & reord_tr) begin
        buff_tk_i <= liv_tk;
        buff_ts_i <= liv_ts;
      end
    end 
  end
  //pump to next logic(reorder) once the complete pixel information available
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tv_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tv_i <= buff_tv_i;
    end else if(filt_tv & buff_tr) begin
      buff_tv_i <= 1'b1; 
    end else if ((resi_wdth >= VFB_4PXL_W) & 
                 (~buff_tl_i)) begin
      buff_tv_i <= 1'b1; 
    end else if((resi_wdth <= VFB_4PXL_W)& 
                (~buff_tl_i) &
                (filt_tl_on) ) begin 
      buff_tv_i <= 1'b1; 
    end else begin
      buff_tv_i <= 1'b0; 
    end
  end
  assign buff_tv = buff_tv_i;
  assign buff_td = data_4pxl[indx_cntr];
  //side band signal generation
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_i <= 1'b0; 
    end else if(buff_tu_i & buff_tv_i & reord_tr) begin
      buff_tu_i <= 1'b0; 
    end else if(filt_tu) begin
      buff_tu_i <= 1'b1; 
    end
  end
  //latch tl on filt & reset once passed to buff
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      filt_tl_on <= 1'b0;
    end else if(filt_tl_on & buff_tv & buff_tl)begin
      filt_tl_on <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr)begin
      filt_tl_on <= 1'b1;
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tl_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tl_i <= buff_tl_i;
    end else if(buff_tv&reord_tr & buff_tl_i)begin
      buff_tl_i <= 1'b0; 
    end else if(filt_tv & filt_tl & buff_tr & 
                ((~buff_tv)|(buff_tv & reord_tr))  ) begin 
      buff_tl_i <= (filt_tk[5] == 1'b0) |(filt_te); 
    end else if((resi_wdth <= VFB_4PXL_W)& filt_tl_on ) begin 
      buff_tl_i <= 1'b1; 
    end 
  end
  assign buff_tu =buff_tu_i ; 
  assign buff_ts =buff_ts_i ; 
  assign buff_tk =buff_tk_i ; 
  assign buff_tl =buff_tl_i ;
  
end
endgenerate //REQ_BUFFER_RAW10
//-----------------------------------------
//********RAW12 buffering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_BUFFER  == 1 && VFB_DATA_TYPE == 6'h2C ) 
                                      begin : REQ_BUFFER_RAW12
wire [AXIS_TDATA_WIDTH-1:0] data_4pxl[3:0];
reg  [AXIS_TDATA_WIDTH-1:0] res_data;
reg  [AXIS_TDATA_WIDTH-1:0] cur_data;
reg  [AXIS_TDATA_WIDTH-1:0] liv_data;

//buffer mappings for RAW12 on 64-bit stream interface
//pattern repeats for every 3*8 bytes received from stream 
// interface
assign data_4pxl[0] = {cur_data[47:0],cur_data[47:0] };
assign data_4pxl[1] = {cur_data[31:0],res_data[63:48]};
assign data_4pxl[2] = {cur_data[15:0],res_data[63:32]};
assign data_4pxl[3] = {cur_data[0:0 ],res_data[63:16]};

reg [1:0]                    indx_cntr;
reg                          buff_tv_i;
reg                          buff_tu_i;
reg [SB_WIDTH-1:0]                      buff_ts_i;
reg [SB_WIDTH-1:0]                      liv_ts;
reg [(VFB_FIFO_WIDTH/8)-1:0] buff_tk_i;
reg [(VFB_FIFO_WIDTH/8)-1:0] liv_tk;
reg                          buff_tl_i;

reg  [7:0] resi_wdth;
reg        filt_tl_on;
wire       tl_cur;
  //keep track to select the buffer combinations 
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      indx_cntr <= 2'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      indx_cntr <= 2'h0 ;
    end else if(buff_tv & reord_tr ) begin
      indx_cntr <= indx_cntr + 2'h1;
    end 
  end
  //update residual data width available.Accept data from stream interface
  // if the current residual data is not enough to form the complete pixels
  wire [7:0] act_wdth;
  wire [3:0] b0,b1,b2,b3,b4,b5,b6,b7;
  assign b0 = filt_tk[0]?4'h8:4'h0;
  assign b1 = filt_tk[1]?4'h8:4'h0;
  assign b2 = filt_tk[2]?4'h8:4'h0;
  assign b3 = filt_tk[3]?4'h8:4'h0;
  assign b4 = filt_tk[4]?4'h8:4'h0;
  assign b5 = filt_tk[5]?4'h8:4'h0;
  assign b6 = filt_tk[6]?4'h8:4'h0;
  assign b7 = filt_tk[7]?4'h8:4'h0;
  assign act_wdth = b0+b1+b2+b3+
                    b4+b5+b6+b7;
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      resi_wdth <= 8'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      resi_wdth <= 8'h0 ;
    end else if(filt_tv & buff_tr)begin
      if((buff_tv & reord_tr)| ~buff_tv) begin
        resi_wdth <= resi_wdth + act_wdth - VFB_4PXL_W;
      end else begin
        resi_wdth <= resi_wdth + act_wdth ;
      end
    end else if(resi_wdth>=VFB_4PXL_W & buff_tv & reord_tr) begin
      resi_wdth <= resi_wdth  - VFB_4PXL_W;
    end 
  end
  assign buff_tr = (resi_wdth < VFB_4PXL_W) &
                   (~buff_tl_i) &
                   (~filt_tl_on); //for cleaning up resi.width at eol
  //latch data received on stream interface.
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      liv_data  <= {AXIS_TDATA_WIDTH{1'b0}}  ;
      cur_data  <= {AXIS_TDATA_WIDTH{1'b0}}  ;
      res_data  <= {AXIS_TDATA_WIDTH{1'b0}}  ;
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      liv_tk    <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      buff_ts_i <= {SB_WIDTH{1'b0}}; 
      liv_ts    <= {SB_WIDTH{1'b0}}; 
    end else begin
      if(buff_tv & reord_tr) begin
        res_data <= cur_data;
      end
      if(filt_tv & buff_tr) begin
        liv_data <= filt_td;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        liv_tk  <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        liv_tk  <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr) begin
        liv_tk   <= filt_tk;
        liv_ts   <= filt_ts;
      end
      if(~buff_tv) begin
        cur_data <= filt_td;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        cur_data <= filt_td;
      end else if(buff_tv & reord_tr) begin
        cur_data <= liv_data;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        buff_ts_i <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr & ~buff_tv) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(buff_tv & reord_tr) begin
        buff_tk_i <= liv_tk;
        buff_ts_i <= liv_ts;
      end
    end 
  end
  //pump to next logic(reorder) once the complete pixel information available
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tv_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tv_i <= buff_tv_i;
    end else if(filt_tv & buff_tr) begin
      buff_tv_i <= 1'b1; 
    end else if ((resi_wdth >= VFB_4PXL_W) & 
                 (~buff_tl_i)) begin
      buff_tv_i <= 1'b1; 
    end else if ((resi_wdth >= VFB_4PXL_W/2) & //min 2pxls at last write
                 (~buff_tl_i) &
                 (filt_tl_on)) begin
      buff_tv_i <= 1'b1; 
    end else if ((resi_wdth <= VFB_4PXL_W) & //error cases where length corrupted due to ecc.
                 (~buff_tl_i) &
                 (filt_tl_on)) begin
      buff_tv_i <= 1'b1; 
    end else begin
      buff_tv_i <= 1'b0; 
    end
  end
  assign buff_tv = buff_tv_i;
  assign buff_td = data_4pxl[indx_cntr];
  //side band signal generation
  // check last beat has another full pixel info
  assign tl_cur =(filt_tk == 8'h07 | 
                  filt_tk == 8'h3F |
                  filt_tk == 8'h01 |
                  filt_tk == 8'h0F |
                  filt_tk == 8'h03 ) & filt_tl & filt_tv;
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_i <= 1'b0; 
    end else if(buff_tu_i & buff_tv_i & reord_tr) begin
      buff_tu_i <= 1'b0; 
    end else if(filt_tu) begin
      buff_tu_i <= 1'b1; 
    end
  end
  //latch tl on filt & reset once passed to buff
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      filt_tl_on <= 1'b0;
    end else if(filt_tl_on & buff_tv & buff_tl)begin
      filt_tl_on <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr)begin
      filt_tl_on <= 1'b1;
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tl_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tl_i <= buff_tl_i;
    end else if(buff_tv&reord_tr & buff_tl_i)begin
      buff_tl_i <= 1'b0; 
    end else if(filt_tv & filt_tl & buff_tr & 
                ((~buff_tv)|(buff_tv & reord_tr))  ) begin
      buff_tl_i <= (tl_cur |filt_te);
    end else if((resi_wdth <= VFB_4PXL_W)& filt_tl_on ) begin 
      buff_tl_i <= 1'b1;
    end 
  end
  assign buff_tu =buff_tu_i ; 
  assign buff_ts =buff_ts_i ; 
  assign buff_tk =buff_tk_i ; 
  assign buff_tl =buff_tl_i ; 
  
end
endgenerate //REQ_BUFFER_RAW12
//-----------------------------------------
//********RAW14 buffering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_BUFFER  == 1 && VFB_DATA_TYPE == 6'h2D ) 
                                      begin : REQ_BUFFER_RAW14
wire [AXIS_TDATA_WIDTH-1:0] data_4pxl[7:0];
reg  [AXIS_TDATA_WIDTH-1:0] res_data;
reg  [AXIS_TDATA_WIDTH-1:0] cur_data;
reg  [AXIS_TDATA_WIDTH-1:0] liv_data;

//buffer mappings for RAW14 on 64-bit stream interface
//pattern repeats for every 7*8 bytes received from stream 
// interface
assign data_4pxl[0] = {cur_data[55:0],cur_data[55:0] };
assign data_4pxl[1] = {cur_data[47:0],res_data[63:56]};
assign data_4pxl[2] = {cur_data[39:0],res_data[63:48]};
assign data_4pxl[3] = {cur_data[31:0],res_data[63:40]};
assign data_4pxl[4] = {cur_data[23:0],res_data[63:32]};
assign data_4pxl[5] = {cur_data[15:0],res_data[63:24]};
assign data_4pxl[6] = {cur_data[7:0 ],res_data[63:16]};
assign data_4pxl[7] = {cur_data[0:0 ],res_data[63:8]};


reg [2:0]                    indx_cntr;
reg                          buff_tv_i;
reg                          buff_tu_i;
reg [SB_WIDTH-1:0]                      buff_ts_i;
reg [SB_WIDTH-1:0]                      liv_ts;
reg [(VFB_FIFO_WIDTH/8)-1:0] buff_tk_i;
reg [(VFB_FIFO_WIDTH/8)-1:0] liv_tk;
reg                          buff_tl_i;

reg  [7:0] resi_wdth;
  reg filt_tl_on;
  //keep track to select the buffer combinations 
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      indx_cntr <= 3'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      indx_cntr <= 3'h0 ;
    end else if(buff_tv & reord_tr) begin
      indx_cntr <= indx_cntr + 3'h1;
    end 
  end
  //update residual data width available.Accept data from stream interface
  // if the current residual data is not enough to form the complete pixels
  wire [7:0] act_wdth;
  wire [3:0] b0,b1,b2,b3,b4,b5,b6,b7;
  assign b0 = filt_tk[0]?4'h8:4'h0;
  assign b1 = filt_tk[1]?4'h8:4'h0;
  assign b2 = filt_tk[2]?4'h8:4'h0;
  assign b3 = filt_tk[3]?4'h8:4'h0;
  assign b4 = filt_tk[4]?4'h8:4'h0;
  assign b5 = filt_tk[5]?4'h8:4'h0;
  assign b6 = filt_tk[6]?4'h8:4'h0;
  assign b7 = filt_tk[7]?4'h8:4'h0;
  assign act_wdth = b0+b1+b2+b3+
                    b4+b5+b6+b7;
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      resi_wdth <= 8'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      resi_wdth <= 8'h0 ;
    end else if(filt_tv & buff_tr)begin
      if((buff_tv & reord_tr)| ~buff_tv) begin
        resi_wdth <= resi_wdth + act_wdth - VFB_4PXL_W;
      end else begin
        resi_wdth <= resi_wdth + act_wdth ;
      end
    end else if(resi_wdth>=VFB_4PXL_W & buff_tv & reord_tr) begin
      resi_wdth <= resi_wdth  - VFB_4PXL_W;
    end 
  end
  assign buff_tr = (resi_wdth < VFB_4PXL_W) &
                   (~buff_tl_i) &
                   (~filt_tl_on); //for cleaning up resi.width at eol
  //latch data received on stream interface.
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      liv_data  <= {AXIS_TDATA_WIDTH{1'b0}}  ;
      cur_data  <= {AXIS_TDATA_WIDTH{1'b0}}  ;
      res_data  <= {AXIS_TDATA_WIDTH{1'b0}}  ;
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      liv_tk    <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      buff_tk_i <= {SB_WIDTH{1'b0}}; 
      liv_tk    <= {SB_WIDTH{1'b0}}; 
    end else begin
      if(buff_tv & reord_tr) begin
        res_data <= cur_data;
      end
      if(filt_tv & buff_tr) begin
        liv_data <= filt_td;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        liv_tk  <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        liv_ts  <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr) begin
        liv_tk   <= filt_tk;
        liv_ts   <= filt_ts;
      end
      if(~buff_tv) begin
        cur_data <= filt_td;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        cur_data <= filt_td;
      end else if(buff_tv & reord_tr) begin
        cur_data <= liv_data;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        buff_ts_i <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr & ~buff_tv) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(buff_tv & reord_tr) begin
        buff_tk_i <= liv_tk;
        buff_ts_i <= liv_ts;
      end
    end 
  end
  //pump to next logic(reorder) once the complete pixel information available
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tv_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tv_i <= buff_tv_i;
    end else if(filt_tv & buff_tr) begin
      buff_tv_i <= 1'b1; 
    end else if ((resi_wdth >= VFB_4PXL_W) & 
                 (~buff_tl_i)) begin
      buff_tv_i <= 1'b1; 
    end else begin
      buff_tv_i <= 1'b0; 
    end
  end
  assign buff_tv = buff_tv_i;
  assign buff_td = data_4pxl[indx_cntr];
  //side band signal generation
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_i <= 1'b0; 
    end else if(buff_tu_i & buff_tv_i & reord_tr) begin
      buff_tu_i <= 1'b0; 
    end else if(filt_tu) begin
      buff_tu_i <= 1'b1; 
    end
  end
  //latch tl on filt & reset once passed to buff
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      filt_tl_on <= 1'b0;
    end else if(filt_tl_on & buff_tv & buff_tl)begin
      filt_tl_on <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr)begin
      filt_tl_on <= 1'b1;
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tl_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tl_i <= buff_tl_i;
    end else if(buff_tv&reord_tr & buff_tl_i)begin
      buff_tl_i <= 1'b0; 
    end else if(filt_tv & filt_tl & buff_tr & 
                ((~buff_tv)|(buff_tv & reord_tr))  ) begin
      buff_tl_i <= (filt_tk[7] == 1'b0)|(filt_te); 
    end else if((resi_wdth <= VFB_4PXL_W)& filt_tl_on ) begin
      buff_tl_i <= 1'b1;
    end 
  end
  assign buff_tu =buff_tu_i ; 
  assign buff_ts =buff_ts_i ; 
  assign buff_tk =buff_tk_i ; 
  assign buff_tl =buff_tl_i ; 
  
end
endgenerate //REQ_BUFFER_RAW14
//-----------------------------------------
//********RGB888 buffering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_BUFFER  == 1 && VFB_DATA_TYPE == 6'h24 )
                                            begin : REQ_BUFFER_RGB888
reg  [AXIS_TDATA_WIDTH-1:0] cur_data;


reg                            filt_tl_d;
reg                            filt_tv_d;
reg                            filt_tu_d;
reg                            indx_cntr;
reg                            buff_tv_i;
reg                            buff_tu_i;
reg [SB_WIDTH-1:0]                      buff_ts_i;
reg [SB_WIDTH-1:0]                      liv_ts;
reg [(VFB_FIFO_WIDTH/8)-1:0]   liv_tk;
reg [(VFB_FIFO_WIDTH/8)-1:0]   buff_tk_i;
reg                            buff_tl_i;
reg filt_tl_on;

reg  [7:0] resi_wdth;
wire tl_nxt;
wire tl_cur;
wire filt_wc_03_06;
  //keep track to select the buffer combinations 
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      indx_cntr <= 1'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      indx_cntr <= 1'h0 ;
    end else if(buff_tv & reord_tr) begin
      indx_cntr <= indx_cntr + 1'h1;
    end 
  end
  wire [7:0] act_wdth;
  wire [3:0] b0,b1,b2,b3,b4,b5,b6,b7;
  assign b0 = {filt_tk[0],3'b000};
  assign b1 = {filt_tk[1],3'b000};
  assign b2 = {filt_tk[2],3'b000};
  assign b3 = {filt_tk[3],3'b000};
  assign b4 = {filt_tk[4],3'b000};
  assign b5 = {filt_tk[5],3'b000};
  assign b6 = {filt_tk[6],3'b000};
  assign b7 = {filt_tk[7],3'b000};
  //assign act_wdth = b0+b1+b2+b3+
  //                  b4+b5+b6+b7;
  //assign act_wdth = filt_tl?5'd64:indx_cntr;
  assign act_wdth = byt_sum;
  wire buff_launch;
  assign buff_launch = (buff_tv & reord_tr)|(~buff_tv);
  wire buff_pend;
  assign buff_pend = (buff_tv & ~reord_tr);
  reg blk_filt;
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      blk_filt <= 1'b0;
    end else if(blk_filt & buff_tv & reord_tr)begin
      blk_filt <= 1'b0;
    end else if(buff_pend & filt_tv & buff_tr) begin
      blk_filt <= 1'b1;
    end
  end  
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      resi_wdth <= 8'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      resi_wdth <= 8'h0 ;
    end else if(filt_tv & buff_tr) begin
      if((resi_wdth+act_wdth >= VFB_4PXL_W) & 
          buff_launch) begin
        resi_wdth <= resi_wdth +act_wdth-VFB_4PXL_W;
      end else begin
        resi_wdth <= resi_wdth +act_wdth;
      end
    end else if(resi_wdth>=VFB_4PXL_W & 
                ((buff_tv & reord_tr)| ~buff_tv)
               ) begin
      resi_wdth <= resi_wdth  - VFB_4PXL_W;
    end 
  end
  assign buff_tr = (resi_wdth < VFB_4PXL_W) &
                   (~buff_tv |(buff_tv&reord_tr)) &
                   (~buff_tl_i) &
                   (~filt_tl_on); //for cleaning up resi.width at eol
  //latch data received on stream interface.
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      cur_data <= {AXIS_TDATA_WIDTH{1'b0}};
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      liv_tk    <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
      buff_ts_i <= {SB_WIDTH{1'b0}}; 
      liv_ts    <= {SB_WIDTH{1'b0}}; 
    end else begin
      if(filt_tv & buff_tr) begin
        cur_data <= filt_td;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        liv_tk  <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        liv_ts  <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr) begin
        liv_tk   <= filt_tk;
        liv_ts   <= filt_ts;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b0}}; 
        buff_ts_i <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr & ~buff_tv) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        buff_tk_i <= filt_tk;
        buff_ts_i <= filt_ts;
      end else if(buff_tv & reord_tr) begin
        buff_tk_i <= liv_tk;
        buff_ts_i <= liv_ts;
      end
    end 
  end
  //pump to next logic(reorder) once the complete pixel information available
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tv_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tv_i <= buff_tv_i;
    end else if(filt_tv & buff_tr) begin
      if(resi_wdth + act_wdth >= VFB_4PXL_W) begin
        buff_tv_i <= 1'b1;
      end else if((resi_wdth + act_wdth >= VFB_4PXL_W/4)&
                  (filt_tl & filt_tk != 8'h7F)) begin
        buff_tv_i <= 1'b1;
      end else begin
        buff_tv_i <= 1'b0;
      end
    end else if ((resi_wdth >= VFB_4PXL_W) & 
                 (~buff_tl_i)) begin
      buff_tv_i <= 1'b1; 
    end else if ((resi_wdth >= VFB_4PXL_W/4) & //min 1pxls at last write
                 (~buff_tl_i) &
                 (filt_tl_on)) begin
      buff_tv_i <= 1'b1; 
    end else begin
      buff_tv_i <= 1'b0; 
    end
  end
  assign buff_tv = buff_tv_i;
  
  reg [VFB_FIFO_WIDTH-1:0] buff_td_i[1:0];
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_td_i[0] <= {VFB_FIFO_WIDTH{1'b0}}; 
      buff_td_i[1] <= {VFB_FIFO_WIDTH{1'b0}}; 
    end else if(buff_tv_i & ~reord_tr)begin
      buff_td_i[0] <= buff_td_i[0];
      buff_td_i[1] <= buff_td_i[1];
    end else if(filt_tv & filt_tl & buff_tr &
         (filt_tk == 8'h07 | filt_tk == 8'h3F) &
         (~buff_tv |(buff_tv & reord_tr))) begin
      buff_td_i[0]<= {filt_td[31:0],filt_td[63:0] };
    end else begin
      buff_td_i[0]<= {filt_td[31:0],cur_data[63:0] };
      buff_td_i[1]<= {filt_td[63:0],cur_data[63:32] };
    end
  end
  assign buff_td = buff_td_i[indx_cntr];
  //side band signal generation
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_i <= 1'b0; 
    end else if(buff_tu_i & buff_tv_i & reord_tr) begin
      buff_tu_i <= 1'b0; 
    end else if(filt_tu) begin
      buff_tu_i <= 1'b1; 
    end
  end
  //latch tl on filt & reset once passed to buff
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      filt_tl_on <= 1'b0;
    end else if(filt_tl_on & buff_tv & buff_tl)begin
      filt_tl_on <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr)begin
      filt_tl_on <= 1'b1;
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tl_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tl_i <= buff_tl_i;
    end else if(buff_tv&reord_tr & buff_tl_i)begin
      buff_tl_i <= 1'b0; 
    end else if(filt_tv & buff_tr) begin
      if((resi_wdth + act_wdth >= VFB_4PXL_W/4)&
                  (filt_tl & ((filt_tk != 8'h7F)|filt_te))) begin
        buff_tl_i <= 1'b1;
      end
    end else if((resi_wdth <= VFB_4PXL_W)& filt_tl_on ) begin
      buff_tl_i <= 1'b1; 
    end 
  end
  assign buff_tu =buff_tu_i ; 
  assign buff_ts =buff_ts_i ; 
  assign buff_tk =buff_tk_i ; 
  assign buff_tl =buff_tl_i ; 
end
endgenerate
//-----------------------------------------
//********RGB666 buffering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_BUFFER  == 1 && VFB_DATA_TYPE == 6'h23 )
                                            begin : REQ_BUFFER_RGB666
reg  [AXIS_TDATA_WIDTH-1:0] cur_data;

reg [2:0]                      indx_cntr;
reg                            buff_tv_i;
reg                            buff_tu_i;
reg [SB_WIDTH-1:0]                      buff_ts_i;
reg [SB_WIDTH-1:0]                      liv_ts;
reg [(VFB_FIFO_WIDTH/8)-1:0]   buff_tk_i;
reg                            buff_tl_i;

reg  [7:0] resi_wdth;
reg        filt_tl_on;
  //keep track to select the buffer combinations 
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      indx_cntr <= 3'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      indx_cntr <= 3'h0 ;
    end else if(buff_tv & reord_tr) begin
      indx_cntr <= indx_cntr + 3'h1;
    end 
  end
  //update residual data width available.Accept data from stream interface
  // if the current residual data is not enough to form the complete pixels
  wire [7:0] act_wdth;
  //wire [4:0] act_wdth;
  wire [3:0] b0,b1,b2,b3,b4,b5,b6,b7;
  //assign b0 = filt_tk[0]?4'h8:4'h0;
  //assign b1 = filt_tk[1]?4'h8:4'h0;
  //assign b2 = filt_tk[2]?4'h8:4'h0;
  //assign b3 = filt_tk[3]?4'h8:4'h0;
  //assign b4 = filt_tk[4]?4'h8:4'h0;
  //assign b5 = filt_tk[5]?4'h8:4'h0;
  //assign b6 = filt_tk[6]?4'h8:4'h0;
  //assign b7 = filt_tk[7]?4'h8:4'h0;
  assign b0 = {filt_tk[0],3'b000};
  assign b1 = {filt_tk[1],3'b000};
  assign b2 = {filt_tk[2],3'b000};
  assign b3 = {filt_tk[3],3'b000};
  assign b4 = {filt_tk[4],3'b000};
  assign b5 = {filt_tk[5],3'b000};
  assign b6 = {filt_tk[6],3'b000};
  assign b7 = {filt_tk[7],3'b000};
  //assign act_wdth = b0+b1+b2+b3+
  //                  b4+b5+b6+b7;
  //assign act_wdth = filt_tl?5'd64:indx_cntr;
  assign act_wdth = byt_sum;
  wire buff_launch;
  assign buff_launch = (buff_tv & reord_tr)|(~buff_tv);
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      resi_wdth <= 8'h0 ;
    end else if(buff_tv & reord_tr & buff_tl)begin
      resi_wdth <= 8'h0 ;
    end else if(filt_tv & buff_tr) begin
      if((resi_wdth+act_wdth >= VFB_4PXL_W) & 
          buff_launch) begin
        resi_wdth <= resi_wdth +act_wdth-VFB_4PXL_W;
      end else begin
        resi_wdth <= resi_wdth +act_wdth;
      end
    end else if(resi_wdth>=VFB_4PXL_W & 
                ((buff_tv & reord_tr)| ~buff_tv)
               ) begin
      resi_wdth <= resi_wdth  - VFB_4PXL_W;
    end 
  end
  assign buff_tr = (resi_wdth < VFB_4PXL_W) &
                   (~buff_tv |(buff_tv&reord_tr)) &
                   (~buff_tl_i) &
                   (~filt_tl_on); //for cleaning up resi.width at eol
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tu_i <= 1'b0; 
    end else if(buff_tu_i & buff_tv_i & reord_tr) begin
      buff_tu_i <= 1'b0; 
    end else if(filt_tu) begin
      buff_tu_i <= 1'b1; 
    end
  end
  //latch tl on filt & reset once passed to buff
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      filt_tl_on <= 1'b0;
    end else if(filt_tl_on & buff_tv & buff_tl)begin
      filt_tl_on <= 1'b0;
    end else if(filt_tv & filt_tl & buff_tr)begin
      filt_tl_on <= 1'b1;
    end
  end
  //latch data received on stream interface.
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      cur_data <= {AXIS_TDATA_WIDTH{1'b0}};
    end else begin
      if(filt_tv & buff_tr) begin
        cur_data <= filt_td;
      end
    end 
  end
  //pump to next logic(reorder) once the complete pixel information available
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tv_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin
      buff_tv_i <= buff_tv_i;
    end else if(filt_tv & buff_tr) begin 
      if(resi_wdth + act_wdth >= VFB_4PXL_W) begin
        buff_tv_i <= 1'b1; 
      end else begin
        buff_tv_i <= 1'b0;
      end
    end else if ((resi_wdth >= VFB_4PXL_W) & 
                 (~buff_tl_i)) begin
      buff_tv_i <= 1'b1; 
    end else begin
      buff_tv_i <= 1'b0; 
    end
  end
  assign buff_tv = buff_tv_i;
  reg [VFB_FIFO_WIDTH-1:0] buff_td_i[7:0];
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_td_i[0] <= {VFB_FIFO_WIDTH{1'b0}}; 
      buff_td_i[1] <= {VFB_FIFO_WIDTH{1'b0}}; 
    end else if(buff_tv_i & ~reord_tr)begin
      //no change
    end else begin
       buff_td_i[0] <= {filt_td[7:0] ,cur_data[63:0 ]};
       buff_td_i[1] <= {filt_td[15:0],cur_data[63:8 ]};
       buff_td_i[2] <= {filt_td[23:0],cur_data[63:16]};
       buff_td_i[3] <= {filt_td[31:0],cur_data[63:24]};
       buff_td_i[4] <= {filt_td[39:0],cur_data[63:32]};
       buff_td_i[5] <= {filt_td[47:0],cur_data[63:40]};
       buff_td_i[6] <= {filt_td[55:0],cur_data[63:48]};
       buff_td_i[7] <= {filt_td[63:0],cur_data[63:56]};
    end
  end
  assign buff_td = buff_td_i[indx_cntr];
  //side band signal generation
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_ts_i <= {SB_WIDTH{1'b0}}; 
      liv_ts    <= {SB_WIDTH{1'b0}}; 
    end else begin
      if(buff_tl & buff_tv & reord_tr) begin
        liv_ts  <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr) begin
        liv_ts   <= filt_ts;
      end
      if(buff_tl & buff_tv & reord_tr) begin
        buff_ts_i <= {SB_WIDTH{1'b0}}; 
      end else if(filt_tv & buff_tr & ~buff_tv) begin
        buff_ts_i <= filt_ts;
      end else if(filt_tv & buff_tr & buff_tv & reord_tr  ) begin
        buff_ts_i <= filt_ts;
      end else if(buff_tv & reord_tr) begin
        buff_ts_i <= liv_ts;
      end
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_tk_i <= {(VFB_FIFO_WIDTH/8){1'b1}};//all 4pixels are valid 
      buff_tl_i <= 1'b0; 
    end else if(buff_tv_i & ~reord_tr) begin 
      buff_tl_i <= buff_tl_i; 
    end else if(buff_tv_i & reord_tr & buff_tl_i) begin 
      buff_tl_i <= 1'b0; 
    end else if(filt_tv & filt_tl & buff_tr & 
                ((~buff_tv)|(buff_tv & reord_tr))  ) begin
      buff_tl_i <= 1'b1;
    end else if((resi_wdth <= VFB_4PXL_W)& filt_tl_on ) begin 
      buff_tl_i <= 1'b1; 
    end 
  end
  assign buff_tu =buff_tu_i ; 
  assign buff_ts =buff_ts_i ; 
  assign buff_tk =buff_tk_i ; 
  assign buff_tl =buff_tl_i ; 
  
end
endgenerate
//REQ_REORDER logic not required.Bypass reordering 
generate if(VFB_REQ_REORDER  == 0 ) begin : REQ_REORDER_0
 assign reord_tv = buff_tv;
 assign reord_td = buff_td;
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = buff_tk;
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;
end
endgenerate
//-----------------------------------------
//********RAW6 reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h28 ) 
                                           begin : REQ_REORDER_RAW6
 assign reord_tv = buff_tv;
 //reorder/combine pixels to form complete pixel information.
 //NOTE:Pixels can be tightly packed and then align to byte boundary,but with
 //that sending TKEEP info will be a problem.So alignment to byte boundary is
 //done before packing of 4 pixels per row.
 //
 assign reord_td = {2'h0,buff_td[23:18] , 
                    2'h0,buff_td[17:12] ,
                    2'h0,buff_td[11:6]  , 
                    2'h0,buff_td[5:0]   };
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = {VFB_FIFO_WIDTH{1'b1}}; //Always sending 4pixels for RAW6.
           //As per CSI spec 11.4.1 length of each packet must be a multiple
           //of 4 pixels.so TKEEP is expected to be all 1's when 4 pixels are
           //packed together.
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate
//-----------------------------------------
//********RAW7 reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h29 ) 
                                            begin : REQ_REORDER_RAW7
 assign reord_tv = buff_tv;
 //reorder/combine pixels to form complete pixel information.
 //NOTE:Pixels can be tightly packed and then align to byte boundary,but with
 //that sending TKEEP info will be a problem.So alignment to byte boundary is
 //done before packing of 4 pixels per row.
 //
 assign reord_td = {1'h0,buff_td[27:21] , 
                    1'h0,buff_td[20:14] ,
                    1'h0,buff_td[13:7]  , 
                    1'h0,buff_td[6:0]   };
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = {VFB_FIFO_WIDTH{1'b1}}; //Always sending 4pixels for RAW7.
           //As per CSI spec 11.4.2 length of each packet must be a multiple
           //of 4 pixels.so TKEEP is expected to be all 1's when 4 pixels are
           //packed together.
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate
//-----------------------------------------
//********RAW10 reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h2B ) 
                                           begin : REQ_REORDER_RAW10
 assign reord_tv = buff_tv;
 //reorder/combine pixels to form complete pixel information.
 //NOTE:Pixels can be tightly packed and then align to byte boundary,but with
 //that sending TKEEP info will be a problem.So alignment to byte boundary is
 //done before packing of 4 pixels per row.
 //
 assign reord_td = {6'h0,buff_td[31:24],buff_td[39:38] , 
                    6'h0,buff_td[23:16],buff_td[37:36] ,
                    6'h0,buff_td[15:8] ,buff_td[35:34] , 
                    6'h0,buff_td[7:0]  ,buff_td[33:32] };
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = {VFB_FIFO_WIDTH{1'b1}}; //Always sending 4pixels for RAW10.
           //As per CSI spec 11.4.4 length of each packet must be a multiple
           //of 4 pixels.so TKEEP is expected to be all 1's when 4 pixels are
           //packed together.
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate

//-----------------------------------------
//********RAW16 reordering logic ***********//
//-----------------------------------------

generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h2E )
                                           begin : REQ_REORDER_RAW16
 assign reord_tv = buff_tv;
 assign reord_td = {buff_td[55:48],buff_td[63:56] ,
                    buff_td[39:32],buff_td[47:40] ,
                    buff_td[23:16],buff_td[31:24] ,
                    buff_td[7:0]  ,buff_td[15:8] };
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = buff_tk;
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate

//-----------------------------------------
//********RAW20 reordering logic ***********//
//-----------------------------------------

generate if(VFB_REQ_REORDER  == 1 && (VFB_DATA_TYPE == 6'h2F || VFB_DATA_TYPE == 6'h1F) )
                                           begin : REQ_REORDER_RAW20_YUV422_10B
 assign reord_tv = buff_tv;
 assign reord_td = {12'h0,buff_td[63:56],buff_td[77:76],buff_td[71:64],buff_td[79:78] ,
                    12'h0,buff_td[47:40],buff_td[73:72],buff_td[55:48],buff_td[75:74] ,
                    12'h0,buff_td[23:16],buff_td[37:36],buff_td[31:24],buff_td[39:38] ,
                    12'h0,buff_td[7:0],buff_td[33:32],buff_td[15:8],buff_td[35:34]};
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 /*g [(VFB_FIFO_WIDTH/8)-1:0]   tk_partial_i;
 always @(*) begin
   if(buff_tk == 8'h07 || buff_tk == 8'h7F) begin //1,5 pixel
     tk_partial_i = 16'h000F;
   end else if(buff_tk == 8'h3F || buff_tk == 8'h03) begin
     tk_partial_i = 16'h00FF; //2,6 pixels
   end else if(buff_tk == 8'h01 || buff_tk == 8'h1F) begin 
     tk_partial_i = 16'h0FFF; //3,7 pixels
   end else begin
     tk_partial_i = 16'hFFFF;
   end
 end*/

 assign reord_tk = buff_tk;
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate

//-----------------------------------------
//********RAW12 reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h2C ) 
                                            begin : REQ_REORDER_RAW12
 assign reord_tv = buff_tv;
 //reorder/combine pixels to form complete pixel information.
 //NOTE:Pixels can be tightly packed and then align to byte boundary,but with
 //that sending TKEEP info will be a problem.So alignment to byte boundary is
 //done before packing of 4 pixels per row.
 //
 assign reord_td = {4'h0,buff_td[39:32],buff_td[47:44], 
                    4'h0,buff_td[31:24],buff_td[43:40],
                    4'h0,buff_td[15:8] ,buff_td[23:20], 
                    4'h0,buff_td[7:0]  ,buff_td[19:16]};
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 wire [(VFB_FIFO_WIDTH/8)-1:0]   tk_partial_i;
 assign tk_partial_i = (buff_tk == 8'h01 |
                        buff_tk == 8'h07 |
                        buff_tk == 8'h1F |
                        buff_tk == 8'h7F )?8'h0F:8'hFF; 
 assign reord_tk = buff_tl?tk_partial_i:8'hFF;
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate
//-----------------------------------------
//********RAW14 reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h2D ) 
                                            begin : REQ_REORDER_RAW14
 assign reord_tv = buff_tv;
 //reorder/combine pixels to form complete pixel information.
 //NOTE:Pixels can be tightly packed and then align to byte boundary,but with
 //that sending TKEEP info will be a problem.So alignment to byte boundary is
 //done before packing of 4 pixels per row.
 //
 assign reord_td = {2'h0,buff_td[31:24],buff_td[55:50], 
                    2'h0,buff_td[23:16],buff_td[49:44],
                    2'h0,buff_td[15:8] ,buff_td[43:38], 
                    2'h0,buff_td[7:0]  ,buff_td[37:32]};
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = {VFB_FIFO_WIDTH{1'b1}}; //Always sending 4pixels for RAW14.
           //As per CSI spec 11.4.6 length of each packet must be a multiple
           //of 4 pixels.so TKEEP is expected to be all 1's when 4 pixels are
           //packed together.
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate
//-----------------------------------------
//********RGB888 reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h24 ) 
                                           begin : REQ_REORDER_RGB888
 assign reord_tv = buff_tv;
 //reorder/combine pixels to form complete pixel information.
 //NOTE:fifo width can be taken as 4*24=96 but stream FIFO will not allow such
 // configuration. So next allowed configuraion of stream FIFO is used
 wire [23:0] pxl0;
 wire [23:0] pxl1;
 wire [23:0] pxl2;
 wire [23:0] pxl3;
 assign pxl0 = buff_td[23:0];
 assign pxl1 = buff_td[47:24];
 assign pxl2 = buff_td[71:48];
 assign pxl3 = buff_td[95:72];
 //csi follows B->G->R style, UG934 follows G->B->R style.
 // Reordering performed to follow UG934
 assign reord_td = {
                    8'h0,pxl3[23:16],pxl3[7:0],pxl3[15:8],
                    8'h0,pxl2[23:16],pxl2[7:0],pxl2[15:8],
                    8'h0,pxl1[23:16],pxl1[7:0],pxl1[15:8],
                    8'h0,pxl0[23:16],pxl0[7:0],pxl0[15:8] 
                   };
 reg [(VFB_FIFO_WIDTH/8)-1:0]   tk_partial_i;
 always @(*) begin
   if(buff_tk == 8'h07 || buff_tk == 8'h7F) begin //1,5 pixel
     tk_partial_i = 16'h000F;
   end else if(buff_tk == 8'h3F || buff_tk == 8'h03) begin
     tk_partial_i = 16'h00FF; //2,6 pixels
   end else if(buff_tk == 8'h01 || buff_tk == 8'h1F) begin 
     tk_partial_i = 16'h0FFF; //3,7 pixels
   end else begin
     tk_partial_i = 16'hFFFF;
   end
 end

 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = (buff_tl)?tk_partial_i:16'hFFFF;
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate
//-----------------------------------------
//********RGB666 reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h23 ) 
                                                 begin : REQ_REORDER_RGB666
 assign reord_tv = buff_tv;
 //reorder/combine pixels to form complete pixel information.
 //NOTE:fifo width can be taken as 4*18=72 but stream FIFO will not allow such
 // configuration. So next allowed configuraion of stream FIFO is used 
 // perl pixel
 wire [23:0] pxl0;
 wire [23:0] pxl1;
 wire [23:0] pxl2;
 wire [23:0] pxl3;
 assign pxl0 = buff_td[17:0];
 assign pxl1 = buff_td[35:18];
 assign pxl2 = buff_td[53:36];
 assign pxl3 = buff_td[71:54];
 //csi follows B->G->R style, UG934 follows G->B->R style.
 // Reordering performed to follow UG934
 assign reord_td = {
                    14'h0,pxl3[17:12],pxl3[5:0],pxl3[11:6],
                    14'h0,pxl2[17:12],pxl2[5:0],pxl2[11:6],
                    14'h0,pxl1[17:12],pxl1[5:0],pxl1[11:6],
                    14'h0,pxl0[17:12],pxl0[5:0],pxl0[11:6] 
                   };
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = buff_tk;
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate
//-----------------------------------------
//********RGB565 reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h22 ) 
                                                  begin : REQ_REORDER_RGB565
 assign reord_tv = buff_tv;
 wire [15:0] pxl0;
 wire [15:0] pxl1;
 wire [15:0] pxl2;
 wire [15:0] pxl3;
 assign pxl0 = buff_td[15:0];
 assign pxl1 = buff_td[31:16];
 assign pxl2 = buff_td[47:32];
 assign pxl3 = buff_td[63:48];
 //csi follows B->G->R style, UG934 follows G->B->R style.
 // Reordering performed to follow UG934
 //b 0 4,g 5 10,r 11 15-> g,b,r
 assign reord_td = {
                    pxl3[15:11],pxl3[4:0],pxl3[10:5],
                    pxl2[15:11],pxl2[4:0],pxl2[10:5],
                    pxl1[15:11],pxl1[4:0],pxl1[10:5],
                    pxl0[15:11],pxl0[4:0],pxl0[10:5] 
                   };
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = buff_tk;
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate
//-----------------------------------------
//********RGB555 reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h21 ) 
                                                  begin : REQ_REORDER_RGB555
 assign reord_tv = buff_tv;
 wire [15:0] pxl0;
 wire [15:0] pxl1;
 wire [15:0] pxl2;
 wire [15:0] pxl3;
 assign pxl0 = buff_td[15:0];
 assign pxl1 = buff_td[31:16];
 assign pxl2 = buff_td[47:32];
 assign pxl3 = buff_td[63:48];
 //csi follows B->G->R style, UG934 follows G->B->R style.
 // Reordering performed to follow UG934
 //b 0 4,g 6 10,r 11 15-> g,b,r
 assign reord_td = {
                    1'b0,pxl3[15:11],pxl3[4:0],pxl3[10:6],
                    1'b0,pxl2[15:11],pxl2[4:0],pxl2[10:6],
                    1'b0,pxl1[15:11],pxl1[4:0],pxl1[10:6],
                    1'b0,pxl0[15:11],pxl0[4:0],pxl0[10:6] 
                   };
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = buff_tk;
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate
//-----------------------------------------
//********RGB444 reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h20 ) 
                                              begin : REQ_REORDER_RGB444
 assign reord_tv = buff_tv;
 wire [15:0] pxl0;
 wire [15:0] pxl1;
 wire [15:0] pxl2;
 wire [15:0] pxl3;
 assign pxl0 = buff_td[15:0];
 assign pxl1 = buff_td[31:16];
 assign pxl2 = buff_td[47:32];
 assign pxl3 = buff_td[63:48];
 //csi follows B->G->R style, UG934 follows G->B->R style.
 // Reordering performed to follow UG934
 //b 0 3,g 4 7,r 8 11-> g,b,r
 assign reord_td = {
                    4'h0,pxl3[11:8],pxl3[3:0],pxl3[7:4],
                    4'h0,pxl2[11:8],pxl2[3:0],pxl2[7:4],
                    4'h0,pxl1[11:8],pxl1[3:0],pxl1[7:4],
                    4'h0,pxl0[11:8],pxl0[3:0],pxl0[7:4] 
                   };
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = buff_tk;
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate
//-----------------------------------------
//********YUV422 8bit reordering logic ***********//
//-----------------------------------------
generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h1E )
         begin : REQ_REORDER_YUV422_8B
 assign reord_tv = buff_tv;
 wire [15:0] u1y1;
 wire [15:0] v1y2;
 wire [15:0] u3y3;
 wire [15:0] v3y4;
 assign u1y1 = buff_td[31:16];
 assign v1y2 = buff_td[15:0];
 assign u3y3 = buff_td[63:48];
 assign v3y4 = buff_td[47:32];
 //csi follows YVYU style, UG934 follows UYVY style.
 // Reordering performed to follow UG934
 //u y1 v y2 
 assign reord_td = {v3y4,u3y3,
                    v1y2,u1y1};
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = {buff_tk[5:4],buff_tk[7:6],buff_tk[1:0],buff_tk[3:2]};
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate

//-----------------------------------------
//********YUV422 10bit reordering logic ***********//
//-----------------------------------------
/*generate if(VFB_REQ_REORDER  == 1 && VFB_DATA_TYPE == 6'h1F )
         begin : REQ_REORDER_YUV422_10B
 assign reord_tv = buff_tv;
 wire [19:0] u1y1;
 wire [19:0] v1y2;
 wire [19:0] u3y3;
 wire [19:0] v3y4;
_td = {12'h0,buff_td[63:56],buff_td[71:64],buff_td[79:76] ,
                    12'h0,buff_td[47:40],buff_td[55:48],buff_td[75:72] ,
                    12'h0,buff_td[23:16],buff_td[31:24],buff_td[39:36] ,
                    12'h0,buff_td[7:0]  ,buff_td[15:8] ,buff_td[35:32]};

 assign u1y1 = {buff_td[7:0],buff_td[33:31],buff_td[15:8],buff_td[35:34};
 assign v1y2 = {buff_td[23:16],buff_td[37:36],buff_td[31:24],buff_td[39:38]};
 assign u3y3 = {buff_td[47:40],buff_td[73:72],buff_td[55:48],buff_td[75:74]};
 assign v3y4 = {buff_td[63:56],buff_td[77:76],buff_td[71:64],buff_td[79:78]};
 assign reord_td = {12'b0,v3y4,
                    12'b0,u3y3,
                    12'b0,v1y2,
                    12'b0,u1y1};
 assign reord_tu = buff_tu;
 assign reord_ts = buff_ts;
 assign reord_tk = {buff_tk[23:16],buff_tk[31:24],buff_tk[7:0],buff_tk[15:8]};
 assign reord_tl = buff_tl;
 assign reord_tr = fifo_tr;

end
endgenerate
*/
//-----------------------------------------
//************Fifo write logic*************
//-----------------------------------------
assign fifo_tv =  reord_tv ;
assign fifo_td =  reord_td ;
assign fifo_tu =  reord_tu ;
assign fifo_ts =  reord_ts ;
assign fifo_tk =  reord_tk ;
assign fifo_tl =  reord_tl ;
assign fifo_tr =  ~s_fifo_tv |(s_fifo_tv&s_fifo_tr);

//extract tuser/tdest information from _ts signals
wire [3:0] vc; 
wire [5:0] datatype; 
wire [15:0] frmnum; 
wire [15:0] linenum; 
wire [15:0] wc; 
wire [23:0] ecccrc; 
//all sideband selected
generate if(VFB_TSB2_WIDTH > 3) begin: SBGROUP0
 assign vc       = fifo_ts[3:0  ];
 assign datatype = fifo_ts[9:4  ];
 assign frmnum   = fifo_ts[25:10];
 assign linenum  = fifo_ts[41:26];
 assign wc       = fifo_ts[57:42];
 assign ecccrc   = fifo_ts[81:58];
end
endgenerate
// <=32 bit width selected for external side band information
generate if(VFB_TSB2_WIDTH == 3 && VFB_TSB1_WIDTH == 0) begin: SBGROUP1
 assign vc       = fifo_ts[3:0  ];
 assign datatype = fifo_ts[9:4  ];
 assign frmnum   = fifo_ts[25:10];
 assign linenum  = 'h0;
 assign wc       = 'h0;
 assign ecccrc   = 'h0;
end
endgenerate
generate if(VFB_TSB2_WIDTH == 3 && VFB_TSB1_WIDTH == 32) begin: SBGROUP2
 assign vc       = fifo_ts[3:0  ];
 assign datatype = fifo_ts[9:4  ];
 assign frmnum   = fifo_ts[25:10];
 assign linenum  = fifo_ts[41:26];
 assign wc       = fifo_ts[57:42];
 assign ecccrc   = 'h0;
end
endgenerate
wire [81:0] sb_all; 
assign sb_all = {ecccrc,wc,linenum,frmnum,datatype,vc};

wire [VFB_TSB2_WIDTH:0] tu_i;
//assign tu_i = {1'b0,sb_all[81:66],fifo_tu};
assign tu_i = {sb_all[81:64],fifo_tu};
//
//Write to FIFO reorder block provides a valid data
// Hold to current data untill accepted by FIFO
//
always @(posedge s_axis_aclk) begin
  if(~s_axis_aresetn) begin
    s_fifo_tv <= 1'b0;
    s_fifo_td <= {VFB_FIFO_WIDTH{1'b0}};
    s_fifo_tk <= {(VFB_FIFO_WIDTH/8){1'b0}};
    s_fifo_tid<= 32'h0;
    s_fifo_tdst <= 32'h0;
    s_fifo_tu <= 'h0;
    s_fifo_tl <= 1'b0;
  end else if(s_fifo_tv & ~s_fifo_tr)begin
    s_fifo_tv <= s_fifo_tv;
    s_fifo_td <= s_fifo_td;
    s_fifo_tu <= s_fifo_tu;
    s_fifo_tk <= s_fifo_tk;
    s_fifo_tl <= s_fifo_tl;
  end else if(fifo_tv)begin
    s_fifo_tv    <= 1'b1;
    s_fifo_td    <= fifo_td;
    s_fifo_tk                     <= fifo_tk;
    s_fifo_tl                     <= fifo_tl;
    //s_fifo_tu[0]                  <= fifo_tu;
    s_fifo_tid                    <= sb_all[31:0];
    s_fifo_tdst                   <= sb_all[63:32];
    //s_fifo_tu[VFB_TSB2_WIDTH-1:1] <= sb_all[79:64];//MSB will be truncated
    s_fifo_tu <= {TU_BYTES{tu_i}};
  end else begin
    s_fifo_tv <= 1'b0;
    s_fifo_tl <= 1'b0;
  end
end


//Bypass and send userdefined info to o/p interface
assign sband_dtype = dtype_udefs | dtype_raw8;

wire [15:0]  sband_wc;
wire         sband_vc;
assign sband_vc = (VFB_FILTER_VC == 1)?(s_axis_tdest[3:0] == VFB_VC):1'b1;
assign sband_tv = ((sband_dtype)& cur_dtype_udef &
                   (sband_vc & s_axis_tvalid))?
                  1'b1:1'b0;
assign sband_td = s_axis_tdata; 
assign sband_tu[0] = s_axis_tuser[0] & sband_tv & s_axis_tready; 
generate if(VFB_TU_WIDTH > 1) begin: VFB_TU
  assign sband_tu[VFB_TU_WIDTH-1:1] = s_axis_tuser[VFB_TU_WIDTH-1:1]; 
end
endgenerate
assign sband_ts = {s_axis_tuser[69:64],s_axis_tdest[3:0]};
assign sband_wc = s_axis_tuser[63:48]; 
assign sband_tk = s_axis_tkeep; 
assign sband_tl = s_axis_tready & s_axis_tlast &
                 s_axis_tvalid; //Filter invalid tlasts
assign sband_te = s_axis_tready & s_axis_tlast &
                 s_axis_tvalid & s_axis_tuser[1]; //Filter invalid tuser[1]

always @(posedge s_axis_aclk) begin
  if(~s_axis_aresetn) begin
    first_beat_rcvd <= 1'b0;
  end else if(first_beat_rcvd & s_axis_tvalid & s_axis_tready & s_axis_tlast) begin
    first_beat_rcvd <= 1'b0;
  end else if(~first_beat_rcvd & s_axis_tvalid & s_axis_tready & ~s_axis_tlast) begin
    first_beat_rcvd <= 1'b1;
  end
end  
always @(posedge s_axis_aclk) begin
  if(~s_axis_aresetn) begin
    cur_dtype_pxls <= 1'b0;
  end else if(s_axis_tvalid & s_axis_tready & s_axis_tlast) begin
    cur_dtype_pxls <= 1'b0;
  end else if((s_axis_tuser[69:64] == VFB_DATA_TYPE)&
               ~dtype_raw8 &
               s_axis_tvalid & //s_axis_tready &
               filt_vc
              )  begin
    cur_dtype_pxls <= 1'b1;
  end
end
always @(posedge s_axis_aclk) begin
  if(~s_axis_aresetn) begin
    cur_dtype_udef <= 1'b0;
  end else if(s_axis_tvalid & s_axis_tready & s_axis_tlast) begin
    cur_dtype_udef <= 1'b0;
  end else if( sband_dtype &
               s_axis_tvalid & //s_axis_tready &
               sband_vc
              )  begin
    cur_dtype_udef <= 1'b1;
  end
end
wire main_dtvc;
wire sban_dtvc;
assign main_dtvc = (s_axis_tuser[69:64] == VFB_DATA_TYPE) & filt_vc;
assign sban_dtvc = sband_dtype & sband_vc;
always @(posedge s_axis_aclk) begin
  if(~s_axis_aresetn) begin
    cur_dtype_sink <= 1'b0;
  end else if(s_axis_tvalid & s_axis_tready & s_axis_tlast) begin
    cur_dtype_sink <= 1'b0;
  //end else if( ~sband_dtype &
  //            (s_axis_tuser[69:64] != VFB_DATA_TYPE)&
  end else if( ~main_dtvc & ~sban_dtvc & 
               s_axis_tvalid 
              )  begin
    cur_dtype_sink <= 1'b1;
  end
end
  
generate if(VFB_DEBUG_CNTS == 1) begin: VFB_DBG_CNTRS
  //counters at stages.
  reg [31:0] filt_cntr;  
  reg [31:0] buff_cntr;  
  reg [31:0] reord_cntr;  
  reg [31:0] fifo_cntr;  
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      filt_cntr <= 32'h0;
    end else if(filt_tv & buff_tr) begin
      if(filt_tl) begin
        filt_cntr <= 32'h0;
      end else begin
        filt_cntr <= filt_cntr+1'h1;
      end
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      buff_cntr <= 32'h0;
    end else if(buff_tv & reord_tr) begin
      if(buff_tl) begin
        buff_cntr <= 32'h0;
      end else begin
        buff_cntr <= buff_cntr+1'h1;
      end
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      reord_cntr <= 32'h0;
    end else if(reord_tv & fifo_tr) begin
      if(buff_tl) begin
        reord_cntr <= 32'h0;
      end else begin
        reord_cntr <= reord_cntr+1'h1;
      end
    end
  end
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      fifo_cntr <= 32'h0;
    end else if(s_fifo_tv & s_fifo_tr) begin
      if(s_fifo_tl) begin
        fifo_cntr <= 32'h0;
      end else begin
        fifo_cntr <= fifo_cntr+1'h1;
      end
    end
  end
  reg fifo_tr_d;
  always @(posedge s_axis_aclk) begin
    if(~s_axis_aresetn) begin
      fifo_tr_d <= 1'b0;
    end else begin
      fifo_tr_d <= fifo_tr;
      if(fifo_tr & ~fifo_tr_d) begin
        //$display("VFB_HW_DBG Fifo full see\n"); 
      end 
    end
  end  
end
endgenerate

endmodule


//-----------------------------------------------------------------------------
// (c) Copyright 2014 - 2015 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename:    vfb_v1_0_15_op_inf.v
// Description: output interface compliant to UG934
//---------------------------------------------------------------------------
`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module vfb_v1_0_15_op_inf #
(
  parameter VFB_TU_WIDTH      = 96       ,        
  parameter VFB_TSB0_WIDTH         = 96       ,
  parameter VFB_TSB1_WIDTH         = 96       ,
  parameter VFB_TSB2_WIDTH         = 96       ,
  parameter AXIS_TDATA_WIDTH  = 32       ,        
  parameter VFB_PXL_W         = 96       ,        
  parameter VFB_PXL_W_BB      = 96       ,        
  parameter VFB_DCONV_OWIDTH  = 96       ,        
  parameter VFB_OP_DWIDTH     = 96       ,        
  parameter VFB_OP_PIXELS     = 96        
) (
 input                                  vfb_clk            ,
 input                                  vfb_resetn         ,
 output                                 s_axis_tready      ,
 input                                  s_axis_tvalid      ,
 input      [VFB_DCONV_OWIDTH-1:0]      s_axis_tdata       ,
 input  [31:0]                          s_axis_tid   ,   
 input  [31:0]                          s_axis_tdest ,   
 input      [VFB_TSB2_WIDTH:0]        s_axis_tuser       ,   
 input      [(VFB_DCONV_OWIDTH/8)-1:0]  s_axis_tkeep       ,   
 input                                  s_axis_tlast       ,    
 input                               sband_tv,
 output                              sband_tr,
 input  [AXIS_TDATA_WIDTH-1:0]       sband_td,
 input [VFB_TU_WIDTH-1:0]            sband_tu,
 input [9:0]                         sband_ts,
 input  [(AXIS_TDATA_WIDTH/8)-1:0]   sband_tk,
 input                               sband_tl,
 input                               sband_te, //TUSER[1] error
 input                                  vfb_ready          ,
 output reg                             vfb_valid          ,
 output reg                             vfb_eol            ,
 output reg [VFB_TU_WIDTH-1:0]          vfb_sof            ,
 output reg [9:0]                       vfb_vcdt            ,
 output reg [VFB_OP_DWIDTH-1:0]         vfb_data   
);
localparam LSB_P0 = 0;
localparam MSB_P0 = LSB_P0+VFB_PXL_W-1;
localparam LSB_P1 = VFB_PXL_W_BB;
localparam MSB_P1 = LSB_P1 + VFB_PXL_W-1;
localparam LSB_P2 = VFB_PXL_W_BB*2;
localparam MSB_P2 = LSB_P2 + VFB_PXL_W-1;
localparam LSB_P3 = VFB_PXL_W_BB*3;
localparam MSB_P3 = LSB_P3 + VFB_PXL_W-1;
localparam MAXOF_2DT_PXLW = (VFB_PXL_W<8)?8:VFB_PXL_W; //max of main stream
                                                       // pxl vs userdefined
                                                       // pixel width
localparam VFB_SB_PIXELS = (AXIS_TDATA_WIDTH == 32)? 4: 8;
localparam ZEROPADDING = (VFB_PXL_W<8)?(8-VFB_PXL_W):(VFB_PXL_W-8);            
//
//Accept data from fifo when no data yet placed on 
//output interface or data is sampled
//
assign s_axis_tready = ((~vfb_valid) |(vfb_valid&vfb_ready));
//tdest for sibeband i/f
reg  vfb_tu0;
reg  [9:0] sband_ts_r;
reg [VFB_TU_WIDTH-1:0] sband_tu_r;
//prepare o/p data based on number of pixels
wire [VFB_OP_DWIDTH-1:0] tdata_i;
wire [VFB_OP_DWIDTH-1:0] tdata_s0;//sideband userdefined data
wire [VFB_OP_DWIDTH-1:0] tdata_s1;//sideband userdefined data

wire [VFB_OP_DWIDTH-1:0] mpxl_i;
wire [VFB_OP_DWIDTH-1:0] spxl_s0;//sideband userdefined data
wire [VFB_OP_DWIDTH-1:0] spxl_s1;//sideband userdefined data

wire [VFB_PXL_W-1:0] mpxl0_i1;
wire [VFB_PXL_W-1:0] mpxl1_i1;
wire [VFB_PXL_W-1:0] mpxl2_i1;
wire [VFB_PXL_W-1:0] mpxl3_i1;
wire [MAXOF_2DT_PXLW-1:0] mpxl0_i2;
wire [MAXOF_2DT_PXLW-1:0] mpxl1_i2;
wire [MAXOF_2DT_PXLW-1:0] mpxl2_i2;
wire [MAXOF_2DT_PXLW-1:0] mpxl3_i2;

wire [7:0] s0pxl0_i1;
wire [7:0] s0pxl1_i1;
wire [7:0] s0pxl2_i1;
wire [7:0] s0pxl3_i1;
wire [MAXOF_2DT_PXLW-1:0] s0pxl0_i2;
wire [MAXOF_2DT_PXLW-1:0] s0pxl1_i2;
wire [MAXOF_2DT_PXLW-1:0] s0pxl2_i2;
wire [MAXOF_2DT_PXLW-1:0] s0pxl3_i2;

wire [7:0] s1pxl0_i1;
wire [7:0] s1pxl1_i1;
wire [7:0] s1pxl2_i1;
wire [7:0] s1pxl3_i1;
wire [MAXOF_2DT_PXLW-1:0] s1pxl0_i2;
wire [MAXOF_2DT_PXLW-1:0] s1pxl1_i2;
wire [MAXOF_2DT_PXLW-1:0] s1pxl2_i2;
wire [MAXOF_2DT_PXLW-1:0] s1pxl3_i2;

reg [AXIS_TDATA_WIDTH-1:0]       sband_td_r;

generate if(VFB_OP_PIXELS ==1 && VFB_PXL_W >=8) begin : OP_PXLS_1   

 assign mpxl0_i1 = s_axis_tdata[MSB_P0:LSB_P0];
 assign mpxl0_i2 = {{MAXOF_2DT_PXLW{1'b0}},mpxl0_i1};
 assign tdata_i  = mpxl0_i2; 

 assign s0pxl0_i1 = sband_td[7:0];
 assign s0pxl0_i2 = {s0pxl0_i1,{ZEROPADDING{1'b0}}};
 assign tdata_s0  = s0pxl0_i2;

 assign s1pxl0_i1 = sband_td_r[7:0];
 assign s1pxl0_i2 = {s1pxl0_i1,{ZEROPADDING{1'b0}}}; 
 assign tdata_s1  = s1pxl0_i2;

end
endgenerate

generate if(VFB_OP_PIXELS ==1 && VFB_PXL_W <8) begin : OP_PXLS_1A 

 assign mpxl0_i1 = s_axis_tdata[MSB_P0:LSB_P0];
 assign mpxl0_i2 = {mpxl0_i1,{ZEROPADDING{1'b0}}};
 assign tdata_i  = mpxl0_i2;

 assign s0pxl0_i1 = sband_td[7:0];
 assign s0pxl0_i2 = s0pxl0_i1;
 assign tdata_s0  = s0pxl0_i2;

 assign s1pxl0_i1 = sband_td_r[7:0];
 assign s1pxl0_i2 = s1pxl0_i1;
 assign tdata_s1  = s1pxl0_i2;

end
endgenerate

generate if(VFB_OP_PIXELS ==2 && VFB_PXL_W >=8) begin : OP_PXLS_2

 assign mpxl0_i1 = s_axis_tdata[MSB_P0:LSB_P0];
 assign mpxl1_i1 = s_axis_tdata[MSB_P1:LSB_P1];
 assign mpxl0_i2 = {{MAXOF_2DT_PXLW{1'b0}},mpxl0_i1};
 assign mpxl1_i2 = {{MAXOF_2DT_PXLW{1'b0}},mpxl1_i1};
 assign tdata_i  = {mpxl1_i2,mpxl0_i2}; 

 assign s0pxl0_i1 = sband_td[7:0];
 assign s0pxl1_i1 = sband_td[15:8];
 assign s0pxl0_i2 = {s0pxl0_i1,{ZEROPADDING{1'b0}}};  
 assign s0pxl1_i2 = {s0pxl1_i1,{ZEROPADDING{1'b0}}};  
 assign tdata_s0  = {s0pxl1_i2,s0pxl0_i2};

 assign s1pxl0_i1 = sband_td_r[7:0];
 assign s1pxl1_i1 = sband_td_r[15:8];
 assign s1pxl0_i2 = {s1pxl0_i1,{ZEROPADDING{1'b0}}};  
 assign s1pxl1_i2 = {s1pxl1_i1,{ZEROPADDING{1'b0}}}; 
 assign tdata_s1  = {s1pxl1_i2,s1pxl0_i2};
end
endgenerate

generate if(VFB_OP_PIXELS ==2 && VFB_PXL_W <8) begin : OP_PXLS_2A

 assign mpxl0_i1 = s_axis_tdata[MSB_P0:LSB_P0];
 assign mpxl1_i1 = s_axis_tdata[MSB_P1:LSB_P1];
 assign mpxl0_i2 = {mpxl0_i1,{ZEROPADDING{1'b0}}};
 assign mpxl1_i2 = {mpxl1_i1,{ZEROPADDING{1'b0}}};
 assign tdata_i  = {mpxl1_i2,mpxl0_i2};

 assign s0pxl0_i1 = sband_td[7:0];
 assign s0pxl1_i1 = sband_td[15:8];
 assign s0pxl0_i2 = s0pxl0_i1;
 assign s0pxl1_i2 = s0pxl1_i1;
 assign tdata_s0  = {s0pxl1_i2,s0pxl0_i2};

 assign s1pxl0_i1 = sband_td_r[7:0];
 assign s1pxl1_i1 = sband_td_r[15:8];
 assign s1pxl0_i2 = s1pxl0_i1;
 assign s1pxl1_i2 = s1pxl1_i1;
 assign tdata_s1  = {s1pxl1_i2,s1pxl0_i2};
end
endgenerate

generate if(VFB_OP_PIXELS ==4 && VFB_PXL_W >=8) begin : OP_PXLS_4

 assign mpxl0_i1 = s_axis_tdata[MSB_P0:LSB_P0];
 assign mpxl1_i1 = s_axis_tdata[MSB_P1:LSB_P1];
 assign mpxl2_i1 = s_axis_tdata[MSB_P2:LSB_P2];
 assign mpxl3_i1 = s_axis_tdata[MSB_P3:LSB_P3];
 assign mpxl0_i2 = {{MAXOF_2DT_PXLW{1'b0}},mpxl0_i1};
 assign mpxl1_i2 = {{MAXOF_2DT_PXLW{1'b0}},mpxl1_i1};
 assign mpxl2_i2 = {{MAXOF_2DT_PXLW{1'b0}},mpxl2_i1};
 assign mpxl3_i2 = {{MAXOF_2DT_PXLW{1'b0}},mpxl3_i1};
 assign tdata_i  = {mpxl3_i2,mpxl2_i2,mpxl1_i2,mpxl0_i2}; 

 assign s0pxl0_i1 = sband_td[7:0];
 assign s0pxl1_i1 = sband_td[15:8];
 assign s0pxl2_i1 = sband_td[23:16];
 assign s0pxl3_i1 = sband_td[31:24];
 assign s0pxl0_i2 = {s0pxl0_i1,{ZEROPADDING{1'b0}}};
 assign s0pxl1_i2 = {s0pxl1_i1,{ZEROPADDING{1'b0}}}; 
 assign s0pxl2_i2 = {s0pxl2_i1,{ZEROPADDING{1'b0}}};   
 assign s0pxl3_i2 = {s0pxl3_i1,{ZEROPADDING{1'b0}}};
 assign tdata_s0  = {s0pxl3_i2,s0pxl2_i2,s0pxl1_i2,s0pxl0_i2};

 assign s1pxl0_i1 = sband_td_r[7:0];
 assign s1pxl1_i1 = sband_td_r[15:8];
 assign s1pxl2_i1 = sband_td_r[23:16];
 assign s1pxl3_i1 = sband_td_r[31:24];
 assign s1pxl0_i2 = {s1pxl0_i1,{ZEROPADDING{1'b0}}};
 assign s1pxl1_i2 = {s1pxl1_i1,{ZEROPADDING{1'b0}}};
 assign s1pxl2_i2 = {s1pxl2_i1,{ZEROPADDING{1'b0}}};
 assign s1pxl3_i2 = {s1pxl3_i1,{ZEROPADDING{1'b0}}};
 assign tdata_s1  = {s1pxl3_i2,s1pxl2_i2,s1pxl1_i2,s1pxl0_i2};
end
endgenerate

generate if(VFB_OP_PIXELS ==4 && VFB_PXL_W <=8) begin : OP_PXLS_4A

 assign mpxl0_i1 = s_axis_tdata[MSB_P0:LSB_P0];
 assign mpxl1_i1 = s_axis_tdata[MSB_P1:LSB_P1];
 assign mpxl2_i1 = s_axis_tdata[MSB_P2:LSB_P2];
 assign mpxl3_i1 = s_axis_tdata[MSB_P3:LSB_P3];
 assign mpxl0_i2 = {mpxl0_i1,{ZEROPADDING{1'b0}}};
 assign mpxl1_i2 = {mpxl1_i1,{ZEROPADDING{1'b0}}};
 assign mpxl2_i2 = {mpxl2_i1,{ZEROPADDING{1'b0}}};
 assign mpxl3_i2 = {mpxl3_i1,{ZEROPADDING{1'b0}}};
 assign tdata_i  = {mpxl3_i2,mpxl2_i2,mpxl1_i2,mpxl0_i2};

 assign s0pxl0_i1 = sband_td[7:0];
 assign s0pxl1_i1 = sband_td[15:8];
 assign s0pxl2_i1 = sband_td[23:16];
 assign s0pxl3_i1 = sband_td[31:24];
 assign s0pxl0_i2 = s0pxl0_i1;
 assign s0pxl1_i2 = s0pxl1_i1;
 assign s0pxl2_i2 = s0pxl2_i1;
 assign s0pxl3_i2 = s0pxl3_i1;
 assign tdata_s0  = {s0pxl3_i2,s0pxl2_i2,s0pxl1_i2,s0pxl0_i2};

 assign s1pxl0_i1 = sband_td_r[7:0];
 assign s1pxl1_i1 = sband_td_r[15:8];
 assign s1pxl2_i1 = sband_td_r[23:16];
 assign s1pxl3_i1 = sband_td_r[31:24];
 assign s1pxl0_i2 = s1pxl0_i1;
 assign s1pxl1_i2 = s1pxl1_i1;
 assign s1pxl2_i2 = s1pxl2_i1;
 assign s1pxl3_i2 = s1pxl3_i1;
 assign tdata_s1  = {s1pxl3_i2,s1pxl2_i2,s1pxl1_i2,s1pxl0_i2};
end
endgenerate


wire cnt_done;
reg [3:0] vfb_cnt; //pxls per beat sent 
reg       sband_tact;
//logic
assign cnt_done = ((vfb_cnt+VFB_OP_PIXELS) == VFB_SB_PIXELS);
always @(posedge vfb_clk) begin
  if(~vfb_resetn) begin
    sband_tact <= 1'b0;
  end else if(sband_tv&sband_tr)begin
    sband_tact <= 1'b1;
  end else if(vfb_valid & vfb_ready & vfb_eol)begin
    sband_tact <= 1'b0;
  end else if(vfb_valid & vfb_ready &
              (vfb_cnt+VFB_OP_PIXELS == VFB_SB_PIXELS))begin
    sband_tact <= 1'b0;
  end
end  
wire [(AXIS_TDATA_WIDTH/8):0]   sband_tk_i;
assign sband_tk_i = {1'b0,sband_tk};

reg [(AXIS_TDATA_WIDTH/8):0]   sband_tk_r;
reg    sband_tl_r;
always @(posedge vfb_clk) begin
  if(~vfb_resetn) begin
    sband_td_r <= {AXIS_TDATA_WIDTH{1'b0}};
    sband_tk_r <= {(AXIS_TDATA_WIDTH/8+1){1'b0}};
    sband_tl_r <= 1'b0;
    sband_ts_r  <= 10'h0;
    sband_tu_r  <= {VFB_TU_WIDTH{1'b0}};
  end else if(sband_tv & sband_tr)begin
    sband_td_r <= sband_td >> VFB_OP_PIXELS*8;
    sband_tk_r <= sband_tk >> VFB_OP_PIXELS;
    sband_tl_r <= sband_tl;
    sband_ts_r <= sband_ts;
    sband_tu_r <= sband_tu;
  end else if(vfb_valid & vfb_ready )begin
    sband_td_r <= sband_td_r >> VFB_OP_PIXELS*8;
    sband_tk_r <= sband_tk_r >> VFB_OP_PIXELS;
  end
end
//extract tuser/tdest information from _ts signals
wire [3:0] vc; 
wire [5:0] datatype; 
wire [15:0] frmnum; 
wire [15:0] linenum; 
wire [15:0] wc; 
wire [23:0] ecccrc; 
//all sideband selected
wire [81:0] sb_all; 
generate if(VFB_TSB2_WIDTH > 3) begin: SBGRP0
 assign sb_all ={s_axis_tuser[VFB_TSB2_WIDTH:1],
                 s_axis_tdest,
                 s_axis_tid};
end
endgenerate
// <=32 bit width selected for external side band information
generate if(VFB_TSB2_WIDTH == 3 && VFB_TSB1_WIDTH == 0) begin: SBGRP1
 assign sb_all ={80'h0, //to ensure MSB's filled with 0's
                 s_axis_tuser[VFB_TSB2_WIDTH:1],
                 s_axis_tid};
end
endgenerate
generate if(VFB_TSB2_WIDTH == 3 && VFB_TSB1_WIDTH == 32) begin: SBGRP2
 assign sb_all ={s_axis_tuser[VFB_TSB2_WIDTH-1:1],
                 s_axis_tdest,
                 s_axis_tid};
end
endgenerate
 assign vc       = sb_all[3:0  ];
 assign datatype = sb_all[9:4  ];
 assign frmnum   = sb_all[25:10];
 assign linenum  = sb_all[41:26];
 assign wc       = sb_all[57:42];
 assign ecccrc   = sb_all[81:58];
wire [95:0] vfb_tu;
wire [9:0]  vfb_tdst;
assign vfb_tu ={ecccrc,2'b0,
                datatype,
                wc,
                linenum,
                frmnum,
                15'h0,
                s_axis_tuser[0]};
assign vfb_tdst ={datatype,vc};
//
//place on o/p interface
//
always @(posedge vfb_clk) begin
  if(~vfb_resetn) begin
    vfb_valid <=  1'b0                 ;
    vfb_data  <=  {VFB_OP_DWIDTH{1'b0}};
    vfb_eol   <=  1'b0                 ;
  end else if(vfb_valid & ~vfb_ready) begin
    //no change
  end else if(s_axis_tvalid) begin
    vfb_valid <=  1'b1           ;
    vfb_data  <=  tdata_i        ;
    vfb_eol   <=  s_axis_tlast   ;
  end else if(vfb_valid & vfb_ready & vfb_eol) begin
    vfb_valid <=  1'b0                 ;
    vfb_eol   <=  1'b0;
  end else if(sband_tv & sband_tr) begin
    vfb_valid <=  1'b1     ;
    vfb_data  <=  tdata_s0;//sband_td[VFB_OP_PIXELS*8-1:0] ;
    vfb_eol   <=  sband_tl & ~sband_tk_i[VFB_OP_PIXELS] ;
  end else if((sband_tact & ~cnt_done)) begin
    vfb_valid <=  1'b1     ;
    vfb_data  <=  tdata_s1;//sband_td_r[VFB_OP_PIXELS*8-1:0] ;
    vfb_eol   <=  sband_tl_r & ~sband_tk_r[VFB_OP_PIXELS] ;
  end else begin
    vfb_valid <=  1'b0                 ;
    vfb_data  <=  {VFB_OP_DWIDTH{1'b0}};
    vfb_eol   <=  1'b0                 ;
    //vfb_sof   <=  1'b0                 ;
  end
end  


always @(posedge vfb_clk) begin
  if(~vfb_resetn) begin
    vfb_tu0   <=  1'b0 ;
  end else if(vfb_valid & vfb_ready & vfb_sof[0] & (~vfb_eol)) begin
    vfb_tu0   <=  1'b1 ;
  end else if(vfb_valid & vfb_ready & vfb_eol) begin
    vfb_tu0   <=  1'b0 ;
  end
end

always @(posedge vfb_clk) begin
  if(~vfb_resetn) begin
    vfb_sof[0]   <=  1'b0;
  end else if(vfb_valid & ~vfb_ready) begin
    //no change
  end else if(vfb_valid & vfb_ready & vfb_sof[0]) begin
    vfb_sof[0]   <=  1'h0 ;
  end else if(vfb_tu0 & (~vfb_eol)) begin
    vfb_sof[0]   <=  1'h0 ;
  end else if(s_axis_tvalid) begin
    vfb_sof[0] <= vfb_tu[0]  ;
  end else if(vfb_valid & vfb_ready & vfb_eol) begin
    vfb_sof[0]   <=  1'h0 ;
  end else if(sband_tv & sband_tr) begin
    vfb_sof[0] <= sband_tu[0];
  end else if((sband_tact & ~cnt_done)) begin
    vfb_sof[0] <= sband_tu_r[0];
  end
end

generate if(VFB_TU_WIDTH > 1) begin: TUSR0
always @(posedge vfb_clk) begin
  if(~vfb_resetn) begin
    vfb_sof[VFB_TU_WIDTH-1:1]   <=  {VFB_TU_WIDTH-1{1'b0}} ;
  end else if(vfb_valid & ~vfb_ready) begin
    //no change
  end else if(s_axis_tvalid) begin
    vfb_sof[VFB_TU_WIDTH-1:1] <= vfb_tu[VFB_TU_WIDTH-1:1] ;
  end else if(vfb_valid & vfb_ready & vfb_eol) begin
    vfb_sof[VFB_TU_WIDTH-1:1]   <=  {VFB_TU_WIDTH-1{1'b0}} ;
  end else if(sband_tv & sband_tr) begin
    vfb_sof[VFB_TU_WIDTH-1:1] <= sband_tu[VFB_TU_WIDTH-1:1];
  end else if((sband_tact & ~cnt_done)) begin
    vfb_sof[VFB_TU_WIDTH-1:1] <= sband_tu_r[VFB_TU_WIDTH-1:1];
  end
end
end
endgenerate

always @(posedge vfb_clk) begin
  if(~vfb_resetn) begin
    vfb_vcdt <=  10'h0;
  end else if(vfb_valid & ~vfb_ready) begin
    vfb_vcdt <=  vfb_vcdt;
  end else if(s_axis_tvalid) begin
    vfb_vcdt <= vfb_tdst  ;
  end else if(sband_tv & sband_tr) begin
    vfb_vcdt <= sband_ts;
  end else if((sband_tact)) begin
    vfb_vcdt <= sband_ts_r;
  end
end
assign sband_tr  = ~vfb_eol & ~s_axis_tvalid &
                  ((~vfb_valid) |(vfb_valid & vfb_ready & cnt_done));

always @(posedge vfb_clk) begin
  if(~vfb_resetn) begin
    vfb_cnt <= 4'h0;
  end else if(vfb_valid & vfb_ready & vfb_eol)begin
    vfb_cnt <= 4'h0;
  end else if(vfb_valid & vfb_ready &
              (vfb_cnt+VFB_OP_PIXELS == VFB_SB_PIXELS))begin
    vfb_cnt <= 4'h0;
  end else if(vfb_valid & vfb_ready)begin
    vfb_cnt <= vfb_cnt + VFB_OP_PIXELS;
  end
end    
//reg [31:0] dbg_cnt;
//always @(posedge vfb_clk) begin
//  if(~vfb_resetn) begin
//  dbg_cnt <= 32'h0;
//  end else if(vfb_valid & vfb_ready & vfb_eol)begin
//  dbg_cnt <= 32'h0;
//  end else if(vfb_valid & vfb_ready )begin
//  dbg_cnt <= dbg_cnt+32'h1;
//  end
//end  

endmodule


