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
// Filename   : bd_91b0_vfb_0_0.v
// Description: Video format bridge top
//---------------------------------------------------------------------------
`timescale 1ps/1ps
(* DowngradeIPIdentifiedWarnings="yes" *)
module bd_91b0_vfb_0_0
#(
 parameter C_HS_LINE_RATE           = 280 ,
 parameter AXIS_TDATA_WIDTH         = 64 ,
 parameter AXIS_TUSER_WIDTH         = 96 ,
 parameter AXIS_TDEST_WIDTH         = 4 ,
 parameter VFB_TU_WIDTH             = 1 ,
 parameter VFB_DATA_TYPE            = 'h2B ,
 parameter VFB_FILTER_VC            = 0 ,
 parameter VFB_VC                   = 'h0 ,
 parameter VFB_REQ_BUFFER           = 1 ,
 parameter VFB_REQ_REORDER          = 1 ,
 parameter VFB_FIFO_DEPTH           = 2048 ,
 parameter VFB_FIFO_WIDTH           = 64 ,
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
bd_91b0_vfb_0_0_core inst (
  .s_axis_aclk    (s_axis_aclk    ),
  .s_axis_aresetn (s_axis_aresetn ),
  .s_axis_tready  (s_axis_tready  ),
  .s_axis_tvalid  (s_axis_tvalid  ),
  .s_axis_tlast   (s_axis_tlast   ),
  .s_axis_tdata   (s_axis_tdata   ),
  .s_axis_tkeep   (s_axis_tkeep   ),
  .s_axis_tuser   (s_axis_tuser   ),
  .s_axis_tdest   (s_axis_tdest   ),
 .mdt_tv (mdt_tv ),
 .mdt_tr (mdt_tr ),
 .sdt_tv (sdt_tv ),
 .sdt_tr (sdt_tr ),
 .vfb_tv (vfb_tv ),
 .vfb_tr (vfb_tr ),
  .vfb_arstn      (vfb_arstn      ),
  .vfb_clk        (vfb_clk        ),
  .vfb_ready      (vfb_ready      ),
  .vfb_valid      (vfb_valid      ),
  .vfb_eol        (vfb_eol        ),
  .vfb_sof        (vfb_sof        ),
  .vfb_vcdt       (vfb_vcdt       ),
  .vfb_data       (vfb_data       ),
  .vfb_full       (vfb_full       )
);
endmodule
