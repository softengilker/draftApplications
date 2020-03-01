package com.ilkerkonar.algorithms.book4elib.chapter_1_1;

import java.util.Arrays;

public class Exercise_1_1_33 {

    public static void main(String[] args) {

        Matrix matrix = new Matrix();

        // dot client
        double[] x = { 3.0, 2.0, 4.0};
        double[] y = { 1.0, 4.0, 2.0};

        System.out.println( "The dot result : " + matrix.dot(x, y));

        // matrix to matrix product client
        double[][] a = {{5.0, 4.0}, {1.0, 2.0}, {3.0, 5.0}, {7.0, 6.0}};
        double[][] b = {{1.0, 5.0, 6.0}, {8.0, 2.0, 3.0}};

        System.out.println( "The matrix to matrix product result : " + Arrays.deepToString(matrix.mult(a, b)));

        // transpose client
        double[][] c = {{1.0, 5.0, 6.0}, {8.0, 2.0, 3.0}};

        System.out.println( "The transpose result : " + Arrays.deepToString(matrix.transpose(c)));

        // matrix to vector product client
        double[][] d = {{1.0, 3.0, 4.0}, {5.0, 2.0, 1.0}, {4.0, 3.0, 7.0}, {2.0, 1.0, 3.0}};
        double[] e = { 2.0, 1.0, 3.0};

        System.out.println( "The matrix to vector product result : " + Arrays.toString(matrix.mult(d, e)));

        // vector to vector product client
        double[] f = { 1.0, 7.0, 4.0};
        double[] g = { 2.0, 1.0, 3.0};

        System.out.println( "The vector to vector product result : " + Arrays.toString(matrix.mult(f, g)));
    }
}

class Matrix {

    public double dot(final double[] x, final double[] y) {

        double returnValue = 0.0d;

        for (int i = 0; i < x.length; i++) {
            returnValue += x[i] * y[i];
        }

        return returnValue;
    }

    public double[][] mult(final double[][] a, final double[][] b) {

        if (a[0].length != b.length) {
            System.out.println("Those two matrices can not be multiplied!");
        }

        double[][] returnValue = new double[a.length][b[0].length];
        double sum = 0.0;

        for (int i = 0; i < a.length; i++) {
            for (int j = 0; j < b[0].length; j++ ) {

                sum = 0.0;

                for (int k = 0; k < a[0].length; k++) {
                    sum += a[i][k] * b[k][j];
                }

                returnValue[i][j] = sum;
            }
        }

        return returnValue;
    }

    public double[][] transpose(final double[][] a) {

        double[][] returnValue = new double[a[0].length][a.length];

        for (int i = 0; i < a.length; i++) {
            for (int j = 0; j < a[0].length; j++) {
                returnValue[j][i] = a[i][j];
            }
        }

        return returnValue;
    }

    public double[] mult(final double[][] a, final double[] x) {

        if (a[0].length != x.length) {
            System.out.println("Those matrix and the product can not be multiplied!");
        }

        double[] returnValue = new double[a.length];
        double sum = 0.0;

        for (int i = 0; i < a.length; i++) {
            for (int j = 0; j < x.length; j++ ) {

                sum = 0.0;

                for (int k = 0; k < a[0].length; k++) {
                    sum += a[i][k] * x[k];
                }

                returnValue[i] = sum;
            }
        }

        return returnValue;
    }

    public double[] mult(final double[] y, final double[] x) {

        if (x.length != y.length) {
            System.out.println("Those two vectors can not be multiplied!");
        }

        double[] returnValue = new double[y.length];

        for (int i = 0; i < y.length; i++) {
            returnValue[i] = x[i] * y[i];
        }

        return returnValue;
    }
}
