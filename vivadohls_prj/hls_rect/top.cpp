#include "head.h"
const PIXEL_C4 whitepix(255,255,255);
void hls_rect(
		AXI_STREAM &video_src,
		AXI_STREAM &video_dst,
		uint16_t xleft_,uint16_t xright_,
		uint16_t ytop_,uint16_t ydown_,
		uint8_t color1,uint8_t color2,uint8_t color3,
		uint8_t char1,uint8_t char2,uint8_t char3,
		uint8_t char4,uint8_t char5,uint8_t char6){

#pragma HLS INTERFACE s_axilite port=xleft_
#pragma HLS INTERFACE s_axilite port=xright_
#pragma HLS INTERFACE s_axilite port=ytop_
#pragma HLS INTERFACE s_axilite port=ydown_
#pragma HLS INTERFACE s_axilite port=char1
#pragma HLS INTERFACE s_axilite port=char2
#pragma HLS INTERFACE s_axilite port=char3
#pragma HLS INTERFACE s_axilite port=char4
#pragma HLS INTERFACE s_axilite port=char5
#pragma HLS INTERFACE s_axilite port=char6
#pragma HLS INTERFACE s_axilite port=color1
#pragma HLS INTERFACE s_axilite port=color2
#pragma HLS INTERFACE s_axilite port=color3
#pragma HLS INTERFACE s_axilite port=return

#pragma HLS INTERFACE axis port=video_src
#pragma HLS INTERFACE axis port=video_dst

	IMAGE_C4 rgb_img(MAX_HEIGHT,MAX_WIDTH);
	IMAGE_C4 output_img(MAX_HEIGHT,MAX_WIDTH);
	IMAGE_C4 letter_img_1(MAX_HEIGHT,MAX_WIDTH);
	IMAGE_C4 letter_img_2(MAX_HEIGHT,MAX_WIDTH);
	IMAGE_C4 letter_img_3(MAX_HEIGHT,MAX_WIDTH);
	IMAGE_C4 letter_img_4(MAX_HEIGHT,MAX_WIDTH);
	IMAGE_C4 letter_img_5(MAX_HEIGHT,MAX_WIDTH);
	IMAGE_C4 letter_img_6(MAX_HEIGHT,MAX_WIDTH);

	uint16_t ch1x=xleft_;
	uint16_t ch2x=xleft_+32;
	uint16_t ch3x=xleft_+64;
	uint16_t ch4x=xleft_+96;
	uint16_t ch5x=xleft_+128;
	uint16_t ch6x=xleft_+160;

	uint16_t chy=ytop_;

#pragma HLS dataflow
	hls::AXIvideo2Mat(video_src,rgb_img);
	Add_Rectangle(rgb_img,output_img,xleft_,xright_,ytop_,ydown_,color1,color2,color3);
	Add_Char1(output_img,letter_img_1,ch1x,chy,char1,color1,color2,color3);
	Add_Char2(letter_img_1,letter_img_2,ch2x,chy,char2,color1,color2,color3);
	Add_Char3(letter_img_2,letter_img_3,ch3x,chy,char3,color1,color2,color3);
	Add_Char4(letter_img_3,letter_img_4,ch4x,chy,char4,color1,color2,color3);
	Add_Char5(letter_img_4,letter_img_5,ch5x,chy,char5,color1,color2,color3);
	Add_Char6(letter_img_5,letter_img_6,ch6x,chy,char6,color1,color2,color3);
	hls::Mat2AXIvideo(letter_img_6,video_dst);
	return;
}
void Add_Rectangle(
		IMAGE_C4 &src,
		IMAGE_C4 &dst,
		uint16_t xleft,uint16_t xright,uint16_t ytop,uint16_t ydown,
		uint8_t color1,uint8_t color2,uint8_t color3){
	PIXEL_C4 pix1;
	PIXEL_C4 markpix(color1,color2,color3);
	ROWS:
	for(uint16_t i=0; i<MAX_HEIGHT; i++){
		COLS:
		for(uint16_t j=0; j<MAX_WIDTH; j++){
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
			src>>pix1;
			if(
				(((xleft<=j)&&(j<=xright))&&((i>=ytop&&i<=ytop+4)||(i>=ydown&&i<=ydown+4)))||
				(((ytop<=i)&&(i<=ydown+4))&&((j>=xleft&&j<=xleft+4)||(j>=xright&&j<=xright+4)))
				){
				pix1=markpix;
			}
			dst<<pix1;
		}
	}
	return;
}
void Add_Char1(
		IMAGE_C4 &src,IMAGE_C4 &dst,uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3){
	PIXEL_C4 pix1;
	PIXEL_C4 markpix(color1,color2,color3);
	uint16_t xos,yos;
	ap_uint<16> mask;
	ROWS:
	for(uint16_t i=0; i<MAX_HEIGHT; i++){
		COLS:
		for(uint16_t j=0; j<MAX_WIDTH; j++){
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
			src>>pix1;
			if(chr!=BLANK){
				if(y<=i&&i<y+16*4){
					yos=(i-y)>>1;
					mask=letter[chr][yos];
					if(x<=j&&j<x+8*4){
						xos=(j-x)>>1;
						if(mask[xos]) pix1=markpix;
						else pix1=whitepix;
					}
				}
			}
			dst<<pix1;
		}
	}
	return;
}
void Add_Char2(
		IMAGE_C4 &src,IMAGE_C4 &dst,uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3){
	PIXEL_C4 pix1;
	PIXEL_C4 markpix(color1,color2,color3);
	uint16_t xos,yos;
	ap_uint<16> mask;
	ROWS:
	for(uint16_t i=0; i<MAX_HEIGHT; i++){
		COLS:
		for(uint16_t j=0; j<MAX_WIDTH; j++){
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
			src>>pix1;
			if(chr!=BLANK){
				if(y<=i&&i<y+16*4){
					yos=(i-y)>>1;
					mask=letter[chr][yos];
					if(x<=j&&j<x+8*4){
						xos=(j-x)>>1;
						if(mask[xos]) pix1=markpix;
						else pix1=whitepix;
					}
				}
			}
			dst<<pix1;
		}
	}
	return;
}
void Add_Char3(
		IMAGE_C4 &src,IMAGE_C4 &dst,uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3){
	PIXEL_C4 pix1;
	PIXEL_C4 markpix(color1,color2,color3);
	uint16_t xos,yos;
	ap_uint<16> mask;
	ROWS:
	for(uint16_t i=0; i<MAX_HEIGHT; i++){
		COLS:
		for(uint16_t j=0; j<MAX_WIDTH; j++){
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
			src>>pix1;
			if(chr!=BLANK){
				if(y<=i&&i<y+16*4){
					yos=(i-y)>>1;
					mask=letter[chr][yos];
					if(x<=j&&j<x+8*4){
						xos=(j-x)>>1;
						if(mask[xos]) pix1=markpix;
						else pix1=whitepix;
					}
				}
			}
			dst<<pix1;
		}
	}
	return;
}
void Add_Char4(
		IMAGE_C4 &src,IMAGE_C4 &dst,uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3){
	PIXEL_C4 pix1;
	PIXEL_C4 markpix(color1,color2,color3);
	uint16_t xos,yos;
	ap_uint<16> mask;
	ROWS:
	for(uint16_t i=0; i<MAX_HEIGHT; i++){
		COLS:
		for(uint16_t j=0; j<MAX_WIDTH; j++){
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
			src>>pix1;
			if(chr!=BLANK){
				if(y<=i&&i<y+16*4){
					yos=(i-y)>>1;
					mask=letter[chr][yos];
					if(x<=j&&j<x+8*4){
						xos=(j-x)>>1;
						if(mask[xos]) pix1=markpix;
						else pix1=whitepix;
					}
				}
			}
			dst<<pix1;
		}
	}
	return;
}
void Add_Char5(
		IMAGE_C4 &src,IMAGE_C4 &dst,uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3){
	PIXEL_C4 pix1;
	PIXEL_C4 markpix(color1,color2,color3);
	uint16_t xos,yos;
	ap_uint<16> mask;
	ROWS:
	for(uint16_t i=0; i<MAX_HEIGHT; i++){
		COLS:
		for(uint16_t j=0; j<MAX_WIDTH; j++){
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
			src>>pix1;
			if(chr!=BLANK){
				if(y<=i&&i<y+16*4){
					yos=(i-y)>>1;
					mask=letter[chr][yos];
					if(x<=j&&j<x+8*4){
						xos=(j-x)>>1;
						if(mask[xos]) pix1=markpix;
						else pix1=whitepix;
					}
				}
			}
			dst<<pix1;
		}
	}
	return;
}
void Add_Char6(
		IMAGE_C4 &src,IMAGE_C4 &dst,uint16_t x,uint16_t y,uint8_t chr,
		uint8_t color1,uint8_t color2,uint8_t color3){
	PIXEL_C4 pix1;
	PIXEL_C4 markpix(color1,color2,color3);
	uint16_t xos,yos;
	ap_uint<16> mask;
	ROWS:
	for(uint16_t i=0; i<MAX_HEIGHT; i++){
		COLS:
		for(uint16_t j=0; j<MAX_WIDTH; j++){
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
			src>>pix1;
			if(chr!=BLANK){
				if(y<=i&&i<y+16*4){
					yos=(i-y)>>1;
					mask=letter[chr][yos];
					if(x<=j&&j<x+8*4){
						xos=(j-x)>>1;
						if(mask[xos]) pix1=markpix;
						else pix1=whitepix;
					}
				}
			}
			dst<<pix1;
		}
	}
	return;
}
