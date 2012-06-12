
package com.ilkerkonar.td.desen.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Deneme
 */
public class GirisServlet extends HttpServlet {

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

		try {
			final String kullaniciIsmi = request.getParameter( "kullaniciIsmi" );
			final String sifre = request.getParameter( "sifre" );

			if ( kullaniciIsmi == null || sifre == null || !kullaniciIsmi.equals( "softengilker" )
				|| !sifre.equals( "nehir3509" ) ) {
				throw new ServletException( "Giris bilgileri bos veya yanlis girilmis" );
			}

			response.setContentType( "text/plain" );
			final ServletOutputStream outputStream = response.getOutputStream();
			outputStream.print( "basarili" );
			outputStream.flush();
			outputStream.close();

		} catch ( final Exception e ) {
			throw new ServletException( "Json parse hatasi" );
		}
	}
}
