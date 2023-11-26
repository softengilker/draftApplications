package com.ilkerkonar.newjavafeatures.java12;

public class Java12PreviewPatternMatchingForInstanceOf {
    public static void main(String[] args) {
        Object sampleObj = "adff";

        if (sampleObj instanceof String sampleString) {
            System.out.println("The object is String : " + sampleString);
        }
    }
}
