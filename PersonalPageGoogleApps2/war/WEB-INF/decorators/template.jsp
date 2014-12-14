<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<%
	String activePage = ( String ) getServletContext().getAttribute( "activePage" );
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
			<h1><a href="#">İlker.<font style="color:#0A769A;">KONAR</font><sup>Me</sup></a></h1>
			<h2>Software Developer, Father, Wild Nature Lover</h2>
		</div>
		<div id="menu">
			<ul>
				<% if ( activePage.equals( "home" ) ) { %>
					<li class="active"><a href="/jsp/home.jsp">Home</a></li>
				<% } else { %>
					<li><a href="/jsp/home.jsp">Home</a></li>
				<% } 
				   if ( activePage.equals( "photos" ) ) {	
				%>
					<li class="active"><a href="#">Photos</a></li>
				<% } else { %>
					<li><a href="#">Photos</a></li>
				<% } 
				   if ( activePage.equals( "resume" ) ) {	
				%>
					<li class="active"><a href="/jsp/resume.jsp">Resume</a></li>
				<% } else { %>
					<li><a href="/jsp/resume.jsp">Resume</a></li>
				<% } %>									
			</ul>
		</div>
	</div>
	<decorator:body />		
	<div id="footer">
		
	</div>	
</body>

</html>
