
package com.ilkerkonar.td.desen.servlet;

import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.jdo.Transaction;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ilkerkonar.td.veri.PMF;
import com.ilkerkonar.td.veri.Yorum;

/**
 * Servlet implementation class Deneme
 */
public class YorumYonetimiServlet extends HttpServlet {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -1602208399477103746L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost( final HttpServletRequest request, final HttpServletResponse response )
		throws ServletException, IOException {

		final Boolean deger = ( Boolean ) request.getSession().getAttribute( "girdi" );

		if ( deger == null || !deger ) {
			response.sendRedirect( response.encodeRedirectURL( "/jsp/yonetim/giris.jsp" ) );
		}

		try {
			final String yorumid = request.getParameter( "yorumidhidden" );
			final String onayla = request.getParameter( "onaylahidden" );

			// Guncelle
			final PersistenceManager pm = PMF.get().getPersistenceManager();
			final Transaction ct = pm.currentTransaction();

			try {
				ct.begin();
				final Yorum yorum = pm.getObjectById( Yorum.class, Long.parseLong( yorumid ) );

				if ( onayla.equals( "aktifle" ) ) {
					yorum.setDurum( new Integer( 1 ) );
				} else if ( onayla.equals( "pasifle" ) ) {
					yorum.setDurum( new Integer( 2 ) );
				} else if ( onayla.equals( "sil" ) ) {
					pm.deletePersistent( yorum );
				}

				ct.commit();
			} catch ( final Exception ex ) {
				ct.rollback();
			} finally {
				pm.close();
			}

			// Tekrar onaylama sayfasina gonder
			response.sendRedirect( response.encodeRedirectURL( "/jsp/yonetim/yorumYonetimi.jsp" ) );

		} catch ( final Exception e ) {
			throw new ServletException( "Giris yapmaya calisirken bir hata oldu!, Ileti : " + e.getMessage() );
		}
	}
}
