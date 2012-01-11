/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 * 
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.model;

/**
 * SolMenuBirim.java
 */
public class SolMenuBirim {

	private final String	content;
	private final String	url;

	public SolMenuBirim( final String content, final String url ) {
		this.content = content;
		this.url = url;
	}

	public String getContent() {
		return content;
	}

	public String getUrl() {
		return url;
	}
}
