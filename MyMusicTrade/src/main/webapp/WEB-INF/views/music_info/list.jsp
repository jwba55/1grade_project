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
</style>
<script src="/js/plcart_add.js"></script>
</head>
<body>
  <nav>
    <jsp:include page="../topmenu/topmenu.jsp"></jsp:include>
  </nav>
  <div style="background-color: #212121;">
    <div class="container">
      <div style="color: white; text-align: center;">
        <br><br><br><br><br>
        <h1>Music</h1>
        <br>
      </div>
      <div>
        <table class="table table-sm table-hover table-striped">
          <thead class="table-dark">
            <tr>
              <td>곡번</td>
              <td>곡 명</td>
              <td>장르</td>
              <td>아티스트</td>
              <td>재생</td>
              <td>재생횟수</td>
              <td>가격</td>
            </tr>
          </thead>
          <tbody>
            <c:if test="${list.size() < 1}">
              <tr>
                <td colspan="12">등록 된 곡이 없습니다</td>
              </tr>
            </c:if>
            <c:forEach var="item" items="${list}">
              <tr onclick="counting('${item.plnum}')">
                <td>${item.plnum}</td>
                <td>${item.plname}</td>
                <td>${item.genre}</td>
                <td>${item.artist}</td>
                <td class="audio-control">
                  <audio src="/resources/upload/mp3/0내 품이 좋다던 사람 (With 하동균)_하하 & 타우(20kb).mp3" controls></audio>
                </td>
                <td>
                	${item.counting.totalcount}
                </td>
                <td>${item.price}</td>
                <td>
                	<button class="btn btn-sm btn-success plcart" data-plnum="${item.plnum}"><i class="bi bi-bookmark-plus"></i></button>
                	<button class="btn btn-sm btn-warning cart" data-plnum="${item.plnum}"><i class="bi bi-cart"></i></button>
                </td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
        <ul class="pagination pagination-sm justify-content-center mt-2" style="height: 30px;">
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
      	<c:if test="${sessionScope.member.role == 5}" >
			<a href="..music_info/partner/add/${sessionScope.member}"><button class="btn btn-sm btn-primary">곡 등록</button></a>
		</c:if>
		
		<c:if test="${sessionScope.member.role == 1}" >
			<a href="../music_info/normal/add/${sessionScope.member}"><button class="btn btn-sm btn-primary">곡 등록</button></a>
		</c:if>
		
		<c:if test="${sessionScope.member == null}" >
			<a href="../login"><button class="btn btn-sm btn-primary" onclick="print()">곡 등록</button></a>
		</c:if>
      </div>
    </div>
  </div>
  <div>
    <jsp:include page="/WEB-INF/views/footer/footer.jsp"></jsp:include>
  </div>
  
  <script>
  	const plnum = ${item.plnum};
  
  	function print(){
  		alert("로그인 후 이용해주세요.");
  	}
  	function counting(plnum) {
        // 오디오 재생 시, 서버로 요청을 보내 조회수를 증가
        $.ajax({
            url: '/${plnum}/counting',
            type: 'POST',
            success: function(data) {
            	alert("조회수 증가");
            },
            error: function(error) {
                console.error('Error:', error);
            }
        });
    }
  </script>
</body>
</html>