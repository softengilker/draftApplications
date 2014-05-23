/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.interpreter;

import java.util.ArrayList;
import java.util.List;

/**
 * DilYorumlayıcısı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class DilYorumlayıcısı {

	public static void main( final String[] args ) {
		// Yorumlanacak dil.
		final String metin = "++-%%+-";
		final List< Sembol > sembolListesi = new ArrayList< Sembol >();

		// Metni ayrıştır ve sembol sınıflarını
		// listeye ekle.
		for ( final char c : metin.toCharArray() ) {
			if ( c == '+' ) {
				sembolListesi.add( new ArtıSembol() );
			} else if ( c == '-' ) {
				sembolListesi.add( new EksiSembol() );
			} else if ( c == '%' ) {
				sembolListesi.add( new YüzdeSembol() );
			}
		}

		// Yorumla.
		for ( final Sembol s : sembolListesi ) {
			s.yorumla();
		}
	}
}
