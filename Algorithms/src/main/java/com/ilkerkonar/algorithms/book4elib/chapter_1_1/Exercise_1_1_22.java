package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import java.util.Arrays;

public class Exercise_1_1_22 {

    public static void main(String[] args) {
        int a[] = { 6, 15, 23, 25, 28, 34, 39, 42, 49, 51, 52, 58, 78, 85, 89, 91, 93, 97, 101, 109, 115, 117, 125, 136, 148, 159 };

        int key = 97;

        System.out.println( "The index value is : " + indexOf( a, key ) );
    }

    // Recursive Binary Search Algorithm
    private static int indexOf( int[] a, int key ) {
        System.out.println( "The array: " + Arrays.toString( a ));
        System.out.println( "The key: " + key );
        System.out.println( "----------------------------------------" );

        return indexOf( a, key, 0, a.length - 1, 0 );
    }

    // Recursive Binary Search Algorithm
    private static int indexOf( int[] a, int key, int lo, int hi, int depth ) {

        System.out.println( "The call for the depth: " + depth );
        System.out.println( "lo value: " + lo );
        System.out.println( "hi value: " + hi );

        if ( lo > hi ) {
            return -1;
        }

        int mid = lo + ( hi - lo) / 2;

        System.out.println( "mid value: " + mid );
        System.out.println( "----------------------------------------" );

        if ( key < a[mid] ) {
            return indexOf( a, key, lo, mid - 1, depth + 1 );
        } else if ( key > a[mid] ) {
            return indexOf( a, key, mid + 1, hi, depth + 1  );
        } else {
            return mid;
        }
    }
}
