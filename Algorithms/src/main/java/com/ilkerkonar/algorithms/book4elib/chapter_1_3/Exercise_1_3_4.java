package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

public class Exercise_1_3_4 {
    public static void main(String[] args) {
        // Read from console
        InputStreamReader isr = new InputStreamReader( System.in );
        BufferedReader br = new BufferedReader( isr );
        String input = "";

        try {
            input = br.readLine();
        } catch (IOException e) {
            e.printStackTrace();
        }

        Map<Integer, Integer> parenthesesAsciiMatchMap = new HashMap<>();
        // ( )
        parenthesesAsciiMatchMap.put(40, 41);
        // [ ]
        parenthesesAsciiMatchMap.put(91, 93);
        // { }
        parenthesesAsciiMatchMap.put(123, 125);

        Stack<Integer> charStack = new Stack<>();

        for (int i = 0; i < input.length(); i++) {
            int nextCharAscii = input.charAt(i);

            if ( charStack.empty() ) {
                charStack.push( nextCharAscii );
            } else {
                Integer topItemAscii = charStack.pop();
                Integer matchingCharAscii = parenthesesAsciiMatchMap.get(topItemAscii);

                if ( matchingCharAscii == null || nextCharAscii != matchingCharAscii ) {
                    charStack.push( topItemAscii );
                    charStack.push( nextCharAscii );
                }
            }
        }

        System.out.println( charStack.empty() ? "BALANCED : TRUE" : "BALANCED : FALSE" );
    }
}
