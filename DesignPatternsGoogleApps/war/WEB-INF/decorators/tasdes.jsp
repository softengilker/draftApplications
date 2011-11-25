<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<META HTTP-EQUIV="Content-Type"
	CONTENT="text/html; charset=windows-1254">
<META http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
<META http-equiv="content-language" content="TR">
<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
<title><decorator:title default="Tasarım Desenleri"/></title>
<decorator:head/>
</head>
<body>
	<div class="baslik">
		<div class="marka">Tasarım Desenleri</div>
		<div class="slogan">Nesneye Dayalı Programlamada Sınıf
			İlişkileri Nasıl Olmalı?</div>
	</div>
	<div class="yataymenueksen">
		<div class="yataymenu">
			<ul id="yataymenulist">
				<li><a href="/jsp/tasdes/tasdesnedir.jsp"
					style="width: 100px; border-left-width: 1;">Ana Sayfa</a>
				</li>
				<li><a href="http://www.ilkerkonar.com" style="width: 150px;">Tasarım Desenleri</a>
				</li>
				<li><a href="http://www.ilkerkonar.com" style="width: 220px;">Nesneye Dayalı Programlama</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="solmenu">
		<ul>
			<li><a href="/jsp/tasdes/tasdesnedir.jsp">Tasarım Desenleri Nedir?</a></li>
			<li><a href="/jsp/tasdes/tasdestarihcesi.jsp">Tasarım Desenleri Tarihçesi</a></li>
			<li><a href="/jsp/tasdes/tasdessiniflandirma.jsp">Tasarım Desenleri Sınıflandırması</a></li>
		</ul>
	</div>
	<div class="content">
		<decorator:body/>
	</div> 
</body>
</html>
