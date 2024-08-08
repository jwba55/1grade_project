<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 순위</title>
</head>
<body>
	<div>
	<c:import url="/WEB-INF/views/topmenu/topmenu.jsp"/>
	</div>
	
	<div style="background-color: #212121;">
		<br><br><br><br><br>
		<form method="post">
		<div class="container" style="text-align: center;">
			<div style="color: white;">
				<h2>월간 랭킹</h2>
			</div>
			<br>
			<table class="table table-sm table-hover table-striped">
				<thead class = "table-dark">
					<tr>
						<td>월간 순위</td>
						<td>곡 명</td>
						<td>장르</td>
						<td>아티스트</td>
						<td>재생횟수</td>
						<td>가격</td>
					</tr>
				</thead>
				<tbody>
					<c:if test="${monthlist.size() < 1}">
						<tr>
							<td colspan="12">등록 된 곡이 없습니다</td>
						</tr>
					</c:if>					
					
					<c:forEach var="item" items="${monthlist}">
						<tr>
							<td>${item.monthrank}</td>
							<td>${item.music_info.plname}</td>
							<td>${item.music_info.genre}</td>
							<td>${item.music_info.artist}</td>
							<td>${item.counting.monthcount}</td>
							<td>${item.music_info.price}</td>
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
		</form>
	</div>
	
	<div>
		<c:import url="/WEB-INF/views/footer/footer.jsp"/>
	</div>

</body>
</html>