<%@page import="com.ilkerkonar.td.model.SolMenu"%>
<%@page import="com.ilkerkonar.td.model.SolMenuBirim"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<META HTTP-EQUIV="Content-Type"
	CONTENT="text/html; charset=windows-1254">
<META http-equiv="Content-Type" content="text/html; charset=iso-8859-9">
<META http-equiv="content-language" content="TR">
<meta name="currentPageType" content="ana"/>

<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="/css/jMenu.jquery.css" rel="stylesheet" type="text/css" media="screen" />
<link href="/css/javacode.css" rel="stylesheet" type="text/css" media="screen" />
<link href="/css/jquery-ui-1.8.17.custom.css" rel="stylesheet" type="text/css" media="screen" />
<link href="/css/form.css" rel="stylesheet" type="text/css" media="screen" />

<script type="text/javascript" src="/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/js/jquery-ui-1.8.17.custom.min.js"></script>
<script type="text/javascript" src="/js/jMenu.jquery.js"></script>

<title><decorator:title default="Tasarım Desenleri" /></title>

<decorator:head />
</head>
<decorator:usePage id="thePage" />
<% String pageType = thePage.getProperty("meta.currentPageType");%>
<body>
	<div class="baslik">
		<div class="marka">Tasarım Desenleri</div>
		<div class="slogan">Nesneye Dayalı Programlamada Sınıf
			İlişkileri Nasıl Olmalı?</div>
	</div>
	<div class="yataymenueksen">
		<div class="yataymenu">
			<ul id="jMenu">
				<li><a class="fNiv" href="/jsp/tasdes/tasdesnedir.jsp">Ana
						Sayfa</a></li>
				<li><a class="fNiv" href="#">Tasarım
						Desenleri</a>
					<ul>
						<li class="arrow"></li>
						<li><a href="/jsp/tasdesincele/singleton.jsp">Yaratıcı Tasarım Desenleri</a></li>
						<li><a href="/jsp/tasdesincele/adapter.jsp">Yapısal Tasarım Desenleri</a></li>
						<li><a href="/jsp/tasdesincele/mediator.jsp">Davranışsal Tasarım Desenleri</a></li>
					</ul>
				<li><a class="fNiv" href="http://www.ilkerkonar.com">Nesneye
						Dayalı Programlama</a></li>
			</ul>
			<script type="text/javascript">
				$(document).ready(function() {  
					$("#jMenu").jMenu();  
				});
			</script>			
		</div>
	</div>
	<div class="solmenu">
		<div class="solmenubaslik">
			<decorator:getProperty property="page.solmenubaslikicerik"/>			
		</div>  
		<% List< SolMenuBirim > menuList = SolMenu.menuMap.get( pageType ); %>
		<ul> 
			<% for ( final SolMenuBirim birim : menuList ) { %> 
				<li><a href="<%=birim.getUrl()%>"><%=birim.getContent()%></a></li>
			<% } %>
		</ul> 
	</div>
	<div class="content">
		<decorator:body />
		<p class="contentHeader">Yorum Yaz, Düşüncelerini Paylaş</p>
		<div class="formdiv">
		<div class="form-container">
		<form action="#" method="post">	
			<p class="legend"><strong>Not:</strong> Zorunlu alanlar yıldız (<em>*</em>) ile belirtilmiştir.</p>
			<fieldset>
				<legend>Kişisel Bilgiler</legend>
				<div>
					<label for="nick">İsim <em>*</em></label> 
					<input id="nick" type="text" name="nick" value="" />
				</div>
				<div>
					<label for="email">E-posta Adresi </label> 
					<input id="email" type="text" name="email" value="" />
					<p class="note">E-posta adresiniz kimse ile paylaşılmayacaktır. <strong>Gerekli olduğunda sizinle iletişim sağlamak için kullanılacaktır.</strong></p>
				</div>
			</fieldset>	
			<fieldset>
				<legend>Yorum Alanı</legend>
				<div>
					<label for="yorumbaslik">Başlık <em>*</em></label> 
					<input id="yorumbaslik" type="text" name="yorumbaslik" value="" />
				</div>
				<div>
					<label for="yorum">Description <em>*</em></label>
					<textarea id="yorum" name="yorum" cols="60" rows="10"></textarea>
				</div>
			</fieldset>	
			<div class="buttonrow">
				<input type="submit" value="Gönder" class="button" />
				<input type="button" value="Temizle" class="button" />
			</div>	
		</form>
		</div>
		</div>				
	</div>
</body>
</html>
