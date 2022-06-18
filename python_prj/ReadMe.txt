该文件夹为Python模型训练与量化的工程

一些零碎的说明：
在github上面搜索：ultralytics_yolov3能够找到该project的出处

model files文件夹包括基于yolov3tiny的口罩识别和头盔识别两个模型，_quant后缀代表的是INT8量化后的模型。
口罩识别与头盔识别的数据集都来自kaggle
口罩识别数据集：https://www.kaggle.com/andrewmvd/face-mask-detection
头盔识别数据集：https://www.kaggle.com/savanagrawal/helmet-detection-yolov3

根目录有yolov3和yolov3tiny的官方模型

如果要训练新模型，运行根目录的tran.py脚本，例如
python train.py --img 640 --batch 16 --epochs 100 --data data/facemask.yaml --weights yolov3-tiny.pt --nosave --cache --cfg models/yolov3-tiny-facemask.yaml
如果要用电脑的摄像头去测试一个模型，运行根目录的detect.py脚本，例如
python detect.py --img 416 --source 0 --weights yolov3tiny_facemask.pt

yolov3tiny_quant.py是我自己写的可以实现模型量化的module