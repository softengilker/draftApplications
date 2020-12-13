package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_26 {
    public static void main(String[] args) {
        LinkedQueue<String> linkList = new LinkedQueue<>();

        linkList.removeAll("ilker" );

        System.out.println( linkList );

        linkList.enqueue( "nehir" );

        linkList.removeAll("nehir");

        System.out.println( linkList );

        linkList.enqueue( "ozge" );
        linkList.enqueue( "mesrure" );
        linkList.enqueue( "ozge" );
        linkList.enqueue( "fehmi" );
        linkList.enqueue( "eray" );
        linkList.enqueue( "ilkay" );
        linkList.enqueue( "yasin" );
        linkList.enqueue( "egemen" );
        linkList.enqueue( "ozge" );

        System.out.println( linkList );

        linkList.removeAll("ozge");

        System.out.println( linkList );

        linkList.enqueue( "egemen" );
        linkList.enqueue( "egemen" );
        linkList.enqueue( "egemen" );

        linkList.removeAll("egemen");

        System.out.println( linkList );
    }
}
