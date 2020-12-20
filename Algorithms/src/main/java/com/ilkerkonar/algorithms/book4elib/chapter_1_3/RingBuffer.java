package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class RingBuffer<Item> implements Iterable<Item> {

    private int n;
    private int capacity;
    private Node first;
    private Node last;

    private class Node {
        private Item item;
        private Node next;
    }

    public RingBuffer( final int capacity ) {
        this.capacity = capacity;
        first = null;
        last = null;
    }

    public int size() { return n; }

    public boolean isEmpty() { return n == 0; }

    public boolean isFull() { return n == capacity; }

    public void enqueue(Item item) {
        if (isFull()) throw new NoSuchElementException("The queue is full");
        Node newNode = new Node();
        newNode.item = item;
        newNode.next = first;
        first = newNode;
        if (isEmpty()) last = first;
        n++;
    }

    public Item dequeue() {
        if (isEmpty()) throw new NoSuchElementException("Queue underflow");
        Item item = first.item;
        first = first.next;
        n--;
        if (isEmpty()) last = null;   // to avoid loitering
        return item;
    }

    public Iterator<Item> iterator()  {
        return new LinkedIterator();
    }

    private class LinkedIterator implements Iterator<Item> {
        private Node current = first;

        public boolean hasNext()  { return current != null;                     }
        public void remove()      { throw new UnsupportedOperationException();  }

        public Item next() {
            if (!hasNext()) throw new NoSuchElementException();
            Item item = current.item;
            current = current.next;
            return item;
        }
    }

    public String toString() {
        StringBuilder s = new StringBuilder();
        s.append("list : { ");

        for (Item item : this) {
            s.append(item);
            s.append(" ");
        }

        s.append("}, size : ");
        s.append(n);

        return s.toString();
    }
}
