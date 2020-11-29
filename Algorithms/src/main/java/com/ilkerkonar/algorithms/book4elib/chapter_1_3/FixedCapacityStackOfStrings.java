package com.ilkerkonar.algorithms.book4elib.chapter_1_3; /******************************************************************************
 *  Compilation:  javac FixedCapacityStackOfStrings.java
 *  Execution:    java FixedCapacityStackOfStrings
 *  Dependencies: StdIn.java StdOut.java
 *  
 *  Stack of strings implementation with a fixed-size array.
 *
 *  % more tobe.txt 
 *  to be or not to - be - - that - - - is 
 * 
 *  % java FixedCapacityStackOfStrings 5 < tobe.txt 
 *  to be not that or be
 *
 *  Remark:  bare-bones implementation. Does not do repeated
 *  doubling or null out empty array entries to avoid loitering.
 *
 ******************************************************************************/

import com.ilkerkonar.algorithms.util.book4elib.StdIn;
import com.ilkerkonar.algorithms.util.book4elib.StdOut;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class FixedCapacityStackOfStrings implements Iterable<String> {
    private String[] a;  // holds the items
    private int N;       // number of items in stack

    // create an empty stack with given capacity
    public FixedCapacityStackOfStrings(int capacity) {
        a = new String[capacity];
        N = 0;
    }

    public boolean isEmpty()            {  return N == 0;                    }
    public boolean isFull()             {  return N == a.length;             }
    public void push(String item)       {  a[N++] = item;                    }
    public String pop()                 {  return a[--N];                    }
    public String peek()                {  return a[N-1];                    }
    public int size()                   {  return N;                         }
    public Iterator<String> iterator()  { return new ReverseArrayIterator(); }

    public class ReverseArrayIterator implements Iterator<String> {
        private int i = N-1;

        public boolean hasNext() {
            return i >= 0;
        }

        public String next() { 
            if (!hasNext()) throw new NoSuchElementException();
            return a[i--];
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static void main(String[] args) {
        int max = 4;
        FixedCapacityStackOfStrings stack = new FixedCapacityStackOfStrings(max);

        stack.push("ilker");
        stack.push("eray");
        stack.push("ozge");
        stack.push("fehmi");

        // Test iteration
        final Iterator<String> iterator = stack.iterator();

        while ( iterator.hasNext() ) {
            String item = iterator.next();
            System.out.printf( "%s ", item );
        }
        System.out.println();

        // Test full
        System.out.println( "Is full : " + stack.isFull() );

        // Test peek
        System.out.printf( "Retrieved item by peek: %s, capacity after the operation : %d\n", stack.peek(), stack.size() );

        // Test pop
        System.out.printf( "Retrieved item by pop: %s, capacity after the operation : %d\n", stack.pop(), stack.size() );
    }
}
