// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhls_preprocess.h"

extern XHls_preprocess_Config XHls_preprocess_ConfigTable[];

XHls_preprocess_Config *XHls_preprocess_LookupConfig(u16 DeviceId) {
	XHls_preprocess_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHLS_PREPROCESS_NUM_INSTANCES; Index++) {
		if (XHls_preprocess_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHls_preprocess_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHls_preprocess_Initialize(XHls_preprocess *InstancePtr, u16 DeviceId) {
	XHls_preprocess_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHls_preprocess_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHls_preprocess_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

