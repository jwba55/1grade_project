<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음악페이지</title>
<jsp:include page="../header.jsp"></jsp:include>
<style>
  body {
    width: 100vw;
  }
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
  .audio-control {
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .pagination {
    margin: 0;
  }
  .pagination li {
    margin: 0 2px;
  }
  .hide{
  	display:none;
  }
  .line{
  	padding: 100px opx;
  }
</style>
</head>
<body>
  <nav>
    <jsp:include page="../topmenu/topmenu.jsp"></jsp:include>
  </nav>
  <div style="background-color: #212121;">
    <div class="container">
      <div style="color: white; text-align: center;">
        <br><br><br><br><br>
        <h1>Event</h1>
        <br>
      </div>
      <div>
        <table class="table table-sm table-hover table-striped">
          <thead class="table-dark">
            <tr>
              <td><h5>순번</h5></td>
              <td><h5>내용</h5></td>
              <td><h5>작성자</h5></td>
            </tr>
          </thead>
          <tbody>
            <c:if test="${list.size() < 1}">
              <tr>
                <td colspan="12">등록 된 이벤트가 없습니다.</td>
              </tr>
            </c:if>
            <c:forEach var="item" items="${list}">
              <tr style="vertical-align:middle; font-size: 16px">
                <td>${item.eventid}</td>
                <td><a href="/detail"><img src="../resources/img/event1.png" style="max-width: 500px;"></a></td>
                <td>관리자</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
        <br>
        <ul class="pagination pagination-sm justify-content-center mt-2">
          <li class="page-item"><a href="?page=1" class="page-link">처음</a></li>
          <li class="page-item"><a href="?page=${pager.prev}" class="page-link">이전</a></li>
          <c:forEach var="page" items="${pager.list}">
            <li class="page-item ${pager.page == page ? 'active' : ''}">
              <a href="?page=${page}" class="page-link">${page}</a>
            </li>
          </c:forEach>
          <li class="page-item"><a href="?page=${pager.next}" class="page-link">다음</a></li>
          <li class="page-item"><a href="?page=${pager.last}" class="page-link">마지막</a></li>
        </ul>
      </div>
      <div>
      	<c:if test="${sessionScope.member.role == 99}" >
        	<a href="../event/add"><button class="btn btn-sm btn-primary">이벤트 작성</button></a>
        </c:if>
      </div>
    </div>
        <br><br><br>
  </div>

  <div>
    <jsp:include page="/WEB-INF/views/footer/footer.jsp"></jsp:include>
  </div>

</body>
</html>