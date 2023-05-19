package com.ilkerkonar.algorithms.others;

import java.util.*;

public class SortTheHashMapValues {
    public static void main(String[] args) {
        // Initialize the map.
        Map<Integer,String> firstMap = new HashMap<>();
        firstMap.put(15,"city");
        firstMap.put(26,"house");
        firstMap.put(11,"banana");
        firstMap.put(69,"apple");

        System.out.println("Initial Map:" + firstMap);

        // Move the map entries to a list.
        List<Map.Entry<Integer, String>> mapList = new LinkedList<>(firstMap.entrySet());

        // Sort the list.
        Collections.sort(mapList, new Comparator<Map.Entry<Integer, String>>() {
            @Override
            public int compare(Map.Entry<Integer, String> o1, Map.Entry<Integer, String> o2) {
                return o1.getValue().compareTo(o2.getValue());
            }
        });

        // Create a new HashMap
        Map<Integer,String> finalMap = new TreeMap<>();

        for (Map.Entry<Integer, String> entry : mapList) {
            finalMap.put(entry.getKey(), entry.getValue());
        }

        System.out.println("Final Map:" + finalMap);
    }
}
