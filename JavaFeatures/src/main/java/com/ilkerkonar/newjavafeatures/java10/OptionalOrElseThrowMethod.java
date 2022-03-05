package com.ilkerkonar.newjavafeatures.java10;

import java.util.Optional;

public class OptionalOrElseThrowMethod {
    public static void main(String[] args) {
        // Create an optional
        Optional<Integer> optional = Optional.of(152);

        // Print the optional
        System.out.println( optional );

        // Print the optional or else throw ArithmeticException
        System.out.println( optional.orElseThrow(ArithmeticException::new) );

        // Assing empty to the optional
        optional = Optional.empty();

        // Throw ArithmeticException
        System.out.println( optional.orElseThrow(ArithmeticException::new) );
    }
}
