<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<title>WebTest Page</title>
<script>

</script>
</head>
<body>
	<div class="container" style="max-height: 500px">
		<div>
			<h2> 회원 가입 </h2>
		</div>
		
			<div>
				<form method="post" name="signup_form" class="d-grid gap-3">
					<div class="row">
						<label for="userName" class="col-1">이름:<span style="color:blue;"> * </span></label>
 						<div class="col-2">
 							<input type="text" name="userName" class="form-control"> <br>
 						</div>
 					</div>
 					
 					<div class="row">
 						<label class="col-1">주민등록번호:<span style="color:blue;"> * </span></label>
 						<div class="col-2">
 							<input type="text" name="userNoBir" class="form-control"> -
	  						<input type="text" name="userNoSec" class="form-control"> <br>
	  					</div>
					</div>
					
  					<label for="userID"> 아이디 </label><span style="color:blue;"> * </span>
	  				<input type="text" name="userID" class="form-control"> <br>

  					<label for="userPwd"> 비밀번호 </label><span style="color:blue;"> * </span>
					<input type="password" name="userPwd" class="form-control"> <br>

					<label for="userPwdchk"> 비밀번호확인 </label><span style="color:blue;"> * </span>
					<input type="password" name="userPwdchk" class="form-control"> <br>
 
 					<label for="userEmail"> 이메일 </label><span style="color:blue;"> * </span>
  					<input type="text" name="userEmail" class="form-control"> @
  					<input type="text" name="Emailaddr" class="form-control">

  					<label for="EmailSelect" style="float: left;"> </label>
     				<select name="EmailSelect" class="form-control" size="1">
     					<option value="직접입력">직접입력 </option>
     					<option value="naver.com"> naver.com </option>
     					<option value="nate.com"> nate.com </option>
      					<option value="hanmail.net"> hanmail.net </option>
      					<option value="gmail.com"> gmail.com </option>
    				</select>
    				<br>

 					<label for="userHomeNo"> 우편번호 </label> &nbsp;
    				<input type="text" name="userHomeNo" class="form-control"> <br>
   
    				<label for="userAddr1"> 주소 </label> &nbsp;
  					<input type="text" name="userAddr1" class="form-control">
  					<input type="text" name="userAddr2" class="form-control"> <br>
  
  					<label for="userHP"> 전화번호 </label> &nbsp;
  					<input type="text" name="userHP" class="form-control"> <br>
 
 					<label for="job" style="float: left;"> 직업 </label>&nbsp;
    				<select id="job" name="job" size="1" class="form-control">
      					<option value="학생"> 학생 </option>
      					<option value="취업준비생"> 취업준비생 </option>
      					<option value="공무원"> 공무원 </option>
      					<option value="회사원"> 회사원 </option>
   					</select>
   					<br>

  					<label for="chkMailSMS"> 메일/SMS 정보 수신 여부 </label> &nbsp;
  					<input type="radio" name="chkMailSMS" value="yes" checked class="form-control"> 수신
  					<input type="radio" name="chkMailSMS" value="no" class="form-control"> 거부 <br><br>

 					<label for="pl"> 음악 관심 장르 </label> &nbsp; <br>
 					<input type="checkbox" name="pl" value="rock"> rock
 					<input type="checkbox" name="pl" value="pop"> pop
  					<input type="checkbox" name="pl" value="ballad"> ballad <br>
  					<input type="checkbox" name="pl" value="jazz"> jazz
  					<input type="checkbox" name="pl" value="dance"> dance
 					<input type="checkbox" name="pl" value="classic"> classic <br>

 					<br><br>
 					<input type="submit" value="회원가입" style="float: center;">
 					<input type="reset" value="취소" style="float: center; margin-right:50px">
			</form>
		</div>
	</div>
</body>
</html>