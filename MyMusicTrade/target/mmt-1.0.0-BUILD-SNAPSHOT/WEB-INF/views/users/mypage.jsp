<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<title>My page</title>
</head>
<body>
	<div>
		<div>
			<h3>마이페이지</h3>
		</div>
		
		<div>
			<form method="post">
				<div>
					<label>아이디: </label> ${item.userID}
				</div>
				
				<div>
					<label>비밀번호: </label>
					<input type="password" name="userPwd" value="${item.userPwd}">
					<button type="button" class="">확인</button>
				</div>
				
				<div>
					<label>성명: </label>
					<input type="text" name="name" value="${userName}">
				</div>
				
				<div>
					<label>이메일: </label>
					<input type="text" name="userEmail" value="${userEmail}">@
					<input type="text" name="Emailaddr" value="${Emailaddr}">
				</div>
				
				<div>
					<label>주민등록번호: </label>
					<input type="text" name="userNoBir" value="${userNoBir}">
					<input type="text" name="userNoSec" value="${userNoSec}">
				</div>
				
				<div>
					<label>우편번호: </label>
					<input type="text" name="userHomeNo" value="${userHomeNo}">
				</div>
				
				<div>
					<label>주소: </label>
					<input type="text" name="address1" value="${item.address1}">
					<label>상세주소: </label>
					<input type="text" name="address2" value="${item.address2}">
				</div>
				
				<div>
					<label>전화번호: </label>
					<input type="text" name="userHp" value="${item.userHP}">
				</div>
				
				<div>
					<label for="job" style="float: left;"> 직업 </label>
    				<select id="job" name="job" size="1" class="form-control">
      					<option value="학생"> 학생 </option>
      					<option value="취업준비생"> 취업준비생 </option>
      					<option value="공무원"> 공무원 </option>
      					<option value="회사원"> 회사원 </option>
   					</select>
				</div>
				
				<div>
					<label for="pl"> 음악 관심 장르 </label> &nbsp; <br>
 					<input type="checkbox" name="pl" value="rock"> rock
 					<input type="checkbox" name="pl" value="pop"> pop
  					<input type="checkbox" name="pl" value="ballad"> ballad <br>
  					<input type="checkbox" name="pl" value="jazz"> jazz
  					<input type="checkbox" name="pl" value="dance"> dance
 					<input type="checkbox" name="pl" value="classic"> classic <br>
				</div>
				
				<div>
				<button>변경</button>
				<a href="../list"><button type="button">취소</button></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>