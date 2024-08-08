<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<div>
			<h3>로그인</h3>
		</div>
		
		<div>
			<form method="post" class="d-grid gap-3">
				<div class="row gap-1">
					<label class="col-2">아이디:</label>
					<div class="col">
						<input type="text" name="userID" class="form-control">
					</div>							
				</div>
				
				<div class="row">
					<label class="col-2">비밀번호:</label>
					<div class="col">
						<input type="password" name="userPwd" class="form-control">
					</div>					
					<button type="button" class="btn btn-sm btn-primary col-1">확인</button>
				</div>
								
				<div class="row">
					<div class="col-2"></div>
					<div class="col row">
						<div class="col d-grid">
							<button class="btn btn-primary">로그인</button>
						</div>
						<div class="col">
							<a href="/" class="d-grid"><button type="button" class="btn btn-secondary">취소</button></a>
						</div>
					</div>
					<div class="col-2"></div>					
				</div>	
			</form>	
		</div>		
	</div>
</body>
</html>