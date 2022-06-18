// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHLS_RECT_H
#define XHLS_RECT_H

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
#include "xhls_rect_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XHls_rect_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XHls_rect;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHls_rect_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHls_rect_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHls_rect_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHls_rect_ReadReg(BaseAddress, RegOffset) \
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
int XHls_rect_Initialize(XHls_rect *InstancePtr, u16 DeviceId);
XHls_rect_Config* XHls_rect_LookupConfig(u16 DeviceId);
int XHls_rect_CfgInitialize(XHls_rect *InstancePtr, XHls_rect_Config *ConfigPtr);
#else
int XHls_rect_Initialize(XHls_rect *InstancePtr, const char* InstanceName);
int XHls_rect_Release(XHls_rect *InstancePtr);
#endif

void XHls_rect_Start(XHls_rect *InstancePtr);
u32 XHls_rect_IsDone(XHls_rect *InstancePtr);
u32 XHls_rect_IsIdle(XHls_rect *InstancePtr);
u32 XHls_rect_IsReady(XHls_rect *InstancePtr);
void XHls_rect_EnableAutoRestart(XHls_rect *InstancePtr);
void XHls_rect_DisableAutoRestart(XHls_rect *InstancePtr);

void XHls_rect_Set_xleft_s(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_xleft_s(XHls_rect *InstancePtr);
void XHls_rect_Set_xright_s(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_xright_s(XHls_rect *InstancePtr);
void XHls_rect_Set_ytop_s(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_ytop_s(XHls_rect *InstancePtr);
void XHls_rect_Set_ydown_s(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_ydown_s(XHls_rect *InstancePtr);
void XHls_rect_Set_color1(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_color1(XHls_rect *InstancePtr);
void XHls_rect_Set_color2(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_color2(XHls_rect *InstancePtr);
void XHls_rect_Set_color3(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_color3(XHls_rect *InstancePtr);
void XHls_rect_Set_char1(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_char1(XHls_rect *InstancePtr);
void XHls_rect_Set_char2(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_char2(XHls_rect *InstancePtr);
void XHls_rect_Set_char3(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_char3(XHls_rect *InstancePtr);
void XHls_rect_Set_char4(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_char4(XHls_rect *InstancePtr);
void XHls_rect_Set_char5(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_char5(XHls_rect *InstancePtr);
void XHls_rect_Set_char6(XHls_rect *InstancePtr, u32 Data);
u32 XHls_rect_Get_char6(XHls_rect *InstancePtr);

void XHls_rect_InterruptGlobalEnable(XHls_rect *InstancePtr);
void XHls_rect_InterruptGlobalDisable(XHls_rect *InstancePtr);
void XHls_rect_InterruptEnable(XHls_rect *InstancePtr, u32 Mask);
void XHls_rect_InterruptDisable(XHls_rect *InstancePtr, u32 Mask);
void XHls_rect_InterruptClear(XHls_rect *InstancePtr, u32 Mask);
u32 XHls_rect_InterruptGetEnabled(XHls_rect *InstancePtr);
u32 XHls_rect_InterruptGetStatus(XHls_rect *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
