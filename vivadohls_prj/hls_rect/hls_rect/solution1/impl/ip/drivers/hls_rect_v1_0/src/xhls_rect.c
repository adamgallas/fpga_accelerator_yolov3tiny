// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhls_rect.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHls_rect_CfgInitialize(XHls_rect *InstancePtr, XHls_rect_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHls_rect_Start(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_AP_CTRL) & 0x80;
    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHls_rect_IsDone(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHls_rect_IsIdle(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHls_rect_IsReady(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHls_rect_EnableAutoRestart(XHls_rect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XHls_rect_DisableAutoRestart(XHls_rect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_AP_CTRL, 0);
}

void XHls_rect_Set_xleft_s(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_XLEFT_S_DATA, Data);
}

u32 XHls_rect_Get_xleft_s(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_XLEFT_S_DATA);
    return Data;
}

void XHls_rect_Set_xright_s(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_XRIGHT_S_DATA, Data);
}

u32 XHls_rect_Get_xright_s(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_XRIGHT_S_DATA);
    return Data;
}

void XHls_rect_Set_ytop_s(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_YTOP_S_DATA, Data);
}

u32 XHls_rect_Get_ytop_s(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_YTOP_S_DATA);
    return Data;
}

void XHls_rect_Set_ydown_s(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_YDOWN_S_DATA, Data);
}

u32 XHls_rect_Get_ydown_s(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_YDOWN_S_DATA);
    return Data;
}

void XHls_rect_Set_color1(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_COLOR1_DATA, Data);
}

u32 XHls_rect_Get_color1(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_COLOR1_DATA);
    return Data;
}

void XHls_rect_Set_color2(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_COLOR2_DATA, Data);
}

u32 XHls_rect_Get_color2(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_COLOR2_DATA);
    return Data;
}

void XHls_rect_Set_color3(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_COLOR3_DATA, Data);
}

u32 XHls_rect_Get_color3(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_COLOR3_DATA);
    return Data;
}

void XHls_rect_Set_char1(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR1_DATA, Data);
}

u32 XHls_rect_Get_char1(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR1_DATA);
    return Data;
}

void XHls_rect_Set_char2(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR2_DATA, Data);
}

u32 XHls_rect_Get_char2(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR2_DATA);
    return Data;
}

void XHls_rect_Set_char3(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR3_DATA, Data);
}

u32 XHls_rect_Get_char3(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR3_DATA);
    return Data;
}

void XHls_rect_Set_char4(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR4_DATA, Data);
}

u32 XHls_rect_Get_char4(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR4_DATA);
    return Data;
}

void XHls_rect_Set_char5(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR5_DATA, Data);
}

u32 XHls_rect_Get_char5(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR5_DATA);
    return Data;
}

void XHls_rect_Set_char6(XHls_rect *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR6_DATA, Data);
}

u32 XHls_rect_Get_char6(XHls_rect *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_CHAR6_DATA);
    return Data;
}

void XHls_rect_InterruptGlobalEnable(XHls_rect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_GIE, 1);
}

void XHls_rect_InterruptGlobalDisable(XHls_rect *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_GIE, 0);
}

void XHls_rect_InterruptEnable(XHls_rect *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_IER);
    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_IER, Register | Mask);
}

void XHls_rect_InterruptDisable(XHls_rect *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_IER);
    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_IER, Register & (~Mask));
}

void XHls_rect_InterruptClear(XHls_rect *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_rect_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_ISR, Mask);
}

u32 XHls_rect_InterruptGetEnabled(XHls_rect *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_IER);
}

u32 XHls_rect_InterruptGetStatus(XHls_rect *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_rect_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RECT_AXILITES_ADDR_ISR);
}

