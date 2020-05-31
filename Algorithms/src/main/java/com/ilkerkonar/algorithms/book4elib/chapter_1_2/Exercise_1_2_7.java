package com.ilkerkonar.algorithms.book4elib.chapter_1_2;

import com.ilkerkonar.algorithms.util.book4elib.StdOut;

public class Exercise_1_2_7 {
    public static void main(String[] args) {
        final String s = "abcd";
        StdOut.println("The result : " + mystery(s));
    }

    private static String mystery(final String s) {
        int n = s.length();
        if (n <= 1) return s;
        String a = s.substring(0, n/2);
        String b = s.substring(n/2, n);

        return mystery(b) + mystery(a);
    }
}
