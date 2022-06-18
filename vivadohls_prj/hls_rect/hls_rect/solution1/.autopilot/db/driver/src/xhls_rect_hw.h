// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of xleft_s
//        bit 15~0 - xleft_s[15:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of xright_s
//        bit 15~0 - xright_s[15:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of ytop_s
//        bit 15~0 - ytop_s[15:0] (Read/Write)
//        others   - reserved
// 0x24 : reserved
// 0x28 : Data signal of ydown_s
//        bit 15~0 - ydown_s[15:0] (Read/Write)
//        others   - reserved
// 0x2c : reserved
// 0x30 : Data signal of color1
//        bit 7~0 - color1[7:0] (Read/Write)
//        others  - reserved
// 0x34 : reserved
// 0x38 : Data signal of color2
//        bit 7~0 - color2[7:0] (Read/Write)
//        others  - reserved
// 0x3c : reserved
// 0x40 : Data signal of color3
//        bit 7~0 - color3[7:0] (Read/Write)
//        others  - reserved
// 0x44 : reserved
// 0x48 : Data signal of char1
//        bit 7~0 - char1[7:0] (Read/Write)
//        others  - reserved
// 0x4c : reserved
// 0x50 : Data signal of char2
//        bit 7~0 - char2[7:0] (Read/Write)
//        others  - reserved
// 0x54 : reserved
// 0x58 : Data signal of char3
//        bit 7~0 - char3[7:0] (Read/Write)
//        others  - reserved
// 0x5c : reserved
// 0x60 : Data signal of char4
//        bit 7~0 - char4[7:0] (Read/Write)
//        others  - reserved
// 0x64 : reserved
// 0x68 : Data signal of char5
//        bit 7~0 - char5[7:0] (Read/Write)
//        others  - reserved
// 0x6c : reserved
// 0x70 : Data signal of char6
//        bit 7~0 - char6[7:0] (Read/Write)
//        others  - reserved
// 0x74 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XHLS_RECT_AXILITES_ADDR_AP_CTRL       0x00
#define XHLS_RECT_AXILITES_ADDR_GIE           0x04
#define XHLS_RECT_AXILITES_ADDR_IER           0x08
#define XHLS_RECT_AXILITES_ADDR_ISR           0x0c
#define XHLS_RECT_AXILITES_ADDR_XLEFT_S_DATA  0x10
#define XHLS_RECT_AXILITES_BITS_XLEFT_S_DATA  16
#define XHLS_RECT_AXILITES_ADDR_XRIGHT_S_DATA 0x18
#define XHLS_RECT_AXILITES_BITS_XRIGHT_S_DATA 16
#define XHLS_RECT_AXILITES_ADDR_YTOP_S_DATA   0x20
#define XHLS_RECT_AXILITES_BITS_YTOP_S_DATA   16
#define XHLS_RECT_AXILITES_ADDR_YDOWN_S_DATA  0x28
#define XHLS_RECT_AXILITES_BITS_YDOWN_S_DATA  16
#define XHLS_RECT_AXILITES_ADDR_COLOR1_DATA   0x30
#define XHLS_RECT_AXILITES_BITS_COLOR1_DATA   8
#define XHLS_RECT_AXILITES_ADDR_COLOR2_DATA   0x38
#define XHLS_RECT_AXILITES_BITS_COLOR2_DATA   8
#define XHLS_RECT_AXILITES_ADDR_COLOR3_DATA   0x40
#define XHLS_RECT_AXILITES_BITS_COLOR3_DATA   8
#define XHLS_RECT_AXILITES_ADDR_CHAR1_DATA    0x48
#define XHLS_RECT_AXILITES_BITS_CHAR1_DATA    8
#define XHLS_RECT_AXILITES_ADDR_CHAR2_DATA    0x50
#define XHLS_RECT_AXILITES_BITS_CHAR2_DATA    8
#define XHLS_RECT_AXILITES_ADDR_CHAR3_DATA    0x58
#define XHLS_RECT_AXILITES_BITS_CHAR3_DATA    8
#define XHLS_RECT_AXILITES_ADDR_CHAR4_DATA    0x60
#define XHLS_RECT_AXILITES_BITS_CHAR4_DATA    8
#define XHLS_RECT_AXILITES_ADDR_CHAR5_DATA    0x68
#define XHLS_RECT_AXILITES_BITS_CHAR5_DATA    8
#define XHLS_RECT_AXILITES_ADDR_CHAR6_DATA    0x70
#define XHLS_RECT_AXILITES_BITS_CHAR6_DATA    8

