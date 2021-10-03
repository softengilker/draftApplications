package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class MyStack<Item> implements Iterable<Item> {
    private Integer size;
    private Node firstNode;

    private class Node {
        Item item;
        Node next;
    }

    public MyStack() {
        firstNode = null;
        size = 0;
    }

    public boolean isEmpty() { return firstNode == null; }

    public int size() { return size; }

    public void push(Item item) {
        Node oldFirstNode = firstNode;
        firstNode = new Node();
        firstNode.item = item;
        firstNode.next = oldFirstNode;
        size++;
    }

    public Item pop() {
        Item item = firstNode.item;
        firstNode = firstNode.next;
        size--;

        return item;
    }

    // Implemented for the 1.3.47
    public MyStack concat(MyStack<Item> newStack) {

        for (Item item : newStack) {
             push(item);
        }

        return this;
    }

    @Override
    public Iterator<Item> iterator() {
        return new Iterator<>() {
            private Node current = firstNode;

            @Override
            public boolean hasNext() {
                return current != null;
            }

            @Override
            public Item next() {
                if (!hasNext()) throw new NoSuchElementException();
                Item item = current.item;
                current = current.next;
                return item;
            }
        };
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MyStack {size = ");
        sb.append(size);
        sb.append(", firstNodeItem=");
        sb.append(firstNode.item);
        sb.append(", items=");

        for (Item item : this ) {
            sb.append(item + ",");
        }
        sb.delete(sb.length() - 1, sb.length());
        sb.append("}");

        return sb.toString();
    }
}
