
package com.ilkerkonar.td.desen.servlet;

import java.io.IOException;
import java.util.Date;

import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ilkerkonar.td.veri.PMF;
import com.ilkerkonar.td.veri.Yorum;

/**
 * Servlet implementation class Deneme
 */
public class YorumEkleServlet extends HttpServlet {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 4478690272776407687L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost( final HttpServletRequest request, final HttpServletResponse response )
		throws ServletException, IOException {

		final String nick = request.getParameter( "nick" );
		final String email = request.getParameter( "email" );
		final String yorumbaslik = request.getParameter( "yorumbaslik" );
		final String yorum = request.getParameter( "yorum" );
		final String pageName = request.getParameter( "hiddenPageName" );

		final PersistenceManager pm = PMF.get().getPersistenceManager();

		final Yorum y = new Yorum();
		y.setEmail( email );
		y.setNick( nick );
		y.setPageName( pageName );
		y.setYorumBaslik( yorumbaslik );
		y.setYorumIcerik( yorum );
		y.setYorumZamani( new Date() );
		y.setDurum( 0 );

		try {
			pm.makePersistent( y );
		} catch ( final Exception ex ) {

		} finally {
			pm.close();
		}

		request.getSession().setAttribute( "yorumAlindi", "evet" );
		response.sendRedirect( response.encodeRedirectURL( "/jsp/tasdesincele/" + pageName + ".jsp" ) );
	}
}
