// (c) Copyright 2013 - 2015 Xilinx, Inc. All rights reserved.
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

`timescale 1ps/1ps
module bd_91b0_phy_0_hssio_rx_hssio_wiz_top #(
   parameter  C_DEVICE = "xcku115",
   parameter  C_EN_MULTI_INTF                        =  0,
   parameter  C_ENABLE_N_PINS                        =  1,      
   parameter  C_NUM_IO                               =  52,   //Indicates number of IO pins
   parameter  C_TEMPLATE                             =  0,   
   parameter  C_PLL_SHARE                            =  0,   
   parameter  C_USE_RIU_CLK_FROM_PLL                 = 1'b0,
   parameter  C_NUM_BS_CTRL                          =  8,    //Indicates number of BITSLICE_CONTROL primitives
   parameter  C_PLL0_CLK_SOURCE                      =  "IBUF_TO_PLL", //Input clock source selected by user
   parameter  C_PLL0_RX_EXTERNAL_CLK_TO_DATA         =  0,
   parameter  C_CLKIN_DIFF_EN                        =  0,      // Indicates whether input clock is single ended or differential
   parameter  C_INCLK_PIN                            =  100,    // Indicates the pin position of the Input Clock
   parameter [C_NUM_IO-1 :0] C_DIFF_EN               =  52'd0,  // Indicates whether the pin is differential or single ended
   parameter [C_NUM_IO-1 :0] C_TX_BITSLICE_EN        =  52'd0,  // Bitslice # for which TX bitslice should be enabled 
   parameter [C_NUM_IO-1 :0] C_RX_BITSLICE_EN        =  52'd0,  // Bitslice # for which RX bitslice should be enabled 
   parameter [C_NUM_IO-1 :0] C_BIDIR_BITSLICE_EN     =  52'd0,  // Bitslice # for which Bidir bitslice should be enabled 
   parameter [C_NUM_IO-1 :0] C_RX_PIN_EN             =  52'd0,  // Bitslice # for which RX bitslice should be enabled 
   parameter [C_NUM_IO-1 :0] C_ALL_RX_EN             =  52'd0,  // Indicates all the RX Bitslices which are user selected and inferred based on RX_BITSLICE0_EN
   parameter [C_NUM_IO-1 :0] C_BS_INIT_VAL           =  52'd0,  // INIT values for Bitslice's
   parameter  C_SIM_DEVICE                           = "ULTRASCALE", 
   parameter  C_SIM_VERSION                          = 1.0,

   parameter C_SERIALIZATION_FACTOR                  = 4,
   parameter C_EN_TX                                 = 0,     //Indicates that atleast one pin is TX
   parameter C_EN_RX                                 = 0,     //Indicates that atleast one pin is RX

   //Clocking Parameters
   parameter C_PLL0_DIV_FACTOR                       = 1,
   parameter C_PLL1_DIV_FACTOR                       = 1,
   parameter C_PLL0_CLKOUTPHY_MODE                   = "VCO",
   parameter C_PLL1_CLKOUTPHY_MODE                   = "VCO",
   parameter C_CLKIN_PERIOD                          =  1.000, 
   parameter C_PLL0_CLKFBOUT_MULT                    =  1,
   parameter C_PLL0_DIVCLK_DIVIDE                    =  1,
   parameter C_PLL0_CLKOUT1_DIVIDE                   =  1,
   parameter C_PLL1_CLKFBOUT_MULT                    =  1,
   parameter C_PLL1_DIVCLK_DIVIDE                    =  1,
   parameter C_SERIAL_MODE                           = "FALSE",

   //Bitslice Control Parameters
   parameter C_EN_BSC0 = 0,
   parameter C_EN_BSC1 = 0,
   parameter C_EN_BSC2 = 0,
   parameter C_EN_BSC3 = 0,
   parameter C_EN_BSC4 = 0,
   parameter C_EN_BSC5 = 0,
   parameter C_EN_BSC6 = 0,
   parameter C_EN_BSC7 = 0,
   parameter C_BSC_CTRL_CLK         = "EXTERNAL",
   parameter C_BSC_EN_DYN_ODLY_MODE = "FALSE",
   parameter C_BSC_IDLY_VT_TRACK    = "TRUE",
   parameter C_BSC_ODLY_VT_TRACK    = "TRUE",
   parameter C_BSC_QDLY_VT_TRACK    = "TRUE",
   parameter C_BSC_READ_IDLE_COUNT  = 6'h00,
   parameter C_BSC_REFCLK_SRC       = "PLLCLK",
   parameter C_BSC_ROUNDING_FACTOR  = 16,
   parameter C_BSC_RXGATE_EXTEND    = "FALSE",
   parameter C_BSC_RX_GATING        = "DISABLE",
   parameter C_BSC_SIM_SPEEDUP      = "FAST",
   parameter C_BSC_SELF_CALIBRATE   = "ENABLE",
   parameter C_DIV_MODE                              = "DIV2",
   parameter C_NIB0_EN_CLK_TO_EXT_NORTH              = 1'b0,
   parameter C_NIB0_EN_CLK_TO_EXT_SOUTH              = 1'b0,
   parameter C_NIB0_EN_OTHER_PCLK                    = 1'b0,
   parameter C_NIB0_EN_OTHER_NCLK                    = 1'b0,
   parameter C_NIB1_EN_CLK_TO_EXT_NORTH              = 1'b0,
   parameter C_NIB1_EN_CLK_TO_EXT_SOUTH              = 1'b0,
   parameter C_NIB1_EN_OTHER_PCLK                    = 1'b0,
   parameter C_NIB1_EN_OTHER_NCLK                    = 1'b0,
   parameter C_NIB2_EN_CLK_TO_EXT_NORTH              = 1'b0,
   parameter C_NIB2_EN_CLK_TO_EXT_SOUTH              = 1'b0,
   parameter C_NIB2_EN_OTHER_PCLK                    = 1'b0,
   parameter C_NIB2_EN_OTHER_NCLK                    = 1'b0,
   parameter C_NIB3_EN_CLK_TO_EXT_NORTH              = 1'b0,
   parameter C_NIB3_EN_CLK_TO_EXT_SOUTH              = 1'b0,
   parameter C_NIB3_EN_OTHER_PCLK                    = 1'b0,
   parameter C_NIB3_EN_OTHER_NCLK                    = 1'b0,
   parameter C_NIB4_EN_CLK_TO_EXT_NORTH              = 1'b0,
   parameter C_NIB4_EN_CLK_TO_EXT_SOUTH              = 1'b0,
   parameter C_NIB4_EN_OTHER_PCLK                    = 1'b0,
   parameter C_NIB4_EN_OTHER_NCLK                    = 1'b0,
   parameter C_NIB5_EN_CLK_TO_EXT_NORTH              = 1'b0,
   parameter C_NIB5_EN_CLK_TO_EXT_SOUTH              = 1'b0,
   parameter C_NIB5_EN_OTHER_PCLK                    = 1'b0,
   parameter C_NIB5_EN_OTHER_NCLK                    = 1'b0,
   parameter C_NIB6_EN_CLK_TO_EXT_NORTH              = 1'b0,
   parameter C_NIB6_EN_CLK_TO_EXT_SOUTH              = 1'b0,
   parameter C_NIB6_EN_OTHER_PCLK                    = 1'b0,
   parameter C_NIB6_EN_OTHER_NCLK                    = 1'b0,
   parameter C_NIB7_EN_CLK_TO_EXT_SOUTH              = 1'b0,
   parameter C_NIB7_EN_CLK_TO_EXT_NORTH              = 1'b0,
   parameter C_NIB7_EN_OTHER_PCLK                    = 1'b0,
   parameter C_NIB7_EN_OTHER_NCLK                    = 1'b0,
   parameter C_ENABLE_RIU_SPLIT                      = "FALSE",
   parameter C_EN_RIU_OR0                            = "FALSE",
   parameter C_EN_RIU_OR1                            = "FALSE",
   parameter C_EN_RIU_OR2                            = "FALSE",
   parameter C_EN_RIU_OR3                            = "FALSE",

// TX bitslice parameters
   parameter        C_CLK_FWD_BITSLICE_NO   =      0,  // Clock Forward bitslice #
   parameter        C_CLK_FWD_PHASE         =      0,  // Clock forward phase  
   parameter        C_TX_DATA_PHASE         =      0,  // TX Data phase  
   parameter   [51:0] C_CLK_FWD_ENABLE        =   52'd0,  // Clock forward phase  
   parameter        C_TX_DELAY_FORMAT       =   "TIME",
   parameter        C_TX_IS_CLK_INVERTED    =   1'b0,
   parameter        C_TX_IS_RST_DLY_INVERTED    = 1'b0,
   parameter        C_TX_IS_RST_INVERTED        = 1'b0,
   parameter        C_TX_NATIVE_ODELAY_BYPASS   = "FALSE",

// TX/Bidir TX bitslice parameters
   parameter        C_TX_PREEMPHASIS_S      =  "NONE",  // Pre emphasis enablement
   parameter        C_TX_PREEMPHASIS_D      =  "NONE",  // Pre emphasis enablement
   parameter        C_TX_DELAY_TYPE0        =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE1        =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE2        =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE3        =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE4        =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE5        =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE6        =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE7        =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE8        =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE9        =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE10       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE11       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE12       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE13       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE14       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE15       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE16       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE17       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE18       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE19       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE20       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE21       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE22       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE23       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE24       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE25       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE26       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE27       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE28       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE29       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE30       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE31       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE32       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE33       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE34       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE35       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE36       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE37       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE38       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE39       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE40       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE41       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE42       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE43       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE44       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE45       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE46       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE47       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE48       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE49       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE50       =  0, // TX delay type
   parameter        C_TX_DELAY_TYPE51       =  0, // TX delay type
   parameter        [11:0] C_TX_DELAY_VALUE0       =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE1       =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE2       =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE3       =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE4       =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE5       =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE6       =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE7       =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE8       =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE9       =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE10      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE11      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE12      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE13      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE14      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE15      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE16      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE17      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE18      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE19      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE20      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE21      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE22      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE23      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE24      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE25      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE26      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE27      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE28      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE29      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE30      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE31      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE32      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE33      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE34      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE35      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE36      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE37      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE38      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE39      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE40      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE41      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE42      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE43      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE44      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE45      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE46      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE47      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE48      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE49      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE50      =    'd0,  // TX delay value
   parameter        [11:0] C_TX_DELAY_VALUE51      =    'd0,  // TX delay value
   parameter               C_TX_REFCLK_FREQ        =    200,  // TX clock frequency

// Rx parameters
   parameter [7:0]  C_RX_BITSLICE0_EN            =  8'd0,   // RX bitslice0 enablement for each nibble 
   parameter [15:0] C_RX_STROBE_EN               =  16'd0,  // Strobe enable position for RX bitslice
   parameter        C_RX_DELAY_CASCADE           =  1'b0,   // Cascased RX delay enablement  
   parameter        C_RX_DELAY_FORMAT            = "TIME",
   parameter        C_RX_FIFO_SYNC_MODE          = "FALSE",
   parameter        C_RX_IS_CLK_INVERTED         =  1'b0,
   parameter        C_RX_IS_CLK_EXT_INVERTED     =  1'b0,
   parameter        C_RX_IS_RST_DLY_EXT_INVERTED = 1'b0,
   parameter        C_RX_IS_RST_DLY_INVERTED     = 1'b0,
   parameter        C_RX_IS_RST_INVERTED         = 1'b0,
   parameter        C_RX_DELAY_TYPE0        =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE1        =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE2        =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE3        =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE4        =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE5        =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE6        =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE7        =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE8        =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE9        =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE10       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE11       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE12       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE13       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE14       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE15       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE16       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE17       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE18       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE19       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE20       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE21       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE22       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE23       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE24       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE25       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE26       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE27       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE28       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE29       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE30       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE31       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE32       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE33       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE34       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE35       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE36       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE37       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE38       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE39       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE40       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE41       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE42       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE43       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE44       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE45       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE46       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE47       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE48       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE49       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE50       =  0, // RX delay type
   parameter        C_RX_DELAY_TYPE51       =  0, // RX delay type
   parameter        [11:0] C_RX_DELAY_VALUE0       =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE1       =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE2       =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE3       =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE4       =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE5       =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE6       =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE7       =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE8       =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE9       =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE10      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE11      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE12      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE13      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE14      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE15      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE16      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE17      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE18      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE19      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE20      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE21      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE22      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE23      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE24      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE25      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE26      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE27      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE28      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE29      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE30      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE31      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE32      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE33      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE34      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE35      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE36      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE37      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE38      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE39      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE40      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE41      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE42      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE43      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE44      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE45      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE46      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE47      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE48      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE49      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE50      =    'd0,  // RX delay value
   parameter        [11:0] C_RX_DELAY_VALUE51      =    'd0,  // RX delay value

   parameter        [11:0] C_RX_DELAY_VALUE_EXT0   =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT1   =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT2   =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT3   =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT4   =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT5   =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT6   =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT7   =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT8   =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT9   =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT10  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT11  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT12  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT13  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT14  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT15  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT16  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT17  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT18  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT19  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT20  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT21  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT22  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT23  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT24  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT25  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT26  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT27  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT28  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT29  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT30  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT31  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT32  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT33  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT34  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT35  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT36  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT37  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT38  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT39  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT40  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT41  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT42  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT43  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT44  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT45  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT46  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT47  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT48  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT49  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT50  =    'd0,  // RX extended delay value
   parameter        [11:0] C_RX_DELAY_VALUE_EXT51  =    'd0,  // RX extended delay value
   parameter               C_RX_REFCLK_FREQ        =    200,  // RX clock frequency
   parameter               C_FIFO_SYNC_MODE        =   1'b0,  // RX clock frequency

// RX/Bidir-RX parameters
   parameter [7:0]  C_BITSLIP_VAL           =  8'h00,           // Bitslip value
   parameter        C_BITSLIP_MODE          =  "SLIP_PER_BIT",  // Bitslip mode
   parameter        C_ENABLE_BITSLIP        =  0,               
   parameter        C_ENABLE_DATA_BITSLIP   =  0,               
		
// Fifo Write clock parameters		
   parameter        C_PLL0_FIFO_WRITE_CLK_EN  =   1'b1,  // Fifo Write Clock

      parameter         C_EN_TX_TRI                    =   0,     // TX     Tristate
      parameter         C_DATA_TRI                     =   0,     // Data   Tristate
      parameter         C_CLOCK_TRI                    =   0,     // Clock  Tristate
// Bidir Parameters
      parameter         C_BIDIR_FIFO_SYNC_MODE         = "FALSE",
      parameter         C_BIDIR_RX_DELAY_FORMAT        = "TIME",
      parameter         C_BIDIR_TX_DELAY_FORMAT        = "TIME",
      parameter         C_BIDIR_IS_RX_CLK_INVERTED     = 1'b0,
      parameter         C_BIDIR_IS_RX_RST_DLY_INVERTED = 1'b0,
      parameter         C_BIDIR_IS_RX_RST_INVERTED     = 1'b0,
      parameter         C_BIDIR_IS_TX_CLK_INVERTED     = 1'b0,
      parameter         C_BIDIR_IS_TX_RST_DLY_INVERTED = 1'b0,
      parameter         C_BIDIR_IS_TX_RST_INVERTED     = 1'b0,

   parameter        C_DATA_PIN_EN     =       1,
// TX BITSLICE TRI Parameters
   parameter [7:0]  TX_BITSLICE_TRI_EN      = 8'd0, // TX Bitslice tri en
   parameter        C_TX_TRI_DELAY_FORMAT   =  "TIME",
   parameter        C_TX_TRI_INIT           =  1'b1,
   parameter        C_TX_TRI_IS_CLK_INVERTED        =  1'b0,
   parameter        C_TX_TRI_IS_RST_DLY_INVERTED    =  1'b0,
   parameter        C_TX_TRI_IS_RST_INVERTED        =  1'b0,
   parameter        C_TX_TRI_OUTPUT_PHASE_90        =  "FALSE",
   parameter        C_TX_TRI_DELAY_TYPE0            =  0, // TX delay type
   parameter        C_TX_TRI_DELAY_TYPE1            =  0, // TX delay type
   parameter        C_TX_TRI_DELAY_TYPE2            =  0, // TX delay type
   parameter        C_TX_TRI_DELAY_TYPE3            =  0, // TX delay type
   parameter        C_TX_TRI_DELAY_TYPE4            =  0, // TX delay type
   parameter        C_TX_TRI_DELAY_TYPE5            =  0, // TX delay type                   
   parameter        C_TX_TRI_DELAY_TYPE6            =  0, // TX delay type
   parameter        C_TX_TRI_DELAY_TYPE7            =  0, // TX delay type                   

   parameter  [11:0]      C_TX_TRI_DELAY_VALUE0       =    'd0,  // TX delay value
   parameter  [11:0]      C_TX_TRI_DELAY_VALUE1       =    'd0,  // TX delay value
   parameter  [11:0]      C_TX_TRI_DELAY_VALUE2       =    'd0,  // TX delay value
   parameter  [11:0]      C_TX_TRI_DELAY_VALUE3       =    'd0,  // TX delay value
   parameter  [11:0]      C_TX_TRI_DELAY_VALUE4       =    'd0,  // TX delay value
   parameter  [11:0]      C_TX_TRI_DELAY_VALUE5       =    'd0,  // TX delay value
   parameter  [11:0]      C_TX_TRI_DELAY_VALUE6       =    'd0,  // TX delay value
   parameter  [11:0]      C_TX_TRI_DELAY_VALUE7       =    'd0,   // TX delay value
   parameter              C_TX_TRI_NATIVE_ODELAY_BYPASS   = "FALSE",

   parameter [7:0]  C_INV_RX_CLK                =  8'b0,
   parameter        C_PLL0_CLK0_PHASE           =  0.000, 
   parameter        C_PLL0_CLK1_PHASE           =  0.000, 
   parameter        C_PLL1_CLK0_PHASE           =  0.000, 
   parameter        C_PLL1_CLK1_PHASE           =  0.000
)
(
   //IO BUF Interface
   input                      clkin_from_pins_p,    //Differential input clock from pins
   input                      clkin_from_pins_n,
   input                      clkin_from_pins,      //Single ended input clock from pins
   input                      rst_in,
   input                      riu_clk_in,
   input                      app_clk,
   input                      multi_intf_lock_in,
   output                     intf_rdy,

   input  [C_DATA_PIN_EN-1:0] lptx_t,
   input  [C_DATA_PIN_EN-1:0] lptx_i_p,
   input  [C_DATA_PIN_EN-1:0] lptx_i_n,

   input  [C_DATA_PIN_EN-1:0] hs_rx_disable,
   input  [C_DATA_PIN_EN-1:0] lp_rx_disable,
   output [C_DATA_PIN_EN-1:0] lp_rx_o_p,
   output [C_DATA_PIN_EN-1:0] lp_rx_o_n,

   output                     clk_from_ibuf,              //clock output from IBUF
   
   output                     data_to_pin0,               //Data output from buffers to pins
   output                     data_to_pin1,               //Data output from buffers to pins
   output                     data_to_pin2,               //Data output from buffers to pins
   output                     data_to_pin3,               //Data output from buffers to pins
   output                     data_to_pin4,               //Data output from buffers to pins
   output                     data_to_pin5,               //Data output from buffers to pins
   output                     data_to_pin6,               //Data output from buffers to pins
   output                     data_to_pin7,               //Data output from buffers to pins
   output                     data_to_pin8,               //Data output from buffers to pins
   output                     data_to_pin9,               //Data output from buffers to pins
   output                     data_to_pin10,              //Data output from buffers to pins
   output                     data_to_pin11,              //Data output from buffers to pins
   output                     data_to_pin12,              //Data output from buffers to pins
   output                     data_to_pin13,              //Data output from buffers to pins
   output                     data_to_pin14,              //Data output from buffers to pins
   output                     data_to_pin15,              //Data output from buffers to pins
   output                     data_to_pin16,              //Data output from buffers to pins
   output                     data_to_pin17,              //Data output from buffers to pins
   output                     data_to_pin18,              //Data output from buffers to pins
   output                     data_to_pin19,              //Data output from buffers to pins
   output                     data_to_pin20,              //Data output from buffers to pins
   output                     data_to_pin21,              //Data output from buffers to pins
   output                     data_to_pin22,              //Data output from buffers to pins
   output                     data_to_pin23,              //Data output from buffers to pins
   output                     data_to_pin24,              //Data output from buffers to pins
   output                     data_to_pin25,              //Data output from buffers to pins
   output                     data_to_pin26,              //Data output from buffers to pins
   output                     data_to_pin27,              //Data output from buffers to pins
   output                     data_to_pin28,              //Data output from buffers to pins
   output                     data_to_pin29,              //Data output from buffers to pins
   output                     data_to_pin30,              //Data output from buffers to pins
   output                     data_to_pin31,              //Data output from buffers to pins
   output                     data_to_pin32,              //Data output from buffers to pins
   output                     data_to_pin33,              //Data output from buffers to pins
   output                     data_to_pin34,              //Data output from buffers to pins
   output                     data_to_pin35,              //Data output from buffers to pins
   output                     data_to_pin36,              //Data output from buffers to pins
   output                     data_to_pin37,              //Data output from buffers to pins
   output                     data_to_pin38,              //Data output from buffers to pins
   output                     data_to_pin39,              //Data output from buffers to pins
   output                     data_to_pin40,              //Data output from buffers to pins
   output                     data_to_pin41,              //Data output from buffers to pins
   output                     data_to_pin42,              //Data output from buffers to pins
   output                     data_to_pin43,              //Data output from buffers to pins
   output                     data_to_pin44,              //Data output from buffers to pins
   output                     data_to_pin45,              //Data output from buffers to pins
   output                     data_to_pin46,              //Data output from buffers to pins
   output                     data_to_pin47,              //Data output from buffers to pins
   output                     data_to_pin48,              //Data output from buffers to pins
   output                     data_to_pin49,              //Data output from buffers to pins
   output                     data_to_pin50,              //Data output from buffers to pins
   output                     data_to_pin51,              //Data output from buffers to pins
   input                      data_from_pin0,             //Data input to buffers from pins
   input                      data_from_pin1,             //Data input to buffers from pins
   input                      data_from_pin2,             //Data input to buffers from pins
   input                      data_from_pin3,             //Data input to buffers from pins
   input                      data_from_pin4,             //Data input to buffers from pins
   input                      data_from_pin5,             //Data input to buffers from pins
   input                      data_from_pin6,             //Data input to buffers from pins
   input                      data_from_pin7,             //Data input to buffers from pins
   input                      data_from_pin8,             //Data input to buffers from pins
   input                      data_from_pin9,             //Data input to buffers from pins
   input                      data_from_pin10,            //Data input to buffers from pins
   input                      data_from_pin11,            //Data input to buffers from pins
   input                      data_from_pin12,            //Data input to buffers from pins
   input                      data_from_pin13,            //Data input to buffers from pins
   input                      data_from_pin14,            //Data input to buffers from pins
   input                      data_from_pin15,            //Data input to buffers from pins
   input                      data_from_pin16,            //Data input to buffers from pins
   input                      data_from_pin17,            //Data input to buffers from pins
   input                      data_from_pin18,            //Data input to buffers from pins
   input                      data_from_pin19,            //Data input to buffers from pins
   input                      data_from_pin20,            //Data input to buffers from pins
   input                      data_from_pin21,            //Data input to buffers from pins
   input                      data_from_pin22,            //Data input to buffers from pins
   input                      data_from_pin23,            //Data input to buffers from pins
   input                      data_from_pin24,            //Data input to buffers from pins
   input                      data_from_pin25,            //Data input to buffers from pins
   input                      data_from_pin26,            //Data input to buffers from pins
   input                      data_from_pin27,            //Data input to buffers from pins
   input                      data_from_pin28,            //Data input to buffers from pins
   input                      data_from_pin29,            //Data input to buffers from pins
   input                      data_from_pin30,            //Data input to buffers from pins
   input                      data_from_pin31,            //Data input to buffers from pins
   input                      data_from_pin32,            //Data input to buffers from pins
   input                      data_from_pin33,            //Data input to buffers from pins
   input                      data_from_pin34,            //Data input to buffers from pins
   input                      data_from_pin35,            //Data input to buffers from pins
   input                      data_from_pin36,            //Data input to buffers from pins
   input                      data_from_pin37,            //Data input to buffers from pins
   input                      data_from_pin38,            //Data input to buffers from pins
   input                      data_from_pin39,            //Data input to buffers from pins
   input                      data_from_pin40,            //Data input to buffers from pins
   input                      data_from_pin41,            //Data input to buffers from pins
   input                      data_from_pin42,            //Data input to buffers from pins
   input                      data_from_pin43,            //Data input to buffers from pins
   input                      data_from_pin44,            //Data input to buffers from pins
   input                      data_from_pin45,            //Data input to buffers from pins
   input                      data_from_pin46,            //Data input to buffers from pins
   input                      data_from_pin47,            //Data input to buffers from pins
   input                      data_from_pin48,            //Data input to buffers from pins
   input                      data_from_pin49,            //Data input to buffers from pins
   input                      data_from_pin50,            //Data input to buffers from pins
   input                      data_from_pin51,            //Data input to buffers from pins
   inout                      data_to_from_pin0,          //Bidirectional Data to/from pins
   inout                      data_to_from_pin1,          //Bidirectional Data to/from pins
   inout                      data_to_from_pin2,          //Bidirectional Data to/from pins
   inout                      data_to_from_pin3,          //Bidirectional Data to/from pins
   inout                      data_to_from_pin4,          //Bidirectional Data to/from pins
   inout                      data_to_from_pin5,          //Bidirectional Data to/from pins
   inout                      data_to_from_pin6,          //Bidirectional Data to/from pins
   inout                      data_to_from_pin7,          //Bidirectional Data to/from pins
   inout                      data_to_from_pin8,          //Bidirectional Data to/from pins
   inout                      data_to_from_pin9,          //Bidirectional Data to/from pins
   inout                      data_to_from_pin10,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin11,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin12,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin13,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin14,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin15,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin16,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin17,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin18,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin19,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin20,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin21,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin22,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin23,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin24,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin25,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin26,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin27,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin28,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin29,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin30,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin31,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin32,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin33,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin34,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin35,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin36,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin37,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin38,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin39,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin40,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin41,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin42,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin43,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin44,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin45,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin46,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin47,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin48,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin49,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin50,         //Bidirectional Data to/from pins
   inout                      data_to_from_pin51,         //Bidirectional Data to/from pins
   //Clock Reset Interface
   input     [6:0]  daddr,
   input            dclk,
   input            den,
   input     [15:0] di,
   input            dwe,
   output    [15:0] do_out,
   output           drdy,
   output            pll0_clkout0_out,
   output            pll0_clkout1_out,
   output            pll1_clkout0_out,
   output            pll0_locked_out,
   output            pll1_locked_out,
   output            rst_seq_done_out,
   input             bs_rst_dphy_in,

   //Bitslice Control Interface
   output            n0_dly_rdy_out,
   output            n0_vtc_rdy_out,
   input             n0_en_vtc_in,
   input      [5:0]  n01_riu_addr_in,
   input      [1:0]  n01_riu_nibble_sel_in,
   input      [15:0] n01_riu_wr_data_in,
   input             n01_riu_wr_en_in,
   output     [15:0] n01_riu_rd_data_out,
   output            n01_riu_valid_out,
   input      [5:0]  n0_riu_addr_in,
   input             n0_riu_nibble_sel_in,
   input      [15:0] n0_riu_wr_data_in,
   input             n0_riu_wr_en_in,
   output     [15:0] n0_riu_rd_data_out,
   output            n0_riu_valid_out,
   input      [5:0]  n1_riu_addr_in,
   input             n1_riu_nibble_sel_in,
   input      [15:0] n1_riu_wr_data_in,
   input             n1_riu_wr_en_in,
   output     [15:0] n1_riu_rd_data_out,
   output            n1_riu_valid_out,
   input      [3:0]  n0_tbyte_in,

   output            n1_dly_rdy_out,
   output            n1_vtc_rdy_out,
   input             n1_en_vtc_in,
   input      [3:0]  n1_tbyte_in,

   output            n2_dly_rdy_out,
   output            n2_vtc_rdy_out,
   input             n2_en_vtc_in,
   input     [5:0]   n23_riu_addr_in,
   input     [1:0]   n23_riu_nibble_sel_in,
   input     [15:0]  n23_riu_wr_data_in,
   input             n23_riu_wr_en_in,
   output    [15:0]  n23_riu_rd_data_out,
   output            n23_riu_valid_out,
   input      [5:0]  n2_riu_addr_in,
   input             n2_riu_nibble_sel_in,
   input      [15:0] n2_riu_wr_data_in,
   input             n2_riu_wr_en_in,
   output     [15:0] n2_riu_rd_data_out,
   output            n2_riu_valid_out,
   input      [5:0]  n3_riu_addr_in,
   input             n3_riu_nibble_sel_in,
   input      [15:0] n3_riu_wr_data_in,
   input             n3_riu_wr_en_in,
   output     [15:0] n3_riu_rd_data_out,
   output            n3_riu_valid_out,
   input     [3:0]   n2_tbyte_in,

   output            n3_dly_rdy_out,
   output            n3_vtc_rdy_out,
   input             n3_en_vtc_in,
   input      [3:0]  n3_tbyte_in,

   output            n4_dly_rdy_out,
   output            n4_vtc_rdy_out,
   input             n4_en_vtc_in,
   input      [5:0]  n45_riu_addr_in,
   input      [1:0]  n45_riu_nibble_sel_in,
   input      [15:0] n45_riu_wr_data_in,
   input             n45_riu_wr_en_in,
   output     [15:0] n45_riu_rd_data_out,
   output            n45_riu_valid_out,
   input      [5:0]  n4_riu_addr_in,
   input             n4_riu_nibble_sel_in,
   input      [15:0] n4_riu_wr_data_in,
   input             n4_riu_wr_en_in,
   output     [15:0] n4_riu_rd_data_out,
   output            n4_riu_valid_out,
   input      [5:0]  n5_riu_addr_in,
   input             n5_riu_nibble_sel_in,
   input      [15:0] n5_riu_wr_data_in,
   input             n5_riu_wr_en_in,
   output     [15:0] n5_riu_rd_data_out,
   output            n5_riu_valid_out,
   input      [3:0]  n4_tbyte_in,

   output            n5_dly_rdy_out,
   output            n5_vtc_rdy_out,
   input             n5_en_vtc_in,
   input      [3:0]  n5_tbyte_in,

   output            n6_dly_rdy_out,
   output            n6_vtc_rdy_out,
   input             n6_en_vtc_in,
   input     [5:0]   n67_riu_addr_in,
   input     [1:0]   n67_riu_nibble_sel_in,
   input     [15:0]  n67_riu_wr_data_in,
   input             n67_riu_wr_en_in,
   output    [15:0]  n67_riu_rd_data_out,
   output            n67_riu_valid_out,
   input      [5:0]  n6_riu_addr_in,
   input             n6_riu_nibble_sel_in,
   input      [15:0] n6_riu_wr_data_in,
   input             n6_riu_wr_en_in,
   output     [15:0] n6_riu_rd_data_out,
   output            n6_riu_valid_out,
   input      [5:0]  n7_riu_addr_in,
   input             n7_riu_nibble_sel_in,
   input      [15:0] n7_riu_wr_data_in,
   input             n7_riu_wr_en_in,
   output     [15:0] n7_riu_rd_data_out,
   output            n7_riu_valid_out,
   input      [3:0]  n6_tbyte_in,

   output            n7_dly_rdy_out,
   output            n7_vtc_rdy_out,
   input             n7_en_vtc_in,
   input      [3:0]  n7_tbyte_in,
   input      [3:0]  n0_phy_rden_in,
   input      [3:0]  n1_phy_rden_in,
   input      [3:0]  n2_phy_rden_in,
   input      [3:0]  n3_phy_rden_in,
   input      [3:0]  n4_phy_rden_in,
   input      [3:0]  n5_phy_rden_in,
   input      [3:0]  n6_phy_rden_in,
   input      [3:0]  n7_phy_rden_in,

   //-----------------------------------------------------
   // Shared PLL Signals
   //-----------------------------------------------------
 
   input             shared_pll0_clkout0_in,
   input             shared_pll1_clkout0_in,
   input             shared_pll0_clkoutphy_in,
   input             shared_pll1_clkoutphy_in,
   input             shared_pll0_locked_in,
   input             shared_pll1_locked_in,
   output            shared_pll0_clkoutphy_out,
   output            shared_pll1_clkoutphy_out,

   //-----------------------------------------------------
   // Common Signals
   //-----------------------------------------------------
   
   // TX signals
   input                           bs_tx_clk_in,              // Clock used to sample LOAD, CE, INC
   // RX signals 
   input                           bs_rx_clk_in,              // Clock used to sample LOAD, CE, INC
   
   // RXCascade signals, For bidir RX cascade delays are not supported
   input                           bs_clk_ext_in,              // Optional extended (cascaded delay) delay clock used to sample LOAD, CE, and INC
   
   // bidir TX signals
   input                           bs_rxtx_tx_clk_in,         // Bidir TX Clock used to sample LOAD, CE, INC
   
   // Bidir-RX signals 
   input                           bs_rxtx_rx_clk_in,         // RX Clock used to sample LOAD, CE, INC
   
   //Tristate signals
   input                           bs_tri_clk_in,              // Clock input
   
   //-----------------------------------------------------
   // Bitslice0 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs0_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs0_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs0_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs0_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically 
   output [8:0]                    bs0_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs0_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW.
   input                           bs0_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs0_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs0_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   
   // RX/Bidir-RX Delay control signals
   input                           bs0_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock 
   output [8:0]                    bs0_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs0_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs0_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs0_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs0_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs0_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs0_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs0_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs0_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs0_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs0_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs0_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs0_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs0_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   
   //-----------------------------------------------------
   // Bitslice1 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs1_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs1_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs1_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs1_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs1_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs1_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs1_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs1_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs1_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs1_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs1_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs1_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs1_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs1_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs1_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs1_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs1_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs1_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs1_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs1_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs1_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs1_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs1_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs1_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice2 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs2_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs2_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs2_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs2_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs2_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs2_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs2_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs2_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs2_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs2_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs2_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs2_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs2_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs2_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs2_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs2_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs2_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs2_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs2_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs2_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs2_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs2_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs2_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs2_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice3 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs3_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs3_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs3_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs3_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs3_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs3_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs3_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs3_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs3_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs3_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs3_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs3_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs3_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs3_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs3_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs3_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs3_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs3_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs3_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs3_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs3_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs3_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs3_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs3_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice4 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs4_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs4_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs4_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs4_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs4_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs4_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs4_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs4_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs4_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs4_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs4_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs4_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs4_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs4_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs4_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs4_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs4_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs4_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs4_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs4_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs4_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs4_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs4_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs4_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice5 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs5_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs5_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs5_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs5_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs5_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs5_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs5_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs5_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs5_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs5_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs5_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs5_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs5_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs5_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs5_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs5_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs5_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs5_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs5_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs5_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs5_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs5_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs5_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs5_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice6 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs6_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs6_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs6_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs6_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs6_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs6_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs6_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs6_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs6_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs6_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs6_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs6_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs6_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs6_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs6_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs6_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs6_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs6_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs6_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs6_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs6_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs6_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs6_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs6_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice7 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs7_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs7_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs7_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs7_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs7_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs7_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs7_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs7_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs7_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs7_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs7_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs7_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs7_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs7_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs7_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs7_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs7_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs7_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs7_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs7_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs7_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs7_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs7_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs7_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice8 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs8_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs8_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs8_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs8_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs8_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs8_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs8_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs8_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs8_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs8_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs8_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs8_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs8_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs8_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs8_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs8_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs8_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs8_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs8_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs8_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs8_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs8_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs8_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs8_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice9 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs9_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs9_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs9_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs9_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs9_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs9_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs9_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs9_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs9_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs9_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs9_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs9_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs9_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs9_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs9_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs9_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs9_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs9_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs9_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs9_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs9_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs9_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs9_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs9_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice10 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs10_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs10_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs10_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs10_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs10_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs10_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs10_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs10_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs10_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs10_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs10_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs10_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs10_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs10_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs10_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs10_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs10_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs10_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs10_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs10_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs10_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs10_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs10_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs10_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice11 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs11_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs11_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs11_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs11_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs11_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs11_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs11_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs11_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs11_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs11_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs11_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs11_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs11_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs11_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs11_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs11_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs11_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs11_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs11_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs11_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs11_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs11_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs11_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs11_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice12 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs12_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs12_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs12_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs12_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs12_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs12_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs12_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs12_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs12_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs12_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs12_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs12_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs12_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs12_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs12_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs12_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs12_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs12_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs12_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs12_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs12_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs12_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs12_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs12_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice13 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs13_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs13_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs13_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs13_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs13_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs13_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs13_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs13_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs13_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs13_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs13_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs13_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs13_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs13_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs13_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs13_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs13_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs13_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs13_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs13_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs13_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs13_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs13_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs13_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice14 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs14_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs14_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs14_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs14_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs14_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs14_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs14_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs14_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs14_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs14_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs14_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs14_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs14_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs14_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs14_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs14_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs14_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs14_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs14_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs14_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs14_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs14_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs14_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs14_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice15 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs15_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs15_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs15_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs15_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs15_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs15_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs15_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs15_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs15_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs15_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs15_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs15_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs15_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs15_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs15_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs15_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs15_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs15_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs15_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs15_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs15_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs15_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs15_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs15_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice16 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs16_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs16_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs16_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs16_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs16_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs16_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs16_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs16_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs16_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs16_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs16_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs16_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs16_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs16_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs16_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs16_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs16_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs16_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs16_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs16_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs16_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs16_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs16_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs16_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice17 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs17_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs17_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs17_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs17_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs17_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs17_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs17_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs17_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs17_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs17_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs17_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs17_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs17_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs17_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs17_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs17_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs17_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs17_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs17_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs17_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs17_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs17_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs17_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs17_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice18 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs18_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs18_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs18_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs18_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs18_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs18_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs18_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs18_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs18_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs18_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs18_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs18_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs18_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs18_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs18_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs18_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs18_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs18_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs18_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs18_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs18_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs18_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs18_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs18_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice19 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs19_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs19_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs19_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs19_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs19_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs19_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs19_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs19_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs19_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs19_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs19_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs19_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs19_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs19_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs19_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs19_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs19_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs19_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs19_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs19_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs19_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs19_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs19_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs19_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice20 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs20_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs20_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs20_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs20_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs20_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs20_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs20_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs20_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs20_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs20_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs20_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs20_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs20_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs20_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs20_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs20_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs20_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs20_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs20_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs20_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs20_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs20_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs20_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs20_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice21 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs21_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs21_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs21_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs21_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs21_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs21_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs21_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs21_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs21_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs21_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs21_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs21_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs21_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs21_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs21_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs21_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs21_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs21_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs21_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs21_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs21_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs21_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs21_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs21_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice22 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs22_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs22_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs22_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs22_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs22_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs22_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs22_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs22_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs22_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs22_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs22_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs22_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs22_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs22_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs22_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs22_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs22_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs22_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs22_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs22_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs22_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs22_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs22_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs22_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice23 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs23_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs23_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs23_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs23_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs23_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs23_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs23_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs23_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs23_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs23_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs23_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs23_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs23_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs23_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs23_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs23_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs23_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs23_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs23_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs23_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs23_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs23_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs23_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs23_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice24 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs24_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs24_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs24_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs24_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs24_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs24_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs24_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs24_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs24_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs24_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs24_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs24_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs24_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs24_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs24_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs24_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs24_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs24_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs24_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs24_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs24_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs24_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs24_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs24_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice25 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs25_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs25_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs25_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs25_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs25_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs25_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs25_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs25_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs25_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs25_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs25_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs25_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs25_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs25_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs25_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs25_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs25_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs25_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs25_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs25_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs25_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs25_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs25_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs25_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice26 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs26_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs26_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs26_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs26_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs26_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs26_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs26_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs26_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs26_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs26_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs26_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs26_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs26_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs26_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs26_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs26_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs26_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs26_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs26_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs26_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs26_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs26_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs26_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs26_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice27 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs27_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs27_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs27_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs27_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs27_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs27_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs27_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs27_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs27_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs27_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs27_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs27_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs27_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs27_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs27_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs27_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs27_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs27_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs27_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs27_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs27_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs27_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs27_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs27_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice28 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs28_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs28_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs28_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs28_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs28_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs28_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs28_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs28_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs28_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs28_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs28_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs28_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs28_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs28_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs28_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs28_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs28_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs28_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs28_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs28_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs28_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs28_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs28_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs28_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice29 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs29_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs29_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs29_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs29_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs29_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs29_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs29_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs29_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs29_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs29_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs29_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs29_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs29_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs29_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs29_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs29_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs29_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs29_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs29_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs29_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs29_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs29_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs29_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs29_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice30 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs30_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs30_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs30_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs30_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs30_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs30_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs30_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs30_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs30_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs30_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs30_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs30_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs30_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs30_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs30_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs30_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs30_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs30_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs30_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs30_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs30_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs30_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs30_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs30_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice31 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs31_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs31_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs31_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs31_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs31_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs31_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs31_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs31_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs31_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs31_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs31_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs31_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs31_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs31_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs31_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs31_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs31_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs31_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs31_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs31_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs31_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs31_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs31_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs31_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice32 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs32_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs32_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs32_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs32_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs32_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs32_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs32_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs32_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs32_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs32_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs32_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs32_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs32_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs32_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs32_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs32_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs32_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs32_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs32_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs32_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs32_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs32_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs32_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs32_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice33 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs33_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs33_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs33_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs33_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs33_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs33_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs33_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs33_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs33_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs33_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs33_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs33_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs33_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs33_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs33_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs33_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs33_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs33_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs33_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs33_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs33_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs33_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs33_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs33_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice34 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs34_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs34_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs34_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs34_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs34_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs34_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs34_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs34_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs34_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs34_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs34_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs34_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs34_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs34_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs34_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs34_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs34_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs34_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs34_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs34_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs34_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs34_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs34_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs34_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice35 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs35_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs35_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs35_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs35_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs35_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs35_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs35_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs35_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs35_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs35_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs35_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs35_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs35_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs35_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs35_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs35_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs35_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs35_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs35_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs35_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs35_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs35_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs35_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs35_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice36 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs36_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs36_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs36_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs36_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs36_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs36_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs36_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs36_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs36_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs36_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs36_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs36_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs36_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs36_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs36_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs36_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs36_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs36_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs36_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs36_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs36_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs36_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs36_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs36_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice37 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs37_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs37_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs37_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs37_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs37_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs37_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs37_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs37_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs37_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs37_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs37_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs37_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs37_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs37_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs37_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs37_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs37_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs37_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs37_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs37_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs37_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs37_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs37_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs37_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice38 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs38_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs38_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs38_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs38_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs38_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs38_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs38_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs38_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs38_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs38_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs38_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs38_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs38_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs38_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs38_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs38_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs38_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs38_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs38_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs38_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs38_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs38_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs38_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs38_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice39 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs39_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs39_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs39_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs39_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs39_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs39_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs39_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs39_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs39_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs39_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs39_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs39_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs39_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs39_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs39_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs39_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs39_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs39_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs39_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs39_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs39_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs39_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs39_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs39_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice40 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs40_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs40_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs40_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs40_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs40_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs40_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs40_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs40_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs40_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs40_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs40_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs40_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs40_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs40_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs40_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs40_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs40_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs40_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs40_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs40_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs40_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs40_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs40_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs40_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice41 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs41_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs41_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs41_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs41_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs41_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs41_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs41_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs41_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs41_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs41_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs41_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs41_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs41_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs41_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs41_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs41_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs41_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs41_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs41_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs41_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs41_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs41_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs41_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs41_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice42 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs42_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs42_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs42_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs42_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs42_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs42_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs42_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs42_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs42_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs42_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs42_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs42_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs42_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs42_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs42_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs42_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs42_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs42_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs42_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs42_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs42_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs42_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs42_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs42_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice43 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs43_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs43_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs43_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs43_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs43_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs43_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs43_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs43_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs43_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs43_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs43_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs43_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs43_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs43_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs43_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs43_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs43_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs43_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs43_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs43_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs43_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs43_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs43_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs43_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice44 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs44_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs44_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs44_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs44_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs44_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs44_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs44_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs44_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs44_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs44_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs44_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs44_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs44_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs44_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs44_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs44_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs44_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs44_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs44_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs44_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs44_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs44_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs44_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs44_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice45 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs45_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs45_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs45_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs45_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs45_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs45_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs45_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs45_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs45_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs45_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs45_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs45_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs45_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs45_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs45_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs45_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs45_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs45_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs45_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs45_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs45_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs45_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs45_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs45_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice46 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs46_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs46_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs46_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs46_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs46_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs46_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs46_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs46_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs46_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs46_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs46_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs46_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs46_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs46_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs46_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs46_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs46_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs46_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs46_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs46_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs46_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs46_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs46_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs46_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice47 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs47_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs47_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs47_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs47_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs47_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs47_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs47_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs47_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs47_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs47_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs47_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs47_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs47_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs47_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs47_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs47_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs47_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs47_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs47_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs47_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs47_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs47_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs47_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs47_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice48 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs48_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs48_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs48_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs48_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs48_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs48_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs48_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs48_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs48_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs48_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs48_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs48_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs48_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs48_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs48_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs48_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs48_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs48_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs48_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs48_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs48_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs48_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs48_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs48_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice49 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs49_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs49_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs49_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs49_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs49_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs49_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs49_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs49_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs49_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs49_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs49_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs49_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs49_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs49_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs49_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs49_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs49_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs49_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs49_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs49_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs49_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs49_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs49_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs49_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice50 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs50_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs50_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs50_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs50_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs50_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs50_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs50_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs50_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs50_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs50_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs50_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs50_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs50_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs50_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs50_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs50_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs50_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs50_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs50_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs50_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs50_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs50_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs50_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs50_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   //-----------------------------------------------------
   // Bitslice51 signals
   //-----------------------------------------------------
   // TX/Bidir-TX data signals from fabric to output buffer
   input [C_SERIALIZATION_FACTOR -1 :0]        bs51_data_from_fabric_in,  // D value for TX and TXBIDIR, Data from Device logic
   
   // TX/Bidir-TX Tristate control signals
   input                           bs51_t_in,                // Legacy T byte input from device logic
   
   // TX/Bidir-TX Delay Control signals
   input                           bs51_tx_ce_in,               // Clock enable for RXTX_BITSLICE ODELAY register clock
   input  [8:0]                    bs51_tx_cntvaluein,       // TX Counter value from internal device logic for tap value to be loaded dynamically
   output [8:0]                    bs51_tx_cntvalueout,     // TX Counter value to going the internal device logic for monitoring tap value
   input                           bs51_tx_en_vtc_in,           // TX Enable to keep stable delay over VT when set to HIGH.  VT compensation disabled when set to LOW
   input                           bs51_tx_inc_in,              // TX Increment the current delay tap setting 
   input                           bs51_tx_load_in,             // TX Clock used to sample LOAD, CE, INC
   
   // RX/Bidir-RX Data signals from input buffer/to fabric
   output [C_SERIALIZATION_FACTOR -1 : 0]      bs51_data_to_fabric_out,   // Data to Fabric from RX and RXBIDIR, registered output data from Fifo
   // RX/Bidir-RX Delay control signals
   input                           bs51_rx_ce_in,               // Clock enable for RXTX_BITSLICE IDELAY register clock
   output [8:0]                    bs51_rxcntvalueout,      // RX Clock used to sample LOAD, CE, INC
   input  [8:0]                    bs51_rx_cntvaluein,       // RX Counter value from internal device logic for tap value to be loaded dynamically
   input                           bs51_rx_en_vtc_in,           // RX Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs51_rx_inc_in,              // RX Increment the current delay tap setting
   input                           bs51_rx_load_in,             // RX Load the CNTVALUEIN tap setting
   
   // RX Extended delay signals for RX bitslice, 
   // Applicable only for RX
   input                           bs51_ce_ext_in,              // Optional extended (cascaded delay) clock enable for IDELAY register clock
   output [8:0]                    bs51_cntvalueout_ext_out,    // Optional extended (cascaded delay) counter value going to the internal device logic for monitoring tap value
   input  [8:0]                    bs51_cntvaluein_ext_in,      // Optional extended (cascaded delay) counter value from internal device logic for tap value to be loaded dynamically
   input                           bs51_en_vtc_ext_in,          // Enables IDELAYCTRL to keep stable delay over VT of the cascaded delay when set to HIGH. VT compensation disabled when set to LOW
   input                           bs51_inc_ext_in,             // Optional extended (cascaded delay) increments the current delay tap setting
   input                           bs51_load_ext_in,            // Optional extended (cascaded delay) load the CNTVALUEIN_EXT tap setting
   
   // RX/RX-Bidir Fifo Signals
   output                          bs51_fifo_empty_out,         // FIFO empty flag for the FIFO of this bit
   input                           bs51_fifo_rd_clk,            // FIFO read clock for the FIFO of this bit
   input                           bs51_fifo_rd_en,             // FIFO read enable for the FIFO of this bit
   
   // RX/Bidir Bitslip signals
   // Bitslip Signals
   input                           start_bitslip,
   output                          rx_bitslip_sync_done,
   output                          rxtx_bitslip_sync_done,
   
   // Bitslip Error
   output                          bs0_bitslip_error_out,
   output                          bs1_bitslip_error_out, 
   output                          bs2_bitslip_error_out, 
   output                          bs3_bitslip_error_out, 
   output                          bs4_bitslip_error_out, 
   output                          bs5_bitslip_error_out,
   output                          bs6_bitslip_error_out,
   output                          bs7_bitslip_error_out, 
   output                          bs8_bitslip_error_out, 
   output                          bs9_bitslip_error_out, 
   output                          bs10_bitslip_error_out,
   output                          bs11_bitslip_error_out, 
   output                          bs12_bitslip_error_out, 
   output                          bs13_bitslip_error_out, 
   output                          bs14_bitslip_error_out, 
   output                          bs15_bitslip_error_out,
   output                          bs16_bitslip_error_out,
   output                          bs17_bitslip_error_out, 
   output                          bs18_bitslip_error_out, 
   output                          bs19_bitslip_error_out, 
   output                          bs20_bitslip_error_out, 
   output                          bs21_bitslip_error_out, 
   output                          bs22_bitslip_error_out, 
   output                          bs23_bitslip_error_out, 
   output                          bs24_bitslip_error_out, 
   output                          bs25_bitslip_error_out,
   output                          bs26_bitslip_error_out,
   output                          bs27_bitslip_error_out, 
   output                          bs28_bitslip_error_out, 
   output                          bs29_bitslip_error_out, 
   output                          bs30_bitslip_error_out, 
   output                          bs31_bitslip_error_out, 
   output                          bs32_bitslip_error_out, 
   output                          bs33_bitslip_error_out, 
   output                          bs34_bitslip_error_out, 
   output                          bs35_bitslip_error_out,
   output                          bs36_bitslip_error_out,
   output                          bs37_bitslip_error_out, 
   output                          bs38_bitslip_error_out, 
   output                          bs39_bitslip_error_out, 
   output                          bs40_bitslip_error_out,
   output                          bs41_bitslip_error_out, 
   output                          bs42_bitslip_error_out, 
   output                          bs43_bitslip_error_out, 
   output                          bs44_bitslip_error_out, 
   output                          bs45_bitslip_error_out,
   output                          bs46_bitslip_error_out,
   output                          bs47_bitslip_error_out, 
   output                          bs48_bitslip_error_out, 
   output                          bs49_bitslip_error_out, 
   output                          bs50_bitslip_error_out,
   output                          bs51_bitslip_error_out,
   
   // RX / Bidir-Rx Fifo Write clocignals
   // Fifo Write Clock Signals
   output                           bs0_nib0_fifo_wrclk_out,       // Fifo Write clock signal from Nib0
   output                           bs6_nib1_fifo_wrclk_out,       // Fifo Write clock signal from Nib1
   output                           bs13_nib2_fifo_wrclk_out,       // Fifo Write clock signal from Nib2
   output                           bs19_nib3_fifo_wrclk_out,       // Fifo Write clock signal from Nib3
   output                           bs26_nib4_fifo_wrclk_out,       // Fifo Write clock signal from Nib4
   output                           bs32_nib5_fifo_wrclk_out,       // Fifo Write clock signal from Nib5
   output                           bs39_nib6_fifo_wrclk_out,       // Fifo Write clock signal from Nib6
   output                           bs45_nib7_fifo_wrclk_out,       // Fifo Write clock signal from Nib7
   
   //------------------------------------------------
   //TX bitslice tri delay signals for VARIABLE/VARLOAD delays for Nibble0
   //------------------------------------------------
   output [8:0]                    bs_nib0_tri_cntvalueout,    // Counter value to going the internal device logic for monitoring tap value 
   input  [8:0]                    bs_nib0_tri_cntvaluein,      // Counter value from FPGA logic for dynamically loadable tap value input
   input                           bs_nib0_tri_en_vtc_in,          // Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs_nib0_tri_ce_in,              // Active high enable increment/decrement input
   input                           bs_nib0_tri_inc_in,             // Increment the current delay tap setting
   input                           bs_nib0_tri_load_in,            // Load the CNTVALUEIN tap setting
   
   //------------------------------------------------
   //TX bitslice tri delay signals for VARIABLE/VARLOAD delays for Nibble0
   //------------------------------------------------
   output [8:0]                    bs_nib1_tri_cntvalueout,    // Counter value to going the internal device logic for monitoring tap value 
   input  [8:0]                    bs_nib1_tri_cntvaluein,      // Counter value from FPGA logic for dynamically loadable tap value input
   input                           bs_nib1_tri_en_vtc_in,          // Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs_nib1_tri_ce_in,              // Active high enable increment/decrement input
   input                           bs_nib1_tri_inc_in,             // Increment the current delay tap setting
   input                           bs_nib1_tri_load_in,            // Load the CNTVALUEIN tap setting
   
   //------------------------------------------------
   //TX bitslice tri delay signals for VARIABLE/VARLOAD delays for Nibble0
   //------------------------------------------------
   output [8:0]                    bs_nib2_tri_cntvalueout,    // Counter value to going the internal device logic for monitoring tap value 
   input  [8:0]                    bs_nib2_tri_cntvaluein,      // Counter value from FPGA logic for dynamically loadable tap value input
   input                           bs_nib2_tri_en_vtc_in,          // Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs_nib2_tri_ce_in,              // Active high enable increment/decrement input
   input                           bs_nib2_tri_inc_in,             // Increment the current delay tap setting
   input                           bs_nib2_tri_load_in,            // Load the CNTVALUEIN tap setting
   
   //------------------------------------------------
   //TX bitslice tri delay signals for VARIABLE/VARLOAD delays for Nibble0
   //------------------------------------------------
   output [8:0]                    bs_nib3_tri_cntvalueout,    // Counter value to going the internal device logic for monitoring tap value 
   input  [8:0]                    bs_nib3_tri_cntvaluein,      // Counter value from FPGA logic for dynamically loadable tap value input
   input                           bs_nib3_tri_en_vtc_in,          // Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs_nib3_tri_ce_in,              // Active high enable increment/decrement input
   input                           bs_nib3_tri_inc_in,             // Increment the current delay tap setting
   input                           bs_nib3_tri_load_in,            // Load the CNTVALUEIN tap setting
   
   //------------------------------------------------
   //TX bitslice tri delay signals for VARIABLE/VARLOAD delays for Nibble0
   //------------------------------------------------
   output [8:0]                    bs_nib4_tri_cntvalueout,    // Counter value to going the internal device logic for monitoring tap value 
   input  [8:0]                    bs_nib4_tri_cntvaluein,      // Counter value from FPGA logic for dynamically loadable tap value input
   input                           bs_nib4_tri_en_vtc_in,          // Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs_nib4_tri_ce_in,              // Active high enable increment/decrement input
   input                           bs_nib4_tri_inc_in,             // Increment the current delay tap setting
   input                           bs_nib4_tri_load_in,            // Load the CNTVALUEIN tap setting
   
   //------------------------------------------------
   //TX bitslice tri delay signals for VARIABLE/VARLOAD delays for Nibble0
   //------------------------------------------------
   output [8:0]                    bs_nib5_tri_cntvalueout,    // Counter value to going the internal device logic for monitoring tap value 
   input  [8:0]                    bs_nib5_tri_cntvaluein,      // Counter value from FPGA logic for dynamically loadable tap value input
   input                           bs_nib5_tri_en_vtc_in,          // Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs_nib5_tri_ce_in,              // Active high enable increment/decrement input
   input                           bs_nib5_tri_inc_in,             // Increment the current delay tap setting
   input                           bs_nib5_tri_load_in,            // Load the CNTVALUEIN tap setting
   
   //------------------------------------------------
   //TX bitslice tri delay signals for VARIABLE/VARLOAD delays for Nibble0
   //------------------------------------------------
   output [8:0]                    bs_nib6_tri_cntvalueout,    // Counter value to going the internal device logic for monitoring tap value 
   input  [8:0]                    bs_nib6_tri_cntvaluein,         // Counter value from FPGA logic for dynamically loadable tap value input
   input                           bs_nib6_tri_en_vtc_in,          // Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs_nib6_tri_ce_in,              // Active high enable increment/decrement input
   input                           bs_nib6_tri_inc_in,             // Increment the current delay tap setting
   input                           bs_nib6_tri_load_in,            // Load the CNTVALUEIN tap setting
   
   //------------------------------------------------
   //TX bitslice tri delay signals for VARIABLE/VARLOAD delays for Nibble0
   //------------------------------------------------
   output [8:0]                    bs_nib7_tri_cntvalueout,    // Counter value to going the internal device logic for monitoring tap value 
   input  [8:0]                    bs_nib7_tri_cntvaluein,         // Counter value from FPGA logic for dynamically loadable tap value input
   input                           bs_nib7_tri_en_vtc_in,          // Enable to keep stable delay over VT when set to HIGH. VT compensation disabled when set to LOW.
   input                           bs_nib7_tri_ce_in,              // Active high enable increment/decrement input
   input                           bs_nib7_tri_inc_in,             // Increment the current delay tap setting
   input                           bs_nib7_tri_load_in             // Load the CNTVALUEIN tap setting
   
   );
   

   localparam C_RX_IN_NIB0 = (C_RX_BITSLICE_EN[0] == 1'b1 ||
                              C_RX_BITSLICE_EN[1] == 1'b1 ||
                              C_RX_BITSLICE_EN[2] == 1'b1 ||
                              C_RX_BITSLICE_EN[3] == 1'b1 ||
                              C_RX_BITSLICE_EN[4] == 1'b1 ||
                              C_RX_BITSLICE_EN[5] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_RX_IN_NIB1 = (C_RX_BITSLICE_EN[6]  == 1'b1 ||
                              C_RX_BITSLICE_EN[7]  == 1'b1 ||
                              C_RX_BITSLICE_EN[8]  == 1'b1 ||
                              C_RX_BITSLICE_EN[9]  == 1'b1 ||
                              C_RX_BITSLICE_EN[10] == 1'b1 ||
                              C_RX_BITSLICE_EN[11] == 1'b1 ||
                              C_RX_BITSLICE_EN[12] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_RX_IN_NIB2 = (C_RX_BITSLICE_EN[13] == 1'b1 ||
                              C_RX_BITSLICE_EN[14] == 1'b1 ||
                              C_RX_BITSLICE_EN[15] == 1'b1 ||
                              C_RX_BITSLICE_EN[16] == 1'b1 ||
                              C_RX_BITSLICE_EN[17] == 1'b1 ||
                              C_RX_BITSLICE_EN[18] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_RX_IN_NIB3 = (C_RX_BITSLICE_EN[19] == 1'b1 ||
                              C_RX_BITSLICE_EN[20] == 1'b1 ||
                              C_RX_BITSLICE_EN[21] == 1'b1 ||
                              C_RX_BITSLICE_EN[22] == 1'b1 ||
                              C_RX_BITSLICE_EN[23] == 1'b1 ||
                              C_RX_BITSLICE_EN[24] == 1'b1 ||
                              C_RX_BITSLICE_EN[25] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_RX_IN_NIB4 = (C_RX_BITSLICE_EN[26] == 1'b1 ||
                              C_RX_BITSLICE_EN[27] == 1'b1 ||
                              C_RX_BITSLICE_EN[28] == 1'b1 ||
                              C_RX_BITSLICE_EN[29] == 1'b1 ||
                              C_RX_BITSLICE_EN[30] == 1'b1 ||
                              C_RX_BITSLICE_EN[31] == 1'b1 ) ? 1'b1 : 1'b0;


   localparam C_RX_IN_NIB5 = (C_RX_BITSLICE_EN[32] == 1'b1 ||
                              C_RX_BITSLICE_EN[33] == 1'b1 ||
                              C_RX_BITSLICE_EN[34] == 1'b1 ||
                              C_RX_BITSLICE_EN[35] == 1'b1 ||
                              C_RX_BITSLICE_EN[36] == 1'b1 ||
                              C_RX_BITSLICE_EN[37] == 1'b1 ||
                              C_RX_BITSLICE_EN[38] == 1'b1 ) ? 1'b1 : 1'b0;


   localparam C_RX_IN_NIB6 = (C_RX_BITSLICE_EN[39] == 1'b1 ||
                              C_RX_BITSLICE_EN[40] == 1'b1 ||
                              C_RX_BITSLICE_EN[41] == 1'b1 ||
                              C_RX_BITSLICE_EN[42] == 1'b1 ||
                              C_RX_BITSLICE_EN[43] == 1'b1 ||
                              C_RX_BITSLICE_EN[44] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_RX_IN_NIB7 = (C_RX_BITSLICE_EN[45] == 1'b1 ||
                              C_RX_BITSLICE_EN[46] == 1'b1 ||
                              C_RX_BITSLICE_EN[47] == 1'b1 ||
                              C_RX_BITSLICE_EN[48] == 1'b1 ||
                              C_RX_BITSLICE_EN[49] == 1'b1 ||
                              C_RX_BITSLICE_EN[50] == 1'b1 ||
                              C_RX_BITSLICE_EN[51] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_TX_IN_NIB0 = (C_TX_BITSLICE_EN[0] == 1'b1 ||
                              C_TX_BITSLICE_EN[1] == 1'b1 ||
                              C_TX_BITSLICE_EN[2] == 1'b1 ||
                              C_TX_BITSLICE_EN[3] == 1'b1 ||
                              C_TX_BITSLICE_EN[4] == 1'b1 ||
                              C_TX_BITSLICE_EN[5] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_TX_IN_NIB1 = (C_TX_BITSLICE_EN[6]  == 1'b1 ||
                              C_TX_BITSLICE_EN[7]  == 1'b1 ||
                              C_TX_BITSLICE_EN[8]  == 1'b1 ||
                              C_TX_BITSLICE_EN[9]  == 1'b1 ||
                              C_TX_BITSLICE_EN[10] == 1'b1 ||
                              C_TX_BITSLICE_EN[11] == 1'b1 ||
                              C_TX_BITSLICE_EN[12] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_TX_IN_NIB2 = (C_TX_BITSLICE_EN[13] == 1'b1 ||
                              C_TX_BITSLICE_EN[14] == 1'b1 ||
                              C_TX_BITSLICE_EN[15] == 1'b1 ||
                              C_TX_BITSLICE_EN[16] == 1'b1 ||
                              C_TX_BITSLICE_EN[17] == 1'b1 ||
                              C_TX_BITSLICE_EN[18] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_TX_IN_NIB3 = (C_TX_BITSLICE_EN[19] == 1'b1 ||
                              C_TX_BITSLICE_EN[20] == 1'b1 ||
                              C_TX_BITSLICE_EN[21] == 1'b1 ||
                              C_TX_BITSLICE_EN[22] == 1'b1 ||
                              C_TX_BITSLICE_EN[23] == 1'b1 ||
                              C_TX_BITSLICE_EN[24] == 1'b1 ||
                              C_TX_BITSLICE_EN[25] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_TX_IN_NIB4 = (C_TX_BITSLICE_EN[26] == 1'b1 ||
                              C_TX_BITSLICE_EN[27] == 1'b1 ||
                              C_TX_BITSLICE_EN[28] == 1'b1 ||
                              C_TX_BITSLICE_EN[29] == 1'b1 ||
                              C_TX_BITSLICE_EN[30] == 1'b1 ||
                              C_TX_BITSLICE_EN[31] == 1'b1 ) ? 1'b1 : 1'b0;


   localparam C_TX_IN_NIB5 = (C_TX_BITSLICE_EN[32] == 1'b1 ||
                              C_TX_BITSLICE_EN[33] == 1'b1 ||
                              C_TX_BITSLICE_EN[34] == 1'b1 ||
                              C_TX_BITSLICE_EN[35] == 1'b1 ||
                              C_TX_BITSLICE_EN[36] == 1'b1 ||
                              C_TX_BITSLICE_EN[37] == 1'b1 ||
                              C_TX_BITSLICE_EN[38] == 1'b1 ) ? 1'b1 : 1'b0;


   localparam C_TX_IN_NIB6 = (C_TX_BITSLICE_EN[39] == 1'b1 ||
                              C_TX_BITSLICE_EN[40] == 1'b1 ||
                              C_TX_BITSLICE_EN[41] == 1'b1 ||
                              C_TX_BITSLICE_EN[42] == 1'b1 ||
                              C_TX_BITSLICE_EN[43] == 1'b1 ||
                              C_TX_BITSLICE_EN[44] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_TX_IN_NIB7 = (C_TX_BITSLICE_EN[45] == 1'b1 ||
                              C_TX_BITSLICE_EN[46] == 1'b1 ||
                              C_TX_BITSLICE_EN[47] == 1'b1 ||
                              C_TX_BITSLICE_EN[48] == 1'b1 ||
                              C_TX_BITSLICE_EN[49] == 1'b1 ||
                              C_TX_BITSLICE_EN[50] == 1'b1 ||
                              C_TX_BITSLICE_EN[51] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_BIDIR_IN_NIB0 = (C_BIDIR_BITSLICE_EN[0] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[1] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[2] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[3] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[4] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[5] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_BIDIR_IN_NIB1 = (C_BIDIR_BITSLICE_EN[6]  == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[7]  == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[8]  == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[9]  == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[10] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[11] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[12] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_BIDIR_IN_NIB2 = (C_BIDIR_BITSLICE_EN[13] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[14] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[15] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[16] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[17] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[18] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_BIDIR_IN_NIB3 = (C_BIDIR_BITSLICE_EN[19] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[20] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[21] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[22] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[23] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[24] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[25] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_BIDIR_IN_NIB4 = (C_BIDIR_BITSLICE_EN[26] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[27] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[28] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[29] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[30] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[31] == 1'b1 ) ? 1'b1 : 1'b0;


   localparam C_BIDIR_IN_NIB5 = (C_BIDIR_BITSLICE_EN[32] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[33] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[34] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[35] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[36] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[37] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[38] == 1'b1 ) ? 1'b1 : 1'b0;


   localparam C_BIDIR_IN_NIB6 = (C_BIDIR_BITSLICE_EN[39] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[40] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[41] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[42] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[43] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[44] == 1'b1 ) ? 1'b1 : 1'b0;

   localparam C_BIDIR_IN_NIB7 = (C_BIDIR_BITSLICE_EN[45] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[46] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[47] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[48] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[49] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[50] == 1'b1 ||
                              C_BIDIR_BITSLICE_EN[51] == 1'b1 ) ? 1'b1 : 1'b0;


   localparam C_NIB0_PLL1 = (C_EN_BSC0 == 0) ? 1'b0 : ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB0 == 1'b1) && (C_EN_RX == 1)) ? 1'b1 : 1'b0;
   localparam C_NIB1_PLL1 = (C_EN_BSC1 == 0) ? 1'b0 : ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB1 == 1'b1) && (C_EN_RX == 1)) ? 1'b1 : 1'b0;
   localparam C_NIB2_PLL1 = (C_EN_BSC2 == 0) ? 1'b0 : ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB2 == 1'b1) && (C_EN_RX == 1)) ? 1'b1 : 1'b0;
   localparam C_NIB3_PLL1 = (C_EN_BSC3 == 0) ? 1'b0 : ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB3 == 1'b1) && (C_EN_RX == 1)) ? 1'b1 : 1'b0;
   localparam C_NIB4_PLL1 = (C_EN_BSC4 == 0) ? 1'b0 : ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB4 == 1'b1) && (C_EN_RX == 1)) ? 1'b1 : 1'b0;
   localparam C_NIB5_PLL1 = (C_EN_BSC5 == 0) ? 1'b0 : ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB5 == 1'b1) && (C_EN_RX == 1)) ? 1'b1 : 1'b0;
   localparam C_NIB6_PLL1 = (C_EN_BSC6 == 0) ? 1'b0 : ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB6 == 1'b1) && (C_EN_RX == 1)) ? 1'b1 : 1'b0;
   localparam C_NIB7_PLL1 = (C_EN_BSC7 == 0) ? 1'b0 : ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB7 == 1'b1) && (C_EN_RX == 1)) ? 1'b1 : 1'b0;

   localparam USE_PLL1    = C_NIB0_PLL1 || C_NIB1_PLL1 || C_NIB2_PLL1 || C_NIB3_PLL1 || C_NIB4_PLL1 || C_NIB5_PLL1 || C_NIB6_PLL1 || C_NIB7_PLL1;




   wire    [C_NUM_IO-1 :0]    data_to_pins;

   wire    [C_NUM_IO-1 :0]    data_from_pins;

   wire    [C_NUM_IO-1 :0]    data_to_from_pins;

   wire                       bs26_data_or_clk_strobe;
   wire                       pll0_clkoutphy;
   wire                       pll1_clkoutphy;
   wire                       pll0_clkoutphy_int;
   wire                       pll1_clkoutphy_int;
   wire                       bsctrl_rst;
   wire    [51:0]             bs_rst;
   wire    [51:0]             rst_dly;
   wire    [51:0]             tx_bs_t_out;
   wire    [C_NUM_IO-1 :0]    bs_to_buf_data;
   wire    [C_NUM_IO-1 :0]    bs_to_buf_t;
   wire    [C_NUM_IO-1 :0]    data_to_bs;
   wire    [C_NUM_IO-1 :0]    data_to_bs_n;
   wire    [C_NUM_IO-1 :0]    data_to_bs_from_buf;
   wire                       clk_from_buf;
   wire     [39:0] n0_rx_bit_ctrl_out0;
   wire     [39:0] n0_rx_bit_ctrl_out1; 
   wire     [39:0] n0_rx_bit_ctrl_out2; 
   wire     [39:0] n0_rx_bit_ctrl_out3; 
   wire     [39:0] n0_rx_bit_ctrl_out4;
   wire     [39:0] n0_rx_bit_ctrl_out5;
   wire     [39:0] n0_rx_bit_ctrl_out6;
   wire     [39:0] n0_tx_bit_ctrl_out0;
   wire     [39:0] n0_tx_bit_ctrl_out1; 
   wire     [39:0] n0_tx_bit_ctrl_out2; 
   wire     [39:0] n0_tx_bit_ctrl_out3; 
   wire     [39:0] n0_tx_bit_ctrl_out4;
   wire     [39:0] n0_tx_bit_ctrl_out5;
   wire     [39:0] n0_tx_bit_ctrl_out6;
   wire     [39:0] n0_tx_bit_ctrl_out_tri;
   wire      [39:0] n0_rx_bit_ctrl_in0;
   wire      [39:0] n0_rx_bit_ctrl_in1; 
   wire      [39:0] n0_rx_bit_ctrl_in2; 
   wire      [39:0] n0_rx_bit_ctrl_in3; 
   wire      [39:0] n0_rx_bit_ctrl_in4;
   wire      [39:0] n0_rx_bit_ctrl_in5;
   wire      [39:0] n0_rx_bit_ctrl_in6;
   wire      [39:0] n0_tx_bit_ctrl_in0;
   wire      [39:0] n0_tx_bit_ctrl_in1; 
   wire      [39:0] n0_tx_bit_ctrl_in2; 
   wire      [39:0] n0_tx_bit_ctrl_in3; 
   wire      [39:0] n0_tx_bit_ctrl_in4;
   wire      [39:0] n0_tx_bit_ctrl_in5;
   wire      [39:0] n0_tx_bit_ctrl_in6;
   wire      [39:0] n0_tx_bit_ctrl_in_tri;

   wire     [39:0] n1_rx_bit_ctrl_out0;
   wire     [39:0] n1_rx_bit_ctrl_out1; 
   wire     [39:0] n1_rx_bit_ctrl_out2; 
   wire     [39:0] n1_rx_bit_ctrl_out3; 
   wire     [39:0] n1_rx_bit_ctrl_out4;
   wire     [39:0] n1_rx_bit_ctrl_out5;
   wire     [39:0] n1_rx_bit_ctrl_out6;
   wire     [39:0] n1_tx_bit_ctrl_out0;
   wire     [39:0] n1_tx_bit_ctrl_out1; 
   wire     [39:0] n1_tx_bit_ctrl_out2; 
   wire     [39:0] n1_tx_bit_ctrl_out3; 
   wire     [39:0] n1_tx_bit_ctrl_out4;
   wire     [39:0] n1_tx_bit_ctrl_out5;
   wire     [39:0] n1_tx_bit_ctrl_out6;
   wire     [39:0] n1_tx_bit_ctrl_out_tri;
   wire      [39:0] n1_rx_bit_ctrl_in0;
   wire      [39:0] n1_rx_bit_ctrl_in1; 
   wire      [39:0] n1_rx_bit_ctrl_in2; 
   wire      [39:0] n1_rx_bit_ctrl_in3; 
   wire      [39:0] n1_rx_bit_ctrl_in4;
   wire      [39:0] n1_rx_bit_ctrl_in5;
   wire      [39:0] n1_rx_bit_ctrl_in6;
   wire      [39:0] n1_tx_bit_ctrl_in0;
   wire      [39:0] n1_tx_bit_ctrl_in1; 
   wire      [39:0] n1_tx_bit_ctrl_in2; 
   wire      [39:0] n1_tx_bit_ctrl_in3; 
   wire      [39:0] n1_tx_bit_ctrl_in4;
   wire      [39:0] n1_tx_bit_ctrl_in5;
   wire      [39:0] n1_tx_bit_ctrl_in6;
   wire      [39:0] n1_tx_bit_ctrl_in_tri;

   wire     [39:0] n2_rx_bit_ctrl_out0;
   wire     [39:0] n2_rx_bit_ctrl_out1; 
   wire     [39:0] n2_rx_bit_ctrl_out2; 
   wire     [39:0] n2_rx_bit_ctrl_out3; 
   wire     [39:0] n2_rx_bit_ctrl_out4;
   wire     [39:0] n2_rx_bit_ctrl_out5;
   wire     [39:0] n2_rx_bit_ctrl_out6;
   wire     [39:0] n2_tx_bit_ctrl_out0;
   wire     [39:0] n2_tx_bit_ctrl_out1; 
   wire     [39:0] n2_tx_bit_ctrl_out2; 
   wire     [39:0] n2_tx_bit_ctrl_out3; 
   wire     [39:0] n2_tx_bit_ctrl_out4;
   wire     [39:0] n2_tx_bit_ctrl_out5;
   wire     [39:0] n2_tx_bit_ctrl_out6;
   wire     [39:0] n2_tx_bit_ctrl_out_tri;
   wire      [39:0] n2_rx_bit_ctrl_in0;
   wire      [39:0] n2_rx_bit_ctrl_in1; 
   wire      [39:0] n2_rx_bit_ctrl_in2; 
   wire      [39:0] n2_rx_bit_ctrl_in3; 
   wire      [39:0] n2_rx_bit_ctrl_in4;
   wire      [39:0] n2_rx_bit_ctrl_in5;
   wire      [39:0] n2_rx_bit_ctrl_in6;
   wire      [39:0] n2_tx_bit_ctrl_in0;
   wire      [39:0] n2_tx_bit_ctrl_in1; 
   wire      [39:0] n2_tx_bit_ctrl_in2; 
   wire      [39:0] n2_tx_bit_ctrl_in3; 
   wire      [39:0] n2_tx_bit_ctrl_in4;
   wire      [39:0] n2_tx_bit_ctrl_in5;
   wire      [39:0] n2_tx_bit_ctrl_in6;
   wire      [39:0] n2_tx_bit_ctrl_in_tri;

   wire     [39:0] n3_rx_bit_ctrl_out0;
   wire     [39:0] n3_rx_bit_ctrl_out1; 
   wire     [39:0] n3_rx_bit_ctrl_out2; 
   wire     [39:0] n3_rx_bit_ctrl_out3; 
   wire     [39:0] n3_rx_bit_ctrl_out4;
   wire     [39:0] n3_rx_bit_ctrl_out5;
   wire     [39:0] n3_rx_bit_ctrl_out6;
   wire     [39:0] n3_tx_bit_ctrl_out0;
   wire     [39:0] n3_tx_bit_ctrl_out1; 
   wire     [39:0] n3_tx_bit_ctrl_out2; 
   wire     [39:0] n3_tx_bit_ctrl_out3; 
   wire     [39:0] n3_tx_bit_ctrl_out4;
   wire     [39:0] n3_tx_bit_ctrl_out5;
   wire     [39:0] n3_tx_bit_ctrl_out6;
   wire     [39:0] n3_tx_bit_ctrl_out_tri;
   wire      [39:0] n3_rx_bit_ctrl_in0;
   wire      [39:0] n3_rx_bit_ctrl_in1; 
   wire      [39:0] n3_rx_bit_ctrl_in2; 
   wire      [39:0] n3_rx_bit_ctrl_in3; 
   wire      [39:0] n3_rx_bit_ctrl_in4;
   wire      [39:0] n3_rx_bit_ctrl_in5;
   wire      [39:0] n3_rx_bit_ctrl_in6;
   wire      [39:0] n3_tx_bit_ctrl_in0;
   wire      [39:0] n3_tx_bit_ctrl_in1; 
   wire      [39:0] n3_tx_bit_ctrl_in2; 
   wire      [39:0] n3_tx_bit_ctrl_in3; 
   wire      [39:0] n3_tx_bit_ctrl_in4;
   wire      [39:0] n3_tx_bit_ctrl_in5;
   wire      [39:0] n3_tx_bit_ctrl_in6;
   wire      [39:0] n3_tx_bit_ctrl_in_tri;

   wire     [39:0] n4_rx_bit_ctrl_out0;
   wire     [39:0] n4_rx_bit_ctrl_out1; 
   wire     [39:0] n4_rx_bit_ctrl_out2; 
   wire     [39:0] n4_rx_bit_ctrl_out3; 
   wire     [39:0] n4_rx_bit_ctrl_out4;
   wire     [39:0] n4_rx_bit_ctrl_out5;
   wire     [39:0] n4_rx_bit_ctrl_out6;
   wire     [39:0] n4_tx_bit_ctrl_out0;
   wire     [39:0] n4_tx_bit_ctrl_out1; 
   wire     [39:0] n4_tx_bit_ctrl_out2; 
   wire     [39:0] n4_tx_bit_ctrl_out3; 
   wire     [39:0] n4_tx_bit_ctrl_out4;
   wire     [39:0] n4_tx_bit_ctrl_out5;
   wire     [39:0] n4_tx_bit_ctrl_out6;
   wire     [39:0] n4_tx_bit_ctrl_out_tri;
   wire      [39:0] n4_rx_bit_ctrl_in0;
   wire      [39:0] n4_rx_bit_ctrl_in1; 
   wire      [39:0] n4_rx_bit_ctrl_in2; 
   wire      [39:0] n4_rx_bit_ctrl_in3; 
   wire      [39:0] n4_rx_bit_ctrl_in4;
   wire      [39:0] n4_rx_bit_ctrl_in5;
   wire      [39:0] n4_rx_bit_ctrl_in6;
   wire      [39:0] n4_tx_bit_ctrl_in0;
   wire      [39:0] n4_tx_bit_ctrl_in1; 
   wire      [39:0] n4_tx_bit_ctrl_in2; 
   wire      [39:0] n4_tx_bit_ctrl_in3; 
   wire      [39:0] n4_tx_bit_ctrl_in4;
   wire      [39:0] n4_tx_bit_ctrl_in5;
   wire      [39:0] n4_tx_bit_ctrl_in6;
   wire      [39:0] n4_tx_bit_ctrl_in_tri;

   wire     [39:0] n5_rx_bit_ctrl_out0;
   wire     [39:0] n5_rx_bit_ctrl_out1; 
   wire     [39:0] n5_rx_bit_ctrl_out2; 
   wire     [39:0] n5_rx_bit_ctrl_out3; 
   wire     [39:0] n5_rx_bit_ctrl_out4;
   wire     [39:0] n5_rx_bit_ctrl_out5;
   wire     [39:0] n5_rx_bit_ctrl_out6;
   wire     [39:0] n5_tx_bit_ctrl_out0;
   wire     [39:0] n5_tx_bit_ctrl_out1; 
   wire     [39:0] n5_tx_bit_ctrl_out2; 
   wire     [39:0] n5_tx_bit_ctrl_out3; 
   wire     [39:0] n5_tx_bit_ctrl_out4;
   wire     [39:0] n5_tx_bit_ctrl_out5;
   wire     [39:0] n5_tx_bit_ctrl_out6;
   wire     [39:0] n5_tx_bit_ctrl_out_tri;
   wire      [39:0] n5_rx_bit_ctrl_in0;
   wire      [39:0] n5_rx_bit_ctrl_in1; 
   wire      [39:0] n5_rx_bit_ctrl_in2; 
   wire      [39:0] n5_rx_bit_ctrl_in3; 
   wire      [39:0] n5_rx_bit_ctrl_in4;
   wire      [39:0] n5_rx_bit_ctrl_in5;
   wire      [39:0] n5_rx_bit_ctrl_in6;
   wire      [39:0] n5_tx_bit_ctrl_in0;
   wire      [39:0] n5_tx_bit_ctrl_in1; 
   wire      [39:0] n5_tx_bit_ctrl_in2; 
   wire      [39:0] n5_tx_bit_ctrl_in3; 
   wire      [39:0] n5_tx_bit_ctrl_in4;
   wire      [39:0] n5_tx_bit_ctrl_in5;
   wire      [39:0] n5_tx_bit_ctrl_in6;
   wire      [39:0] n5_tx_bit_ctrl_in_tri;

   wire     [39:0] n6_rx_bit_ctrl_out0;
   wire     [39:0] n6_rx_bit_ctrl_out1; 
   wire     [39:0] n6_rx_bit_ctrl_out2; 
   wire     [39:0] n6_rx_bit_ctrl_out3; 
   wire     [39:0] n6_rx_bit_ctrl_out4;
   wire     [39:0] n6_rx_bit_ctrl_out5;
   wire     [39:0] n6_rx_bit_ctrl_out6;
   wire     [39:0] n6_tx_bit_ctrl_out0;
   wire     [39:0] n6_tx_bit_ctrl_out1; 
   wire     [39:0] n6_tx_bit_ctrl_out2; 
   wire     [39:0] n6_tx_bit_ctrl_out3; 
   wire     [39:0] n6_tx_bit_ctrl_out4;
   wire     [39:0] n6_tx_bit_ctrl_out5;
   wire     [39:0] n6_tx_bit_ctrl_out6;
   wire     [39:0] n6_tx_bit_ctrl_out_tri;
   wire      [39:0] n6_rx_bit_ctrl_in0;
   wire      [39:0] n6_rx_bit_ctrl_in1; 
   wire      [39:0] n6_rx_bit_ctrl_in2; 
   wire      [39:0] n6_rx_bit_ctrl_in3; 
   wire      [39:0] n6_rx_bit_ctrl_in4;
   wire      [39:0] n6_rx_bit_ctrl_in5;
   wire      [39:0] n6_rx_bit_ctrl_in6;
   wire      [39:0] n6_tx_bit_ctrl_in0;
   wire      [39:0] n6_tx_bit_ctrl_in1; 
   wire      [39:0] n6_tx_bit_ctrl_in2; 
   wire      [39:0] n6_tx_bit_ctrl_in3; 
   wire      [39:0] n6_tx_bit_ctrl_in4;
   wire      [39:0] n6_tx_bit_ctrl_in5;
   wire      [39:0] n6_tx_bit_ctrl_in6;
   wire      [39:0] n6_tx_bit_ctrl_in_tri;

   wire     [39:0] n7_rx_bit_ctrl_out0;
   wire     [39:0] n7_rx_bit_ctrl_out1; 
   wire     [39:0] n7_rx_bit_ctrl_out2; 
   wire     [39:0] n7_rx_bit_ctrl_out3; 
   wire     [39:0] n7_rx_bit_ctrl_out4;
   wire     [39:0] n7_rx_bit_ctrl_out5;
   wire     [39:0] n7_rx_bit_ctrl_out6;
   wire     [39:0] n7_tx_bit_ctrl_out0;
   wire     [39:0] n7_tx_bit_ctrl_out1; 
   wire     [39:0] n7_tx_bit_ctrl_out2; 
   wire     [39:0] n7_tx_bit_ctrl_out3; 
   wire     [39:0] n7_tx_bit_ctrl_out4;
   wire     [39:0] n7_tx_bit_ctrl_out5;
   wire     [39:0] n7_tx_bit_ctrl_out6;
   wire     [39:0] n7_tx_bit_ctrl_out_tri;
   wire      [39:0] n7_rx_bit_ctrl_in0;
   wire      [39:0] n7_rx_bit_ctrl_in1; 
   wire      [39:0] n7_rx_bit_ctrl_in2; 
   wire      [39:0] n7_rx_bit_ctrl_in3; 
   wire      [39:0] n7_rx_bit_ctrl_in4;
   wire      [39:0] n7_rx_bit_ctrl_in5;
   wire      [39:0] n7_rx_bit_ctrl_in6;
   wire      [39:0] n7_tx_bit_ctrl_in0;
   wire      [39:0] n7_tx_bit_ctrl_in1; 
   wire      [39:0] n7_tx_bit_ctrl_in2; 
   wire      [39:0] n7_tx_bit_ctrl_in3; 
   wire      [39:0] n7_tx_bit_ctrl_in4;
   wire      [39:0] n7_tx_bit_ctrl_in5;
   wire      [39:0] n7_tx_bit_ctrl_in6;
   wire      [39:0] n7_tx_bit_ctrl_in_tri;

   wire             n0_pll_clk_in;
   wire             n1_pll_clk_in;
   wire             n2_pll_clk_in;
   wire             n3_pll_clk_in;
   wire             n4_pll_clk_in;
   wire             n5_pll_clk_in;
   wire             n6_pll_clk_in;
   wire             n7_pll_clk_in;

   wire             n0_en_vtc;
   wire             n0_dly_rdy;
   wire             n0_vtc_rdy;
   wire      [5:0]  n01_riu_addr;
   wire      [1:0]  n01_riu_nibble_sel;
   wire      [15:0] n01_riu_wr_data;
   wire             n01_riu_wr_en;
   wire      [3:0]  n0_tbyte;
   (* keep = "true" *) reg      [3:0]  n0_tbyte_d;

   wire             n1_en_vtc;
   wire             n1_dly_rdy;
   wire             n1_vtc_rdy;
   wire      [3:0]  n1_tbyte;
   (* keep = "true" *) reg      [3:0]  n1_tbyte_d;

   wire             n2_en_vtc;
   wire             n2_dly_rdy;
   wire             n2_vtc_rdy;
   wire      [5:0]  n23_riu_addr;
   wire      [1:0]  n23_riu_nibble_sel;
   wire      [15:0] n23_riu_wr_data;
   wire             n23_riu_wr_en;
   wire      [3:0]  n2_tbyte;
   (* keep = "true" *) reg      [3:0]  n2_tbyte_d;

   wire             n3_en_vtc;
   wire             n3_dly_rdy;
   wire             n3_vtc_rdy;
   wire      [3:0]  n3_tbyte;
   (* keep = "true" *) reg      [3:0]  n3_tbyte_d;


   wire             n4_en_vtc;
   wire             n4_dly_rdy;
   wire             n4_vtc_rdy;
   wire      [5:0]  n45_riu_addr;
   wire      [1:0]  n45_riu_nibble_sel;
   wire      [15:0] n45_riu_wr_data;
   wire             n45_riu_wr_en;
   wire      [3:0]  n4_tbyte;
   (* keep = "true" *) reg      [3:0]  n4_tbyte_d;


   wire             n5_en_vtc;
   wire             n5_dly_rdy;
   wire             n5_vtc_rdy;
   wire      [3:0]  n5_tbyte;
   (* keep = "true" *) reg      [3:0]  n5_tbyte_d;


   wire             n6_en_vtc;
   wire             n6_dly_rdy;
   wire             n6_vtc_rdy;
   wire      [5:0]  n67_riu_addr;
   wire      [1:0]  n67_riu_nibble_sel;
   wire      [15:0] n67_riu_wr_data;
   wire             n67_riu_wr_en;
   wire      [3:0]  n6_tbyte;
   (* keep = "true" *) reg      [3:0]  n6_tbyte_d;

   wire             n7_en_vtc;
   wire             n7_dly_rdy;
   wire             n7_vtc_rdy;
   wire      [3:0]  n7_tbyte;
  (* keep = "true" *) reg      [3:0]  n7_tbyte_d;

   wire             n0_dly_rdy_to_rst;
   wire             n1_dly_rdy_to_rst;
   wire             n2_dly_rdy_to_rst;
   wire             n3_dly_rdy_to_rst;
   wire             n4_dly_rdy_to_rst;
   wire             n5_dly_rdy_to_rst;
   wire             n6_dly_rdy_to_rst;
   wire             n7_dly_rdy_to_rst;

   wire             n0_vtc_rdy_to_rst;
   wire             n1_vtc_rdy_to_rst;
   wire             n2_vtc_rdy_to_rst;
   wire             n3_vtc_rdy_to_rst;
   wire             n4_vtc_rdy_to_rst;
   wire             n5_vtc_rdy_to_rst;
   wire             n6_vtc_rdy_to_rst;
   wire             n7_vtc_rdy_to_rst;

   wire             all_bsc_dly_rdy_in;
   wire             all_bsc_vtc_rdy_in;

   wire             bsc_en_vtc;
   wire             rst_seq_done;
  (* keep = "true" *) wire             rst_seq_done1;
  (* keep = "true" *) wire             rst_seq_done2;
  (* keep = "true" *) wire             rst_seq_done3;
   wire             rst_seq_done_pll0_sync;
   wire             rst_seq_done_pll1_sync;
   wire             rst_seq_done_app_clk_sync;

   wire             pll0_clkout0;
   wire             pll1_clkout0;

   wire             pll0_clkout0_int;
   wire             pll1_clkout0_int;
   wire             fabric_clk;
   wire             clk_strobe;

   wire             core_rdy;
   wire             riu_clk;
   wire             pll0_clkout1;

   (* keep = "true" *) reg   [51:0]     core_rdy_r;

   localparam       RX_CLK_PHASE      = (C_PLL0_RX_EXTERNAL_CLK_TO_DATA == 0 || C_PLL0_RX_EXTERNAL_CLK_TO_DATA == 4 ) ? "SHIFT_90" : "SHIFT_0";

   assign clk_from_ibuf     = clk_from_buf;
//   assign intf_rdy          = rst_seq_done_app_clk_sync;
   assign riu_clk           = (C_USE_RIU_CLK_FROM_PLL == 1'b0) ? riu_clk_in : pll0_clkout1;

   assign pll0_clkout1_out  = pll0_clkout1;

   assign pll0_clkout0_out  =   pll0_clkout0;
   assign pll1_clkout0_out  =   pll1_clkout0;
   assign rst_seq_done_out  =   rst_seq_done;
   assign rst_seq_done1     =   rst_seq_done;
   assign rst_seq_done2     =   rst_seq_done;
   assign rst_seq_done3     =   rst_seq_done;

   assign pll0_clkout0_int = (C_PLL_SHARE == 1) ? shared_pll0_clkout0_in : pll0_clkout0;
   assign pll1_clkout0_int = (C_PLL_SHARE == 1) ? shared_pll1_clkout0_in : pll1_clkout0;
   assign fabric_clk       = (C_EN_MULTI_INTF ==1'b1 ) ? app_clk : pll0_clkout0_int;

//When Rx External CLock to Data Alignment is Edge/Center DDR. The Input Clock
//is on GC QBC pin (pin26), which acts as a clock and strobe.
//In order to propagate the strobe, RXBITSLICE0 is instantiated. The input
//clock is given to the datain_from_buf signal

assign bs26_data_or_clk_strobe = (C_RX_BITSLICE0_EN[4] && (C_RX_STROBE_EN[8] || C_INCLK_PIN == 26)) ? clk_from_buf : data_to_bs[26];

assign data_to_pin0 = data_to_pins[0]; 
assign data_to_pin1 = data_to_pins[1]; 
assign data_to_pin2 = data_to_pins[2]; 
assign data_to_pin3 = data_to_pins[3]; 
assign data_to_pin4 = data_to_pins[4]; 
assign data_to_pin5 = data_to_pins[5]; 
assign data_to_pin6 = data_to_pins[6]; 
assign data_to_pin7 = data_to_pins[7]; 
assign data_to_pin8 = data_to_pins[8]; 
assign data_to_pin9 = data_to_pins[9]; 
assign data_to_pin10 = data_to_pins[10]; 
assign data_to_pin11 = data_to_pins[11]; 
assign data_to_pin12 = data_to_pins[12]; 
assign data_to_pin13 = data_to_pins[13]; 
assign data_to_pin14 = data_to_pins[14]; 
assign data_to_pin15 = data_to_pins[15]; 
assign data_to_pin16 = data_to_pins[16]; 
assign data_to_pin17 = data_to_pins[17]; 
assign data_to_pin18 = data_to_pins[18]; 
assign data_to_pin19 = data_to_pins[19]; 
assign data_to_pin20 = data_to_pins[20]; 
assign data_to_pin21 = data_to_pins[21]; 
assign data_to_pin22 = data_to_pins[22]; 
assign data_to_pin23 = data_to_pins[23]; 
assign data_to_pin24 = data_to_pins[24]; 
assign data_to_pin25 = data_to_pins[25]; 
assign data_to_pin26 = data_to_pins[26]; 
assign data_to_pin27 = data_to_pins[27]; 
assign data_to_pin28 = data_to_pins[28]; 
assign data_to_pin29 = data_to_pins[29]; 
assign data_to_pin30 = data_to_pins[30]; 
assign data_to_pin31 = data_to_pins[31]; 
assign data_to_pin32 = data_to_pins[32]; 
assign data_to_pin33 = data_to_pins[33]; 
assign data_to_pin34 = data_to_pins[34]; 
assign data_to_pin35 = data_to_pins[35]; 
assign data_to_pin36 = data_to_pins[36]; 
assign data_to_pin37 = data_to_pins[37]; 
assign data_to_pin38 = data_to_pins[38]; 
assign data_to_pin39 = data_to_pins[39]; 
assign data_to_pin40 = data_to_pins[40]; 
assign data_to_pin41 = data_to_pins[41]; 
assign data_to_pin42 = data_to_pins[42]; 
assign data_to_pin43 = data_to_pins[43]; 
assign data_to_pin44 = data_to_pins[44]; 
assign data_to_pin45 = data_to_pins[45]; 
assign data_to_pin46 = data_to_pins[46]; 
assign data_to_pin47 = data_to_pins[47]; 
assign data_to_pin48 = data_to_pins[48]; 
assign data_to_pin49 = data_to_pins[49]; 
assign data_to_pin50 = data_to_pins[50]; 
assign data_to_pin51 = data_to_pins[51]; 



   assign data_from_pins = {   
                              data_from_pin51,               
                              data_from_pin50,               
                              data_from_pin49,               
                              data_from_pin48,               
                              data_from_pin47,               
                              data_from_pin46,               
                              data_from_pin45,               
                              data_from_pin44,               
                              data_from_pin43,               
                              data_from_pin42,               
                              data_from_pin41,               
                              data_from_pin40,               
                              data_from_pin39,               
                              data_from_pin38,               
                              data_from_pin37,               
                              data_from_pin36,               
                              data_from_pin35,               
                              data_from_pin34,               
                              data_from_pin33,               
                              data_from_pin32,               
                              data_from_pin31,               
                              data_from_pin30,               
                              data_from_pin29,               
                              data_from_pin28,               
                              data_from_pin27,               
                              data_from_pin26,               
                              data_from_pin25,               
                              data_from_pin24,               
                              data_from_pin23,               
                              data_from_pin22,               
                              data_from_pin21,               
                              data_from_pin20,               
                              data_from_pin19,               
                              data_from_pin18,               
                              data_from_pin17,               
                              data_from_pin16,               
                              data_from_pin15,               
                              data_from_pin14,               
                              data_from_pin13,               
                              data_from_pin12,               
                              data_from_pin11,               
                              data_from_pin10,               
                              data_from_pin9,               
                              data_from_pin8,               
                              data_from_pin7,               
                              data_from_pin6,               
                              data_from_pin5,               
                              data_from_pin4,               
                              data_from_pin3,               
                              data_from_pin2,               
                              data_from_pin1,               
                              data_from_pin0               
                         };

   assign data_to_from_pins = {   
                              data_to_from_pin51,               
                              data_to_from_pin50,               
                              data_to_from_pin49,               
                              data_to_from_pin48,               
                              data_to_from_pin47,               
                              data_to_from_pin46,               
                              data_to_from_pin45,               
                              data_to_from_pin44,               
                              data_to_from_pin43,               
                              data_to_from_pin42,               
                              data_to_from_pin41,               
                              data_to_from_pin40,               
                              data_to_from_pin39,               
                              data_to_from_pin38,               
                              data_to_from_pin37,               
                              data_to_from_pin36,               
                              data_to_from_pin35,               
                              data_to_from_pin34,               
                              data_to_from_pin33,               
                              data_to_from_pin32,               
                              data_to_from_pin31,               
                              data_to_from_pin30,               
                              data_to_from_pin29,               
                              data_to_from_pin28,               
                              data_to_from_pin27,               
                              data_to_from_pin26,               
                              data_to_from_pin25,               
                              data_to_from_pin24,               
                              data_to_from_pin23,               
                              data_to_from_pin22,               
                              data_to_from_pin21,               
                              data_to_from_pin20,               
                              data_to_from_pin19,               
                              data_to_from_pin18,               
                              data_to_from_pin17,               
                              data_to_from_pin16,               
                              data_to_from_pin15,               
                              data_to_from_pin14,               
                              data_to_from_pin13,               
                              data_to_from_pin12,               
                              data_to_from_pin11,               
                              data_to_from_pin10,               
                              data_to_from_pin9,               
                              data_to_from_pin8,               
                              data_to_from_pin7,               
                              data_to_from_pin6,               
                              data_to_from_pin5,               
                              data_to_from_pin4,               
                              data_to_from_pin3,               
                              data_to_from_pin2,               
                              data_to_from_pin1,               
                              data_to_from_pin0               
                         };

//****************************************************************************
//           Instantiation of BITSLICES
//****************************************************************************
high_speed_selectio_wiz_v3_6_0_bs_top #(

// Common 
        .C_SERIALIZATION_FACTOR     (C_SERIALIZATION_FACTOR),  // Serialization factor
        .C_PLL0_RX_EXTERNAL_CLK_TO_DATA (C_PLL0_RX_EXTERNAL_CLK_TO_DATA),
        .C_SIM_DEVICE               (C_SIM_DEVICE), 
        .C_SIM_VERSION              (C_SIM_VERSION),
        .C_TEMPLATE                 (C_TEMPLATE),
        .C_ENABLE_N_PINS            (C_ENABLE_N_PINS),
// TX bitslice
        .C_CLK_FWD_BITSLICE_NO             (C_CLK_FWD_BITSLICE_NO),  // Clock Forward bitslice #
        .C_CLK_FWD_PHASE                   (C_CLK_FWD_PHASE),        // Clock forward phase  
        .C_TX_DATA_PHASE                   (C_TX_DATA_PHASE),        // TX Data phase  
        .C_CLK_FWD_ENABLE                  (C_CLK_FWD_ENABLE),       // Clock forward phase  
        .C_TX_BITSLICE_EN                  (C_TX_BITSLICE_EN),       // Bitslice # for which TX bitslice should be enabled 
        .C_DIFF_EN                         (C_DIFF_EN),            // Indicates whether the pin is differential or single ended
        .C_BS_INIT_VAL                     (C_BS_INIT_VAL),       

        .C_NIB2_EN_CLK_TO_EXT_NORTH        (C_NIB2_EN_CLK_TO_EXT_NORTH),
        .C_NIB2_EN_CLK_TO_EXT_SOUTH        (C_NIB2_EN_CLK_TO_EXT_SOUTH),
        .C_NIB3_EN_CLK_TO_EXT_NORTH        (C_NIB3_EN_CLK_TO_EXT_NORTH),
        .C_NIB3_EN_CLK_TO_EXT_SOUTH        (C_NIB3_EN_CLK_TO_EXT_SOUTH),
        .C_NIB4_EN_CLK_TO_EXT_NORTH        (C_NIB4_EN_CLK_TO_EXT_NORTH),
        .C_NIB4_EN_CLK_TO_EXT_SOUTH        (C_NIB4_EN_CLK_TO_EXT_SOUTH),
        .C_NIB5_EN_CLK_TO_EXT_NORTH        (C_NIB5_EN_CLK_TO_EXT_NORTH),
        .C_NIB5_EN_CLK_TO_EXT_SOUTH        (C_NIB5_EN_CLK_TO_EXT_SOUTH),

// TX/Bidir TX bitslice 
        .C_TX_DELAY_FORMAT          (C_TX_DELAY_FORMAT),
        .C_TX_IS_CLK_INVERTED       (C_TX_IS_CLK_INVERTED),
        .C_TX_IS_RST_DLY_INVERTED   (C_TX_IS_RST_DLY_INVERTED),
        .C_TX_IS_RST_INVERTED       (C_TX_IS_RST_INVERTED),
        .C_TX_NATIVE_ODELAY_BYPASS  (C_TX_NATIVE_ODELAY_BYPASS),
        .C_TX_PREEMPHASIS_S         (C_TX_PREEMPHASIS_S),  // Pre emphasis enablement
        .C_TX_PREEMPHASIS_D         (C_TX_PREEMPHASIS_D),  // Pre emphasis enablement
        .C_TX_DELAY_TYPE0           (C_TX_DELAY_TYPE0),  // TX delay type
        .C_TX_DELAY_TYPE1           (C_TX_DELAY_TYPE1),  // TX delay type
        .C_TX_DELAY_TYPE2           (C_TX_DELAY_TYPE2),  // TX delay type
        .C_TX_DELAY_TYPE3           (C_TX_DELAY_TYPE3),  // TX delay type
        .C_TX_DELAY_TYPE4           (C_TX_DELAY_TYPE4),  // TX delay type
        .C_TX_DELAY_TYPE5           (C_TX_DELAY_TYPE5),  // TX delay type
        .C_TX_DELAY_TYPE6           (C_TX_DELAY_TYPE6),  // TX delay type
        .C_TX_DELAY_TYPE7           (C_TX_DELAY_TYPE7),  // TX delay type
        .C_TX_DELAY_TYPE8           (C_TX_DELAY_TYPE8),  // TX delay type
        .C_TX_DELAY_TYPE9           (C_TX_DELAY_TYPE9),  // TX delay type
        .C_TX_DELAY_TYPE10          (C_TX_DELAY_TYPE10), // TX delay type
        .C_TX_DELAY_TYPE11          (C_TX_DELAY_TYPE11), // TX delay type
        .C_TX_DELAY_TYPE12          (C_TX_DELAY_TYPE12), // TX delay type
        .C_TX_DELAY_TYPE13          (C_TX_DELAY_TYPE13), // TX delay type
        .C_TX_DELAY_TYPE14          (C_TX_DELAY_TYPE14), // TX delay type
        .C_TX_DELAY_TYPE15          (C_TX_DELAY_TYPE15), // TX delay type
        .C_TX_DELAY_TYPE16          (C_TX_DELAY_TYPE16), // TX delay type
        .C_TX_DELAY_TYPE17          (C_TX_DELAY_TYPE17), // TX delay type
        .C_TX_DELAY_TYPE18          (C_TX_DELAY_TYPE18), // TX delay type
        .C_TX_DELAY_TYPE19          (C_TX_DELAY_TYPE19), // TX delay type
        .C_TX_DELAY_TYPE20          (C_TX_DELAY_TYPE20), // TX delay type
        .C_TX_DELAY_TYPE21          (C_TX_DELAY_TYPE21), // TX delay type
        .C_TX_DELAY_TYPE22          (C_TX_DELAY_TYPE22), // TX delay type
        .C_TX_DELAY_TYPE23          (C_TX_DELAY_TYPE23), // TX delay type
        .C_TX_DELAY_TYPE24          (C_TX_DELAY_TYPE24), // TX delay type
        .C_TX_DELAY_TYPE25          (C_TX_DELAY_TYPE25), // TX delay type
        .C_TX_DELAY_TYPE26          (C_TX_DELAY_TYPE26), // TX delay type
        .C_TX_DELAY_TYPE27          (C_TX_DELAY_TYPE27), // TX delay type
        .C_TX_DELAY_TYPE28          (C_TX_DELAY_TYPE28), // TX delay type
        .C_TX_DELAY_TYPE29          (C_TX_DELAY_TYPE29), // TX delay type
        .C_TX_DELAY_TYPE30          (C_TX_DELAY_TYPE30), // TX delay type
        .C_TX_DELAY_TYPE31          (C_TX_DELAY_TYPE31), // TX delay type
        .C_TX_DELAY_TYPE32          (C_TX_DELAY_TYPE32), // TX delay type
        .C_TX_DELAY_TYPE33          (C_TX_DELAY_TYPE33), // TX delay type
        .C_TX_DELAY_TYPE34          (C_TX_DELAY_TYPE34), // TX delay type
        .C_TX_DELAY_TYPE35          (C_TX_DELAY_TYPE35), // TX delay type
        .C_TX_DELAY_TYPE36          (C_TX_DELAY_TYPE36), // TX delay type
        .C_TX_DELAY_TYPE37          (C_TX_DELAY_TYPE37), // TX delay type
        .C_TX_DELAY_TYPE38          (C_TX_DELAY_TYPE38), // TX delay type
        .C_TX_DELAY_TYPE39          (C_TX_DELAY_TYPE39), // TX delay type
        .C_TX_DELAY_TYPE40          (C_TX_DELAY_TYPE40), // TX delay type
        .C_TX_DELAY_TYPE41          (C_TX_DELAY_TYPE41), // TX delay type
        .C_TX_DELAY_TYPE42          (C_TX_DELAY_TYPE42), // TX delay type
        .C_TX_DELAY_TYPE43          (C_TX_DELAY_TYPE43), // TX delay type
        .C_TX_DELAY_TYPE44          (C_TX_DELAY_TYPE44), // TX delay type
        .C_TX_DELAY_TYPE45          (C_TX_DELAY_TYPE45), // TX delay type
        .C_TX_DELAY_TYPE46          (C_TX_DELAY_TYPE46), // TX delay type
        .C_TX_DELAY_TYPE47          (C_TX_DELAY_TYPE47), // TX delay type
        .C_TX_DELAY_TYPE48          (C_TX_DELAY_TYPE48), // TX delay type
        .C_TX_DELAY_TYPE49          (C_TX_DELAY_TYPE49), // TX delay type
        .C_TX_DELAY_TYPE50          (C_TX_DELAY_TYPE50), // TX delay type
        .C_TX_DELAY_TYPE51          (C_TX_DELAY_TYPE51), // TX delay type
        .C_TX_DELAY_VALUE0          (C_TX_DELAY_VALUE0), // TX delay value
        .C_TX_DELAY_VALUE1          (C_TX_DELAY_VALUE1), // TX delay value
        .C_TX_DELAY_VALUE2          (C_TX_DELAY_VALUE2), // TX delay value
        .C_TX_DELAY_VALUE3          (C_TX_DELAY_VALUE3), // TX delay value
        .C_TX_DELAY_VALUE4          (C_TX_DELAY_VALUE4), // TX delay value
        .C_TX_DELAY_VALUE5          (C_TX_DELAY_VALUE5), // TX delay value
        .C_TX_DELAY_VALUE6          (C_TX_DELAY_VALUE6), // TX delay value
        .C_TX_DELAY_VALUE7          (C_TX_DELAY_VALUE7), // TX delay value
        .C_TX_DELAY_VALUE8          (C_TX_DELAY_VALUE8), // TX delay value
        .C_TX_DELAY_VALUE9          (C_TX_DELAY_VALUE9), // TX delay value
        .C_TX_DELAY_VALUE10         (C_TX_DELAY_VALUE10), // TX delay value
        .C_TX_DELAY_VALUE11         (C_TX_DELAY_VALUE11), // TX delay value
        .C_TX_DELAY_VALUE12         (C_TX_DELAY_VALUE12), // TX delay value
        .C_TX_DELAY_VALUE13         (C_TX_DELAY_VALUE13), // TX delay value
        .C_TX_DELAY_VALUE14         (C_TX_DELAY_VALUE14), // TX delay value
        .C_TX_DELAY_VALUE15         (C_TX_DELAY_VALUE15), // TX delay value
        .C_TX_DELAY_VALUE16         (C_TX_DELAY_VALUE16), // TX delay value
        .C_TX_DELAY_VALUE17         (C_TX_DELAY_VALUE17), // TX delay value
        .C_TX_DELAY_VALUE18         (C_TX_DELAY_VALUE18), // TX delay value
        .C_TX_DELAY_VALUE19         (C_TX_DELAY_VALUE19), // TX delay value
        .C_TX_DELAY_VALUE20         (C_TX_DELAY_VALUE20), // TX delay value
        .C_TX_DELAY_VALUE21         (C_TX_DELAY_VALUE21), // TX delay value
        .C_TX_DELAY_VALUE22         (C_TX_DELAY_VALUE22), // TX delay value
        .C_TX_DELAY_VALUE23         (C_TX_DELAY_VALUE23), // TX delay value
        .C_TX_DELAY_VALUE24         (C_TX_DELAY_VALUE24), // TX delay value
        .C_TX_DELAY_VALUE25         (C_TX_DELAY_VALUE25), // TX delay value
        .C_TX_DELAY_VALUE26         (C_TX_DELAY_VALUE26), // TX delay value
        .C_TX_DELAY_VALUE27         (C_TX_DELAY_VALUE27), // TX delay value
        .C_TX_DELAY_VALUE28         (C_TX_DELAY_VALUE28), // TX delay value
        .C_TX_DELAY_VALUE29         (C_TX_DELAY_VALUE29), // TX delay value
        .C_TX_DELAY_VALUE30         (C_TX_DELAY_VALUE30), // TX delay value
        .C_TX_DELAY_VALUE31         (C_TX_DELAY_VALUE31), // TX delay value
        .C_TX_DELAY_VALUE32         (C_TX_DELAY_VALUE32), // TX delay value
        .C_TX_DELAY_VALUE33         (C_TX_DELAY_VALUE33), // TX delay value
        .C_TX_DELAY_VALUE34         (C_TX_DELAY_VALUE34), // TX delay value
        .C_TX_DELAY_VALUE35         (C_TX_DELAY_VALUE35), // TX delay value
        .C_TX_DELAY_VALUE36         (C_TX_DELAY_VALUE36), // TX delay value
        .C_TX_DELAY_VALUE37         (C_TX_DELAY_VALUE37), // TX delay value
        .C_TX_DELAY_VALUE38         (C_TX_DELAY_VALUE38), // TX delay value
        .C_TX_DELAY_VALUE39         (C_TX_DELAY_VALUE39), // TX delay value
        .C_TX_DELAY_VALUE40         (C_TX_DELAY_VALUE40), // TX delay value
        .C_TX_DELAY_VALUE41         (C_TX_DELAY_VALUE41), // TX delay value
        .C_TX_DELAY_VALUE42         (C_TX_DELAY_VALUE42), // TX delay value
        .C_TX_DELAY_VALUE43         (C_TX_DELAY_VALUE43), // TX delay value
        .C_TX_DELAY_VALUE44         (C_TX_DELAY_VALUE44), // TX delay value
        .C_TX_DELAY_VALUE45         (C_TX_DELAY_VALUE45), // TX delay value
        .C_TX_DELAY_VALUE46         (C_TX_DELAY_VALUE46), // TX delay value
        .C_TX_DELAY_VALUE47         (C_TX_DELAY_VALUE47), // TX delay value
        .C_TX_DELAY_VALUE48         (C_TX_DELAY_VALUE48), // TX delay value
        .C_TX_DELAY_VALUE49         (C_TX_DELAY_VALUE49), // TX delay value
        .C_TX_DELAY_VALUE50         (C_TX_DELAY_VALUE50), // TX delay value
        .C_TX_DELAY_VALUE51         (C_TX_DELAY_VALUE51), // TX delay value
        .C_TX_REFCLK_FREQ           (C_TX_REFCLK_FREQ),   // TX clock frequency

// Bidir 
        .C_BIDIR_BITSLICE_EN         (C_BIDIR_BITSLICE_EN),  //  Bitslice # for which Bidir bitslice should be enabled 

// Rx 
        .C_SERIAL_MODE               (C_SERIAL_MODE),        // Serial mode
        .C_RX_BITSLICE0_EN           (C_RX_BITSLICE0_EN),    // RX bitslice0 enablement for each nibble 
        .C_RX_BITSLICE_EN            (C_RX_BITSLICE_EN),     // Bitslice # for which RX bitslice should be enabled 
        .C_RX_PIN_EN                 (C_RX_PIN_EN),          // Bitslice # for which RX bitslice should be enabled
        .C_RX_STROBE_EN              (C_RX_STROBE_EN),       // Strobe enable position for RX bitslice
        .C_RX_DELAY_CASCADE          (C_RX_DELAY_CASCADE),   // Cascased RX delay enablement  
        .C_RX_DELAY_FORMAT           (C_RX_DELAY_FORMAT),
        .C_RX_FIFO_SYNC_MODE         (C_RX_FIFO_SYNC_MODE),
        .C_RX_IS_CLK_EXT_INVERTED    (C_RX_IS_CLK_EXT_INVERTED),           
        .C_RX_IS_RST_DLY_EXT_INVERTED(C_RX_IS_RST_DLY_EXT_INVERTED),   
        .C_RX_IS_CLK_INVERTED        (C_RX_IS_CLK_INVERTED),                   
        .C_RX_IS_RST_DLY_INVERTED    (C_RX_IS_RST_DLY_INVERTED),           
        .C_RX_IS_RST_INVERTED        (C_RX_IS_RST_INVERTED),                   
        .C_RX_DELAY_TYPE0            (C_RX_DELAY_TYPE0),   // RX delay type
        .C_RX_DELAY_TYPE1            (C_RX_DELAY_TYPE1),   // RX delay type
        .C_RX_DELAY_TYPE2            (C_RX_DELAY_TYPE2),   // RX delay type
        .C_RX_DELAY_TYPE3            (C_RX_DELAY_TYPE3),   // RX delay type
        .C_RX_DELAY_TYPE4            (C_RX_DELAY_TYPE4),   // RX delay type
        .C_RX_DELAY_TYPE5            (C_RX_DELAY_TYPE5),   // RX delay type
        .C_RX_DELAY_TYPE6            (C_RX_DELAY_TYPE6),   // RX delay type
        .C_RX_DELAY_TYPE7            (C_RX_DELAY_TYPE7),   // RX delay type
        .C_RX_DELAY_TYPE8            (C_RX_DELAY_TYPE8),   // RX delay type
        .C_RX_DELAY_TYPE9            (C_RX_DELAY_TYPE9),   // RX delay type
        .C_RX_DELAY_TYPE10           (C_RX_DELAY_TYPE10), // RX delay type
        .C_RX_DELAY_TYPE11           (C_RX_DELAY_TYPE11), // RX delay type
        .C_RX_DELAY_TYPE12           (C_RX_DELAY_TYPE12), // RX delay type
        .C_RX_DELAY_TYPE13           (C_RX_DELAY_TYPE13), // RX delay type
        .C_RX_DELAY_TYPE14           (C_RX_DELAY_TYPE14), // RX delay type
        .C_RX_DELAY_TYPE15           (C_RX_DELAY_TYPE15), // RX delay type
        .C_RX_DELAY_TYPE16           (C_RX_DELAY_TYPE16), // RX delay type
        .C_RX_DELAY_TYPE17           (C_RX_DELAY_TYPE17), // RX delay type
        .C_RX_DELAY_TYPE18           (C_RX_DELAY_TYPE18), // RX delay type
        .C_RX_DELAY_TYPE19           (C_RX_DELAY_TYPE19), // RX delay type
        .C_RX_DELAY_TYPE20           (C_RX_DELAY_TYPE20), // RX delay type
        .C_RX_DELAY_TYPE21           (C_RX_DELAY_TYPE21), // RX delay type
        .C_RX_DELAY_TYPE22           (C_RX_DELAY_TYPE22), // RX delay type
        .C_RX_DELAY_TYPE23           (C_RX_DELAY_TYPE23), // RX delay type
        .C_RX_DELAY_TYPE24           (C_RX_DELAY_TYPE24), // RX delay type
        .C_RX_DELAY_TYPE25           (C_RX_DELAY_TYPE25), // RX delay type
        .C_RX_DELAY_TYPE26           (C_RX_DELAY_TYPE26), // RX delay type
        .C_RX_DELAY_TYPE27           (C_RX_DELAY_TYPE27), // RX delay type
        .C_RX_DELAY_TYPE28           (C_RX_DELAY_TYPE28), // RX delay type
        .C_RX_DELAY_TYPE29           (C_RX_DELAY_TYPE29), // RX delay type
        .C_RX_DELAY_TYPE30           (C_RX_DELAY_TYPE30), // RX delay type
        .C_RX_DELAY_TYPE31           (C_RX_DELAY_TYPE31), // RX delay type
        .C_RX_DELAY_TYPE32           (C_RX_DELAY_TYPE32), // RX delay type
        .C_RX_DELAY_TYPE33           (C_RX_DELAY_TYPE33), // RX delay type
        .C_RX_DELAY_TYPE34           (C_RX_DELAY_TYPE34), // RX delay type
        .C_RX_DELAY_TYPE35           (C_RX_DELAY_TYPE35), // RX delay type
        .C_RX_DELAY_TYPE36           (C_RX_DELAY_TYPE36), // RX delay type
        .C_RX_DELAY_TYPE37           (C_RX_DELAY_TYPE37), // RX delay type
        .C_RX_DELAY_TYPE38           (C_RX_DELAY_TYPE38), // RX delay type
        .C_RX_DELAY_TYPE39           (C_RX_DELAY_TYPE39), // RX delay type
        .C_RX_DELAY_TYPE40           (C_RX_DELAY_TYPE40), // RX delay type
        .C_RX_DELAY_TYPE41           (C_RX_DELAY_TYPE41), // RX delay type
        .C_RX_DELAY_TYPE42           (C_RX_DELAY_TYPE42), // RX delay type
        .C_RX_DELAY_TYPE43           (C_RX_DELAY_TYPE43), // RX delay type
        .C_RX_DELAY_TYPE44           (C_RX_DELAY_TYPE44), // RX delay type
        .C_RX_DELAY_TYPE45           (C_RX_DELAY_TYPE45), // RX delay type
        .C_RX_DELAY_TYPE46           (C_RX_DELAY_TYPE46), // RX delay type
        .C_RX_DELAY_TYPE47           (C_RX_DELAY_TYPE47), // RX delay type
        .C_RX_DELAY_TYPE48           (C_RX_DELAY_TYPE48), // RX delay type
        .C_RX_DELAY_TYPE49           (C_RX_DELAY_TYPE49), // RX delay type
        .C_RX_DELAY_TYPE50           (C_RX_DELAY_TYPE50), // RX delay type
        .C_RX_DELAY_TYPE51           (C_RX_DELAY_TYPE51), // RX delay type
        .C_RX_DELAY_VALUE0           (C_RX_DELAY_VALUE0), // RX delay value
        .C_RX_DELAY_VALUE1           (C_RX_DELAY_VALUE1), // RX delay value
        .C_RX_DELAY_VALUE2           (C_RX_DELAY_VALUE2), // RX delay value
        .C_RX_DELAY_VALUE3           (C_RX_DELAY_VALUE3), // RX delay value
        .C_RX_DELAY_VALUE4           (C_RX_DELAY_VALUE4), // RX delay value
        .C_RX_DELAY_VALUE5           (C_RX_DELAY_VALUE5), // RX delay value
        .C_RX_DELAY_VALUE6           (C_RX_DELAY_VALUE6), // RX delay value
        .C_RX_DELAY_VALUE7           (C_RX_DELAY_VALUE7), // RX delay value
        .C_RX_DELAY_VALUE8           (C_RX_DELAY_VALUE8), // RX delay value
        .C_RX_DELAY_VALUE9           (C_RX_DELAY_VALUE9), // RX delay value
        .C_RX_DELAY_VALUE10          (C_RX_DELAY_VALUE10), // RX delay value
        .C_RX_DELAY_VALUE11          (C_RX_DELAY_VALUE11), // RX delay value
        .C_RX_DELAY_VALUE12          (C_RX_DELAY_VALUE12), // RX delay value
        .C_RX_DELAY_VALUE13          (C_RX_DELAY_VALUE13), // RX delay value
        .C_RX_DELAY_VALUE14          (C_RX_DELAY_VALUE14), // RX delay value
        .C_RX_DELAY_VALUE15          (C_RX_DELAY_VALUE15), // RX delay value
        .C_RX_DELAY_VALUE16          (C_RX_DELAY_VALUE16), // RX delay value
        .C_RX_DELAY_VALUE17          (C_RX_DELAY_VALUE17), // RX delay value
        .C_RX_DELAY_VALUE18          (C_RX_DELAY_VALUE18), // RX delay value
        .C_RX_DELAY_VALUE19          (C_RX_DELAY_VALUE19), // RX delay value
        .C_RX_DELAY_VALUE20          (C_RX_DELAY_VALUE20), // RX delay value
        .C_RX_DELAY_VALUE21          (C_RX_DELAY_VALUE21), // RX delay value
        .C_RX_DELAY_VALUE22          (C_RX_DELAY_VALUE22), // RX delay value
        .C_RX_DELAY_VALUE23          (C_RX_DELAY_VALUE23), // RX delay value
        .C_RX_DELAY_VALUE24          (C_RX_DELAY_VALUE24), // RX delay value
        .C_RX_DELAY_VALUE25          (C_RX_DELAY_VALUE25), // RX delay value
        .C_RX_DELAY_VALUE26          (C_RX_DELAY_VALUE26), // RX delay value
        .C_RX_DELAY_VALUE27          (C_RX_DELAY_VALUE27), // RX delay value
        .C_RX_DELAY_VALUE28          (C_RX_DELAY_VALUE28), // RX delay value
        .C_RX_DELAY_VALUE29          (C_RX_DELAY_VALUE29), // RX delay value
        .C_RX_DELAY_VALUE30          (C_RX_DELAY_VALUE30), // RX delay value
        .C_RX_DELAY_VALUE31          (C_RX_DELAY_VALUE31), // RX delay value
        .C_RX_DELAY_VALUE32          (C_RX_DELAY_VALUE32), // RX delay value
        .C_RX_DELAY_VALUE33          (C_RX_DELAY_VALUE33), // RX delay value
        .C_RX_DELAY_VALUE34          (C_RX_DELAY_VALUE34), // RX delay value
        .C_RX_DELAY_VALUE35          (C_RX_DELAY_VALUE35), // RX delay value
        .C_RX_DELAY_VALUE36          (C_RX_DELAY_VALUE36), // RX delay value
        .C_RX_DELAY_VALUE37          (C_RX_DELAY_VALUE37), // RX delay value
        .C_RX_DELAY_VALUE38          (C_RX_DELAY_VALUE38), // RX delay value
        .C_RX_DELAY_VALUE39          (C_RX_DELAY_VALUE39), // RX delay value
        .C_RX_DELAY_VALUE40          (C_RX_DELAY_VALUE40), // RX delay value
        .C_RX_DELAY_VALUE41          (C_RX_DELAY_VALUE41), // RX delay value
        .C_RX_DELAY_VALUE42          (C_RX_DELAY_VALUE42), // RX delay value
        .C_RX_DELAY_VALUE43          (C_RX_DELAY_VALUE43), // RX delay value
        .C_RX_DELAY_VALUE44          (C_RX_DELAY_VALUE44), // RX delay value
        .C_RX_DELAY_VALUE45          (C_RX_DELAY_VALUE45), // RX delay value
        .C_RX_DELAY_VALUE46          (C_RX_DELAY_VALUE46), // RX delay value
        .C_RX_DELAY_VALUE47          (C_RX_DELAY_VALUE47), // RX delay value
        .C_RX_DELAY_VALUE48          (C_RX_DELAY_VALUE48), // RX delay value
        .C_RX_DELAY_VALUE49          (C_RX_DELAY_VALUE49), // RX delay value
        .C_RX_DELAY_VALUE50          (C_RX_DELAY_VALUE50), // RX delay value
        .C_RX_DELAY_VALUE51          (C_RX_DELAY_VALUE51), // RX delay value
        .C_RX_DELAY_VALUE_EXT0          (C_RX_DELAY_VALUE_EXT0), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT1          (C_RX_DELAY_VALUE_EXT1), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT2          (C_RX_DELAY_VALUE_EXT2), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT3          (C_RX_DELAY_VALUE_EXT3), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT4          (C_RX_DELAY_VALUE_EXT4), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT5          (C_RX_DELAY_VALUE_EXT5), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT6          (C_RX_DELAY_VALUE_EXT6), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT7          (C_RX_DELAY_VALUE_EXT7), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT8          (C_RX_DELAY_VALUE_EXT8), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT9          (C_RX_DELAY_VALUE_EXT9), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT10          (C_RX_DELAY_VALUE_EXT10), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT11          (C_RX_DELAY_VALUE_EXT11), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT12          (C_RX_DELAY_VALUE_EXT12), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT13          (C_RX_DELAY_VALUE_EXT13), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT14          (C_RX_DELAY_VALUE_EXT14), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT15          (C_RX_DELAY_VALUE_EXT15), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT16          (C_RX_DELAY_VALUE_EXT16), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT17          (C_RX_DELAY_VALUE_EXT17), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT18          (C_RX_DELAY_VALUE_EXT18), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT19          (C_RX_DELAY_VALUE_EXT19), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT20          (C_RX_DELAY_VALUE_EXT20), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT21          (C_RX_DELAY_VALUE_EXT21), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT22          (C_RX_DELAY_VALUE_EXT22), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT23          (C_RX_DELAY_VALUE_EXT23), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT24          (C_RX_DELAY_VALUE_EXT24), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT25          (C_RX_DELAY_VALUE_EXT25), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT26          (C_RX_DELAY_VALUE_EXT26), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT27          (C_RX_DELAY_VALUE_EXT27), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT28          (C_RX_DELAY_VALUE_EXT28), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT29          (C_RX_DELAY_VALUE_EXT29), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT30          (C_RX_DELAY_VALUE_EXT30), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT31          (C_RX_DELAY_VALUE_EXT31), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT32          (C_RX_DELAY_VALUE_EXT32), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT33          (C_RX_DELAY_VALUE_EXT33), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT34          (C_RX_DELAY_VALUE_EXT34), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT35          (C_RX_DELAY_VALUE_EXT35), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT36          (C_RX_DELAY_VALUE_EXT36), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT37          (C_RX_DELAY_VALUE_EXT37), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT38          (C_RX_DELAY_VALUE_EXT38), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT39          (C_RX_DELAY_VALUE_EXT39), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT40          (C_RX_DELAY_VALUE_EXT40), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT41          (C_RX_DELAY_VALUE_EXT41), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT42          (C_RX_DELAY_VALUE_EXT42), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT43          (C_RX_DELAY_VALUE_EXT43), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT44          (C_RX_DELAY_VALUE_EXT44), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT45          (C_RX_DELAY_VALUE_EXT45), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT46          (C_RX_DELAY_VALUE_EXT46), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT47          (C_RX_DELAY_VALUE_EXT47), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT48          (C_RX_DELAY_VALUE_EXT48), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT49          (C_RX_DELAY_VALUE_EXT49), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT50          (C_RX_DELAY_VALUE_EXT50), // RX extended delay value
        .C_RX_DELAY_VALUE_EXT51          (C_RX_DELAY_VALUE_EXT51), // RX extended delay value
        .C_RX_REFCLK_FREQ                (C_RX_REFCLK_FREQ),       // RX clock frequency
        .C_FIFO_SYNC_MODE                (C_FIFO_SYNC_MODE),       

// RX/Bidir-RX 
        .C_BITSLIP_VAL                   (C_BITSLIP_VAL),          // Bitslip value
        .C_BITSLIP_MODE                  (C_BITSLIP_MODE),         // Bitslip mode
        .C_ENABLE_BITSLIP                (C_ENABLE_BITSLIP),
        .C_ENABLE_DATA_BITSLIP           (C_ENABLE_DATA_BITSLIP),

// Fifo Write clock parameters		
        .C_FIFO_WR_CLK_EN                (C_PLL0_FIFO_WRITE_CLK_EN),

// Bidir Parameters
        .C_EN_TX_TRI                    (C_EN_TX_TRI),
        .C_DATA_TRI                     (C_DATA_TRI),
        .C_CLOCK_TRI                    (C_CLOCK_TRI),
        .C_BIDIR_FIFO_SYNC_MODE         (C_BIDIR_FIFO_SYNC_MODE),
        .C_BIDIR_RX_DELAY_FORMAT        (C_BIDIR_RX_DELAY_FORMAT),
        .C_BIDIR_TX_DELAY_FORMAT        (C_BIDIR_TX_DELAY_FORMAT),
        .C_BIDIR_IS_RX_CLK_INVERTED     (C_BIDIR_IS_RX_CLK_INVERTED),
        .C_BIDIR_IS_RX_RST_DLY_INVERTED (C_BIDIR_IS_RX_RST_DLY_INVERTED),
        .C_BIDIR_IS_RX_RST_INVERTED     (C_BIDIR_IS_RX_RST_INVERTED),
        .C_BIDIR_IS_TX_CLK_INVERTED     (C_BIDIR_IS_TX_CLK_INVERTED),
        .C_BIDIR_IS_TX_RST_DLY_INVERTED (C_BIDIR_IS_TX_RST_DLY_INVERTED),
        .C_BIDIR_IS_TX_RST_INVERTED     (C_BIDIR_IS_TX_RST_INVERTED),


// TX BITSLICE TRI Parameters
        .TX_BITSLICE_TRI_EN              (TX_BITSLICE_TRI_EN),
        .C_TX_TRI_DELAY_FORMAT           (C_TX_TRI_DELAY_FORMAT),
        .C_TX_TRI_NATIVE_ODELAY_BYPASS   (C_TX_TRI_NATIVE_ODELAY_BYPASS),
        .C_TX_TRI_INIT                   (C_TX_TRI_INIT),                // Default value for the attribute
        .C_TX_TRI_IS_CLK_INVERTED        (C_TX_TRI_IS_CLK_INVERTED),     // Default value for the attribute
        .C_TX_TRI_IS_RST_DLY_INVERTED    (C_TX_TRI_IS_RST_DLY_INVERTED), // Default value for the attribute
        .C_TX_TRI_IS_RST_INVERTED        (C_TX_TRI_IS_RST_INVERTED),     // Default value for the attribute
        .C_TX_TRI_OUTPUT_PHASE_90        (C_TX_TRI_OUTPUT_PHASE_90),     // Only for Clock forward delay format is used
        .C_TX_TRI_DELAY_TYPE0            (C_TX_TRI_DELAY_TYPE0),   // TX delay type
        .C_TX_TRI_DELAY_TYPE1            (C_TX_TRI_DELAY_TYPE1),   // TX delay type
        .C_TX_TRI_DELAY_TYPE2            (C_TX_TRI_DELAY_TYPE2),   // TX delay type
        .C_TX_TRI_DELAY_TYPE3            (C_TX_TRI_DELAY_TYPE3),   // TX delay type
        .C_TX_TRI_DELAY_TYPE4            (C_TX_TRI_DELAY_TYPE4),   // TX delay type
        .C_TX_TRI_DELAY_TYPE5            (C_TX_TRI_DELAY_TYPE5),   // TX delay type
        .C_TX_TRI_DELAY_TYPE6            (C_TX_TRI_DELAY_TYPE6),   // TX delay type
        .C_TX_TRI_DELAY_TYPE7            (C_TX_TRI_DELAY_TYPE7),   // TX delay type
        .C_TX_TRI_DELAY_VALUE0           (C_TX_TRI_DELAY_VALUE0),  // TX delay value
        .C_TX_TRI_DELAY_VALUE1           (C_TX_TRI_DELAY_VALUE1),  // TX delay value
        .C_TX_TRI_DELAY_VALUE2           (C_TX_TRI_DELAY_VALUE2),  // TX delay value
        .C_TX_TRI_DELAY_VALUE3           (C_TX_TRI_DELAY_VALUE3),  // TX delay value
        .C_TX_TRI_DELAY_VALUE4           (C_TX_TRI_DELAY_VALUE4),  // TX delay value
        .C_TX_TRI_DELAY_VALUE5           (C_TX_TRI_DELAY_VALUE5),  // TX delay value
        .C_TX_TRI_DELAY_VALUE6           (C_TX_TRI_DELAY_VALUE6),  // TX delay value
        .C_TX_TRI_DELAY_VALUE7           (C_TX_TRI_DELAY_VALUE7)   // TX delay value
)
bs_top_inst 
(
// Common Signals
         //.div_clk_to_fabric              (pll0_clkout0_int),
         .div_clk_to_fabric              (fabric_clk),
         .start_bitslip                  (start_bitslip),
         .core_rdy                       (core_rdy_r),
         .rx_bitslip_sync_done           (rx_bitslip_sync_done),
         .rxtx_bitslip_sync_done         (rxtx_bitslip_sync_done),
         .rst_seq_done                   (rst_seq_done),
         .rst_in                         (rst_in),
         .bs_tx_clk_in                   (bs_tx_clk_in),   
         .bs_tx_rst_in                   (bs_rst),      
         .bs_tx_rst_dly_in               (rst_dly),   
         .bs_rx_clk_in                   (bs_rx_clk_in),   
         .bs_rx_rst_in                   (bs_rst),   
         .bs_rx_rst_dly_in               (rst_dly),   
         .bs_clk_ext_in                  (bs_clk_ext_in),   
         .bs_rst_dly_ext_in              (rst_dly),   
         .bs_rxtx_tx_clk_in              (bs_rxtx_tx_clk_in),   
         .bs_rxtx_tx_rst_in              (bs_rst),   
         .bs_rxtx_tx_rst_dly_in          (rst_dly),   
         .bs_rxtx_rx_clk_in              (bs_rxtx_rx_clk_in),   
         .bs_rxtx_rx_rst_in              (bs_rst),   
         .bs_rxtx_rx_rst_dly_in          (rst_dly),   
         .bs_tri_clk_in                  (bs_tri_clk_in),    
         .bs_tri_reset_in                (bs_rst[0]),   
         .bs_tri_rst_dly_in              (rst_dly[0]),

         .tx_bs_t_out                    (tx_bs_t_out),           
//BITSLICE0 Signals
         .bs0_D_data_from_fabric_in                   (bs0_data_from_fabric_in),  
         .bs0_O_out                                   (bs_to_buf_data[0]),       
         .bs0_t_out                                   (bs_to_buf_t[0]),           
         .bs0_t_in                                    (bs0_t_in),           
         .bs0_tx_ce_in                                (bs0_tx_ce_in),          
         .bs0_tx_cntvaluein                           (bs0_tx_cntvaluein),      
         .bs0_tx_cntvalueout                          (bs0_tx_cntvalueout),    
         .bs0_tx_en_vtc_in                            (bs0_tx_en_vtc_in),      
         .bs0_tx_inc_in                               (bs0_tx_inc_in),          
         .bs0_tx_load_in                              (bs0_tx_load_in),        
         .bs0_datain_from_buf_in                      (data_to_bs[0]),         
         .bs0_Q_data_to_fabric_out                    (bs0_data_to_fabric_out),       
         .bs0_rx_ce_in                                (bs0_rx_ce_in),       
         .bs0_rxcntvalueout                           (bs0_rxcntvalueout),       
         .bs0_rx_cntvaluein                           (bs0_rx_cntvaluein),       
         .bs0_rx_en_vtc_in                            (bs0_rx_en_vtc_in),       
         .bs0_rx_inc_in                               (bs0_rx_inc_in),       
         .bs0_rx_load_in                              (bs0_rx_load_in),       
         .bs0_ce_ext_in                               (bs0_ce_ext_in),       
         .bs0_cntvalueout_ext_out                     (bs0_cntvalueout_ext_out),  
         .bs0_cntvaluein_ext_in                       (bs0_cntvaluein_ext_in),    
         .bs0_en_vtc_ext_in                           (bs0_en_vtc_ext_in),       
         .bs0_inc_ext_in                              (bs0_inc_ext_in),       
         .bs0_load_ext_in                             (bs0_load_ext_in),       
         .bs0_fifo_empty_out                          (bs0_fifo_empty_out),       
         .bs0_fifo_rd_clk                             (bs0_fifo_rd_clk),       
         .bs0_fifo_rd_en                              (bs0_fifo_rd_en),       
         .bs0_tx_bit_ctrl_in                          (n0_tx_bit_ctrl_out0),       
         .bs0_tx_bit_ctrl_out                         (n0_tx_bit_ctrl_in0),      
         .bs0_rx_bit_ctrl_in                          (n0_rx_bit_ctrl_out0),       
         .bs0_rx_bit_ctrl_out                         (n0_rx_bit_ctrl_in0),      
//BITSLICE1 Signals
         .bs1_D_data_from_fabric_in                   (bs1_data_from_fabric_in),  
         .bs1_O_out                                   (bs_to_buf_data[1]),       
         .bs1_t_out                                   (bs_to_buf_t[1]),           
         .bs1_t_in                                    (bs1_t_in),           
         .bs1_tx_ce_in                                (bs1_tx_ce_in),          
         .bs1_tx_cntvaluein                           (bs1_tx_cntvaluein),      
         .bs1_tx_cntvalueout                          (bs1_tx_cntvalueout),    
         .bs1_tx_en_vtc_in                            (bs1_tx_en_vtc_in),      
         .bs1_tx_inc_in                               (bs1_tx_inc_in),          
         .bs1_tx_load_in                              (bs1_tx_load_in),        
         .bs1_datain_from_buf_in                      (data_to_bs_from_buf[1]),         
         .bs1_Q_data_to_fabric_out                    (bs1_data_to_fabric_out),       
         .bs1_rx_ce_in                                (bs1_rx_ce_in),       
         .bs1_rxcntvalueout                           (bs1_rxcntvalueout),       
         .bs1_rx_cntvaluein                           (bs1_rx_cntvaluein),       
         .bs1_rx_en_vtc_in                            (bs1_rx_en_vtc_in),       
         .bs1_rx_inc_in                               (bs1_rx_inc_in),       
         .bs1_rx_load_in                              (bs1_rx_load_in),       
         .bs1_ce_ext_in                               (bs1_ce_ext_in),       
         .bs1_cntvalueout_ext_out                     (bs1_cntvalueout_ext_out),  
         .bs1_cntvaluein_ext_in                       (bs1_cntvaluein_ext_in),    
         .bs1_en_vtc_ext_in                           (bs1_en_vtc_ext_in),       
         .bs1_inc_ext_in                              (bs1_inc_ext_in),       
         .bs1_load_ext_in                             (bs1_load_ext_in),       
         .bs1_fifo_empty_out                          (bs1_fifo_empty_out),       
         .bs1_fifo_rd_clk                             (bs1_fifo_rd_clk),       
         .bs1_fifo_rd_en                              (bs1_fifo_rd_en),       
         .bs1_tx_bit_ctrl_in                          (n0_tx_bit_ctrl_out1),       
         .bs1_tx_bit_ctrl_out                         (n0_tx_bit_ctrl_in1),      
         .bs1_rx_bit_ctrl_in                          (n0_rx_bit_ctrl_out1),       
         .bs1_rx_bit_ctrl_out                         (n0_rx_bit_ctrl_in1),      
//BITSLICE2 Signals
         .bs2_D_data_from_fabric_in                   (bs2_data_from_fabric_in),  
         .bs2_O_out                                   (bs_to_buf_data[2]),       
         .bs2_t_out                                   (bs_to_buf_t[2]),           
         .bs2_t_in                                    (bs2_t_in),           
         .bs2_tx_ce_in                                (bs2_tx_ce_in),          
         .bs2_tx_cntvaluein                           (bs2_tx_cntvaluein),      
         .bs2_tx_cntvalueout                          (bs2_tx_cntvalueout),    
         .bs2_tx_en_vtc_in                            (bs2_tx_en_vtc_in),      
         .bs2_tx_inc_in                               (bs2_tx_inc_in),          
         .bs2_tx_load_in                              (bs2_tx_load_in),        
         .bs2_datain_from_buf_in                      (data_to_bs[2]),         
         .bs2_Q_data_to_fabric_out                    (bs2_data_to_fabric_out),       
         .bs2_rx_ce_in                                (bs2_rx_ce_in),       
         .bs2_rxcntvalueout                           (bs2_rxcntvalueout),       
         .bs2_rx_cntvaluein                           (bs2_rx_cntvaluein),       
         .bs2_rx_en_vtc_in                            (bs2_rx_en_vtc_in),       
         .bs2_rx_inc_in                               (bs2_rx_inc_in),       
         .bs2_rx_load_in                              (bs2_rx_load_in),       
         .bs2_ce_ext_in                               (bs2_ce_ext_in),       
         .bs2_cntvalueout_ext_out                     (bs2_cntvalueout_ext_out),  
         .bs2_cntvaluein_ext_in                       (bs2_cntvaluein_ext_in),    
         .bs2_en_vtc_ext_in                           (bs2_en_vtc_ext_in),       
         .bs2_inc_ext_in                              (bs2_inc_ext_in),       
         .bs2_load_ext_in                             (bs2_load_ext_in),       
         .bs2_fifo_empty_out                          (bs2_fifo_empty_out),       
         .bs2_fifo_rd_clk                             (bs2_fifo_rd_clk),       
         .bs2_fifo_rd_en                              (bs2_fifo_rd_en),       
         .bs2_tx_bit_ctrl_in                          (n0_tx_bit_ctrl_out2),       
         .bs2_tx_bit_ctrl_out                         (n0_tx_bit_ctrl_in2),      
         .bs2_rx_bit_ctrl_in                          (n0_rx_bit_ctrl_out2),       
         .bs2_rx_bit_ctrl_out                         (n0_rx_bit_ctrl_in2),      
//BITSLICE3 Signals
         .bs3_D_data_from_fabric_in                   (bs3_data_from_fabric_in),  
         .bs3_O_out                                   (bs_to_buf_data[3]),       
         .bs3_t_out                                   (bs_to_buf_t[3]),           
         .bs3_t_in                                    (bs3_t_in),           
         .bs3_tx_ce_in                                (bs3_tx_ce_in),          
         .bs3_tx_cntvaluein                           (bs3_tx_cntvaluein),      
         .bs3_tx_cntvalueout                          (bs3_tx_cntvalueout),    
         .bs3_tx_en_vtc_in                            (bs3_tx_en_vtc_in),      
         .bs3_tx_inc_in                               (bs3_tx_inc_in),          
         .bs3_tx_load_in                              (bs3_tx_load_in),        
         .bs3_datain_from_buf_in                      (data_to_bs_from_buf[3]),         
         .bs3_Q_data_to_fabric_out                    (bs3_data_to_fabric_out),       
         .bs3_rx_ce_in                                (bs3_rx_ce_in),       
         .bs3_rxcntvalueout                           (bs3_rxcntvalueout),       
         .bs3_rx_cntvaluein                           (bs3_rx_cntvaluein),       
         .bs3_rx_en_vtc_in                            (bs3_rx_en_vtc_in),       
         .bs3_rx_inc_in                               (bs3_rx_inc_in),       
         .bs3_rx_load_in                              (bs3_rx_load_in),       
         .bs3_ce_ext_in                               (bs3_ce_ext_in),       
         .bs3_cntvalueout_ext_out                     (bs3_cntvalueout_ext_out),  
         .bs3_cntvaluein_ext_in                       (bs3_cntvaluein_ext_in),    
         .bs3_en_vtc_ext_in                           (bs3_en_vtc_ext_in),       
         .bs3_inc_ext_in                              (bs3_inc_ext_in),       
         .bs3_load_ext_in                             (bs3_load_ext_in),       
         .bs3_fifo_empty_out                          (bs3_fifo_empty_out),       
         .bs3_fifo_rd_clk                             (bs3_fifo_rd_clk),       
         .bs3_fifo_rd_en                              (bs3_fifo_rd_en),       
         .bs3_tx_bit_ctrl_in                          (n0_tx_bit_ctrl_out3),       
         .bs3_tx_bit_ctrl_out                         (n0_tx_bit_ctrl_in3),      
         .bs3_rx_bit_ctrl_in                          (n0_rx_bit_ctrl_out3),       
         .bs3_rx_bit_ctrl_out                         (n0_rx_bit_ctrl_in3),      
//BITSLICE4 Signals
         .bs4_D_data_from_fabric_in                   (bs4_data_from_fabric_in),  
         .bs4_O_out                                   (bs_to_buf_data[4]),       
         .bs4_t_out                                   (bs_to_buf_t[4]),           
         .bs4_t_in                                    (bs4_t_in),           
         .bs4_tx_ce_in                                (bs4_tx_ce_in),          
         .bs4_tx_cntvaluein                           (bs4_tx_cntvaluein),      
         .bs4_tx_cntvalueout                          (bs4_tx_cntvalueout),    
         .bs4_tx_en_vtc_in                            (bs4_tx_en_vtc_in),      
         .bs4_tx_inc_in                               (bs4_tx_inc_in),          
         .bs4_tx_load_in                              (bs4_tx_load_in),        
         .bs4_datain_from_buf_in                      (data_to_bs[4]),         
         .bs4_Q_data_to_fabric_out                    (bs4_data_to_fabric_out),       
         .bs4_rx_ce_in                                (bs4_rx_ce_in),       
         .bs4_rxcntvalueout                           (bs4_rxcntvalueout),       
         .bs4_rx_cntvaluein                           (bs4_rx_cntvaluein),       
         .bs4_rx_en_vtc_in                            (bs4_rx_en_vtc_in),       
         .bs4_rx_inc_in                               (bs4_rx_inc_in),       
         .bs4_rx_load_in                              (bs4_rx_load_in),       
         .bs4_ce_ext_in                               (bs4_ce_ext_in),       
         .bs4_cntvalueout_ext_out                     (bs4_cntvalueout_ext_out),  
         .bs4_cntvaluein_ext_in                       (bs4_cntvaluein_ext_in),    
         .bs4_en_vtc_ext_in                           (bs4_en_vtc_ext_in),       
         .bs4_inc_ext_in                              (bs4_inc_ext_in),       
         .bs4_load_ext_in                             (bs4_load_ext_in),       
         .bs4_fifo_empty_out                          (bs4_fifo_empty_out),       
         .bs4_fifo_rd_clk                             (bs4_fifo_rd_clk),       
         .bs4_fifo_rd_en                              (bs4_fifo_rd_en),       
         .bs4_tx_bit_ctrl_in                          (n0_tx_bit_ctrl_out4),       
         .bs4_tx_bit_ctrl_out                         (n0_tx_bit_ctrl_in4),      
         .bs4_rx_bit_ctrl_in                          (n0_rx_bit_ctrl_out4),       
         .bs4_rx_bit_ctrl_out                         (n0_rx_bit_ctrl_in4),      
//BITSLICE5 Signals
         .bs5_D_data_from_fabric_in                   (bs5_data_from_fabric_in),  
         .bs5_O_out                                   (bs_to_buf_data[5]),       
         .bs5_t_out                                   (bs_to_buf_t[5]),           
         .bs5_t_in                                    (bs5_t_in),           
         .bs5_tx_ce_in                                (bs5_tx_ce_in),          
         .bs5_tx_cntvaluein                           (bs5_tx_cntvaluein),      
         .bs5_tx_cntvalueout                          (bs5_tx_cntvalueout),    
         .bs5_tx_en_vtc_in                            (bs5_tx_en_vtc_in),      
         .bs5_tx_inc_in                               (bs5_tx_inc_in),          
         .bs5_tx_load_in                              (bs5_tx_load_in),        
         .bs5_datain_from_buf_in                      (data_to_bs_from_buf[5]),         
         .bs5_Q_data_to_fabric_out                    (bs5_data_to_fabric_out),       
         .bs5_rx_ce_in                                (bs5_rx_ce_in),       
         .bs5_rxcntvalueout                           (bs5_rxcntvalueout),       
         .bs5_rx_cntvaluein                           (bs5_rx_cntvaluein),       
         .bs5_rx_en_vtc_in                            (bs5_rx_en_vtc_in),       
         .bs5_rx_inc_in                               (bs5_rx_inc_in),       
         .bs5_rx_load_in                              (bs5_rx_load_in),       
         .bs5_ce_ext_in                               (bs5_ce_ext_in),       
         .bs5_cntvalueout_ext_out                     (bs5_cntvalueout_ext_out),  
         .bs5_cntvaluein_ext_in                       (bs5_cntvaluein_ext_in),    
         .bs5_en_vtc_ext_in                           (bs5_en_vtc_ext_in),       
         .bs5_inc_ext_in                              (bs5_inc_ext_in),       
         .bs5_load_ext_in                             (bs5_load_ext_in),       
         .bs5_fifo_empty_out                          (bs5_fifo_empty_out),       
         .bs5_fifo_rd_clk                             (bs5_fifo_rd_clk),       
         .bs5_fifo_rd_en                              (bs5_fifo_rd_en),       
         .bs5_tx_bit_ctrl_in                          (n0_tx_bit_ctrl_out5),       
         .bs5_tx_bit_ctrl_out                         (n0_tx_bit_ctrl_in5),      
         .bs5_rx_bit_ctrl_in                          (n0_rx_bit_ctrl_out5),       
         .bs5_rx_bit_ctrl_out                         (n0_rx_bit_ctrl_in5),      
//BITSLICE6 Signals
         .bs6_D_data_from_fabric_in                   (bs6_data_from_fabric_in),  
         .bs6_O_out                                   (bs_to_buf_data[6]),       
         .bs6_t_out                                   (bs_to_buf_t[6]),           
         .bs6_t_in                                    (bs6_t_in),           
         .bs6_tx_ce_in                                (bs6_tx_ce_in),          
         .bs6_tx_cntvaluein                           (bs6_tx_cntvaluein),      
         .bs6_tx_cntvalueout                          (bs6_tx_cntvalueout),    
         .bs6_tx_en_vtc_in                            (bs6_tx_en_vtc_in),      
         .bs6_tx_inc_in                               (bs6_tx_inc_in),          
         .bs6_tx_load_in                              (bs6_tx_load_in),        
         .bs6_datain_from_buf_in                      (data_to_bs[6]),         
         .bs6_Q_data_to_fabric_out                    (bs6_data_to_fabric_out),       
         .bs6_rx_ce_in                                (bs6_rx_ce_in),       
         .bs6_rxcntvalueout                           (bs6_rxcntvalueout),       
         .bs6_rx_cntvaluein                           (bs6_rx_cntvaluein),       
         .bs6_rx_en_vtc_in                            (bs6_rx_en_vtc_in),       
         .bs6_rx_inc_in                               (bs6_rx_inc_in),       
         .bs6_rx_load_in                              (bs6_rx_load_in),       
         .bs6_ce_ext_in                               (bs6_ce_ext_in),       
         .bs6_cntvalueout_ext_out                     (bs6_cntvalueout_ext_out),  
         .bs6_cntvaluein_ext_in                       (bs6_cntvaluein_ext_in),    
         .bs6_en_vtc_ext_in                           (bs6_en_vtc_ext_in),       
         .bs6_inc_ext_in                              (bs6_inc_ext_in),       
         .bs6_load_ext_in                             (bs6_load_ext_in),       
         .bs6_fifo_empty_out                          (bs6_fifo_empty_out),       
         .bs6_fifo_rd_clk                             (bs6_fifo_rd_clk),       
         .bs6_fifo_rd_en                              (bs6_fifo_rd_en),       
         .bs6_tx_bit_ctrl_in                          (n1_tx_bit_ctrl_out0),       
         .bs6_tx_bit_ctrl_out                         (n1_tx_bit_ctrl_in0),      
         .bs6_rx_bit_ctrl_in                          (n1_rx_bit_ctrl_out0),       
         .bs6_rx_bit_ctrl_out                         (n1_rx_bit_ctrl_in0),      
//BITSLICE7 Signals
         .bs7_D_data_from_fabric_in                   (bs7_data_from_fabric_in),  
         .bs7_O_out                                   (bs_to_buf_data[7]),       
         .bs7_t_out                                   (bs_to_buf_t[7]),           
         .bs7_t_in                                    (bs7_t_in),           
         .bs7_tx_ce_in                                (bs7_tx_ce_in),          
         .bs7_tx_cntvaluein                           (bs7_tx_cntvaluein),      
         .bs7_tx_cntvalueout                          (bs7_tx_cntvalueout),    
         .bs7_tx_en_vtc_in                            (bs7_tx_en_vtc_in),      
         .bs7_tx_inc_in                               (bs7_tx_inc_in),          
         .bs7_tx_load_in                              (bs7_tx_load_in),        
         .bs7_datain_from_buf_in                      (data_to_bs_from_buf[7]),         
         .bs7_Q_data_to_fabric_out                    (bs7_data_to_fabric_out),       
         .bs7_rx_ce_in                                (bs7_rx_ce_in),       
         .bs7_rxcntvalueout                           (bs7_rxcntvalueout),       
         .bs7_rx_cntvaluein                           (bs7_rx_cntvaluein),       
         .bs7_rx_en_vtc_in                            (bs7_rx_en_vtc_in),       
         .bs7_rx_inc_in                               (bs7_rx_inc_in),       
         .bs7_rx_load_in                              (bs7_rx_load_in),       
         .bs7_ce_ext_in                               (bs7_ce_ext_in),       
         .bs7_cntvalueout_ext_out                     (bs7_cntvalueout_ext_out),  
         .bs7_cntvaluein_ext_in                       (bs7_cntvaluein_ext_in),    
         .bs7_en_vtc_ext_in                           (bs7_en_vtc_ext_in),       
         .bs7_inc_ext_in                              (bs7_inc_ext_in),       
         .bs7_load_ext_in                             (bs7_load_ext_in),       
         .bs7_fifo_empty_out                          (bs7_fifo_empty_out),       
         .bs7_fifo_rd_clk                             (bs7_fifo_rd_clk),       
         .bs7_fifo_rd_en                              (bs7_fifo_rd_en),       
         .bs7_tx_bit_ctrl_in                          (n1_tx_bit_ctrl_out1),       
         .bs7_tx_bit_ctrl_out                         (n1_tx_bit_ctrl_in1),      
         .bs7_rx_bit_ctrl_in                          (n1_rx_bit_ctrl_out1),       
         .bs7_rx_bit_ctrl_out                         (n1_rx_bit_ctrl_in1),      
//BITSLICE8 Signals
         .bs8_D_data_from_fabric_in                   (bs8_data_from_fabric_in),  
         .bs8_O_out                                   (bs_to_buf_data[8]),       
         .bs8_t_out                                   (bs_to_buf_t[8]),           
         .bs8_t_in                                    (bs8_t_in),           
         .bs8_tx_ce_in                                (bs8_tx_ce_in),          
         .bs8_tx_cntvaluein                           (bs8_tx_cntvaluein),      
         .bs8_tx_cntvalueout                          (bs8_tx_cntvalueout),    
         .bs8_tx_en_vtc_in                            (bs8_tx_en_vtc_in),      
         .bs8_tx_inc_in                               (bs8_tx_inc_in),          
         .bs8_tx_load_in                              (bs8_tx_load_in),        
         .bs8_datain_from_buf_in                      (data_to_bs[8]),         
         .bs8_Q_data_to_fabric_out                    (bs8_data_to_fabric_out),       
         .bs8_rx_ce_in                                (bs8_rx_ce_in),       
         .bs8_rxcntvalueout                           (bs8_rxcntvalueout),       
         .bs8_rx_cntvaluein                           (bs8_rx_cntvaluein),       
         .bs8_rx_en_vtc_in                            (bs8_rx_en_vtc_in),       
         .bs8_rx_inc_in                               (bs8_rx_inc_in),       
         .bs8_rx_load_in                              (bs8_rx_load_in),       
         .bs8_ce_ext_in                               (bs8_ce_ext_in),       
         .bs8_cntvalueout_ext_out                     (bs8_cntvalueout_ext_out),  
         .bs8_cntvaluein_ext_in                       (bs8_cntvaluein_ext_in),    
         .bs8_en_vtc_ext_in                           (bs8_en_vtc_ext_in),       
         .bs8_inc_ext_in                              (bs8_inc_ext_in),       
         .bs8_load_ext_in                             (bs8_load_ext_in),       
         .bs8_fifo_empty_out                          (bs8_fifo_empty_out),       
         .bs8_fifo_rd_clk                             (bs8_fifo_rd_clk),       
         .bs8_fifo_rd_en                              (bs8_fifo_rd_en),       
         .bs8_tx_bit_ctrl_in                          (n1_tx_bit_ctrl_out2),       
         .bs8_tx_bit_ctrl_out                         (n1_tx_bit_ctrl_in2),      
         .bs8_rx_bit_ctrl_in                          (n1_rx_bit_ctrl_out2),       
         .bs8_rx_bit_ctrl_out                         (n1_rx_bit_ctrl_in2),      
//BITSLICE9 Signals
         .bs9_D_data_from_fabric_in                   (bs9_data_from_fabric_in),  
         .bs9_O_out                                   (bs_to_buf_data[9]),       
         .bs9_t_out                                   (bs_to_buf_t[9]),           
         .bs9_t_in                                    (bs9_t_in),           
         .bs9_tx_ce_in                                (bs9_tx_ce_in),          
         .bs9_tx_cntvaluein                           (bs9_tx_cntvaluein),      
         .bs9_tx_cntvalueout                          (bs9_tx_cntvalueout),    
         .bs9_tx_en_vtc_in                            (bs9_tx_en_vtc_in),      
         .bs9_tx_inc_in                               (bs9_tx_inc_in),          
         .bs9_tx_load_in                              (bs9_tx_load_in),        
         .bs9_datain_from_buf_in                      (data_to_bs_from_buf[9]),         
         .bs9_Q_data_to_fabric_out                    (bs9_data_to_fabric_out),       
         .bs9_rx_ce_in                                (bs9_rx_ce_in),       
         .bs9_rxcntvalueout                           (bs9_rxcntvalueout),       
         .bs9_rx_cntvaluein                           (bs9_rx_cntvaluein),       
         .bs9_rx_en_vtc_in                            (bs9_rx_en_vtc_in),       
         .bs9_rx_inc_in                               (bs9_rx_inc_in),       
         .bs9_rx_load_in                              (bs9_rx_load_in),       
         .bs9_ce_ext_in                               (bs9_ce_ext_in),       
         .bs9_cntvalueout_ext_out                     (bs9_cntvalueout_ext_out),  
         .bs9_cntvaluein_ext_in                       (bs9_cntvaluein_ext_in),    
         .bs9_en_vtc_ext_in                           (bs9_en_vtc_ext_in),       
         .bs9_inc_ext_in                              (bs9_inc_ext_in),       
         .bs9_load_ext_in                             (bs9_load_ext_in),       
         .bs9_fifo_empty_out                          (bs9_fifo_empty_out),       
         .bs9_fifo_rd_clk                             (bs9_fifo_rd_clk),       
         .bs9_fifo_rd_en                              (bs9_fifo_rd_en),       
         .bs9_tx_bit_ctrl_in                          (n1_tx_bit_ctrl_out3),       
         .bs9_tx_bit_ctrl_out                         (n1_tx_bit_ctrl_in3),      
         .bs9_rx_bit_ctrl_in                          (n1_rx_bit_ctrl_out3),       
         .bs9_rx_bit_ctrl_out                         (n1_rx_bit_ctrl_in3),      
//BITSLICE10 Signals
         .bs10_D_data_from_fabric_in                   (bs10_data_from_fabric_in),  
         .bs10_O_out                                   (bs_to_buf_data[10]),       
         .bs10_t_out                                   (bs_to_buf_t[10]),           
         .bs10_t_in                                    (bs10_t_in),           
         .bs10_tx_ce_in                                (bs10_tx_ce_in),          
         .bs10_tx_cntvaluein                           (bs10_tx_cntvaluein),      
         .bs10_tx_cntvalueout                          (bs10_tx_cntvalueout),    
         .bs10_tx_en_vtc_in                            (bs10_tx_en_vtc_in),      
         .bs10_tx_inc_in                               (bs10_tx_inc_in),          
         .bs10_tx_load_in                              (bs10_tx_load_in),        
         .bs10_datain_from_buf_in                      (data_to_bs[10]),         
         .bs10_Q_data_to_fabric_out                    (bs10_data_to_fabric_out),       
         .bs10_rx_ce_in                                (bs10_rx_ce_in),       
         .bs10_rxcntvalueout                           (bs10_rxcntvalueout),       
         .bs10_rx_cntvaluein                           (bs10_rx_cntvaluein),       
         .bs10_rx_en_vtc_in                            (bs10_rx_en_vtc_in),       
         .bs10_rx_inc_in                               (bs10_rx_inc_in),       
         .bs10_rx_load_in                              (bs10_rx_load_in),       
         .bs10_ce_ext_in                               (bs10_ce_ext_in),       
         .bs10_cntvalueout_ext_out                     (bs10_cntvalueout_ext_out),  
         .bs10_cntvaluein_ext_in                       (bs10_cntvaluein_ext_in),    
         .bs10_en_vtc_ext_in                           (bs10_en_vtc_ext_in),       
         .bs10_inc_ext_in                              (bs10_inc_ext_in),       
         .bs10_load_ext_in                             (bs10_load_ext_in),       
         .bs10_fifo_empty_out                          (bs10_fifo_empty_out),       
         .bs10_fifo_rd_clk                             (bs10_fifo_rd_clk),       
         .bs10_fifo_rd_en                              (bs10_fifo_rd_en),       
         .bs10_tx_bit_ctrl_in                          (n1_tx_bit_ctrl_out4),       
         .bs10_tx_bit_ctrl_out                         (n1_tx_bit_ctrl_in4),      
         .bs10_rx_bit_ctrl_in                          (n1_rx_bit_ctrl_out4),       
         .bs10_rx_bit_ctrl_out                         (n1_rx_bit_ctrl_in4),      
//BITSLICE11 Signals
         .bs11_D_data_from_fabric_in                   (bs11_data_from_fabric_in),  
         .bs11_O_out                                   (bs_to_buf_data[11]),       
         .bs11_t_out                                   (bs_to_buf_t[11]),           
         .bs11_t_in                                    (bs11_t_in),           
         .bs11_tx_ce_in                                (bs11_tx_ce_in),          
         .bs11_tx_cntvaluein                           (bs11_tx_cntvaluein),      
         .bs11_tx_cntvalueout                          (bs11_tx_cntvalueout),    
         .bs11_tx_en_vtc_in                            (bs11_tx_en_vtc_in),      
         .bs11_tx_inc_in                               (bs11_tx_inc_in),          
         .bs11_tx_load_in                              (bs11_tx_load_in),        
         .bs11_datain_from_buf_in                      (data_to_bs_from_buf[11]),         
         .bs11_Q_data_to_fabric_out                    (bs11_data_to_fabric_out),       
         .bs11_rx_ce_in                                (bs11_rx_ce_in),       
         .bs11_rxcntvalueout                           (bs11_rxcntvalueout),       
         .bs11_rx_cntvaluein                           (bs11_rx_cntvaluein),       
         .bs11_rx_en_vtc_in                            (bs11_rx_en_vtc_in),       
         .bs11_rx_inc_in                               (bs11_rx_inc_in),       
         .bs11_rx_load_in                              (bs11_rx_load_in),       
         .bs11_ce_ext_in                               (bs11_ce_ext_in),       
         .bs11_cntvalueout_ext_out                     (bs11_cntvalueout_ext_out),  
         .bs11_cntvaluein_ext_in                       (bs11_cntvaluein_ext_in),    
         .bs11_en_vtc_ext_in                           (bs11_en_vtc_ext_in),       
         .bs11_inc_ext_in                              (bs11_inc_ext_in),       
         .bs11_load_ext_in                             (bs11_load_ext_in),       
         .bs11_fifo_empty_out                          (bs11_fifo_empty_out),       
         .bs11_fifo_rd_clk                             (bs11_fifo_rd_clk),       
         .bs11_fifo_rd_en                              (bs11_fifo_rd_en),       
         .bs11_tx_bit_ctrl_in                          (n1_tx_bit_ctrl_out5),       
         .bs11_tx_bit_ctrl_out                         (n1_tx_bit_ctrl_in5),      
         .bs11_rx_bit_ctrl_in                          (n1_rx_bit_ctrl_out5),       
         .bs11_rx_bit_ctrl_out                         (n1_rx_bit_ctrl_in5),      
//BITSLICE12 Signals
         .bs12_D_data_from_fabric_in                   (bs12_data_from_fabric_in),  
         .bs12_O_out                                   (bs_to_buf_data[12]),       
         .bs12_t_out                                   (bs_to_buf_t[12]),           
         .bs12_t_in                                    (bs12_t_in),           
         .bs12_tx_ce_in                                (bs12_tx_ce_in),          
         .bs12_tx_cntvaluein                           (bs12_tx_cntvaluein),      
         .bs12_tx_cntvalueout                          (bs12_tx_cntvalueout),    
         .bs12_tx_en_vtc_in                            (bs12_tx_en_vtc_in),      
         .bs12_tx_inc_in                               (bs12_tx_inc_in),          
         .bs12_tx_load_in                              (bs12_tx_load_in),        
         .bs12_datain_from_buf_in                      (data_to_bs[12]),         
         .bs12_Q_data_to_fabric_out                    (bs12_data_to_fabric_out),       
         .bs12_rx_ce_in                                (bs12_rx_ce_in),       
         .bs12_rxcntvalueout                           (bs12_rxcntvalueout),       
         .bs12_rx_cntvaluein                           (bs12_rx_cntvaluein),       
         .bs12_rx_en_vtc_in                            (bs12_rx_en_vtc_in),       
         .bs12_rx_inc_in                               (bs12_rx_inc_in),       
         .bs12_rx_load_in                              (bs12_rx_load_in),       
         .bs12_ce_ext_in                               (bs12_ce_ext_in),       
         .bs12_cntvalueout_ext_out                     (bs12_cntvalueout_ext_out),  
         .bs12_cntvaluein_ext_in                       (bs12_cntvaluein_ext_in),    
         .bs12_en_vtc_ext_in                           (bs12_en_vtc_ext_in),       
         .bs12_inc_ext_in                              (bs12_inc_ext_in),       
         .bs12_load_ext_in                             (bs12_load_ext_in),       
         .bs12_fifo_empty_out                          (bs12_fifo_empty_out),       
         .bs12_fifo_rd_clk                             (bs12_fifo_rd_clk),       
         .bs12_fifo_rd_en                              (bs12_fifo_rd_en),       
         .bs12_tx_bit_ctrl_in                          (n1_tx_bit_ctrl_out6),       
         .bs12_tx_bit_ctrl_out                         (n1_tx_bit_ctrl_in6),      
         .bs12_rx_bit_ctrl_in                          (n1_rx_bit_ctrl_out6),       
         .bs12_rx_bit_ctrl_out                         (n1_rx_bit_ctrl_in6),      
//BITSLICE13 Signals
         .bs13_D_data_from_fabric_in                   (bs13_data_from_fabric_in),  
         .bs13_O_out                                   (bs_to_buf_data[13]),       
         .bs13_t_out                                   (bs_to_buf_t[13]),           
         .bs13_t_in                                    (bs13_t_in),           
         .bs13_tx_ce_in                                (bs13_tx_ce_in),          
         .bs13_tx_cntvaluein                           (bs13_tx_cntvaluein),      
         .bs13_tx_cntvalueout                          (bs13_tx_cntvalueout),    
         .bs13_tx_en_vtc_in                            (bs13_tx_en_vtc_in),      
         .bs13_tx_inc_in                               (bs13_tx_inc_in),          
         .bs13_tx_load_in                              (bs13_tx_load_in),        
         .bs13_datain_from_buf_in                      (data_to_bs[13]),         
         .bs13_Q_data_to_fabric_out                    (bs13_data_to_fabric_out),       
         .bs13_rx_ce_in                                (bs13_rx_ce_in),       
         .bs13_rxcntvalueout                           (bs13_rxcntvalueout),       
         .bs13_rx_cntvaluein                           (bs13_rx_cntvaluein),       
         .bs13_rx_en_vtc_in                            (bs13_rx_en_vtc_in),       
         .bs13_rx_inc_in                               (bs13_rx_inc_in),       
         .bs13_rx_load_in                              (bs13_rx_load_in),       
         .bs13_ce_ext_in                               (bs13_ce_ext_in),       
         .bs13_cntvalueout_ext_out                     (bs13_cntvalueout_ext_out),  
         .bs13_cntvaluein_ext_in                       (bs13_cntvaluein_ext_in),    
         .bs13_en_vtc_ext_in                           (bs13_en_vtc_ext_in),       
         .bs13_inc_ext_in                              (bs13_inc_ext_in),       
         .bs13_load_ext_in                             (bs13_load_ext_in),       
         .bs13_fifo_empty_out                          (bs13_fifo_empty_out),       
         .bs13_fifo_rd_clk                             (bs13_fifo_rd_clk),       
         .bs13_fifo_rd_en                              (bs13_fifo_rd_en),       
         .bs13_tx_bit_ctrl_in                          (n2_tx_bit_ctrl_out0),       
         .bs13_tx_bit_ctrl_out                         (n2_tx_bit_ctrl_in0),      
         .bs13_rx_bit_ctrl_in                          (n2_rx_bit_ctrl_out0),       
         .bs13_rx_bit_ctrl_out                         (n2_rx_bit_ctrl_in0),      
//BITSLICE14 Signals
         .bs14_D_data_from_fabric_in                   (bs14_data_from_fabric_in),  
         .bs14_O_out                                   (bs_to_buf_data[14]),       
         .bs14_t_out                                   (bs_to_buf_t[14]),           
         .bs14_t_in                                    (bs14_t_in),           
         .bs14_tx_ce_in                                (bs14_tx_ce_in),          
         .bs14_tx_cntvaluein                           (bs14_tx_cntvaluein),      
         .bs14_tx_cntvalueout                          (bs14_tx_cntvalueout),    
         .bs14_tx_en_vtc_in                            (bs14_tx_en_vtc_in),      
         .bs14_tx_inc_in                               (bs14_tx_inc_in),          
         .bs14_tx_load_in                              (bs14_tx_load_in),        
         .bs14_datain_from_buf_in                      (data_to_bs_from_buf[14]),         
         .bs14_Q_data_to_fabric_out                    (bs14_data_to_fabric_out),       
         .bs14_rx_ce_in                                (bs14_rx_ce_in),       
         .bs14_rxcntvalueout                           (bs14_rxcntvalueout),       
         .bs14_rx_cntvaluein                           (bs14_rx_cntvaluein),       
         .bs14_rx_en_vtc_in                            (bs14_rx_en_vtc_in),       
         .bs14_rx_inc_in                               (bs14_rx_inc_in),       
         .bs14_rx_load_in                              (bs14_rx_load_in),       
         .bs14_ce_ext_in                               (bs14_ce_ext_in),       
         .bs14_cntvalueout_ext_out                     (bs14_cntvalueout_ext_out),  
         .bs14_cntvaluein_ext_in                       (bs14_cntvaluein_ext_in),    
         .bs14_en_vtc_ext_in                           (bs14_en_vtc_ext_in),       
         .bs14_inc_ext_in                              (bs14_inc_ext_in),       
         .bs14_load_ext_in                             (bs14_load_ext_in),       
         .bs14_fifo_empty_out                          (bs14_fifo_empty_out),       
         .bs14_fifo_rd_clk                             (bs14_fifo_rd_clk),       
         .bs14_fifo_rd_en                              (bs14_fifo_rd_en),       
         .bs14_tx_bit_ctrl_in                          (n2_tx_bit_ctrl_out1),       
         .bs14_tx_bit_ctrl_out                         (n2_tx_bit_ctrl_in1),      
         .bs14_rx_bit_ctrl_in                          (n2_rx_bit_ctrl_out1),       
         .bs14_rx_bit_ctrl_out                         (n2_rx_bit_ctrl_in1),      
//BITSLICE15 Signals
         .bs15_D_data_from_fabric_in                   (bs15_data_from_fabric_in),  
         .bs15_O_out                                   (bs_to_buf_data[15]),       
         .bs15_t_out                                   (bs_to_buf_t[15]),           
         .bs15_t_in                                    (bs15_t_in),           
         .bs15_tx_ce_in                                (bs15_tx_ce_in),          
         .bs15_tx_cntvaluein                           (bs15_tx_cntvaluein),      
         .bs15_tx_cntvalueout                          (bs15_tx_cntvalueout),    
         .bs15_tx_en_vtc_in                            (bs15_tx_en_vtc_in),      
         .bs15_tx_inc_in                               (bs15_tx_inc_in),          
         .bs15_tx_load_in                              (bs15_tx_load_in),        
         .bs15_datain_from_buf_in                      (data_to_bs[15]),         
         .bs15_Q_data_to_fabric_out                    (bs15_data_to_fabric_out),       
         .bs15_rx_ce_in                                (bs15_rx_ce_in),       
         .bs15_rxcntvalueout                           (bs15_rxcntvalueout),       
         .bs15_rx_cntvaluein                           (bs15_rx_cntvaluein),       
         .bs15_rx_en_vtc_in                            (bs15_rx_en_vtc_in),       
         .bs15_rx_inc_in                               (bs15_rx_inc_in),       
         .bs15_rx_load_in                              (bs15_rx_load_in),       
         .bs15_ce_ext_in                               (bs15_ce_ext_in),       
         .bs15_cntvalueout_ext_out                     (bs15_cntvalueout_ext_out),  
         .bs15_cntvaluein_ext_in                       (bs15_cntvaluein_ext_in),    
         .bs15_en_vtc_ext_in                           (bs15_en_vtc_ext_in),       
         .bs15_inc_ext_in                              (bs15_inc_ext_in),       
         .bs15_load_ext_in                             (bs15_load_ext_in),       
         .bs15_fifo_empty_out                          (bs15_fifo_empty_out),       
         .bs15_fifo_rd_clk                             (bs15_fifo_rd_clk),       
         .bs15_fifo_rd_en                              (bs15_fifo_rd_en),       
         .bs15_tx_bit_ctrl_in                          (n2_tx_bit_ctrl_out2),       
         .bs15_tx_bit_ctrl_out                         (n2_tx_bit_ctrl_in2),      
         .bs15_rx_bit_ctrl_in                          (n2_rx_bit_ctrl_out2),       
         .bs15_rx_bit_ctrl_out                         (n2_rx_bit_ctrl_in2),      
//BITSLICE16 Signals
         .bs16_D_data_from_fabric_in                   (bs16_data_from_fabric_in),  
         .bs16_O_out                                   (bs_to_buf_data[16]),       
         .bs16_t_out                                   (bs_to_buf_t[16]),           
         .bs16_t_in                                    (bs16_t_in),           
         .bs16_tx_ce_in                                (bs16_tx_ce_in),          
         .bs16_tx_cntvaluein                           (bs16_tx_cntvaluein),      
         .bs16_tx_cntvalueout                          (bs16_tx_cntvalueout),    
         .bs16_tx_en_vtc_in                            (bs16_tx_en_vtc_in),      
         .bs16_tx_inc_in                               (bs16_tx_inc_in),          
         .bs16_tx_load_in                              (bs16_tx_load_in),        
         .bs16_datain_from_buf_in                      (data_to_bs_from_buf[16]),         
         .bs16_Q_data_to_fabric_out                    (bs16_data_to_fabric_out),       
         .bs16_rx_ce_in                                (bs16_rx_ce_in),       
         .bs16_rxcntvalueout                           (bs16_rxcntvalueout),       
         .bs16_rx_cntvaluein                           (bs16_rx_cntvaluein),       
         .bs16_rx_en_vtc_in                            (bs16_rx_en_vtc_in),       
         .bs16_rx_inc_in                               (bs16_rx_inc_in),       
         .bs16_rx_load_in                              (bs16_rx_load_in),       
         .bs16_ce_ext_in                               (bs16_ce_ext_in),       
         .bs16_cntvalueout_ext_out                     (bs16_cntvalueout_ext_out),  
         .bs16_cntvaluein_ext_in                       (bs16_cntvaluein_ext_in),    
         .bs16_en_vtc_ext_in                           (bs16_en_vtc_ext_in),       
         .bs16_inc_ext_in                              (bs16_inc_ext_in),       
         .bs16_load_ext_in                             (bs16_load_ext_in),       
         .bs16_fifo_empty_out                          (bs16_fifo_empty_out),       
         .bs16_fifo_rd_clk                             (bs16_fifo_rd_clk),       
         .bs16_fifo_rd_en                              (bs16_fifo_rd_en),       
         .bs16_tx_bit_ctrl_in                          (n2_tx_bit_ctrl_out3),       
         .bs16_tx_bit_ctrl_out                         (n2_tx_bit_ctrl_in3),      
         .bs16_rx_bit_ctrl_in                          (n2_rx_bit_ctrl_out3),       
         .bs16_rx_bit_ctrl_out                         (n2_rx_bit_ctrl_in3),      
//BITSLICE17 Signals
         .bs17_D_data_from_fabric_in                   (bs17_data_from_fabric_in),  
         .bs17_O_out                                   (bs_to_buf_data[17]),       
         .bs17_t_out                                   (bs_to_buf_t[17]),           
         .bs17_t_in                                    (bs17_t_in),           
         .bs17_tx_ce_in                                (bs17_tx_ce_in),          
         .bs17_tx_cntvaluein                           (bs17_tx_cntvaluein),      
         .bs17_tx_cntvalueout                          (bs17_tx_cntvalueout),    
         .bs17_tx_en_vtc_in                            (bs17_tx_en_vtc_in),      
         .bs17_tx_inc_in                               (bs17_tx_inc_in),          
         .bs17_tx_load_in                              (bs17_tx_load_in),        
         .bs17_datain_from_buf_in                      (data_to_bs[17]),         
         .bs17_Q_data_to_fabric_out                    (bs17_data_to_fabric_out),       
         .bs17_rx_ce_in                                (bs17_rx_ce_in),       
         .bs17_rxcntvalueout                           (bs17_rxcntvalueout),       
         .bs17_rx_cntvaluein                           (bs17_rx_cntvaluein),       
         .bs17_rx_en_vtc_in                            (bs17_rx_en_vtc_in),       
         .bs17_rx_inc_in                               (bs17_rx_inc_in),       
         .bs17_rx_load_in                              (bs17_rx_load_in),       
         .bs17_ce_ext_in                               (bs17_ce_ext_in),       
         .bs17_cntvalueout_ext_out                     (bs17_cntvalueout_ext_out),  
         .bs17_cntvaluein_ext_in                       (bs17_cntvaluein_ext_in),    
         .bs17_en_vtc_ext_in                           (bs17_en_vtc_ext_in),       
         .bs17_inc_ext_in                              (bs17_inc_ext_in),       
         .bs17_load_ext_in                             (bs17_load_ext_in),       
         .bs17_fifo_empty_out                          (bs17_fifo_empty_out),       
         .bs17_fifo_rd_clk                             (bs17_fifo_rd_clk),       
         .bs17_fifo_rd_en                              (bs17_fifo_rd_en),       
         .bs17_tx_bit_ctrl_in                          (n2_tx_bit_ctrl_out4),       
         .bs17_tx_bit_ctrl_out                         (n2_tx_bit_ctrl_in4),      
         .bs17_rx_bit_ctrl_in                          (n2_rx_bit_ctrl_out4),       
         .bs17_rx_bit_ctrl_out                         (n2_rx_bit_ctrl_in4),      
//BITSLICE18 Signals
         .bs18_D_data_from_fabric_in                   (bs18_data_from_fabric_in),  
         .bs18_O_out                                   (bs_to_buf_data[18]),       
         .bs18_t_out                                   (bs_to_buf_t[18]),           
         .bs18_t_in                                    (bs18_t_in),           
         .bs18_tx_ce_in                                (bs18_tx_ce_in),          
         .bs18_tx_cntvaluein                           (bs18_tx_cntvaluein),      
         .bs18_tx_cntvalueout                          (bs18_tx_cntvalueout),    
         .bs18_tx_en_vtc_in                            (bs18_tx_en_vtc_in),      
         .bs18_tx_inc_in                               (bs18_tx_inc_in),          
         .bs18_tx_load_in                              (bs18_tx_load_in),        
         .bs18_datain_from_buf_in                      (data_to_bs_from_buf[18]),         
         .bs18_Q_data_to_fabric_out                    (bs18_data_to_fabric_out),       
         .bs18_rx_ce_in                                (bs18_rx_ce_in),       
         .bs18_rxcntvalueout                           (bs18_rxcntvalueout),       
         .bs18_rx_cntvaluein                           (bs18_rx_cntvaluein),       
         .bs18_rx_en_vtc_in                            (bs18_rx_en_vtc_in),       
         .bs18_rx_inc_in                               (bs18_rx_inc_in),       
         .bs18_rx_load_in                              (bs18_rx_load_in),       
         .bs18_ce_ext_in                               (bs18_ce_ext_in),       
         .bs18_cntvalueout_ext_out                     (bs18_cntvalueout_ext_out),  
         .bs18_cntvaluein_ext_in                       (bs18_cntvaluein_ext_in),    
         .bs18_en_vtc_ext_in                           (bs18_en_vtc_ext_in),       
         .bs18_inc_ext_in                              (bs18_inc_ext_in),       
         .bs18_load_ext_in                             (bs18_load_ext_in),       
         .bs18_fifo_empty_out                          (bs18_fifo_empty_out),       
         .bs18_fifo_rd_clk                             (bs18_fifo_rd_clk),       
         .bs18_fifo_rd_en                              (bs18_fifo_rd_en),       
         .bs18_tx_bit_ctrl_in                          (n2_tx_bit_ctrl_out5),       
         .bs18_tx_bit_ctrl_out                         (n2_tx_bit_ctrl_in5),      
         .bs18_rx_bit_ctrl_in                          (n2_rx_bit_ctrl_out5),       
         .bs18_rx_bit_ctrl_out                         (n2_rx_bit_ctrl_in5),      
//BITSLICE19 Signals
         .bs19_D_data_from_fabric_in                   (bs19_data_from_fabric_in),  
         .bs19_O_out                                   (bs_to_buf_data[19]),       
         .bs19_t_out                                   (bs_to_buf_t[19]),           
         .bs19_t_in                                    (bs19_t_in),           
         .bs19_tx_ce_in                                (bs19_tx_ce_in),          
         .bs19_tx_cntvaluein                           (bs19_tx_cntvaluein),      
         .bs19_tx_cntvalueout                          (bs19_tx_cntvalueout),    
         .bs19_tx_en_vtc_in                            (bs19_tx_en_vtc_in),      
         .bs19_tx_inc_in                               (bs19_tx_inc_in),          
         .bs19_tx_load_in                              (bs19_tx_load_in),        
         .bs19_datain_from_buf_in                      (data_to_bs[19]),         
         .bs19_Q_data_to_fabric_out                    (bs19_data_to_fabric_out),       
         .bs19_rx_ce_in                                (bs19_rx_ce_in),       
         .bs19_rxcntvalueout                           (bs19_rxcntvalueout),       
         .bs19_rx_cntvaluein                           (bs19_rx_cntvaluein),       
         .bs19_rx_en_vtc_in                            (bs19_rx_en_vtc_in),       
         .bs19_rx_inc_in                               (bs19_rx_inc_in),       
         .bs19_rx_load_in                              (bs19_rx_load_in),       
         .bs19_ce_ext_in                               (bs19_ce_ext_in),       
         .bs19_cntvalueout_ext_out                     (bs19_cntvalueout_ext_out),  
         .bs19_cntvaluein_ext_in                       (bs19_cntvaluein_ext_in),    
         .bs19_en_vtc_ext_in                           (bs19_en_vtc_ext_in),       
         .bs19_inc_ext_in                              (bs19_inc_ext_in),       
         .bs19_load_ext_in                             (bs19_load_ext_in),       
         .bs19_fifo_empty_out                          (bs19_fifo_empty_out),       
         .bs19_fifo_rd_clk                             (bs19_fifo_rd_clk),       
         .bs19_fifo_rd_en                              (bs19_fifo_rd_en),       
         .bs19_tx_bit_ctrl_in                          (n3_tx_bit_ctrl_out0),       
         .bs19_tx_bit_ctrl_out                         (n3_tx_bit_ctrl_in0),      
         .bs19_rx_bit_ctrl_in                          (n3_rx_bit_ctrl_out0),       
         .bs19_rx_bit_ctrl_out                         (n3_rx_bit_ctrl_in0),      
//BITSLICE20 Signals
         .bs20_D_data_from_fabric_in                   (bs20_data_from_fabric_in),  
         .bs20_O_out                                   (bs_to_buf_data[20]),       
         .bs20_t_out                                   (bs_to_buf_t[20]),           
         .bs20_t_in                                    (bs20_t_in),           
         .bs20_tx_ce_in                                (bs20_tx_ce_in),          
         .bs20_tx_cntvaluein                           (bs20_tx_cntvaluein),      
         .bs20_tx_cntvalueout                          (bs20_tx_cntvalueout),    
         .bs20_tx_en_vtc_in                            (bs20_tx_en_vtc_in),      
         .bs20_tx_inc_in                               (bs20_tx_inc_in),          
         .bs20_tx_load_in                              (bs20_tx_load_in),        
         .bs20_datain_from_buf_in                      (data_to_bs_from_buf[20]),         
         .bs20_Q_data_to_fabric_out                    (bs20_data_to_fabric_out),       
         .bs20_rx_ce_in                                (bs20_rx_ce_in),       
         .bs20_rxcntvalueout                           (bs20_rxcntvalueout),       
         .bs20_rx_cntvaluein                           (bs20_rx_cntvaluein),       
         .bs20_rx_en_vtc_in                            (bs20_rx_en_vtc_in),       
         .bs20_rx_inc_in                               (bs20_rx_inc_in),       
         .bs20_rx_load_in                              (bs20_rx_load_in),       
         .bs20_ce_ext_in                               (bs20_ce_ext_in),       
         .bs20_cntvalueout_ext_out                     (bs20_cntvalueout_ext_out),  
         .bs20_cntvaluein_ext_in                       (bs20_cntvaluein_ext_in),    
         .bs20_en_vtc_ext_in                           (bs20_en_vtc_ext_in),       
         .bs20_inc_ext_in                              (bs20_inc_ext_in),       
         .bs20_load_ext_in                             (bs20_load_ext_in),       
         .bs20_fifo_empty_out                          (bs20_fifo_empty_out),       
         .bs20_fifo_rd_clk                             (bs20_fifo_rd_clk),       
         .bs20_fifo_rd_en                              (bs20_fifo_rd_en),       
         .bs20_tx_bit_ctrl_in                          (n3_tx_bit_ctrl_out1),       
         .bs20_tx_bit_ctrl_out                         (n3_tx_bit_ctrl_in1),      
         .bs20_rx_bit_ctrl_in                          (n3_rx_bit_ctrl_out1),       
         .bs20_rx_bit_ctrl_out                         (n3_rx_bit_ctrl_in1),      
//BITSLICE21 Signals
         .bs21_D_data_from_fabric_in                   (bs21_data_from_fabric_in),  
         .bs21_O_out                                   (bs_to_buf_data[21]),       
         .bs21_t_out                                   (bs_to_buf_t[21]),           
         .bs21_t_in                                    (bs21_t_in),           
         .bs21_tx_ce_in                                (bs21_tx_ce_in),          
         .bs21_tx_cntvaluein                           (bs21_tx_cntvaluein),      
         .bs21_tx_cntvalueout                          (bs21_tx_cntvalueout),    
         .bs21_tx_en_vtc_in                            (bs21_tx_en_vtc_in),      
         .bs21_tx_inc_in                               (bs21_tx_inc_in),          
         .bs21_tx_load_in                              (bs21_tx_load_in),        
         .bs21_datain_from_buf_in                      (data_to_bs[21]),         
         .bs21_Q_data_to_fabric_out                    (bs21_data_to_fabric_out),       
         .bs21_rx_ce_in                                (bs21_rx_ce_in),       
         .bs21_rxcntvalueout                           (bs21_rxcntvalueout),       
         .bs21_rx_cntvaluein                           (bs21_rx_cntvaluein),       
         .bs21_rx_en_vtc_in                            (bs21_rx_en_vtc_in),       
         .bs21_rx_inc_in                               (bs21_rx_inc_in),       
         .bs21_rx_load_in                              (bs21_rx_load_in),       
         .bs21_ce_ext_in                               (bs21_ce_ext_in),       
         .bs21_cntvalueout_ext_out                     (bs21_cntvalueout_ext_out),  
         .bs21_cntvaluein_ext_in                       (bs21_cntvaluein_ext_in),    
         .bs21_en_vtc_ext_in                           (bs21_en_vtc_ext_in),       
         .bs21_inc_ext_in                              (bs21_inc_ext_in),       
         .bs21_load_ext_in                             (bs21_load_ext_in),       
         .bs21_fifo_empty_out                          (bs21_fifo_empty_out),       
         .bs21_fifo_rd_clk                             (bs21_fifo_rd_clk),       
         .bs21_fifo_rd_en                              (bs21_fifo_rd_en),       
         .bs21_tx_bit_ctrl_in                          (n3_tx_bit_ctrl_out2),       
         .bs21_tx_bit_ctrl_out                         (n3_tx_bit_ctrl_in2),      
         .bs21_rx_bit_ctrl_in                          (n3_rx_bit_ctrl_out2),       
         .bs21_rx_bit_ctrl_out                         (n3_rx_bit_ctrl_in2),      
//BITSLICE22 Signals
         .bs22_D_data_from_fabric_in                   (bs22_data_from_fabric_in),  
         .bs22_O_out                                   (bs_to_buf_data[22]),       
         .bs22_t_out                                   (bs_to_buf_t[22]),           
         .bs22_t_in                                    (bs22_t_in),           
         .bs22_tx_ce_in                                (bs22_tx_ce_in),          
         .bs22_tx_cntvaluein                           (bs22_tx_cntvaluein),      
         .bs22_tx_cntvalueout                          (bs22_tx_cntvalueout),    
         .bs22_tx_en_vtc_in                            (bs22_tx_en_vtc_in),      
         .bs22_tx_inc_in                               (bs22_tx_inc_in),          
         .bs22_tx_load_in                              (bs22_tx_load_in),        
         .bs22_datain_from_buf_in                      (data_to_bs_from_buf[22]),         
         .bs22_Q_data_to_fabric_out                    (bs22_data_to_fabric_out),       
         .bs22_rx_ce_in                                (bs22_rx_ce_in),       
         .bs22_rxcntvalueout                           (bs22_rxcntvalueout),       
         .bs22_rx_cntvaluein                           (bs22_rx_cntvaluein),       
         .bs22_rx_en_vtc_in                            (bs22_rx_en_vtc_in),       
         .bs22_rx_inc_in                               (bs22_rx_inc_in),       
         .bs22_rx_load_in                              (bs22_rx_load_in),       
         .bs22_ce_ext_in                               (bs22_ce_ext_in),       
         .bs22_cntvalueout_ext_out                     (bs22_cntvalueout_ext_out),  
         .bs22_cntvaluein_ext_in                       (bs22_cntvaluein_ext_in),    
         .bs22_en_vtc_ext_in                           (bs22_en_vtc_ext_in),       
         .bs22_inc_ext_in                              (bs22_inc_ext_in),       
         .bs22_load_ext_in                             (bs22_load_ext_in),       
         .bs22_fifo_empty_out                          (bs22_fifo_empty_out),       
         .bs22_fifo_rd_clk                             (bs22_fifo_rd_clk),       
         .bs22_fifo_rd_en                              (bs22_fifo_rd_en),       
         .bs22_tx_bit_ctrl_in                          (n3_tx_bit_ctrl_out3),       
         .bs22_tx_bit_ctrl_out                         (n3_tx_bit_ctrl_in3),      
         .bs22_rx_bit_ctrl_in                          (n3_rx_bit_ctrl_out3),       
         .bs22_rx_bit_ctrl_out                         (n3_rx_bit_ctrl_in3),      
//BITSLICE23 Signals
         .bs23_D_data_from_fabric_in                   (bs23_data_from_fabric_in),  
         .bs23_O_out                                   (bs_to_buf_data[23]),       
         .bs23_t_out                                   (bs_to_buf_t[23]),           
         .bs23_t_in                                    (bs23_t_in),           
         .bs23_tx_ce_in                                (bs23_tx_ce_in),          
         .bs23_tx_cntvaluein                           (bs23_tx_cntvaluein),      
         .bs23_tx_cntvalueout                          (bs23_tx_cntvalueout),    
         .bs23_tx_en_vtc_in                            (bs23_tx_en_vtc_in),      
         .bs23_tx_inc_in                               (bs23_tx_inc_in),          
         .bs23_tx_load_in                              (bs23_tx_load_in),        
         .bs23_datain_from_buf_in                      (data_to_bs[23]),         
         .bs23_Q_data_to_fabric_out                    (bs23_data_to_fabric_out),       
         .bs23_rx_ce_in                                (bs23_rx_ce_in),       
         .bs23_rxcntvalueout                           (bs23_rxcntvalueout),       
         .bs23_rx_cntvaluein                           (bs23_rx_cntvaluein),       
         .bs23_rx_en_vtc_in                            (bs23_rx_en_vtc_in),       
         .bs23_rx_inc_in                               (bs23_rx_inc_in),       
         .bs23_rx_load_in                              (bs23_rx_load_in),       
         .bs23_ce_ext_in                               (bs23_ce_ext_in),       
         .bs23_cntvalueout_ext_out                     (bs23_cntvalueout_ext_out),  
         .bs23_cntvaluein_ext_in                       (bs23_cntvaluein_ext_in),    
         .bs23_en_vtc_ext_in                           (bs23_en_vtc_ext_in),       
         .bs23_inc_ext_in                              (bs23_inc_ext_in),       
         .bs23_load_ext_in                             (bs23_load_ext_in),       
         .bs23_fifo_empty_out                          (bs23_fifo_empty_out),       
         .bs23_fifo_rd_clk                             (bs23_fifo_rd_clk),       
         .bs23_fifo_rd_en                              (bs23_fifo_rd_en),       
         .bs23_tx_bit_ctrl_in                          (n3_tx_bit_ctrl_out4),       
         .bs23_tx_bit_ctrl_out                         (n3_tx_bit_ctrl_in4),      
         .bs23_rx_bit_ctrl_in                          (n3_rx_bit_ctrl_out4),       
         .bs23_rx_bit_ctrl_out                         (n3_rx_bit_ctrl_in4),      
//BITSLICE24 Signals
         .bs24_D_data_from_fabric_in                   (bs24_data_from_fabric_in),  
         .bs24_O_out                                   (bs_to_buf_data[24]),       
         .bs24_t_out                                   (bs_to_buf_t[24]),           
         .bs24_t_in                                    (bs24_t_in),           
         .bs24_tx_ce_in                                (bs24_tx_ce_in),          
         .bs24_tx_cntvaluein                           (bs24_tx_cntvaluein),      
         .bs24_tx_cntvalueout                          (bs24_tx_cntvalueout),    
         .bs24_tx_en_vtc_in                            (bs24_tx_en_vtc_in),      
         .bs24_tx_inc_in                               (bs24_tx_inc_in),          
         .bs24_tx_load_in                              (bs24_tx_load_in),        
         .bs24_datain_from_buf_in                      (data_to_bs_from_buf[24]),         
         .bs24_Q_data_to_fabric_out                    (bs24_data_to_fabric_out),       
         .bs24_rx_ce_in                                (bs24_rx_ce_in),       
         .bs24_rxcntvalueout                           (bs24_rxcntvalueout),       
         .bs24_rx_cntvaluein                           (bs24_rx_cntvaluein),       
         .bs24_rx_en_vtc_in                            (bs24_rx_en_vtc_in),       
         .bs24_rx_inc_in                               (bs24_rx_inc_in),       
         .bs24_rx_load_in                              (bs24_rx_load_in),       
         .bs24_ce_ext_in                               (bs24_ce_ext_in),       
         .bs24_cntvalueout_ext_out                     (bs24_cntvalueout_ext_out),  
         .bs24_cntvaluein_ext_in                       (bs24_cntvaluein_ext_in),    
         .bs24_en_vtc_ext_in                           (bs24_en_vtc_ext_in),       
         .bs24_inc_ext_in                              (bs24_inc_ext_in),       
         .bs24_load_ext_in                             (bs24_load_ext_in),       
         .bs24_fifo_empty_out                          (bs24_fifo_empty_out),       
         .bs24_fifo_rd_clk                             (bs24_fifo_rd_clk),       
         .bs24_fifo_rd_en                              (bs24_fifo_rd_en),       
         .bs24_tx_bit_ctrl_in                          (n3_tx_bit_ctrl_out5),       
         .bs24_tx_bit_ctrl_out                         (n3_tx_bit_ctrl_in5),      
         .bs24_rx_bit_ctrl_in                          (n3_rx_bit_ctrl_out5),       
         .bs24_rx_bit_ctrl_out                         (n3_rx_bit_ctrl_in5),      
//BITSLICE25 Signals
         .bs25_D_data_from_fabric_in                   (bs25_data_from_fabric_in),  
         .bs25_O_out                                   (bs_to_buf_data[25]),       
         .bs25_t_out                                   (bs_to_buf_t[25]),           
         .bs25_t_in                                    (bs25_t_in),           
         .bs25_tx_ce_in                                (bs25_tx_ce_in),          
         .bs25_tx_cntvaluein                           (bs25_tx_cntvaluein),      
         .bs25_tx_cntvalueout                          (bs25_tx_cntvalueout),    
         .bs25_tx_en_vtc_in                            (bs25_tx_en_vtc_in),      
         .bs25_tx_inc_in                               (bs25_tx_inc_in),          
         .bs25_tx_load_in                              (bs25_tx_load_in),        
         .bs25_datain_from_buf_in                      (data_to_bs[25]),         
         .bs25_Q_data_to_fabric_out                    (bs25_data_to_fabric_out),       
         .bs25_rx_ce_in                                (bs25_rx_ce_in),       
         .bs25_rxcntvalueout                           (bs25_rxcntvalueout),       
         .bs25_rx_cntvaluein                           (bs25_rx_cntvaluein),       
         .bs25_rx_en_vtc_in                            (bs25_rx_en_vtc_in),       
         .bs25_rx_inc_in                               (bs25_rx_inc_in),       
         .bs25_rx_load_in                              (bs25_rx_load_in),       
         .bs25_ce_ext_in                               (bs25_ce_ext_in),       
         .bs25_cntvalueout_ext_out                     (bs25_cntvalueout_ext_out),  
         .bs25_cntvaluein_ext_in                       (bs25_cntvaluein_ext_in),    
         .bs25_en_vtc_ext_in                           (bs25_en_vtc_ext_in),       
         .bs25_inc_ext_in                              (bs25_inc_ext_in),       
         .bs25_load_ext_in                             (bs25_load_ext_in),       
         .bs25_fifo_empty_out                          (bs25_fifo_empty_out),       
         .bs25_fifo_rd_clk                             (bs25_fifo_rd_clk),       
         .bs25_fifo_rd_en                              (bs25_fifo_rd_en),       
         .bs25_tx_bit_ctrl_in                          (n3_tx_bit_ctrl_out6),       
         .bs25_tx_bit_ctrl_out                         (n3_tx_bit_ctrl_in6),      
         .bs25_rx_bit_ctrl_in                          (n3_rx_bit_ctrl_out6),       
         .bs25_rx_bit_ctrl_out                         (n3_rx_bit_ctrl_in6),      
//BITSLICE26 Signals
         .bs26_D_data_from_fabric_in                   (bs26_data_from_fabric_in),  
         .bs26_O_out                                   (bs_to_buf_data[26]),       
         .bs26_t_out                                   (bs_to_buf_t[26]),           
         .bs26_t_in                                    (bs26_t_in),           
         .bs26_tx_ce_in                                (bs26_tx_ce_in),          
         .bs26_tx_cntvaluein                           (bs26_tx_cntvaluein),      
         .bs26_tx_cntvalueout                          (bs26_tx_cntvalueout),    
         .bs26_tx_en_vtc_in                            (bs26_tx_en_vtc_in),      
         .bs26_tx_inc_in                               (bs26_tx_inc_in),          
         .bs26_tx_load_in                              (bs26_tx_load_in),        
         .bs26_datain_from_buf_in                      (bs26_data_or_clk_strobe),         
         .bs26_Q_data_to_fabric_out                    (bs26_data_to_fabric_out),       
         .bs26_rx_ce_in                                (bs26_rx_ce_in),       
         .bs26_rxcntvalueout                           (bs26_rxcntvalueout),       
         .bs26_rx_cntvaluein                           (bs26_rx_cntvaluein),       
         .bs26_rx_en_vtc_in                            (bs26_rx_en_vtc_in),       
         .bs26_rx_inc_in                               (bs26_rx_inc_in),       
         .bs26_rx_load_in                              (bs26_rx_load_in),       
         .bs26_ce_ext_in                               (bs26_ce_ext_in),       
         .bs26_cntvalueout_ext_out                     (bs26_cntvalueout_ext_out),  
         .bs26_cntvaluein_ext_in                       (bs26_cntvaluein_ext_in),    
         .bs26_en_vtc_ext_in                           (bs26_en_vtc_ext_in),       
         .bs26_inc_ext_in                              (bs26_inc_ext_in),       
         .bs26_load_ext_in                             (bs26_load_ext_in),       
         .bs26_fifo_empty_out                          (bs26_fifo_empty_out),       
         .bs26_fifo_rd_clk                             (bs26_fifo_rd_clk),       
         .bs26_fifo_rd_en                              (bs26_fifo_rd_en),       
         .bs26_tx_bit_ctrl_in                          (n4_tx_bit_ctrl_out0),       
         .bs26_tx_bit_ctrl_out                         (n4_tx_bit_ctrl_in0),      
         .bs26_rx_bit_ctrl_in                          (n4_rx_bit_ctrl_out0),       
         .bs26_rx_bit_ctrl_out                         (n4_rx_bit_ctrl_in0),      
//BITSLICE27 Signals
         .bs27_D_data_from_fabric_in                   (bs27_data_from_fabric_in),  
         .bs27_O_out                                   (bs_to_buf_data[27]),       
         .bs27_t_out                                   (bs_to_buf_t[27]),           
         .bs27_t_in                                    (bs27_t_in),           
         .bs27_tx_ce_in                                (bs27_tx_ce_in),          
         .bs27_tx_cntvaluein                           (bs27_tx_cntvaluein),      
         .bs27_tx_cntvalueout                          (bs27_tx_cntvalueout),    
         .bs27_tx_en_vtc_in                            (bs27_tx_en_vtc_in),      
         .bs27_tx_inc_in                               (bs27_tx_inc_in),          
         .bs27_tx_load_in                              (bs27_tx_load_in),        
         .bs27_datain_from_buf_in                      (data_to_bs_from_buf[27]),         
         .bs27_Q_data_to_fabric_out                    (bs27_data_to_fabric_out),       
         .bs27_rx_ce_in                                (bs27_rx_ce_in),       
         .bs27_rxcntvalueout                           (bs27_rxcntvalueout),       
         .bs27_rx_cntvaluein                           (bs27_rx_cntvaluein),       
         .bs27_rx_en_vtc_in                            (bs27_rx_en_vtc_in),       
         .bs27_rx_inc_in                               (bs27_rx_inc_in),       
         .bs27_rx_load_in                              (bs27_rx_load_in),       
         .bs27_ce_ext_in                               (bs27_ce_ext_in),       
         .bs27_cntvalueout_ext_out                     (bs27_cntvalueout_ext_out),  
         .bs27_cntvaluein_ext_in                       (bs27_cntvaluein_ext_in),    
         .bs27_en_vtc_ext_in                           (bs27_en_vtc_ext_in),       
         .bs27_inc_ext_in                              (bs27_inc_ext_in),       
         .bs27_load_ext_in                             (bs27_load_ext_in),       
         .bs27_fifo_empty_out                          (bs27_fifo_empty_out),       
         .bs27_fifo_rd_clk                             (bs27_fifo_rd_clk),       
         .bs27_fifo_rd_en                              (bs27_fifo_rd_en),       
         .bs27_tx_bit_ctrl_in                          (n4_tx_bit_ctrl_out1),       
         .bs27_tx_bit_ctrl_out                         (n4_tx_bit_ctrl_in1),      
         .bs27_rx_bit_ctrl_in                          (n4_rx_bit_ctrl_out1),       
         .bs27_rx_bit_ctrl_out                         (n4_rx_bit_ctrl_in1),      
//BITSLICE28 Signals
         .bs28_D_data_from_fabric_in                   (bs28_data_from_fabric_in),  
         .bs28_O_out                                   (bs_to_buf_data[28]),       
         .bs28_t_out                                   (bs_to_buf_t[28]),           
         .bs28_t_in                                    (bs28_t_in),           
         .bs28_tx_ce_in                                (bs28_tx_ce_in),          
         .bs28_tx_cntvaluein                           (bs28_tx_cntvaluein),      
         .bs28_tx_cntvalueout                          (bs28_tx_cntvalueout),    
         .bs28_tx_en_vtc_in                            (bs28_tx_en_vtc_in),      
         .bs28_tx_inc_in                               (bs28_tx_inc_in),          
         .bs28_tx_load_in                              (bs28_tx_load_in),        
         .bs28_datain_from_buf_in                      (data_to_bs[28]),         
         .bs28_Q_data_to_fabric_out                    (bs28_data_to_fabric_out),       
         .bs28_rx_ce_in                                (bs28_rx_ce_in),       
         .bs28_rxcntvalueout                           (bs28_rxcntvalueout),       
         .bs28_rx_cntvaluein                           (bs28_rx_cntvaluein),       
         .bs28_rx_en_vtc_in                            (bs28_rx_en_vtc_in),       
         .bs28_rx_inc_in                               (bs28_rx_inc_in),       
         .bs28_rx_load_in                              (bs28_rx_load_in),       
         .bs28_ce_ext_in                               (bs28_ce_ext_in),       
         .bs28_cntvalueout_ext_out                     (bs28_cntvalueout_ext_out),  
         .bs28_cntvaluein_ext_in                       (bs28_cntvaluein_ext_in),    
         .bs28_en_vtc_ext_in                           (bs28_en_vtc_ext_in),       
         .bs28_inc_ext_in                              (bs28_inc_ext_in),       
         .bs28_load_ext_in                             (bs28_load_ext_in),       
         .bs28_fifo_empty_out                          (bs28_fifo_empty_out),       
         .bs28_fifo_rd_clk                             (bs28_fifo_rd_clk),       
         .bs28_fifo_rd_en                              (bs28_fifo_rd_en),       
         .bs28_tx_bit_ctrl_in                          (n4_tx_bit_ctrl_out2),       
         .bs28_tx_bit_ctrl_out                         (n4_tx_bit_ctrl_in2),      
         .bs28_rx_bit_ctrl_in                          (n4_rx_bit_ctrl_out2),       
         .bs28_rx_bit_ctrl_out                         (n4_rx_bit_ctrl_in2),      
//BITSLICE29 Signals
         .bs29_D_data_from_fabric_in                   (bs29_data_from_fabric_in),  
         .bs29_O_out                                   (bs_to_buf_data[29]),       
         .bs29_t_out                                   (bs_to_buf_t[29]),           
         .bs29_t_in                                    (bs29_t_in),           
         .bs29_tx_ce_in                                (bs29_tx_ce_in),          
         .bs29_tx_cntvaluein                           (bs29_tx_cntvaluein),      
         .bs29_tx_cntvalueout                          (bs29_tx_cntvalueout),    
         .bs29_tx_en_vtc_in                            (bs29_tx_en_vtc_in),      
         .bs29_tx_inc_in                               (bs29_tx_inc_in),          
         .bs29_tx_load_in                              (bs29_tx_load_in),        
         .bs29_datain_from_buf_in                      (data_to_bs_from_buf[29]),         
         .bs29_Q_data_to_fabric_out                    (bs29_data_to_fabric_out),       
         .bs29_rx_ce_in                                (bs29_rx_ce_in),       
         .bs29_rxcntvalueout                           (bs29_rxcntvalueout),       
         .bs29_rx_cntvaluein                           (bs29_rx_cntvaluein),       
         .bs29_rx_en_vtc_in                            (bs29_rx_en_vtc_in),       
         .bs29_rx_inc_in                               (bs29_rx_inc_in),       
         .bs29_rx_load_in                              (bs29_rx_load_in),       
         .bs29_ce_ext_in                               (bs29_ce_ext_in),       
         .bs29_cntvalueout_ext_out                     (bs29_cntvalueout_ext_out),  
         .bs29_cntvaluein_ext_in                       (bs29_cntvaluein_ext_in),    
         .bs29_en_vtc_ext_in                           (bs29_en_vtc_ext_in),       
         .bs29_inc_ext_in                              (bs29_inc_ext_in),       
         .bs29_load_ext_in                             (bs29_load_ext_in),       
         .bs29_fifo_empty_out                          (bs29_fifo_empty_out),       
         .bs29_fifo_rd_clk                             (bs29_fifo_rd_clk),       
         .bs29_fifo_rd_en                              (bs29_fifo_rd_en),       
         .bs29_tx_bit_ctrl_in                          (n4_tx_bit_ctrl_out3),       
         .bs29_tx_bit_ctrl_out                         (n4_tx_bit_ctrl_in3),      
         .bs29_rx_bit_ctrl_in                          (n4_rx_bit_ctrl_out3),       
         .bs29_rx_bit_ctrl_out                         (n4_rx_bit_ctrl_in3),      
//BITSLICE30 Signals
         .bs30_D_data_from_fabric_in                   (bs30_data_from_fabric_in),  
         .bs30_O_out                                   (bs_to_buf_data[30]),       
         .bs30_t_out                                   (bs_to_buf_t[30]),           
         .bs30_t_in                                    (bs30_t_in),           
         .bs30_tx_ce_in                                (bs30_tx_ce_in),          
         .bs30_tx_cntvaluein                           (bs30_tx_cntvaluein),      
         .bs30_tx_cntvalueout                          (bs30_tx_cntvalueout),    
         .bs30_tx_en_vtc_in                            (bs30_tx_en_vtc_in),      
         .bs30_tx_inc_in                               (bs30_tx_inc_in),          
         .bs30_tx_load_in                              (bs30_tx_load_in),        
         .bs30_datain_from_buf_in                      (data_to_bs[30]),         
         .bs30_Q_data_to_fabric_out                    (bs30_data_to_fabric_out),       
         .bs30_rx_ce_in                                (bs30_rx_ce_in),       
         .bs30_rxcntvalueout                           (bs30_rxcntvalueout),       
         .bs30_rx_cntvaluein                           (bs30_rx_cntvaluein),       
         .bs30_rx_en_vtc_in                            (bs30_rx_en_vtc_in),       
         .bs30_rx_inc_in                               (bs30_rx_inc_in),       
         .bs30_rx_load_in                              (bs30_rx_load_in),       
         .bs30_ce_ext_in                               (bs30_ce_ext_in),       
         .bs30_cntvalueout_ext_out                     (bs30_cntvalueout_ext_out),  
         .bs30_cntvaluein_ext_in                       (bs30_cntvaluein_ext_in),    
         .bs30_en_vtc_ext_in                           (bs30_en_vtc_ext_in),       
         .bs30_inc_ext_in                              (bs30_inc_ext_in),       
         .bs30_load_ext_in                             (bs30_load_ext_in),       
         .bs30_fifo_empty_out                          (bs30_fifo_empty_out),       
         .bs30_fifo_rd_clk                             (bs30_fifo_rd_clk),       
         .bs30_fifo_rd_en                              (bs30_fifo_rd_en),       
         .bs30_tx_bit_ctrl_in                          (n4_tx_bit_ctrl_out4),       
         .bs30_tx_bit_ctrl_out                         (n4_tx_bit_ctrl_in4),      
         .bs30_rx_bit_ctrl_in                          (n4_rx_bit_ctrl_out4),       
         .bs30_rx_bit_ctrl_out                         (n4_rx_bit_ctrl_in4),      
//BITSLICE31 Signals
         .bs31_D_data_from_fabric_in                   (bs31_data_from_fabric_in),  
         .bs31_O_out                                   (bs_to_buf_data[31]),       
         .bs31_t_out                                   (bs_to_buf_t[31]),           
         .bs31_t_in                                    (bs31_t_in),           
         .bs31_tx_ce_in                                (bs31_tx_ce_in),          
         .bs31_tx_cntvaluein                           (bs31_tx_cntvaluein),      
         .bs31_tx_cntvalueout                          (bs31_tx_cntvalueout),    
         .bs31_tx_en_vtc_in                            (bs31_tx_en_vtc_in),      
         .bs31_tx_inc_in                               (bs31_tx_inc_in),          
         .bs31_tx_load_in                              (bs31_tx_load_in),        
         .bs31_datain_from_buf_in                      (data_to_bs_from_buf[31]),         
         .bs31_Q_data_to_fabric_out                    (bs31_data_to_fabric_out),       
         .bs31_rx_ce_in                                (bs31_rx_ce_in),       
         .bs31_rxcntvalueout                           (bs31_rxcntvalueout),       
         .bs31_rx_cntvaluein                           (bs31_rx_cntvaluein),       
         .bs31_rx_en_vtc_in                            (bs31_rx_en_vtc_in),       
         .bs31_rx_inc_in                               (bs31_rx_inc_in),       
         .bs31_rx_load_in                              (bs31_rx_load_in),       
         .bs31_ce_ext_in                               (bs31_ce_ext_in),       
         .bs31_cntvalueout_ext_out                     (bs31_cntvalueout_ext_out),  
         .bs31_cntvaluein_ext_in                       (bs31_cntvaluein_ext_in),    
         .bs31_en_vtc_ext_in                           (bs31_en_vtc_ext_in),       
         .bs31_inc_ext_in                              (bs31_inc_ext_in),       
         .bs31_load_ext_in                             (bs31_load_ext_in),       
         .bs31_fifo_empty_out                          (bs31_fifo_empty_out),       
         .bs31_fifo_rd_clk                             (bs31_fifo_rd_clk),       
         .bs31_fifo_rd_en                              (bs31_fifo_rd_en),       
         .bs31_tx_bit_ctrl_in                          (n4_tx_bit_ctrl_out5),       
         .bs31_tx_bit_ctrl_out                         (n4_tx_bit_ctrl_in5),      
         .bs31_rx_bit_ctrl_in                          (n4_rx_bit_ctrl_out5),       
         .bs31_rx_bit_ctrl_out                         (n4_rx_bit_ctrl_in5),      
//BITSLICE32 Signals
         .bs32_D_data_from_fabric_in                   (bs32_data_from_fabric_in),  
         .bs32_O_out                                   (bs_to_buf_data[32]),       
         .bs32_t_out                                   (bs_to_buf_t[32]),           
         .bs32_t_in                                    (bs32_t_in),           
         .bs32_tx_ce_in                                (bs32_tx_ce_in),          
         .bs32_tx_cntvaluein                           (bs32_tx_cntvaluein),      
         .bs32_tx_cntvalueout                          (bs32_tx_cntvalueout),    
         .bs32_tx_en_vtc_in                            (bs32_tx_en_vtc_in),      
         .bs32_tx_inc_in                               (bs32_tx_inc_in),          
         .bs32_tx_load_in                              (bs32_tx_load_in),        
         .bs32_datain_from_buf_in                      (data_to_bs[32]),         
         .bs32_Q_data_to_fabric_out                    (bs32_data_to_fabric_out),       
         .bs32_rx_ce_in                                (bs32_rx_ce_in),       
         .bs32_rxcntvalueout                           (bs32_rxcntvalueout),       
         .bs32_rx_cntvaluein                           (bs32_rx_cntvaluein),       
         .bs32_rx_en_vtc_in                            (bs32_rx_en_vtc_in),       
         .bs32_rx_inc_in                               (bs32_rx_inc_in),       
         .bs32_rx_load_in                              (bs32_rx_load_in),       
         .bs32_ce_ext_in                               (bs32_ce_ext_in),       
         .bs32_cntvalueout_ext_out                     (bs32_cntvalueout_ext_out),  
         .bs32_cntvaluein_ext_in                       (bs32_cntvaluein_ext_in),    
         .bs32_en_vtc_ext_in                           (bs32_en_vtc_ext_in),       
         .bs32_inc_ext_in                              (bs32_inc_ext_in),       
         .bs32_load_ext_in                             (bs32_load_ext_in),       
         .bs32_fifo_empty_out                          (bs32_fifo_empty_out),       
         .bs32_fifo_rd_clk                             (bs32_fifo_rd_clk),       
         .bs32_fifo_rd_en                              (bs32_fifo_rd_en),       
         .bs32_tx_bit_ctrl_in                          (n5_tx_bit_ctrl_out0),       
         .bs32_tx_bit_ctrl_out                         (n5_tx_bit_ctrl_in0),      
         .bs32_rx_bit_ctrl_in                          (n5_rx_bit_ctrl_out0),       
         .bs32_rx_bit_ctrl_out                         (n5_rx_bit_ctrl_in0),      
//BITSLICE33 Signals
         .bs33_D_data_from_fabric_in                   (bs33_data_from_fabric_in),  
         .bs33_O_out                                   (bs_to_buf_data[33]),       
         .bs33_t_out                                   (bs_to_buf_t[33]),           
         .bs33_t_in                                    (bs33_t_in),           
         .bs33_tx_ce_in                                (bs33_tx_ce_in),          
         .bs33_tx_cntvaluein                           (bs33_tx_cntvaluein),      
         .bs33_tx_cntvalueout                          (bs33_tx_cntvalueout),    
         .bs33_tx_en_vtc_in                            (bs33_tx_en_vtc_in),      
         .bs33_tx_inc_in                               (bs33_tx_inc_in),          
         .bs33_tx_load_in                              (bs33_tx_load_in),        
         .bs33_datain_from_buf_in                      (data_to_bs_from_buf[33]),         
         .bs33_Q_data_to_fabric_out                    (bs33_data_to_fabric_out),       
         .bs33_rx_ce_in                                (bs33_rx_ce_in),       
         .bs33_rxcntvalueout                           (bs33_rxcntvalueout),       
         .bs33_rx_cntvaluein                           (bs33_rx_cntvaluein),       
         .bs33_rx_en_vtc_in                            (bs33_rx_en_vtc_in),       
         .bs33_rx_inc_in                               (bs33_rx_inc_in),       
         .bs33_rx_load_in                              (bs33_rx_load_in),       
         .bs33_ce_ext_in                               (bs33_ce_ext_in),       
         .bs33_cntvalueout_ext_out                     (bs33_cntvalueout_ext_out),  
         .bs33_cntvaluein_ext_in                       (bs33_cntvaluein_ext_in),    
         .bs33_en_vtc_ext_in                           (bs33_en_vtc_ext_in),       
         .bs33_inc_ext_in                              (bs33_inc_ext_in),       
         .bs33_load_ext_in                             (bs33_load_ext_in),       
         .bs33_fifo_empty_out                          (bs33_fifo_empty_out),       
         .bs33_fifo_rd_clk                             (bs33_fifo_rd_clk),       
         .bs33_fifo_rd_en                              (bs33_fifo_rd_en),       
         .bs33_tx_bit_ctrl_in                          (n5_tx_bit_ctrl_out1),       
         .bs33_tx_bit_ctrl_out                         (n5_tx_bit_ctrl_in1),      
         .bs33_rx_bit_ctrl_in                          (n5_rx_bit_ctrl_out1),       
         .bs33_rx_bit_ctrl_out                         (n5_rx_bit_ctrl_in1),      
//BITSLICE34 Signals
         .bs34_D_data_from_fabric_in                   (bs34_data_from_fabric_in),  
         .bs34_O_out                                   (bs_to_buf_data[34]),       
         .bs34_t_out                                   (bs_to_buf_t[34]),           
         .bs34_t_in                                    (bs34_t_in),           
         .bs34_tx_ce_in                                (bs34_tx_ce_in),          
         .bs34_tx_cntvaluein                           (bs34_tx_cntvaluein),      
         .bs34_tx_cntvalueout                          (bs34_tx_cntvalueout),    
         .bs34_tx_en_vtc_in                            (bs34_tx_en_vtc_in),      
         .bs34_tx_inc_in                               (bs34_tx_inc_in),          
         .bs34_tx_load_in                              (bs34_tx_load_in),        
         .bs34_datain_from_buf_in                      (data_to_bs[34]),         
         .bs34_Q_data_to_fabric_out                    (bs34_data_to_fabric_out),       
         .bs34_rx_ce_in                                (bs34_rx_ce_in),       
         .bs34_rxcntvalueout                           (bs34_rxcntvalueout),       
         .bs34_rx_cntvaluein                           (bs34_rx_cntvaluein),       
         .bs34_rx_en_vtc_in                            (bs34_rx_en_vtc_in),       
         .bs34_rx_inc_in                               (bs34_rx_inc_in),       
         .bs34_rx_load_in                              (bs34_rx_load_in),       
         .bs34_ce_ext_in                               (bs34_ce_ext_in),       
         .bs34_cntvalueout_ext_out                     (bs34_cntvalueout_ext_out),  
         .bs34_cntvaluein_ext_in                       (bs34_cntvaluein_ext_in),    
         .bs34_en_vtc_ext_in                           (bs34_en_vtc_ext_in),       
         .bs34_inc_ext_in                              (bs34_inc_ext_in),       
         .bs34_load_ext_in                             (bs34_load_ext_in),       
         .bs34_fifo_empty_out                          (bs34_fifo_empty_out),       
         .bs34_fifo_rd_clk                             (bs34_fifo_rd_clk),       
         .bs34_fifo_rd_en                              (bs34_fifo_rd_en),       
         .bs34_tx_bit_ctrl_in                          (n5_tx_bit_ctrl_out2),       
         .bs34_tx_bit_ctrl_out                         (n5_tx_bit_ctrl_in2),      
         .bs34_rx_bit_ctrl_in                          (n5_rx_bit_ctrl_out2),       
         .bs34_rx_bit_ctrl_out                         (n5_rx_bit_ctrl_in2),      
//BITSLICE35 Signals
         .bs35_D_data_from_fabric_in                   (bs35_data_from_fabric_in),  
         .bs35_O_out                                   (bs_to_buf_data[35]),       
         .bs35_t_out                                   (bs_to_buf_t[35]),           
         .bs35_t_in                                    (bs35_t_in),           
         .bs35_tx_ce_in                                (bs35_tx_ce_in),          
         .bs35_tx_cntvaluein                           (bs35_tx_cntvaluein),      
         .bs35_tx_cntvalueout                          (bs35_tx_cntvalueout),    
         .bs35_tx_en_vtc_in                            (bs35_tx_en_vtc_in),      
         .bs35_tx_inc_in                               (bs35_tx_inc_in),          
         .bs35_tx_load_in                              (bs35_tx_load_in),        
         .bs35_datain_from_buf_in                      (data_to_bs_from_buf[35]),         
         .bs35_Q_data_to_fabric_out                    (bs35_data_to_fabric_out),       
         .bs35_rx_ce_in                                (bs35_rx_ce_in),       
         .bs35_rxcntvalueout                           (bs35_rxcntvalueout),       
         .bs35_rx_cntvaluein                           (bs35_rx_cntvaluein),       
         .bs35_rx_en_vtc_in                            (bs35_rx_en_vtc_in),       
         .bs35_rx_inc_in                               (bs35_rx_inc_in),       
         .bs35_rx_load_in                              (bs35_rx_load_in),       
         .bs35_ce_ext_in                               (bs35_ce_ext_in),       
         .bs35_cntvalueout_ext_out                     (bs35_cntvalueout_ext_out),  
         .bs35_cntvaluein_ext_in                       (bs35_cntvaluein_ext_in),    
         .bs35_en_vtc_ext_in                           (bs35_en_vtc_ext_in),       
         .bs35_inc_ext_in                              (bs35_inc_ext_in),       
         .bs35_load_ext_in                             (bs35_load_ext_in),       
         .bs35_fifo_empty_out                          (bs35_fifo_empty_out),       
         .bs35_fifo_rd_clk                             (bs35_fifo_rd_clk),       
         .bs35_fifo_rd_en                              (bs35_fifo_rd_en),       
         .bs35_tx_bit_ctrl_in                          (n5_tx_bit_ctrl_out3),       
         .bs35_tx_bit_ctrl_out                         (n5_tx_bit_ctrl_in3),      
         .bs35_rx_bit_ctrl_in                          (n5_rx_bit_ctrl_out3),       
         .bs35_rx_bit_ctrl_out                         (n5_rx_bit_ctrl_in3),      
//BITSLICE36 Signals
         .bs36_D_data_from_fabric_in                   (bs36_data_from_fabric_in),  
         .bs36_O_out                                   (bs_to_buf_data[36]),       
         .bs36_t_out                                   (bs_to_buf_t[36]),           
         .bs36_t_in                                    (bs36_t_in),           
         .bs36_tx_ce_in                                (bs36_tx_ce_in),          
         .bs36_tx_cntvaluein                           (bs36_tx_cntvaluein),      
         .bs36_tx_cntvalueout                          (bs36_tx_cntvalueout),    
         .bs36_tx_en_vtc_in                            (bs36_tx_en_vtc_in),      
         .bs36_tx_inc_in                               (bs36_tx_inc_in),          
         .bs36_tx_load_in                              (bs36_tx_load_in),        
         .bs36_datain_from_buf_in                      (data_to_bs[36]),         
         .bs36_Q_data_to_fabric_out                    (bs36_data_to_fabric_out),       
         .bs36_rx_ce_in                                (bs36_rx_ce_in),       
         .bs36_rxcntvalueout                           (bs36_rxcntvalueout),       
         .bs36_rx_cntvaluein                           (bs36_rx_cntvaluein),       
         .bs36_rx_en_vtc_in                            (bs36_rx_en_vtc_in),       
         .bs36_rx_inc_in                               (bs36_rx_inc_in),       
         .bs36_rx_load_in                              (bs36_rx_load_in),       
         .bs36_ce_ext_in                               (bs36_ce_ext_in),       
         .bs36_cntvalueout_ext_out                     (bs36_cntvalueout_ext_out),  
         .bs36_cntvaluein_ext_in                       (bs36_cntvaluein_ext_in),    
         .bs36_en_vtc_ext_in                           (bs36_en_vtc_ext_in),       
         .bs36_inc_ext_in                              (bs36_inc_ext_in),       
         .bs36_load_ext_in                             (bs36_load_ext_in),       
         .bs36_fifo_empty_out                          (bs36_fifo_empty_out),       
         .bs36_fifo_rd_clk                             (bs36_fifo_rd_clk),       
         .bs36_fifo_rd_en                              (bs36_fifo_rd_en),       
         .bs36_tx_bit_ctrl_in                          (n5_tx_bit_ctrl_out4),       
         .bs36_tx_bit_ctrl_out                         (n5_tx_bit_ctrl_in4),      
         .bs36_rx_bit_ctrl_in                          (n5_rx_bit_ctrl_out4),       
         .bs36_rx_bit_ctrl_out                         (n5_rx_bit_ctrl_in4),      
//BITSLICE37 Signals
         .bs37_D_data_from_fabric_in                   (bs37_data_from_fabric_in),  
         .bs37_O_out                                   (bs_to_buf_data[37]),       
         .bs37_t_out                                   (bs_to_buf_t[37]),           
         .bs37_t_in                                    (bs37_t_in),           
         .bs37_tx_ce_in                                (bs37_tx_ce_in),          
         .bs37_tx_cntvaluein                           (bs37_tx_cntvaluein),      
         .bs37_tx_cntvalueout                          (bs37_tx_cntvalueout),    
         .bs37_tx_en_vtc_in                            (bs37_tx_en_vtc_in),      
         .bs37_tx_inc_in                               (bs37_tx_inc_in),          
         .bs37_tx_load_in                              (bs37_tx_load_in),        
         .bs37_datain_from_buf_in                      (data_to_bs_from_buf[37]),         
         .bs37_Q_data_to_fabric_out                    (bs37_data_to_fabric_out),       
         .bs37_rx_ce_in                                (bs37_rx_ce_in),       
         .bs37_rxcntvalueout                           (bs37_rxcntvalueout),       
         .bs37_rx_cntvaluein                           (bs37_rx_cntvaluein),       
         .bs37_rx_en_vtc_in                            (bs37_rx_en_vtc_in),       
         .bs37_rx_inc_in                               (bs37_rx_inc_in),       
         .bs37_rx_load_in                              (bs37_rx_load_in),       
         .bs37_ce_ext_in                               (bs37_ce_ext_in),       
         .bs37_cntvalueout_ext_out                     (bs37_cntvalueout_ext_out),  
         .bs37_cntvaluein_ext_in                       (bs37_cntvaluein_ext_in),    
         .bs37_en_vtc_ext_in                           (bs37_en_vtc_ext_in),       
         .bs37_inc_ext_in                              (bs37_inc_ext_in),       
         .bs37_load_ext_in                             (bs37_load_ext_in),       
         .bs37_fifo_empty_out                          (bs37_fifo_empty_out),       
         .bs37_fifo_rd_clk                             (bs37_fifo_rd_clk),       
         .bs37_fifo_rd_en                              (bs37_fifo_rd_en),       
         .bs37_tx_bit_ctrl_in                          (n5_tx_bit_ctrl_out5),       
         .bs37_tx_bit_ctrl_out                         (n5_tx_bit_ctrl_in5),      
         .bs37_rx_bit_ctrl_in                          (n5_rx_bit_ctrl_out5),       
         .bs37_rx_bit_ctrl_out                         (n5_rx_bit_ctrl_in5),      
//BITSLICE38 Signals
         .bs38_D_data_from_fabric_in                   (bs38_data_from_fabric_in),  
         .bs38_O_out                                   (bs_to_buf_data[38]),       
         .bs38_t_out                                   (bs_to_buf_t[38]),           
         .bs38_t_in                                    (bs38_t_in),           
         .bs38_tx_ce_in                                (bs38_tx_ce_in),          
         .bs38_tx_cntvaluein                           (bs38_tx_cntvaluein),      
         .bs38_tx_cntvalueout                          (bs38_tx_cntvalueout),    
         .bs38_tx_en_vtc_in                            (bs38_tx_en_vtc_in),      
         .bs38_tx_inc_in                               (bs38_tx_inc_in),          
         .bs38_tx_load_in                              (bs38_tx_load_in),        
         .bs38_datain_from_buf_in                      (data_to_bs[38]),         
         .bs38_Q_data_to_fabric_out                    (bs38_data_to_fabric_out),       
         .bs38_rx_ce_in                                (bs38_rx_ce_in),       
         .bs38_rxcntvalueout                           (bs38_rxcntvalueout),       
         .bs38_rx_cntvaluein                           (bs38_rx_cntvaluein),       
         .bs38_rx_en_vtc_in                            (bs38_rx_en_vtc_in),       
         .bs38_rx_inc_in                               (bs38_rx_inc_in),       
         .bs38_rx_load_in                              (bs38_rx_load_in),       
         .bs38_ce_ext_in                               (bs38_ce_ext_in),       
         .bs38_cntvalueout_ext_out                     (bs38_cntvalueout_ext_out),  
         .bs38_cntvaluein_ext_in                       (bs38_cntvaluein_ext_in),    
         .bs38_en_vtc_ext_in                           (bs38_en_vtc_ext_in),       
         .bs38_inc_ext_in                              (bs38_inc_ext_in),       
         .bs38_load_ext_in                             (bs38_load_ext_in),       
         .bs38_fifo_empty_out                          (bs38_fifo_empty_out),       
         .bs38_fifo_rd_clk                             (bs38_fifo_rd_clk),       
         .bs38_fifo_rd_en                              (bs38_fifo_rd_en),       
         .bs38_tx_bit_ctrl_in                          (n5_tx_bit_ctrl_out6),       
         .bs38_tx_bit_ctrl_out                         (n5_tx_bit_ctrl_in6),      
         .bs38_rx_bit_ctrl_in                          (n5_rx_bit_ctrl_out6),       
         .bs38_rx_bit_ctrl_out                         (n5_rx_bit_ctrl_in6),      
//BITSLICE39 Signals
         .bs39_D_data_from_fabric_in                   (bs39_data_from_fabric_in),  
         .bs39_O_out                                   (bs_to_buf_data[39]),       
         .bs39_t_out                                   (bs_to_buf_t[39]),           
         .bs39_t_in                                    (bs39_t_in),           
         .bs39_tx_ce_in                                (bs39_tx_ce_in),          
         .bs39_tx_cntvaluein                           (bs39_tx_cntvaluein),      
         .bs39_tx_cntvalueout                          (bs39_tx_cntvalueout),    
         .bs39_tx_en_vtc_in                            (bs39_tx_en_vtc_in),      
         .bs39_tx_inc_in                               (bs39_tx_inc_in),          
         .bs39_tx_load_in                              (bs39_tx_load_in),        
         .bs39_datain_from_buf_in                      (data_to_bs[39]),         
         .bs39_Q_data_to_fabric_out                    (bs39_data_to_fabric_out),       
         .bs39_rx_ce_in                                (bs39_rx_ce_in),       
         .bs39_rxcntvalueout                           (bs39_rxcntvalueout),       
         .bs39_rx_cntvaluein                           (bs39_rx_cntvaluein),       
         .bs39_rx_en_vtc_in                            (bs39_rx_en_vtc_in),       
         .bs39_rx_inc_in                               (bs39_rx_inc_in),       
         .bs39_rx_load_in                              (bs39_rx_load_in),       
         .bs39_ce_ext_in                               (bs39_ce_ext_in),       
         .bs39_cntvalueout_ext_out                     (bs39_cntvalueout_ext_out),  
         .bs39_cntvaluein_ext_in                       (bs39_cntvaluein_ext_in),    
         .bs39_en_vtc_ext_in                           (bs39_en_vtc_ext_in),       
         .bs39_inc_ext_in                              (bs39_inc_ext_in),       
         .bs39_load_ext_in                             (bs39_load_ext_in),       
         .bs39_fifo_empty_out                          (bs39_fifo_empty_out),       
         .bs39_fifo_rd_clk                             (bs39_fifo_rd_clk),       
         .bs39_fifo_rd_en                              (bs39_fifo_rd_en),       
         .bs39_tx_bit_ctrl_in                          (n6_tx_bit_ctrl_out0),       
         .bs39_tx_bit_ctrl_out                         (n6_tx_bit_ctrl_in0),      
         .bs39_rx_bit_ctrl_in                          (n6_rx_bit_ctrl_out0),       
         .bs39_rx_bit_ctrl_out                         (n6_rx_bit_ctrl_in0),      
//BITSLICE40 Signals
         .bs40_D_data_from_fabric_in                   (bs40_data_from_fabric_in),  
         .bs40_O_out                                   (bs_to_buf_data[40]),       
         .bs40_t_out                                   (bs_to_buf_t[40]),           
         .bs40_t_in                                    (bs40_t_in),           
         .bs40_tx_ce_in                                (bs40_tx_ce_in),          
         .bs40_tx_cntvaluein                           (bs40_tx_cntvaluein),      
         .bs40_tx_cntvalueout                          (bs40_tx_cntvalueout),    
         .bs40_tx_en_vtc_in                            (bs40_tx_en_vtc_in),      
         .bs40_tx_inc_in                               (bs40_tx_inc_in),          
         .bs40_tx_load_in                              (bs40_tx_load_in),        
         .bs40_datain_from_buf_in                      (data_to_bs_from_buf[40]),         
         .bs40_Q_data_to_fabric_out                    (bs40_data_to_fabric_out),       
         .bs40_rx_ce_in                                (bs40_rx_ce_in),       
         .bs40_rxcntvalueout                           (bs40_rxcntvalueout),       
         .bs40_rx_cntvaluein                           (bs40_rx_cntvaluein),       
         .bs40_rx_en_vtc_in                            (bs40_rx_en_vtc_in),       
         .bs40_rx_inc_in                               (bs40_rx_inc_in),       
         .bs40_rx_load_in                              (bs40_rx_load_in),       
         .bs40_ce_ext_in                               (bs40_ce_ext_in),       
         .bs40_cntvalueout_ext_out                     (bs40_cntvalueout_ext_out),  
         .bs40_cntvaluein_ext_in                       (bs40_cntvaluein_ext_in),    
         .bs40_en_vtc_ext_in                           (bs40_en_vtc_ext_in),       
         .bs40_inc_ext_in                              (bs40_inc_ext_in),       
         .bs40_load_ext_in                             (bs40_load_ext_in),       
         .bs40_fifo_empty_out                          (bs40_fifo_empty_out),       
         .bs40_fifo_rd_clk                             (bs40_fifo_rd_clk),       
         .bs40_fifo_rd_en                              (bs40_fifo_rd_en),       
         .bs40_tx_bit_ctrl_in                          (n6_tx_bit_ctrl_out1),       
         .bs40_tx_bit_ctrl_out                         (n6_tx_bit_ctrl_in1),      
         .bs40_rx_bit_ctrl_in                          (n6_rx_bit_ctrl_out1),       
         .bs40_rx_bit_ctrl_out                         (n6_rx_bit_ctrl_in1),      
//BITSLICE41 Signals
         .bs41_D_data_from_fabric_in                   (bs41_data_from_fabric_in),  
         .bs41_O_out                                   (bs_to_buf_data[41]),       
         .bs41_t_out                                   (bs_to_buf_t[41]),           
         .bs41_t_in                                    (bs41_t_in),           
         .bs41_tx_ce_in                                (bs41_tx_ce_in),          
         .bs41_tx_cntvaluein                           (bs41_tx_cntvaluein),      
         .bs41_tx_cntvalueout                          (bs41_tx_cntvalueout),    
         .bs41_tx_en_vtc_in                            (bs41_tx_en_vtc_in),      
         .bs41_tx_inc_in                               (bs41_tx_inc_in),          
         .bs41_tx_load_in                              (bs41_tx_load_in),        
         .bs41_datain_from_buf_in                      (data_to_bs[41]),         
         .bs41_Q_data_to_fabric_out                    (bs41_data_to_fabric_out),       
         .bs41_rx_ce_in                                (bs41_rx_ce_in),       
         .bs41_rxcntvalueout                           (bs41_rxcntvalueout),       
         .bs41_rx_cntvaluein                           (bs41_rx_cntvaluein),       
         .bs41_rx_en_vtc_in                            (bs41_rx_en_vtc_in),       
         .bs41_rx_inc_in                               (bs41_rx_inc_in),       
         .bs41_rx_load_in                              (bs41_rx_load_in),       
         .bs41_ce_ext_in                               (bs41_ce_ext_in),       
         .bs41_cntvalueout_ext_out                     (bs41_cntvalueout_ext_out),  
         .bs41_cntvaluein_ext_in                       (bs41_cntvaluein_ext_in),    
         .bs41_en_vtc_ext_in                           (bs41_en_vtc_ext_in),       
         .bs41_inc_ext_in                              (bs41_inc_ext_in),       
         .bs41_load_ext_in                             (bs41_load_ext_in),       
         .bs41_fifo_empty_out                          (bs41_fifo_empty_out),       
         .bs41_fifo_rd_clk                             (bs41_fifo_rd_clk),       
         .bs41_fifo_rd_en                              (bs41_fifo_rd_en),       
         .bs41_tx_bit_ctrl_in                          (n6_tx_bit_ctrl_out2),       
         .bs41_tx_bit_ctrl_out                         (n6_tx_bit_ctrl_in2),      
         .bs41_rx_bit_ctrl_in                          (n6_rx_bit_ctrl_out2),       
         .bs41_rx_bit_ctrl_out                         (n6_rx_bit_ctrl_in2),      
//BITSLICE42 Signals
         .bs42_D_data_from_fabric_in                   (bs42_data_from_fabric_in),  
         .bs42_O_out                                   (bs_to_buf_data[42]),       
         .bs42_t_out                                   (bs_to_buf_t[42]),           
         .bs42_t_in                                    (bs42_t_in),           
         .bs42_tx_ce_in                                (bs42_tx_ce_in),          
         .bs42_tx_cntvaluein                           (bs42_tx_cntvaluein),      
         .bs42_tx_cntvalueout                          (bs42_tx_cntvalueout),    
         .bs42_tx_en_vtc_in                            (bs42_tx_en_vtc_in),      
         .bs42_tx_inc_in                               (bs42_tx_inc_in),          
         .bs42_tx_load_in                              (bs42_tx_load_in),        
         .bs42_datain_from_buf_in                      (data_to_bs_from_buf[42]),         
         .bs42_Q_data_to_fabric_out                    (bs42_data_to_fabric_out),       
         .bs42_rx_ce_in                                (bs42_rx_ce_in),       
         .bs42_rxcntvalueout                           (bs42_rxcntvalueout),       
         .bs42_rx_cntvaluein                           (bs42_rx_cntvaluein),       
         .bs42_rx_en_vtc_in                            (bs42_rx_en_vtc_in),       
         .bs42_rx_inc_in                               (bs42_rx_inc_in),       
         .bs42_rx_load_in                              (bs42_rx_load_in),       
         .bs42_ce_ext_in                               (bs42_ce_ext_in),       
         .bs42_cntvalueout_ext_out                     (bs42_cntvalueout_ext_out),  
         .bs42_cntvaluein_ext_in                       (bs42_cntvaluein_ext_in),    
         .bs42_en_vtc_ext_in                           (bs42_en_vtc_ext_in),       
         .bs42_inc_ext_in                              (bs42_inc_ext_in),       
         .bs42_load_ext_in                             (bs42_load_ext_in),       
         .bs42_fifo_empty_out                          (bs42_fifo_empty_out),       
         .bs42_fifo_rd_clk                             (bs42_fifo_rd_clk),       
         .bs42_fifo_rd_en                              (bs42_fifo_rd_en),       
         .bs42_tx_bit_ctrl_in                          (n6_tx_bit_ctrl_out3),       
         .bs42_tx_bit_ctrl_out                         (n6_tx_bit_ctrl_in3),      
         .bs42_rx_bit_ctrl_in                          (n6_rx_bit_ctrl_out3),       
         .bs42_rx_bit_ctrl_out                         (n6_rx_bit_ctrl_in3),      
//BITSLICE43 Signals
         .bs43_D_data_from_fabric_in                   (bs43_data_from_fabric_in),  
         .bs43_O_out                                   (bs_to_buf_data[43]),       
         .bs43_t_out                                   (bs_to_buf_t[43]),           
         .bs43_t_in                                    (bs43_t_in),           
         .bs43_tx_ce_in                                (bs43_tx_ce_in),          
         .bs43_tx_cntvaluein                           (bs43_tx_cntvaluein),      
         .bs43_tx_cntvalueout                          (bs43_tx_cntvalueout),    
         .bs43_tx_en_vtc_in                            (bs43_tx_en_vtc_in),      
         .bs43_tx_inc_in                               (bs43_tx_inc_in),          
         .bs43_tx_load_in                              (bs43_tx_load_in),        
         .bs43_datain_from_buf_in                      (data_to_bs[43]),         
         .bs43_Q_data_to_fabric_out                    (bs43_data_to_fabric_out),       
         .bs43_rx_ce_in                                (bs43_rx_ce_in),       
         .bs43_rxcntvalueout                           (bs43_rxcntvalueout),       
         .bs43_rx_cntvaluein                           (bs43_rx_cntvaluein),       
         .bs43_rx_en_vtc_in                            (bs43_rx_en_vtc_in),       
         .bs43_rx_inc_in                               (bs43_rx_inc_in),       
         .bs43_rx_load_in                              (bs43_rx_load_in),       
         .bs43_ce_ext_in                               (bs43_ce_ext_in),       
         .bs43_cntvalueout_ext_out                     (bs43_cntvalueout_ext_out),  
         .bs43_cntvaluein_ext_in                       (bs43_cntvaluein_ext_in),    
         .bs43_en_vtc_ext_in                           (bs43_en_vtc_ext_in),       
         .bs43_inc_ext_in                              (bs43_inc_ext_in),       
         .bs43_load_ext_in                             (bs43_load_ext_in),       
         .bs43_fifo_empty_out                          (bs43_fifo_empty_out),       
         .bs43_fifo_rd_clk                             (bs43_fifo_rd_clk),       
         .bs43_fifo_rd_en                              (bs43_fifo_rd_en),       
         .bs43_tx_bit_ctrl_in                          (n6_tx_bit_ctrl_out4),       
         .bs43_tx_bit_ctrl_out                         (n6_tx_bit_ctrl_in4),      
         .bs43_rx_bit_ctrl_in                          (n6_rx_bit_ctrl_out4),       
         .bs43_rx_bit_ctrl_out                         (n6_rx_bit_ctrl_in4),      
//BITSLICE44 Signals
         .bs44_D_data_from_fabric_in                   (bs44_data_from_fabric_in),  
         .bs44_O_out                                   (bs_to_buf_data[44]),       
         .bs44_t_out                                   (bs_to_buf_t[44]),           
         .bs44_t_in                                    (bs44_t_in),           
         .bs44_tx_ce_in                                (bs44_tx_ce_in),          
         .bs44_tx_cntvaluein                           (bs44_tx_cntvaluein),      
         .bs44_tx_cntvalueout                          (bs44_tx_cntvalueout),    
         .bs44_tx_en_vtc_in                            (bs44_tx_en_vtc_in),      
         .bs44_tx_inc_in                               (bs44_tx_inc_in),          
         .bs44_tx_load_in                              (bs44_tx_load_in),        
         .bs44_datain_from_buf_in                      (data_to_bs_from_buf[44]),         
         .bs44_Q_data_to_fabric_out                    (bs44_data_to_fabric_out),       
         .bs44_rx_ce_in                                (bs44_rx_ce_in),       
         .bs44_rxcntvalueout                           (bs44_rxcntvalueout),       
         .bs44_rx_cntvaluein                           (bs44_rx_cntvaluein),       
         .bs44_rx_en_vtc_in                            (bs44_rx_en_vtc_in),       
         .bs44_rx_inc_in                               (bs44_rx_inc_in),       
         .bs44_rx_load_in                              (bs44_rx_load_in),       
         .bs44_ce_ext_in                               (bs44_ce_ext_in),       
         .bs44_cntvalueout_ext_out                     (bs44_cntvalueout_ext_out),  
         .bs44_cntvaluein_ext_in                       (bs44_cntvaluein_ext_in),    
         .bs44_en_vtc_ext_in                           (bs44_en_vtc_ext_in),       
         .bs44_inc_ext_in                              (bs44_inc_ext_in),       
         .bs44_load_ext_in                             (bs44_load_ext_in),       
         .bs44_fifo_empty_out                          (bs44_fifo_empty_out),       
         .bs44_fifo_rd_clk                             (bs44_fifo_rd_clk),       
         .bs44_fifo_rd_en                              (bs44_fifo_rd_en),       
         .bs44_tx_bit_ctrl_in                          (n6_tx_bit_ctrl_out5),       
         .bs44_tx_bit_ctrl_out                         (n6_tx_bit_ctrl_in5),      
         .bs44_rx_bit_ctrl_in                          (n6_rx_bit_ctrl_out5),       
         .bs44_rx_bit_ctrl_out                         (n6_rx_bit_ctrl_in5),      
//BITSLICE45 Signals
         .bs45_D_data_from_fabric_in                   (bs45_data_from_fabric_in),  
         .bs45_O_out                                   (bs_to_buf_data[45]),       
         .bs45_t_out                                   (bs_to_buf_t[45]),           
         .bs45_t_in                                    (bs45_t_in),           
         .bs45_tx_ce_in                                (bs45_tx_ce_in),          
         .bs45_tx_cntvaluein                           (bs45_tx_cntvaluein),      
         .bs45_tx_cntvalueout                          (bs45_tx_cntvalueout),    
         .bs45_tx_en_vtc_in                            (bs45_tx_en_vtc_in),      
         .bs45_tx_inc_in                               (bs45_tx_inc_in),          
         .bs45_tx_load_in                              (bs45_tx_load_in),        
         .bs45_datain_from_buf_in                      (data_to_bs[45]),         
         .bs45_Q_data_to_fabric_out                    (bs45_data_to_fabric_out),       
         .bs45_rx_ce_in                                (bs45_rx_ce_in),       
         .bs45_rxcntvalueout                           (bs45_rxcntvalueout),       
         .bs45_rx_cntvaluein                           (bs45_rx_cntvaluein),       
         .bs45_rx_en_vtc_in                            (bs45_rx_en_vtc_in),       
         .bs45_rx_inc_in                               (bs45_rx_inc_in),       
         .bs45_rx_load_in                              (bs45_rx_load_in),       
         .bs45_ce_ext_in                               (bs45_ce_ext_in),       
         .bs45_cntvalueout_ext_out                     (bs45_cntvalueout_ext_out),  
         .bs45_cntvaluein_ext_in                       (bs45_cntvaluein_ext_in),    
         .bs45_en_vtc_ext_in                           (bs45_en_vtc_ext_in),       
         .bs45_inc_ext_in                              (bs45_inc_ext_in),       
         .bs45_load_ext_in                             (bs45_load_ext_in),       
         .bs45_fifo_empty_out                          (bs45_fifo_empty_out),       
         .bs45_fifo_rd_clk                             (bs45_fifo_rd_clk),       
         .bs45_fifo_rd_en                              (bs45_fifo_rd_en),       
         .bs45_tx_bit_ctrl_in                          (n7_tx_bit_ctrl_out0),       
         .bs45_tx_bit_ctrl_out                         (n7_tx_bit_ctrl_in0),      
         .bs45_rx_bit_ctrl_in                          (n7_rx_bit_ctrl_out0),       
         .bs45_rx_bit_ctrl_out                         (n7_rx_bit_ctrl_in0),      
//BITSLICE46 Signals
         .bs46_D_data_from_fabric_in                   (bs46_data_from_fabric_in),  
         .bs46_O_out                                   (bs_to_buf_data[46]),       
         .bs46_t_out                                   (bs_to_buf_t[46]),           
         .bs46_t_in                                    (bs46_t_in),           
         .bs46_tx_ce_in                                (bs46_tx_ce_in),          
         .bs46_tx_cntvaluein                           (bs46_tx_cntvaluein),      
         .bs46_tx_cntvalueout                          (bs46_tx_cntvalueout),    
         .bs46_tx_en_vtc_in                            (bs46_tx_en_vtc_in),      
         .bs46_tx_inc_in                               (bs46_tx_inc_in),          
         .bs46_tx_load_in                              (bs46_tx_load_in),        
         .bs46_datain_from_buf_in                      (data_to_bs_from_buf[46]),         
         .bs46_Q_data_to_fabric_out                    (bs46_data_to_fabric_out),       
         .bs46_rx_ce_in                                (bs46_rx_ce_in),       
         .bs46_rxcntvalueout                           (bs46_rxcntvalueout),       
         .bs46_rx_cntvaluein                           (bs46_rx_cntvaluein),       
         .bs46_rx_en_vtc_in                            (bs46_rx_en_vtc_in),       
         .bs46_rx_inc_in                               (bs46_rx_inc_in),       
         .bs46_rx_load_in                              (bs46_rx_load_in),       
         .bs46_ce_ext_in                               (bs46_ce_ext_in),       
         .bs46_cntvalueout_ext_out                     (bs46_cntvalueout_ext_out),  
         .bs46_cntvaluein_ext_in                       (bs46_cntvaluein_ext_in),    
         .bs46_en_vtc_ext_in                           (bs46_en_vtc_ext_in),       
         .bs46_inc_ext_in                              (bs46_inc_ext_in),       
         .bs46_load_ext_in                             (bs46_load_ext_in),       
         .bs46_fifo_empty_out                          (bs46_fifo_empty_out),       
         .bs46_fifo_rd_clk                             (bs46_fifo_rd_clk),       
         .bs46_fifo_rd_en                              (bs46_fifo_rd_en),       
         .bs46_tx_bit_ctrl_in                          (n7_tx_bit_ctrl_out1),       
         .bs46_tx_bit_ctrl_out                         (n7_tx_bit_ctrl_in1),      
         .bs46_rx_bit_ctrl_in                          (n7_rx_bit_ctrl_out1),       
         .bs46_rx_bit_ctrl_out                         (n7_rx_bit_ctrl_in1),      
//BITSLICE47 Signals
         .bs47_D_data_from_fabric_in                   (bs47_data_from_fabric_in),  
         .bs47_O_out                                   (bs_to_buf_data[47]),       
         .bs47_t_out                                   (bs_to_buf_t[47]),           
         .bs47_t_in                                    (bs47_t_in),           
         .bs47_tx_ce_in                                (bs47_tx_ce_in),          
         .bs47_tx_cntvaluein                           (bs47_tx_cntvaluein),      
         .bs47_tx_cntvalueout                          (bs47_tx_cntvalueout),    
         .bs47_tx_en_vtc_in                            (bs47_tx_en_vtc_in),      
         .bs47_tx_inc_in                               (bs47_tx_inc_in),          
         .bs47_tx_load_in                              (bs47_tx_load_in),        
         .bs47_datain_from_buf_in                      (data_to_bs[47]),         
         .bs47_Q_data_to_fabric_out                    (bs47_data_to_fabric_out),       
         .bs47_rx_ce_in                                (bs47_rx_ce_in),       
         .bs47_rxcntvalueout                           (bs47_rxcntvalueout),       
         .bs47_rx_cntvaluein                           (bs47_rx_cntvaluein),       
         .bs47_rx_en_vtc_in                            (bs47_rx_en_vtc_in),       
         .bs47_rx_inc_in                               (bs47_rx_inc_in),       
         .bs47_rx_load_in                              (bs47_rx_load_in),       
         .bs47_ce_ext_in                               (bs47_ce_ext_in),       
         .bs47_cntvalueout_ext_out                     (bs47_cntvalueout_ext_out),  
         .bs47_cntvaluein_ext_in                       (bs47_cntvaluein_ext_in),    
         .bs47_en_vtc_ext_in                           (bs47_en_vtc_ext_in),       
         .bs47_inc_ext_in                              (bs47_inc_ext_in),       
         .bs47_load_ext_in                             (bs47_load_ext_in),       
         .bs47_fifo_empty_out                          (bs47_fifo_empty_out),       
         .bs47_fifo_rd_clk                             (bs47_fifo_rd_clk),       
         .bs47_fifo_rd_en                              (bs47_fifo_rd_en),       
         .bs47_tx_bit_ctrl_in                          (n7_tx_bit_ctrl_out2),       
         .bs47_tx_bit_ctrl_out                         (n7_tx_bit_ctrl_in2),      
         .bs47_rx_bit_ctrl_in                          (n7_rx_bit_ctrl_out2),       
         .bs47_rx_bit_ctrl_out                         (n7_rx_bit_ctrl_in2),      
//BITSLICE48 Signals
         .bs48_D_data_from_fabric_in                   (bs48_data_from_fabric_in),  
         .bs48_O_out                                   (bs_to_buf_data[48]),       
         .bs48_t_out                                   (bs_to_buf_t[48]),           
         .bs48_t_in                                    (bs48_t_in),           
         .bs48_tx_ce_in                                (bs48_tx_ce_in),          
         .bs48_tx_cntvaluein                           (bs48_tx_cntvaluein),      
         .bs48_tx_cntvalueout                          (bs48_tx_cntvalueout),    
         .bs48_tx_en_vtc_in                            (bs48_tx_en_vtc_in),      
         .bs48_tx_inc_in                               (bs48_tx_inc_in),          
         .bs48_tx_load_in                              (bs48_tx_load_in),        
         .bs48_datain_from_buf_in                      (data_to_bs_from_buf[48]),         
         .bs48_Q_data_to_fabric_out                    (bs48_data_to_fabric_out),       
         .bs48_rx_ce_in                                (bs48_rx_ce_in),       
         .bs48_rxcntvalueout                           (bs48_rxcntvalueout),       
         .bs48_rx_cntvaluein                           (bs48_rx_cntvaluein),       
         .bs48_rx_en_vtc_in                            (bs48_rx_en_vtc_in),       
         .bs48_rx_inc_in                               (bs48_rx_inc_in),       
         .bs48_rx_load_in                              (bs48_rx_load_in),       
         .bs48_ce_ext_in                               (bs48_ce_ext_in),       
         .bs48_cntvalueout_ext_out                     (bs48_cntvalueout_ext_out),  
         .bs48_cntvaluein_ext_in                       (bs48_cntvaluein_ext_in),    
         .bs48_en_vtc_ext_in                           (bs48_en_vtc_ext_in),       
         .bs48_inc_ext_in                              (bs48_inc_ext_in),       
         .bs48_load_ext_in                             (bs48_load_ext_in),       
         .bs48_fifo_empty_out                          (bs48_fifo_empty_out),       
         .bs48_fifo_rd_clk                             (bs48_fifo_rd_clk),       
         .bs48_fifo_rd_en                              (bs48_fifo_rd_en),       
         .bs48_tx_bit_ctrl_in                          (n7_tx_bit_ctrl_out3),       
         .bs48_tx_bit_ctrl_out                         (n7_tx_bit_ctrl_in3),      
         .bs48_rx_bit_ctrl_in                          (n7_rx_bit_ctrl_out3),       
         .bs48_rx_bit_ctrl_out                         (n7_rx_bit_ctrl_in3),      
//BITSLICE49 Signals
         .bs49_D_data_from_fabric_in                   (bs49_data_from_fabric_in),  
         .bs49_O_out                                   (bs_to_buf_data[49]),       
         .bs49_t_out                                   (bs_to_buf_t[49]),           
         .bs49_t_in                                    (bs49_t_in),           
         .bs49_tx_ce_in                                (bs49_tx_ce_in),          
         .bs49_tx_cntvaluein                           (bs49_tx_cntvaluein),      
         .bs49_tx_cntvalueout                          (bs49_tx_cntvalueout),    
         .bs49_tx_en_vtc_in                            (bs49_tx_en_vtc_in),      
         .bs49_tx_inc_in                               (bs49_tx_inc_in),          
         .bs49_tx_load_in                              (bs49_tx_load_in),        
         .bs49_datain_from_buf_in                      (data_to_bs[49]),         
         .bs49_Q_data_to_fabric_out                    (bs49_data_to_fabric_out),       
         .bs49_rx_ce_in                                (bs49_rx_ce_in),       
         .bs49_rxcntvalueout                           (bs49_rxcntvalueout),       
         .bs49_rx_cntvaluein                           (bs49_rx_cntvaluein),       
         .bs49_rx_en_vtc_in                            (bs49_rx_en_vtc_in),       
         .bs49_rx_inc_in                               (bs49_rx_inc_in),       
         .bs49_rx_load_in                              (bs49_rx_load_in),       
         .bs49_ce_ext_in                               (bs49_ce_ext_in),       
         .bs49_cntvalueout_ext_out                     (bs49_cntvalueout_ext_out),  
         .bs49_cntvaluein_ext_in                       (bs49_cntvaluein_ext_in),    
         .bs49_en_vtc_ext_in                           (bs49_en_vtc_ext_in),       
         .bs49_inc_ext_in                              (bs49_inc_ext_in),       
         .bs49_load_ext_in                             (bs49_load_ext_in),       
         .bs49_fifo_empty_out                          (bs49_fifo_empty_out),       
         .bs49_fifo_rd_clk                             (bs49_fifo_rd_clk),       
         .bs49_fifo_rd_en                              (bs49_fifo_rd_en),       
         .bs49_tx_bit_ctrl_in                          (n7_tx_bit_ctrl_out4),       
         .bs49_tx_bit_ctrl_out                         (n7_tx_bit_ctrl_in4),      
         .bs49_rx_bit_ctrl_in                          (n7_rx_bit_ctrl_out4),       
         .bs49_rx_bit_ctrl_out                         (n7_rx_bit_ctrl_in4),      
//BITSLICE50 Signals
         .bs50_D_data_from_fabric_in                   (bs50_data_from_fabric_in),  
         .bs50_O_out                                   (bs_to_buf_data[50]),       
         .bs50_t_out                                   (bs_to_buf_t[50]),           
         .bs50_t_in                                    (bs50_t_in),           
         .bs50_tx_ce_in                                (bs50_tx_ce_in),          
         .bs50_tx_cntvaluein                           (bs50_tx_cntvaluein),      
         .bs50_tx_cntvalueout                          (bs50_tx_cntvalueout),    
         .bs50_tx_en_vtc_in                            (bs50_tx_en_vtc_in),      
         .bs50_tx_inc_in                               (bs50_tx_inc_in),          
         .bs50_tx_load_in                              (bs50_tx_load_in),        
         .bs50_datain_from_buf_in                      (data_to_bs_from_buf[50]),         
         .bs50_Q_data_to_fabric_out                    (bs50_data_to_fabric_out),       
         .bs50_rx_ce_in                                (bs50_rx_ce_in),       
         .bs50_rxcntvalueout                           (bs50_rxcntvalueout),       
         .bs50_rx_cntvaluein                           (bs50_rx_cntvaluein),       
         .bs50_rx_en_vtc_in                            (bs50_rx_en_vtc_in),       
         .bs50_rx_inc_in                               (bs50_rx_inc_in),       
         .bs50_rx_load_in                              (bs50_rx_load_in),       
         .bs50_ce_ext_in                               (bs50_ce_ext_in),       
         .bs50_cntvalueout_ext_out                     (bs50_cntvalueout_ext_out),  
         .bs50_cntvaluein_ext_in                       (bs50_cntvaluein_ext_in),    
         .bs50_en_vtc_ext_in                           (bs50_en_vtc_ext_in),       
         .bs50_inc_ext_in                              (bs50_inc_ext_in),       
         .bs50_load_ext_in                             (bs50_load_ext_in),       
         .bs50_fifo_empty_out                          (bs50_fifo_empty_out),       
         .bs50_fifo_rd_clk                             (bs50_fifo_rd_clk),       
         .bs50_fifo_rd_en                              (bs50_fifo_rd_en),       
         .bs50_tx_bit_ctrl_in                          (n7_tx_bit_ctrl_out5),       
         .bs50_tx_bit_ctrl_out                         (n7_tx_bit_ctrl_in5),      
         .bs50_rx_bit_ctrl_in                          (n7_rx_bit_ctrl_out5),       
         .bs50_rx_bit_ctrl_out                         (n7_rx_bit_ctrl_in5),      
//BITSLICE51 Signals
         .bs51_D_data_from_fabric_in                   (bs51_data_from_fabric_in),  
         .bs51_O_out                                   (bs_to_buf_data[51]),       
         .bs51_t_out                                   (bs_to_buf_t[51]),           
         .bs51_t_in                                    (bs51_t_in),           
         .bs51_tx_ce_in                                (bs51_tx_ce_in),          
         .bs51_tx_cntvaluein                           (bs51_tx_cntvaluein),      
         .bs51_tx_cntvalueout                          (bs51_tx_cntvalueout),    
         .bs51_tx_en_vtc_in                            (bs51_tx_en_vtc_in),      
         .bs51_tx_inc_in                               (bs51_tx_inc_in),          
         .bs51_tx_load_in                              (bs51_tx_load_in),        
         .bs51_datain_from_buf_in                      (data_to_bs[51]),         
         .bs51_Q_data_to_fabric_out                    (bs51_data_to_fabric_out),       
         .bs51_rx_ce_in                                (bs51_rx_ce_in),       
         .bs51_rxcntvalueout                           (bs51_rxcntvalueout),       
         .bs51_rx_cntvaluein                           (bs51_rx_cntvaluein),       
         .bs51_rx_en_vtc_in                            (bs51_rx_en_vtc_in),       
         .bs51_rx_inc_in                               (bs51_rx_inc_in),       
         .bs51_rx_load_in                              (bs51_rx_load_in),       
         .bs51_ce_ext_in                               (bs51_ce_ext_in),       
         .bs51_cntvalueout_ext_out                     (bs51_cntvalueout_ext_out),  
         .bs51_cntvaluein_ext_in                       (bs51_cntvaluein_ext_in),    
         .bs51_en_vtc_ext_in                           (bs51_en_vtc_ext_in),       
         .bs51_inc_ext_in                              (bs51_inc_ext_in),       
         .bs51_load_ext_in                             (bs51_load_ext_in),       
         .bs51_fifo_empty_out                          (bs51_fifo_empty_out),       
         .bs51_fifo_rd_clk                             (bs51_fifo_rd_clk),       
         .bs51_fifo_rd_en                              (bs51_fifo_rd_en),       
         .bs51_tx_bit_ctrl_in                          (n7_tx_bit_ctrl_out6),       
         .bs51_tx_bit_ctrl_out                         (n7_tx_bit_ctrl_in6),      
         .bs51_rx_bit_ctrl_in                          (n7_rx_bit_ctrl_out6),       
         .bs51_rx_bit_ctrl_out                         (n7_rx_bit_ctrl_in6),      
         .bs0_bitslip_error_out                        (bs0_bitslip_error_out),
         .bs1_bitslip_error_out                        (bs1_bitslip_error_out),
         .bs2_bitslip_error_out                        (bs2_bitslip_error_out),
         .bs3_bitslip_error_out                        (bs3_bitslip_error_out),
         .bs4_bitslip_error_out                        (bs4_bitslip_error_out),
         .bs5_bitslip_error_out                        (bs5_bitslip_error_out),
         .bs6_bitslip_error_out                        (bs6_bitslip_error_out),
         .bs7_bitslip_error_out                        (bs7_bitslip_error_out),
         .bs8_bitslip_error_out                        (bs8_bitslip_error_out),
         .bs9_bitslip_error_out                        (bs9_bitslip_error_out),
         .bs10_bitslip_error_out                        (bs10_bitslip_error_out),
         .bs11_bitslip_error_out                        (bs11_bitslip_error_out),
         .bs12_bitslip_error_out                        (bs12_bitslip_error_out),
         .bs13_bitslip_error_out                        (bs13_bitslip_error_out),
         .bs14_bitslip_error_out                        (bs14_bitslip_error_out),
         .bs15_bitslip_error_out                        (bs15_bitslip_error_out),
         .bs16_bitslip_error_out                        (bs16_bitslip_error_out),
         .bs17_bitslip_error_out                        (bs17_bitslip_error_out),
         .bs18_bitslip_error_out                        (bs18_bitslip_error_out),
         .bs19_bitslip_error_out                        (bs19_bitslip_error_out),
         .bs20_bitslip_error_out                        (bs20_bitslip_error_out),
         .bs21_bitslip_error_out                        (bs21_bitslip_error_out),
         .bs22_bitslip_error_out                        (bs22_bitslip_error_out),
         .bs23_bitslip_error_out                        (bs23_bitslip_error_out),
         .bs24_bitslip_error_out                        (bs24_bitslip_error_out),
         .bs25_bitslip_error_out                        (bs25_bitslip_error_out),
         .bs26_bitslip_error_out                        (bs26_bitslip_error_out),
         .bs27_bitslip_error_out                        (bs27_bitslip_error_out),
         .bs28_bitslip_error_out                        (bs28_bitslip_error_out),
         .bs29_bitslip_error_out                        (bs29_bitslip_error_out),
         .bs30_bitslip_error_out                        (bs30_bitslip_error_out),
         .bs31_bitslip_error_out                        (bs31_bitslip_error_out),
         .bs32_bitslip_error_out                        (bs32_bitslip_error_out),
         .bs33_bitslip_error_out                        (bs33_bitslip_error_out),
         .bs34_bitslip_error_out                        (bs34_bitslip_error_out),
         .bs35_bitslip_error_out                        (bs35_bitslip_error_out),
         .bs36_bitslip_error_out                        (bs36_bitslip_error_out),
         .bs37_bitslip_error_out                        (bs37_bitslip_error_out),
         .bs38_bitslip_error_out                        (bs38_bitslip_error_out),
         .bs39_bitslip_error_out                        (bs39_bitslip_error_out),
         .bs40_bitslip_error_out                        (bs40_bitslip_error_out),
         .bs41_bitslip_error_out                        (bs41_bitslip_error_out),
         .bs42_bitslip_error_out                        (bs42_bitslip_error_out),
         .bs43_bitslip_error_out                        (bs43_bitslip_error_out),
         .bs44_bitslip_error_out                        (bs44_bitslip_error_out),
         .bs45_bitslip_error_out                        (bs45_bitslip_error_out),
         .bs46_bitslip_error_out                        (bs46_bitslip_error_out),
         .bs47_bitslip_error_out                        (bs47_bitslip_error_out),
         .bs48_bitslip_error_out                        (bs48_bitslip_error_out),
         .bs49_bitslip_error_out                        (bs49_bitslip_error_out),
         .bs50_bitslip_error_out                        (bs50_bitslip_error_out),
         .bs51_bitslip_error_out                        (bs51_bitslip_error_out),

         .bs0_nib0_fifo_wrclk_out                       (bs0_nib0_fifo_wrclk_out),
         .bs6_nib1_fifo_wrclk_out                       (bs6_nib1_fifo_wrclk_out),
         .bs13_nib2_fifo_wrclk_out                      (bs13_nib2_fifo_wrclk_out),
         .bs19_nib3_fifo_wrclk_out                      (bs19_nib3_fifo_wrclk_out),
         .bs26_nib4_fifo_wrclk_out                      (bs26_nib4_fifo_wrclk_out),
         .bs32_nib5_fifo_wrclk_out                      (bs32_nib5_fifo_wrclk_out),
         .bs39_nib6_fifo_wrclk_out                      (bs39_nib6_fifo_wrclk_out),
         .bs45_nib7_fifo_wrclk_out                      (bs45_nib7_fifo_wrclk_out),

         .bs_nib0_tri_cntvalueout                       (bs_nib0_tri_cntvalueout),    
         .bs_nib0_tri_cntvaluein                        (bs_nib0_tri_cntvaluein),     
         .bs_nib0_tri_en_vtc_in                         (bs_nib0_tri_en_vtc_in),      
         .bs_nib0_tri_ce_in                             (bs_nib0_tri_ce_in),          
         .bs_nib0_tri_inc_in                            (bs_nib0_tri_inc_in),         
         .bs_nib0_tri_load_in                           (bs_nib0_tri_load_in),        
         .bs_nib0_tri_bit_ctrl_in                       (n0_tx_bit_ctrl_out_tri),    
         .bs_nib0_tri_bit_ctrl_out                      (n0_tx_bit_ctrl_in_tri),     
         .bs_nib1_tri_cntvalueout                       (bs_nib1_tri_cntvalueout),    
         .bs_nib1_tri_cntvaluein                        (bs_nib1_tri_cntvaluein),     
         .bs_nib1_tri_en_vtc_in                         (bs_nib1_tri_en_vtc_in),      
         .bs_nib1_tri_ce_in                             (bs_nib1_tri_ce_in),          
         .bs_nib1_tri_inc_in                            (bs_nib1_tri_inc_in),         
         .bs_nib1_tri_load_in                           (bs_nib1_tri_load_in),        
         .bs_nib1_tri_bit_ctrl_in                       (n1_tx_bit_ctrl_out_tri),    
         .bs_nib1_tri_bit_ctrl_out                      (n1_tx_bit_ctrl_in_tri),     
         .bs_nib2_tri_cntvalueout                       (bs_nib2_tri_cntvalueout),    
         .bs_nib2_tri_cntvaluein                        (bs_nib2_tri_cntvaluein),     
         .bs_nib2_tri_en_vtc_in                         (bs_nib2_tri_en_vtc_in),      
         .bs_nib2_tri_ce_in                             (bs_nib2_tri_ce_in),          
         .bs_nib2_tri_inc_in                            (bs_nib2_tri_inc_in),         
         .bs_nib2_tri_load_in                           (bs_nib2_tri_load_in),        
         .bs_nib2_tri_bit_ctrl_in                       (n2_tx_bit_ctrl_out_tri),    
         .bs_nib2_tri_bit_ctrl_out                      (n2_tx_bit_ctrl_in_tri),     
         .bs_nib3_tri_cntvalueout                       (bs_nib3_tri_cntvalueout),    
         .bs_nib3_tri_cntvaluein                        (bs_nib3_tri_cntvaluein),     
         .bs_nib3_tri_en_vtc_in                         (bs_nib3_tri_en_vtc_in),      
         .bs_nib3_tri_ce_in                             (bs_nib3_tri_ce_in),          
         .bs_nib3_tri_inc_in                            (bs_nib3_tri_inc_in),         
         .bs_nib3_tri_load_in                           (bs_nib3_tri_load_in),        
         .bs_nib3_tri_bit_ctrl_in                       (n3_tx_bit_ctrl_out_tri),    
         .bs_nib3_tri_bit_ctrl_out                      (n3_tx_bit_ctrl_in_tri),     
         .bs_nib4_tri_cntvalueout                       (bs_nib4_tri_cntvalueout),    
         .bs_nib4_tri_cntvaluein                        (bs_nib4_tri_cntvaluein),     
         .bs_nib4_tri_en_vtc_in                         (bs_nib4_tri_en_vtc_in),      
         .bs_nib4_tri_ce_in                             (bs_nib4_tri_ce_in),          
         .bs_nib4_tri_inc_in                            (bs_nib4_tri_inc_in),         
         .bs_nib4_tri_load_in                           (bs_nib4_tri_load_in),        
         .bs_nib4_tri_bit_ctrl_in                       (n4_tx_bit_ctrl_out_tri),    
         .bs_nib4_tri_bit_ctrl_out                      (n4_tx_bit_ctrl_in_tri),     
         .bs_nib5_tri_cntvalueout                       (bs_nib5_tri_cntvalueout),    
         .bs_nib5_tri_cntvaluein                        (bs_nib5_tri_cntvaluein),     
         .bs_nib5_tri_en_vtc_in                         (bs_nib5_tri_en_vtc_in),      
         .bs_nib5_tri_ce_in                             (bs_nib5_tri_ce_in),          
         .bs_nib5_tri_inc_in                            (bs_nib5_tri_inc_in),         
         .bs_nib5_tri_load_in                           (bs_nib5_tri_load_in),        
         .bs_nib5_tri_bit_ctrl_in                       (n5_tx_bit_ctrl_out_tri),    
         .bs_nib5_tri_bit_ctrl_out                      (n5_tx_bit_ctrl_in_tri),     
         .bs_nib6_tri_cntvalueout                       (bs_nib6_tri_cntvalueout),    
         .bs_nib6_tri_cntvaluein                        (bs_nib6_tri_cntvaluein),     
         .bs_nib6_tri_en_vtc_in                         (bs_nib6_tri_en_vtc_in),      
         .bs_nib6_tri_ce_in                             (bs_nib6_tri_ce_in),          
         .bs_nib6_tri_inc_in                            (bs_nib6_tri_inc_in),         
         .bs_nib6_tri_load_in                           (bs_nib6_tri_load_in),        
         .bs_nib6_tri_bit_ctrl_in                       (n6_tx_bit_ctrl_out_tri),    
         .bs_nib6_tri_bit_ctrl_out                      (n6_tx_bit_ctrl_in_tri),     
         .bs_nib7_tri_cntvalueout                       (bs_nib7_tri_cntvalueout),    
         .bs_nib7_tri_cntvaluein                        (bs_nib7_tri_cntvaluein),     
         .bs_nib7_tri_en_vtc_in                         (bs_nib7_tri_en_vtc_in),      
         .bs_nib7_tri_ce_in                             (bs_nib7_tri_ce_in),          
         .bs_nib7_tri_inc_in                            (bs_nib7_tri_inc_in),         
         .bs_nib7_tri_load_in                           (bs_nib7_tri_load_in),        
         .bs_nib7_tri_bit_ctrl_in                       (n7_tx_bit_ctrl_out_tri),    
         .bs_nib7_tri_bit_ctrl_out                      (n7_tx_bit_ctrl_in_tri)     

);


//****************************************************************************
//           Instantiation of BITSLICE CONTROL TOP MODULE
//****************************************************************************

 high_speed_selectio_wiz_v3_6_0_bs_ctrl_top #(
    .C_SIM_DEVICE                      (C_SIM_DEVICE), 
    .C_SIM_VERSION                     (C_SIM_VERSION),
    .C_DIV_MODE                        (C_DIV_MODE),
    .C_INV_RX_CLK                      (C_INV_RX_CLK),
    .C_BSC_CTRL_CLK                    (C_BSC_CTRL_CLK),
    .C_BSC_EN_DYN_ODLY_MODE            (C_BSC_EN_DYN_ODLY_MODE),
    .C_BSC_IDLY_VT_TRACK               (C_BSC_IDLY_VT_TRACK),
    .C_BSC_ODLY_VT_TRACK               (C_BSC_ODLY_VT_TRACK),
    .C_BSC_QDLY_VT_TRACK               (C_BSC_QDLY_VT_TRACK),
    .C_BSC_READ_IDLE_COUNT             (C_BSC_READ_IDLE_COUNT),
    .C_BSC_REFCLK_SRC                  (C_BSC_REFCLK_SRC),
    .C_BSC_ROUNDING_FACTOR             (C_BSC_ROUNDING_FACTOR),
    .C_BSC_RXGATE_EXTEND               (C_BSC_RXGATE_EXTEND),
    .C_BSC_RX_GATING                   (C_BSC_RX_GATING),
    .C_BSC_SIM_SPEEDUP                 (C_BSC_SIM_SPEEDUP),
    .C_BSC_SELF_CALIBRATE              (C_BSC_SELF_CALIBRATE),
    .C_NIB0_EN_CLK_TO_EXT_NORTH        (C_NIB0_EN_CLK_TO_EXT_NORTH),
    .C_NIB0_EN_OTHER_PCLK              (C_NIB0_EN_OTHER_PCLK),
    .C_NIB0_EN_OTHER_NCLK              (C_NIB0_EN_OTHER_NCLK),
    .C_NIB1_EN_CLK_TO_EXT_NORTH        (C_NIB1_EN_CLK_TO_EXT_NORTH),
    .C_NIB1_EN_CLK_TO_EXT_SOUTH        (C_NIB1_EN_CLK_TO_EXT_SOUTH),
    .C_NIB1_EN_OTHER_PCLK              (C_NIB1_EN_OTHER_PCLK),
    .C_NIB1_EN_OTHER_NCLK              (C_NIB1_EN_OTHER_NCLK),
    .C_NIB2_EN_CLK_TO_EXT_NORTH        (C_NIB2_EN_CLK_TO_EXT_NORTH),
    .C_NIB2_EN_CLK_TO_EXT_SOUTH        (C_NIB2_EN_CLK_TO_EXT_SOUTH),
    .C_NIB2_EN_OTHER_PCLK              (C_NIB2_EN_OTHER_PCLK),
    .C_NIB2_EN_OTHER_NCLK              (C_NIB2_EN_OTHER_NCLK),
    .C_NIB3_EN_CLK_TO_EXT_NORTH        (C_NIB3_EN_CLK_TO_EXT_NORTH),
    .C_NIB3_EN_CLK_TO_EXT_SOUTH        (C_NIB3_EN_CLK_TO_EXT_SOUTH),
    .C_NIB3_EN_OTHER_PCLK              (C_NIB3_EN_OTHER_PCLK),
    .C_NIB3_EN_OTHER_NCLK              (C_NIB3_EN_OTHER_NCLK),
    .C_NIB4_EN_CLK_TO_EXT_NORTH        (C_NIB4_EN_CLK_TO_EXT_NORTH),
    .C_NIB4_EN_CLK_TO_EXT_SOUTH        (C_NIB4_EN_CLK_TO_EXT_SOUTH),
    .C_NIB4_EN_OTHER_PCLK              (C_NIB4_EN_OTHER_PCLK),
    .C_NIB4_EN_OTHER_NCLK              (C_NIB4_EN_OTHER_NCLK),
    .C_NIB5_EN_CLK_TO_EXT_NORTH        (C_NIB5_EN_CLK_TO_EXT_NORTH),
    .C_NIB5_EN_CLK_TO_EXT_SOUTH        (C_NIB5_EN_CLK_TO_EXT_SOUTH),
    .C_NIB5_EN_OTHER_PCLK              (C_NIB5_EN_OTHER_PCLK),
    .C_NIB5_EN_OTHER_NCLK              (C_NIB5_EN_OTHER_NCLK),
    .C_NIB6_EN_CLK_TO_EXT_NORTH        (C_NIB6_EN_CLK_TO_EXT_NORTH),
    .C_NIB6_EN_CLK_TO_EXT_SOUTH        (C_NIB6_EN_CLK_TO_EXT_SOUTH),
    .C_NIB6_EN_OTHER_PCLK              (C_NIB6_EN_OTHER_PCLK),
    .C_NIB6_EN_OTHER_NCLK              (C_NIB6_EN_OTHER_NCLK),
    .C_NIB7_EN_CLK_TO_EXT_SOUTH        (C_NIB7_EN_CLK_TO_EXT_SOUTH),
    .C_NIB7_EN_OTHER_PCLK              (C_NIB7_EN_OTHER_PCLK),
    .C_NIB7_EN_OTHER_NCLK              (C_NIB7_EN_OTHER_NCLK),
    .C_ENABLE_RIU_SPLIT                (C_ENABLE_RIU_SPLIT), 
    .C_EN_RIU_OR0                      (C_EN_RIU_OR0), 
    .C_EN_RIU_OR1                      (C_EN_RIU_OR1), 
    .C_EN_RIU_OR2                      (C_EN_RIU_OR2), 
    .C_EN_RIU_OR3                      (C_EN_RIU_OR3), 
    .C_EN_BSC0                         (C_EN_BSC0),
    .C_EN_BSC1                         (C_EN_BSC1),
    .C_EN_BSC2                         (C_EN_BSC2),
    .C_EN_BSC3                         (C_EN_BSC3),
    .C_EN_BSC4                         (C_EN_BSC4),
    .C_EN_BSC5                         (C_EN_BSC5),
    .C_EN_BSC6                         (C_EN_BSC6),
    .C_EN_BSC7                         (C_EN_BSC7),
    .C_RX_CLK_PHASE                    (RX_CLK_PHASE), 
    .C_SERIAL_MODE                     (C_SERIAL_MODE), 
    .C_NUM_BS_CTRL                     (C_NUM_BS_CTRL),
    .C_TX_IN_NIB0                      (C_TX_IN_NIB0), 
    .C_TX_IN_NIB1                      (C_TX_IN_NIB1), 
    .C_TX_IN_NIB2                      (C_TX_IN_NIB2), 
    .C_TX_IN_NIB3                      (C_TX_IN_NIB3), 
    .C_TX_IN_NIB4                      (C_TX_IN_NIB4), 
    .C_TX_IN_NIB5                      (C_TX_IN_NIB5), 
    .C_TX_IN_NIB6                      (C_TX_IN_NIB6), 
    .C_TX_IN_NIB7                      (C_TX_IN_NIB7),
    .C_BIDIR_IN_NIB0                   (C_BIDIR_IN_NIB0), 
    .C_BIDIR_IN_NIB1                   (C_BIDIR_IN_NIB1), 
    .C_BIDIR_IN_NIB2                   (C_BIDIR_IN_NIB2), 
    .C_BIDIR_IN_NIB3                   (C_BIDIR_IN_NIB3), 
    .C_BIDIR_IN_NIB4                   (C_BIDIR_IN_NIB4), 
    .C_BIDIR_IN_NIB5                   (C_BIDIR_IN_NIB5), 
    .C_BIDIR_IN_NIB6                   (C_BIDIR_IN_NIB6), 
    .C_BIDIR_IN_NIB7                   (C_BIDIR_IN_NIB7),
    .C_RX_IN_NIB0                      (C_RX_IN_NIB0), 
    .C_RX_IN_NIB1                      (C_RX_IN_NIB1), 
    .C_RX_IN_NIB2                      (C_RX_IN_NIB2), 
    .C_RX_IN_NIB3                      (C_RX_IN_NIB3), 
    .C_RX_IN_NIB4                      (C_RX_IN_NIB4), 
    .C_RX_IN_NIB5                      (C_RX_IN_NIB5), 
    .C_RX_IN_NIB6                      (C_RX_IN_NIB6), 
    .C_RX_IN_NIB7                      (C_RX_IN_NIB7) 
)
bs_ctrl_top_inst 
(         
         .rst_in                            (bsctrl_rst),
         .n0_dly_rdy_out                    (n0_dly_rdy),
         .n0_rx_bit_ctrl_out0               (n0_rx_bit_ctrl_out0),
         .n0_rx_bit_ctrl_out1               (n0_rx_bit_ctrl_out1),
         .n0_rx_bit_ctrl_out2               (n0_rx_bit_ctrl_out2),
         .n0_rx_bit_ctrl_out3               (n0_rx_bit_ctrl_out3),
         .n0_rx_bit_ctrl_out4               (n0_rx_bit_ctrl_out4),
         .n0_rx_bit_ctrl_out5               (n0_rx_bit_ctrl_out5),
         .n0_rx_bit_ctrl_out6               (n0_rx_bit_ctrl_out6),
         .n0_tx_bit_ctrl_out0               (n0_tx_bit_ctrl_out0),
         .n0_tx_bit_ctrl_out1               (n0_tx_bit_ctrl_out1),
         .n0_tx_bit_ctrl_out2               (n0_tx_bit_ctrl_out2),
         .n0_tx_bit_ctrl_out3               (n0_tx_bit_ctrl_out3),
         .n0_tx_bit_ctrl_out4               (n0_tx_bit_ctrl_out4),
         .n0_tx_bit_ctrl_out5               (n0_tx_bit_ctrl_out5),
         .n0_tx_bit_ctrl_out6               (n0_tx_bit_ctrl_out6),
         .n0_tx_bit_ctrl_out_tri            (n0_tx_bit_ctrl_out_tri),
         .n0_vtc_rdy_out                    (n0_vtc_rdy),
         .n0_en_vtc_in                      (n0_en_vtc),
         .n0_pll_clk_in                     (n0_pll_clk_in),
         .n0_refclk_in                      (1'b0),
         .n01_riu_addr_in                   (n01_riu_addr_in),
         .n01_riu_clk_in                    (riu_clk),
         .n01_riu_nibble_sel_in             (n01_riu_nibble_sel_in),
         .n01_riu_wr_data_in                (n01_riu_wr_data_in),
         .n01_riu_wr_en_in                  (n01_riu_wr_en_in),
         .n01_riu_rd_data_out               (n01_riu_rd_data_out),
         .n01_riu_valid_out                 (n01_riu_valid_out),
         .n0_riu_addr_in                    (n0_riu_addr_in),
         .n0_riu_nibble_sel_in              (n0_riu_nibble_sel_in),
         .n0_riu_wr_data_in                 (n0_riu_wr_data_in),
         .n0_riu_wr_en_in                   (n0_riu_wr_en_in),
         .n0_riu_rd_data_out                (n0_riu_rd_data_out),
         .n0_riu_valid_out                  (n0_riu_valid_out),
         .n1_riu_addr_in                    (n1_riu_addr_in),
         .n1_riu_nibble_sel_in              (n1_riu_nibble_sel_in),
         .n1_riu_wr_data_in                 (n1_riu_wr_data_in),
         .n1_riu_wr_en_in                   (n1_riu_wr_en_in),
         .n1_riu_rd_data_out                (n1_riu_rd_data_out),
         .n1_riu_valid_out                  (n1_riu_valid_out),
         .n0_rx_bit_ctrl_in0                (n0_rx_bit_ctrl_in0),
         .n0_rx_bit_ctrl_in1                (n0_rx_bit_ctrl_in1),
         .n0_rx_bit_ctrl_in2                (n0_rx_bit_ctrl_in2),
         .n0_rx_bit_ctrl_in3                (n0_rx_bit_ctrl_in3),
         .n0_rx_bit_ctrl_in4                (n0_rx_bit_ctrl_in4),
         .n0_rx_bit_ctrl_in5                (n0_rx_bit_ctrl_in5),
         .n0_rx_bit_ctrl_in6                (40'd0),
         .n0_tbyte_in                       (n0_tbyte),
         .n0_tx_bit_ctrl_in0                (n0_tx_bit_ctrl_in0),
         .n0_tx_bit_ctrl_in1                (n0_tx_bit_ctrl_in1),
         .n0_tx_bit_ctrl_in2                (n0_tx_bit_ctrl_in2),
         .n0_tx_bit_ctrl_in3                (n0_tx_bit_ctrl_in3),
         .n0_tx_bit_ctrl_in4                (n0_tx_bit_ctrl_in4),
         .n0_tx_bit_ctrl_in5                (n0_tx_bit_ctrl_in5),
         .n0_tx_bit_ctrl_in6                (40'd0),
         .n0_tx_bit_ctrl_in_tri             (n0_tx_bit_ctrl_in_tri),
         .n1_dly_rdy_out                    (n1_dly_rdy),
         .n1_rx_bit_ctrl_out0               (n1_rx_bit_ctrl_out0),
         .n1_rx_bit_ctrl_out1               (n1_rx_bit_ctrl_out1),
         .n1_rx_bit_ctrl_out2               (n1_rx_bit_ctrl_out2),
         .n1_rx_bit_ctrl_out3               (n1_rx_bit_ctrl_out3),
         .n1_rx_bit_ctrl_out4               (n1_rx_bit_ctrl_out4),
         .n1_rx_bit_ctrl_out5               (n1_rx_bit_ctrl_out5),
         .n1_rx_bit_ctrl_out6               (n1_rx_bit_ctrl_out6),
         .n1_tx_bit_ctrl_out0               (n1_tx_bit_ctrl_out0),
         .n1_tx_bit_ctrl_out1               (n1_tx_bit_ctrl_out1),
         .n1_tx_bit_ctrl_out2               (n1_tx_bit_ctrl_out2),
         .n1_tx_bit_ctrl_out3               (n1_tx_bit_ctrl_out3),
         .n1_tx_bit_ctrl_out4               (n1_tx_bit_ctrl_out4),
         .n1_tx_bit_ctrl_out5               (n1_tx_bit_ctrl_out5),
         .n1_tx_bit_ctrl_out6               (n1_tx_bit_ctrl_out6),
         .n1_tx_bit_ctrl_out_tri            (n1_tx_bit_ctrl_out_tri),
         .n1_vtc_rdy_out                    (n1_vtc_rdy),
         .n1_en_vtc_in                      (n1_en_vtc),
         .n1_pll_clk_in                     (n1_pll_clk_in),
         .n1_refclk_in                      (1'b0),
         .n1_rx_bit_ctrl_in0                (n1_rx_bit_ctrl_in0),
         .n1_rx_bit_ctrl_in1                (n1_rx_bit_ctrl_in1),
         .n1_rx_bit_ctrl_in2                (n1_rx_bit_ctrl_in2),
         .n1_rx_bit_ctrl_in3                (n1_rx_bit_ctrl_in3),
         .n1_rx_bit_ctrl_in4                (n1_rx_bit_ctrl_in4),
         .n1_rx_bit_ctrl_in5                (n1_rx_bit_ctrl_in5),
         .n1_rx_bit_ctrl_in6                (n1_rx_bit_ctrl_in6),
         .n1_tbyte_in                       (n1_tbyte),
         .n1_tx_bit_ctrl_in0                (n1_tx_bit_ctrl_in0),
         .n1_tx_bit_ctrl_in1                (n1_tx_bit_ctrl_in1),
         .n1_tx_bit_ctrl_in2                (n1_tx_bit_ctrl_in2),
         .n1_tx_bit_ctrl_in3                (n1_tx_bit_ctrl_in3),
         .n1_tx_bit_ctrl_in4                (n1_tx_bit_ctrl_in4),
         .n1_tx_bit_ctrl_in5                (n1_tx_bit_ctrl_in5),
         .n1_tx_bit_ctrl_in6                (n1_tx_bit_ctrl_in6),
         .n1_tx_bit_ctrl_in_tri             (n1_tx_bit_ctrl_in_tri),
         .n2_dly_rdy_out                    (n2_dly_rdy),
         .n2_rx_bit_ctrl_out0               (n2_rx_bit_ctrl_out0),
         .n2_rx_bit_ctrl_out1               (n2_rx_bit_ctrl_out1),
         .n2_rx_bit_ctrl_out2               (n2_rx_bit_ctrl_out2),
         .n2_rx_bit_ctrl_out3               (n2_rx_bit_ctrl_out3),
         .n2_rx_bit_ctrl_out4               (n2_rx_bit_ctrl_out4),
         .n2_rx_bit_ctrl_out5               (n2_rx_bit_ctrl_out5),
         .n2_rx_bit_ctrl_out6               (n2_rx_bit_ctrl_out6),
         .n2_tx_bit_ctrl_out0               (n2_tx_bit_ctrl_out0),
         .n2_tx_bit_ctrl_out1               (n2_tx_bit_ctrl_out1),
         .n2_tx_bit_ctrl_out2               (n2_tx_bit_ctrl_out2),
         .n2_tx_bit_ctrl_out3               (n2_tx_bit_ctrl_out3),
         .n2_tx_bit_ctrl_out4               (n2_tx_bit_ctrl_out4),
         .n2_tx_bit_ctrl_out5               (n2_tx_bit_ctrl_out5),
         .n2_tx_bit_ctrl_out6               (n2_tx_bit_ctrl_out6),
         .n2_tx_bit_ctrl_out_tri            (n2_tx_bit_ctrl_out_tri),
         .n2_vtc_rdy_out                    (n2_vtc_rdy),
         .n2_en_vtc_in                      (n2_en_vtc),
         .n2_pll_clk_in                     (n2_pll_clk_in),
         .n2_refclk_in                      (1'b0),
         .n23_riu_addr_in                   (n23_riu_addr_in),
         .n23_riu_clk_in                    (riu_clk),
         .n23_riu_nibble_sel_in             (n23_riu_nibble_sel_in),
         .n23_riu_wr_data_in                (n23_riu_wr_data_in),
         .n23_riu_wr_en_in                  (n23_riu_wr_en_in),
         .n23_riu_rd_data_out               (n23_riu_rd_data_out),
         .n23_riu_valid_out                 (n23_riu_valid_out),
         .n2_riu_addr_in                    (n2_riu_addr_in),
         .n2_riu_nibble_sel_in              (n2_riu_nibble_sel_in),
         .n2_riu_wr_data_in                 (n2_riu_wr_data_in),
         .n2_riu_wr_en_in                   (n2_riu_wr_en_in),
         .n2_riu_rd_data_out                (n2_riu_rd_data_out),
         .n2_riu_valid_out                  (n2_riu_valid_out),
         .n3_riu_addr_in                    (n3_riu_addr_in),
         .n3_riu_nibble_sel_in              (n3_riu_nibble_sel_in),
         .n3_riu_wr_data_in                 (n3_riu_wr_data_in),
         .n3_riu_wr_en_in                   (n3_riu_wr_en_in),
         .n3_riu_rd_data_out                (n3_riu_rd_data_out),
         .n3_riu_valid_out                  (n3_riu_valid_out),
         .n2_rx_bit_ctrl_in0                (n2_rx_bit_ctrl_in0),
         .n2_rx_bit_ctrl_in1                (n2_rx_bit_ctrl_in1),
         .n2_rx_bit_ctrl_in2                (n2_rx_bit_ctrl_in2),
         .n2_rx_bit_ctrl_in3                (n2_rx_bit_ctrl_in3),
         .n2_rx_bit_ctrl_in4                (n2_rx_bit_ctrl_in4),
         .n2_rx_bit_ctrl_in5                (n2_rx_bit_ctrl_in5),
         .n2_rx_bit_ctrl_in6                (40'd0),
         .n2_tbyte_in                       (n2_tbyte),
         .n2_tx_bit_ctrl_in0                (n2_tx_bit_ctrl_in0),
         .n2_tx_bit_ctrl_in1                (n2_tx_bit_ctrl_in1),
         .n2_tx_bit_ctrl_in2                (n2_tx_bit_ctrl_in2),
         .n2_tx_bit_ctrl_in3                (n2_tx_bit_ctrl_in3),
         .n2_tx_bit_ctrl_in4                (n2_tx_bit_ctrl_in4),
         .n2_tx_bit_ctrl_in5                (n2_tx_bit_ctrl_in5),
         .n2_tx_bit_ctrl_in6                (40'd0),
         .n2_tx_bit_ctrl_in_tri             (n2_tx_bit_ctrl_in_tri),
         .n3_dly_rdy_out                    (n3_dly_rdy),
         .n3_rx_bit_ctrl_out0               (n3_rx_bit_ctrl_out0),
         .n3_rx_bit_ctrl_out1               (n3_rx_bit_ctrl_out1),
         .n3_rx_bit_ctrl_out2               (n3_rx_bit_ctrl_out2),
         .n3_rx_bit_ctrl_out3               (n3_rx_bit_ctrl_out3),
         .n3_rx_bit_ctrl_out4               (n3_rx_bit_ctrl_out4),
         .n3_rx_bit_ctrl_out5               (n3_rx_bit_ctrl_out5),
         .n3_rx_bit_ctrl_out6               (n3_rx_bit_ctrl_out6),
         .n3_tx_bit_ctrl_out0               (n3_tx_bit_ctrl_out0),
         .n3_tx_bit_ctrl_out1               (n3_tx_bit_ctrl_out1),
         .n3_tx_bit_ctrl_out2               (n3_tx_bit_ctrl_out2),
         .n3_tx_bit_ctrl_out3               (n3_tx_bit_ctrl_out3),
         .n3_tx_bit_ctrl_out4               (n3_tx_bit_ctrl_out4),
         .n3_tx_bit_ctrl_out5               (n3_tx_bit_ctrl_out5),
         .n3_tx_bit_ctrl_out6               (n3_tx_bit_ctrl_out6),
         .n3_tx_bit_ctrl_out_tri            (n3_tx_bit_ctrl_out_tri),
         .n3_vtc_rdy_out                    (n3_vtc_rdy),
         .n3_en_vtc_in                      (n3_en_vtc),
         .n3_pll_clk_in                     (n3_pll_clk_in),
         .n3_refclk_in                      (1'b0),
         .n3_rx_bit_ctrl_in0                (n3_rx_bit_ctrl_in0),
         .n3_rx_bit_ctrl_in1                (n3_rx_bit_ctrl_in1),
         .n3_rx_bit_ctrl_in2                (n3_rx_bit_ctrl_in2),
         .n3_rx_bit_ctrl_in3                (n3_rx_bit_ctrl_in3),
         .n3_rx_bit_ctrl_in4                (n3_rx_bit_ctrl_in4),
         .n3_rx_bit_ctrl_in5                (n3_rx_bit_ctrl_in5),
         .n3_rx_bit_ctrl_in6                (n3_rx_bit_ctrl_in6),
         .n3_tbyte_in                       (n3_tbyte),
         .n3_tx_bit_ctrl_in0                (n3_tx_bit_ctrl_in0),
         .n3_tx_bit_ctrl_in1                (n3_tx_bit_ctrl_in1),
         .n3_tx_bit_ctrl_in2                (n3_tx_bit_ctrl_in2),
         .n3_tx_bit_ctrl_in3                (n3_tx_bit_ctrl_in3),
         .n3_tx_bit_ctrl_in4                (n3_tx_bit_ctrl_in4),
         .n3_tx_bit_ctrl_in5                (n3_tx_bit_ctrl_in5),
         .n3_tx_bit_ctrl_in6                (n3_tx_bit_ctrl_in6),
         .n3_tx_bit_ctrl_in_tri             (n3_tx_bit_ctrl_in_tri),
         .n4_dly_rdy_out                    (n4_dly_rdy),
         .n4_rx_bit_ctrl_out0               (n4_rx_bit_ctrl_out0),
         .n4_rx_bit_ctrl_out1               (n4_rx_bit_ctrl_out1),
         .n4_rx_bit_ctrl_out2               (n4_rx_bit_ctrl_out2),
         .n4_rx_bit_ctrl_out3               (n4_rx_bit_ctrl_out3),
         .n4_rx_bit_ctrl_out4               (n4_rx_bit_ctrl_out4),
         .n4_rx_bit_ctrl_out5               (n4_rx_bit_ctrl_out5),
         .n4_rx_bit_ctrl_out6               (n4_rx_bit_ctrl_out6),
         .n4_tx_bit_ctrl_out0               (n4_tx_bit_ctrl_out0),
         .n4_tx_bit_ctrl_out1               (n4_tx_bit_ctrl_out1),
         .n4_tx_bit_ctrl_out2               (n4_tx_bit_ctrl_out2),
         .n4_tx_bit_ctrl_out3               (n4_tx_bit_ctrl_out3),
         .n4_tx_bit_ctrl_out4               (n4_tx_bit_ctrl_out4),
         .n4_tx_bit_ctrl_out5               (n4_tx_bit_ctrl_out5),
         .n4_tx_bit_ctrl_out6               (n4_tx_bit_ctrl_out6),
         .n4_tx_bit_ctrl_out_tri            (n4_tx_bit_ctrl_out_tri),
         .n4_vtc_rdy_out                    (n4_vtc_rdy),
         .n4_en_vtc_in                      (n4_en_vtc),
         .n4_pll_clk_in                     (n4_pll_clk_in),
         .n4_refclk_in                      (1'b0),
         .n45_riu_addr_in                   (n45_riu_addr_in),
         .n45_riu_clk_in                    (riu_clk),
         .n45_riu_nibble_sel_in             (n45_riu_nibble_sel_in),
         .n45_riu_wr_data_in                (n45_riu_wr_data_in),
         .n45_riu_wr_en_in                  (n45_riu_wr_en_in),
         .n45_riu_rd_data_out               (n45_riu_rd_data_out),
         .n45_riu_valid_out                 (n45_riu_valid_out),
         .n4_riu_addr_in                    (n4_riu_addr_in),
         .n4_riu_nibble_sel_in              (n4_riu_nibble_sel_in),
         .n4_riu_wr_data_in                 (n4_riu_wr_data_in),
         .n4_riu_wr_en_in                   (n4_riu_wr_en_in),
         .n4_riu_rd_data_out                (n4_riu_rd_data_out),
         .n4_riu_valid_out                  (n4_riu_valid_out),
         .n5_riu_addr_in                    (n5_riu_addr_in),
         .n5_riu_nibble_sel_in              (n5_riu_nibble_sel_in),
         .n5_riu_wr_data_in                 (n5_riu_wr_data_in),
         .n5_riu_wr_en_in                   (n5_riu_wr_en_in),
         .n5_riu_rd_data_out                (n5_riu_rd_data_out),
         .n5_riu_valid_out                  (n5_riu_valid_out),
         .n4_rx_bit_ctrl_in0                (n4_rx_bit_ctrl_in0),
         .n4_rx_bit_ctrl_in1                (n4_rx_bit_ctrl_in1),
         .n4_rx_bit_ctrl_in2                (n4_rx_bit_ctrl_in2),
         .n4_rx_bit_ctrl_in3                (n4_rx_bit_ctrl_in3),
         .n4_rx_bit_ctrl_in4                (n4_rx_bit_ctrl_in4),
         .n4_rx_bit_ctrl_in5                (n4_rx_bit_ctrl_in5),
         .n4_rx_bit_ctrl_in6                (40'd0),
         .n4_tbyte_in                       (n4_tbyte),
         .n4_tx_bit_ctrl_in0                (n4_tx_bit_ctrl_in0),
         .n4_tx_bit_ctrl_in1                (n4_tx_bit_ctrl_in1),
         .n4_tx_bit_ctrl_in2                (n4_tx_bit_ctrl_in2),
         .n4_tx_bit_ctrl_in3                (n4_tx_bit_ctrl_in3),
         .n4_tx_bit_ctrl_in4                (n4_tx_bit_ctrl_in4),
         .n4_tx_bit_ctrl_in5                (n4_tx_bit_ctrl_in5),
         .n4_tx_bit_ctrl_in6                (40'd0),
         .n4_tx_bit_ctrl_in_tri             (n4_tx_bit_ctrl_in_tri),
         .n5_dly_rdy_out                    (n5_dly_rdy),
         .n5_rx_bit_ctrl_out0               (n5_rx_bit_ctrl_out0),
         .n5_rx_bit_ctrl_out1               (n5_rx_bit_ctrl_out1),
         .n5_rx_bit_ctrl_out2               (n5_rx_bit_ctrl_out2),
         .n5_rx_bit_ctrl_out3               (n5_rx_bit_ctrl_out3),
         .n5_rx_bit_ctrl_out4               (n5_rx_bit_ctrl_out4),
         .n5_rx_bit_ctrl_out5               (n5_rx_bit_ctrl_out5),
         .n5_rx_bit_ctrl_out6               (n5_rx_bit_ctrl_out6),
         .n5_tx_bit_ctrl_out0               (n5_tx_bit_ctrl_out0),
         .n5_tx_bit_ctrl_out1               (n5_tx_bit_ctrl_out1),
         .n5_tx_bit_ctrl_out2               (n5_tx_bit_ctrl_out2),
         .n5_tx_bit_ctrl_out3               (n5_tx_bit_ctrl_out3),
         .n5_tx_bit_ctrl_out4               (n5_tx_bit_ctrl_out4),
         .n5_tx_bit_ctrl_out5               (n5_tx_bit_ctrl_out5),
         .n5_tx_bit_ctrl_out6               (n5_tx_bit_ctrl_out6),
         .n5_tx_bit_ctrl_out_tri            (n5_tx_bit_ctrl_out_tri),
         .n5_vtc_rdy_out                    (n5_vtc_rdy),
         .n5_en_vtc_in                      (n5_en_vtc),
         .n5_pll_clk_in                     (n5_pll_clk_in),
         .n5_refclk_in                      (1'b0),
         .n5_rx_bit_ctrl_in0                (n5_rx_bit_ctrl_in0),
         .n5_rx_bit_ctrl_in1                (n5_rx_bit_ctrl_in1),
         .n5_rx_bit_ctrl_in2                (n5_rx_bit_ctrl_in2),
         .n5_rx_bit_ctrl_in3                (n5_rx_bit_ctrl_in3),
         .n5_rx_bit_ctrl_in4                (n5_rx_bit_ctrl_in4),
         .n5_rx_bit_ctrl_in5                (n5_rx_bit_ctrl_in5),
         .n5_rx_bit_ctrl_in6                (n5_rx_bit_ctrl_in6),
         .n5_tbyte_in                       (n5_tbyte),
         .n5_tx_bit_ctrl_in0                (n5_tx_bit_ctrl_in0),
         .n5_tx_bit_ctrl_in1                (n5_tx_bit_ctrl_in1),
         .n5_tx_bit_ctrl_in2                (n5_tx_bit_ctrl_in2),
         .n5_tx_bit_ctrl_in3                (n5_tx_bit_ctrl_in3),
         .n5_tx_bit_ctrl_in4                (n5_tx_bit_ctrl_in4),
         .n5_tx_bit_ctrl_in5                (n5_tx_bit_ctrl_in5),
         .n5_tx_bit_ctrl_in6                (n5_tx_bit_ctrl_in6),
         .n5_tx_bit_ctrl_in_tri             (n5_tx_bit_ctrl_in_tri),
         .n6_dly_rdy_out                    (n6_dly_rdy),
         .n6_rx_bit_ctrl_out0               (n6_rx_bit_ctrl_out0),
         .n6_rx_bit_ctrl_out1               (n6_rx_bit_ctrl_out1),
         .n6_rx_bit_ctrl_out2               (n6_rx_bit_ctrl_out2),
         .n6_rx_bit_ctrl_out3               (n6_rx_bit_ctrl_out3),
         .n6_rx_bit_ctrl_out4               (n6_rx_bit_ctrl_out4),
         .n6_rx_bit_ctrl_out5               (n6_rx_bit_ctrl_out5),
         .n6_rx_bit_ctrl_out6               (n6_rx_bit_ctrl_out6),
         .n6_tx_bit_ctrl_out0               (n6_tx_bit_ctrl_out0),
         .n6_tx_bit_ctrl_out1               (n6_tx_bit_ctrl_out1),
         .n6_tx_bit_ctrl_out2               (n6_tx_bit_ctrl_out2),
         .n6_tx_bit_ctrl_out3               (n6_tx_bit_ctrl_out3),
         .n6_tx_bit_ctrl_out4               (n6_tx_bit_ctrl_out4),
         .n6_tx_bit_ctrl_out5               (n6_tx_bit_ctrl_out5),
         .n6_tx_bit_ctrl_out6               (n6_tx_bit_ctrl_out6),
         .n6_tx_bit_ctrl_out_tri            (n6_tx_bit_ctrl_out_tri),
         .n6_vtc_rdy_out                    (n6_vtc_rdy),
         .n6_en_vtc_in                      (n6_en_vtc),
         .n6_pll_clk_in                     (n6_pll_clk_in),
         .n6_refclk_in                      (1'b0),
         .n67_riu_addr_in                   (n67_riu_addr_in),
         .n67_riu_clk_in                    (riu_clk),
         .n67_riu_nibble_sel_in             (n67_riu_nibble_sel_in),
         .n67_riu_wr_data_in                (n67_riu_wr_data_in),
         .n67_riu_wr_en_in                  (n67_riu_wr_en_in),
         .n67_riu_rd_data_out               (n67_riu_rd_data_out),
         .n67_riu_valid_out                 (n67_riu_valid_out),
         .n6_riu_addr_in                    (n6_riu_addr_in),
         .n6_riu_nibble_sel_in              (n6_riu_nibble_sel_in),
         .n6_riu_wr_data_in                 (n6_riu_wr_data_in),
         .n6_riu_wr_en_in                   (n6_riu_wr_en_in),
         .n6_riu_rd_data_out                (n6_riu_rd_data_out),
         .n6_riu_valid_out                  (n6_riu_valid_out),
         .n7_riu_addr_in                    (n7_riu_addr_in),
         .n7_riu_nibble_sel_in              (n7_riu_nibble_sel_in),
         .n7_riu_wr_data_in                 (n7_riu_wr_data_in),
         .n7_riu_wr_en_in                   (n7_riu_wr_en_in),
         .n7_riu_rd_data_out                (n7_riu_rd_data_out),
         .n7_riu_valid_out                  (n7_riu_valid_out),
         .n6_rx_bit_ctrl_in0                (n6_rx_bit_ctrl_in0),
         .n6_rx_bit_ctrl_in1                (n6_rx_bit_ctrl_in1),
         .n6_rx_bit_ctrl_in2                (n6_rx_bit_ctrl_in2),
         .n6_rx_bit_ctrl_in3                (n6_rx_bit_ctrl_in3),
         .n6_rx_bit_ctrl_in4                (n6_rx_bit_ctrl_in4),
         .n6_rx_bit_ctrl_in5                (n6_rx_bit_ctrl_in5),
         .n6_rx_bit_ctrl_in6                (40'd0),
         .n6_tbyte_in                       (n6_tbyte),
         .n6_tx_bit_ctrl_in0                (n6_tx_bit_ctrl_in0),
         .n6_tx_bit_ctrl_in1                (n6_tx_bit_ctrl_in1),
         .n6_tx_bit_ctrl_in2                (n6_tx_bit_ctrl_in2),
         .n6_tx_bit_ctrl_in3                (n6_tx_bit_ctrl_in3),
         .n6_tx_bit_ctrl_in4                (n6_tx_bit_ctrl_in4),
         .n6_tx_bit_ctrl_in5                (n6_tx_bit_ctrl_in5),
         .n6_tx_bit_ctrl_in6                (40'd0),
         .n6_tx_bit_ctrl_in_tri             (n6_tx_bit_ctrl_in_tri),
         .n7_dly_rdy_out                    (n7_dly_rdy),
         .n7_rx_bit_ctrl_out0               (n7_rx_bit_ctrl_out0),
         .n7_rx_bit_ctrl_out1               (n7_rx_bit_ctrl_out1),
         .n7_rx_bit_ctrl_out2               (n7_rx_bit_ctrl_out2),
         .n7_rx_bit_ctrl_out3               (n7_rx_bit_ctrl_out3),
         .n7_rx_bit_ctrl_out4               (n7_rx_bit_ctrl_out4),
         .n7_rx_bit_ctrl_out5               (n7_rx_bit_ctrl_out5),
         .n7_rx_bit_ctrl_out6               (n7_rx_bit_ctrl_out6),
         .n7_tx_bit_ctrl_out0               (n7_tx_bit_ctrl_out0),
         .n7_tx_bit_ctrl_out1               (n7_tx_bit_ctrl_out1),
         .n7_tx_bit_ctrl_out2               (n7_tx_bit_ctrl_out2),
         .n7_tx_bit_ctrl_out3               (n7_tx_bit_ctrl_out3),
         .n7_tx_bit_ctrl_out4               (n7_tx_bit_ctrl_out4),
         .n7_tx_bit_ctrl_out5               (n7_tx_bit_ctrl_out5),
         .n7_tx_bit_ctrl_out6               (n7_tx_bit_ctrl_out6),
         .n7_tx_bit_ctrl_out_tri            (n7_tx_bit_ctrl_out_tri),
         .n7_vtc_rdy_out                    (n7_vtc_rdy),
         .n7_en_vtc_in                      (n7_en_vtc),
         .n7_pll_clk_in                     (n7_pll_clk_in),
         .n7_refclk_in                      (1'b0),
         .n7_rx_bit_ctrl_in0                (n7_rx_bit_ctrl_in0),
         .n7_rx_bit_ctrl_in1                (n7_rx_bit_ctrl_in1),
         .n7_rx_bit_ctrl_in2                (n7_rx_bit_ctrl_in2),
         .n7_rx_bit_ctrl_in3                (n7_rx_bit_ctrl_in3),
         .n7_rx_bit_ctrl_in4                (n7_rx_bit_ctrl_in4),
         .n7_rx_bit_ctrl_in5                (n7_rx_bit_ctrl_in5),
         .n7_rx_bit_ctrl_in6                (n7_rx_bit_ctrl_in6),
         .n7_tbyte_in                       (n7_tbyte),
         .n7_tx_bit_ctrl_in0                (n7_tx_bit_ctrl_in0),
         .n7_tx_bit_ctrl_in1                (n7_tx_bit_ctrl_in1),
         .n7_tx_bit_ctrl_in2                (n7_tx_bit_ctrl_in2),
         .n7_tx_bit_ctrl_in3                (n7_tx_bit_ctrl_in3),
         .n7_tx_bit_ctrl_in4                (n7_tx_bit_ctrl_in4),
         .n7_tx_bit_ctrl_in5                (n7_tx_bit_ctrl_in5),
         .n7_tx_bit_ctrl_in6                (n7_tx_bit_ctrl_in6),
         .n7_tx_bit_ctrl_in_tri             (n7_tx_bit_ctrl_in_tri),
         .n0_phy_rden_in                    (n0_phy_rden_in),
         .n1_phy_rden_in                    (n1_phy_rden_in),
         .n2_phy_rden_in                    (n2_phy_rden_in),
         .n3_phy_rden_in                    (n3_phy_rden_in),
         .n4_phy_rden_in                    (n4_phy_rden_in),
         .n5_phy_rden_in                    (n5_phy_rden_in),
         .n6_phy_rden_in                    (n6_phy_rden_in),
         .n7_phy_rden_in                    (n7_phy_rden_in)
);


//****************************************************************************
//           Instantiation of CLK_RST_TOP Module
//****************************************************************************

 high_speed_selectio_wiz_v3_6_0_clk_rst_top #(
    .C_SIM_DEVICE           (C_SIM_DEVICE), 
    .C_SIM_VERSION          (C_SIM_VERSION),
    .C_DEVICE               (C_DEVICE),
    .C_USE_RIU_CLK_FROM_PLL (C_USE_RIU_CLK_FROM_PLL), 
    .C_SERIALIZATION_FACTOR (C_SERIALIZATION_FACTOR),
    .C_EN_MULTI_INTF        (C_EN_MULTI_INTF),
    .C_PLL_SHARE            (C_PLL_SHARE),
    .C_PLL0_DIV_FACTOR      (C_PLL0_DIV_FACTOR),
    .C_PLL1_DIV_FACTOR      (C_PLL1_DIV_FACTOR),
    .C_PLL0_PHY_MODE        (C_PLL0_CLKOUTPHY_MODE),
    .C_PLL1_PHY_MODE        (C_PLL1_CLKOUTPHY_MODE),
    .C_CLKIN_PERIOD         (C_CLKIN_PERIOD), 
    .C_PLL0_M               (C_PLL0_CLKFBOUT_MULT),
    .C_PLL0_D               (C_PLL0_DIVCLK_DIVIDE),
    .C_PLL0_O1              (C_PLL0_CLKOUT1_DIVIDE),
    .C_PLL1_M               (C_PLL1_CLKFBOUT_MULT),
    .C_PLL1_D               (C_PLL1_DIVCLK_DIVIDE),
    .C_EN_TX                (C_EN_TX),
    .C_EN_RX                (C_EN_RX),
    .C_SERIAL_MODE          (C_SERIAL_MODE) ,
    .C_PLL0_CLK0_PHASE      (C_PLL0_CLK0_PHASE),
    .C_PLL0_CLK1_PHASE      (C_PLL0_CLK1_PHASE),
    .C_PLL1_CLK0_PHASE      (C_PLL1_CLK0_PHASE),
    .C_PLL1_CLK1_PHASE      (C_PLL1_CLK1_PHASE),    
    .C_PLL0_RX_EXTERNAL_CLK_TO_DATA (C_PLL0_RX_EXTERNAL_CLK_TO_DATA),
    .USE_PLL1               (USE_PLL1)
 )
 clk_rst_top_inst
 (
       .daddr                      (daddr),
       .dclk                       (dclk),
       .den                        (den),
       .di                         (di),
       .do_out                     (do_out),
       .drdy                       (drdy),
       .dwe                        (dwe),
       .clk_in                     (clk_from_buf),
       .riu_clk_in                 (riu_clk),
       .rst_in                     (rst_in),
       .multi_intf_lock_in         (multi_intf_lock_in),
       .all_bsc_dly_rdy_in         (all_bsc_dly_rdy_in),
       .all_bsc_vtc_rdy_in         (all_bsc_vtc_rdy_in),
       .shared_pll0_clkout0_in     (shared_pll0_clkout0_in),
       .shared_pll1_clkout0_in     (shared_pll1_clkout0_in),
       .shared_pll0_locked_in      (shared_pll0_locked_in),
       .shared_pll1_locked_in      (shared_pll1_locked_in),
       .bs_rst_dphy_in             (bs_rst_dphy_in),
       .pll0_clkoutphy_out         (pll0_clkoutphy),
       .pll0_clkout0_out           (pll0_clkout0),
       .pll0_clkout1_out           (pll0_clkout1),
       .pll1_clkoutphy_out         (pll1_clkoutphy),
       .pll1_clkout0_out           (pll1_clkout0),
       .pll0_locked_out            (pll0_locked_out),
       .pll1_locked_out            (pll1_locked_out),
       .rst_dly_out                (rst_dly),
       .bs_rst_out                 (bs_rst),
       .bsctrl_rst_out             (bsctrl_rst),
       .bsc_en_vtc_out             (bsc_en_vtc),
       .rst_seq_done_out           (rst_seq_done)

);

//****************************************************************************
//           Instantiation of IO_BUF_TOP Module
//****************************************************************************

generate if (C_TEMPLATE == 0) begin : GEN_IOBUF
 high_speed_selectio_wiz_v3_6_0_iobuf_top #(
     .C_NUM_IO                (C_NUM_IO),
     .C_CLK_SOURCE            (C_PLL0_CLK_SOURCE),
     .C_CLKIN_DIFF_EN         (C_CLKIN_DIFF_EN),
     .C_PLL_SHARE             (C_PLL_SHARE),
     .C_DIFF_EN               (C_DIFF_EN),            // Indicates whether the pin is differential or single ended
     .C_TX_BITSLICE_EN        (C_TX_BITSLICE_EN),     // Bitslice # for which TX bitslice should be enabled 
     .C_RX_PIN_EN             (C_RX_PIN_EN),          // Bitslice # for which RX bitslice should be enabled 
     .C_BIDIR_BITSLICE_EN     (C_BIDIR_BITSLICE_EN),        // Bitslice # for which Bidir bitslice should be enabled 
     .C_ENABLE_TX_TRI         (C_EN_TX_TRI)
 )
 iobuf_top_inst
 (  
        .clkin_from_pins_p     (clkin_from_pins_p),    //Differential input clock from pins
        .clkin_from_pins_n     (clkin_from_pins_n),
        .clkin_from_pins       (clkin_from_pins),      //Single ended input clock from pins
        .bs_to_buf_data_in     (bs_to_buf_data),       //Serialised input from TX or BiDir Bitslices
        .bs_to_buf_t_in        (bs_to_buf_t),          //3-state input from BiDir Bitslices
        .clk_from_buf_out      (clk_from_buf),         //clock output from IBUF
        .data_to_bs_out        (data_to_bs),           //Data from buffers to Rx or BiDir Bitslices
        .data_to_bs_n_out      (data_to_bs_n),         //Data from buffers to Rx or BiDir Bitslices
        .data_to_pins          (data_to_pins),         //Data ouput from buffers to pins
        .data_from_pins        (data_from_pins),       //data input to buffers from pins
        .data_to_from_pins     ({   
                              data_to_from_pin51,               
                              data_to_from_pin50,               
                              data_to_from_pin49,               
                              data_to_from_pin48,               
                              data_to_from_pin47,               
                              data_to_from_pin46,               
                              data_to_from_pin45,               
                              data_to_from_pin44,               
                              data_to_from_pin43,               
                              data_to_from_pin42,               
                              data_to_from_pin41,               
                              data_to_from_pin40,               
                              data_to_from_pin39,               
                              data_to_from_pin38,               
                              data_to_from_pin37,               
                              data_to_from_pin36,               
                              data_to_from_pin35,               
                              data_to_from_pin34,               
                              data_to_from_pin33,               
                              data_to_from_pin32,               
                              data_to_from_pin31,               
                              data_to_from_pin30,               
                              data_to_from_pin29,               
                              data_to_from_pin28,               
                              data_to_from_pin27,               
                              data_to_from_pin26,               
                              data_to_from_pin25,               
                              data_to_from_pin24,               
                              data_to_from_pin23,               
                              data_to_from_pin22,               
                              data_to_from_pin21,               
                              data_to_from_pin20,               
                              data_to_from_pin19,               
                              data_to_from_pin18,               
                              data_to_from_pin17,               
                              data_to_from_pin16,               
                              data_to_from_pin15,               
                              data_to_from_pin14,               
                              data_to_from_pin13,               
                              data_to_from_pin12,               
                              data_to_from_pin11,               
                              data_to_from_pin10,               
                              data_to_from_pin9,               
                              data_to_from_pin8,               
                              data_to_from_pin7,               
                              data_to_from_pin6,               
                              data_to_from_pin5,               
                              data_to_from_pin4,               
                              data_to_from_pin3,               
                              data_to_from_pin2,               
                              data_to_from_pin1,               
                              data_to_from_pin0               
                         })
 );
 end
 else if (C_TEMPLATE == 1) begin
 bd_91b0_phy_0_hssio_rx_mipi_iobuf_rx #(
     .C_NUM_IO                (C_NUM_IO),
     .C_TEMPLATE              (C_TEMPLATE),
     .C_CLK_SOURCE            (C_PLL0_CLK_SOURCE),
     .C_CLKIN_DIFF_EN         (C_CLKIN_DIFF_EN),
     .C_DIFF_EN               (C_DIFF_EN),            // Indicates whether the pin is differential or single ended
     .C_TX_BITSLICE_EN        (C_TX_BITSLICE_EN),     // Bitslice # for which TX bitslice should be enabled 
     .C_RX_PIN_EN             (C_RX_PIN_EN),          // Bitslice # for which RX bitslice should be enabled 
     .C_DATA_PIN_EN           (C_DATA_PIN_EN),
     .C_BIDIR_BITSLICE_EN     (C_BIDIR_BITSLICE_EN)        // Bitslice # for which Bidir bitslice should be enabled 

 )
 iobuf_top_inst
 (  
        .lptx_t                (lptx_t),
        .lptx_i_p              (lptx_i_p),
        .lptx_i_n              (lptx_i_n),
        .hs_tx_t               (tx_bs_t_out),
        .hs_rx_disable         (hs_rx_disable),
        .lp_rx_disable         (lp_rx_disable),
        .lp_rx_o_p             (lp_rx_o_p),
        .lp_rx_o_n             (lp_rx_o_n),
        .clkin_from_pins_p     (clkin_from_pins_p),    //Differential input clock from pins
        .clkin_from_pins_n     (clkin_from_pins_n),
        .clkin_from_pins       (clkin_from_pins),      //Single ended input clock from pins
        .bs_to_buf_data_in     (bs_to_buf_data),       //Serialised input from TX or BiDir Bitslices
        .bs_to_buf_t_in        (bs_to_buf_t),          //3-state input from BiDir Bitslices
        .clk_from_buf_out      (clk_from_buf),         //clock output from IBUF
        .data_to_bs_out        (data_to_bs),           //Data from buffers to Rx or BiDir Bitslices
        .data_to_bs_n_out      (data_to_bs_n),         //Data from buffers to Rx or BiDir Bitslices
        .data_to_pins          (data_to_pins),         //Data ouput from buffers to pins
        .data_from_pins        (data_from_pins),       //data input to buffers from pins
        .data_to_from_pins     ({   
                              data_to_from_pin51,               
                              data_to_from_pin50,               
                              data_to_from_pin49,               
                              data_to_from_pin48,               
                              data_to_from_pin47,               
                              data_to_from_pin46,               
                              data_to_from_pin45,               
                              data_to_from_pin44,               
                              data_to_from_pin43,               
                              data_to_from_pin42,               
                              data_to_from_pin41,               
                              data_to_from_pin40,               
                              data_to_from_pin39,               
                              data_to_from_pin38,               
                              data_to_from_pin37,               
                              data_to_from_pin36,               
                              data_to_from_pin35,               
                              data_to_from_pin34,               
                              data_to_from_pin33,               
                              data_to_from_pin32,               
                              data_to_from_pin31,               
                              data_to_from_pin30,               
                              data_to_from_pin29,               
                              data_to_from_pin28,               
                              data_to_from_pin27,               
                              data_to_from_pin26,               
                              data_to_from_pin25,               
                              data_to_from_pin24,               
                              data_to_from_pin23,               
                              data_to_from_pin22,               
                              data_to_from_pin21,               
                              data_to_from_pin20,               
                              data_to_from_pin19,               
                              data_to_from_pin18,               
                              data_to_from_pin17,               
                              data_to_from_pin16,               
                              data_to_from_pin15,               
                              data_to_from_pin14,               
                              data_to_from_pin13,               
                              data_to_from_pin12,               
                              data_to_from_pin11,               
                              data_to_from_pin10,               
                              data_to_from_pin9,               
                              data_to_from_pin8,               
                              data_to_from_pin7,               
                              data_to_from_pin6,               
                              data_to_from_pin5,               
                              data_to_from_pin4,               
                              data_to_from_pin3,               
                              data_to_from_pin2,               
                              data_to_from_pin1,               
                              data_to_from_pin0               
                         })
 );
 end
 else begin
 bd_91b0_phy_0_hssio_rx_mipi_iobuf_rx #(
     .C_NUM_IO                (C_NUM_IO),
     .C_TEMPLATE              (C_TEMPLATE),
     .C_CLK_SOURCE            (C_PLL0_CLK_SOURCE),
     .C_CLKIN_DIFF_EN         (C_CLKIN_DIFF_EN),
     .C_DIFF_EN               (C_DIFF_EN),            // Indicates whether the pin is differential or single ended
     .C_TX_BITSLICE_EN        (C_TX_BITSLICE_EN),     // Bitslice # for which TX bitslice should be enabled 
     .C_RX_PIN_EN             (C_RX_PIN_EN),          // Bitslice # for which RX bitslice should be enabled 
     .C_DATA_PIN_EN           (C_DATA_PIN_EN),
     .C_BIDIR_BITSLICE_EN     (C_BIDIR_BITSLICE_EN)        // Bitslice # for which Bidir bitslice should be enabled 

 )
 iobuf_top_inst
 (  
        .lptx_t                (lptx_t),
        .lptx_i_p              (lptx_i_p),
        .lptx_i_n              (lptx_i_n),
        .hs_tx_t               (tx_bs_t_out),
        .hs_rx_disable         (hs_rx_disable),
        .lp_rx_disable         (lp_rx_disable),
        .lp_rx_o_p             (lp_rx_o_p),
        .lp_rx_o_n             (lp_rx_o_n),
        .clkin_from_pins_p     (clkin_from_pins_p),    //Differential input clock from pins
        .clkin_from_pins_n     (clkin_from_pins_n),
        .clkin_from_pins       (clkin_from_pins),      //Single ended input clock from pins
        .bs_to_buf_data_in     (bs_to_buf_data),       //Serialised input from TX or BiDir Bitslices
        .bs_to_buf_t_in        (bs_to_buf_t),          //3-state input from BiDir Bitslices
        .clk_from_buf_out      (clk_from_buf),         //clock output from IBUF
        .data_to_bs_out        (data_to_bs),           //Data from buffers to Rx or BiDir Bitslices
        .data_to_bs_n_out      (data_to_bs_n),         //Data from buffers to Rx or BiDir Bitslices
        .data_to_pins          (data_to_pins),         //Data ouput from buffers to pins
        .data_from_pins        (data_from_pins),       //data input to buffers from pins
        .data_to_from_pins     ({   
                              data_to_from_pin51,               
                              data_to_from_pin50,               
                              data_to_from_pin49,               
                              data_to_from_pin48,               
                              data_to_from_pin47,               
                              data_to_from_pin46,               
                              data_to_from_pin45,               
                              data_to_from_pin44,               
                              data_to_from_pin43,               
                              data_to_from_pin42,               
                              data_to_from_pin41,               
                              data_to_from_pin40,               
                              data_to_from_pin39,               
                              data_to_from_pin38,               
                              data_to_from_pin37,               
                              data_to_from_pin36,               
                              data_to_from_pin35,               
                              data_to_from_pin34,               
                              data_to_from_pin33,               
                              data_to_from_pin32,               
                              data_to_from_pin31,               
                              data_to_from_pin30,               
                              data_to_from_pin29,               
                              data_to_from_pin28,               
                              data_to_from_pin27,               
                              data_to_from_pin26,               
                              data_to_from_pin25,               
                              data_to_from_pin24,               
                              data_to_from_pin23,               
                              data_to_from_pin22,               
                              data_to_from_pin21,               
                              data_to_from_pin20,               
                              data_to_from_pin19,               
                              data_to_from_pin18,               
                              data_to_from_pin17,               
                              data_to_from_pin16,               
                              data_to_from_pin15,               
                              data_to_from_pin14,               
                              data_to_from_pin13,               
                              data_to_from_pin12,               
                              data_to_from_pin11,               
                              data_to_from_pin10,               
                              data_to_from_pin9,               
                              data_to_from_pin8,               
                              data_to_from_pin7,               
                              data_to_from_pin6,               
                              data_to_from_pin5,               
                              data_to_from_pin4,               
                              data_to_from_pin3,               
                              data_to_from_pin2,               
                              data_to_from_pin1,               
                              data_to_from_pin0               
                         })
 );
 end 
 endgenerate
   //BITSLICE_CTRL COnnections

   //If Rx is in Serial Mode, Tx uses PLL1.
   //Rx and Tx cannot be enabled in the same nibble

   assign pll0_clkoutphy_int = (C_PLL_SHARE == 0) ? pll0_clkoutphy : shared_pll0_clkoutphy_in;
   assign pll1_clkoutphy_int = (C_PLL_SHARE == 0) ? pll1_clkoutphy : shared_pll1_clkoutphy_in;

   assign shared_pll0_clkoutphy_out = (C_PLL_SHARE == 0) ? pll0_clkoutphy : 1'b0;
   assign shared_pll1_clkoutphy_out = (C_PLL_SHARE == 0) ? pll1_clkoutphy : 1'b0;

   assign n0_pll_clk_in = (C_EN_BSC0 == 0) ? 1'b0 :  ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB0 == 1'b1) && (C_EN_RX == 1)) ? pll1_clkoutphy_int : pll0_clkoutphy_int;
   assign n1_pll_clk_in = (C_EN_BSC1 == 0) ? 1'b0 :  ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB1 == 1'b1) && (C_EN_RX == 1)) ? pll1_clkoutphy_int : pll0_clkoutphy_int;
   assign n2_pll_clk_in = (C_EN_BSC2 == 0) ? 1'b0 :  ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB2 == 1'b1) && (C_EN_RX == 1)) ? pll1_clkoutphy_int : pll0_clkoutphy_int;
   assign n3_pll_clk_in = (C_EN_BSC3 == 0) ? 1'b0 :  ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB3 == 1'b1) && (C_EN_RX == 1)) ? pll1_clkoutphy_int : pll0_clkoutphy_int;
   assign n4_pll_clk_in = (C_EN_BSC4 == 0) ? 1'b0 :  ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB4 == 1'b1) && (C_EN_RX == 1)) ? pll1_clkoutphy_int : pll0_clkoutphy_int;
   assign n5_pll_clk_in = (C_EN_BSC5 == 0) ? 1'b0 :  ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB5 == 1'b1) && (C_EN_RX == 1)) ? pll1_clkoutphy_int : pll0_clkoutphy_int;
   assign n6_pll_clk_in = (C_EN_BSC6 == 0) ? 1'b0 :  ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB6 == 1'b1) && (C_EN_RX == 1)) ? pll1_clkoutphy_int : pll0_clkoutphy_int;
   assign n7_pll_clk_in = (C_EN_BSC7 == 0) ? 1'b0 :  ((C_SERIAL_MODE == "TRUE") && (C_TX_IN_NIB7 == 1'b1) && (C_EN_RX == 1)) ? pll1_clkoutphy_int : pll0_clkoutphy_int;


   assign n0_en_vtc          = (C_EN_BSC0 == 0 || C_PLL0_RX_EXTERNAL_CLK_TO_DATA == 2) ? 1'b0 : !rst_seq_done ? bsc_en_vtc :  n0_en_vtc_in;
   assign n1_en_vtc          = (C_EN_BSC1 == 0 || C_PLL0_RX_EXTERNAL_CLK_TO_DATA == 2) ? 1'b0 : !rst_seq_done ? bsc_en_vtc :  n1_en_vtc_in;
   assign n2_en_vtc          = (C_EN_BSC2 == 0 || C_PLL0_RX_EXTERNAL_CLK_TO_DATA == 2) ? 1'b0 : !rst_seq_done ? bsc_en_vtc :  n2_en_vtc_in;
   assign n3_en_vtc          = (C_EN_BSC3 == 0 || C_PLL0_RX_EXTERNAL_CLK_TO_DATA == 2) ? 1'b0 : !rst_seq_done ? bsc_en_vtc :  n3_en_vtc_in;
   assign n4_en_vtc          = (C_EN_BSC4 == 0 || C_PLL0_RX_EXTERNAL_CLK_TO_DATA == 2) ? 1'b0 : !rst_seq_done ? bsc_en_vtc :  n4_en_vtc_in;
   assign n5_en_vtc          = (C_EN_BSC5 == 0 || C_PLL0_RX_EXTERNAL_CLK_TO_DATA == 2) ? 1'b0 : !rst_seq_done ? bsc_en_vtc :  n5_en_vtc_in;
   assign n6_en_vtc          = (C_EN_BSC6 == 0 || C_PLL0_RX_EXTERNAL_CLK_TO_DATA == 2) ? 1'b0 : !rst_seq_done ? bsc_en_vtc :  n6_en_vtc_in;
   assign n7_en_vtc          = (C_EN_BSC7 == 0 || C_PLL0_RX_EXTERNAL_CLK_TO_DATA == 2) ? 1'b0 : !rst_seq_done ? bsc_en_vtc :  n7_en_vtc_in;

   assign n0_tbyte           = (C_EN_BSC0 == 1) ? n0_tbyte_d : 4'b0000;
   assign n1_tbyte           = (C_EN_BSC1 == 1) ? n1_tbyte_d : 4'b0000;
   assign n2_tbyte           = (C_EN_BSC2 == 1) ? n2_tbyte_d : 4'b0000;
   assign n3_tbyte           = (C_EN_BSC3 == 1) ? n3_tbyte_d : 4'b0000;
   assign n4_tbyte           = (C_EN_BSC4 == 1) ? n4_tbyte_d : 4'b0000;
   assign n5_tbyte           = (C_EN_BSC5 == 1) ? n5_tbyte_d : 4'b0000;
   assign n6_tbyte           = (C_EN_BSC6 == 1) ? n6_tbyte_d : 4'b0000;
   assign n7_tbyte           = (C_EN_BSC7 == 1) ? n7_tbyte_d : 4'b0000;

generate
  if(C_EN_MULTI_INTF == 1'b1 ) begin
     always @(posedge app_clk)
     begin
        if( C_TX_IN_NIB0 == 1'b1 && !rst_seq_done_app_clk_sync)
          n0_tbyte_d  <= 4'b0000;
        else
         n0_tbyte_d   <=  n0_tbyte_in;
     end //always
  end
  else begin
  if(C_NIB0_PLL1 == 1'b0) begin : GEN_NIB0_TBYTE
     always @(posedge pll0_clkout0_int)
     begin
        if( C_TX_IN_NIB0 == 1'b1 && !rst_seq_done_pll0_sync)
          n0_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB0 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n0_tbyte_d  <= n0_tbyte_in;
        else if( C_TX_IN_NIB0 == 1'b1 && rst_seq_done_pll0_sync )
          n0_tbyte_d  <= 4'b1111;
        else
         n0_tbyte_d   <=  n0_tbyte_in;
     end //always
  end
  else begin
     always @(posedge pll1_clkout0_int)
     begin
        if( C_TX_IN_NIB0 == 1'b1 && !rst_seq_done_pll0_sync)
          n0_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB0 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n0_tbyte_d  <= n0_tbyte_in;
        else if( C_TX_IN_NIB0 == 1'b1 && rst_seq_done_pll0_sync )
          n0_tbyte_d  <= 4'b1111;
        else
         n0_tbyte_d   <=  n0_tbyte_in;
     end //always
  end
  end
endgenerate

generate
  if(C_EN_MULTI_INTF == 1'b1 ) begin
     always @(posedge app_clk)
     begin
        if( C_TX_IN_NIB1 == 1'b1 && !rst_seq_done_app_clk_sync)
          n1_tbyte_d  <= 4'b0000;
        else
         n1_tbyte_d   <=  n1_tbyte_in;
     end //always
  end
  else begin
  if(C_NIB1_PLL1 == 1'b0) begin : GEN_NIB1_TBYTE
     always @(posedge pll0_clkout0_int)
     begin
        if( C_TX_IN_NIB1 == 1'b1 && !rst_seq_done_pll0_sync)
          n1_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB1 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n1_tbyte_d  <= n1_tbyte_in;
        else if( C_TX_IN_NIB1 == 1'b1 && rst_seq_done_pll0_sync )
          n1_tbyte_d  <= 4'b1111;
        else
         n1_tbyte_d   <=  n1_tbyte_in;
     end //always
  end
  else begin
     always @(posedge pll1_clkout0_int)
     begin
        if( C_TX_IN_NIB1 == 1'b1 && !rst_seq_done_pll0_sync)
          n1_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB1 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n1_tbyte_d  <= n1_tbyte_in;
        else if( C_TX_IN_NIB1 == 1'b1 && rst_seq_done_pll0_sync )
          n1_tbyte_d  <= 4'b1111;
        else
         n1_tbyte_d   <=  n1_tbyte_in;
     end //always
  end
 end
endgenerate


generate
  if(C_EN_MULTI_INTF == 1'b1 ) begin
     always @(posedge app_clk)
     begin
        if( C_TX_IN_NIB2 == 1'b1 && !rst_seq_done_app_clk_sync)
          n2_tbyte_d  <= 4'b0000;
        else
         n2_tbyte_d   <=  n2_tbyte_in;
     end //always
  end
  else begin

  if(C_NIB2_PLL1 == 1'b0) begin : GEN_NIB2_TBYTE
     always @(posedge pll0_clkout0_int)
     begin
        if( C_TX_IN_NIB2 == 1'b1 && !rst_seq_done_pll0_sync)
          n2_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB2 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n2_tbyte_d  <= n2_tbyte_in;
        else if( C_TX_IN_NIB2 == 1'b1 && rst_seq_done_pll0_sync )
          n2_tbyte_d  <= 4'b1111;
        else
         n2_tbyte_d   <=  n2_tbyte_in;
     end //always
  end
  else begin
     always @(posedge pll1_clkout0_int)
     begin
        if( C_TX_IN_NIB2 == 1'b1 && !rst_seq_done_pll0_sync)
          n2_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB2 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n2_tbyte_d  <= n2_tbyte_in;
        else if( C_TX_IN_NIB2 == 1'b1 && rst_seq_done_pll0_sync )
          n2_tbyte_d  <= 4'b1111;
        else
         n2_tbyte_d   <=  n2_tbyte_in;
     end //always
  end
end
endgenerate

generate
  if(C_EN_MULTI_INTF == 1'b1 ) begin
     always @(posedge app_clk)
     begin
        if( C_TX_IN_NIB3 == 1'b1 && !rst_seq_done_app_clk_sync)
          n3_tbyte_d  <= 4'b0000;
        else
         n3_tbyte_d   <=  n3_tbyte_in;
     end //always
  end
  else begin

  if(C_NIB3_PLL1 == 1'b0) begin : GEN_NIB3_TBYTE
     always @(posedge pll0_clkout0_int)
     begin
        if( C_TX_IN_NIB3 == 1'b1 && !rst_seq_done_pll0_sync)
          n3_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB3 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n3_tbyte_d  <= n3_tbyte_in;
        else if( C_TX_IN_NIB3 == 1'b1 && rst_seq_done_pll0_sync )
          n3_tbyte_d  <= 4'b1111;
        else
         n3_tbyte_d   <=  n3_tbyte_in;
     end //always
  end
  else begin
     always @(posedge pll1_clkout0_int)
     begin
        if( C_TX_IN_NIB3 == 1'b1 && !rst_seq_done_pll0_sync)
          n3_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB3 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n3_tbyte_d  <= n3_tbyte_in;
        else if( C_TX_IN_NIB3 == 1'b1 && rst_seq_done_pll0_sync )
          n3_tbyte_d  <= 4'b1111;
        else
         n3_tbyte_d   <=  n3_tbyte_in;
     end //always
  end
end
endgenerate


generate
  if(C_EN_MULTI_INTF == 1'b1 ) begin
     always @(posedge app_clk)
     begin
        if( C_TX_IN_NIB4 == 1'b1 && !rst_seq_done_app_clk_sync)
          n4_tbyte_d  <= 4'b0000;
        else
         n4_tbyte_d   <=  n4_tbyte_in;
     end //always
  end
  else begin

  if(C_NIB4_PLL1 == 1'b0) begin : GEN_NIB4_TBYTE
     always @(posedge pll0_clkout0_int)
     begin
        if( C_TX_IN_NIB4 == 1'b1 && !rst_seq_done_pll0_sync)
          n4_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB4 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n4_tbyte_d  <= n4_tbyte_in;
        else if( C_TX_IN_NIB4 == 1'b1 && rst_seq_done_pll0_sync )
          n4_tbyte_d  <= 4'b1111;
        else
         n4_tbyte_d   <=  n4_tbyte_in;
     end //always
  end
  else begin
     always @(posedge pll1_clkout0_int)
     begin
        if( C_TX_IN_NIB4 == 1'b1 && !rst_seq_done_pll0_sync)
          n4_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB4 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n4_tbyte_d  <= n4_tbyte_in;
        else if( C_TX_IN_NIB4 == 1'b1 && rst_seq_done_pll0_sync )
          n4_tbyte_d  <= 4'b1111;
        else
         n4_tbyte_d   <=  n4_tbyte_in;
     end //always
  end
end
endgenerate


generate
  if(C_EN_MULTI_INTF == 1'b1 ) begin
     always @(posedge app_clk)
     begin
        if( C_TX_IN_NIB5 == 1'b1 && !rst_seq_done_app_clk_sync)
          n5_tbyte_d  <= 4'b0000;
        else
         n5_tbyte_d   <=  n5_tbyte_in;
     end //always
  end
  else begin

  if(C_NIB5_PLL1 == 1'b0) begin : GEN_NIB5_TBYTE
     always @(posedge pll0_clkout0_int)
     begin
       if( C_TX_IN_NIB5 == 1'b1 && !rst_seq_done_pll0_sync)
          n5_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB5 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n5_tbyte_d  <= n5_tbyte_in;
        else if( C_TX_IN_NIB5 == 1'b1 && rst_seq_done_pll0_sync )
          n5_tbyte_d  <= 4'b1111;
        else
         n5_tbyte_d   <=  n5_tbyte_in;
     end //always
  end
  else begin
     always @(posedge pll1_clkout0_int)
     begin
       if( C_TX_IN_NIB5 == 1'b1 && !rst_seq_done_pll0_sync)
          n5_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB5 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n5_tbyte_d  <= n5_tbyte_in;
        else if( C_TX_IN_NIB5 == 1'b1 && rst_seq_done_pll0_sync )
          n5_tbyte_d  <= 4'b1111;
        else
         n5_tbyte_d   <=  n5_tbyte_in;
     end //always
  end
end
endgenerate

generate
  if(C_EN_MULTI_INTF == 1'b1 ) begin
     always @(posedge app_clk)
     begin
        if( C_TX_IN_NIB6 == 1'b1 && !rst_seq_done_app_clk_sync)
          n6_tbyte_d  <= 4'b0000;
        else
         n6_tbyte_d   <=  n6_tbyte_in;
     end //always
  end
  else begin

  if(C_NIB6_PLL1 == 1'b0) begin : GEN_NIB6_TBYTE
     always @(posedge pll0_clkout0_int)
     begin
       if( C_TX_IN_NIB6 == 1'b1 && !rst_seq_done_pll0_sync)
          n6_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB6 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n6_tbyte_d  <= n6_tbyte_in;
        else if( C_TX_IN_NIB6 == 1'b1 && rst_seq_done_pll0_sync )
          n6_tbyte_d  <= 4'b1111;
        else
         n6_tbyte_d   <=  n6_tbyte_in;
     end //always
  end
  else begin
     always @(posedge pll1_clkout0_int)
     begin
       if( C_TX_IN_NIB6 == 1'b1 && !rst_seq_done_pll0_sync)
          n6_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB6 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n6_tbyte_d  <= n6_tbyte_in;
        else if( C_TX_IN_NIB6 == 1'b1 && rst_seq_done_pll0_sync )
          n6_tbyte_d  <= 4'b1111;
        else
         n6_tbyte_d   <=  n6_tbyte_in;
     end //always
  end
end
endgenerate

generate
  if(C_EN_MULTI_INTF == 1'b1 ) begin
     always @(posedge app_clk)
     begin
        if( C_TX_IN_NIB0 == 1'b1 && !rst_seq_done_app_clk_sync)
          n7_tbyte_d  <= 4'b0000;
        else
         n7_tbyte_d   <=  n7_tbyte_in;
     end //always
  end
  else begin

  if(C_NIB7_PLL1 == 1'b0) begin : GEN_NIB7_TBYTE
     always @(posedge pll0_clkout0_int)
     begin
       if( C_TX_IN_NIB7 == 1'b1 && !rst_seq_done_pll0_sync)
          n7_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB7 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n7_tbyte_d  <= n7_tbyte_in;
        else if( C_TX_IN_NIB7 == 1'b1 && rst_seq_done_pll0_sync )
          n7_tbyte_d  <= 4'b1111;
        else
         n7_tbyte_d   <=  n7_tbyte_in;
     end //always
  end
  else begin
     always @(posedge pll1_clkout0_int)
     begin
       if( C_TX_IN_NIB7 == 1'b1 && !rst_seq_done_pll0_sync)
          n7_tbyte_d  <= 4'b0000;
        else if( C_TX_IN_NIB7 == 1'b1 && rst_seq_done_pll0_sync && C_EN_TX_TRI== 1'b1 && C_DATA_TRI == 0 )
          n7_tbyte_d  <= n7_tbyte_in;
        else if( C_TX_IN_NIB7 == 1'b1 && rst_seq_done_pll0_sync )
          n7_tbyte_d  <= 4'b1111;
        else
         n7_tbyte_d   <=  n7_tbyte_in;
     end //always
  end
end
endgenerate

 
   assign n0_dly_rdy_out     = n0_dly_rdy;
   assign n1_dly_rdy_out     = n1_dly_rdy;
   assign n2_dly_rdy_out     = n2_dly_rdy;
   assign n3_dly_rdy_out     = n3_dly_rdy;
   assign n4_dly_rdy_out     = n4_dly_rdy;
   assign n5_dly_rdy_out     = n5_dly_rdy;
   assign n6_dly_rdy_out     = n6_dly_rdy;
   assign n7_dly_rdy_out     = n7_dly_rdy;

   assign n0_vtc_rdy_out     = n0_vtc_rdy;
   assign n1_vtc_rdy_out     = n1_vtc_rdy;
   assign n2_vtc_rdy_out     = n2_vtc_rdy;
   assign n3_vtc_rdy_out     = n3_vtc_rdy;
   assign n4_vtc_rdy_out     = n4_vtc_rdy;
   assign n5_vtc_rdy_out     = n5_vtc_rdy;
   assign n6_vtc_rdy_out     = n6_vtc_rdy;
   assign n7_vtc_rdy_out     = n7_vtc_rdy;

   assign n0_dly_rdy_to_rst  = (C_EN_BSC0 ==1) ? n0_dly_rdy : 1'b1;
   assign n1_dly_rdy_to_rst  = (C_EN_BSC1 ==1) ? n1_dly_rdy : 1'b1;
   assign n2_dly_rdy_to_rst  = (C_EN_BSC2 ==1) ? n2_dly_rdy : 1'b1;
   assign n3_dly_rdy_to_rst  = (C_EN_BSC3 ==1) ? n3_dly_rdy : 1'b1;
   assign n4_dly_rdy_to_rst  = (C_EN_BSC4 ==1) ? n4_dly_rdy : 1'b1;
   assign n5_dly_rdy_to_rst  = (C_EN_BSC5 ==1) ? n5_dly_rdy : 1'b1;
   assign n6_dly_rdy_to_rst  = (C_EN_BSC6 ==1) ? n6_dly_rdy : 1'b1;
   assign n7_dly_rdy_to_rst  = (C_EN_BSC7 ==1) ? n7_dly_rdy : 1'b1;

   assign all_bsc_dly_rdy_in = &{n7_dly_rdy_to_rst,n6_dly_rdy_to_rst,n5_dly_rdy_to_rst,n4_dly_rdy_to_rst,n3_dly_rdy_to_rst,n2_dly_rdy_to_rst,n1_dly_rdy_to_rst,n0_dly_rdy_to_rst};

   assign n0_vtc_rdy_to_rst  = (C_EN_BSC0 ==1) ? n0_vtc_rdy : 1'b1;
   assign n1_vtc_rdy_to_rst  = (C_EN_BSC1 ==1) ? n1_vtc_rdy : 1'b1;
   assign n2_vtc_rdy_to_rst  = (C_EN_BSC2 ==1) ? n2_vtc_rdy : 1'b1;
   assign n3_vtc_rdy_to_rst  = (C_EN_BSC3 ==1) ? n3_vtc_rdy : 1'b1;
   assign n4_vtc_rdy_to_rst  = (C_EN_BSC4 ==1) ? n4_vtc_rdy : 1'b1;
   assign n5_vtc_rdy_to_rst  = (C_EN_BSC5 ==1) ? n5_vtc_rdy : 1'b1;
   assign n6_vtc_rdy_to_rst  = (C_EN_BSC6 ==1) ? n6_vtc_rdy : 1'b1;
   assign n7_vtc_rdy_to_rst  = (C_EN_BSC7 ==1) ? n7_vtc_rdy : 1'b1;

   assign all_bsc_vtc_rdy_in = &{n7_vtc_rdy_to_rst,n6_vtc_rdy_to_rst,n5_vtc_rdy_to_rst,n4_vtc_rdy_to_rst,n3_vtc_rdy_to_rst,n2_vtc_rdy_to_rst,n1_vtc_rdy_to_rst,n0_vtc_rdy_to_rst};

   assign core_rdy = all_bsc_dly_rdy_in && all_bsc_vtc_rdy_in;

  generate 
  genvar bs;
    for (bs = 0; bs <= 51; bs=bs+1) 
    begin : CORE_RDY_GEN
      always @(posedge riu_clk)
      begin
        core_rdy_r[bs]               <= core_rdy;
      end
    end
  endgenerate


    high_speed_selectio_wiz_v3_6_0_sync_cell #(.C_SYNC_STAGE(2), .C_DW(1), .pTCQ(10)) 
    sync_cell_rst_seq_pll0_inst       (.src_data(rst_seq_done1), .dest_clk(pll0_clkout0_int), .dest_data(rst_seq_done_pll0_sync));

generate
if(USE_PLL1) begin : GEN_PLL1_RST_SEQ_DONE

    high_speed_selectio_wiz_v3_6_0_sync_cell #(.C_SYNC_STAGE(2), .C_DW(1), .pTCQ(10)) 
    sync_cell_rst_seq_pll1_inst       (.src_data(rst_seq_done2), .dest_clk(pll1_clkout0_int), .dest_data(rst_seq_done_pll1_sync));
end
endgenerate

generate
if(C_EN_MULTI_INTF == 1'b1) begin : GEN_APP_CLK_RST_SEQ_DONE

    assign intf_rdy          = rst_seq_done_app_clk_sync;

    high_speed_selectio_wiz_v3_6_0_sync_cell #(.C_SYNC_STAGE(2), .C_DW(1), .pTCQ(10)) 
    sync_cell_rst_seq_app_clk_inst       (.src_data(rst_seq_done3), .dest_clk(app_clk), .dest_data(rst_seq_done_app_clk_sync));
end
endgenerate

   // Generation of Data from IOBuffer to BITSLICE
   generate
      genvar i, j, k, m;

      for (i = 1; i < 12 ; i = i + 2) 
      begin : bg0
         assign data_to_bs_from_buf[i] = (C_DIFF_EN[i-1] == 1) && (C_ALL_RX_EN[i] == 1'b1) ? data_to_bs_n[i-1] : data_to_bs[i];
      end

      for (j = 14; j < 25 ; j = j + 2) 
      begin : bg1
         assign data_to_bs_from_buf[j] = (C_DIFF_EN[j-1] == 1) && (C_ALL_RX_EN[j] == 1'b1) ? data_to_bs_n[j-1] : data_to_bs[j];
      end

      for (k = 27; k < 38 ; k = k + 2) 
      begin : bg2
         assign data_to_bs_from_buf[k] = (C_DIFF_EN[k-1] == 1) && (C_ALL_RX_EN[k] == 1'b1) ? data_to_bs_n[k-1] : data_to_bs[k];
      end

      for (m = 40; m < 51 ; m = m + 2) 
      begin : bg3
         assign data_to_bs_from_buf[m] = (C_DIFF_EN[m-1] == 1) && (C_ALL_RX_EN[m] == 1'b1) ? data_to_bs_n[m-1]  : data_to_bs[m];
      end
   endgenerate



endmodule
