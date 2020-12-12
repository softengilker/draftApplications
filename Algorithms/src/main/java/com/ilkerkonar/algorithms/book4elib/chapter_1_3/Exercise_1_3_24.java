package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_24 {
    public static void main(String[] args) {
        LinkedQueue<String> linkList = new LinkedQueue<>();

        linkList.removeAfter("ilker");

        System.out.println( linkList );

        linkList.enqueue( "nehir" );

        linkList.removeAfter("ilker");

        System.out.println( linkList );

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

        linkList.removeAfter("eray");

        System.out.println( linkList );

        linkList.removeAfter("didem");

        System.out.println( linkList );

        linkList.removeAfter("egemen");

        System.out.println( linkList );
    }
}
