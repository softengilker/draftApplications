package com.ilkerkonar.newjavafeatures.java9;

import java.util.List;
import java.util.Optional;
import java.util.stream.IntStream;

public class StreamNewMethods {
    public static void main(String[] args) {
        List<Integer> numbers = List.of( 12, 16, 25, 28, 45, 89, 93);

        // takeWhileMethod(numbers);
        // dropWhileMethod(numbers);
        // newIterateMethod(numbers);
        // optionalIfPresentOrElseMethod(numbers);
        orMethod(numbers);
    }

    private static void takeWhileMethod(final List<Integer> numbers) {
        // Java8
        numbers.stream().limit(2).forEach(System.out::println); // 12, 16

        // Java9
        numbers.stream().takeWhile(a -> a < 28).forEach(System.out::println); // 12, 16, 25
    }

    private static void dropWhileMethod(final List<Integer> numbers) {
        // Java8
        numbers.stream().skip(2).forEach(System.out::println); // 25, 28, 45, 89, 93

        // Java9
        numbers.stream().dropWhile(a -> a < 28).forEach(System.out::println); // 28, 45, 89, 93
    }

    private static void newIterateMethod(final List<Integer> numbers) {

        // Java8
        IntStream.range(0, 5).forEach(System.out::println); // 0, 1, 2, 3, 4
        IntStream.rangeClosed(0, 5).forEach(System.out::println); // 0, 1, 2, 3, 4, 5

        // Java9
        IntStream.iterate(0, i -> i <= 5, i -> i + 2).forEach(System.out::println); // 0, 2, 4
        IntStream.iterate(0, i -> i + 2).limit(3).forEach(System.out::println); // 0, 2, 4
        IntStream.iterate(0, i -> i + 2).takeWhile(i -> i <= 5).forEach(System.out::println); // 0, 2, 4
    }

    private static void optionalIfPresentOrElseMethod(final List<Integer> numbers) {

        // Java8
        System.out.println( numbers.stream().filter(e -> e > 25).findFirst()); // Optional[28]
        System.out.println( numbers.stream().filter(e -> e > 100).findFirst()); // Optional.empty
        System.out.println( numbers.stream().filter(e -> e > 25).findFirst().get()); // 28
        // System.out.println( numbers.stream().filter(e -> e > 100).findFirst().get()); // Throws exception. Optional has few rough edges
        System.out.println( numbers.stream().filter(e -> e > 100).findFirst().orElse(0)); // 0

        // ifPresentOrElse method is new in the Java9
        Optional<Integer> opt = Optional.of( 5 );
        opt.ifPresentOrElse( a -> System.out.println("The value is : " + a ), () -> System.out.println("Nope")); // 5
        opt = Optional.empty();
        opt.ifPresentOrElse( a -> System.out.println("The value is : " + a ), () -> System.out.println("Nope")); // Nope
    }

    private static void orMethod(final List<Integer> numbers) {

        // or method in the Java9
        System.out.println( numbers.stream().filter(e -> e > 100).findFirst().or(() -> Optional.of(87)).get() ); // 87
    }
}
