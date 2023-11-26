package com.ilkerkonar.newjavafeatures.java12;

import java.time.DayOfWeek;
import java.time.LocalDate;

public class Java12PreviewSwitchExpression {
    public static void main(String[] args) {
        DayOfWeek dayOfWeek = LocalDate.now().getDayOfWeek();
        String dayType = switch (dayOfWeek) {
            case MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY -> "Working Day";
            case SATURDAY, SUNDAY -> "Day Off";
        };
        System.out.println("Day type: " + dayType);

        switch (dayOfWeek) {
            case MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY -> System.out.println("Weekday");
            case SATURDAY, SUNDAY -> System.out.println("Weekend");
        };
    }
}
