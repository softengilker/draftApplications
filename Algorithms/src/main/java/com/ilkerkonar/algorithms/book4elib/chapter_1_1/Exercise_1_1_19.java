package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

public class Exercise_1_1_19 {

    private static long fibonacci(final int n) {
        if ( n == 0 ) {
            return 0l;
        }

        if ( n == 1 ) {
            return 1l;
        }

        return fibonacci( n - 1 ) + fibonacci( n - 2 );
    }

    private static long fibonacciWithCache(final int n, final long[] cache) {
        if ( n == 0 ) {
            return 0l;
        }

        if ( n == 1 ) {
            return 1l;
        }

        if ( cache[n] != 0 ) {
            return cache[n];
        }

        long result = fibonacciWithCache( n - 1, cache ) + fibonacciWithCache( n - 2, cache );
        cache[n] = result;

        return result;
    }

    public static void main(String[] args) {
        for ( int n = 0; n < 45; n++ ) {
            System.out.println( n + ": " + fibonacci( n ) );
        }

        /*
        long[] cache = new long[45];

        for ( int n = 0; n < 45; n++ ) {
            System.out.println( n + ": " + fibonacciWithCache( n, cache ) );
        }
        */
    }
}
