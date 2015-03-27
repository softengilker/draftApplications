/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.desen.ornekkodlar.memento;

import java.util.ArrayList;
import java.util.List;

/**
 * DökümanYazımProgramı.java
 *
 * Tarih bilgisi : May 24, 2014
 */
public class DökümanYazımProgramı {

	private final Döküman						döküman;
	private final List< DökümanHatırlayıcı >	geçmişListesi	= new ArrayList< DökümanHatırlayıcı >();

	public DökümanYazımProgramı( final Döküman döküman ) {
		this.döküman = döküman;
	}

	public void dökümanYaz( final String yeniİçerik ) {
		final DökümanHatırlayıcı hatırlayıcı = döküman.hatırlayıcıYarat();
		geçmişListesi.add( hatırlayıcı );

		döküman.içerikAta( yeniİçerik );
	}

	public void geriAl() {
		final DökümanHatırlayıcı hatırlayıcı = geçmişListesi.remove( geçmişListesi.size() - 1 );
		döküman.hatırlayıcıAta( hatırlayıcı );
	}
}
