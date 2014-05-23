/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.chainOfResponsibility;

/**
 * ZincirSınaması.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class ZincirSınaması {

	public static void main( final String[] args ) {

		// Zincir nesneleri.
		İşlev zincir1, zincir2, zincir;

		// Zincir 1 i oluştur. A -> C -> B
		zincir1 = new İşlevA();
		zincir = zincir1.sonrakiniAyarla( new İşlevC() );
		zincir = zincir.sonrakiniAyarla( new İşlevB() );

		// Zincir 2 yi oluştur. C -> A
		zincir2 = new İşlevC();
		zincir2.sonrakiniAyarla( new İşlevA() );

		// Zincir 1 i çalıştır.
		zincir1.çalıştır( "Veri1" );

		// Zincir 2 yi çalıştır.
		zincir2.çalıştır( "Veri2" );
	}
}
