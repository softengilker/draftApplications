package com.ilkerkonar.algorithms.book4elib.chapter_1_2;

import com.ilkerkonar.algorithms.util.book4elib.*;

public class Exercise_1_2_3 {
    public static void main(String[] args) {

        System.out.println( "Enter number of the intervals: " );
        int intervalCount = StdIn.readInt();
        System.out.println( "Enter min value of the interval:" );
        double min = StdIn.readDouble();
        System.out.println( "Enter max value of the interval:" );
        double max = StdIn.readDouble();

        StdDraw.setCanvasSize(800, 800);
        StdDraw.setPenRadius(0.005);
        StdDraw.setPenColor(StdDraw.BLUE);
        StdDraw.setXscale(0, 800);
        StdDraw.setYscale(0, 800);

        Interval2D[] intervals = new Interval2D[intervalCount];

        for (int i = 0; i < intervalCount; i++ ) {

            double x1 = StdRandom.uniform(min, max);
            double x2 = StdRandom.uniform(x1, max);

            double y1 = StdRandom.uniform(min, max);
            double y2 = StdRandom.uniform(y1, max);

            Interval1D xInterval = new Interval1D(x1, x2);
            Interval1D yInterval = new Interval1D(y1, y2);

            System.out.println( "xinterval : " + xInterval + ", yinterval : " + yInterval);

            Interval2D box = new Interval2D(xInterval, yInterval);
            box.draw();
            intervals[i] = box;
        }

        int intersectCount = 0, containedCount = 0;

        // Find out the intersects and contains intervals
        for (int i = 0; i < intervalCount; i++ ) {
            for (int j = i + 1; j < intervalCount; j++) {
                if ( intervals[i].intersects(intervals[j]) ) {
                    intersectCount++;
                }
                if ( intervals[i].contains(intervals[j]) ) {
                    containedCount++;
                }
            }
        }

        System.out.printf("The intersects count : %d\n", intersectCount);
        System.out.printf("The contains count : %d\n", containedCount);

        Interval2D box2 = new Interval2D(new Interval1D(20d, 100d), new Interval1D(20d, 100d));
        box2.draw();

        Interval2D box3 = new Interval2D(new Interval1D(30d, 70d), new Interval1D(30d, 70d));
        box3.draw();

        System.out.println("Box2 contains box3 :" + box2.contains(box3));
    }
}

