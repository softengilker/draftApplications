package com.ilkerkonar.algorithms.java8lambdas;

import java.util.stream.IntStream;

public class OptionalSamples {
    public static void main(String[] args) {
        final IntStream intStream = IntStream.of(15, 23, 48, 16, 78, 95, 2, 31);

        // intStream.filter(e -> e > 50).forEach(System.out::println);

        // System.out.println( intStream.filter(e -> e > 50).findFirst() );

        //intStream.filter(e -> e > 50).findFirst().ifPresent(System.out::println);

        intStream.filter(e -> e > 500).findFirst().ifPresentOrElse(System.out::println, () -> System.out.println("nope"));
    }
}
