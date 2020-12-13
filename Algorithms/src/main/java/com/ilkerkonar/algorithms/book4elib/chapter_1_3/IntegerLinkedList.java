package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.NoSuchElementException;

public class IntegerLinkedList {
    private int n;
    private IntegerNode first;
    private IntegerNode last;

    public IntegerLinkedList() {
        first = null;
        last  = null;
        n = 0;
    }

    public int size() {
        return n;
    }

    public boolean isEmpty() {
        return first == null;
    }

    public Integer peek() {
        if (isEmpty()) throw new NoSuchElementException("Queue underflow");
        return first.getKey();
    }

    public void enqueue(Integer item) {
        IntegerNode oldLast = last;
        last = new IntegerNode();
        last.setKey( item );
        last.setNext( null );
        if (isEmpty()) first = last;
        else           oldLast.setNext( last );
        n++;
    }

    public void enqueue(IntegerNode item) {
        IntegerNode oldLast = last;
        last = item;
        last.setNext( null );
        if (isEmpty()) first = last;
        else           oldLast.setNext( last );
        n++;
    }
    public Integer dequeue() {
        if (isEmpty()) throw new NoSuchElementException("Queue underflow");
        Integer item = first.getKey();
        first = first.getNext();
        n--;
        if (isEmpty()) last = null;   // to avoid loitering
        return item;
    }
}
