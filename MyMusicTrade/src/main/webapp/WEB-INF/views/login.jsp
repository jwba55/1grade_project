<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>곡 등록페이지</title>
<script>
	const member = "${sessionScope.member.role}" === "1" ? "normal" : "else";
	const userID = "${sessionScope.member.userID}";
	const filenum = "${item.filenum}"
	
    console.log("member:", member);
    console.log("userID:", userID);
</script>
<script src="/js/Fileupload.js"></script>
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
    
    <div style="background-color: #212121; padding-top: 150px;">
        <div class="wrapper">	
		<div>
			<form method="post" class="d-grid gap-3">
			    <div style="text-align: center;">
                    <h2 style="color: white;">로그인</h2>
                </div>
				<div class="form-group mt-2">
					<label>아이디:</label>
					<input type="text" name="userID" class="form-control form-control-sm" style="width:360px; height:40px;">						
				</div>
				
				<div class="form-group mt-2">
					<label>비밀번호:</label>
						<input type="password" name="userPwd" class="form-control form-control-sm" style="width:360px; height:40px;">				
				</div>
								
					<div class="form-group mt-2" style="text-align: center;">
							<button class="btn btn-primary">로그인</button>
							<a href="/" class="btn btn-secondary">취소</a>
					</div>					
			</form>	
		</div> 
        </div>
    </div>
    
    <div>
        <c:import url="/WEB-INF/views/footer/footer.jsp"/>
    </div>
</body>
</html>