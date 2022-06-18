#include "hls_opencv.h"
#include "head.h"
#include <iostream>
using namespace std;

int main(){
	CvSize dst_size;
	dst_size.height=RESIZE_HEIGHT;
	dst_size.width=RESIZE_WIDTH;

	IplImage *src=cvLoadImage("src.jpg");
	IplImage *dst=cvCreateImage(dst_size,src->depth,src->nChannels);

	AXI_STREAM axi_src,axi_dst;
	IplImage2AXIvideo(src,axi_src);

	hls_preprocess(axi_src,axi_dst);

	AXIvideo2IplImage(axi_dst,dst);
	cvSaveImage("dst.jpg",dst);
	return 0;
}
