package com.ilkerkonar.newjavafeatures.java10;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class CopyOfMethod {
    public static void main(String[] args) {
        // Create a mutable list.
        List<Integer> numberList = new ArrayList<>() {
            {
                add(5);
                add(6);
                add(8);
            }
        };

        // "Copy of" creates an immutable list.
        var newList = List.copyOf(numberList);

        // Returns true
        System.out.println( "The lists are equal? :" + numberList.equals(newList));
        // Returns false
        System.out.println( "The lists are identical? :" + (numberList == newList));

        // Create a immutable list.
        List<Integer> numberList2 = List.of(9,32,61);

        // "Copy of" creates an immutable list. But the numberList2 is already the immutable, so it uses it.
        var newList2 = List.copyOf(numberList2);

        // Returns true
        System.out.println( "The lists are equal? :" + numberList2.equals(newList2));
        // Returns true
        System.out.println( "The lists are identical? :" + (numberList2 == newList2));

        // Try to add an element to the list.
        // UnsupportedOperationException is thrown.
        newList.add( 25 );
    }
}
