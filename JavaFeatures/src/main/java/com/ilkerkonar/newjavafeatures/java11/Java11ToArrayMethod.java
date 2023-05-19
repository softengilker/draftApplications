package com.ilkerkonar.newjavafeatures.java11;

import java.util.Arrays;
import java.util.List;

public class Java11ToArrayMethod {
    public static void main(String[] args) {
        List<String> colorList = Arrays.asList("blue", "red", "yellow");
        String[] colorArray = colorList.toArray(String[]::new);
        System.out.println("Color Array:" + colorArray);
    }
}
