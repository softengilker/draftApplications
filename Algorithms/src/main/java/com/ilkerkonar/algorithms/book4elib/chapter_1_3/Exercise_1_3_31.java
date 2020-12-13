package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_31 {
    public static void main(String[] args) {
        DoublyLinkList<String> list = new DoublyLinkList<>();

        System.out.println(list);

        list.insertAtTheBeginning( "ilker" );

        System.out.println(list);

        list.insertAtTheBeginning( "cengiz" );

        System.out.println(list);

        list.insertAtTheEnd( "nehir" );
        list.insertAtTheEnd( "hamdi" );
        list.insertAtTheBeginning( "ozge" );

        System.out.println(list);

        list.removeFromTheBeginning();

        System.out.println(list);

        list.removeFromTheEnd();

        System.out.println(list);

        list.insertAfter( "ilker", "murat");

        System.out.println(list);

        list.insertBefore( "ilker", "hasan");

        System.out.println(list);

        list.remove( "cengiz");

        System.out.println(list);

        list.remove( "nehir");

        System.out.println(list);

        list.remove( "ilker");

        System.out.println(list);
    }
}
