/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.memento;

/**
 * Kullanıcı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Kullanıcı {

	public static void main( final String[] args ) {
		final Döküman döküman = new Döküman();
		döküman.içerikAta( "" );

		final DökümanYazımProgramı program = new DökümanYazımProgramı( döküman );
		program.dökümanYaz( "1" );
		program.dökümanYaz( "2" );
		program.dökümanYaz( "3" );
		program.dökümanYaz( "4" );

		// En son içerik "4" yazılır.
		// Fakat önceki içerikler saklanır.
		System.out.println( "En son içerik : " + döküman.içerikAl() );

		// Son üç işlem geri alınır.
		program.geriAl();
		program.geriAl();
		program.geriAl();

		// Son üç işlem geri alındığı için, "1" içeriği yazılır.
		System.out.println( "Üç işlem geri alındıktan sonra içerik : " + döküman.içerikAl() );
	}
}
