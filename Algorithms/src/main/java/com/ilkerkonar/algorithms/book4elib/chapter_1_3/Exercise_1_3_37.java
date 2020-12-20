package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_37 {
    public static void main(String[] args) {
        int peopleCount = Integer.parseInt(args[1]);
        int removingPosition = Integer.parseInt(args[0]);

        // Fill the Queue
        var queue = new LinkedQueue<Integer>();
        for (int i = 0; i < peopleCount; i++) queue.enqueue( i );

        int currentPosition = 0;
        while ( queue.size() != 0 ) {
            for (int i = 0; i < removingPosition - 1; i++) {
                if ( currentPosition < queue.size() - 1 ) currentPosition++;
                else currentPosition = 0;
            }
            System.out.print( queue.delete( currentPosition ) + " ");
        }
    }
}
