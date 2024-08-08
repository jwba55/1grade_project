<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="header.jsp"></jsp:include>
<style>
* {
	box-sizing: border-box;
}
body {font-family: Verdana, sans-serif;}
.mySlides2 {display: none;}
/* img {
    position: relative;
    width: 500px;
    right: 50px;
    padding: 5px;}
 */
/* Slideshow container */
.slideshow2-container {
  position: relative;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  right: 100px;
  top: 0;
}

/* The dots/bullets/indicators */
.dot2 {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

/* Fading animation */
.fade2 {
  animation-name: fade2;
  animation-duration: 0.5s;
}
.aaa {
	position:relative;
	width:300px;
	height:250px;
	display: inline-block;
	padding: 10px;
}
.aaa img{
	width:100%;
	height:100%;
}

@keyframes fade2 {
  from {opacity: .4} 
  to {opacity: 1}
}
</style>
</head>
<body>
	<div>
	<br>
	<br>
	<br>
		<div style="text-align: center;">
			<h1 style="color: #00ff9c; font-size: 54px;">PLAY LIST</h1>
			<p style="color: white;">playlist image source:</p>
		</div>

		<div class="container"  style="position: relative; width: 1300px; height: 400px;">
			<br>
			<div class="aaa">
				<img src="/resources/img/playlist_img_1.png">
			</div>
			
			 <div class="aaa">
				<img src="/resources/img/playlist_img_2.png">
			</div>
				
			<div class="aaa">
				<img src="/resources/img/playlist_img_3.png">
			</div>				
		</div> 
	</div>

</body>
</html> 