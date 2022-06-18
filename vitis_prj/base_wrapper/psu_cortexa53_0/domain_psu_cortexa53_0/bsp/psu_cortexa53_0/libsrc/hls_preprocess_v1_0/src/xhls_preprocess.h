// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHLS_PREPROCESS_H
#define XHLS_PREPROCESS_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xhls_preprocess_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XHls_preprocess_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XHls_preprocess;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHls_preprocess_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHls_preprocess_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHls_preprocess_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHls_preprocess_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XHls_preprocess_Initialize(XHls_preprocess *InstancePtr, u16 DeviceId);
XHls_preprocess_Config* XHls_preprocess_LookupConfig(u16 DeviceId);
int XHls_preprocess_CfgInitialize(XHls_preprocess *InstancePtr, XHls_preprocess_Config *ConfigPtr);
#else
int XHls_preprocess_Initialize(XHls_preprocess *InstancePtr, const char* InstanceName);
int XHls_preprocess_Release(XHls_preprocess *InstancePtr);
#endif

void XHls_preprocess_Start(XHls_preprocess *InstancePtr);
u32 XHls_preprocess_IsDone(XHls_preprocess *InstancePtr);
u32 XHls_preprocess_IsIdle(XHls_preprocess *InstancePtr);
u32 XHls_preprocess_IsReady(XHls_preprocess *InstancePtr);
void XHls_preprocess_EnableAutoRestart(XHls_preprocess *InstancePtr);
void XHls_preprocess_DisableAutoRestart(XHls_preprocess *InstancePtr);


void XHls_preprocess_InterruptGlobalEnable(XHls_preprocess *InstancePtr);
void XHls_preprocess_InterruptGlobalDisable(XHls_preprocess *InstancePtr);
void XHls_preprocess_InterruptEnable(XHls_preprocess *InstancePtr, u32 Mask);
void XHls_preprocess_InterruptDisable(XHls_preprocess *InstancePtr, u32 Mask);
void XHls_preprocess_InterruptClear(XHls_preprocess *InstancePtr, u32 Mask);
u32 XHls_preprocess_InterruptGetEnabled(XHls_preprocess *InstancePtr);
u32 XHls_preprocess_InterruptGetStatus(XHls_preprocess *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
