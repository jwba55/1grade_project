<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="background-color: #212121;">
		<div class="container" style=" padding-top: 100px;">
			<div>
				<h3><a href="../ranking/totallist">Total Rank</a></h3>
			</div>
					<c:if test="${totallist.size() < 1}">
						<tr>
							<td colspan="12">등록 된 곡이 없습니다</td>
						</tr>
					</c:if>					
					
					<c:forEach var="item" items="${totallist}">
						<tr class="totalpage-row" data-href="totallist.jsp">
							<td>${item.totalrank}</td>
							<td>${item.music_info.plname}</td>
							<td>${item.music_info.genre}</td>
							<td>${item.music_info.artist}</td>
							<td>${item.counting.totalcount}</td>
							<td>${item.music_info.price}</td>
						</tr>
					</c:forEach>
		</div>
	</div>
	
<script>
	document.querySelectorAll('.totalpage-row').forEach(row => {
	    row.addEventListener('click', () => {
	      const href = row.getAttribute('data-href');
	      window.location.href = href;
	    });
	  });
</script>
	
</body>
</html>