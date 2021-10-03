package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class MyDeque<Item> implements Iterable<Item> {
    private Integer size;
    private Node left;
    private Node right;

    public class Node {
        Item item;
        Node rightNext;
        Node leftNext;
    }

    public MyDeque() {
        left = null;
        right = null;
        size = 0;
    }

    public boolean isEmpty() { return left == null && right == null; }

    public int size() { return size; }

    public void clearLeft() { left = null; }

    public void clearRight() { right = null; }

    public Node getLeft() { return left; }

    public Node getRight() { return right; }

    public void pushLeft(Item item) {
        Node oldLeft = left;
        left = new Node();
        left.item = item;
        left.rightNext = oldLeft;
        if (size == 0) {
            right = left;
        } else {
            oldLeft.leftNext = left;
        }
        size++;
    }

    public void pushRight(Item item) {
        Node oldRight = right;
        right = new Node();
        right.item = item;
        right.leftNext = oldRight;
        if (size == 0) {
            left = right;
        } else {
            oldRight.rightNext = right;
        }
        size++;
    }

    public Item popLeft() {
        if (isEmpty()) throw new NoSuchElementException();
        Item item = left.item;
        left = left.rightNext;
        if (size > 1) {
            left.leftNext = null;
        } else {
            clearRight();
        }
        size--;

        return item;
    }

    public Item popRight() {
        if (isEmpty()) throw new NoSuchElementException();
        Item item = right.item;
        right = right.leftNext;
        if (size > 1) {
            right.rightNext = null;
        } else {
            clearLeft();
        }
        size--;

        return item;
    }

    @Override
    public Iterator<Item> iterator() {
        return new Iterator<>() {
            private Node current = left;

            @Override
            public boolean hasNext() {
                return current != null;
            }

            @Override
            public Item next() {
                if (!hasNext()) throw new NoSuchElementException();
                Item item = current.item;
                current = current.rightNext;
                return item;
            }
        };
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MyDeque {size = ");
        sb.append(size);
        sb.append(", leftItem=");
        sb.append(left == null ? null : left.item);
        sb.append(", rightItem=");
        sb.append(right == null ? null : right.item);
        sb.append(", items=");

        for (Item item : this ) {
            sb.append(item + ",");
        }
        sb.delete(sb.length() - 1, sb.length());
        sb.append("}");

        return sb.toString();
    }
}
