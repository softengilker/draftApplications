package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class DoublyLinkList<Item> implements Iterable<Item>  {

    private int n;
    private DoubleNode first;
    private DoubleNode last;

    private class DoubleNode {
        private Item item;
        private DoubleNode next;
        private DoubleNode previous;
    }

    public DoublyLinkList() {
        first = null;
        last  = null;
        n = 0;
    }

    public int size() {
        return n;
    }

    public boolean isEmpty() {  return first == null; }

    public Iterator<Item> iterator()  {
        return new DoublyLinkList.LinkedIterator();
    }

    // an iterator, doesn't implement remove() since it's optional
    private class LinkedIterator implements Iterator<Item> {
        private DoublyLinkList.DoubleNode current = first;

        public boolean hasNext()  { return current != null;                     }
        public void remove()      { throw new UnsupportedOperationException();  }

        public Item next() {
            if (!hasNext()) throw new NoSuchElementException();
            var item = (Item) current.item;
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

    public void insertAtTheBeginning(Item item) {
        DoubleNode newNode = new DoubleNode();
        newNode.item = item;

        if (isEmpty()) {
            last = newNode;
        } else {
            newNode.next = first;
            first.previous = newNode;
        }

        first = newNode;
        n++;
    }

    public Item removeFromTheBeginning() {
        if (isEmpty()) throw new NoSuchElementException("Queue underflow");
        Item item = first.item;
        first = first.next;
        if (first != null) first.previous = null;
        n--;
        if (isEmpty()) last = null;   // to avoid loitering
        return item;
    }

    public Item removeFromTheEnd() {
        if (isEmpty()) throw new NoSuchElementException("Queue underflow");
        Item item = last.item;
        last = last.previous;
        if (last != null) last.next = null;
        n--;
        if (isEmpty()) last = null;   // to avoid loitering
        return item;
    }

    public void insertAtTheEnd(Item item) {
        DoubleNode newNode = new DoubleNode();
        newNode.item = item;

        if (isEmpty()) {
            first = newNode;
        } else {
            last.next = newNode;
            newNode.previous = last;
        }

        last = newNode;
        n++;
    }

    public void insertAfter(Item item, Item newItem) {
        DoubleNode tempNode = findItem(item);

        // Can not find the node, so do nothing
        if ( tempNode == null ) {
            return;
        }

        // Initialize the new node
        DoubleNode newNode = new DoubleNode();
        newNode.item = newItem;

        if ( tempNode == last ) {
            newNode.next = null;
            newNode.previous = last;
            last = newNode;
        } else {
            newNode.previous = tempNode;
            newNode.next = tempNode.next;
            newNode.next.previous = newNode;
        }

        tempNode.next = newNode;
        n++;
    }

    public void insertBefore(Item item, Item newItem) {
        DoubleNode tempNode = findItem(item);

        // Can not find the node, so do nothing
        if ( tempNode == null ) {
            return;
        }

        // Initialize the new node
        DoubleNode newNode = new DoubleNode();
        newNode.item = newItem;

        if ( tempNode == first ) {
            newNode.previous = null;
            newNode.next = first;
            first = newNode;
        } else {
            newNode.next = tempNode;
            newNode.previous = tempNode.previous;
            newNode.previous.next = newNode;
        }

        tempNode.previous = newNode;
        n++;
    }

    public void remove(Item item) {
        DoubleNode tempNode = findItem(item);

        // Can not find the node, so do nothing
        if ( tempNode == null ) {
            return;
        }

        if (size() == 1) {
            first = null;
            last = null;
        } else if (tempNode == last) {
            last = tempNode.previous;
            last.next = null;
        } else if (tempNode == first) {
            first = tempNode.next;
            first.previous = null;
        } else {
            tempNode.previous.next = tempNode.next;
            tempNode.next.previous = tempNode.previous;
        }

        n--;
    }

    private DoubleNode findItem(Item item) {
        DoubleNode tempNode = first;
        while ( tempNode != null && !tempNode.item.equals(item) ) {
            tempNode = tempNode.next;
        }

        return tempNode;
    }
}
