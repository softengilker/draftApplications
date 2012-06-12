
package com.ilkerkonar.td.desen.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ilkerkonar.td.model.GirisKontrol;

/**
 * Servlet implementation class Deneme
 */
public class GirisKontrolServlet extends HttpServlet {

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
			final String indeks = request.getParameter( "indeks" );
			final String resimMetin = request.getParameter( "resimMetin" );

			if ( resimMetin == null || !GirisKontrol.girisKontrol( Integer.parseInt( indeks ), resimMetin ) ) {
				throw new ServletException( "Resim metin bos veya yanlis girilmis" );
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
