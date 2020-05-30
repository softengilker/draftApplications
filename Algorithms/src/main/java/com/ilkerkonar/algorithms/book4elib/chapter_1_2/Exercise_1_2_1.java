package com.ilkerkonar.algorithms.book4elib.chapter_1_2;

import com.ilkerkonar.algorithms.util.book4elib.*;

import java.util.ArrayList;
import java.util.List;

public class Exercise_1_2_1 {

    public static void main(String[] args) {

        System.out.println( "Enter number of the points: " );
        int pointNumber = StdIn.readInt();

        // Draw an area
        StdDraw.setCanvasSize(800, 800);
        StdDraw.setPenRadius(0.01);
        StdDraw.setPenColor(StdDraw.BLUE);
        StdDraw.setXscale(0, 200);
        StdDraw.setYscale(0, 200);

        // Generate points and draw them
        Point2D[] points = new Point2D[pointNumber];
        for (int i = 0; i < pointNumber; i++ ) {
            Point2D point = new Point2D(StdRandom.uniform(200), StdRandom.uniform(200));
            point.draw();
            points[i] = point;
        }

        Point2D p1 = points[0];
        Point2D p2 = points[1];
        double closestDistance = 1000.0d;

        // Find out the closest pair of points
        for (int i = 0; i < pointNumber; i++ ) {
            for (int j = i + 1; j < pointNumber; j++ ) {
                double distance = points[i].distanceTo(points[j]);
                if ( distance < closestDistance ) {
                    closestDistance = distance;
                    p1 = points[i];
                    p2 = points[j];
                }
            }
        }

        // Mark the closest pairs
        StdDraw.setPenRadius(0.02);
        StdDraw.setPenColor(StdDraw.RED);
        p1.draw();
        p2.draw();
    }
}
