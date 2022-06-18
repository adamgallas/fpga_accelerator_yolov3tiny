// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhls_rect.h"

extern XHls_rect_Config XHls_rect_ConfigTable[];

XHls_rect_Config *XHls_rect_LookupConfig(u16 DeviceId) {
	XHls_rect_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHLS_RECT_NUM_INSTANCES; Index++) {
		if (XHls_rect_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHls_rect_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHls_rect_Initialize(XHls_rect *InstancePtr, u16 DeviceId) {
	XHls_rect_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHls_rect_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHls_rect_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

