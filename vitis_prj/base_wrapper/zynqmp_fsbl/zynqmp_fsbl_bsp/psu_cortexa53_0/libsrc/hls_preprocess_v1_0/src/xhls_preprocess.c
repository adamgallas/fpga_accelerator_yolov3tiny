// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhls_preprocess.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHls_preprocess_CfgInitialize(XHls_preprocess *InstancePtr, XHls_preprocess_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHls_preprocess_Start(XHls_preprocess *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_preprocess_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_AP_CTRL) & 0x80;
    XHls_preprocess_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHls_preprocess_IsDone(XHls_preprocess *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_preprocess_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHls_preprocess_IsIdle(XHls_preprocess *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_preprocess_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHls_preprocess_IsReady(XHls_preprocess *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_preprocess_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHls_preprocess_EnableAutoRestart(XHls_preprocess *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_preprocess_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XHls_preprocess_DisableAutoRestart(XHls_preprocess *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_preprocess_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_AP_CTRL, 0);
}

void XHls_preprocess_InterruptGlobalEnable(XHls_preprocess *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_preprocess_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_GIE, 1);
}

void XHls_preprocess_InterruptGlobalDisable(XHls_preprocess *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_preprocess_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_GIE, 0);
}

void XHls_preprocess_InterruptEnable(XHls_preprocess *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_preprocess_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_IER);
    XHls_preprocess_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_IER, Register | Mask);
}

void XHls_preprocess_InterruptDisable(XHls_preprocess *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_preprocess_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_IER);
    XHls_preprocess_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_IER, Register & (~Mask));
}

void XHls_preprocess_InterruptClear(XHls_preprocess *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_preprocess_WriteReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_ISR, Mask);
}

u32 XHls_preprocess_InterruptGetEnabled(XHls_preprocess *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_preprocess_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_IER);
}

u32 XHls_preprocess_InterruptGetStatus(XHls_preprocess *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_preprocess_ReadReg(InstancePtr->Axilites_BaseAddress, XHLS_PREPROCESS_AXILITES_ADDR_ISR);
}

