package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import com.ilkerkonar.algorithms.util.book4elib.StdDraw;

import java.util.Random;
import java.util.Scanner;

public class Exercise_1_1_31 {

    class Point {

        private double xCoor;

        private double yCoor;

        public Point( final double xCoor, final double yCoor ) {
            this.xCoor = xCoor;
            this.yCoor = yCoor;
        }

        public double getXCoor() {
            return xCoor;
        }

        public double getYCoor() {
            return yCoor;
        }
    }

    public static void main(String[] args) {

        Scanner in = new Scanner(System.in);

        System.out.println( "Enter the circle number : ");
        final int circleNumberParam = in.nextInt();

        System.out.println( "Enter the probability between 0 and 1 in double type like 0.5, 0.9 : ");
        final double probability = in.nextDouble();

        Exercise_1_1_31 mainClass = new Exercise_1_1_31();

        // Plot the circle
        Point[] pointArray = mainClass.plotTheCirclePoints( circleNumberParam );

        // Draw random connections.
        StdDraw.setPenColor( StdDraw.GRAY);

        Random random = new Random();

        for ( int i = 0; i < pointArray.length; i++ ) {

            for ( int j = 0; j < pointArray.length; j++ ) {

                if ( i == j ) {
                    continue;
                }

                if ( random.nextDouble() <= probability ) {
                    StdDraw.line( pointArray[i].getXCoor(), pointArray[i].getYCoor(), pointArray[j].getXCoor(), pointArray[j].getYCoor() );
                }
            }
        }

    }

    private Point[] plotTheCirclePoints( final int circleNumber ) {

        final Point[] returnArray = new Point[ circleNumber ];

        final double circleSize = 0.004d;
        final double mainCircleSize = 0.4d;
        final double mainCircleSizeDividedBySin90 = mainCircleSize / Math.sin( Math.toRadians( 90.0 ) );

        // Draw the main circle
        StdDraw.circle(.5, .5, mainCircleSize);

        // Draw the first circle
        StdDraw.circle(.5, .5 - mainCircleSize, circleSize);

        double angleSum = 360 / (double) circleNumber;
        int pointIndex = 0;

        for ( int i = 1; i < circleNumber; i++ ) {

            double targetAngle = angleSum * i;
            double x = 0.0d;
            double y = 0.0d;

            if ( targetAngle <= 90.0 ) {
                x = Math.sin( Math.toRadians( targetAngle ) ) * mainCircleSizeDividedBySin90;
                y = Math.sin( Math.toRadians( 90.0 - targetAngle ) ) * mainCircleSizeDividedBySin90 * -1;
            } else if ( targetAngle > 90.0 && targetAngle <= 180.0 ) {
                y = Math.sin( Math.toRadians( targetAngle - 90.0 ) ) * mainCircleSizeDividedBySin90;
                x = Math.sin( Math.toRadians( 180.0 - targetAngle ) ) * mainCircleSizeDividedBySin90;
            } else if ( targetAngle > 180.0 && targetAngle <= 270.0 ) {
                x = Math.sin( Math.toRadians( targetAngle - 180.0 ) ) * mainCircleSizeDividedBySin90 * -1;
                y = Math.sin( Math.toRadians( 270.0 - targetAngle ) ) * mainCircleSizeDividedBySin90;
            } else {
                y = Math.sin( Math.toRadians( targetAngle - 270.0 ) ) * mainCircleSizeDividedBySin90 * -1;
                x = Math.sin( Math.toRadians( 360.0 - targetAngle ) ) * mainCircleSizeDividedBySin90 * -1;
            }

            StdDraw.circle(.5 + x, .5 + y, circleSize);

            // Add to the point array.
            returnArray[ pointIndex++ ] = new Point( .5 + x, .5 + y );
        }

        return returnArray;
    }
}
