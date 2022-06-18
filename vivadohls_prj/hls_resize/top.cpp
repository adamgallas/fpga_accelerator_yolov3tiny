#include "head.h"
void hls_resize(AXI_STREAM &video_src,AXI_STREAM &video_dst){

#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE axis port=video_src
#pragma HLS INTERFACE axis port=video_dst

	IMAGE_SRC src_img(MAX_HEIGHT,MAX_WIDTH);
	IMAGE_DST dst_img(RESIZE_HEIGHT,RESIZE_WIDTH);

#pragma HLS dataflow
	hls::AXIvideo2Mat(video_src,src_img);
	Downsample(src_img,dst_img);
	hls::Mat2AXIvideo(dst_img,video_dst);
	return;
}
void Downsample(IMAGE_SRC &src,IMAGE_DST &dst){
	PIXEL_C4 pix;
	ROWS:
	for(uint16_t i=0; i<MAX_HEIGHT; i++){
		COLS:
		for(uint16_t j=0; j<MAX_WIDTH; j++){
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
			src>>pix;
			if((222<=j&&j<(222+836))&&(102<=i&&i<(102+516))){
				if((i&0x0001)&&(j&0x0001)){
					dst<<pix;
				}
			}
		}
	}
	return;
}

