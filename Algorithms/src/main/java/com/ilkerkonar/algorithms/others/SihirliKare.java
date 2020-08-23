package com.ilkerkonar.algorithms.others;

import java.util.Arrays;

public class SihirliKare {
    public static void main(String[] args) {
        int[][] numbers = new int[3][3];

        numbers[0][1] = 1;
        numbers[1][0] = 5;
        numbers[1][2] = 13;
        numbers[2][1] = 17;

        int max = 25;

        for ( int i = 0; i < max; i++ ) {
            for ( int j = 0; j < max; j++ ) {
                for ( int k = 0; k < max; k++ ) {
                    for ( int m = 0; m < max; m++ ) {
                        for ( int n = 0; n < max; n++ ) {
                            numbers[0][0] = i;
                            numbers[0][2] = j;
                            numbers[1][1] = k;
                            numbers[2][0] = m;
                            numbers[2][2] = n;

                            if ( doesMeet( numbers ) ) {
                                System.out.printf( "i : %d, j : %d, k : %d, m : %d, n : %d", i, j, k, m, n );
                            }
                        }
                    }
                }
            }
        }

        System.out.println( "Yok" );
    }

    private static boolean doesMeet(final int[][] numbers) {
        int a = Arrays.stream(numbers[0]).sum();
        int b = Arrays.stream(numbers[1]).sum();
        int c = Arrays.stream(numbers[2]).sum();
        int d = numbers[0][0] + numbers[1][0] + numbers[2][0];
        int e = numbers[0][1] + numbers[1][1] + numbers[2][1];
        int f = numbers[0][2] + numbers[1][2] + numbers[2][2];
        int g = numbers[0][0] + numbers[1][1] + numbers[2][2];
        int h = numbers[2][0] + numbers[1][1] + numbers[0][2];

        return ( a == b ) && ( b == c ) && ( c == d ) && ( d == e ) && ( e == f ) && ( f == g ) && ( g == h );
    }
}
