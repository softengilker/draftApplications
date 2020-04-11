package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import com.ilkerkonar.algorithms.util.book4elib.StdIn;
import com.ilkerkonar.algorithms.util.book4elib.StdRandom;

import java.util.Arrays;

public class Exercise_1_1_36 {

    public static void main(String[] args) {
        System.out.println( "Enter the shuffle number : ");
        int m = StdIn.readInt();

        System.out.println( "Enter the length of the array : ");
        int n = StdIn.readInt();

        int[] theArray = new int[n];
        for (int i = 0; i < theArray.length; i++) {
            theArray[i] = i;
        }

        System.out.println(Arrays.toString(theArray));

        for (int i = 0; i < m; i++) {
            shuffle(theArray);
        }

        System.out.println(Arrays.toString(theArray));
    }

    public static void shuffle(final int a[]) {
        int n = a.length;

        for (int i = 0; i < n; i++) {
            int r = i + StdRandom.uniform(n - i);
            int temp = a[i];
            a[i] = a[r];
            a[r] = temp;
        }
    }
}
