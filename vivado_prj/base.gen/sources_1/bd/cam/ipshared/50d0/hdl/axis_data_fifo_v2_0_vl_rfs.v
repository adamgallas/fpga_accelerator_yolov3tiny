// (c) Copyright 2012-2013, 2018 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
////////////////////////////////////////////////////////////
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axis_data_fifo_v2_0_3_top #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter         C_FAMILY           = "virtex7",
  parameter integer C_AXIS_TDATA_WIDTH = 8,
  parameter integer C_AXIS_TID_WIDTH   = 1,
  parameter integer C_AXIS_TDEST_WIDTH = 1,
  parameter integer C_AXIS_TUSER_WIDTH = 1,
  parameter [31:0]  C_AXIS_SIGNAL_SET  = 32'h03,
  // C_AXIS_SIGNAL_SET: each bit if enabled specifies which axis optional signals are present
  //   [0] => TREADY present
  //   [1] => TDATA present
  //   [2] => TSTRB present, TDATA must be present
  //   [3] => TKEEP present, TDATA must be present
  //   [4] => TLAST present
  //   [5] => TID present
  //   [6] => TDEST present
  //   [7] => TUSER present
  parameter integer C_FIFO_DEPTH       = 1024,
  //  Valid values 16,32,64,128,256,512,1024,2048,4096,...
  parameter integer C_FIFO_MODE  = 1,
  // Values:
  //   0 == N0 FIFO
  //   1 == Regular FIFO
  //   2 == Store and Forward FIFO (Packet Mode). Requires TLAST.
  parameter integer C_IS_ACLK_ASYNC    = 0,
  //  Enables async clock cross when 1.
  parameter integer C_SYNCHRONIZER_STAGE = 2,
  // Specifies the number of synchronization stages to implement
  parameter integer C_ACLKEN_CONV_MODE  = 0,
  // C_ACLKEN_CONV_MODE: Determines how to handle the clock enable pins during
  // clock conversion
  // 0 -- Clock enables not converted
  // 1 -- S_AXIS_ACLKEN can toggle,  M_AXIS_ACLKEN always high.
  // 2 -- S_AXIS_ACLKEN always high, M_AXIS_ACLKEN can toggle.
  // 3 -- S_AXIS_ACLKEN can toggle,  M_AXIS_ACLKEN can toggle.
  parameter         C_ECC_MODE         = 0, // 0 - no_ecc, 1 - en_ecc
  parameter         C_FIFO_MEMORY_TYPE = "auto",
  parameter         C_USE_ADV_FEATURES = "1000",
  parameter integer C_PROG_EMPTY_THRESH = 5,
  parameter integer C_PROG_FULL_THRESH = 11
  )
  (
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  // Slave side
  input  wire                            s_axis_aclk,
  input wire                             s_axis_aresetn,
  input  wire                            s_axis_aclken,
  input  wire                            s_axis_tvalid,
  output wire                            s_axis_tready,
  input  wire [C_AXIS_TDATA_WIDTH-1:0]   s_axis_tdata,
  input  wire [C_AXIS_TDATA_WIDTH/8-1:0] s_axis_tstrb,
  input  wire [C_AXIS_TDATA_WIDTH/8-1:0] s_axis_tkeep,
  input  wire                            s_axis_tlast,
  input  wire [C_AXIS_TID_WIDTH-1:0]     s_axis_tid,
  input  wire [C_AXIS_TDEST_WIDTH-1:0]   s_axis_tdest,
  input  wire [C_AXIS_TUSER_WIDTH-1:0]   s_axis_tuser,
  output wire                            almost_full,
  output wire                            prog_full,
  output wire [31:0]                     axis_wr_data_count,
  input  wire                            injectsbiterr ,
  input  wire                            injectdbiterr ,

  // Master side
  input  wire                            m_axis_aclk,
  input  wire                            m_axis_aclken,
  output wire                            m_axis_tvalid,
  input  wire                            m_axis_tready,
  output wire [C_AXIS_TDATA_WIDTH-1:0]   m_axis_tdata,
  output wire [C_AXIS_TDATA_WIDTH/8-1:0] m_axis_tstrb,
  output wire [C_AXIS_TDATA_WIDTH/8-1:0] m_axis_tkeep,
  output wire                            m_axis_tlast,
  output wire [C_AXIS_TID_WIDTH-1:0]     m_axis_tid,
  output wire [C_AXIS_TDEST_WIDTH-1:0]   m_axis_tdest,
  output wire [C_AXIS_TUSER_WIDTH-1:0]   m_axis_tuser,
  output wire                            almost_empty,
  output wire                            prog_empty,
  output wire [31:0]                     axis_rd_data_count,

  output wire                            sbiterr  ,
  output wire                            dbiterr
  );

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
`include "axis_infrastructure_v1_1_0.vh"



////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
// +---------------------------------------------------------------------------------------------------------------------+
// | Parameter name       | Data type          | Restrictions, if applicable                                             |
// |---------------------------------------------------------------------------------------------------------------------|
// | Description                                                                                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// +---------------------------------------------------------------------------------------------------------------------+
// | CDC_SYNC_STAGES      | Integer            | Range: 2 - 8. Default value = 2.                                        |
// |---------------------------------------------------------------------------------------------------------------------|
// | Specifies the number of synchronization stages on the CDC path.                                                     |
// | Applicable only if CLOCKING_MODE = "independent_clock"                                                              |
localparam integer LP_CDC_SYNC_STAGES = C_SYNCHRONIZER_STAGE;
// +---------------------------------------------------------------------------------------------------------------------+
// | CLOCKING_MODE        | String             | Allowed values: common_clock, independent_clock. Default value = common_clock.|
// |---------------------------------------------------------------------------------------------------------------------|
// | Designate whether AXI Stream FIFO is clocked with a common clock or with independent clocks-                        |
// |                                                                                                                     |
// |  "common_clock"- Common clocking; clock both write and read domain s_aclk                                           |
// |   "independent_clock"- Independent clocking; clock write domain with s_aclk and read domain with m_aclk             |
localparam LP_CLOCKING_MODE = C_IS_ACLK_ASYNC ? "independent_clock" : "common_clock"; 
// +---------------------------------------------------------------------------------------------------------------------+
// | ECC_MODE             | String             | Allowed values: no_ecc, en_ecc. Default value = no_ecc.                 |
// |---------------------------------------------------------------------------------------------------------------------|
// |                                                                                                                     |
// |  "no_ecc" - Disables ECC                                                                                            |
// |   "en_ecc" - Enables both ECC Encoder and Decoder                                                                   |
localparam LP_ECC_MODE = C_ECC_MODE ? "en_ecc" : "no_ecc";
// +---------------------------------------------------------------------------------------------------------------------+
// | FIFO_DEPTH           | Integer            | Range: 16 - 4194304. Default value = 2048.                              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Defines the AXI Stream FIFO Write Depth, must be power of two                                                       |
// TODO: GUI Range
localparam integer LP_FIFO_DEPTH = C_FIFO_DEPTH;
// +---------------------------------------------------------------------------------------------------------------------+
// | FIFO_MEMORY_TYPE     | String             | Allowed values: auto, block, distributed. Default value = auto.         |
// |---------------------------------------------------------------------------------------------------------------------|
// | Designate the fifo memory primitive (resource type) to use-                                                         |
// |                                                                                                                     |
// |  "auto"- Allow Vivado Synthesis to choose                                                                           |
// |   "block"- Block RAM FIFO                                                                                           |
// |   "distributed"- Distributed RAM FIFO                                                                               |
// |   "ultra"- URAM FIFO                                                                                                |
// TODO: new option?
localparam LP_FIFO_MEMORY_TYPE = C_FIFO_MEMORY_TYPE;
// +---------------------------------------------------------------------------------------------------------------------+
// | PACKET_FIFO          | String             | Allowed values: false, true. Default value = false.                     |
// |---------------------------------------------------------------------------------------------------------------------|
// |                                                                                                                     |
// |  "true"- Enables Packet FIFO mode                                                                                   |
// |   "false"- Disables Packet FIFO mode                                                                                |
localparam LP_PACKET_FIFO = C_FIFO_MODE == 2 ? "true" : "false";
// +---------------------------------------------------------------------------------------------------------------------+
// | PROG_EMPTY_THRESH    | Integer            | Range: 5 - 4194301. Default value = 10.                                 |
// |---------------------------------------------------------------------------------------------------------------------|
// | Specifies the minimum number of read words in the FIFO at or below which prog_empty is asserted.                    |
// |                                                                                                                     |
// |  Min_Value = 5                                                                                                      |
// |   Max_Value = FIFO_WRITE_DEPTH - 5                                                                                  |
// |                                                                                                                     |
// | NOTE: The default threshold value is dependent on default FIFO_WRITE_DEPTH value. If FIFO_WRITE_DEPTH value is      |
// | changed, ensure the threshold value is within the valid range though the programmable flags are not used.           |
localparam integer LP_PROG_EMPTY_THRESH = C_PROG_EMPTY_THRESH;
// +---------------------------------------------------------------------------------------------------------------------+
// | PROG_FULL_THRESH     | Integer            | Range: 5 - 4194301. Default value = 10.                                 |
// |---------------------------------------------------------------------------------------------------------------------|
// | Specifies the maximum number of write words in the FIFO at or above which prog_full is asserted.                    |
// |                                                                                                                     |
// |  Min_Value = 5 + CDC_SYNC_STAGES                                                                                    |
// |   Max_Value = FIFO_WRITE_DEPTH - 5                                                                                  |
// |                                                                                                                     |
// | NOTE: The default threshold value is dependent on default FIFO_WRITE_DEPTH value. If FIFO_WRITE_DEPTH value is      |
// | changed, ensure the threshold value is within the valid range though the programmable flags are not used.           |
localparam integer LP_PROG_FULL_THRESH = C_PROG_FULL_THRESH;
// +---------------------------------------------------------------------------------------------------------------------+
// | RD_DATA_COUNT_WIDTH  | Integer            | Range: 1 - 23. Default value = 1.                                       |
// |---------------------------------------------------------------------------------------------------------------------|
// | Specifies the width of rd_data_count_axis                                                                           |
localparam integer LP_RD_DATA_COUNT_WIDTH = $clog2(C_FIFO_DEPTH+1);
// +---------------------------------------------------------------------------------------------------------------------+
// | RELATED_CLOCKS       | Integer            | Range: 0 - 1. Default value = 0.                                        |
// |---------------------------------------------------------------------------------------------------------------------|
// | Specifies if the s_aclk and m_aclk are related having the same source but different clock ratios                    |
// | Applicable only if CLOCKING_MODE = "independent_clock"                                                              |
// TODO: Add Support?
localparam integer LP_RELATED_CLOCKS   = 0;
// +---------------------------------------------------------------------------------------------------------------------+
// | TDATA_WIDTH          | Integer            | Range: 8 - 2048. Default value = 32.                                    |
// |---------------------------------------------------------------------------------------------------------------------|
// | Defines the width of the TDATA port, s_axis_tdata and m_axis_tdata                                                  |
localparam integer LP_TDATA_WIDTH = C_AXIS_TDATA_WIDTH;
// +---------------------------------------------------------------------------------------------------------------------+
// | TDEST_WIDTH          | Integer            | Range: 1 - 32. Default value = 1.                                       |
// |---------------------------------------------------------------------------------------------------------------------|
// | Defines the width of the TDEST port, s_axis_tdest and m_axis_tdest                                                  |
localparam integer LP_TDEST_WIDTH = C_AXIS_TDEST_WIDTH;
// +---------------------------------------------------------------------------------------------------------------------+
// | TID_WIDTH            | Integer            | Range: 1 - 32. Default value = 1.                                       |
localparam integer LP_TID_WIDTH = C_AXIS_TID_WIDTH;
// |---------------------------------------------------------------------------------------------------------------------|
// | Defines the width of the ID port, s_axis_tid and m_axis_tid                                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// | TUSER_WIDTH          | Integer            | Range: 1 - 4086. Default value = 1.                                     |
localparam integer LP_TUSER_WIDTH = C_AXIS_TUSER_WIDTH;
// |---------------------------------------------------------------------------------------------------------------------|
// | Defines the width of the TUSER port, s_axis_tuser and m_axis_tuser                                                  |
// +---------------------------------------------------------------------------------------------------------------------+
// | USE_ADV_FEATURES     | String             | Default value = 1000.                                                   |
// |---------------------------------------------------------------------------------------------------------------------|
// | Enables almost_empty_axis, rd_data_count_axis, prog_empty_axis, almost_full_axis, wr_data_count_axis,               |
// | prog_full_axis sideband signals.                                                                                    |
// |                                                                                                                     |
// |  Setting USE_ADV_FEATURES[1]  to 1 enables prog_full flag;    Default value of this bit is 0                        |
// |   Setting USE_ADV_FEATURES[2]  to 1 enables wr_data_count;     Default value of this bit is 0                       |
// |   Setting USE_ADV_FEATURES[3]  to 1 enables almost_full flag;  Default value of this bit is 0                       |
// |   Setting USE_ADV_FEATURES[9]  to 1 enables prog_empty flag;   Default value of this bit is 0                       |
// |   Setting USE_ADV_FEATURES[10] to 1 enables rd_data_count;     Default value of this bit is 0                       |
// |   Setting USE_ADV_FEATURES[11] to 1 enables almost_empty flag; Default value of this bit is 0                       |
// |                                                                                                                     |
// | CAUTION: DO NOT change the default value of USE_ADV_FEATURES[12].                                                   |
localparam LP_USE_ADV_FEATURES = C_USE_ADV_FEATURES;
// +---------------------------------------------------------------------------------------------------------------------+
// | WR_DATA_COUNT_WIDTH  | Integer            | Range: 1 - 23. Default value = 1.                                       |
// |---------------------------------------------------------------------------------------------------------------------|
// | Specifies the width of wr_data_count_axis                                                                           |
// +---------------------------------------------------------------------------------------------------------------------+
localparam integer LP_WR_DATA_COUNT_WIDTH = $clog2(C_FIFO_DEPTH+1);

// Packet mode only valid if tlast is enabled.  Force to 0 if no TLAST
// present.
localparam integer LP_S_ACLKEN_CAN_TOGGLE = (C_ACLKEN_CONV_MODE == 1) || (C_ACLKEN_CONV_MODE == 3);
localparam integer LP_M_ACLKEN_CAN_TOGGLE = (C_ACLKEN_CONV_MODE == 2) || (C_ACLKEN_CONV_MODE == 3);


////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire                            d1_tvalid;
wire                            d1_tready;
wire [C_AXIS_TDATA_WIDTH-1:0]   d1_tdata;
wire [C_AXIS_TDATA_WIDTH/8-1:0] d1_tstrb;
wire [C_AXIS_TDATA_WIDTH/8-1:0] d1_tkeep;
wire                            d1_tlast;
wire [C_AXIS_TID_WIDTH-1:0]     d1_tid  ;
wire [C_AXIS_TDEST_WIDTH-1:0]   d1_tdest;
wire [C_AXIS_TUSER_WIDTH-1:0]   d1_tuser;

wire                            d2_tvalid;
wire                            d2_tready;
wire [C_AXIS_TDATA_WIDTH-1:0]   d2_tdata;
wire [C_AXIS_TDATA_WIDTH/8-1:0] d2_tstrb;
wire [C_AXIS_TDATA_WIDTH/8-1:0] d2_tkeep;
wire                            d2_tlast;
wire [C_AXIS_TID_WIDTH-1:0]     d2_tid  ;
wire [C_AXIS_TDEST_WIDTH-1:0]   d2_tdest;
wire [C_AXIS_TUSER_WIDTH-1:0]   d2_tuser;
wire                            m_aclk = C_IS_ACLK_ASYNC ? m_axis_aclk : s_axis_aclk;
wire                            m_aresetn;
wire [LP_WR_DATA_COUNT_WIDTH-1:0] wr_data_count;
wire [LP_RD_DATA_COUNT_WIDTH-1:0] rd_data_count;
////////////////////////////////////////////////////////////////////////////////
// BEGIN RTL
////////////////////////////////////////////////////////////////////////////////

generate
  if (C_IS_ACLK_ASYNC == 1 && LP_M_ACLKEN_CAN_TOGGLE) begin : gen_async_clock_and_reset

    reg s_aresetn_r = 1'b1;

    xpm_cdc_sync_rst #(
      .DEST_SYNC_FF    ( C_SYNCHRONIZER_STAGE ) 
    )
    inst_xpm_cdc_sync_rst (
      .src_rst  ( s_aresetn_r ) ,
      .dest_rst ( m_aresetn   ) ,
      .dest_clk ( m_axis_aclk ) 
    );

    always @(posedge s_axis_aclk) begin 
      s_aresetn_r <= s_axis_aresetn;
    end

  end else begin : gen_no_async_clock_and_reset
    assign m_aresetn          = s_axis_aresetn;
  end

  if (C_FIFO_MODE > 0) begin : gen_fifo

   axis_infrastructure_v1_1_0_util_aclken_converter_wrapper #(
     .C_TDATA_WIDTH         ( C_AXIS_TDATA_WIDTH     ) ,
     .C_TID_WIDTH           ( C_AXIS_TID_WIDTH       ) ,
     .C_TDEST_WIDTH         ( C_AXIS_TDEST_WIDTH     ) ,
     .C_TUSER_WIDTH         ( C_AXIS_TUSER_WIDTH     ) ,
     .C_S_ACLKEN_CAN_TOGGLE ( LP_S_ACLKEN_CAN_TOGGLE ) ,
     .C_M_ACLKEN_CAN_TOGGLE ( 0                      )
   )
   s_util_aclken_converter_wrapper_0 (
     .ACLK     ( s_axis_aclk    ) ,
     .ARESETN  ( s_axis_aresetn ) ,
     .S_ACLKEN ( s_axis_aclken  ) ,
     .S_VALID  ( s_axis_tvalid  ) ,
     .S_READY  ( s_axis_tready  ) ,
     .S_TDATA  ( s_axis_tdata   ) ,
     .S_TSTRB  ( s_axis_tstrb   ) ,
     .S_TKEEP  ( s_axis_tkeep   ) ,
     .S_TLAST  ( s_axis_tlast   ) ,
     .S_TID    ( s_axis_tid     ) ,
     .S_TDEST  ( s_axis_tdest   ) ,
     .S_TUSER  ( s_axis_tuser   ) ,
     .M_ACLKEN ( 1'b1           ) ,
     .M_VALID  ( d1_tvalid      ) ,
     .M_READY  ( d1_tready      ) ,
     .M_TDATA  ( d1_tdata       ) ,
     .M_TSTRB  ( d1_tstrb       ) ,
     .M_TKEEP  ( d1_tkeep       ) ,
     .M_TLAST  ( d1_tlast       ) ,
     .M_TID    ( d1_tid         ) ,
     .M_TDEST  ( d1_tdest       ) ,
     .M_TUSER  ( d1_tuser       )
   );


// XPM_FIFO instantiation template for AXI Stream FIFO configurations (2018.3)
// Refer to the targeted device family architecture libraries guide for XPM_FIFO documentation
// =======================================================================================================================
// Port usage table, organized as follows:
// +---------------------------------------------------------------------------------------------------------------------+
// | Port name      | Direction | Size, in bits                         | Domain  | Sense       | Handling if unused     |
// |---------------------------------------------------------------------------------------------------------------------|
// | Description                                                                                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// +---------------------------------------------------------------------------------------------------------------------+
// | almost_empty_axis| Output    | 1                                     | m_aclk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Almost Empty : When asserted, this signal indicates that only one more read can be performed before the FIFO goes to|
// | empty.                                                                                                              |
// +---------------------------------------------------------------------------------------------------------------------+
// | almost_full_axis| Output    | 1                                     | s_aclk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Almost Full: When asserted, this signal indicates that only one more write can be performed before the FIFO is full.|
// +---------------------------------------------------------------------------------------------------------------------+
// | dbiterr_axis   | Output    | 1                                     | m_aclk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Double Bit Error- Indicates that the ECC decoder detected a double-bit error and data in the FIFO core is corrupted.|
// +---------------------------------------------------------------------------------------------------------------------+
// | injectdbiterr_axis| Input     | 1                                     | s_aclk  | Active-high | Tie to 1'b0            |
// |---------------------------------------------------------------------------------------------------------------------|
// | Double Bit Error Injection- Injects a double bit error if the ECC feature is used.                                  |
// +---------------------------------------------------------------------------------------------------------------------+
// | injectsbiterr_axis| Input     | 1                                     | s_aclk  | Active-high | Tie to 1'b0            |
// |---------------------------------------------------------------------------------------------------------------------|
// | Single Bit Error Injection- Injects a single bit error if the ECC feature is used.                                  |
// +---------------------------------------------------------------------------------------------------------------------+
// | m_aclk         | Input     | 1                                     | NA      | Rising edge | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Master Interface Clock: All signals on master interface are sampled on the rising edge of this clock.               |
// +---------------------------------------------------------------------------------------------------------------------+
// | m_axis_tdata   | Output    | TDATA_WIDTH                           | m_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TDATA: The primary payload that is used to provide the data that is passing across the interface. The width         |
// | of the data payload is an integer number of bytes.                                                                  |
// +---------------------------------------------------------------------------------------------------------------------+
// | m_axis_tdest   | Output    | TDEST_WIDTH                           | m_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TDEST: Provides routing information for the data stream.                                                            |
// +---------------------------------------------------------------------------------------------------------------------+
// | m_axis_tid     | Output    | TID_WIDTH                             | m_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TID: The data stream identifier that indicates different streams of data.                                           |
// +---------------------------------------------------------------------------------------------------------------------+
// | m_axis_tkeep   | Output    | TDATA_WIDTH                           | m_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TKEEP: The byte qualifier that indicates whether the content of the associated byte of TDATA is processed           |
// | as part of the data stream. Associated bytes that have the TKEEP byte qualifier deasserted are null bytes           |
// | and can be removed from the data stream. For a 64-bit DATA, bit 0 corresponds to the least significant byte         |
// | on DATA, and bit 7 corresponds to the most significant byte. For example:                                           |
// |                                                                                                                     |
// |  KEEP[0] = 1b, DATA[7:0] is not a NULL byte                                                                         |
// |   KEEP[7] = 0b, DATA[63:56] is a NULL byte                                                                          |
// | .                                                                                                                   |
// +---------------------------------------------------------------------------------------------------------------------+
// | m_axis_tlast   | Output    | 1                                     | m_aclk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TLAST: Indicates the boundary of a packet.                                                                          |
// +---------------------------------------------------------------------------------------------------------------------+
// | m_axis_tready  | Input     | 1                                     | m_aclk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TREADY: Indicates that the slave can accept a transfer in the current cycle.                                        |
// +---------------------------------------------------------------------------------------------------------------------+
// | m_axis_tstrb   | Output    | TDATA_WIDTH                           | m_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TSTRB: The byte qualifier that indicates whether the content of the associated byte of TDATA is processed           |
// | as a data byte or a position byte. For a 64-bit DATA, bit 0 corresponds to the least significant byte on            |
// | DATA, and bit 0 corresponds to the least significant byte on DATA, and bit 7 corresponds to the most significant    |
// | byte. For example:                                                                                                  |
// |                                                                                                                     |
// |  STROBE[0] = 1b, DATA[7:0] is valid                                                                                 |
// |   STROBE[7] = 0b, DATA[63:56] is not valid                                                                          |
// | .                                                                                                                   |
// +---------------------------------------------------------------------------------------------------------------------+
// | m_axis_tuser   | Output    | TUSER_WIDTH                           | m_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TUSER: The user-defined sideband information that can be transmitted alongside the data stream.                     |
// +---------------------------------------------------------------------------------------------------------------------+
// | m_axis_tvalid  | Output    | 1                                     | m_aclk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TVALID: Indicates that the master is driving a valid transfer.                                                      |
// |                                                                                                                     |
// |  A transfer takes place when both TVALID and TREADY are asserted                                                    |
// | .                                                                                                                   |
// +---------------------------------------------------------------------------------------------------------------------+
// | prog_empty_axis| Output    | 1                                     | m_aclk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Programmable Empty- This signal is asserted when the number of words in the FIFO is less than or equal              |
// | to the programmable empty threshold value.                                                                          |
// | It is de-asserted when the number of words in the FIFO exceeds the programmable empty threshold value.              |
// +---------------------------------------------------------------------------------------------------------------------+
// | prog_full_axis | Output    | 1                                     | s_aclk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Programmable Full: This signal is asserted when the number of words in the FIFO is greater than or equal            |
// | to the programmable full threshold value.                                                                           |
// | It is de-asserted when the number of words in the FIFO is less than the programmable full threshold value.          |
// +---------------------------------------------------------------------------------------------------------------------+
// | rd_data_count_axis| Output    | RD_DATA_COUNT_WIDTH                   | m_aclk  | NA          | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Read Data Count- This bus indicates the number of words available for reading in the FIFO.                          |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_aclk         | Input     | 1                                     | NA      | Rising edge | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Slave Interface Clock: All signals on slave interface are sampled on the rising edge of this clock.                 |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_aresetn      | Input     | 1                                     | NA      | Active-low  | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Active low asynchronous reset.                                                                                      |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_axis_tdata   | Input     | TDATA_WIDTH                           | s_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TDATA: The primary payload that is used to provide the data that is passing across the interface. The width         |
// | of the data payload is an integer number of bytes.                                                                  |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_axis_tdest   | Input     | TDEST_WIDTH                           | s_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TDEST: Provides routing information for the data stream.                                                            |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_axis_tid     | Input     | TID_WIDTH                             | s_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TID: The data stream identifier that indicates different streams of data.                                           |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_axis_tkeep   | Input     | TDATA_WIDTH                           | s_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TKEEP: The byte qualifier that indicates whether the content of the associated byte of TDATA is processed           |
// | as part of the data stream. Associated bytes that have the TKEEP byte qualifier deasserted are null bytes           |
// | and can be removed from the data stream. For a 64-bit DATA, bit 0 corresponds to the least significant byte         |
// | on DATA, and bit 7 corresponds to the most significant byte. For example:                                           |
// |                                                                                                                     |
// |  KEEP[0] = 1b, DATA[7:0] is not a NULL byte                                                                         |
// |   KEEP[7] = 0b, DATA[63:56] is a NULL byte                                                                          |
// | .                                                                                                                   |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_axis_tlast   | Input     | 1                                     | s_aclk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TLAST: Indicates the boundary of a packet.                                                                          |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_axis_tready  | Output    | 1                                     | s_aclk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TREADY: Indicates that the slave can accept a transfer in the current cycle.                                        |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_axis_tstrb   | Input     | TDATA_WIDTH                           | s_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TSTRB: The byte qualifier that indicates whether the content of the associated byte of TDATA is processed           |
// | as a data byte or a position byte. For a 64-bit DATA, bit 0 corresponds to the least significant byte on            |
// | DATA, and bit 0 corresponds to the least significant byte on DATA, and bit 7 corresponds to the most significant    |
// | byte. For example:                                                                                                  |
// |                                                                                                                     |
// |  STROBE[0] = 1b, DATA[7:0] is valid                                                                                 |
// |   STROBE[7] = 0b, DATA[63:56] is not valid                                                                          |
// | .                                                                                                                   |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_axis_tuser   | Input     | TUSER_WIDTH                           | s_aclk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TUSER: The user-defined sideband information that can be transmitted alongside the data stream.                     |
// +---------------------------------------------------------------------------------------------------------------------+
// | s_axis_tvalid  | Input     | 1                                     | s_aclk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | TVALID: Indicates that the master is driving a valid transfer.                                                      |
// |                                                                                                                     |
// |  A transfer takes place when both TVALID and TREADY are asserted                                                    |
// | .                                                                                                                   |
// +---------------------------------------------------------------------------------------------------------------------+
// | sbiterr_axis   | Output    | 1                                     | m_aclk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Single Bit Error- Indicates that the ECC decoder detected and fixed a single-bit error.                             |
// +---------------------------------------------------------------------------------------------------------------------+
// | wr_data_count_axis| Output    | WR_DATA_COUNT_WIDTH                   | s_aclk  | NA          | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Write Data Count: This bus indicates the number of words written into the FIFO.                                     |
// +---------------------------------------------------------------------------------------------------------------------+
  // xpm_fifo_axis: AXI Stream FIFO
  // Xilinx Parameterized Macro, version 2018.3

  xpm_fifo_axis #(
     .CDC_SYNC_STAGES     ( LP_CDC_SYNC_STAGES     ) , // DECIMAL
     .CLOCKING_MODE       ( LP_CLOCKING_MODE       ) , // String
     .ECC_MODE            ( LP_ECC_MODE            ) , // String
     .FIFO_DEPTH          ( LP_FIFO_DEPTH          ) , // DECIMAL
     .FIFO_MEMORY_TYPE    ( LP_FIFO_MEMORY_TYPE    ) , // String
     .PACKET_FIFO         ( LP_PACKET_FIFO         ) , // String
     .PROG_EMPTY_THRESH   ( LP_PROG_EMPTY_THRESH   ) , // DECIMAL
     .PROG_FULL_THRESH    ( LP_PROG_FULL_THRESH    ) , // DECIMAL
     .RD_DATA_COUNT_WIDTH ( LP_RD_DATA_COUNT_WIDTH ) , // DECIMAL
     .RELATED_CLOCKS      ( LP_RELATED_CLOCKS      ) , // DECIMAL
     .TDATA_WIDTH         ( LP_TDATA_WIDTH         ) , // DECIMAL
     .TDEST_WIDTH         ( LP_TDEST_WIDTH         ) , // DECIMAL
     .TID_WIDTH           ( LP_TID_WIDTH           ) , // DECIMAL
     .TUSER_WIDTH         ( LP_TUSER_WIDTH         ) , // DECIMAL
     .USE_ADV_FEATURES    ( LP_USE_ADV_FEATURES    ) , // String
     .WR_DATA_COUNT_WIDTH ( LP_WR_DATA_COUNT_WIDTH )   // DECIMAL
  )
  xpm_fifo_axis_inst (
    // s_axis_aclk domain
     .s_aclk               ( s_axis_aclk    ) ,
     .s_aresetn            ( s_axis_aresetn ) ,
     .s_axis_tvalid        ( d1_tvalid      ) ,
     .s_axis_tready        ( d1_tready      ) ,
     // These signals have explicit tie-offs to 0 to allow synthesis tool to optimize unused bits in FIFO.
     .s_axis_tdata         ( C_AXIS_SIGNAL_SET[1] ? d1_tdata : {LP_TDATA_WIDTH{1'b0}}   ) ,
     .s_axis_tstrb         ( C_AXIS_SIGNAL_SET[2] ? d1_tstrb : {LP_TDATA_WIDTH/8{1'b0}} ) ,
     .s_axis_tkeep         ( C_AXIS_SIGNAL_SET[3] ? d1_tkeep : {LP_TDATA_WIDTH/8{1'b0}} ) ,
     .s_axis_tlast         ( C_AXIS_SIGNAL_SET[4] ? d1_tlast : 1'b0                     ) ,
     .s_axis_tid           ( C_AXIS_SIGNAL_SET[5] ? d1_tid   : {LP_TID_WIDTH{1'b0}}     ) ,
     .s_axis_tdest         ( C_AXIS_SIGNAL_SET[6] ? d1_tdest : {LP_TDEST_WIDTH{1'b0}}   ) ,
     .s_axis_tuser         ( C_AXIS_SIGNAL_SET[7] ? d1_tuser : {LP_TUSER_WIDTH{1'b0}}   ) ,
     .almost_full_axis     ( almost_full    ) ,
     .prog_full_axis       ( prog_full      ) ,
     .wr_data_count_axis   ( wr_data_count  ) ,
     .injectdbiterr_axis   ( injectdbiterr  ) ,
     .injectsbiterr_axis   ( injectsbiterr  ) ,
     // m_axis_aclk domain
     .m_aclk               ( m_aclk         ) ,
     .m_axis_tvalid        ( d2_tvalid      ) ,
     .m_axis_tready        ( d2_tready      ) ,
     .m_axis_tdata         ( d2_tdata       ) ,
     .m_axis_tstrb         ( d2_tstrb       ) ,
     .m_axis_tkeep         ( d2_tkeep       ) ,
     .m_axis_tlast         ( d2_tlast       ) ,
     .m_axis_tid           ( d2_tid         ) ,
     .m_axis_tdest         ( d2_tdest       ) ,
     .m_axis_tuser         ( d2_tuser       ) ,
     .almost_empty_axis    ( almost_empty   ) ,
     .prog_empty_axis      ( prog_empty     ) ,
     .rd_data_count_axis   ( rd_data_count  ) ,
     .sbiterr_axis         ( sbiterr        ) ,
     .dbiterr_axis         ( dbiterr        ) 
  );

  assign axis_wr_data_count = wr_data_count | 32'h0;
  assign axis_rd_data_count = rd_data_count | 32'h0;

  // End of xpm_fifo_axis_inst instantiation
   axis_infrastructure_v1_1_0_util_aclken_converter_wrapper #(
     .C_TDATA_WIDTH         ( C_AXIS_TDATA_WIDTH     ) ,
     .C_TID_WIDTH           ( C_AXIS_TID_WIDTH       ) ,
     .C_TDEST_WIDTH         ( C_AXIS_TDEST_WIDTH     ) ,
     .C_TUSER_WIDTH         ( C_AXIS_TUSER_WIDTH     ) ,
     .C_S_ACLKEN_CAN_TOGGLE (                      0 ) ,
     .C_M_ACLKEN_CAN_TOGGLE ( LP_M_ACLKEN_CAN_TOGGLE )
   )
   m_util_aclken_converter_wrapper_0 (
     .ACLK     ( m_aclk        ) ,
     .ARESETN  ( m_aresetn     ) ,
     .S_ACLKEN ( 1'b1          ) ,
     .S_VALID  ( d2_tvalid     ) ,
     .S_READY  ( d2_tready     ) ,
     // Restore default tieoffs here if necessary
     .S_TDATA  ( C_AXIS_SIGNAL_SET[1] ? d2_tdata : {LP_TDATA_WIDTH{1'b0}}   ) ,
     .S_TSTRB  ( C_AXIS_SIGNAL_SET[2] ? d2_tstrb : {LP_TDATA_WIDTH/8{1'b1}} ) ,
     .S_TKEEP  ( C_AXIS_SIGNAL_SET[3] ? d2_tkeep : {LP_TDATA_WIDTH/8{1'b1}} ) ,
     .S_TLAST  ( C_AXIS_SIGNAL_SET[4] ? d2_tlast : 1'b1                     ) ,
     .S_TID    ( C_AXIS_SIGNAL_SET[5] ? d2_tid   : {LP_TID_WIDTH{1'b0}}     ) ,
     .S_TDEST  ( C_AXIS_SIGNAL_SET[6] ? d2_tdest : {LP_TDEST_WIDTH{1'b0}}   ) ,
     .S_TUSER  ( C_AXIS_SIGNAL_SET[7] ? d2_tuser : {LP_TUSER_WIDTH{1'b0}}   ) ,
     .M_ACLKEN ( m_axis_aclken ) ,
     .M_VALID  ( m_axis_tvalid ) ,
     .M_READY  ( (C_AXIS_SIGNAL_SET[0] == 0) ? 1'b1 : m_axis_tready  ) ,
     .M_TDATA  ( m_axis_tdata  ) ,
     .M_TSTRB  ( m_axis_tstrb  ) ,
     .M_TKEEP  ( m_axis_tkeep  ) ,
     .M_TLAST  ( m_axis_tlast  ) ,
     .M_TID    ( m_axis_tid    ) ,
     .M_TDEST  ( m_axis_tdest  ) ,
     .M_TUSER  ( m_axis_tuser  ) 
   );
  end
  else begin : gen_fifo_passthru
   assign s_axis_tready   = (C_AXIS_SIGNAL_SET[0] == 0) ? 1'b1 : m_axis_tready ;
   assign m_axis_tvalid   = s_axis_tvalid ;
   assign m_axis_tdata    = s_axis_tdata  ;
   assign m_axis_tstrb    = s_axis_tstrb  ;
   assign m_axis_tkeep    = s_axis_tkeep  ;
   assign m_axis_tlast    = s_axis_tlast  ;
   assign m_axis_tid      = s_axis_tid    ;
   assign m_axis_tdest    = s_axis_tdest  ;
   assign m_axis_tuser    = s_axis_tuser  ;
   assign almost_full     = 1'b0;
   assign prog_full       = 1'b0;
   assign almost_empty     = 1'b0;
   assign prog_empty       = 1'b0;
   assign axis_wr_data_count = 32'b0;
   assign axis_rd_data_count = 32'b0;
   assign sbiterr = 1'b0;
   assign dbiterr = 1'b0;
  end
endgenerate

endmodule // axis_data_fifo

`default_nettype wire


