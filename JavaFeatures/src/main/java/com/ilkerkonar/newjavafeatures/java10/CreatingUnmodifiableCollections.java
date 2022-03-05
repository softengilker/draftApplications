package com.ilkerkonar.newjavafeatures.java10;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class CreatingUnmodifiableCollections {
    public static void main(String[] args) {

        // Create a mutable list.
        List<Integer> numberList = new ArrayList<>() {
            {
                add(5);
                add(6);
                add(8);
            }
        };

        var newList = numberList.stream().filter(a -> a % 2 == 0).collect(Collectors.toUnmodifiableList());
        System.out.println( newList );

        // Try to add an element to the list.
        // UnsupportedOperationException is thrown.
        newList.add( 62 );
    }
}
