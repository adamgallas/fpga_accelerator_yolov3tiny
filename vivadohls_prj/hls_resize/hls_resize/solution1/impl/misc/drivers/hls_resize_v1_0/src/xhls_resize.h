// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHLS_RESIZE_H
#define XHLS_RESIZE_H

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
#include "xhls_resize_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XHls_resize_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XHls_resize;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHls_resize_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHls_resize_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHls_resize_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHls_resize_ReadReg(BaseAddress, RegOffset) \
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
int XHls_resize_Initialize(XHls_resize *InstancePtr, u16 DeviceId);
XHls_resize_Config* XHls_resize_LookupConfig(u16 DeviceId);
int XHls_resize_CfgInitialize(XHls_resize *InstancePtr, XHls_resize_Config *ConfigPtr);
#else
int XHls_resize_Initialize(XHls_resize *InstancePtr, const char* InstanceName);
int XHls_resize_Release(XHls_resize *InstancePtr);
#endif

void XHls_resize_Start(XHls_resize *InstancePtr);
u32 XHls_resize_IsDone(XHls_resize *InstancePtr);
u32 XHls_resize_IsIdle(XHls_resize *InstancePtr);
u32 XHls_resize_IsReady(XHls_resize *InstancePtr);
void XHls_resize_EnableAutoRestart(XHls_resize *InstancePtr);
void XHls_resize_DisableAutoRestart(XHls_resize *InstancePtr);


void XHls_resize_InterruptGlobalEnable(XHls_resize *InstancePtr);
void XHls_resize_InterruptGlobalDisable(XHls_resize *InstancePtr);
void XHls_resize_InterruptEnable(XHls_resize *InstancePtr, u32 Mask);
void XHls_resize_InterruptDisable(XHls_resize *InstancePtr, u32 Mask);
void XHls_resize_InterruptClear(XHls_resize *InstancePtr, u32 Mask);
u32 XHls_resize_InterruptGetEnabled(XHls_resize *InstancePtr);
u32 XHls_resize_InterruptGetStatus(XHls_resize *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
