package com.util;


import org.bytedeco.javacpp.opencv_core;
import org.bytedeco.javacpp.opencv_highgui;

public class Fetch {
    /**
     * 获取指定视频的帧并保存为图片至指定目录
     *
     * @param videofile 源视频文件路径
     * @param framefile 截取帧的图片存放路径
     * @throws Exception
     */
    public static void fetchFrame(String videofile, String framefile)
            throws Exception {
        opencv_highgui.CvCapture capture = opencv_highgui.cvCreateFileCapture(videofile);

        //帧率
        double fps =  opencv_highgui.cvGetCaptureProperty(capture, opencv_highgui.CV_CAP_PROP_FPS);
        // System.out.println("帧率:"+fps);
        //int fps = 1;
        opencv_core.IplImage frame = null;
        double pos1 = 0;
        double rootCount = 0;
        int filename =1;
        while (true) {
            frame = opencv_highgui.cvQueryFrame(capture);
            if (frame.ID()==31)
                break;
            rootCount = fps*2;//控制秒数
            while (rootCount > 0) {
                frame = opencv_highgui.cvQueryFrame(capture);
                rootCount--;
            }
            pos1 = opencv_highgui.cvGetCaptureProperty(capture, opencv_highgui.CV_CAP_PROP_POS_FRAMES);
            System.out.println(frame.imageData());
            opencv_highgui.cvSaveImage("D:/img/" + String.valueOf(filename++) + ".jpg", frame);
        }
        System.out.print(String.valueOf(filename)+"幅图片：保存成功");
        opencv_highgui.cvReleaseCapture(capture);

    }

    public static void main(String[] args) throws Exception {
        System.out.println(System.getProperty("java.library.path"));
        Fetch t = new Fetch();
        t.fetchFrame("D:\\\\论文\\\\电子竞技计算机视觉\\\\testvideo\\\\8-10_HN1--982542057_01.mp4", "");
    }
}
