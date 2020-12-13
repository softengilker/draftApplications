package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.Iterator;

public class Exercise_1_3_27 {
    public static void main(String[] args) {
        IntegerLinkedList linkList = new IntegerLinkedList();

        final IntegerNode firstNode = new IntegerNode(15);

        linkList.enqueue( firstNode );
        linkList.enqueue( new IntegerNode( 28 ) );
        linkList.enqueue( new IntegerNode( 79 ) );
        linkList.enqueue( new IntegerNode( 12 ) );
        linkList.enqueue( new IntegerNode( 13 ) );
        linkList.enqueue( new IntegerNode( 83 ) );
        linkList.enqueue( new IntegerNode( 105 ) );
        linkList.enqueue( new IntegerNode( 29 ) );
        linkList.enqueue( new IntegerNode( 57 ) );
        linkList.enqueue( new IntegerNode( 71 ) );

        System.out.println( "The max key value is : " + max( firstNode ) );
    }

    private static int max(IntegerNode firstNode) {

        int max = 0;

        IntegerNode tempNode = firstNode;
        while (tempNode != null) {
            if (tempNode.getKey() > max) max = tempNode.getKey();
            tempNode = tempNode.getNext();
        }

        return max;
    }
}
