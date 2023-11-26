package com.ilkerkonar.newjavafeatures.java12;

import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Java12TeeingCollector {
    public static void main(String[] args) {
        double mean = Stream.of(1, 5, 6, 8, 9, 15, 18)
                            .collect(Collectors.teeing( Collectors.summingDouble(i -> i),
                                                        Collectors.counting(),
                                                        (sum, count) -> sum / count));
        System.out.println("The mean of the numbers is : " + mean);
    }
}
