/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 * 
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * GirisKontrol.java
 */
public class GirisKontrol {

	private static final Map< Integer, String >	girisKontrolMap			= new HashMap< Integer, String >();

	private static final String					yolOnEk					= "/image/capthca/capthca";
	private static final String					yolSonEk				= ".png";

	private static final String[]				girisKontrolDosyaIsim	= new String[] { "107", "284", "371", "453",
																		"509", "738", "876", "954" };

	static {
		girisKontrolMap.put( 0, "a5C27g1" );
		girisKontrolMap.put( 1, "F2B6hy9" );
		girisKontrolMap.put( 2, "N63vC8t" );
		girisKontrolMap.put( 3, "Ew8uA73" );
		girisKontrolMap.put( 4, "Db59gT9" );
		girisKontrolMap.put( 5, "Zm8nL46" );
		girisKontrolMap.put( 6, "d5Ak9Z3" );
		girisKontrolMap.put( 7, "B93e9r7" );
	}

	public static int girisKontrolIndeksVer() {
		final Random randomGenerator = new Random();
		return randomGenerator.nextInt( girisKontrolDosyaIsim.length );
	}

	public static String girisKontrolResimYolVer( final int indeks ) {
		return yolOnEk + girisKontrolDosyaIsim[ indeks ] + yolSonEk;
	}

	public static boolean girisKontrol( final int indeks, final String girilen ) {
		return girisKontrolMap.get( Integer.valueOf( indeks ) ).equalsIgnoreCase( girilen );
	}

	public static String tarihiFormatliAl( final Date dateNesnesi ) {
		final SimpleDateFormat sdf = new SimpleDateFormat( "dd/MM/yyyy HH:mm" );
		return sdf.format( dateNesnesi );
	}
}
