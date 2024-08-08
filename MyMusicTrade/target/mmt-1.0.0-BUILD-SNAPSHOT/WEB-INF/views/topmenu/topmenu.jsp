<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light shadow-lg" style="background-color: #131312; height:100px;">
	<a class="navbar-brand" href="/" style="padding-right: 70px;">ChoBoard&nbsp;</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>
	</button>
	

		<div class="collapse navbar-collapse" id="navMenu" style="display: inline-block;">
		<ul class="navbar-nav" style="text_align:center;">
			<li class="nav-item"><a href="music_info/music_info" class="nav-link" style="color:white; padding-right: 70px;">&nbsp;음악&nbsp;</a>&nbsp;
			</li>
			<li class="nav-item"><a href="${root}/index" class="nav-link" style="color:white; padding-right: 70px;">&nbsp;거래&nbsp;</a>&nbsp;
			</li>
			<li class="nav-item"><a href="${root}/index" class="nav-link" style="color:white; padding-right: 70px;">&nbsp;순위&nbsp;</a>&nbsp;
			</li>
			<li class="nav-item"><a href="${root}/index" class="nav-link" style="color:white; padding-right: 70px;">&nbsp;플레이리스트&nbsp;</a>&nbsp;
			</li>
			<li class="nav-item"><a href="${root}/index" class="nav-link" style="color:white; padding-right: 70px;">&nbsp;이벤트&nbsp;</a>&nbsp;
			</li>
			<li class="nav-item"><a href="${root}/index" class="nav-link"style="color:white; padding-right: 300px;">&nbsp;페이지소개&nbsp;</a>&nbsp;
			</li>
		</ul>

		<c:if test="${sessionScope.member == null}">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="${root}/login" class="nav-link" style="color:white; font-size: 14px;">로그인</a>
				</li>
				<li class="nav-item" style="color:white">/</li>
				<li class="nav-item"><a href="${root}/signup" class="nav-link" style="color:white; font-size: 14px;">회원가입</a>>
				</li>
			</ul>
		</c:if>

		<c:if test="${sessionScope.member != null}">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="${root}/logout" class="nav-link" style="color:white; font-size: 14px;">로그아웃</a>
				</li>
				<li class="nav-item"><a href="${root}/mypage" class="nav-link" style="color:white; font-size: 14px;">마이페이지</a>
				</li>
			</ul>
		</c:if>
		
		
			
			</div>
		</nav>

</body>
</html>