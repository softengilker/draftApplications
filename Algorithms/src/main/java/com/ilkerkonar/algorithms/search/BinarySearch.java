
package com.ilkerkonar.algorithms.search;

import java.util.Arrays;

public class BinarySearch {

	private int[] numbers;

	private int searchingNumber;

	public BinarySearch() {

	}

	public void setNumbers(int[] numbers) {
		this.numbers = numbers;
	}

	public void setSearchingNumber(int searchingNumber) {
		this.searchingNumber = searchingNumber;
	}

	public boolean binarySearch() {

		Arrays.sort( numbers );

		int lowestIndex = 0;
		int highestIndex = numbers.length - 1;

		while ( lowestIndex <= highestIndex ) {
			final int middleIndex = lowestIndex + ( highestIndex - lowestIndex ) / 2;

			if ( searchingNumber < numbers[ middleIndex ] ) {
				highestIndex = middleIndex - 1;
			} else if ( searchingNumber > numbers[ middleIndex ] ) {
				lowestIndex = middleIndex + 1;
			} else {
				return true;
			}
		}

		return false;
	}

	public static void main(final String[] args ) {

		BinarySearch binarySearch = new BinarySearch();
		final int searchingNumber = 145;

		binarySearch.setNumbers( new int[] { 15, 2, 26, 98, 78, 145, 28, 90, 34, 712, 85 } );
		binarySearch.setSearchingNumber( searchingNumber );

		System.out.println(
				"The number { " + searchingNumber + " } is " + ( binarySearch.binarySearch() ? "" : "not " ) + "found in the array." );
	}
}
