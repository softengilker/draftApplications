package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import com.ilkerkonar.algorithms.util.book4elib.StdIn;

import java.util.Arrays;
import java.util.Random;

public class Exercise_1_1_35 {
    public static void main(String[] args) {
        final int SIDES = 6;

        int[] frequencies = new int[2*SIDES+1];
        for (int i = 1; i <= SIDES; i++) {
            for (int j = 1; j <= SIDES; j++) {
                frequencies[i + j]++;
            }
        }

        double[] probabilities = new double[2*SIDES+1];
        for (int k = 2; k <= 2 * SIDES; k++)
            probabilities[k] = frequencies[k] / 36.0d;

        System.out.println( "Enter the number of dice throws: " );
        int n = StdIn.readInt();

        System.out.println( "Emperical probabilities : " + Arrays.toString(probabilities) );

        Random random = new Random();

        double[] exactFrequencies = new double[2*SIDES+1];

        for ( int i = 1; i <=n; i++ ) {
            int dice1 = random.nextInt(6) + 1;
            int dice2 = random.nextInt(6) + 1;

            exactFrequencies[dice1 + dice2]++;
        }

        double[] exactProbabilities = new double[2*SIDES+1];
        for (int k = 2; k <= 2 * SIDES; k++)
            exactProbabilities[k] = exactFrequencies[k] / (36.0d * n);

        System.out.println( "Exact probabilities : " + Arrays.toString(exactProbabilities) );
    }
}