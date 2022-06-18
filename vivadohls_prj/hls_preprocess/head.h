#ifndef _OPERATION_
#define _OPERATION_
#include "hls_video.h"
#include "hls_math.h"
#include <ap_fixed.h>
#include <ap_int.h>

#define MAX_WIDTH 			1280
#define MAX_HEIGHT			720

#define RESIZE_WIDTH 		418
#define RESIZE_HEIGHT		258

typedef ap_axiu<32,1,1,1> Stream_Type;
typedef hls::stream<Stream_Type>	AXI_STREAM;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC4> IMAGE_SRC;
typedef hls::Mat<RESIZE_HEIGHT, RESIZE_WIDTH, HLS_8UC4> IMAGE_DST;
typedef hls::Scalar<4, unsigned char> PIXEL_C4;

void hls_preprocess(AXI_STREAM &video_src,AXI_STREAM &video_dst);
void Downsample(IMAGE_SRC &src,IMAGE_DST &dst);
void Convert(IMAGE_DST &src,IMAGE_DST &dst);

#endif
