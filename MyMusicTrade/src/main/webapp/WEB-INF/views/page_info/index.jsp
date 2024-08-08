<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 소개</title>
<jsp:include page="../header.jsp"></jsp:include>
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
	
	<div  style="background-color: #212121;">
		<div style="text-align: center;">
			<div>
				<img src="../resources/img/page_info1.png" style="max-width: 1510px">
			</div>
			<div>
				<img src="../resources/img/page_info2.png" style="max-width: 1510px">
			</div>
		</div>
	</div>
	
	<div>
		<c:import url="/WEB-INF/views/footer/footer.jsp"/>
	</div>
</body>
</html>