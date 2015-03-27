/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.observer;

import java.util.ArrayList;
import java.util.List;

/**
 * FiyatKonusu.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class FiyatKonusu implements Konu {

	private final List< FiyatGözlemcisi >	gözlemciListesi	= new ArrayList< FiyatGözlemcisi >();
	private long							fiyat;

	@Override
	public void gözlemcilereHaberVer() {
		for ( final FiyatGözlemcisi gözlemci : gözlemciListesi ) {
			gözlemci.güncelle( fiyat );
		}
	}

	@Override
	public void gözlemciEkle( final FiyatGözlemcisi gözlemci ) {
		gözlemciListesi.add( gözlemci );
	}

	public void fiyatDeğiştir( final long fiyat ) {
		this.fiyat = fiyat;
		gözlemcilereHaberVer();
	}
}
