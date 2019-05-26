
package com.ilkerkonar.algorithms.util;

import java.util.Arrays;
import java.util.function.Consumer;

/**
 * @author ilker
 * 
 * Includes some util methods and lambdas.
 */
public class Printing {

	private final Consumer< Object[] > printTheArray = ( arrayInput ) -> {

		System.out.println( "Array Printing : " );
		Arrays.asList( arrayInput )
			.forEach( ( item ) -> System.out
				.print( item + ", " ) );
		System.out.println( "" );
	};

	private final Consumer< Object[][] > printTheTwoDimensionalArray = ( arrayInput ) -> {

		System.out.println( "Array Printing : " );
		for ( int i = 0; i < arrayInput.length; i++ ) {
			Arrays.asList( arrayInput[i] )
					.forEach( ( item ) -> System.out
							.print( item + ", " ) );
			System.out.println( "" );
		}
		System.out.println( "" );
	};

	public Consumer< Object[] > getArrayPrintingImplementation() {
		return printTheArray;
	}
	public Consumer< Object[][] > get2DimensionalArrayPrintingImplementation() {
		return printTheTwoDimensionalArray;
	}
}
