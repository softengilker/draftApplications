/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 *
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */

package com.ilkerkonar.td.logic;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * EpostaGonder.java
 *
 * Tarih bilgisi : Jul 10, 2014
 */
public class EpostaGonder {

	public void yorumGeldiEpostaGonder( final String sayfa, final String nick ) {

		final Properties props = new Properties();
		final Session session = Session.getDefaultInstance( props, null );

		final String msgBody = "Yorum eklenmiştir. Sayfa : " + sayfa + ", Nick : " + nick;

		try {
			final Message msg = new MimeMessage( session );
			msg.setFrom( new InternetAddress( "bilgi@tasarimdesenleri.com", "Tasarım Desenleri Sitesi" ) );
			msg.addRecipient( Message.RecipientType.TO, new InternetAddress( "ilkerkonar@gmail.com", "Bay İlker KONAR" ) );
			msg.setSubject( "Yorum Eklenmiştir" );
			msg.setText( msgBody );
			Transport.send( msg );

		} catch ( final AddressException e ) {
			System.out.println( "hata var" );
		} catch ( final MessagingException e ) {
			System.out.println( "hata var" );
		} catch ( final UnsupportedEncodingException u ) {
			System.out.println( "hata var" );
		}
	}
}
