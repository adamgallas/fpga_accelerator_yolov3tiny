// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhls_resize.h"

extern XHls_resize_Config XHls_resize_ConfigTable[];

XHls_resize_Config *XHls_resize_LookupConfig(u16 DeviceId) {
	XHls_resize_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHLS_RESIZE_NUM_INSTANCES; Index++) {
		if (XHls_resize_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHls_resize_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHls_resize_Initialize(XHls_resize *InstancePtr, u16 DeviceId) {
	XHls_resize_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHls_resize_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHls_resize_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

