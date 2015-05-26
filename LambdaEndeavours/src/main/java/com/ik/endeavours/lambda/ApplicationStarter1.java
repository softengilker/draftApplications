/**
 * Lambda Endeavours to learn
 */

package com.ik.endeavours.lambda;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

/**
 * @author Ilker KONAR
 *
 * May 26, 2015
 *
 * <br/><br/>
 *
 */
public class ApplicationStarter1 {

	/**
	 * @param args
	 */
	public static void main( final String[] args ) {

		String sentence = "Java is a general-purpose computer programming language that is concurrent, class-based, object-oriented and specifically designed to have as few implementation dependencies as possible.";

		// Remove the punctuation marks.
		sentence = sentence.toLowerCase().replaceAll( "[^a-z ]", "" );

		// Extract the words.
		final List< String > wordList = Arrays.asList( sentence.split( " " ) );
		// Extract the letters.
		final List< String > letterList = Arrays.asList( sentence.split( "" ) );

		System.out.printf( "Word List Count : %d, Word List : " + r( wordList.toString() ) + " \n", wordList.size() );
		System.out.println( "Letter List Count: " + letterList.size() + ", Letter List : " + r( letterList.toString() )
			+ "\n" );

		System.out.println( "Sorted Word List : " + r( sort( wordList ).toString() ) );
		System.out.println( "Sorted Letter List : " + r( sort( letterList ).toString() ) + " \n" );

		System.out.println( "Sorted Unique Word List : " + r( sort( unique( wordList ) ).toString() ) );
		System.out.println( "Sorted Unique Letter List : " + r( sort( unique( letterList ) ).toString() ) + " \n" );

		System.out.println( "Word List Unit Count Map: " + unitCount( wordList ) );
		System.out.println( "Letter List Unit Count Map: " + unitCount( letterList ) + " \n" );
	}

	private static List< String > sort( final List< String > stringList ) {
		return stringList.stream().sorted().collect( Collectors.toList() );
	}

	private static List< String > unique( final List< String > stringList ) {
		return new ArrayList< String >( new HashSet< String >( stringList ) );
	}

	private static Map< String, Long > unitCount( final List< String > stringList ) {
		return stringList.stream().collect( Collectors.groupingBy( Function.identity(), Collectors.counting() ) );
	}

	private static String r( final String str ) {
		// Remove the brackets
		return str.replaceAll( "[\\]\\[]", "" );
	}
}
