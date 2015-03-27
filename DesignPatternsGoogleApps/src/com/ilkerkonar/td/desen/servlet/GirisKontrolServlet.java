
package com.ilkerkonar.td.desen.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.labs.repackaged.org.json.JSONObject;
import com.ilkerkonar.td.model.GirisKontrol;

/**
 * Servlet implementation class Deneme
 */
public class GirisKontrolServlet extends HttpServlet {

	/**
	 *
	 */
	private static final long	serialVersionUID	= -7985875355536382085L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost( final HttpServletRequest request, final HttpServletResponse response )
		throws ServletException, IOException {

		try {
			final String indeks = request.getParameter( "indeks" );
			final String resimMetin = request.getParameter( "resimMetin" );

			final JSONObject jsonObject = new JSONObject();
			jsonObject.put( "sonuc", "basarili" );

			if ( resimMetin == null || !GirisKontrol.girisKontrol( Integer.parseInt( indeks ), resimMetin ) ) {
				jsonObject.put( "sonuc", "resimMetinYanlis" );
			}

			response.setContentType( "application/json" );
			final PrintWriter out = response.getWriter();
			out.print( jsonObject );
			out.flush();
			out.close();

		} catch ( final Exception e ) {
			throw new ServletException( "Resim metin kontrol edilirken bir hata oldu!, Ileti : " + e.getMessage() );
		}
	}
}
