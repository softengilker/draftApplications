package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_33 {
    public static void main(String[] args) {
        MyDeque<Integer> deque = new MyDeque();

        deque.pushLeft(15);
        System.out.println("Deque: " + deque);

        deque.pushRight(23);
        System.out.println("Deque: " + deque);

        deque.pushLeft(85);
        deque.pushRight(34);
        System.out.println("Deque: " + deque);

        deque.popLeft();
        System.out.println("Deque: " + deque);

        deque.popRight();
        System.out.println("Deque: " + deque);

        deque.popLeft();
        System.out.println("Deque: " + deque);

        deque.popLeft();
        System.out.println("Deque: " + deque);
    }
}
