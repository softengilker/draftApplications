<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageType" content="yarataticitd"/>
<meta name="currentPageName" content="factoryMethod"/>
<script type="text/javascript">
	jQuery(document).ready(function(){
		$("#tabs").tabs();
	});
</script>
</head>
<content tag="solmenubaslikicerik">Yaratıcı Tasarım Desenleri</content>

<p class="contentHeader">Fabrika Yordam ( Factory Method ) Tasarım Deseni</p>
<p>Fabrika yordam tasarım deseni, nesne yaratma sorumluluğunun bir yordama verilmesidir. Yaratılan nesne, bir sınıf hiyerarşisindeki alt sınıflardan biridir. Hangi alt sınıfın yaratılacağı kararı fabrika yordam içinde verilir. Bu yordam ile belirli bir sınıf hiyerarşisindeki alt nesnelerden birinin yaratma sorumluluğu belirli bir arayüze verilerek sistemden soyutlanmış olur. Böylece nesneleri yaratma kodlarında, kod tekrarları önlenmiş olur. Sistem içinde sınıfların yaratılacağı yer tek olduğu için, ilgili mantıklar tek bir yerde toplanabilir.<p>
<p class="contentHeader">Örnek Uygulama</p>
<p>Örnek uygulamamız bir resim işleyici programıdır. Bu programdaki resimler oluşturulurken, resimlerin hangi "resim formatında" olacağının da belirlenmesi gerekmektedir. Uygulama üzerinde "gif" ve "jpeg" olmak üzere iki tip resim formatı bulunmaktadır. Resimleri oluşturan <font class="icerikKodVurgu">JpegResimFormatı</font> ve <font class="icerikKodVurgu">GifResimFormatı</font> sınıflarıdır. Bu sınıflar <font class="icerikKodVurgu">IResimFormatı</font> isimli bir arayüz sınıfından türemektedirler. Bu sınıfların <font class="icerikKodVurgu">resmiOluştur</font> isminde soyut bir yordamları bulunur. <font class="icerikKodVurgu">Resimİşleyici</font> istemci sınıfının <font class="icerikKodVurgu">IResimFormatı</font> tipinde bir sınıfa ihtiyacı vardır. Bu istemci sınıf bu tipten bir sınıfı alır ve <font class="icerikKodVurgu">resmiOluştur</font> yordamını çalıştırır. Fakat <font class="icerikKodVurgu">Resimİşleyici</font> istemci sınıfı <font class="icerikKodVurgu">IResimFormatı</font> sınıfının yaratılma sorumluluğu üstlenmek istememektedir. İşte burada devreye <b>Fabrika Yordam</b> tasarım deseni girer. <u><font class="icerikKodVurgu">IResimFormatı</font> tipindeki nesnenin yaratılma sorumluluğu <font class="icerikKodVurgu">FormatSeçici</font> sınıfının <font class="icerikKodVurgu">formatAl</font> isimli yordamına verilmiştir.</u> Bu yordam <b>Fabrika Yordamdır</b>. Bu sınıfın "FormatSeçici" gibi ayrı sınıfta olması gerekmemektedir. Bu örnekte bu yordam örneğin "Resimİşleyici" istemci sınıfında da bulunabilirdi. Fakat daha da esnek olsun diye bunu ayrı sınıfa aldım.</p>
<p>"Fabrika Yordam" tasarım desenindeki istenen sınıfı yaratan yordamın tek görevi sınıfı yaratıp bunu istemciye dönmek olmayabilir. Nesne yaratılırken ilgili mantık kodları da bu sınıfta toplanabilir. Böylece sınıf yaratılma ile ilgili tüm sorumluluklar bu yordamda toplanmış olur. Örneği incelediğimizde fabrika yordam olan <font class="icerikKodVurgu">formatAl</font> yordamı oluşturulacak resmin "uzunluk" ve "genişlik" değiştirgelerini de almaktadır. Fabrika yordam üzerinde şöyle bir mantık oluşturulmuştur: Üretilecek olan resmin alanı 100 birimden büyükse "jpeg", değilse "gif" formatında olsun. Nesne yaratma ile ilgili bu mantığın da fabrika yordamda bulunduğuna dikkat edin.</p>

<div id="tabs" style="overflow:hidden;">
	<ul>
		<li><a href="#tabs-1">UML Sınıf Çizelgesi</a></li>
		<li><a href="#tabs-2">IResimFormatı.java</a></li>
		<li><a href="#tabs-3">JpegResimFormatı.java</a></li>
		<li><a href="#tabs-4">GifResimFormatı.java</a></li>
		<li><a href="#tabs-5">FormatSeçici.java</a></li>
		<li><a href="#tabs-6">Resimİşleyici.java</a></li>
		<li><a href="#tabs-7">Ekran Çıktısı</a></li>
	</ul>
	<div id="tabs-1">
		<img src="/image/tasdes/factoryMethod.jpg" />
	</div>
	<div id="tabs-2">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
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
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.factoryMethod;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 09 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public interface </span><span class="java10">IResimFormatı </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java9">void </span><span class="java10">resmiOluştur</span><span class="java8">( </span><span class="java10">Integer uzunluk, Integer genişlik </span><span class="java8">)</span><span class="java10">;<br />
		</span><span class="java8">}</span></code></div>	
	</div>
	<div id="tabs-3">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.factoryMethod;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 09 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">JpegResimFormatı </span><span class="java4">implements </span><span class="java10">IResimFormatı </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java2">/* (non-Javadoc)<br />
		&#xA0;&#xA0;&#xA0; * @see com.ilkerkonar.uygulamalar.web.designPatterns.sample.factoryMethod.IResimFormatı#resmiOluştur<br />
		&#xA0;&#xA0;&#xA0; * (java.lang.Integer, java.lang.Integer)<br />
		&#xA0;&#xA0;&#xA0; */<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">resmiOluştur</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Integer uzunluk, </span><span class="java4">final </span><span class="java10">Integer genişlik </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java5">&#34;Resim Oluştu. Format : JPEG&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; System.out.println</span><span class="java8">( </span><span class="java5">&#34;Uzunluk : &#34; </span><span class="java10">+ uzunluk + </span><span class="java5">&#34;, Genişlik : &#34; </span><span class="java10">+ genişlik </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-4">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.factoryMethod;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 09 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">GifResimFormatı </span><span class="java4">implements </span><span class="java10">IResimFormatı </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java2">/* (non-Javadoc)<br />
		&#xA0;&#xA0;&#xA0; * @see com.ilkerkonar.uygulamalar.web.designPatterns.sample.factoryMethod.IResimFormatı#resmiOluştur<br />
		&#xA0;&#xA0;&#xA0; * (java.lang.Integer, java.lang.Integer)<br />
		&#xA0;&#xA0;&#xA0; */<br />
		&#xA0;&#xA0; </span><span class="java16">@Override<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java9">void </span><span class="java10">resmiOluştur</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Integer uzunluk, </span><span class="java4">final </span><span class="java10">Integer genişlik </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">System.out.println</span><span class="java8">( </span><span class="java10">uzunluk + </span><span class="java5">&#34; uzunluğunda, &#34; </span><span class="java10">+ genişlik + </span><span class="java5">&#34; genişliğinde GIF formatında resim oluştu.&#34; </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-5">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		 <br />
<script type="text/javascript"><!--
google_ad_client = "ca-pub-7707439910959753";
/* Yeni Tasarım Desenleri Kod İçi Uzun2 */
google_ad_slot = "3718320695";
google_ad_width = 468;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>		
		<br /> 
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.factoryMethod;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 09 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">FormatSe&ccedil;ici </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java14">/**<br />
		&#xA0;&#xA0;&#xA0; * Fabrika Yordamı.<br />
		&#xA0;&#xA0;&#xA0; * <br />
		&#xA0;&#xA0;&#xA0; * Resim alanı 100 birimden b&uuml;y&uuml;k resimler i&ccedil;in JPEG, <br />
		&#xA0;&#xA0;&#xA0; * daha k&uuml;&ccedil;&uuml;kler i&ccedil;in GIF formatı tercih edilir.<br />
		&#xA0;&#xA0;&#xA0; * <br />
		&#xA0;&#xA0;&#xA0; * </span><span class="java11">@param </span><span class="java14">uzunluk Resim uzunluğu<br />
		&#xA0;&#xA0;&#xA0; * </span><span class="java11">@param </span><span class="java14">genişlik Resim genişliği<br />
		&#xA0;&#xA0;&#xA0; * </span><span class="java11">@return </span><span class="java14">ResimFormatı nesnelerinden biri. <br />
		&#xA0;&#xA0;&#xA0; */<br />
		&#xA0;&#xA0; </span><span class="java4">public </span><span class="java10">IResimFormatı formatAl</span><span class="java8">( </span><span class="java4">final </span><span class="java10">Integer uzunluk, </span><span class="java4">final </span><span class="java10">Integer genişlik </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Integer resimAlanı = uzunluk * genişlik;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">if </span><span class="java8">( </span><span class="java10">resimAlanı &gt; </span><span class="java7">100 </span><span class="java8">) {<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return new </span><span class="java10">JpegResimFormatı</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java8">} </span><span class="java4">else </span><span class="java8">{<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">return new </span><span class="java10">GifResimFormatı</span><span class="java8">()</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java8">}<br />
		&#xA0;&#xA0; }<br />
		}</span></code></div>	
	</div>
	<div id="tabs-6">
		<div class="java"><code class="java"><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Yazılım Kıdemli Uzmanı.<br />
		 * <br />
		 * Tasarım Desenleri Sitesi Kodları. Dikkat: Her hakkı saklıdır.<br />
		 */<br />
		<br />
		</span><span class="java4">package </span><span class="java10">com.ilkerkonar.uygulamalar.web.designPatterns.sample.factoryMethod;<br />
		<br />
		</span><span class="java14">/**<br />
		 * </span><span class="java11">@author </span><span class="java14">İlker KONAR, Kıdemli Yazılım Uzmanı<br />
		 *<br />
		 * Tarih Bilgisi: 09 Oca 2013<br />
		 *<br />
		 */<br />
		</span><span class="java4">public class </span><span class="java10">Resimİşleyici </span><span class="java8">{<br />
		<br />
		&#xA0;&#xA0; </span><span class="java14">/**<br />
		&#xA0;&#xA0;&#xA0; * </span><span class="java11">@param </span><span class="java14">args<br />
		&#xA0;&#xA0;&#xA0; */<br />
		&#xA0;&#xA0; </span><span class="java4">public static </span><span class="java9">void </span><span class="java10">main</span><span class="java8">( </span><span class="java4">final </span><span class="java10">String</span><span class="java8">[] </span><span class="java10">args </span><span class="java8">) {<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Resim boyutları<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Integer uzunluk = </span><span class="java7">20</span><span class="java10">;<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">Integer genişlik = </span><span class="java7">8</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Fabrika yordamını i&ccedil;eren sınıf oluşturuldu.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">FormatSe&ccedil;ici formatSe&ccedil;ici = </span><span class="java4">new </span><span class="java10">FormatSe&ccedil;ici</span><span class="java8">()</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Fabrika yordamından resim boyutlarına g&ouml;re bir format nesnesi yaratılıp, d&ouml;nd&uuml;.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java4">final </span><span class="java10">IResimFormatı resimFormatıNesnesi = formatSe&ccedil;ici.formatAl</span><span class="java8">( </span><span class="java10">uzunluk, genişlik </span><span class="java8">)</span><span class="java10">;<br />
		<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java3">// Formata g&ouml;re resim &ccedil;izildi.<br />
		&#xA0;&#xA0;&#xA0;&#xA0;&#xA0; </span><span class="java10">resimFormatıNesnesi.resmiOluştur</span><span class="java8">( </span><span class="java10">uzunluk, genişlik </span><span class="java8">)</span><span class="java10">;<br />
		&#xA0;&#xA0; </span><span class="java8">}<br />
		}</span></code></div>	
	</div>
	<div id="tabs-7">
		<span class="ekrancikti">		
			Resim Oluştu. Format : JPEG<br />
			Uzunluk : 20, Genişlik : 8<br /> 
		</span>			
	</div>
</div>