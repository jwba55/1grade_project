<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<script src="/js/cart.js"></script>
<style>
	.hide {
  		display: none;
	}
</style>
</head>
<body>
	<div>
	<c:import url="/WEB-INF/views/topmenu/topmenu.jsp"/>
	</div>
		
	<div style="background-color: #212121;">
			<br><br>
		<div class="container" style="text-align: center;">
			<div>
				<h3>장바구니</h3>
			</div>
			  
			<div>
				<table id="table_cart" class="table table-striped">
					<thead class="table-dark">
			  			<tr>
			  				<th><input type="checkbox" id="check_all"></th>
						  	<th>곡 번호</th>
						  	<th>곡명</th>
						  	<th>가격</th>
						  	<th>주문금액</th>
							<th>관리</th>
						</tr>
						</thead>
						
					<tbody>  
					  	<tr class="<c:if test="${cart.size() > 0}">hide</c:if>">
					  		<td colspan="7">장바구니에 제품이 없습니다</td>
					  	</tr>  
					  	
					  	<c:set var="saleprice" value="0" />
					  	<c:forEach var="item" items="${cart}">
					  	<c:set var="itemprice" value="${music_infos.get(item.key).price * item.value}" />
					  	<c:set var="saleprice" value="${saleprice + itemprice}" />
					  	<tr data-pl_num="${item.key}">
					  	<td><input type="checkbox" class="check_item"></td>
					  	<td>${item.key}</td>
					  	<td>${music_infos.get(item.key).bookname}</td>
					  	<td class="price" data-price="${music_infos.get(item.key).price}"><fmt:formatNumber value="${music_infos.get(item.key).price}" /> 원</td>  
					  	<td><input value="${item.value}" type="number" name="amount"></td>
					  	<td class="itemprice" data-itemprice="${itemprice}"><fmt:formatNumber value="${itemprice}" /> 원</td>  
					  	<td>
					  		<button class="btn btn-sm btn-danger cart_delete">삭제</button> 
					 		<button class="btn btn-sm btn-warning cart_update">변경</button>
					  	</td>
					  	</tr>
					  	</c:forEach>
					</tbody>
					
					  <tfoot>
					  <tr>
					  <td colspan="5">주문금액 (합계):</td>
					  <td colspan="2" id="saleprice"><fmt:formatNumber value="${saleprice}" /> 원</td>
					  </tr>
					  </tfoot>
					  </table>
					  </div>
					  <div>
					  <a href="/orders/order" class="btn btn-sm btn-primary">주문</a>
					  <button class="btn btn-sm btn-danger" id="del_check">선택삭제</button>
					  <button class="btn btn-sm btn-warning" id="update_all">일괄적용</button>
					  <a href="/" class="btn btn-sm btn-secondary">처음으로</a>
					  </div>
							</div>
						</div>
	
	<div>
		<c:import url="/WEB-INF/views/footer/footer.jsp"/>
	</div>	
</body>
</html>