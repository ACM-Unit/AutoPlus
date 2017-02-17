package autoplus.secure.service.impl;

import org.bytedeco.javacpp.opencv_core;
import org.bytedeco.javacv.FFmpegFrameGrabber;
import org.bytedeco.javacv.FrameGrabber;
import org.springframework.stereotype.Service;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

/**
 * Created by Admin on 15.07.2016.
 */
@Service
public class ImageGrabber {
    private String realPath;


    public void setRealPath(String realPath) {
        this.realPath = realPath;
    }


    public boolean graberImage() throws FrameGrabber.Exception, IOException {
        FFmpegFrameGrabber frameGrabber = new FFmpegFrameGrabber(realPath + "/starSource/");
        frameGrabber.start();
        opencv_core.IplImage i;
        i = frameGrabber.grab();
        BufferedImage bi = i.getBufferedImage();
        ImageIO.write(bi, "png", new File(realPath + "/starSource/.png"));
        frameGrabber.stop();
        BufferedImage img1 = ImageIO.read(new File(realPath + "/starSource.png"));
        BufferedImage img2 = ImageIO.read(new File(realPath + "/starSource/play.png"));
        BufferedImage joinedImg = joinBufferedImage(img1, img2);
        boolean success = ImageIO.write(joinedImg, "png", new File(realPath + "/starSource/screens.png"));
        return success;
    }
    public BufferedImage joinBufferedImage(BufferedImage img1, BufferedImage img2) {
        int wid = img1.getWidth()+img2.getWidth();
        int height = Math.max(img1.getHeight(),img2.getHeight());
        BufferedImage newImage = new BufferedImage(img1.getWidth(),img1.getHeight(), BufferedImage.TYPE_INT_ARGB);
        Graphics2D g2 = newImage.createGraphics();
        Color oldColor = g2.getColor();
        g2.setPaint(Color.WHITE);
        g2.fillRect(0, 0, img1.getWidth(),img1.getHeight());
        g2.setColor(oldColor);
        g2.drawImage(img1, null, 0, 0);
        g2.drawImage(img2, null, (img1.getWidth()-img2.getWidth())/2, (img1.getHeight()-img2.getHeight())/2);
        g2.dispose();
        return newImage;
    }
}
