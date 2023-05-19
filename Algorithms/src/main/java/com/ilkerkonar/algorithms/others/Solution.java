package com.ilkerkonar.algorithms.others;

import java.io.*;
import java.math.*;
import java.security.*;
import java.text.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.function.*;
import java.util.regex.*;
import java.util.stream.*;
import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toList;



class Result {

    /*
     * Complete the 'flippingMatrix' function below.
     *
     * The function is expected to return an INTEGER.
     * The function accepts 2D_INTEGER_ARRAY matrix as parameter.
     */

    public static int flippingMatrix(List<List<Integer>> matrix) {
        updateMatrix(matrix);

        int sum = 0;
        for (int i = 0; i < matrix.size() / 2; i++) {
            for (int j = 0; j < matrix.size() / 2; j++) {
                sum += matrix.get(i).get(j);
            }
        }

        return sum;
    }

    private static void updateMatrix(List<List<Integer>> matrix) {
        int size = matrix.size();

        for (int i = 0; i < size; i++) {
            if (checkIfRowShouldBeReversed(matrix, i)) {
                reverseRow(matrix, i);
                updateMatrix(matrix);
            }
        }

        for (int i = 0; i < size; i++) {
            if (checkIfColumnShouldBeReversed(matrix, i)) {
                reverseColumn(matrix, i);
                updateMatrix(matrix);
            }
        }
    }

    private static void reverseColumn(List<List<Integer>> matrix, int columnIndex) {
        int size = matrix.size();
        List<Integer> tempList = new ArrayList<>();

        for (int i = size - 1; i >= 0; i++) {
            tempList.add(matrix.get(i).get(columnIndex));
        }

        for (int i = 0; i < size; i++) {
            matrix.get(i).set(columnIndex, tempList.get(i));
        }
    }

    private static void reverseRow(List<List<Integer>> matrix, int rowIndex) {
        int size = matrix.size();
        List<Integer> tempList = new ArrayList<>();

        for (int i = size - 1; i >= 0; i++) {
            tempList.add(matrix.get(rowIndex).get(i));
        }

        matrix.set(rowIndex, tempList);
    }

    private static boolean checkIfRowShouldBeReversed(List<List<Integer>> matrix, int rowIndex) {
        int size = matrix.size();
        int sumLowerIndexes = 0;
        int sumUpperIndexes = 0;

        for (int i = 0; i < size; i++) {
            if (i < size / 2) {
                sumLowerIndexes += matrix.get(rowIndex).get(i);
            } else {
                sumUpperIndexes += matrix.get(rowIndex).get(i);
            }
        }

        return sumUpperIndexes > sumLowerIndexes;
    }

    private static boolean checkIfColumnShouldBeReversed(List<List<Integer>> matrix, int columnIndex) {
        int size = matrix.size();
        int sumLowerIndexes = 0;
        int sumUpperIndexes = 0;

        for (int i = 0; i < size; i++) {
            if (i < size / 2) {
                sumLowerIndexes += matrix.get(i).get(columnIndex);
            } else {
                sumUpperIndexes += matrix.get(i).get(columnIndex);
            }
        }

        return sumUpperIndexes > sumLowerIndexes;
    }
}

public class Solution {
    public static void main(String[] args) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        int q = Integer.parseInt(bufferedReader.readLine().trim());

        IntStream.range(0, q).forEach(qItr -> {
            try {
                int n = Integer.parseInt(bufferedReader.readLine().trim());

                List<List<Integer>> matrix = new ArrayList<>();

                IntStream.range(0, 2 * n).forEach(i -> {
                    try {
                        matrix.add(
                                Stream.of(bufferedReader.readLine().replaceAll("\\s+$", "").split(" "))
                                        .map(Integer::parseInt)
                                        .collect(toList())
                        );
                    } catch (IOException ex) {
                        throw new RuntimeException(ex);
                    }
                });

                int result = Result.flippingMatrix(matrix);

                bufferedWriter.write(String.valueOf(result));
                bufferedWriter.newLine();
            } catch (IOException ex) {
                throw new RuntimeException(ex);
            }
        });

        bufferedReader.close();
        bufferedWriter.close();
    }
}
