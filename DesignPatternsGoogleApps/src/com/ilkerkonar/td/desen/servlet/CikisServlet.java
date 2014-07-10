
package com.ilkerkonar.td.desen.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Deneme
 */
public class CikisServlet extends HttpServlet {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -1602208399477103746L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet( final HttpServletRequest request, final HttpServletResponse response )
		throws ServletException, IOException {

		request.getSession().setAttribute( "girdi", null );

		// Giris sayfasina gonder
		response.sendRedirect( response.encodeRedirectURL( "/jsp/yonetim/giris.jsp" ) );
	}
}
