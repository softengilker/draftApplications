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
		<li><a href="#tabs-2">Deneme.java</a></li>
	</ul>
	<div id="tabs-1">		
<div class="java"><code class="java"><span class="java14">/**<br />
 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
 * <br />
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
 */<br />
<br />
</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.singleton;<br />
<br />
</span><span class="java14">/**<br />
 * TekNesne.java<br />
 */<br />
</span><span class="java4">public class </span><span class="java10">TekNesne </span><span class="java8">{<br />
<br />
&#xA0;&#xA0; </span><span class="java3">// private static tek bir nesne oluşturulur.<br />
&#xA0;&#xA0; </span><span class="java4">private static </span><span class="java10">TekNesne&#xA0;&#xA0; tekNesne&#xA0;&#xA0; = </span><span class="java4">new </span><span class="java10">TekNesne</span><span class="java8">()</span><span class="java10">;<br />
<br />
&#xA0;&#xA0; </span><span class="java14">/** <br />
&#xA0;&#xA0;&#xA0; * Yapıcı yordam ( constructor ) private olduğu i&ccedil;in dışarıdan ulaşılamaz ve sınıfın nesnesi oluşturulamaz.&#xA0;&#xA0; <br />
&#xA0;&#xA0;&#xA0; */<br />
&#xA0;&#xA0; </span><span class="java4">private </span><span class="java10">TekNesne</span><span class="java8">() {<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;'TekNesne' sınıfının nesnesi bellekte oluşturuluyor.&#34; </span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0; </span><span class="java8">}<br />
<br />
&#xA0;&#xA0; </span><span class="java14">/**<br />
&#xA0;&#xA0;&#xA0; * </span><span class="java11">@return </span><span class="java14">Oluşturulan tek nesneye bu yordam &uuml;zerinden erişim sağlanır. <br />
&#xA0;&#xA0;&#xA0; */<br />
&#xA0;&#xA0; </span><span class="java4">public static </span><span class="java10">TekNesne nesneAl</span><span class="java8">() {<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">tekNesne;<br />
&#xA0;&#xA0; </span><span class="java8">}<br />
<br />
&#xA0;&#xA0; </span><span class="java14">/**<br />
&#xA0;&#xA0;&#xA0; * </span><span class="java11">@return </span><span class="java14">T&uuml;m uygulama boyunca kullanılacak &#34;kullanıcı ismi&#34; bilgisini d&ouml;ner.<br />
&#xA0;&#xA0;&#xA0; */<br />
&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">String getKullanıcıİsmi</span><span class="java8">() {<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java5">&#34;ilker&#34;</span><span class="java10">;<br />
&#xA0;&#xA0; </span><span class="java8">}<br />
<br />
&#xA0;&#xA0; </span><span class="java14">/**<br />
&#xA0;&#xA0;&#xA0; * </span><span class="java11">@return </span><span class="java14">T&uuml;m uygulama boyunca kullanılacak &#34;şifre&#34; bilgisini d&ouml;ner.<br />
&#xA0;&#xA0;&#xA0; */<br />
&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">String getŞifre</span><span class="java8">() {<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java5">&#34;12345&#34;</span><span class="java10">;<br />
&#xA0;&#xA0; </span><span class="java8">}<br />
}</span></code></div>
	</div>
	<div id="tabs-2">
<div class="java"><code class="java"><span class="java14">/**<br />
 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
 * <br />
 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
 */<br />
<br />
</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.singleton;<br />
<br />
</span><span class="java14">/**<br />
 * Deneme.java<br />
 */<br />
</span><span class="java4">public class </span><span class="java10">Deneme </span><span class="java8">{<br />
<br />
&#xA0;&#xA0; </span><span class="java14">/**<br />
&#xA0;&#xA0;&#xA0; * </span><span class="java11">@param </span><span class="java14">args<br />
&#xA0;&#xA0;&#xA0; */<br />
&#xA0;&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// TekNesne sınıfından bir tane bulunabilir ve nesne &uuml;zerindeki <br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; // &#34;public&#34; yordam ve değişkenlere, &#34;TekNesne.nesneAl()&#34; ile<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; // ulaşılabilir. &#34;nesneAl&#34; yordamı, &#34;TekNesne&#34; sınıfının oluşturulan<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; // tek nesnesine ulaşır.<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">String kullanıcıİsmi = TekNesne.nesneAl</span><span class="java8">()</span><span class="java10">.getKullanıcıİsmi</span><span class="java8">()</span><span class="java10">;<br />
<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; System.out.println</span><span class="java8">( </span><span class="java5">&#34;Kullanıcı ismi: &#34; </span><span class="java10">+ kullanıcıİsmi </span><span class="java8">)</span><span class="java10">;<br />
&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; System.out.println</span><span class="java8">( </span><span class="java5">&#34;Şifre: &#34; </span><span class="java10">+ TekNesne.nesneAl</span><span class="java8">()</span><span class="java10">.getŞifre</span><span class="java8">() )</span><span class="java10">;<br />
&#xA0;&#xA0; </span><span class="java8">}<br />
}</span></code></div>	
	</div>
</div>	