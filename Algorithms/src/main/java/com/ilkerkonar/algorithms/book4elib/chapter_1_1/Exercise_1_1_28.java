package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import com.ilkerkonar.algorithms.search.BinarySearch;
import com.ilkerkonar.algorithms.util.book4elib.In;
import com.ilkerkonar.algorithms.util.book4elib.StdIn;
import com.ilkerkonar.algorithms.util.book4elib.StdOut;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Exercise_1_1_28 {

    public static void main(String[] args) {
        In in = new In( args[ 0 ] );
        int[] whitelist = in.readAllInts();

        Arrays.sort( whitelist );

        // Print the array values.
        Arrays.stream( whitelist ).forEach( a -> System.out.print( a + ", " ) );

        ///// Remove duplicates.
        List<Integer> newIntValues = new ArrayList<Integer>();
        int previousIndexValue = whitelist[ 0 ];
        newIntValues.add( previousIndexValue );

        for ( int i = 1; i < whitelist.length; i++ ) {
            if ( whitelist[i] != previousIndexValue) {
                newIntValues.add( whitelist[i] );
            }
            previousIndexValue = whitelist[ i ];
        }

        int[] whitelist2 = newIntValues.stream().mapToInt(x -> x).toArray();
        //////

        // Print the array values after removing the duplications.
        System.out.println( " " );
        System.out.println( "Array after removing the duplications: " );
        Arrays.stream( whitelist2 ).forEach( a -> System.out.print( a + ", " ) );

        BinarySearch binarySearch = new  BinarySearch();
        binarySearch.setNumbers( whitelist2 );

        while( !StdIn.isEmpty() ) {
            int key = StdIn.readInt();
            binarySearch.setSearchingNumber( key );

            if ( !binarySearch.binarySearch() ) {
                StdOut.println( key );
            }
        }
    }
}
