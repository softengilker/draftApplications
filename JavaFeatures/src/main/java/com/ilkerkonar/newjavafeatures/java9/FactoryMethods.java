package com.ilkerkonar.newjavafeatures.java9;

import java.util.List;
import java.util.Map;
import java.util.Set;

public class FactoryMethods {
    public static void main(String[] args) {

        // Creating List
        final List<String> animals = List.of("Dog", "Cat", "Monkey");
        animals.forEach(System.out::println);

        // Creating Set
        final Set<String> languages = Set.of("Java", "C++", "Scala", "C#", "Javascript");
        languages.forEach(System.out::println);

        // Creating Map
        Map<Integer,String> map = Map.of(101,"JavaFX",102,"Hibernate",103,"Spring MVC");
        map.forEach( (k,v) -> System.out.println( k + ": " + v ));

        // Creating Map Entry
        Map.Entry<Integer, String> e1 = Map.entry( 15, "Cat");
        Map.Entry<Integer, String> e2 = Map.entry( 25, "Dog");

        // Creating Map from the entries
        Map<Integer,String> map2 = Map.ofEntries(e1, e2);
        map2.forEach( (k,v) -> System.out.println( k + ": " + v ));
    }
}
