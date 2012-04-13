
package com.ilkerkonar.td.desen.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.repackaged.org.json.JSONException;
import com.google.appengine.repackaged.org.json.JSONObject;
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
			final JSONObject jObj = new JSONObject( request.getParameter( "veri" ) );
			final String indeks = jObj.getString( "indeks" );
			final String resimMetin = jObj.getString( "resimMetin" );

			if ( resimMetin == null || !GirisKontrol.girisKontrol( Integer.parseInt( indeks ), resimMetin ) ) {
				throw new ServletException( "Resim metin bos veya yanlis girilmis" );
			}

			final ServletOutputStream outputStream = response.getOutputStream();
			outputStream.print( "basarili" );
			outputStream.flush();
			outputStream.close();

		} catch ( final JSONException e ) {
			throw new ServletException( "Json parse hatasi" );
		}
	}
}
