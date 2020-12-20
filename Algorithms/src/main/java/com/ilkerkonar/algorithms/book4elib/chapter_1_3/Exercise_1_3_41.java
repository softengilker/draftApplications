package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_41 {
    public static void main(String[] args) {
        var queue = new LinkedQueue<String>();

        queue.enqueue( "ilker");
        queue.enqueue( "ozge");
        queue.enqueue( "nehir");
        queue.enqueue( "mehmet");
        queue.enqueue( "mesrure");
        queue.enqueue( "eray");

        System.out.println( queue );

        var queue2 = new LinkedQueue<String>( queue );

        System.out.println( queue );
        System.out.println( queue2 );
    }
}
