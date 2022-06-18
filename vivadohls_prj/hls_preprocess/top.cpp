#include "head.h"
const unsigned char quant_table[]={
#include "IFM_QUANT_TABLE.h"
};

void hls_preprocess(AXI_STREAM &video_src,AXI_STREAM &video_dst){
#pragma HLS INTERFACE s_axilite port=return
#pragma HLS INTERFACE axis port=video_src
#pragma HLS INTERFACE axis port=video_dst

	IMAGE_SRC src_img(MAX_HEIGHT,MAX_WIDTH);
	IMAGE_DST dst_img(RESIZE_HEIGHT,RESIZE_WIDTH);
	IMAGE_DST ifm_img(RESIZE_HEIGHT,RESIZE_WIDTH);

#pragma HLS dataflow
	hls::AXIvideo2Mat(video_src,src_img);
	Downsample(src_img,dst_img);
	Convert(dst_img,ifm_img);
	hls::Mat2AXIvideo(ifm_img,video_dst);
	return;
}
void Convert(IMAGE_DST &src,IMAGE_DST &dst){
	PIXEL_C4 pix_in;
	PIXEL_C4 pix_out;

	ROWS:
	for(uint16_t i=0; i<RESIZE_HEIGHT; i++){
		COLS:
		for(uint16_t j=0; j<RESIZE_WIDTH; j++){
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1
			src>>pix_in;
			pix_out.val[0]=quant_table[pix_in.val[0]];
			pix_out.val[1]=quant_table[pix_in.val[1]];
			pix_out.val[2]=quant_table[pix_in.val[2]];
			dst<<pix_out;
		}
	}
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

