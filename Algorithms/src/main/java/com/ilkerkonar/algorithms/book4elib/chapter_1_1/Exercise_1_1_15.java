package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import com.ilkerkonar.algorithms.util.Printing;

import java.util.Arrays;
import java.util.HashMap;
import java.util.function.Function;
import java.util.stream.Collectors;

public class Exercise_1_1_15 {

    private static Printing printing = new Printing();

    public static void main(String[] args) {
        Integer[] sampleArray = { 2, 4, 6, 1, 9, 8, 8, 2, 5, 3 };
        int sampleCounter = 12;

        Integer[] resultArray = histogram( sampleArray, sampleCounter );

        printing.getArrayPrintingImplementation().accept( resultArray );
    }

    private static Integer[] histogram( Integer numbers[], int m ) {
        var countingMap = Arrays.stream( numbers ).collect(Collectors.groupingBy( Function.identity(), HashMap::new, Collectors.counting()));

        Integer[] histogramArray = new Integer[ m ];

        for ( int i = 0; i < m; i++ ) {
            histogramArray[ i ] = Integer.parseInt( countingMap.get( i ) == null ? "0" : countingMap.get( i ).toString() );
        }

        return histogramArray;
    }
}
