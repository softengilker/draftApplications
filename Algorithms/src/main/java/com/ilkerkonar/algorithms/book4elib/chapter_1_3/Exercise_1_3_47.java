package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_47 {
    public static void main(String[] args) {
        MyStack<Integer> stack1 = new MyStack<>();
        stack1.push(15);
        stack1.push(8);
        stack1.push(26);

        MyStack<Integer> stack2 = new MyStack<>();
        stack2.push(26);
        stack2.push(3);
        stack2.push(14);

        System.out.println("Stack1 : " + stack1 );
        System.out.println("Stack2 : " + stack2 );

        stack1.concat(stack2);

        System.out.println("After concatenation, Stack1 : " + stack1 );
        System.out.println("After concatenation, Stack2 : " + stack2 );
    }
}
