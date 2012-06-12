<%@ page contentType="text/html; charset=UTF-8"%>
<head>
<meta name="currentPageName" content="giris"/>
</head>

<form id="girisForm" name="girisForm" action="/giris" method="post">
	<table style="margin-left : 200px;">
		<tr>
			<td width="150">Kullanıcı İsmi:</td>
			<td width="150"><input type="text" name="kullaniciIsmi" id="kullaniciIsmi" width="120"/></td>
		</tr>
		<tr>
			<td width="150">Şifre:</td>
			<td width="150"><input type="password" name="sifre" id="sifre" width="120"/></td>
		</tr>
		<tr>
			<td><input type="submit" value="Giriş Yap"/></td>
			<td>&nbsp;</td>
		</tr>
	</table>
</form>

<script type="text/javascript">
	$('#kullaniciIsmi').focus();
</script>			
