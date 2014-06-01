/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.mediator;

/**
 * Arabulucu.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class Arabulucu {

	private Bilgisayar	bilgisayar;
	private Televizyon	televizyon;
	private Radyo		radyo;

	public void bilgisayarEkle( final Bilgisayar bilgisayar ) {
		this.bilgisayar = bilgisayar;
	}

	public void radyoEkle( final Radyo radyo ) {
		this.radyo = radyo;
	}

	public void televizyonEkle( final Televizyon televizyon ) {
		this.televizyon = televizyon;
	}

	public void bilgisayarÇalıştır() {
		// Bilgisayar çalıştığında, diğer aygıtların durması isteniyor.
		televizyon.durdur();
		radyo.durdur();
	}

	public void radyoÇalıştır() {
		// Radyo çalıştığında, diğer aygıtların durması isteniyor.
		bilgisayar.durdur();
		televizyon.durdur();
	}

	public void televizyonÇalıştır() {
		// Televizyon çalıştığında, diğer aygıtların durması isteniyor.
		bilgisayar.durdur();
		radyo.durdur();
	}
}
