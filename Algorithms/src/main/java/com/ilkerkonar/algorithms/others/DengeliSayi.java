package com.ilkerkonar.algorithms.others;

/**
 * Üç basamaklı bir sayının ortadaki rakamı diğer iki rakamın ortalaması ise
 * bu sayı dengeli sayıdır. Kaç tane dengeli sayı vardır?
 */
public class DengeliSayi {
    public static void main(String[] args) {
        int count = 0;
        for (int i = 100; i <= 999; i++ ) {
            if ( ( i / 100 + i % 10 )  / 2 == ( i % 100 ) / 10 ) {
                count++;
            }
        }
        System.out.printf("Dengeli sayı miktarı : %d", count );
    }
}
