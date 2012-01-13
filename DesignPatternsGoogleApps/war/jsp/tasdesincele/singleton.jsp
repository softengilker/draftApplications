<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yarataticitd"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yaratıcı Tasarım Desenleri</content>
<p class="contentHeader">Tek Nesne ( Singleton ) Tasarım Deseni</p>
<div id="tabs" style="overflow:hidden;">
	<ul>
		<li><a href="#tabs-1">TekNesne.java</a></li>
	</ul>
	<div id="tabs-1">
		
<pre style="font-family: consolas, courier; font-size: 11px; background-color: #e5e5e5;">
<font class="kodmavi">/**
 * @author İlker KONAR, Yazılım Kıdemli Uzmanı.
 * 
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.
 */</font>
 
<font class="kodkirmizi">package</font> com.ilkerkonar.td.desen.singleton;

<font class="kodmavi">/**
 * TekNesne.java
 */</font>
<font class="kodkirmizi">public class</font> TekNesne {

	<font class="kodyesil">// private static tek bir nesne oluşturulur.</font>
	<font class="kodkirmizi">private static</font> TekNesne	tekNesne	= <font class="kodkirmizi">new</font> TekNesne();

	<font class="kodmavi">/** 
	 * Yapıcı yordam ( constructor ) private olduğu için dışarıdan ulaşılamaz ve sınıfın nesnesi oluşturulamaz.	
	 */</font> 
	<font class="kodkirmizi">private</font> TekNesne() {
	}
	
	<font class="kodmavi">/**
	 * @return Oluşturulan tek nesneye bu yordam üzerinden erişim sağlanır. 
	 */</font> 
	<font class="kodkirmizi">public static</font> TekNesne nesneAl() {
		<font class="kodkirmizi">return</font> tekNesne;
	}
}
</pre>

	</div>
</div>	