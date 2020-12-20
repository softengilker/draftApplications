package com.ilkerkonar.algorithms.book4elib.chapter_1_3;

public class Exercise_1_3_40 {
    public static void main(String[] args) {
        var queue = new LinkedQueue<String>();

        moveToFrontInsert( queue,"ilker" );
        moveToFrontInsert( queue,"eray" );
        moveToFrontInsert( queue,"hasan" );
        moveToFrontInsert( queue,"mehmet" );
        moveToFrontInsert( queue,"ozge" );

        System.out.println( queue );

        moveToFrontInsert( queue,"hasan" );
        moveToFrontInsert( queue,"ozge" );
        moveToFrontInsert( queue,"ilker" );

        System.out.println( queue );
    }

    private static void moveToFrontInsert(LinkedQueue<String> queue, String item) {
        int foundIndex = queue.findItemIndex( item );
        if (foundIndex != -1 ) {  queue.delete( foundIndex ); }
        queue.enqueueFirst( item );
    }
}
