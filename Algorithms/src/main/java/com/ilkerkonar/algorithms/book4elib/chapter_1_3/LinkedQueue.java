package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class LinkedQueue<Item> implements Iterable<Item> {

    private int n;
    private Node first;
    private Node last;

    private class Node {
        private Item item;
        private Node next;
    }

    public LinkedQueue() {
        first = null;
        last  = null;
        n = 0;
    }

    public int size() {
        return n;
    }

    public Iterator<Item> iterator()  {
        return new LinkedIterator();
    }

    // an iterator, doesn't implement remove() since it's optional
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

    public boolean isEmpty() {
        return first == null;
    }

    public Item peek() {
        if (isEmpty()) throw new NoSuchElementException("Queue underflow");
        return first.item;
    }

    public void enqueue(Item item) {
        Node oldLast = last;
        last = new Node();
        last.item = item;
        last.next = null;
        if (isEmpty()) first = last;
        else           oldLast.next = last;
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

    public String toString() {
        StringBuilder s = new StringBuilder();
        for (Item item : this) {
            s.append(item);
            s.append(" ");
        }
        return s.toString();
    }

    public void delete(int k) {
        if (isEmpty()) throw new NoSuchElementException("Queue underflow");
        else if (k >= n) throw new NoSuchElementException("Queue underflow");
        else if (k < 0) throw new NoSuchElementException("Queue underflow");
        // First element and only 1 node exists
        else if (k == 0 && n == 1) {
            n = 0;
            first = null;
            last = null;
        } else if (k == 0) {
            first = first.next;
        // Last element
        } else if ( k == n - 1 ) {
            Node tempNode = first;
            while (tempNode.next.next != last) {
                tempNode = tempNode.next;
            }
            n--;
            last = tempNode.next;
            last.next = null;
        // Middle element
        } else if ( k < n - 1 )  {
            Node tempNode = first;
            int index = 0;
            while ( index + 1 != k ) {
                tempNode = tempNode.next;
                index++;
            }
            tempNode.next = tempNode.next.next;
            n--;
        }
    }
}
