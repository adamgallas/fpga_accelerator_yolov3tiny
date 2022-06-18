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
// Filename   : bd_91b0_vfb_0_0_core.v
// Description: Video format bridge top
//---------------------------------------------------------------------------
`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module bd_91b0_vfb_0_0_core
#(
 parameter C_HS_LINE_RATE           = 280 ,
 parameter AXIS_TDATA_WIDTH         = 64 ,
 parameter AXIS_TUSER_WIDTH         = 96 ,
 parameter AXIS_TDEST_WIDTH         = 4 ,
 parameter VFB_TU_WIDTH             = 1 ,
 parameter VFB_TSB0_WIDTH           = 32 ,
 parameter VFB_TSB1_WIDTH           = 0 ,
 parameter VFB_TSB2_WIDTH           = 3 ,
 parameter VFB_DATA_TYPE            = 'h2B ,
 parameter VFB_FILTER_VC            = 0 ,
 parameter VFB_VC                   = 'h0 ,
 parameter VFB_REQ_BUFFER           = 1 ,
 parameter VFB_REQ_REORDER          = 1 ,
 parameter VFB_FIFO_DEPTH           = 2048 ,
 parameter VFB_FIFO_WIDTH           = 64 ,
 parameter VFB_DCONV_TUW            = 24 ,
 parameter VFB_PXL_W                = 10 ,
 parameter VFB_PXL_W_BB             = 16 ,
 parameter VFB_4PXL_W               = 40 ,
 parameter VFB_DCONV_OWIDTH         = 16 ,
 parameter VFB_OP_DWIDTH            = 16 ,
 parameter VFB_OP_PIXELS            = 1 ,
 parameter VFB_BYPASS_WC            = 0 
) (
 //AXIS Interface
 input                              s_axis_aclk    ,
 input                              s_axis_aresetn ,

 output                             s_axis_tready  ,
 input                              s_axis_tvalid  ,
 input                              s_axis_tlast   ,
 input [AXIS_TDATA_WIDTH-1:0]       s_axis_tdata   ,
 input [(AXIS_TDATA_WIDTH/8)-1:0]   s_axis_tkeep   ,
 input [AXIS_TUSER_WIDTH-1:0]       s_axis_tuser   ,
 input [AXIS_TDEST_WIDTH-1:0]       s_axis_tdest   ,
 //dbg ports
 output mdt_tv ,
 output mdt_tr ,
 output sdt_tv ,
 output sdt_tr ,
 output vfb_tv ,
 output vfb_tr ,
 //AXIS Interface
 input                              vfb_arstn      ,
 input                              vfb_clk        ,
 input                              vfb_ready      ,
 output                             vfb_full      ,
 output                             vfb_valid      ,
 output                             vfb_eol        ,
 output [VFB_TU_WIDTH-1:0]          vfb_sof        ,
 output [9:0]                       vfb_vcdt       ,
 output [VFB_OP_DWIDTH-1:0]         vfb_data   
);
//wire declarations
wire		               strm_lb_full ;
wire		               strm_lb_full_d ;
wire		               strm_lb_full_s ;
wire		               strm_lb_empty ;
wire                           s_fifo_tr    ;
wire                           s_fifo_tv    ;
wire  [VFB_FIFO_WIDTH-1:0]     s_fifo_td    ;
wire  [31:0]     s_fifo_tid    ;   
wire  [31:0]     s_fifo_tdst    ;   
wire  [VFB_DCONV_TUW-1:0]     s_fifo_tu    ;   
wire  [(VFB_FIFO_WIDTH/8)-1:0] s_fifo_tk    ;   
wire                           s_fifo_tl    ;
wire                           s1_fifo_tr    ;
wire                           s1_fifo_tv    ;
wire  [VFB_FIFO_WIDTH-1:0]     s1_fifo_td    ;
wire  [31:0]     s1_fifo_tid    ;   
wire  [31:0]     s1_fifo_tdst    ;   
wire  [VFB_DCONV_TUW-1:0] s1_fifo_tu    ;   
wire  [(VFB_FIFO_WIDTH/8)-1:0] s1_fifo_tk    ;   
wire                           s1_fifo_tl    ;    

wire                              m_axis_tready;
wire                              m_axis_tvalid;
wire  [VFB_DCONV_OWIDTH-1:0]      m_axis_tdata ;
wire  [31:0]                       m_axis_tid   ;   
wire  [31:0]                       m_axis_tdest ;   
wire  [VFB_TSB2_WIDTH:0]         m_axis_tuser ;   
wire  [(VFB_DCONV_OWIDTH/8)-1:0]  m_axis_tkeep ;   
wire                              m_axis_tlast ;    

wire sband_tr;
wire                                    sband_vc;
wire                                    sband_tv;
wire [AXIS_TDATA_WIDTH-1:0]             sband_td;
wire [VFB_TU_WIDTH-1:0]                 sband_tu;
wire [9:0]                              sband_ts;
wire [(AXIS_TDATA_WIDTH/8)-1:0]         sband_tk;
wire                                    sband_tl;
wire                                    sband_te; //TUSER[1] error

wire sband1_tr;
wire                                    sband1_tv;
wire [AXIS_TDATA_WIDTH-1:0]             sband1_td;
wire [VFB_TU_WIDTH-1:0]                 sband1_tu;
wire [9:0]                              sband1_ts;
wire [(AXIS_TDATA_WIDTH/8)-1:0]         sband1_tk;
wire                                    sband1_tl;
wire                                    sband1_te; //TUSER[1] error
  generate if(C_HS_LINE_RATE <= 1500) begin: VFB_MIN
//reorder block
vfb_v1_0_15_reorder #(
.AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
.AXIS_TUSER_WIDTH(AXIS_TUSER_WIDTH),
.AXIS_TDEST_WIDTH(AXIS_TDEST_WIDTH),
.VFB_TU_WIDTH    (VFB_TU_WIDTH    ),
.VFB_TSB0_WIDTH    (VFB_TSB0_WIDTH    ),
.VFB_TSB1_WIDTH    (VFB_TSB1_WIDTH    ),
.VFB_TSB2_WIDTH    (VFB_TSB2_WIDTH    ),
.VFB_OP_DWIDTH   (VFB_OP_DWIDTH   ),
.VFB_DATA_TYPE   (VFB_DATA_TYPE   ),
.VFB_VC          (VFB_VC          ),
.VFB_FILTER_VC   (VFB_FILTER_VC   ),
.VFB_REQ_BUFFER  (VFB_REQ_BUFFER  ),
.VFB_REQ_REORDER (VFB_REQ_REORDER ),
.VFB_FIFO_WIDTH  (VFB_FIFO_WIDTH  ), 
.VFB_DCONV_TUW   (VFB_DCONV_TUW   ), 
.VFB_4PXL_W      (VFB_4PXL_W      ) 
) reorder (
  .s_axis_aclk     ( s_axis_aclk     ),
  .s_axis_aresetn  ( s_axis_aresetn  ),
  .v_axis_tready   ( s_axis_tready   ),
  .v_axis_tvalid   ( s_axis_tvalid   ),
  .v_axis_tlast    ( s_axis_tlast    ),
  .v_axis_tdata    ( s_axis_tdata    ),
  .v_axis_tkeep    ( s_axis_tkeep    ),
  .v_axis_tuser    ( s_axis_tuser    ),
  .v_axis_tdest    ( s_axis_tdest    ),
  .sband_tr      (sband_tr),
  .sband_tv      (sband_tv),
  .sband_td      (sband_td),
  .sband_tu      (sband_tu),
  .sband_ts      (sband_ts),
  .sband_tk      (sband_tk),
  .sband_tl      (sband_tl),
  .sband_te      (sband_te), //TUSER[1] error
  .s_fifo_tr       ( s_fifo_tr       ),
  .s_fifo_tv       ( s_fifo_tv       ),
  .s_fifo_td       ( s_fifo_td       ),
  .s_fifo_tid      ( s_fifo_tid      ),
  .s_fifo_tdst     ( s_fifo_tdst     ),
  .s_fifo_tu       ( s_fifo_tu       ),
  .s_fifo_tk       ( s_fifo_tk       ),
  .s_fifo_tl       ( s_fifo_tl       )  
); 
assign strm_lb_full = 1'b0;
end
endgenerate

                                             
generate if(C_HS_LINE_RATE > 1500) begin: VFB_MAX
//reorder block
vfb_v1_0_15_reorder #(
.AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
.AXIS_TUSER_WIDTH(AXIS_TUSER_WIDTH),
.AXIS_TDEST_WIDTH(AXIS_TDEST_WIDTH),
.VFB_TU_WIDTH    (VFB_TU_WIDTH    ),
.VFB_TSB0_WIDTH    (VFB_TSB0_WIDTH    ),
.VFB_TSB1_WIDTH    (VFB_TSB1_WIDTH    ),
.VFB_TSB2_WIDTH    (VFB_TSB2_WIDTH    ),
.VFB_OP_DWIDTH   (VFB_OP_DWIDTH   ),
.VFB_DATA_TYPE   (VFB_DATA_TYPE   ),
.VFB_VC          (VFB_VC          ),
.VFB_FILTER_VC   (VFB_FILTER_VC   ),
.VFB_REQ_BUFFER  (VFB_REQ_BUFFER  ),
.VFB_REQ_REORDER (VFB_REQ_REORDER ),
.VFB_FIFO_WIDTH  (VFB_FIFO_WIDTH  ), 
.VFB_DCONV_TUW   (VFB_DCONV_TUW   ), 
.VFB_4PXL_W      (VFB_4PXL_W      ) 
) reorder (
  .s_axis_aclk     ( s_axis_aclk     ),
  .s_axis_aresetn  ( s_axis_aresetn  ),
  .v_axis_tready   ( s_axis_tready   ),
  .v_axis_tvalid   ( s_axis_tvalid   ),
  .v_axis_tlast    ( s_axis_tlast    ),
  .v_axis_tdata    ( s_axis_tdata    ),
  .v_axis_tkeep    ( s_axis_tkeep    ),
  .v_axis_tuser    ( s_axis_tuser    ),
  .v_axis_tdest    ( s_axis_tdest    ),
  .sband_tr      (sband1_tr),
  .sband_tv      (sband1_tv),
  .sband_td      (sband1_td),
  .sband_tu      (sband1_tu),
  .sband_ts      (sband1_ts),
  .sband_tk      (sband1_tk),
  .sband_tl      (sband1_tl),
  .sband_te      (sband1_te), //TUSER[1] error
  .s_fifo_tr       ( s1_fifo_tr       ),
  .s_fifo_tv       ( s1_fifo_tv       ),
  .s_fifo_td       ( s1_fifo_td       ),
  .s_fifo_tid      ( s1_fifo_tid      ),
  .s_fifo_tdst     ( s1_fifo_tdst     ),
  .s_fifo_tu       ( s1_fifo_tu       ),
  .s_fifo_tk       ( s1_fifo_tk       ),
  .s_fifo_tl       ( s1_fifo_tl       )  
); 

//async_asymm fifo
bd_91b0_vfb_0_0_fifo async_asym (
  .s_axis_aclk       (s_axis_aclk    ),
  .s_axis_aresetn    (s_axis_aresetn ),
  .vfb_clk           (vfb_clk        ),
  .s_fifo_tr     (s1_fifo_tr      ),
  .s_fifo_tv     (s1_fifo_tv      ),
  .s_fifo_td      (s1_fifo_td      ),
  .s_fifo_tid      ( s1_fifo_tid      ),
  .s_fifo_tu      (s1_fifo_tu      ),
  .s_fifo_tdst      (s1_fifo_tdst      ),
  .s_fifo_tk      (s1_fifo_tk      ),
  .s_fifo_tl      (s1_fifo_tl      ),
  .m_fifo_tr     (s_fifo_tr      ),
  .m_fifo_tv     (s_fifo_tv      ),
  .m_fifo_td      (s_fifo_td      ),
  .m_fifo_tid      ( s_fifo_tid      ),
  .m_fifo_tdst     ( s_fifo_tdst     ),
  .m_fifo_tu      (s_fifo_tu      ),
  .m_fifo_tk      (s_fifo_tk      ),
  .m_fifo_tl      (s_fifo_tl      ),
  .strm_lb_full  (strm_lb_full_d   )
);
//async_asymm fifo side band
bd_91b0_vfb_0_0_fifo_sb async_asymsb (
  .s_axis_aclk       (s_axis_aclk    ),
  .s_axis_aresetn    (s_axis_aresetn ),
  .vfb_clk           (vfb_clk        ),
  .s_fifo_tr     (sband1_tr      ),
  .s_fifo_tv     (sband1_tv      ),
  .s_fifo_td      (sband1_td      ),
  .s_fifo_tid      ( sband1_te     ),
  .s_fifo_tu      (sband1_tu      ),
  .s_fifo_tdst      (sband1_ts     ),
  .s_fifo_tk      (sband1_tk      ),
  .s_fifo_tl      (sband1_tl      ),
  .m_fifo_tr     (sband_tr      ),
  .m_fifo_tv     (sband_tv      ),
  .m_fifo_td      (sband_td      ),
  .m_fifo_tid      ( sband_te     ),
  .m_fifo_tdst     ( sband_ts    ),
  .m_fifo_tu      (sband_tu      ),
  .m_fifo_tk      (sband_tk      ),
  .m_fifo_tl      (sband_tl      ),
  .strm_lb_full  (strm_lb_full_s   )
);
assign strm_lb_full = strm_lb_full_d | strm_lb_full_s;
end
endgenerate



//dwidth converter
bd_91b0_vfb_0_0_axis_dconverter axis_dconverter (
    .aclk         (vfb_clk      ),
    .aresetn      (vfb_arstn),
    .s_axis_tvalid(s_fifo_tv    ),
    .s_axis_tready(s_fifo_tr    ),
    .s_axis_tdata (s_fifo_td    ),
    .s_axis_tkeep (s_fifo_tk    ),
    .s_axis_tid   (s_fifo_tid   ),
    .s_axis_tuser (s_fifo_tu    ),
    .s_axis_tlast (s_fifo_tl    ),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tdata (m_axis_tdata ),
    .m_axis_tkeep (m_axis_tkeep ),
    .m_axis_tuser (m_axis_tuser ),
    .m_axis_tid   (m_axis_tid   ),
    .m_axis_tlast (m_axis_tlast ) 
  );
//op interface
vfb_v1_0_15_op_inf #(
.AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
  .VFB_TU_WIDTH     (VFB_TU_WIDTH       ),
  .VFB_TSB0_WIDTH    (VFB_TSB0_WIDTH    ),
  .VFB_TSB1_WIDTH    (VFB_TSB1_WIDTH    ),
  .VFB_TSB2_WIDTH    (VFB_TSB2_WIDTH    ),
  .VFB_PXL_W        (VFB_PXL_W       ),
  .VFB_PXL_W_BB     (VFB_PXL_W_BB    ),
  .VFB_DCONV_OWIDTH (VFB_DCONV_OWIDTH),
  .VFB_OP_DWIDTH    (VFB_OP_DWIDTH   ), 
  .VFB_OP_PIXELS    (VFB_OP_PIXELS   )
) op_inf (
  .vfb_clk       (vfb_clk        ),
  .vfb_resetn    (vfb_arstn        ),
  .s_axis_tvalid (m_axis_tvalid  ),
  .s_axis_tready (m_axis_tready  ),
  .s_axis_tdata  (m_axis_tdata   ),
  .s_axis_tkeep  (m_axis_tkeep   ),
  .s_axis_tid    (m_axis_tid     ),
  .s_axis_tdest  (m_axis_tdest   ),
  .s_axis_tuser  (m_axis_tuser   ),
  .s_axis_tlast  (m_axis_tlast   ),
  .sband_tv      (sband_tv),
  .sband_tr      (sband_tr),
  .sband_td      (sband_td),
  .sband_tu      (sband_tu),
  .sband_ts      (sband_ts),
  .sband_tk      (sband_tk),
  .sband_tl      (sband_tl),
  .sband_te      (sband_te), //TUSER[1] error
  .vfb_ready     (vfb_ready      ),
  .vfb_valid     (vfb_valid      ),
  .vfb_eol       (vfb_eol        ),
  .vfb_sof       (vfb_sof        ),
  .vfb_vcdt      (vfb_vcdt       ),
  .vfb_data      (vfb_data       ) 
);
assign mdt_tv = m_axis_tvalid;
assign mdt_tr = m_axis_tready;

assign sdt_tv = sband_tv;
assign sdt_tr = sband_tr;

assign vfb_tv = vfb_valid;
assign vfb_tr = vfb_ready;

assign vfb_full = strm_lb_full;
endmodule
