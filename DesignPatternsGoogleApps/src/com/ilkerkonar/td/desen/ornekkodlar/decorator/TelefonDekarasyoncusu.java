/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.decorator;

/**
 * TelefonDekarasyoncusu.java
 *
 * Tarih bilgisi : May 23, 2014
 */
public abstract class TelefonDekarasyoncusu implements Telefon {

	protected Telefon	dekoreTelefon;

	public TelefonDekarasyoncusu( final Telefon telefon ) {
		dekoreTelefon = telefon;
	}
}
