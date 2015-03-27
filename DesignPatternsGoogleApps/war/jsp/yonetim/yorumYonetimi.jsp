<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.ilkerkonar.td.veri.Yorum"%>
<%@page import="com.ilkerkonar.td.veri.PMF"%>
<%@page import="javax.jdo.PersistenceManager"%>
<%@page import="javax.jdo.Query"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageName" content="yorumYonetimi"/>
</head>

<%
	// Session nesne kontrol
	Boolean deger = ( Boolean ) session.getAttribute( "girdi" );
	
	if ( deger == null || !deger ) {
		response.sendRedirect( "/jsp/yonetim/giris.jsp" );		
	}

	String sayfaismi = request.getParameter( "sayfaismi" );
	
	Query query = null;
	List<Yorum> tumYorumlar = null;
	
	if ( sayfaismi == null || sayfaismi.equals( "hepsi" ) ) {
		query = PMF.get().getPersistenceManager().newQuery( Yorum.class );
		
		tumYorumlar = ( List<Yorum> ) query.execute();
	} else {
		query = PMF.get().getPersistenceManager().newQuery( Yorum.class, "pageName == pageNameParam" );
		query.declareParameters( "String pageNameParam" );
		
		tumYorumlar = ( List<Yorum> ) query.execute( sayfaismi );
	}			
	
	SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy HH:mm:ss");	
%>
<form id="listeleForm" name="listeleForm" action="/yorumDegistir" method="post">
	<input type="hidden" name="yorumidhidden" id="yorumidhidden"/>
	<input type="hidden" name="onaylahidden" id="onaylahidden"/>
	<table class="yorumTablo" style="margin-left : 10px;">
		<tr>
			<th>Sayfa İsmi</th>
			<th>Yorum Başlık</th>
			<th>Yorum İçerik</th>
			<th>Yorum Zamanı</th>
			<th>Yorum Durumu</th>
			<th>Yorumlayan E-posta</th>
			<th>Yorumlayan Nick</th>
			<th>İşlemler</th>
		</tr>
		<% if ( tumYorumlar.size() == 0 ) { %>
		<tr>
			<td colspan="7">Hiç yorum bulunmamaktadır.</td>
		</tr>
		<% } else { 
			for ( Yorum yorum : tumYorumlar ) {
		%>
			<tr>
				<td align="center"><%=yorum.getPageName()%></td>
				<td><%=yorum.getYorumBaslik()%></td>
				<td><%=yorum.getYorumIcerik()%></td>
				<td><%=sdf.format( yorum.getYorumZamani() )%></td>
				<td align="center" style="font-weight: bold;">
					<%	
						if ( yorum.getDurum().intValue() == 0 ) {
							out.print( "Yeni" );
						} else if ( yorum.getDurum().intValue() == 1 ) {
							out.print( "Aktif" );
						} else if ( yorum.getDurum().intValue() == 2 ) {
							out.print( "Pasif" );
						}
					%>
				</td>
				<td><%=yorum.getEmail()%></td>
				<td><%=yorum.getNick()%></td>
				<td>
					<%	
						if ( yorum.getDurum().intValue() == 0 ) {
					%>
						<input type="button" value="Aktifle" style="background-color: #11dd11" data-yorumid="<%=yorum.getId()%>" data-onayla="aktifle" />
						&nbsp;&nbsp;
						<input type="button" value="Pasifle" style="background-color: #dd1111" data-yorumid="<%=yorum.getId()%>" data-onayla="pasifle" />					
						&nbsp;&nbsp;
						<input type="button" value="Sil" style="background-color: #dddd11" data-yorumid="<%=yorum.getId()%>" data-onayla="sil" />
					<% 
						} else if ( yorum.getDurum().intValue() == 1 ) {
					%>		
						<input type="button" value="Pasifle" style="background-color: #dd1111" data-yorumid="<%=yorum.getId()%>" data-onayla="pasifle" />
						&nbsp;&nbsp;
						<input type="button" value="Sil" style="background-color: #dddd11" data-yorumid="<%=yorum.getId()%>" data-onayla="sil" />					
					<%
						} else if ( yorum.getDurum().intValue() == 2 ) {
					%>
						<input type="button" value="Aktifle" style="background-color: #11dd11" data-yorumid="<%=yorum.getId()%>" data-onayla="aktifle" />
						&nbsp;&nbsp;
						<input type="button" value="Sil" style="background-color: #dddd11" data-yorumid="<%=yorum.getId()%>" data-onayla="sil" />					
					<% } %>
				</td>
			</tr>
		<% } } %>
	</table>
	<br>
	Toplam Yorum Sayısı:&nbsp;&nbsp;<%=tumYorumlar.size()%> 	
</form>

<script type="text/javascript">

	$(document).ready(function(){
	    $('input[type=button]').click(function() {
	       	var yorumidval = $(this).data('yorumid');
			$('#yorumidhidden').val( yorumidval );	
			$('#onaylahidden').val( $(this).data('onayla') );
			$('#listeleForm').submit();
	    });
	});
	
</script>
