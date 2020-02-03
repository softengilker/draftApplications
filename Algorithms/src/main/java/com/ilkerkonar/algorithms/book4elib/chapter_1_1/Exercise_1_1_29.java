package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import com.ilkerkonar.algorithms.search.BinarySearch;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Exercise_1_1_29 extends BinarySearch {

    public int[] rank( int key ) {

        Arrays.sort( numbers );

        return Arrays.stream(numbers).filter( n -> n < key ).toArray();
    }

    public long count( int key ) {

        Arrays.sort( numbers );

        return Arrays.stream(numbers).filter( n -> n == key ).count();
    }

    public static void main(String[] args) {

        Exercise_1_1_29 binarySearch = new Exercise_1_1_29();

        binarySearch.setNumbers( new int[] { 15, 2, 26, 98, 78, 145, 15, 28, 90, 98, 34, 712, 85, 15 } );

        int rankValue = 50;
        int keyValue = 15;

        System.out.println( "The rank of the " + rankValue + " is : " + Arrays.toString( binarySearch.rank( rankValue ) ) );
        System.out.println( "The count of the " + keyValue + " is : " + binarySearch.count( keyValue ) );
    }
}
