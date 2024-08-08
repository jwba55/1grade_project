<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<title>My page</title>
<style>
    .wrapper {
        min-height: 100vh;
        padding: 3rem;
        font-size: 1rem;
        color: #ffffff;
        border-radius: 1rem;
        margin: auto;
        display: flex;
        justify-content: center;
        vertical-align: center;
    }
</style>
</head>
<body>
	<div>
	<c:import url="/WEB-INF/views/topmenu/topmenu.jsp"/>
	</div>
	
	<div style="background-color: #212121;">
		<br><br>
		<div class="wrapper" style="text-align: center; color: white;">
			
			<br><br>
		
		<div>
		<div>
			<br><br>
			<h3>마이페이지</h3>
		</div>
		
		<div>
			<form method="post">
				<div class="form-group mt-2">
					<label>아이디: </label> ${item.userID}
				</div>
				
				<div class="form-group mt-2">
					<label>비밀번호: </label>
					<input type="password" name="userPwd" value="${item.userPwd}" class="form-control form-control-sm">
					<button type="button" class="">확인</button>
				</div>
				
				<div class="form-group mt-2">
					<label>성명: </label>
					<input type="text" name="userName" value="${item.userName}" class="form-control form-control-sm">
				</div>
				
				<div class="form-group mt-2">
					<label>이메일: </label>
					<input type="text" name="userEmail" value="${item.userEmail}">@
					<input type="text" name="emailaddr" value="${item.emailaddr}" >
				</div>
				
				<label for="chkMailSMS" style="float: left;"> 메일/SMS 정보 수신 여부: </label> &nbsp;
  					<input type="radio" name="chkMailSMS" value="yes" checked class="form-control"> 수신
  					<input type="radio" name="chkMailSMS" value="no" class="form-control"> 거부 <br>
				
				<div class="form-group mt-2">
					<label>주민등록번호: </label>
					<input type="text" name="userNoBir" value="${item.userNoBir}">
					<input type="text" name="userNoSec" value="${item.userNoSec}">
				</div>
				
				<div class="form-group mt-2">
					<label>우편번호: </label>
					<input type="text" name="userHomeNo" value="${item.userHomeNo}" class="form-control form-control-sm">
				</div>
				
				<div class="form-group mt-2">
					<label>주소: </label>
					<input type="text" name="userAddr1" value="${item.userAddr1}">
					<label>상세주소: </label>
					<input type="text" name="userAddr2" value="${item.userAddr2}">
				</div>
				
				<div class="form-group mt-2">
					<label>전화번호: </label>
					<input type="text" name="userHP" value="${item.userHP}">
				</div>
				
				<div class="form-group mt-2">
					<label for="job" style="float: left;"> 직업 </label>
    				<select id="job" name="job" size="1" class="form-control">
      					<option value="학생"> 학생 </option>
      					<option value="취업준비생"> 취업준비생 </option>
      					<option value="공무원"> 공무원 </option>
      					<option value="회사원"> 회사원 </option>
   					</select>
				</div>
				
				<div class="form-group mt-2">
					<label for="pl"> 음악 관심 장르 </label> &nbsp; <br>
 					<input type="checkbox" name="pl" value="rock"> rock
 					<input type="checkbox" name="pl" value="pop"> pop
  					<input type="checkbox" name="pl" value="ballad"> ballad <br>
  					<input type="checkbox" name="pl" value="jazz"> jazz
  					<input type="checkbox" name="pl" value="dance"> dance
 					<input type="checkbox" name="pl" value="classic"> classic <br>
				</div>
				
				<div>
				<button onclick="update()">변경</button>
				<a href="../update"><button type="button">취소</button></a>
				</div>
			</form>
		</div>
	</div>
		
		</div>	
	</div>
	
	<div>
		<c:import url="/WEB-INF/views/footer/footer.jsp"/>
	</div>
	
	<script>
		function update() {
			alert("변경되었습니다.")
		}
	</script>
</body>
</html>