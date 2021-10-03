package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class Exercise_1_3_48<Item> {
    private RightStack<Item> rightStack;
    private LeftStack<Item> leftStack;

    public Exercise_1_3_48(MyDeque<Item> deque) {
        rightStack = new RightStack<>(deque);
        leftStack = new LeftStack<>(deque);
    }

    public RightStack<Item> getRightStack() { return rightStack; }

    public LeftStack<Item> getLeftStack() { return leftStack; }

    private class RightStack<Item> implements Iterable<Item> {
        private MyDeque<Item> deque;
        private Integer size;

        public RightStack(MyDeque<Item> deque) {
            this.deque = deque;
            deque.clearRight();
            size = 0;
        }

        public boolean isEmpty() { return size == 0; }

        public int size() { return size; }

        public void push(Item item) {
            deque.pushRight(item);
            size++;
        }

        public Item pop() {
            Item item = deque.popRight();
            size--;
            return item;
        }

        @Override
        public Iterator<Item> iterator() {
            return new Iterator<>() {
                private MyDeque<Item>.Node current = deque.getRight();
                private int sizeCounter = size();

                @Override
                public boolean hasNext() {
                    return current != null && sizeCounter > 0;
                }

                @Override
                public Item next() {
                    if (!hasNext()) throw new NoSuchElementException();
                    Item item = current.item;
                    current = current.leftNext;
                    sizeCounter--;
                    return item;
                }
            };
        }

        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("RightStack {size = ");
            sb.append(size);
            sb.append(", firstNodeItem=");
            sb.append(deque.getRight().item);
            sb.append(", items=");

            for (Item item : this ) {
                sb.append(item + ",");
            }
            sb.delete(sb.length() - 1, sb.length());
            sb.append("}");

            return sb.toString();
        }
    }

    private class LeftStack<Item> implements Iterable<Item> {
        private MyDeque<Item> deque;
        private Integer size;

        public LeftStack(MyDeque<Item> deque) {
            this.deque = deque;
            deque.clearLeft();
            size = 0;
        }

        public boolean isEmpty() { return size == 0; }

        public int size() { return size; }

        public void push(Item item) {
            deque.pushLeft(item);
            size++;
        }

        public Item pop() {
            Item item = deque.popLeft();
            size--;
            return item;
        }

        @Override
        public Iterator<Item> iterator() {
            return new Iterator<>() {
                private MyDeque<Item>.Node current = deque.getLeft();
                private int sizeCounter = size();

                @Override
                public boolean hasNext() {return current != null && sizeCounter > 0; }

                @Override
                public Item next() {
                    if (!hasNext()) throw new NoSuchElementException();
                    Item item = current.item;
                    current = current.rightNext;
                    sizeCounter--;
                    return item;
                }
            };
        }

        @Override
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("LeftStack {size = ");
            sb.append(size);
            sb.append(", firstNodeItem=");
            sb.append(deque.getLeft().item);
            sb.append(", items=");

            for (Item item : this ) {
                sb.append(item + ",");
            }
            sb.delete(sb.length() - 1, sb.length());
            sb.append("}");

            return sb.toString();
        }
    }

    public static void main(String[] args) {
        MyDeque<Integer> deque = new MyDeque<>();
        Exercise_1_3_48 exercise = new Exercise_1_3_48(deque);

        exercise.getLeftStack().push(152);
        System.out.println("Left Stack: " + exercise.getLeftStack());

        exercise.getRightStack().push(87);
        System.out.println("Right Stack: " + exercise.getRightStack());

        exercise.getLeftStack().push(45);
        exercise.getLeftStack().push(18);

        exercise.getRightStack().push(63);
        exercise.getRightStack().push(49);

        System.out.println("Left Stack: " + exercise.getLeftStack());
        System.out.println("Right Stack: " + exercise.getRightStack());
    }
}
