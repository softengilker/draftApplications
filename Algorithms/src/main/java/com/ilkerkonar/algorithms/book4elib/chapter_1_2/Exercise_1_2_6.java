package com.ilkerkonar.algorithms.book4elib.chapter_1_2;

import java.awt.*;

public class Exercise_1_2_6 {
    public static void main(String[] args) {
        //final String s1 = "ACTGACG";
        //final String s2 = "TGACGAC";

        final String s1 = "EPRSXYWAYZ";
        final String s2 = "XYWAYZEPRS";

        final boolean result = areCircularShiftStrings(s1, s2);
        System.out.printf( "Are the '%s' and '%s' circular Shift Strings? : %b", s1, s2, result );
    }

    private static boolean areCircularShiftStrings( final String s1, final String s2 ) {
        if ( s1.length() != s2.length() ) return false;

        final int len = s1.length();

        outer:
        for (int i = 1; i <= len; i++) {

            String compareStr = s2;
            for (int j = 1; j <= len; j++) {
                if ( compareStr.indexOf( s1.substring(0, i) ) >= 0 ) {
                    continue outer;
                }
                compareStr = s2.substring(j) + s2.substring(0,j);
            }

            return false;
        }

        return true;
    }
}
