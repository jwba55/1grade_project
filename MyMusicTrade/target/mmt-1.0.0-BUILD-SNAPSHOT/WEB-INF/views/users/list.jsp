<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
		<nav>
			<jsp:include page="../topmenu/topmenu.jsp"></jsp:include>
		</nav>
	<div class="container">
		<div>
			<h3>고객 목록</h3>
		</div>
		<div>
			<table class="table table-sm table-hover table-striped">
				<thead class = "table-dark">
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>성명</th>
						<th>주민등록번호</th>
						<th>이메일</th>
						<th>우편번호</th>
						<th>주소</th>
						<th>상세주소</th>
						<th>전화번호</th>
						<th>직업</th>
						<th>선호 음악장르</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="12">검색 된 고객이 없습니다</td>
						</tr>
					</c:if>					
					
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.userID}</td>
							<td>${item.userPwd}</td>
							<td>${item.userName}</td>
							<td>${item.userNoBir} - ${item.userNoSec}</td>
							<td>${item.userEmail} @ ${Emailaddr}</td>
							<td>${item.userHomeNo}</td>
							<td>${item.address1}</td>
							<td>${item.address2}</td>
							<td>${item.phone}</td>
							<td>${item.job}</td>
							<td>${item.pl}</td>
							<td><a href="update/${item.userID}" class="btn btn-sm btn-warning"><i class="bi bi-pencil-square"></i></a> <a href="delete/${item.userID}"class="btn btn-sm btn-danger"><i class="bi bi-trash"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="12">
							<ul class="pagination pagination-sm justify-content-center mt-2">
								<li class="page-item"><a href="?page=1" class="page-link">처음</a></li>
								<li class="page-item"><a href="?page=${pager.prev}" class="page-link">이전</a></li>
								<c:forEach var="page" items="${pager.list}">
									<li class="page-item ${pager.page == page ? 'active' : ''}"><a href="?page=${page}" class="page-link">${page}</a></li>
								</c:forEach>								
								<li class="page-item"><a href="?page=${pager.next}" class="page-link">다음</a></li>
								<li class="page-item"><a href="?page=${pager.last}" class="page-link">마지막</a></li>
							</ul>
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
		<div>
			<a href="add"><button class="btn btn-sm btn-primary">등록</button></a>			
			<a href=".."><button class="btn btn-sm btn-secondary">처음으로</button></a>
		</div>
	</div>
</body>
</html>