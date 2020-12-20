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

    public void removeAfter(Item removeAfterItem) {

        Node tempNode = first;
        while ( tempNode != null && !tempNode.item.equals(removeAfterItem) ) {
            tempNode = tempNode.next;
        }

        // Can not find the node or it is the last, so do nothing
        if ( tempNode == null || tempNode == last ) {
            return;
        }

        // Remove the last
        if ( tempNode.next == last ) {
            tempNode.next = null;
            last = tempNode;
        } else {
            tempNode.next = tempNode.next.next;
        }

        n--;
    }

    public void insertAfter(Item insertAfterItem, Item newItem) {

        Node tempNode = first;
        while ( tempNode != null && !tempNode.item.equals(insertAfterItem) ) {
            tempNode = tempNode.next;
        }

        // Can not find the node, so do nothing
        if ( tempNode == null ) {
            return;
        }

        // Initialize the new node
        Node newNode = new Node();
        newNode.item = newItem;

        if ( tempNode == last ) {
            newNode.next = null;
            last = newNode;
        } else {
            newNode.next = tempNode.next;
        }

        tempNode.next = newNode;
        n++;
    }

    public void removeAll( Item removeItem ) {
        Node tempNode = first;
        Node previousNode = first;

        while ( tempNode != null ) {

            if ( tempNode.item.equals(removeItem) ) {

                if ( tempNode == first ) {
                    first = tempNode.next;
                    tempNode = first;
                } else if ( tempNode == last ) {
                    last = previousNode;
                    last.next = null;
                    tempNode = last;
                } else {
                    previousNode.next = tempNode.next;
                    tempNode = previousNode;
                }
                n--;
            }
            previousNode = tempNode;

            if ( tempNode != null ) {
                tempNode = tempNode.next;
            }
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

    public Item delete(int k) {
        Item returnValue = null;

        if (isEmpty()) throw new NoSuchElementException("Queue underflow");
        else if (k >= n) throw new NoSuchElementException("Queue underflow");
        else if (k < 0) throw new NoSuchElementException("Queue underflow");
        // First element and only 1 node exists
        else if (k == 0 && n == 1) {
            n = 0;
            returnValue = first.item;
            first = null;
            last = null;
        } else if (k == 0) {
            returnValue = first.item;
            first = first.next;
            n--;
        // Last element
        } else if ( k == n - 1 ) {
            Node tempNode = first;
            while (tempNode.next != last) {
                tempNode = tempNode.next;
            }
            n--;
            returnValue = last.item;
            last = tempNode;
            last.next = null;
        // Middle element
        } else if ( k < n - 1 )  {
            Node tempNode = first;
            int index = 0;
            while ( index + 1 != k ) {
                tempNode = tempNode.next;
                index++;
            }
            returnValue = tempNode.next.item;
            tempNode.next = tempNode.next.next;
            n--;
        }

        return returnValue;
    }
}
