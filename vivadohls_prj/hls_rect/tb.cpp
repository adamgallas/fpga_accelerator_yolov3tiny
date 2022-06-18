#include "hls_opencv.h"
#include "head.h"
#include <iostream>
using namespace std;
#define BLANK 26
int main(){
	CvSize dst_size;
	dst_size.height=MAX_HEIGHT;
	dst_size.width=MAX_WIDTH;

	IplImage *src=cvLoadImage("src.jpg");
	IplImage *dst=cvCreateImage(dst_size,src->depth,src->nChannels);

	AXI_STREAM axi_src,axi_dst;
	IplImage2AXIvideo(src,axi_src);

	hls_rect(axi_src,axi_dst,0,0,0,0,128,128,0,0,1,2,BLANK,BLANK,BLANK);

	AXIvideo2IplImage(axi_dst,dst);
	cvSaveImage("dst.jpg",dst);
	return 0;
}
