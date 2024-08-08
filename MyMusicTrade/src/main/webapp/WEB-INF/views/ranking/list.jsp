<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>ranking list</title>
<meta charset="UTF-8" name="veiwport" content="width=device-width,initial-scale=1">
<jsp:include page="../header.jsp"></jsp:include>
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
	padding-top: 70px;
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
	
	<div style="background-color: #212121;">
		<br><br><br><br><br>
		<div>
			<h2 style="color: white; text-align: center;">랭킹 정보</h2>
		</div>
		
		<div class="container">
			<div>
				<c:import url="/WEB-INF/views/ranking/total.jsp"/>
			</div>
			
			<div>
				<c:import url="/WEB-INF/views/ranking/daily.jsp"/>
			</div>
			
			<div>
				<c:import url="/WEB-INF/views/ranking/week.jsp"/>
			</div>
			
			<div>
				<c:import url="/WEB-INF/views/ranking/month.jsp"/>
			</div>
		</div>
	</div>
	
	<div>
		<c:import url="/WEB-INF/views/footer/footer.jsp"/>
	</div>
</body>
</html>