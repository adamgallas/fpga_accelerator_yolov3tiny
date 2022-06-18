#ifndef _OPERATION_
#define _OPERATION_
#include "hls_video.h"
#include <ap_int.h>
#define MAX_WIDTH  1280
#define MAX_HEIGHT 720
#define BLANK 26
typedef ap_axiu<32,1,1,1> Stream_Type;
typedef hls::stream<Stream_Type>	AXI_STREAM;
typedef hls::Mat<MAX_HEIGHT, MAX_WIDTH, HLS_8UC4> IMAGE_C4;
typedef hls::Scalar<4, unsigned char> PIXEL_C4;

const uint16_t letter[27][32]={
#include "font.h"
};

void hls_rect(
		AXI_STREAM &video_src,
		AXI_STREAM &video_dst,
		uint16_t xleft_,uint16_t xright_,
		uint16_t ytop_,uint16_t ydown_,
		uint8_t color1,uint8_t color2,uint8_t color3,
		uint8_t char1,uint8_t char2,uint8_t char3,
		uint8_t char4,uint8_t char5,uint8_t char6);

void Add_Rectangle(
		IMAGE_C4 &src,
		IMAGE_C4 &dst,
		uint16_t xleft,uint16_t xright,uint16_t ytop,uint16_t ydown,
		uint8_t color1,uint8_t color2,uint8_t color3);
void Add_Char1(
		IMAGE_C4 &src,
		IMAGE_C4 &dst,
		uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3
		);
void Add_Char2(
		IMAGE_C4 &src,
		IMAGE_C4 &dst,
		uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3
		);
void Add_Char3(
		IMAGE_C4 &src,
		IMAGE_C4 &dst,
		uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3
		);
void Add_Char4(
		IMAGE_C4 &src,
		IMAGE_C4 &dst,
		uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3
		);
void Add_Char5(
		IMAGE_C4 &src,
		IMAGE_C4 &dst,
		uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3
		);
void Add_Char6(
		IMAGE_C4 &src,
		IMAGE_C4 &dst,
		uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3
		);
#endif
