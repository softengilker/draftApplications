<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yarataticitd"/>
<meta name="currentPageName" content="prototype"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yaratıcı Tasarım Desenleri</content>


<p class="contentHeader">Kopya Nesne ( Prototype ) Tasarım Deseni</p>
<p>Var olan bir nesneden, kopyalama yöntemi ile yeni nesne yaratmak için bu tasarım deseni kullanılır. Nesne yaratmak için "new" operatörü kullanılmaz. Yazılım dillerindeki "clone" gibi, nesne kopyalama yordamlarından faydalanılır. Örneğin java programlama dilinde, bir nesnenin kopyalanabilmesi için, nesnenin "Cloneable" arayüzünden türemiş olması gereklidir.</p>
<p>Bazı nesneler çok büyük olup, çok kaynak harcıyor olabilir. <u>Bu nesnelerin yeniden yaratılması yerine, kolonlanması performans ve kaynak kullanımı açısından tasarruf edilmesine yarar.</u> Bu durumlarda "Kopya Nesne" tasarım deseni kullanılabilir.</p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnekte, kopyalanabilme özelliğine sahip ( Java Cloneable arayüzünden türemiş ) bir Resim sınıfı bulunmaktadır. Bu sınıfın renk, boy, en gibi sınıf değişkenleri bulunmakta ve bir de kopyasının alınmasına yarayan ve dışarıdan çağırılabilen ( public ) bir "kopyaAl" yordamı vardır. İstemci sınıf ( ResimÜretici ) bu yordam ile sınıfın kopyasını oluşturabilmektedir.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li style="background-color: #c4ffff;"><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">Resim.java</a></li>
		<li><a href="#tabs-3">ResimÜretici.java</a></li>
		<li style="background-color: #ffffc4;"><a href="#tabs-4">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/prototype.jpg" />
	</div>
	<div id="tabs-2">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.prototype;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Resim.java<br />
		 *<br />
		 * Tarih bilgisi : May 11, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Resim </span><span class="java4">implements </span><span class="java10">Cloneable </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">String&#xA0; renk;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">Integer&#xA0; boy;<br />
		&#xA0; </span><span class="java4">private final </span><span class="java10">Integer&#xA0; en;<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Resim</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String renk, </span><span class="java4">final </span><span class="java10">Integer boy, </span><span class="java4">final </span><span class="java10">Integer en </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.renk = renk;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.boy = boy;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">this</span><span class="java10">.en = en;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">protected </span><span class="java10">Resim kopyaAl</span><span class="java8">() {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">try </span><span class="java8">{<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Resim nesnesi kopyalanıyor.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java8">( </span><span class="java10">Resim </span><span class="java8">) </span><span class="java4">super</span><span class="java10">.clone</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">} </span><span class="java4">catch </span><span class="java8">( </span><span class="java4">final </span><span class="java10">CloneNotSupportedException e </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">e.printStackTrace</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return null</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0; }<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String renkAl</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">renk;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Integer boyAl</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">boy;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">Integer enAl</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java10">en;<br />
		&#xA0; </span><span class="java8">}<br />
		<br />
		&#xA0; </span><span class="java16">@Override<br />
		&#xA0; </span><span class="java4">public </span><span class="java10">String toString</span><span class="java8">() {<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">return </span><span class="java5">&#34;Resim [renk=&#34; </span><span class="java10">+ renk + </span><span class="java5">&#34;, boy=&#34; </span><span class="java10">+ boy + </span><span class="java5">&#34;, en=&#34; </span><span class="java10">+ en + </span><span class="java5">&#34;]&#34;</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 *<br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />		
		 <script type="text/javascript"><!--
google_ad_client = "ca-pub-7707439910959753";
/* Yeni Tasarım Desenleri Kod İçi */
google_ad_slot = "5334654695";
google_ad_width = 234;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>		
		<br />		 
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.td.desen.ornekkodlar.prototype;<br />
		<br />
		</span><span class="java14">/**<br />
		 * Resim&Uuml;retici.java<br />
		 *<br />
		 * Tarih bilgisi : May 11, 2014<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Resim&Uuml;retici </span><span class="java8">{<br />
		<br />
		&#xA0; </span><span class="java14">/**<br />
		&#xA0;&#xA0; * </span><span class="java11">@param </span><span class="java14">args<br />
		&#xA0;&#xA0; */<br />
		&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Resim nesnesi &uuml;retiliyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Resim resim1 = </span><span class="java4">new </span><span class="java10">Resim</span><span class="java8">( </span><span class="java5">&#34;mavi&#34;</span><span class="java10">, </span><span class="java7">25</span><span class="java10">, </span><span class="java7">15 </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Yeniden resim nesnesi &uuml;retmek yerine,<br />
		&#xA0;&#xA0;&#xA0; // var olan resim nesnesinden kopyalama yapılıyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Resim resim2 = resim1.kopyaAl</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java3">// Kopyalanan resim nesnesinin &ouml;zellikleri yazılıyor.<br />
		&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Kopyalanan resim nesnesi : &#34; </span><span class="java10">+ resim2 </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-4">
		<span class="ekrancikti">	
			Kopyalanan resim nesnesi : Resim [renk=mavi, boy=25, en=15]	
		</span>			
	</div>
</div>	