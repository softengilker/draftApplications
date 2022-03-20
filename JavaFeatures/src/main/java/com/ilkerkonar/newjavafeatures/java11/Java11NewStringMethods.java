package com.ilkerkonar.newjavafeatures.java11;

import java.util.stream.Collectors;

public class Java11NewStringMethods {
    public static void main(String[] args) {
        // IsBlank method
        String str = "";
        System.out.println( String.format("If %s is blank: %b", str, str.isBlank()));

        // lines method
        str = "Hello \n my friend \n how are you?";
        System.out.println( String.format("%s is %d lines", str, str.lines().count()));

        // strip methods
        str = " a line  ";
        System.out.println( String.format("When you apply the strip to '%s': the result is '%s'", str, str.strip()));
        System.out.println( String.format("When you apply the strip leading to '%s': the result is '%s'", str, str.stripLeading()));
        System.out.println( String.format("When you apply the strip trailing to '%s': the result is '%s'", str, str.stripTrailing()));

        // repeat method
        str = "A simple sentence";
        System.out.println( String.format("When you apply the repeat to '%s': the result is '%s'", str, str.repeat(3)));

        // All together
        str = "Hello \n my friend \n how are you?";
        var strList = str.lines().filter(s -> !s.isBlank()).map(String::strip).collect(Collectors.toList());
        System.out.println("The string list: " + strList);
    }
}
