package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import com.ilkerkonar.algorithms.search.BinarySearchWithDoubles;
import com.ilkerkonar.algorithms.search.BruteForceSearch;
import com.ilkerkonar.algorithms.util.book4elib.In;

import java.util.Arrays;

public class Exercise_1_1_38 {
    public static void main(String[] args) {

        In inSource = new In("largeW.txt");
        String[] linesInTheFile = inSource.readAllLines();
        double[] numbersInTheFile = Arrays.stream(linesInTheFile).mapToDouble(x -> Double.parseDouble(x)).toArray();

        final double searchingNumber = 488699;

        // Binary Search
        long t1 = System.currentTimeMillis();
        BinarySearchWithDoubles binarySearchWithDoubles = new BinarySearchWithDoubles();
        binarySearchWithDoubles.setNumbers(numbersInTheFile);
        binarySearchWithDoubles.setSearchingNumber(searchingNumber);
        System.out.println( "Binary Search Result : "  + binarySearchWithDoubles.binarySearch() );
        long t2 = System.currentTimeMillis();
        System.out.println( "Passed milli seconds : "  + ( t2 - t1 ) );

        // Brute Force Search
        t1 = System.currentTimeMillis();
        BruteForceSearch bruteForceSearch = new BruteForceSearch();
        bruteForceSearch.setNumbers(numbersInTheFile);
        bruteForceSearch.setSearchingNumber(searchingNumber);
        System.out.println( "Brute Force Search Result : "  + bruteForceSearch.bruteForceSearch() );
        t2 = System.currentTimeMillis();
        System.out.println( "Passed milli seconds : "  + ( t2 - t1 ) );
    }
}
