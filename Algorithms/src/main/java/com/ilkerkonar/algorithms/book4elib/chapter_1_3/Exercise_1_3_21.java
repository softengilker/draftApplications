package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

import java.util.Iterator;

public class Exercise_1_3_21 {
    public static void main(String[] args) {

        LinkedQueue<String> linkList = new LinkedQueue<>();

        linkList.enqueue( "ilker" );
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

        System.out.println( "Find the text 'fehmi' in the list? : " + find(linkList, "fehmi") );
        System.out.println( "Find the text 'ert' in the list? : " + find(linkList, "ert") );
    }

    private static boolean find( final LinkedQueue<String> linkList, final String findFor ) {

        for (String s : linkList) {
            if (findFor.equals(s)) {
                return true;
            }
        }

        return false;
    }
}
