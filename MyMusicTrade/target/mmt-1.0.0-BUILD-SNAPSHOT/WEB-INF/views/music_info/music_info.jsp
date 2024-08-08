<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악페이지</title>
<jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
	
	<div class="container">
	<c:import url="/WEB-INF/views/topmenu/topmenu.jsp"/>
		<div>
			<ul>
				<li><a href="music_info">음악목록</a>
				<li><a href="users/list">고객관리</a></li>
				<li><a href="orders/list">주문관리</a></li>
			</ul>
		</div>
		
	</div>
	<c:import url="/WEB-INF/views/footer/footer.jsp"/>
	
</body>
</html>