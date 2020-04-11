package com.ilkerkonar.algorithms.search;

public class BruteForceSearch {

    protected double[] numbers;

    private double searchingNumber;

    public BruteForceSearch() {

    }

    public void setNumbers(double[] numbers) {
        this.numbers = numbers;
    }

    public void setSearchingNumber(double searchingNumber) {
        this.searchingNumber = searchingNumber;
    }

    public boolean bruteForceSearch() {
        for ( int i = 0; i < numbers.length; i++ ) {
            if (searchingNumber == numbers[i]) {
                return true;
            }
        }

        return false;
    }
}
