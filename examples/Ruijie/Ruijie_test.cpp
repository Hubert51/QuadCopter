/*#include <opencv2/opencv.hpp>
#include <opencv2/tracking.hpp>
#include <opencv2/core/ocl.hpp>
#include <librealsense2/rs.hpp> // Include RealSense Cross Platform AP
#include "../wrappers/opencv/cv-helpers.hpp"
#include "opencv2/imgproc/imgproc.hpp"


 
using namespace cv;
using namespace std;
 
// Convert to string
#define SSTR( x ) static_cast< std::ostringstream & >( \
( std::ostringstream() << std::dec << x ) ).str()
 
int main(int argc, char **argv)
{
    // List of tracker types in OpenCV 3.4.1
    string trackerTypes[8] = {"BOOSTING", "MIL", "KCF", "TLD","MEDIANFLOW", "GOTURN", "MOSSE", "CSRT"};
    // vector <string> trackerTypes(types, std::end(types));
 
    // Create a tracker
    string trackerType = trackerTypes[2];
 
    Ptr<Tracker> tracker;
 
    // #if (CV_MINOR_VERSION < 3)
    // {
    //     tracker = Tracker::create(trackerType);
    // }
    // #else
    // {
        if (trackerType == "BOOSTING")
            tracker = TrackerBoosting::create();
        if (trackerType == "MIL")
            tracker = TrackerMIL::create();
        if (trackerType == "KCF")
            tracker = TrackerKCF::create();
        if (trackerType == "TLD")
            tracker = TrackerTLD::create();
        if (trackerType == "MEDIANFLOW")
            tracker = TrackerMedianFlow::create();
        if (trackerType == "GOTURN"))
            tracker = TrackerGOTURN::create();
        if (trackerType == "MOSSE")
            tracker = TrackerMOSSE::create();
        if (trackerType == "CSRT")
            tracker = TrackerCSRT::create();
    // }
    // #endif
    // Read video

    // Declare depth colorizer for pretty visualization of depth data
    rs2::colorizer color_map;

    // Declare RealSense pipeline, encapsulating the actual device and sensors
    rs2::pipeline pipe;
    // Start streaming with default recommended configuration
    pipe.start();

    using namespace cv;
    const auto window_name = "Display Image";
    namedWindow(window_name, WINDOW_AUTOSIZE);

    while (waitKey(1) < 0 )
    {
        rs2::frameset data = pipe.wait_for_frames(); // Wait for next set of frames from the camera
        rs2::frame depth = data.get_depth_frame().apply_filter(color_map);
        rs2::frame color_frame = data.get_color_frame();
        Mat color_mat = frame_to_mat(color_frame);


        // Query frame size (width and height)
        // const int w = depth.as<rs2::video_frame>().get_width();
        // const int h = depth.as<rs2::video_frame>().get_height();

        // Create OpenCV matrix of size (w,h) from the colorized depth data
        // Mat image(Size(w, h), CV_8UC3, (void*)depth.get_data(), Mat::AUTO_STEP);

        // Update the window with new data
        imshow(window_name, color_mat);
    }


    return 0;
























    // VideoCapture video("videos/chaplin.mp4");
     
    // // Exit if video is not opened
    // if(!video.isOpened())
    // {
    //     cout << "Could not read video file" << endl; 
    //     return 1; 
    // } 
 
    // // Read first frame 
    // Mat frame; 
    // bool ok = video.read(frame); 
 
    // // Define initial bounding box 
    // Rect2d bbox(287, 23, 86, 320); 
 
    // // Uncomment the line below to select a different bounding box 
    // // bbox = selectROI(frame, false); 
    // // Display bounding box. 
    // rectangle(frame, bbox, Scalar( 255, 0, 0 ), 2, 1 ); 
 
    // imshow("Tracking", frame); 
    // tracker->init(frame, bbox);
     
    // while(video.read(frame))
    // {     
    //     // Start timer
    //     double timer = (double)getTickCount();
         
    //     // Update the tracking result
    //     bool ok = tracker->update(frame, bbox);
         
    //     // Calculate Frames per second (FPS)
    //     float fps = getTickFrequency() / ((double)getTickCount() - timer);
         
    //     if (ok)
    //     {
    //         // Tracking success : Draw the tracked object
    //         rectangle(frame, bbox, Scalar( 255, 0, 0 ), 2, 1 );
    //     }
    //     else
    //     {
    //         // Tracking failure detected.
    //         putText(frame, "Tracking failure detected", Point(100,80), FONT_HERSHEY_SIMPLEX, 0.75, Scalar(0,0,255),2);
    //     }
         
    //     // Display tracker type on frame
    //     putText(frame, trackerType + " Tracker", Point(100,20), FONT_HERSHEY_SIMPLEX, 0.75, Scalar(50,170,50),2);
         
    //     // Display FPS on frame
    //     putText(frame, "FPS : " + SSTR(int(fps)), Point(100,50), FONT_HERSHEY_SIMPLEX, 0.75, Scalar(50,170,50), 2);
 
    //     // Display frame.
    //     imshow("Tracking", frame);
         
    //     // Exit if ESC pressed.
    //     int k = waitKey(1);
    //     if(k == 27)
    //     {
    //         break;
    //     }
 
    // }
}

*/


#include <stdio.h>
#include <iostream>
#include <string>
#include "opencv2/core.hpp"
#include "opencv2/features2d.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/calib3d.hpp"
#include "opencv2/xfeatures2d.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/imgproc/imgproc_c.h"

#include <opencv2/tracking.hpp>
#include <opencv2/core/ocl.hpp>

#include <librealsense2/rs.hpp> // Include RealSense Cross Platform AP
#include "../wrappers/opencv/cv-helpers.hpp"
#include "helper.hpp"

#include <unistd.h>
#include <time.h>
#include <math.h>


#include <vector>
#include <string>
#include <algorithm>    // std::max
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

using namespace cv;
using namespace cv::xfeatures2d;
using namespace std;
using namespace rs2;

void readme();

// void test_code(){
//     std::cout << "Initialising realsense context" << std::endl;

//     rs2::context rs2Ctx;

//     rs2::device rs2Dev;

     

//     resettingIntelRealsense = 0;

//     resetCompleteIntelRealsense = 0;

     

//     int gotDev = 0;

     

//     // Define a callback mechanism - to detect when the sensor has been reset

//     rs2Ctx.set_devices_changed_callback([&](rs2::event_information& info)

//     {

     

//     // loop thru all new devices - that is one that has been reset effectively

//     for (auto&& dev : info.get_new_devices())

//     {

//     std::string devName = "";

//     std::string devSerialNumber = "";

//     std::string devFirmware = "";

//     std::string devProdId = "";

//     devProdId = dev.get_info(RS2_CAMERA_INFO_PRODUCT_ID);

//     devSerialNumber = dev.get_info(RS2_CAMERA_INFO_SERIAL_NUMBER);

//     devName = dev.get_info(RS2_CAMERA_INFO_NAME);

     

//     if (devName == "Intel RealSense D415")

//     {

//     devFirmware = dev.get_info(RS2_CAMERA_INFO_FIRMWARE_VERSION);

//     }

//     if (devName == "Intel RealSense D435")

//     {

//     devFirmware = dev.get_info(RS2_CAMERA_INFO_FIRMWARE_VERSION);

//     }

//     std::cout << "RESET Dev: " << devName << " Ser: " << devSerialNumber << " Firmware: " << devFirmware << " ProdID " << devProdId << std::endl;

//     resetCompleteIntelRealsense = 1;

//     }

//     });

     

//     // interate thru the intel device context looking for intel sensors

//     // note that other devices like webcams can appear here too depending on their device type

//     for (auto&& dev : rs2Ctx.query_devices()) // Query the list of connected RealSense devices

//     {

//     std::string devName = "";

//     std::string devSerialNumber = "";

//     std::string devFirmware = "";

//     std::string devProdId = "";

//     devProdId = dev.get_info(RS2_CAMERA_INFO_PRODUCT_ID);

//     devSerialNumber = dev.get_info(RS2_CAMERA_INFO_SERIAL_NUMBER);

//     devName = dev.get_info(RS2_CAMERA_INFO_NAME);

     

//     if (gotDev == 0 && (devName == "Intel RealSense D415" || devName == "Intel RealSense D435"))

//     {

//     devFirmware = dev.get_info(RS2_CAMERA_INFO_FIRMWARE_VERSION);

//     // assume there is only one intel camera for now

     

//     // save the device for future use

//     rs2Dev = dev;

//     gotDev = 1;

//     }

//     std::cout << "System Dev: " << devName << " Ser: " << devSerialNumber << " Firmware: " << devFirmware << " ProdID " << devProdId << std::endl;

//     }

     

//     ////////////////////////////////////////////////////////////////

//     // if we have found a realsense sensor - force initialise it if required

//     if (gotDev == 1)

//     {

//     // reset the hardware device found during initial iteration thru context

//     rs2Dev.hardware_reset();

     

//     // wait for hardware to reset reset

//     resetCompleteIntelRealsense = 0;

//     int rs2WaitForReset = 1;

     

//     // pause until device is reset  -  not elegant but will do for testing

//     while (resetCompleteIntelRealsense == 0 && rs2WaitForReset < 9999999999)

//     {

//     rs2WaitForReset++;

//     }

//     }

     

//     if (gotDev == 0)

//     {

//     std::cout << "No Intel Realsense devices detected" << std::endl;

//     }
// }
int w;
int h;
char* img1_name;
char* img2_name;
void segfault_sigaction(int signal, siginfo_t *si, void *arg);
void frame_to_mat(const rs2::frame& f, Mat &color_mat );


int detect_object(vector<Point2f>& scene_corners, Mat img_object, Mat img_scene){

    //-- Step 1: Detect the keypoints using SURF Detector
    int minHessian = 400;

    Ptr<SURF> detector = SURF::create( minHessian );

    std::vector<KeyPoint> keypoints_object, keypoints_scene;

    detector->detect( img_object, keypoints_object );
    detector->detect( img_scene, keypoints_scene );

    //-- Draw keypoints
    Mat img_keypoints_object; Mat img_keypoints_scene;

    // drawKeypoints( img_object, keypoints_object, img_keypoints_object, Scalar::all(-1), DrawMatchesFlags::DEFAULT );
    // drawKeypoints( img_scene, keypoints_scene, img_keypoints_scene, Scalar::all(-1), DrawMatchesFlags::DEFAULT );

    //-- Show detected (drawn) keypoints
    // imshow("Keypoints 1", img_keypoints_object );
    // imshow("Keypoints 2", img_keypoints_scene );

    // waitKey(0);


    //-- Step 2: Calculate descriptors (feature vectors)
    Ptr<SURF> extractor = SURF::create();

    Mat descriptors_object, descriptors_scene;

    extractor->compute( img_object, keypoints_object, descriptors_object );
    extractor->compute( img_scene, keypoints_scene, descriptors_scene );

    //-- Step 3: Matching descriptor vectors using FLANN matcher
    FlannBasedMatcher matcher;
    std::vector< DMatch > matches;
    matcher.match( descriptors_object, descriptors_scene, matches );

    double max_dist = 0; double min_dist = 100;

    //-- Quick calculation of max and min distances between keypoints
    // for( int i = 0; i < descriptors_object.rows; i++ )
    // { 
    //     double dist = matches[i].distance;
    //     if( dist < min_dist ) min_dist = dist;
    //     if( dist > max_dist ) max_dist = dist;
    // }
    // printf("-- Max dist : %f \n", max_dist );
    // printf("-- Min dist : %f \n", min_dist );

    //-- Draw only "good" matches (i.e. whose distance is less than 3*min_dist )
    std::vector< DMatch > good_matches;
    std::sort (matches.begin(), matches.end()); // 12 32 45 71(26 33 53 80)
    for( int i = 0; i < descriptors_object.rows; i++ )
    { 
        if( matches[i].distance <  0.2/*2.75*min_dist*/ )
        { 
            good_matches.push_back( matches[i]); 
        }
        else {
            break;
        }
    }
    cout << "the size of the good_matches " << good_matches.size() << endl;
    if (good_matches.size() < 10) {
        return 0;
    }

    Mat img_matches;
    // drawMatches( img_object, keypoints_object, img_scene, keypoints_scene,
    //            good_matches, img_matches, Scalar::all(-1), Scalar::all(-1),
    //            vector<char>(), DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );

    drawMatches(img_object, keypoints_object, img_scene, keypoints_scene, 
                good_matches, img_matches);

    //-- Localize the object
    std::vector<Point2f> obj;
    std::vector<Point2f> scene;

    for( int i = 0; i < good_matches.size(); i++ )
    {
    //-- Get the keypoints from the good matches
        obj.push_back( keypoints_object[ good_matches[i].queryIdx ].pt );
        scene.push_back( keypoints_scene[ good_matches[i].trainIdx ].pt );
    }

    Mat H = findHomography( obj, scene, RANSAC );

    //-- Get the corners from the image_1 ( the object to be "detected" )
    std::vector<Point2f> obj_corners(4);
    obj_corners[0] = cvPoint(0,0); obj_corners[1] = cvPoint( img_object.cols, 0 );
    obj_corners[2] = cvPoint( img_object.cols, img_object.rows ); obj_corners[3] = cvPoint( 0, img_object.rows );



    perspectiveTransform( obj_corners, scene_corners, H);



    //-- Draw lines between the corners (the mapped object in the scene - image_2 )
    line( img_matches, scene_corners[0] + Point2f( img_object.cols, 0), scene_corners[1] + Point2f( img_object.cols, 0), Scalar(0, 255, 0), 4 );
    line( img_matches, scene_corners[1] + Point2f( img_object.cols, 0), scene_corners[2] + Point2f( img_object.cols, 0), Scalar( 0, 255, 0), 4 );
    line( img_matches, scene_corners[2] + Point2f( img_object.cols, 0), scene_corners[3] + Point2f( img_object.cols, 0), Scalar( 0, 255, 0), 4 );
    line( img_matches, scene_corners[3] + Point2f( img_object.cols, 0), scene_corners[0] + Point2f( img_object.cols, 0), Scalar( 0, 255, 0), 4 );

    //-- Show detected matches
    imshow( "Good Matches & Object detection", img_matches );

    waitKey(1);
    return 1;
}

float get_rotation_angle(float center_x, float center_y, float x, float y){
    double result, param, original;
    param = (center_y - y) / (x - center_x);
    result = atan(param) * 180 / 3.14159;
    return result;
}


void find_object(   rs2::pipeline &pipe,
                    rs2::frame &color_frame, 
                    Mat &color_mat,
                    std::vector<Point2f> &scene_corners,
                    Mat &img_object,
                    rs2::align &align_to,
                    Rect2d &bbox
                )
{
    while (1) {
        auto data = pipe.wait_for_frames();
        // Make sure the frames are spatially aligned
        data = align_to.process(data);
        color_frame = data.get_color_frame();
        frame_to_mat(color_frame, color_mat);
        if ( detect_object(scene_corners, img_object, color_mat) == 1) {
            break;
        }
    }
    // bbox = Rect2d(scene_corners[0].x-10 , 
    //             scene_corners[0].y , 
    //             min(scene_corners[2].x - scene_corners[0].x + 10, (float)(w-1)) , 
    //             min(scene_corners[2].y - scene_corners[0].y, (float)(h-1)) ) ; 
    bbox.x = min({scene_corners[0].x, scene_corners[1].x, scene_corners[2].x, scene_corners[3].x});
    bbox.y = min({scene_corners[0].y, scene_corners[1].y, scene_corners[2].y, scene_corners[3].y});
    float max_x = max({scene_corners[0].x, scene_corners[1].x, scene_corners[2].x, scene_corners[3].x});
    float max_y = max({scene_corners[0].y, scene_corners[1].y, scene_corners[2].y, scene_corners[3].y});    
    bbox.width = min(max_x - bbox.x , (float)(w-1)-bbox.x) ;
    bbox.height = min(max_y - bbox.y , (float)(h-1)-bbox.y) ;
}


void frame_to_mat(const rs2::frame& f, Mat &color_mat )
{
    using namespace cv;
    using namespace rs2;

    auto vf = f.as<video_frame>();
    const int w = vf.get_width();
    const int h = vf.get_height();

    color_mat = Mat(Size(w, h), CV_8UC3, (void*)f.get_data(), Mat::AUTO_STEP);
    cvtColor(color_mat, color_mat, CV_RGB2BGR);
    return;

    if (f.get_profile().format() == RS2_FORMAT_BGR8)
    {
        color_mat = Mat(Size(w, h), CV_8UC3, (void*)f.get_data(), Mat::AUTO_STEP);
    }
    else if (f.get_profile().format() == RS2_FORMAT_RGB8)
    {
        color_mat = Mat(Size(w, h), CV_8UC3, (void*)f.get_data(), Mat::AUTO_STEP);
        cvtColor(color_mat, color_mat, CV_RGB2BGR);
    }
    // else if (f.get_profile().format() == "RGB8")
    // {
    //     cout << "I am here" << endl;
    //     color_mat = Mat(Size(w, h), CV_8UC3, (void*)f.get_data(), Mat::AUTO_STEP);
    //     cvtColor(color_mat, color_mat, CV_RGB2BGR);
    // }
    else if (f.get_profile().format() == RS2_FORMAT_Z16)
    {
        color_mat = Mat(Size(w, h), CV_16UC1, (void*)f.get_data(), Mat::AUTO_STEP);
    }
    else if (f.get_profile().format() == RS2_FORMAT_Y8)
    {
        color_mat = Mat(Size(w, h), CV_8UC1, (void*)f.get_data(), Mat::AUTO_STEP);
    }

    throw std::runtime_error("Frame format is not supported yet!");
}


int main_func(){

    // test_code();
    struct sigaction sa;
    memset(&sa, 0, sizeof(struct sigaction));
    sigemptyset(&sa.sa_mask);
    sa.sa_sigaction = segfault_sigaction;
    sa.sa_flags   = SA_SIGINFO;
    sigaction(SIGSEGV, &sa, NULL);


    rs2::pipeline pipe;

    auto img_object = imread( img1_name,0);
    float src_angle = atan(img_object.rows / img_object.cols) * 180 / 3.14159;

    Mat img_scene = imread( img2_name,0 );
    cv::resize(img_object, img_object, cv::Size(), 0.15, 0.15);
    cv::resize(img_scene, img_scene, cv::Size(), 0.35, 0.35);
    if( !img_object.data || !img_scene.data )
    { 
        std::cout<< " --(!) Error reading images " << std::endl; 
        return -1; 
    }

    // =============== start the realsense ===========================
    // Declare RealSense pipeline, encapsulating the actual device and sensors

    // Start streaming with default recommended configuration
    // pipe.start();
    auto config = pipe.start();
    auto profile = config.get_stream(RS2_STREAM_COLOR)
                         .as<video_stream_profile>();
    rs2::align align_to(RS2_STREAM_COLOR);

    // ================ this is for tracker ============
    Ptr<Tracker> tracker;
    std::string trackerType = "BOOSTING";
    tracker = TrackerKCF::create();
    // ================================================

    // const auto window_name = "Display Image";
    // namedWindow(window_name, WINDOW_AUTOSIZE);

    // while (waitKey(1) < 0 )
    // {
    //     rs2::frameset data = pipe.wait_for_frames(); // Wait for next set of frames from the camera
    //     rs2::frame depth = data.get_depth_frame().apply_filter(color_map);
    //     rs2::frame color_frame = data.get_color_frame();
    //     Mat color_mat = frame_to_mat(color_frame);


    //     // Query frame size (width and height)
    //     // const int w = depth.as<rs2::video_frame>().get_width();
    //     // const int h = depth.as<rs2::video_frame>().get_height();

    //     // Create OpenCV matrix of size (w,h) from the colorized depth data
    //     // Mat image(Size(w, h), CV_8UC3, (void*)depth.get_data(), Mat::AUTO_STEP);

    //     // Update the window with new data
    //     imshow(window_name, color_mat);
    // }
    for (auto i = 0; i < 30; ++i) 
        pipe.wait_for_frames();

    rs2::frameset data = pipe.wait_for_frames(); // Wait for next set of frames from the camera
    data = align_to.process(data);
    rs2::frame color_frame = data.get_color_frame();
    Mat color_mat;
    frame_to_mat(color_frame, color_mat);

    // =============================================================
    // get the size of the frame:
    auto vf = color_frame.as<video_frame>();
    w = vf.get_width();
    h = vf.get_height();
    cout << string(30, '=') << endl;
    cout << "width is " << w << "; height is " << h << endl;
    cout << string(30, '=') << endl;
    // =============================================================


    // the function will output four four corners of the object inside the 
    // the scene frame
    std::vector<Point2f> scene_corners(4);
    // while (1) {
    //     data = pipe.wait_for_frames();
    //     // Make sure the frames are spatially aligned
    //     data = align_to.process(data);
    //     color_frame = data.get_color_frame();
    //     color_mat = frame_to_mat(color_frame);
    //     if ( detect_object(scene_corners, img_object, color_mat) == 1) {
    //         break;
    //     }
    // }
    Rect2d bbox = Rect2d(0,0,0,0);
    find_object(pipe, color_frame, color_mat, scene_corners, img_object,align_to, bbox);


    cout << "Initial " << scene_corners[0].x <<" " << scene_corners[0].y << "  "
               <<  scene_corners[2].x << "  " << scene_corners[2].y << endl;
    

    cout << "box's width "  << bbox.width << " box's height" << bbox.height << endl;
    // rectangle(color_mat, bbox, Scalar( 255, 0, 0 ), 2, 1 ); 

    // cout << "after the rectangle" << endl;

 
    // imshow("Tracking", color_mat); 
    // cout << "before the tracker" << endl;

    // imshow( "Good Matches & Object detection", color_mat );
    // waitKey(4000);

    tracker->init(color_mat, bbox);
    cout << " create tracker successfully" << endl;
    float angle;


    clock_t tStart = clock();
    int counter = 0;
    // for (int i = 0; i < 300; ++i)
    while(1)
    {    
        counter += 1;
        // cout << "inside the while loop" << endl;
        data = pipe.wait_for_frames();
        // Make sure the frames are spatially aligned
        data = align_to.process(data);

        color_frame = data.get_color_frame();
        auto depth_frame = data.get_depth_frame();



        // auto sensor = pipe.get_device().first<rs2::depth_sensor>();
        // auto scale = sensor.get_depth_scale();
        // cout << "result " << scale << endl;

        // If we only received new depth frame, 
        // but the color did not update, continue
        // static int last_frame_number = 0;
        // if (color_frame.get_frame_number() == last_frame_number) continue;
        // last_frame_number = color_frame.get_frame_number();

        // Convert RealSense frame to OpenCV matrix:
        frame_to_mat(color_frame, color_mat);
        // cv::resize(color_mat, color_mat, cv::Size(), 0.6, 0.6);
        // Mat 

        // Start timer
        double timer = (double)getTickCount();
        // cout << "before try" << endl;
        // Update the tracking result
        try{
            if (counter%20 == 0){
                find_object(pipe, color_frame, color_mat, scene_corners, img_object, align_to, bbox);
                tracker = TrackerKCF::create();
                tracker->init(color_mat, bbox);
            }

            
            else  {
                bool ok = 1;
                try{
                    cout << bbox.x << bbox.y << " " << bbox.width << bbox.height << endl;
                    if(color_mat.rows==0 || color_mat.cols==0){
                        cout << "1111111111111111111" << endl;
                        ok = 0;
                    }
                    else
                        ok = tracker->update(color_mat, bbox);
                }
                catch(...){
                    cout << "memory" << endl;
                }
                // // Calculate Frames per second (FPS)
                float fps = getTickFrequency() / ((double)getTickCount() - timer);
                
                // ======================================================
                // shopw the box on the image
                // ======================================================
                if (ok)
                {
                    // Tracking success : Draw the tracked object
                    rectangle(color_mat, bbox, Scalar( 255, 0, 0 ), 2, 1 );
                    cout << "tracking successfully, FPS is " << fps << endl;
                }
                else
                {
                    // Tracking failure detected.
                    find_object(pipe, color_frame, color_mat, scene_corners, img_object, align_to, bbox);
                    tracker = TrackerKCF::create();
                    tracker->init(color_mat, bbox);
                    putText(color_mat, "Tracking failure detected", Point(100,80), FONT_HERSHEY_SIMPLEX, 0.75, Scalar(0,0,255),2);

                    // detect_object(scene_corners, img_object, color_mat);
                    // Rect2d bbox(scene_corners[0].x-10 , 
                    //             scene_corners[0].y , 
                    //             min(scene_corners[2].x - scene_corners[0].x + 10, (float) w-1) , 
                    //             min(scene_corners[2].y - scene_corners[0].y,(float) h-1)) ; 
                }
            }
        }

        catch(std::exception& e){
            cout << e.what() << endl;
            cout << "memory error " << endl;
        }
        float center_x = bbox.x + 0.5*bbox.width;
        float center_y = bbox.y + 0.5*bbox.height;
         
        // Display tracker type on frame
        // putText(color_mat, trackerType + " Tracker", Point(100,20), FONT_HERSHEY_SIMPLEX, 0.75, Scalar(50,170,50),2);
         
        // // Display FPS on frame
        // putText(color_mat, "FPS : " + int(fps), Point(100,50), FONT_HERSHEY_SIMPLEX, 0.75, Scalar(50,170,50), 2);
 
        // =====================================================
        // Display frame.
        imshow("Tracking", color_mat);
         
        // // Exit if ESC pressed.
        int k = waitKey(1);
        if(k == 27)
        {
            break;
        }


        // ======================================================
        // USE OBJECT DETECTION TO TRACK THE OBJECT
        // ======================================================
        // detect_object(scene_corners, img_object, color_mat);
        // float center_x =  (scene_corners[0].x +scene_corners[2].x)/2;
        // float center_y = (scene_corners[0].y +scene_corners[2].y)/2;
        // // auto test = rs2::depth_frame::depth_frame(&depth_frame);
        float dist = depth_frame.get_distance( (int)center_x, (int)center_y);

        // angle = get_rotation_angle(center_x, center_y, scene_corners[1].x, scene_corners[1].y);
        // cout << "original angle is " << src_angle << "now angle is " << angle << endl;

        // cout << center_x << "  "<< center_y << endl;
        // cout << "distance " << dist << endl;
        // cout << "Normal" << endl;
        cout << "box's width "  << bbox.width << " box's height" << bbox.height << endl;


    }
    printf("time taken: %.2fs\n", (double) (clock() - tStart)/CLOCKS_PER_SEC);


    return 0;
}


void segfault_sigaction(int signal, siginfo_t *si, void *arg)
{
    printf("Caught segfault at address %p\n", si->si_addr);
    main_func();
    // exit(0);
}


void test_optial_flow(){
    rs2::pipeline pipe;
    auto config = pipe.start();
    auto profile = config.get_stream(RS2_STREAM_COLOR)
                         .as<video_stream_profile>();
    rs2::align align_to(RS2_STREAM_COLOR);
    for (auto i = 0; i < 30; ++i) 
        pipe.wait_for_frames();

    rs2::frameset data = pipe.wait_for_frames(); // Wait for next set of frames from the camera
    data = align_to.process(data);
    rs2::frame color_frame = data.get_color_frame();
    Mat prevFrame, nextFrame;
    frame_to_mat(color_frame, prevFrame);
    cvtColor(prevFrame, prevFrame, CV_BGR2GRAY);


    while(1){
        data = pipe.wait_for_frames();
        // Make sure the frames are spatially aligned
        data = align_to.process(data);
        color_frame = data.get_color_frame(); 
        frame_to_mat(color_frame, nextFrame);
        cvtColor(nextFrame, nextFrame, CV_BGR2GRAY);
        
        Point2f point;
        point = optical_flow(prevFrame, nextFrame) ;

        prevFrame = nextFrame;
        // nextFrame = NULL;
    }

}




/** @function main */
int main( int argc, char** argv )
{
    rs2::context ctx;
    auto list = ctx.query_devices();
    rs2::device dev=list[0];
    dev.hardware_reset();
    sleep(5);
    test_optial_flow();
    if( argc != 3 ) 
    { 
        cout << "error input, should use ./Ruijie_test img1  img2" << endl;
        return -1; 
    } 



    img1_name = argv[1];
    img2_name = argv[2];
    main_func();
    return 0;
}

