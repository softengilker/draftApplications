package com.ilkerkonar.newjavafeatures.java12;

import java.text.NumberFormat;
import java.util.Locale;

public class Java12NumberFormatting {
    public static void main(String[] args) {
        NumberFormat numberFormat = NumberFormat.getCompactNumberInstance(new Locale("en", "US"),NumberFormat.Style.SHORT);
        numberFormat.setMaximumFractionDigits(2);

        System.out.println("Format output: " + numberFormat.format(55626L));

        numberFormat = NumberFormat.getCompactNumberInstance(new Locale("en", "US"),NumberFormat.Style.LONG);
        numberFormat.setMaximumFractionDigits(2);

        System.out.println("Format output: " + numberFormat.format(55626L));
    }
}
