// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module cam_v_gamma_lut_0_0_v_gamma_lut_CTRL_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 13,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [15:0]                   HwReg_width,
    output wire [15:0]                   HwReg_height,
    output wire [15:0]                   HwReg_video_format,
    input  wire [9:0]                    HwReg_gamma_lut_0_address0,
    input  wire                          HwReg_gamma_lut_0_ce0,
    output wire [15:0]                   HwReg_gamma_lut_0_q0,
    input  wire [9:0]                    HwReg_gamma_lut_1_address0,
    input  wire                          HwReg_gamma_lut_1_ce0,
    output wire [15:0]                   HwReg_gamma_lut_1_q0,
    input  wire [9:0]                    HwReg_gamma_lut_2_address0,
    input  wire                          HwReg_gamma_lut_2_ce0,
    output wire [15:0]                   HwReg_gamma_lut_2_q0,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x0000 : Control signals
//          bit 0  - ap_start (Read/Write/COH)
//          bit 1  - ap_done (Read/COR)
//          bit 2  - ap_idle (Read)
//          bit 3  - ap_ready (Read)
//          bit 7  - auto_restart (Read/Write)
//          others - reserved
// 0x0004 : Global Interrupt Enable Register
//          bit 0  - Global Interrupt Enable (Read/Write)
//          others - reserved
// 0x0008 : IP Interrupt Enable Register (Read/Write)
//          bit 0  - Channel 0 (ap_done)
//          bit 1  - Channel 1 (ap_ready)
//          others - reserved
// 0x000c : IP Interrupt Status Register (Read/TOW)
//          bit 0  - Channel 0 (ap_done)
//          bit 1  - Channel 1 (ap_ready)
//          others - reserved
// 0x0010 : Data signal of HwReg_width
//          bit 15~0 - HwReg_width[15:0] (Read/Write)
//          others   - reserved
// 0x0014 : reserved
// 0x0018 : Data signal of HwReg_height
//          bit 15~0 - HwReg_height[15:0] (Read/Write)
//          others   - reserved
// 0x001c : reserved
// 0x0020 : Data signal of HwReg_video_format
//          bit 15~0 - HwReg_video_format[15:0] (Read/Write)
//          others   - reserved
// 0x0024 : reserved
// 0x0800 ~
// 0x0fff : Memory 'HwReg_gamma_lut_0' (1024 * 16b)
//          Word n : bit [15: 0] - HwReg_gamma_lut_0[2n]
//                   bit [31:16] - HwReg_gamma_lut_0[2n+1]
// 0x1000 ~
// 0x17ff : Memory 'HwReg_gamma_lut_1' (1024 * 16b)
//          Word n : bit [15: 0] - HwReg_gamma_lut_1[2n]
//                   bit [31:16] - HwReg_gamma_lut_1[2n+1]
// 0x1800 ~
// 0x1fff : Memory 'HwReg_gamma_lut_2' (1024 * 16b)
//          Word n : bit [15: 0] - HwReg_gamma_lut_2[2n]
//                   bit [31:16] - HwReg_gamma_lut_2[2n+1]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                   = 13'h0000,
    ADDR_GIE                       = 13'h0004,
    ADDR_IER                       = 13'h0008,
    ADDR_ISR                       = 13'h000c,
    ADDR_HWREG_WIDTH_DATA_0        = 13'h0010,
    ADDR_HWREG_WIDTH_CTRL          = 13'h0014,
    ADDR_HWREG_HEIGHT_DATA_0       = 13'h0018,
    ADDR_HWREG_HEIGHT_CTRL         = 13'h001c,
    ADDR_HWREG_VIDEO_FORMAT_DATA_0 = 13'h0020,
    ADDR_HWREG_VIDEO_FORMAT_CTRL   = 13'h0024,
    ADDR_HWREG_GAMMA_LUT_0_BASE    = 13'h0800,
    ADDR_HWREG_GAMMA_LUT_0_HIGH    = 13'h0fff,
    ADDR_HWREG_GAMMA_LUT_1_BASE    = 13'h1000,
    ADDR_HWREG_GAMMA_LUT_1_HIGH    = 13'h17ff,
    ADDR_HWREG_GAMMA_LUT_2_BASE    = 13'h1800,
    ADDR_HWREG_GAMMA_LUT_2_HIGH    = 13'h1fff,
    WRIDLE                         = 2'd0,
    WRDATA                         = 2'd1,
    WRRESP                         = 2'd2,
    WRRESET                        = 2'd3,
    RDIDLE                         = 2'd0,
    RDDATA                         = 2'd1,
    RDRESET                        = 2'd2,
    ADDR_BITS         = 13;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_ready;
    reg                           int_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [15:0]                   int_HwReg_width = 'b0;
    reg  [15:0]                   int_HwReg_height = 'b0;
    reg  [15:0]                   int_HwReg_video_format = 'b0;
    // memory signals
    wire [8:0]                    int_HwReg_gamma_lut_0_address0;
    wire                          int_HwReg_gamma_lut_0_ce0;
    wire                          int_HwReg_gamma_lut_0_we0;
    wire [3:0]                    int_HwReg_gamma_lut_0_be0;
    wire [31:0]                   int_HwReg_gamma_lut_0_d0;
    wire [31:0]                   int_HwReg_gamma_lut_0_q0;
    wire [8:0]                    int_HwReg_gamma_lut_0_address1;
    wire                          int_HwReg_gamma_lut_0_ce1;
    wire                          int_HwReg_gamma_lut_0_we1;
    wire [3:0]                    int_HwReg_gamma_lut_0_be1;
    wire [31:0]                   int_HwReg_gamma_lut_0_d1;
    wire [31:0]                   int_HwReg_gamma_lut_0_q1;
    reg                           int_HwReg_gamma_lut_0_read;
    reg                           int_HwReg_gamma_lut_0_write;
    reg  [0:0]                    int_HwReg_gamma_lut_0_shift;
    wire [8:0]                    int_HwReg_gamma_lut_1_address0;
    wire                          int_HwReg_gamma_lut_1_ce0;
    wire                          int_HwReg_gamma_lut_1_we0;
    wire [3:0]                    int_HwReg_gamma_lut_1_be0;
    wire [31:0]                   int_HwReg_gamma_lut_1_d0;
    wire [31:0]                   int_HwReg_gamma_lut_1_q0;
    wire [8:0]                    int_HwReg_gamma_lut_1_address1;
    wire                          int_HwReg_gamma_lut_1_ce1;
    wire                          int_HwReg_gamma_lut_1_we1;
    wire [3:0]                    int_HwReg_gamma_lut_1_be1;
    wire [31:0]                   int_HwReg_gamma_lut_1_d1;
    wire [31:0]                   int_HwReg_gamma_lut_1_q1;
    reg                           int_HwReg_gamma_lut_1_read;
    reg                           int_HwReg_gamma_lut_1_write;
    reg  [0:0]                    int_HwReg_gamma_lut_1_shift;
    wire [8:0]                    int_HwReg_gamma_lut_2_address0;
    wire                          int_HwReg_gamma_lut_2_ce0;
    wire                          int_HwReg_gamma_lut_2_we0;
    wire [3:0]                    int_HwReg_gamma_lut_2_be0;
    wire [31:0]                   int_HwReg_gamma_lut_2_d0;
    wire [31:0]                   int_HwReg_gamma_lut_2_q0;
    wire [8:0]                    int_HwReg_gamma_lut_2_address1;
    wire                          int_HwReg_gamma_lut_2_ce1;
    wire                          int_HwReg_gamma_lut_2_we1;
    wire [3:0]                    int_HwReg_gamma_lut_2_be1;
    wire [31:0]                   int_HwReg_gamma_lut_2_d1;
    wire [31:0]                   int_HwReg_gamma_lut_2_q1;
    reg                           int_HwReg_gamma_lut_2_read;
    reg                           int_HwReg_gamma_lut_2_write;
    reg  [0:0]                    int_HwReg_gamma_lut_2_shift;

//------------------------Instantiation------------------
// int_HwReg_gamma_lut_0
cam_v_gamma_lut_0_0_v_gamma_lut_CTRL_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 512 )
) int_HwReg_gamma_lut_0 (
    .clk0     ( ACLK ),
    .address0 ( int_HwReg_gamma_lut_0_address0 ),
    .ce0      ( int_HwReg_gamma_lut_0_ce0 ),
    .we0      ( int_HwReg_gamma_lut_0_we0 ),
    .be0      ( int_HwReg_gamma_lut_0_be0 ),
    .d0       ( int_HwReg_gamma_lut_0_d0 ),
    .q0       ( int_HwReg_gamma_lut_0_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_HwReg_gamma_lut_0_address1 ),
    .ce1      ( int_HwReg_gamma_lut_0_ce1 ),
    .we1      ( int_HwReg_gamma_lut_0_we1 ),
    .be1      ( int_HwReg_gamma_lut_0_be1 ),
    .d1       ( int_HwReg_gamma_lut_0_d1 ),
    .q1       ( int_HwReg_gamma_lut_0_q1 )
);
// int_HwReg_gamma_lut_1
cam_v_gamma_lut_0_0_v_gamma_lut_CTRL_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 512 )
) int_HwReg_gamma_lut_1 (
    .clk0     ( ACLK ),
    .address0 ( int_HwReg_gamma_lut_1_address0 ),
    .ce0      ( int_HwReg_gamma_lut_1_ce0 ),
    .we0      ( int_HwReg_gamma_lut_1_we0 ),
    .be0      ( int_HwReg_gamma_lut_1_be0 ),
    .d0       ( int_HwReg_gamma_lut_1_d0 ),
    .q0       ( int_HwReg_gamma_lut_1_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_HwReg_gamma_lut_1_address1 ),
    .ce1      ( int_HwReg_gamma_lut_1_ce1 ),
    .we1      ( int_HwReg_gamma_lut_1_we1 ),
    .be1      ( int_HwReg_gamma_lut_1_be1 ),
    .d1       ( int_HwReg_gamma_lut_1_d1 ),
    .q1       ( int_HwReg_gamma_lut_1_q1 )
);
// int_HwReg_gamma_lut_2
cam_v_gamma_lut_0_0_v_gamma_lut_CTRL_s_axi_ram #(
    .BYTES    ( 4 ),
    .DEPTH    ( 512 )
) int_HwReg_gamma_lut_2 (
    .clk0     ( ACLK ),
    .address0 ( int_HwReg_gamma_lut_2_address0 ),
    .ce0      ( int_HwReg_gamma_lut_2_ce0 ),
    .we0      ( int_HwReg_gamma_lut_2_we0 ),
    .be0      ( int_HwReg_gamma_lut_2_be0 ),
    .d0       ( int_HwReg_gamma_lut_2_d0 ),
    .q0       ( int_HwReg_gamma_lut_2_q0 ),
    .clk1     ( ACLK ),
    .address1 ( int_HwReg_gamma_lut_2_address1 ),
    .ce1      ( int_HwReg_gamma_lut_2_ce1 ),
    .we1      ( int_HwReg_gamma_lut_2_we1 ),
    .be1      ( int_HwReg_gamma_lut_2_be1 ),
    .d1       ( int_HwReg_gamma_lut_2_d1 ),
    .q1       ( int_HwReg_gamma_lut_2_q1 )
);

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_HwReg_gamma_lut_0_read & !int_HwReg_gamma_lut_1_read & !int_HwReg_gamma_lut_2_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_HWREG_WIDTH_DATA_0: begin
                    rdata <= int_HwReg_width[15:0];
                end
                ADDR_HWREG_HEIGHT_DATA_0: begin
                    rdata <= int_HwReg_height[15:0];
                end
                ADDR_HWREG_VIDEO_FORMAT_DATA_0: begin
                    rdata <= int_HwReg_video_format[15:0];
                end
            endcase
        end
        else if (int_HwReg_gamma_lut_0_read) begin
            rdata <= int_HwReg_gamma_lut_0_q1;
        end
        else if (int_HwReg_gamma_lut_1_read) begin
            rdata <= int_HwReg_gamma_lut_1_q1;
        end
        else if (int_HwReg_gamma_lut_2_read) begin
            rdata <= int_HwReg_gamma_lut_2_q1;
        end
    end
end


//------------------------Register logic-----------------
assign interrupt          = int_gie & (|int_isr);
assign ap_start           = int_ap_start;
assign HwReg_width        = int_HwReg_width;
assign HwReg_height       = int_HwReg_height;
assign HwReg_video_format = int_HwReg_video_format;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_HwReg_width[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_width[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_WIDTH_DATA_0)
            int_HwReg_width[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_width[15:0] & ~wmask);
    end
end

// int_HwReg_height[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_height[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_HEIGHT_DATA_0)
            int_HwReg_height[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_height[15:0] & ~wmask);
    end
end

// int_HwReg_video_format[15:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_video_format[15:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HWREG_VIDEO_FORMAT_DATA_0)
            int_HwReg_video_format[15:0] <= (WDATA[31:0] & wmask) | (int_HwReg_video_format[15:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------
// HwReg_gamma_lut_0
assign int_HwReg_gamma_lut_0_address0 = HwReg_gamma_lut_0_address0 >> 1;
assign int_HwReg_gamma_lut_0_ce0      = HwReg_gamma_lut_0_ce0;
assign int_HwReg_gamma_lut_0_we0      = 1'b0;
assign int_HwReg_gamma_lut_0_be0      = 1'b0;
assign int_HwReg_gamma_lut_0_d0       = 1'b0;
assign HwReg_gamma_lut_0_q0           = int_HwReg_gamma_lut_0_q0 >> (int_HwReg_gamma_lut_0_shift * 16);
assign int_HwReg_gamma_lut_0_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_HwReg_gamma_lut_0_ce1      = ar_hs | (int_HwReg_gamma_lut_0_write & WVALID);
assign int_HwReg_gamma_lut_0_we1      = int_HwReg_gamma_lut_0_write & WVALID;
assign int_HwReg_gamma_lut_0_be1      = WSTRB;
assign int_HwReg_gamma_lut_0_d1       = WDATA;
// HwReg_gamma_lut_1
assign int_HwReg_gamma_lut_1_address0 = HwReg_gamma_lut_1_address0 >> 1;
assign int_HwReg_gamma_lut_1_ce0      = HwReg_gamma_lut_1_ce0;
assign int_HwReg_gamma_lut_1_we0      = 1'b0;
assign int_HwReg_gamma_lut_1_be0      = 1'b0;
assign int_HwReg_gamma_lut_1_d0       = 1'b0;
assign HwReg_gamma_lut_1_q0           = int_HwReg_gamma_lut_1_q0 >> (int_HwReg_gamma_lut_1_shift * 16);
assign int_HwReg_gamma_lut_1_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_HwReg_gamma_lut_1_ce1      = ar_hs | (int_HwReg_gamma_lut_1_write & WVALID);
assign int_HwReg_gamma_lut_1_we1      = int_HwReg_gamma_lut_1_write & WVALID;
assign int_HwReg_gamma_lut_1_be1      = WSTRB;
assign int_HwReg_gamma_lut_1_d1       = WDATA;
// HwReg_gamma_lut_2
assign int_HwReg_gamma_lut_2_address0 = HwReg_gamma_lut_2_address0 >> 1;
assign int_HwReg_gamma_lut_2_ce0      = HwReg_gamma_lut_2_ce0;
assign int_HwReg_gamma_lut_2_we0      = 1'b0;
assign int_HwReg_gamma_lut_2_be0      = 1'b0;
assign int_HwReg_gamma_lut_2_d0       = 1'b0;
assign HwReg_gamma_lut_2_q0           = int_HwReg_gamma_lut_2_q0 >> (int_HwReg_gamma_lut_2_shift * 16);
assign int_HwReg_gamma_lut_2_address1 = ar_hs? raddr[10:2] : waddr[10:2];
assign int_HwReg_gamma_lut_2_ce1      = ar_hs | (int_HwReg_gamma_lut_2_write & WVALID);
assign int_HwReg_gamma_lut_2_we1      = int_HwReg_gamma_lut_2_write & WVALID;
assign int_HwReg_gamma_lut_2_be1      = WSTRB;
assign int_HwReg_gamma_lut_2_d1       = WDATA;
// int_HwReg_gamma_lut_0_read
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_gamma_lut_0_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_HWREG_GAMMA_LUT_0_BASE && raddr <= ADDR_HWREG_GAMMA_LUT_0_HIGH)
            int_HwReg_gamma_lut_0_read <= 1'b1;
        else
            int_HwReg_gamma_lut_0_read <= 1'b0;
    end
end

// int_HwReg_gamma_lut_0_write
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_gamma_lut_0_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_HWREG_GAMMA_LUT_0_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_HWREG_GAMMA_LUT_0_HIGH)
            int_HwReg_gamma_lut_0_write <= 1'b1;
        else if (WVALID)
            int_HwReg_gamma_lut_0_write <= 1'b0;
    end
end

// int_HwReg_gamma_lut_0_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (HwReg_gamma_lut_0_ce0)
            int_HwReg_gamma_lut_0_shift <= HwReg_gamma_lut_0_address0[0];
    end
end

// int_HwReg_gamma_lut_1_read
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_gamma_lut_1_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_HWREG_GAMMA_LUT_1_BASE && raddr <= ADDR_HWREG_GAMMA_LUT_1_HIGH)
            int_HwReg_gamma_lut_1_read <= 1'b1;
        else
            int_HwReg_gamma_lut_1_read <= 1'b0;
    end
end

// int_HwReg_gamma_lut_1_write
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_gamma_lut_1_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_HWREG_GAMMA_LUT_1_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_HWREG_GAMMA_LUT_1_HIGH)
            int_HwReg_gamma_lut_1_write <= 1'b1;
        else if (WVALID)
            int_HwReg_gamma_lut_1_write <= 1'b0;
    end
end

// int_HwReg_gamma_lut_1_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (HwReg_gamma_lut_1_ce0)
            int_HwReg_gamma_lut_1_shift <= HwReg_gamma_lut_1_address0[0];
    end
end

// int_HwReg_gamma_lut_2_read
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_gamma_lut_2_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_HWREG_GAMMA_LUT_2_BASE && raddr <= ADDR_HWREG_GAMMA_LUT_2_HIGH)
            int_HwReg_gamma_lut_2_read <= 1'b1;
        else
            int_HwReg_gamma_lut_2_read <= 1'b0;
    end
end

// int_HwReg_gamma_lut_2_write
always @(posedge ACLK) begin
    if (ARESET)
        int_HwReg_gamma_lut_2_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_HWREG_GAMMA_LUT_2_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_HWREG_GAMMA_LUT_2_HIGH)
            int_HwReg_gamma_lut_2_write <= 1'b1;
        else if (WVALID)
            int_HwReg_gamma_lut_2_write <= 1'b0;
    end
end

// int_HwReg_gamma_lut_2_shift
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (HwReg_gamma_lut_2_ce0)
            int_HwReg_gamma_lut_2_shift <= HwReg_gamma_lut_2_address0[0];
    end
end


endmodule


`timescale 1ns/1ps

module cam_v_gamma_lut_0_0_v_gamma_lut_CTRL_s_axi_ram
#(parameter
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire               we0,
    input  wire [BYTES-1:0]   be0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire               we1,
    input  wire [BYTES-1:0]   be1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------Local signal-------------------
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
// read port 0
always @(posedge clk0) begin
    if (ce0) q0 <= mem[address0];
end

// read port 1
always @(posedge clk1) begin
    if (ce1) q1 <= mem[address1];
end

genvar i;
generate
    for (i = 0; i < BYTES; i = i + 1) begin : gen_write
        // write port 0
        always @(posedge clk0) begin
            if (ce0 & we0 & be0[i]) begin
                mem[address0][8*i+7:8*i] <= d0[8*i+7:8*i];
            end
        end
        // write port 1
        always @(posedge clk1) begin
            if (ce1 & we1 & be1[i]) begin
                mem[address1][8*i+7:8*i] <= d1[8*i+7:8*i];
            end
        end
    end
endgenerate

endmodule

