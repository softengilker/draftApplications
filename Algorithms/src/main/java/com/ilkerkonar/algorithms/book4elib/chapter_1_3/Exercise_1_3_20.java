package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_20 {
    public static void main(String[] args) {
        LinkedQueue<String> linkList = new LinkedQueue<>();

        linkList.enqueue( "ilker" );

        System.out.println( linkList );
        linkList.delete(0 );
        System.out.println( linkList );

        linkList.enqueue( "nehir" );
        linkList.enqueue( "ozge" );
        linkList.enqueue( "mesrure" );
        linkList.enqueue( "gulser" );
        linkList.enqueue( "fehmi" );
        linkList.enqueue( "eray" );
        linkList.enqueue( "ilkay" );
        linkList.enqueue( "yasin" );
        linkList.enqueue( "egemen" );
        linkList.enqueue( "didem" );

        System.out.println( linkList );
        linkList.delete( 0 );
        System.out.println( "Delete first : " + linkList );
        linkList.delete(linkList.size() - 1 );
        System.out.println( "Delete last : " + linkList );
        linkList.delete( 3 );
        System.out.println( "Delete middle : " + linkList );
    }
}
