package com.ilkerkonar.algorithms.book4elib.chapter_1_2;

import com.ilkerkonar.algorithms.util.book4elib.Date;

public class Exercise_1_2_12 extends Date {

    // 01.01.2000 was Saturday.
    private static final String[] DAYS_STR = { "SATURDAY", "SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THURSDAY", "FRIDAY" };

    // We assume that the date is in the 21st century
    public Exercise_1_2_12(int month, int day, int year) {
        super(month, day, year);

        if ( year < 2000 )
            throw new IllegalArgumentException("Invalid date, it should be in the 21st century");
    }

    // We assume that the date is in the 21st century
    public Exercise_1_2_12(String date) {
        super(date);
        if ( year() < 2000 )
            throw new IllegalArgumentException("Invalid date, it should be in the 21st century");
    }

    public String dayOfTheWeek() {
        return DAYS_STR[ findDiffDay() % 7 ];
    }

    private int findDiffDay() {
        int dayCount = 0;
        for ( int y = 2000; y <= year(); y++ ) {
            if ( y == year() ) {
                for ( int m = 1; m < month(); m++ ) {
                    dayCount += DAYS[ m ];

                    if ( m == 2 ) {
                        dayCount -= isLeapYear(y) ? 0 : 1;
                    }
                }
                dayCount += day() - 1;
            } else {
                dayCount += isLeapYear(y) ? 366 : 365;
            }
        }

        System.out.println( "The day diff of the " + this.toString() + " is : " + dayCount );

        return dayCount;
    }

    public static void main(String[] args) {
        System.out.println( "The day of 01/01/2000 : " + new Exercise_1_2_12("01/01/2000").dayOfTheWeek() );
        System.out.println( "The day of 06/05/2000 : " + new Exercise_1_2_12("06/05/2000").dayOfTheWeek() );
        System.out.println( "The day of 02/29/2004 : " + new Exercise_1_2_12("02/29/2004").dayOfTheWeek() );
        System.out.println( "The day of 06/15/2013 : " + new Exercise_1_2_12("06/15/2013").dayOfTheWeek() );
        System.out.println( "The day of 10/07/2017 : " + new Exercise_1_2_12("10/07/2017").dayOfTheWeek() );
    }
}
