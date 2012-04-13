
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
	private static final long	serialVersionUID	= -5858965869773560554L;

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

		try {
			pm.makePersistent( y );
		} finally {
			pm.close();
		}
	}
}
