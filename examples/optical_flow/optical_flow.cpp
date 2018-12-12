#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/video/video.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/types_c.h>
#include <iostream>
#include <cstdio>

using namespace std;
using namespace cv;
int main()
{
    Mat I1;
    Mat I2;
    vector<Point2f> features;
    vector<Point2f> features_after;
    vector<uchar> status;
    vector<float> err;
    int maxCout = 300;//定义最大个数
    double minDis = 10;//定义最小距离
    double qLevel = 0.01;//定义质量水平
    //读取两个图像---相邻帧
    I1 = imread("17.png",0);//读取为灰度图像
    I2 = imread("18.png",0);
    //检测第一帧的特征点
    goodFeaturesToTrack(I1,features,maxCout,qLevel,minDis);
    //计算出第二帧的特征点
    calcOpticalFlowPyrLK(I1,I2,features,features_after,status,err);
    //判别哪些属于运动的特征点
    int k = 0;
    for(int i=0;i<features_after.size();i++)
    {
        //状态要是1，并且坐标要移动下的那些点
        if(status[i]&&((abs(features[i].x-features_after[i].x)+
                        abs(features[i].y-features_after[i].y))>4))
        {
            features_after[k++] = features_after[i];
        }
    }
    features_after.resize(k);//截取
    cout<<k<<endl;
    float x_shift = 0;
    float y_shift = 0;

    for(int i=0;i<features_after.size();i++)
    {
        //将特征点画一个小圆出来--粗细为2
        circle(I1,features_after[i],3,Scalar(255),2);
        x_shift += features_after[i].x -  features[i].x;
        y_shift += features_after[i].y -  features[i].y;
    }
    cout << x_shift/features_after.size() << " " << y_shift/features_after.size() << endl;
//    imshow("features",I1);
//    waitKey(0);
    return 0;
}
