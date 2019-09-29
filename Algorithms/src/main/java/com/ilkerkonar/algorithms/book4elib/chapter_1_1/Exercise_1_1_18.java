package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

public class Exercise_1_1_18 {
    public static void main(String[] args) {
        System.out.println( mystery2(2, 5));
        System.out.println( mystery2(3, 4));
    }

    private static int mystery(int a, int b) { // Multiplication
        if (b == 0) {
            System.out.println("return 0");
            return 0;
        }

        if (b % 2 == 0) {
            System.out.println("return mystery(" + (a+a) + "," + (b/2) + ")");
            return mystery( a + a, b / 2);
        }

        System.out.println("return mystery(" + (a+a) + "," + (b/2) + ")" + a );
        return mystery(a + a, b / 2 ) + a;
    }

    private static int mystery2(int a, int b) { // Exponantial
        if (b == 0) {
            System.out.println("return 1");
            return 1;
        }

        if (b % 2 == 0) {
            System.out.println("return mystery2(" + (a*a) + "," + (b/2) + ")");
            return mystery2( a * a, b / 2);
        }

        System.out.println("return mystery2(" + (a*a) + "," + (b/2) + ") * " + a );
        return mystery2(a * a, b / 2 ) * a;
    }
}
