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
</style>
<script src="/js/plcart.js"></script>
</head>
<body>
  <nav>
    <jsp:include page="../topmenu/topmenu.jsp"></jsp:include>
  </nav>
  
  <div style="background-color: #212121;">
    <div class="container">
      <div style="color: white; text-align: center;">
        <br><br><br><br><br>
        <h1>New Playlist</h1>
      </div>
      
	<div class="form-group mt-2">
		<label style="color: white;">새 플리 이름:</label>
		<input type="text" name="pllistname" class="form-control form-control-sm" style="width:200px; height:20px;">
		<button type="button" onclick="plname()">플리명 생성</button>
	</div>
	<br>
	
      <div>
        <table class="table table-sm table-hover table-striped" id="table_plcart">
          <thead class="table-dark">
            <tr>
            	<th><input type="checkbox" id="check_all"></th>
              	<th>곡번</th>
             	<th>곡명</th>
             	<th>장르</th>
             	<th>아티스트</th>
             	<th>재생</th>
            	<th>가격</th>
            </tr>
          </thead>
          <tbody>
            <tr class="<c:if test="${plcart.size() > 0}">hide</c:if>">
           		<td colspan="12">플리에 담긴 곡이 없습니다</td>
            </tr>
            <c:forEach var="item" items="${plcart}">
              <tr data-plnum="${item.key}">
              	<td><input type="checkbox" class="check_item"> </td>
                <td>${item.key}</td>
                <td>${music_infos.get(item.key).plname}</td>
                <td>${music_infos.get(item.key).genre}</td>
                <td>${music_infos.get(item.key).artist}</td>
                <td></td>
                <c:if test="${music_infos.get(item.key).price == null}" >
	                <td>0</td>
                </c:if>
                <c:if test="${music_infos.get(item.key).price != null}" >
	                <td>${music_infos.get(item.key).price}</td>
                </c:if>
                <td>
                	<button class="btn btn-sm btn-danger plcart_delete">삭제</button>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
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
		<a href="../plcartdetail/${sessionScope.member}" class="btn btn-sm btn-primary">플리 추가</a>
		<a href="../playlist" class="btn btn-sm btn-success">생성</a>
		<button class="btn btn-sm btn-danger" id="del_check">선택삭제</button>
		<button class="btn btn-sm btn-warning" id="update_all">일괄적용</button>
		
		<a href="/" class="btn btn-sm btn-secondary">처음으로</a>
      </div>
    </div>
  </div>
  <div>
    <jsp:include page="/WEB-INF/views/footer/footer.jsp"></jsp:include>
  </div>
</body>
</html>