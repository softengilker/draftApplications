package com.ilkerkonar.algorithms.book4elib.chapter_1_2;

import com.ilkerkonar.algorithms.util.book4elib.StdOut;

public class Exercise_1_2_4 {
    public static void main(String[] args) {
        String string1 = "hello";
        String string2 = string1;
        string1 = "world";
        StdOut.println(string1);
        StdOut.println(string2);
    }
}
