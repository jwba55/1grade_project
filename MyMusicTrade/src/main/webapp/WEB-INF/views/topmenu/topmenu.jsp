<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<style>
#nav{
	position: fixed;
	z-index:2;
	cursor: pointer;
	border: none;
	border-radius: 1520px;
	min-width: 100vw;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light shadow-lg" style="background-color: #131312; height:100px;" id="nav">
	<div>
		<a class="navbar-brand" href="/test"><img src="/resources/img/MMTlogo.png" style="width:250px; height: 130px; padding-left: 30px;"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>
		</button>
	</div>

	<div class="collapse navbar-collapse" id="navMenu" style="display: inline-block;">
		<ul class="navbar-nav" style="font-size:14px; text_align:center;" id="text">
			<li class="nav-item"><a href="/music_info/list" class="nav-link" style="color:white; padding-right: 80px; padding-left: 100px;">음악</a>
			</li>
			<li class="nav-item"><a href="/trade/list" class="nav-link" style="color:white; padding-right: 80px;">거래</a>
			</li>
			<li class="nav-item"><a href="/ranking/list" class="nav-link" style="color:white; padding-right: 80px;">순위</a>
			</li>
			<li class="nav-item"><a href="/playlists/list" class="nav-link" style="color:white; padding-right: 80px;">플레이리스트</a>
			</li>
			<li class="nav-item"><a href="/event/list" class="nav-link" style="color:white; padding-right: 80px;">이벤트</a>
			</li>
			<li class="nav-item"><a href="/page_info/index" class="nav-link"style=" color:white; padding-right: 150px;">페이지소개</a>
			</li>
		</ul>
		
		<c:if test="${sessionScope.member == null}">
			<ul class="navbar-nav ml-auto" style="padding-left: 30px; padding-top: 24px;" id="text">
				<li class="nav-item"><a href="${root}/login" class="nav-link" style="color:white; font-size: 14px;">로그인</a>
				</li>
				<li class="nav-item" style="color:white">/</li>
				<li class="nav-item"><a href="${root}/signup" class="nav-link" style="color:white; font-size: 14px; padding-right: 132px">회원가입</a>>
				</li>
			</ul>
		</c:if>

		<c:if test="${sessionScope.member != null}" >
			<ul class="navbar-nav ml-auto" style="padding-top: 0px;" id="text">
				<li class="nav-item"><a href="${root}/logout" class="nav-link" style="color:white; font-size: 14px;">로그아웃</a>
				</li>
				<li class="nav-item"><a href="${root}/users/update/${sessionScope.member.userID}" class="nav-link" style="color:white; font-size: 14px;">마이페이지</a>
				</li>
			</ul>
		</c:if>
	</div>
</nav>

</body>
</html>