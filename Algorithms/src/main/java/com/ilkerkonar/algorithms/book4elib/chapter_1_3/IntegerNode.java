package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class IntegerNode {
    private Integer key;
    private IntegerNode next;

    public IntegerNode() {}

    public IntegerNode(Integer item) {
        setKey( item );
    }

    public IntegerNode getNext() {
        return next;
    }

    public void setNext(IntegerNode next) {
        this.next = next;
    }

    public Integer getKey() {
        return key;
    }

    public void setKey(Integer key) {
        this.key = key;
    }
}
