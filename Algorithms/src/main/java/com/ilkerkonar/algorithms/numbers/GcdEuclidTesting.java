
package com.ilkerkonar.algorithms.numbers;

import java.util.Scanner;

/**
 * @author ilker
 * 
 * Test for if the number is prime
 */
public class GcdEuclidTesting {

	public static void main( final String[] args ) {

		System.out.println( "Please input 2 numbers : " );

		final Scanner takeInput = new Scanner( System.in );

		final int n1 = takeInput.nextInt();
		final int n2 = takeInput.nextInt();

		takeInput.close();

		System.out.printf( "The greatest number of the %d and %d is %d", n1, n2, gcdEuclidsAlgorithm( n1, n2 ) );
	}

	private static Integer gcdEuclidsAlgorithm( final Integer n1, final Integer n2 ) {

		if ( n2 == 0 ) {
			return n1;
		}

		Integer temp = n1 % n2;

		return gcdEuclidsAlgorithm( n2, temp );
	}
}
