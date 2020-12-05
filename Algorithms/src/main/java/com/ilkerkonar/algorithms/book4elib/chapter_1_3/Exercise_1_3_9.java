package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import com.ilkerkonar.algorithms.util.book4elib.StdIn;
import com.ilkerkonar.algorithms.util.book4elib.StdOut;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

public class Exercise_1_3_9 {

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

        // Remove all white spaces
        input = input.replaceAll("\\s+","");

        Stack<String> ops = new Stack<String>();
        Stack<String> values = new Stack<String>();

        for ( int i = 0; i < input.length(); i++ ) {
            String s = input.substring(i, i+1 );
            if (s.equals("+"))       ops.push(s);
            else if (s.equals("*"))  ops.push(s);
            else if (s.equals("-"))  ops.push(s);
            else if (s.equals(")")) {
                String op = ops.pop();
                String v = values.pop();
                values.push("(" + " " + values.pop() + " " + op + " " + v + " " + ")");
            } else {
                values.push(s);
            }
        }

        StdOut.print(values.pop());
    }
}
