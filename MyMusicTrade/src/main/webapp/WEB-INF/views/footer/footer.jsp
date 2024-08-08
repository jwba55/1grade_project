<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div class="container-fluid bg-dark text-white"
		style="margin-top: -16px; padding-top: 30px; padding-bottom: 30px; background-color: #000 ">
		<div class="container" style="text-align: center;">
			<p>
				facebook : <a class="badge badge-secondary"
				href="https://www.facebook.com/profile.php?id=100002609716783">https://www.facebook.com/profile.php?id=100002609716783</a>
			</p>
			<p>이메일 : wlwl45wl@nate.com</p>
			<P class="sns">
			    <a href="#n" onclick="fn_sendFB('facebook');return false;" class="facebook" target="_self" title="페이스북 새창열림"><span class="skip"><i class="bi bi-facebook"></i></span></a>
			    <a href="#n" onclick="fn_sendFB('twitter');return false;" class="twitter" target="_self" title="트위터 새창열림"><span class="skip"><i class="bi bi-twitter-x"></i></span></a>
			    <a href="#n" onclick="fn_sendFB('band');return false;" class="band" target="_self" title="네이버밴드 새창열림"><span class="skip">네이버밴드</span></a>
			</p>
		</div>
	</div>
	
	<script >
function fn_sendFB(sns) {
    var thisUrl = document.URL;
    var snsTitle = "사이트 공유하기";
    if( sns == 'facebook' ) {
        var url = "http://www.facebook.com/sharer/sharer.php?u="+encodeURIComponent(thisUrl);
        window.open(url, "", "width=486, height=286");
    }
    else if( sns == 'twitter' ) {
        var url = "http://twitter.com/share?url="+encodeURIComponent(thisUrl)+"&text="+encodeURIComponent(snsTitle);
        window.open(url, "tweetPop", "width=486, height=286,scrollbars=yes");
    }
    else if( sns == 'band' ) {
        var url = "http://www.band.us/plugin/share?body="+encodeURIComponent(snsTitle)+"&route="+encodeURIComponent(thisUrl);
        window.open(url, "shareBand", "width=400, height=500, resizable=yes");
    } 
}
</script>
	
</body>
</html>