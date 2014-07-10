<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
	
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<META HTTP-EQUIV="Content-Type"
	CONTENT="text/html; charset=windows-1254">
<META http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
<META http-equiv="content-language" content="TR">

<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="/css/jMenu.jquery.css" rel="stylesheet" type="text/css" media="screen" />
<link href="/css/javacode.css" rel="stylesheet" type="text/css" media="screen" />
<link href="/css/jquery-ui-1.8.17.custom.css" rel="stylesheet" type="text/css" media="screen" />
<link href="/css/form.css" rel="stylesheet" type="text/css" media="screen" />

<script type="text/javascript" src="/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/js/jquery-ui-1.8.17.custom.min.js"></script>
<script type="text/javascript" src="/js/jMenu.jquery.js"></script>
<script type="text/javascript" src="/js/benim.js"></script>

<title><decorator:title default="Tasarım Desenleri" /></title>

<decorator:head />
</head>
<decorator:usePage id="thePage" />
<% 
	String pageName = thePage.getProperty("meta.currentPageName");
%>
<body>
	<div class="baslik">
		<div class="marka">Tasarım Desenleri</div>
		<div class="slogan">Yönetici Ekranları</div>
	</div>
	<% if ( !pageName.equals( "giris" ) ) { %>
		<div class="solmenu">
			<div class="solmenubaslik">
				Ekran Seçimleri			
			</div>  
			<ul> 
				<li><a href="/jsp/yonetim/yeniYorumlariOnaylama.jsp">Yeni Yorumları Onaylama</a></li>
				<li><a href="/jsp/yonetim/yorumYonetimi.jsp?sayfaismi=hepsi">Yorum Yönetimi</a></li>
				<li><a href="/cikis">Çıkış</a></li>
			</ul> 
		</div>
	<% } %>
	<div class="content">
		<decorator:body />
	</div>
</body>
