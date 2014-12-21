<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<%
	String activePage = ( String ) getServletContext().getAttribute( "activePage" );

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
	langArray[1][1] = "Yazılım Mühendisi, Baba, Doğa sever";
	langArray[2][0] = "Home";
	langArray[2][1] = "Ana Sayfa";
	langArray[3][0] = "Photos";
	langArray[3][1] = "Fotoğraflar";
	langArray[4][0] = "Resume";
	langArray[4][1] = "Özgeçmiş";
%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1254">
	<META http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
	<META http-equiv="content-language" content="TR">
	<meta name="currentPageType" content="ana"/>

	<script type="text/javascript" src="/js/benim.js"></script>
	<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />	

	<title><decorator:title default="İlker KONAR Kişisel Sayfam" /></title>
	<decorator:head />
</head>

<body>
	<div id="header">
		<div id="logo">
			<h1><a href="#">İlker.<font style="color:#0A769A;">KONAR</font><sup><%=langArray[0][langIndex]%></sup></a></h1>
			<h2><%=langArray[1][langIndex]%></h2>
		</div>
		<div id="language">
			<ul>
				<li><a href="/jsp/<%=activePage%>.jsp?lang=<%=lang.equals( "eng" ) ? "tr" : "eng"%>" title="<%=lang.equals( "eng" ) ? "Türkçe diline geç" : "Convert to English"%>"><img src="/image/<%=lang.equals( "eng" ) ? "turk_bayrak.gif" : "british-flag.jpg"%>"/></a></li>
			</ul>
		</div>
		<div id="menu">
			<ul>
				<li <% if ( activePage.equals( "home" ) ) { %>class="active"<%}%>><a href="/jsp/home.jsp?lang=<%=lang%>"><%=langArray[2][langIndex]%></a></li>
				<li <% if ( activePage.equals( "photos" ) ) { %>class="active"<%}%>><a href="/jsp/photos.jsp?lang=<%=lang%>"><%=langArray[3][langIndex]%></a></li>
				<li <% if ( activePage.equals( "resume" ) ) { %>class="active"<%}%>><a href="/jsp/resume.jsp?lang=<%=lang%>"><%=langArray[4][langIndex]%></a></li>
			</ul>
		</div>
	</div>
	<decorator:body />		
	<div id="footer">
		
	</div>	
</body>

</html>
