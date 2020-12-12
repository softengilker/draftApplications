package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_25 {
    public static void main(String[] args) {
        LinkedQueue<String> linkList = new LinkedQueue<>();

        linkList.insertAfter("ilker", "hasan");

        System.out.println( linkList );

        linkList.enqueue( "nehir" );

        linkList.insertAfter("nehir", "hasan");

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

        linkList.insertAfter("eray", "cengiz");

        System.out.println( linkList );

        linkList.insertAfter("didem", "musa");

        System.out.println( linkList );

        linkList.insertAfter("didem", "fatma");

        System.out.println( linkList );
    }
}
