package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import com.ilkerkonar.algorithms.util.book4elib.StdIn;

public class Exercise_1_1_24 {

    public static void main(String[] args) {
        int p = 105;
        int q = 24;

        System.out.println( "Enter the first integer: " );
        p = StdIn.readInt();
        System.out.println( "Enter the second integer: " );
        q = StdIn.readInt();

        System.out.printf( "The gcd of the %d and %d is %d\n", p, q, gcd_euclid( p, q ) );
    }

    // Calculate the greatest common divisor of the two integers with the Euclid's algorithm.
    private static int gcd_euclid( int p, int q ) {

        System.out.printf( "The gcd cycle of the %d and %d\n", p, q );

        if ( q == 0 ) {
            return p;
        }

        int r = p % q;

        return gcd_euclid( q, r );
    }
}
