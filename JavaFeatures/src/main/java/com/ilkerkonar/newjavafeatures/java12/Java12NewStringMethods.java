package com.ilkerkonar.newjavafeatures.java12;

public class Java12NewStringMethods {
    public static void main(String[] args) {
        // indent method
        String str = "Hi, how are you?\nFine, thanks";
        System.out.println(str);
        System.out.println(str.indent(5));
        System.out.println(str.indent(5).indent(-3));

        // transform method
        str = "javaMethods";
        String transformed = str.transform(s -> new StringBuilder(s).reverse().toString());
        System.out.println(transformed);
    }
}
