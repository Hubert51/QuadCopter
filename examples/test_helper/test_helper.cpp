

#include <opencv2/highgui/highgui.hpp>
#include <librealsense2/rs.hpp> // Include RealSense Cross Platform AP
//#include "../wrappers/opencv/cv-helpers.hpp"
#include "helper.hpp"
#include <unistd.h>
#include <string>
#include <time.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/video/video.hpp>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/types_c.h>
#include <iostream>
#include <cstdio>

using namespace std;
using namespace cv;


void frame_to_mat(const rs2::frame& f, Mat &color_mat ) {
    using namespace cv;
    using namespace rs2;

    auto vf = f.as<video_frame>();
    const int w = vf.get_width();
    const int h = vf.get_height();

    color_mat = Mat(Size(w, h), CV_8UC3, (void *) f.get_data(), Mat::AUTO_STEP);
    cvtColor(color_mat, color_mat, COLOR_RGB2BGR);
}

/** @function main */
int main( int argc, char** argv )
{
    rs2::context ctx;
    auto list = ctx.query_devices();
    rs2::device dev=list[0];
    dev.hardware_reset();
    sleep(5);

    rs2::pipeline pipe;
    auto config = pipe.start();
    rs2::align align_to(RS2_STREAM_COLOR);
    for (auto i = 0; i < 30; ++i)
        pipe.wait_for_frames();


    // take some photos
    for (int i = 0; i <5 ; ++i) {
        rs2::frameset data = pipe.wait_for_frames(); // Wait for next set of frames from the camera
        data = align_to.process(data);
        rs2::frame color_frame = data.get_color_frame();
        Mat color_mat;
        frame_to_mat(color_frame, color_mat);
        stringstream s;
        s << "chessboard" << i  << ".png";
        string name = s.str();
        imshow("chessboard", color_mat);
        waitKey(0);
        imwrite( name, color_mat );

        sleep(5);
    }


    return 0;
}