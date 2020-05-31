package com.ilkerkonar.algorithms.book4elib.chapter_1_2;

import com.ilkerkonar.algorithms.util.book4elib.*;

public class Exercise_1_2_2 {

    public static void main(String[] args) {

        System.out.println( "Enter number of the intervals: " );
        int intervalCount = StdIn.readInt();

        Interval1D[] intervals = new Interval1D[intervalCount];

        for (int i = 0; i < intervalCount; i++ ) {
            System.out.println( "Enter min value of the interval" + (i + 1) + ":" );
            double min = StdIn.readDouble();
            System.out.println( "Enter max value of the interval" + (i + 1) + ":" );
            double max = StdIn.readDouble();
            intervals[i] = new Interval1D(min, max);
        }

        // Find out the intersects intervals
        for (int i = 0; i < intervalCount; i++ ) {
            for (int j = i + 1; j < intervalCount; j++ ) {
                if ( intervals[i].intersects(intervals[j]) ) {
                    System.out.println("The intervals that Intersect:");
                    System.out.println("The interval1 : " + intervals[i] );
                    System.out.println("The interval2 : " + intervals[j] );
                }
            }
        }
    }
}
