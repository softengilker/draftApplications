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
	
	$('form#girisForm').submit(function(e){
	    e.preventDefault(); //Prevent the normal submission action
	    var self = this;
	    
	    var kullaniciIsmi = $('#kullaniciIsmi').val();
	    
	    if ( kullaniciIsmi == '' ) {
	    	alert('Lütfen kullanıcı isminizi giriniz.');
	    	$('#kullaniciIsmi').focus();
	    	return;
	    }

	    var sifre = $('#sifre').val();
	    
	    if ( sifre == '' ) {
	    	alert('Lütfen şifrenizi giriniz.');
	    	$('#sifre').focus();
	    	return;
	    }

	    var veri = "kullaniciIsmi=" + kullaniciIsmi + "&sifre=" + sifre;
	    
	    $.ajax(
	    	{ 	url:"/giris", 
	    	  	type:"POST",   
	    	  	data: veri,
	    	  	dataType: "json",
	    		success:function(result) {
	    			
	    			if ( result['sonuc'] == 'kullaniciSifreYanlis' ) {
	    				alert('Kullanıcı ismi veya şifreniz yanlıştır. Lütfen kontrol ederek tekrar giriniz.');
	    				$('#kullaniciIsmi').focus();
	    			} else {
	    				self.submit();
	    			}
	    		},
	    		error:function(result) {
	        		alert( result['statusText'] );
	        		$('#kullaniciIsmi').focus();
	    		}    		
	    	}
	    );           
	});
	
</script>

