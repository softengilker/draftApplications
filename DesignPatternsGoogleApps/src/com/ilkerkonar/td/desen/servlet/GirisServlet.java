
package com.ilkerkonar.td.desen.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.labs.repackaged.org.json.JSONObject;

/**
 * Servlet implementation class Deneme
 */
public class GirisServlet extends HttpServlet {

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

		try {
			final String kullaniciIsmi = request.getParameter( "kullaniciIsmi" );
			final String sifre = request.getParameter( "sifre" );

			final JSONObject jsonObject = new JSONObject();
			jsonObject.put( "sonuc", "basarili" );

			if ( kullaniciIsmi == null || sifre == null || !kullaniciIsmi.equals( "softengilker" )
				|| !sifre.equals( "nehir3509" ) ) {
				jsonObject.put( "sonuc", "kullaniciSifreYanlis" );
			}

			response.setContentType( "application/json" );
			final PrintWriter out = response.getWriter();
			out.print( jsonObject );
			out.flush();
			out.close();

		} catch ( final Exception e ) {
			throw new ServletException( "Giris yapmaya calisirken bir hata oldu!, Ileti : " + e.getMessage() );
		}
	}
}
