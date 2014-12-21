<%@ page contentType="text/html; charset=UTF-8"%>

<%
	getServletContext().setAttribute( "activePage", "photos" );

	int langIndex = 0;
	String lang = request.getParameter( "lang" );
	
	if ( lang == null ) {
		lang = "eng";
	} else if ( lang.equals( "tr" ) ) {
		langIndex = 1;
	}
	
	int fieldCount = 5;
	String[][] langArray = new String[fieldCount][2];
	
	langArray[0][0] = "Me";
	langArray[0][1] = "Ben";
	langArray[1][0] = "Software Developer, Father, Wild Nature Lover";
	langArray[1][1] = "Yazılım Mühendisi, Baba, Doğasever";
	langArray[2][0] = "Home";
	langArray[2][1] = "Ana Sayfa";
	langArray[3][0] = "Photos";
	langArray[3][1] = "Fotoğraflar";
	langArray[4][0] = "Resume";
	langArray[4][1] = "Özgeçmiş";	
%>

<div id="page">
	<table style="margin-left: 100px;">
		<tr>
			<td><img src="/image/photos/1.jpg"/></td>
			<td><img src="/image/photos/2.JPG"/></td>			
			<td><img src="/image/photos/3.JPG"/></td>
			<td><img src="/image/photos/4.jpg"/></td>			
		</tr>
		<tr>
			<td><img src="/image/photos/5.jpg"/></td>
			<td><img src="/image/photos/6.JPG"/></td>			
			<td><img src="/image/photos/7.JPG"/></td>
			<td><img src="/image/photos/8.JPG"/></td>			
		</tr>
	</table>
</div>
