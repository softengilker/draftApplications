package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import com.ilkerkonar.algorithms.util.Printing;
import com.ilkerkonar.algorithms.util.book4elib.StdOut;
import com.ilkerkonar.algorithms.util.book4elib.StdRandom;

public class Exercises_1_1_to14 {

    private static Printing printing = new Printing();

    public static void main(String[] args) {
        StdOut.println( "lg(0) : " + lg( 0 ) );
        StdOut.println( "lg(1) : " + lg( 1 ) );
        StdOut.println( "lg(2) : " + lg( 2 ) );
        StdOut.println( "lg(3) : " + lg( 3 ) );
        StdOut.println( "lg(4) : " + lg( 4 ) );
        StdOut.println( "lg(6) : " + lg( 6 ) );
        StdOut.println( "lg(8) : " + lg( 8 ) );
        StdOut.println( "lg(65) : " + lg( 65 ) );

        // examples11_11();
        transposition();
    }

    public static void examples11_11() {
        boolean[][] barray = new boolean[3][4];

        for (int i = 0; i < barray.length; i++ )
            for (int j = 0; j < barray[0].length; j++ )
                barray[i][j] = StdRandom.bernoulli();

        for (int i = 0; i < barray.length; i++ ) {
            for (int j = 0; j < barray[0].length; j++) {
                StdOut.print("[" + i + "][" + j + "]");
                StdOut.print(barray[i][j] ? '*' : ' ');
            }
            StdOut.print("\n");
        }
    }

    public static void transposition() {
        Integer[][] initialArray = {
            { 2, 5, 8, 0, 9, 1, 7 },
            { 4, 9, 2, 1, 7, 5, 3 },
            { 8, 0, 7, 9, 1, 4, 8 }
        };

        // Print the initial array.
        printing.get2DimensionalArrayPrintingImplementation().accept( initialArray );

        Integer[][] targetArray = new Integer[initialArray[0].length][initialArray.length];

        for (int i = 0; i < initialArray.length; i++ ) {
            for (int j = 0; j < initialArray[0].length; j++) {
                targetArray[j][i] = initialArray[i][j];
            }
        }

        // Print the target array.
        printing.get2DimensionalArrayPrintingImplementation().accept( targetArray );
    }

    public static int lg( int n ) {
        if ( n < 2 ) {
            return 0;
        }

        int retValue = 0;
        int pow2Value = 1;

        do {
            retValue++;
            pow2Value *= 2;
        } while ( pow2Value <= n );

        return retValue - 1;
    }
}
