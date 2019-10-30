package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

public class Exercise_1_1_26 {
    public static void main(String[] args) {
        int a = 5;
        int b = 9;
        int c = 4;

        System.out.printf( "The values a, b, c: %d, %d, %d\n", a, b, c );

        sortThereNumbers( a, b, c );
    }

    public static void sortThereNumbers( int a, int b, int c ) {
        int t = 0;

        if ( a > b ) {
            t = a;
            a = b;
            b = t;
        }

        if ( a > c ) {
            t = a;
            a = c;
            c = t;
        }

        if ( b > c ) {
            t = b;
            b = c;
            c = t;
        }

        System.out.printf( "The sorted values a, b, c: %d, %d, %d", a, b, c );
    }
}
