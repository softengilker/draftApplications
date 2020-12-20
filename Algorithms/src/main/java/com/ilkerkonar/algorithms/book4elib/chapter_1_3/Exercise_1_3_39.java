package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_39 {
    public static void main(String[] args) {
        var buffer = new RingBuffer<Integer>(10);

        buffer.enqueue(26);
        buffer.enqueue(52);
        buffer.enqueue(14);
        buffer.enqueue(71);
        buffer.enqueue(13);
        buffer.enqueue(97);

        System.out.println( buffer );

        buffer.dequeue();
        buffer.dequeue();

        System.out.println( buffer );
    }
}
