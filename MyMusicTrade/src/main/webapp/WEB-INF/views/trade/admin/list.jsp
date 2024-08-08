<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trade</title>
<style>
	table {
	    width: 100%;
	    border-top: 1px solid #444444;
	    border-collapse: collapse;
	}
  	tr {
	    border-bottom: 1px solid #444444;
	    text-align: center;
  	}
	td {
    	padding: 10px;
  	}
	thead tr {
	    background-color: #0d47a1;
	    color: #ffffff;
 	}
  	tbody tr:nth-child(odd) {
 	    background-color: #e3f2fd; /* 홀수 행은 밝은 색 배경 */
  	}
  	tbody tr:nth-child(even) {
    	background-color: #bbdefb; /* 짝수 행은 어두운 색 배경 */
  	}
</style>
</head>
<body>
	<div>
	<c:import url="/WEB-INF/views/topmenu/topmenu.jsp"/>
	</div>
	
	<div  style="background-color: #212121; padding-top: 120px;">
		<div class="container" style="text-align: center;">
		<div>
			<h3 style="color:white; padding-bottom: 20px;">Trade</h3>
		</div>
		<div>
			<table class="table table-sm table-striped">
				<thead class="table-dark">
					<tr>
						<th>주문번호</th>
						<th>아이디</th>
						<th>주문한 곡</th>
						<th>주문일시</th>
						<th>금액</th>
					</tr>					
				</thead>
				<tbody>
					<c:if test="${list.size() < 1}">
						<tr>
							<td colspan="5">주문하신 내역이 없습니다.</td>
						</tr>
					</c:if>					
					
					<c:forEach var="item" items="${list}">
						<tr>
							<td>${item.ordersid}</td>
							<td>${item.userID}</td>
							<td>${item.pl_name}</td>
							<td>${item.orderdate}</td>
							<td>${item.saleprice}</td>
							<td>
								<a href="update/${item.ordersid}" class="btn btn-sm btn-warning"><i class="bi bi-pencil-square">변경</i></a> 
								<a href="delete/${item.ordersid}"class="btn btn-sm btn-danger"><i class="bi bi-trash">삭제</i></a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="5">
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
			<a href="delete/"><button class="btn btn-sm btn-primary">삭제</button></a>				
			<a href="update/"><button class="btn btn-sm btn-secondary">변경</button></a>
		</div>
	</div>
	</div>
	
	<div>
		<c:import url="/WEB-INF/views/footer/footer.jsp"/>
	</div>
</body>
</html>