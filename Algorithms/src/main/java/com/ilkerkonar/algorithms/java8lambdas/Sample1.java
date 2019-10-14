package com.ilkerkonar.algorithms.java8lambdas;

import java.util.Arrays;
import java.util.List;

public class Sample1 {

    public static void main(String[] args) {
        List<Integer> number = Arrays.asList(1, 2, 36, 85, 12, 75, 6, 96, 9 );

        number.stream().map( a -> a + ",").forEach(System.out::print);
    }
}
