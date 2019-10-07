package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

public class Exercise_1_1_20 {

    public static void main(String[] args) {
        System.out.println( "The result is : " + factorialNaturalLogarithm( 3 ));
    }

    private static double factorialNaturalLogarithm( final int number ) {

        if ( number == 1 ) {
            return Math.log( number );
        }

        var returnVal = Math.log( number ) + factorialNaturalLogarithm( number - 1 );

        return returnVal;
    }
}
