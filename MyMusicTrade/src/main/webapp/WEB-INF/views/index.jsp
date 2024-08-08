<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="veiwport" content="width=device-width,initial-scale=1">
<jsp:include page="header.jsp"></jsp:include>
<style>
body {
    font-family: 'LINESeedKR-Bd';
    min-width: 100vw;
}
#partner{
	position: fixed;
	bottom: 20px;
	right: 20px;
	border: none;
	border-radius: 16px;
	background: royalblue;
	color: white;
	padding: 12px;
	font-weight: bold;
	box-shadow: 2px 5px 15px gray;
	cursor: pointer;
}

#MainTitle{
	position: absoulute;
	padding-top: 60px;
	text-shadow: 2px 3px 3px gray;
}

@font-face {
    font-family: 'LINESeedKR-Bd';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/LINESeedKR-Bd.woff2') format('woff2');
    font-weight: 700;
    font-style: normal;
}
</style>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/topmenu/topmenu.jsp"/>
	</div>
	
	<div>
		<button id="partner">partner 등록</button>
	</div>

	<div style="background-color: #212121; font-family: 'LINESeedKR-Bd','sans-serif'; padding-top: 100px;">
		<div style="background-image: URL('../resources/img/mainbackground.png'); height: 700px; ">
			<div class="container" style="text-align: center;">
			
				<h1 id="MainTitle" style="color: #fff; font-size: 54px;">PLAY THE MUSIC WITH MMT</h1>
				<h2 id="MainTitle" style="color: #fff; font-size: 24px;">Your music is better than yesterday</h2>
			
				<form method="post">
					<div style="text-align: right; padding-top: 30px; padding-right: 50px; ">
						<button type="button" class="btn col-1/2" style="color: white; padding-top: 12px;">검색</button>
						<div style="display: inline-block;">
							<input type="text" name="search" class="form-control" style="width: 200px; height: 25px;">
						</div>		
					</div>
				</form>
				
				<img src="../resources/img/page_info2.png" style="max-width: 1000px; height: 300px">
			</div>
		</div>
		<div class="container" style="text-align: center;">
			<br><br>
			<div id="MainTitle">
				<c:import url="/WEB-INF/views/play_activity.jsp"></c:import>
			</div>
					
			<div id="MainTitle">
				<c:import url="/WEB-INF/views/playlist_out.jsp"></c:import>
			</div>
		
			<div>

			</div>
		</div>	
	</div>
	
	<div>
		<c:import url="/WEB-INF/views/footer/footer.jsp"/>
	</div>
</body>
</html>