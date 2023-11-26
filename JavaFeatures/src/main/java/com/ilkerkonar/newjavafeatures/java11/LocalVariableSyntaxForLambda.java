package com.ilkerkonar.newjavafeatures.java11;

import org.jetbrains.annotations.NotNull;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class LocalVariableSyntaxForLambda {
    public static void main(String[] args) {
        List<String> sampleList = Arrays.asList("Java", "Kotlin");
        String resultString = sampleList.stream()
                .map((@NotNull var x) -> x.toUpperCase())
                .collect(Collectors.joining(", "));
        System.out.println( "The result string: " + resultString);
    }
}
