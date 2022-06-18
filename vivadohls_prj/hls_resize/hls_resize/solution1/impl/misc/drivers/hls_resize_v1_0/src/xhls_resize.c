// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhls_resize.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHls_resize_CfgInitialize(XHls_resize *InstancePtr, XHls_resize_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHls_resize_Start(XHls_resize *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_resize_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_AP_CTRL) & 0x80;
    XHls_resize_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHls_resize_IsDone(XHls_resize *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_resize_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHls_resize_IsIdle(XHls_resize *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_resize_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHls_resize_IsReady(XHls_resize *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_resize_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHls_resize_EnableAutoRestart(XHls_resize *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_resize_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XHls_resize_DisableAutoRestart(XHls_resize *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_resize_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_AP_CTRL, 0);
}

void XHls_resize_InterruptGlobalEnable(XHls_resize *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_resize_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_GIE, 1);
}

void XHls_resize_InterruptGlobalDisable(XHls_resize *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_resize_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_GIE, 0);
}

void XHls_resize_InterruptEnable(XHls_resize *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_resize_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_IER);
    XHls_resize_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_IER, Register | Mask);
}

void XHls_resize_InterruptDisable(XHls_resize *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_resize_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_IER);
    XHls_resize_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_IER, Register & (~Mask));
}

void XHls_resize_InterruptClear(XHls_resize *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_resize_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_ISR, Mask);
}

u32 XHls_resize_InterruptGetEnabled(XHls_resize *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_resize_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_IER);
}

u32 XHls_resize_InterruptGetStatus(XHls_resize *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_resize_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_RESIZE_AXILITES_ADDR_ISR);
}

