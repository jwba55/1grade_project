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
            <form name="dataForm" id="dataForm" onsubmit="return registerAction()">
                <div style="text-align: center;">
                    <h2 style="color: white;">곡 등록</h2>
                </div>
                
                <div>         
                    <div class="form-group mt-2">
                        <label style="color: white;">곡명:</label>
                        <input type="text" name="plname" class="form-control form-control-sm" style="width:360px; height:40px;">
                    </div>
                    
                    <div class="form-group mt-2">
                        <label style="color: white;"> 장르:</label>
                        <input type="text" name="genre" class="form-control form-control-sm" style="width:360px; height:40px;">
                    </div>
                    
                    <div class="form-group mt-2">
                        <label style="color: white;">아티스트:</label>
                        <input type="text" name="artist" class="form-control form-control-sm" style="width:360px; height:40px;">
                    </div>
                    
                    <div class="form-group mt-2">
						<label style="color: white;">가격:</label>
                        <label> 무료</label>
                    </div>
                                                
                    <div class="form-group mt-2" style="float:left;">
                        <button id="btn-upload" type="button" style="border: 1px solid #ddd; outline: none;">파일 추가</button>
                        <input id="input_file" multiple="multiple" type="file" style="display:none;">
                        <span style="font-size:10px; color: gray;">※첨부파일은 최대 3개까지 등록이 가능합니다.</span>
                        <div class="data_file_txt" id="data_file_txt" style="margin:40px;">
                            <span>첨부 파일</span>
                            <br />
                            <div id="articlefileChange">
                            </div>
                        </div>
                    </div><br>
                                    
                    <div class="form-group mt-2" style="clear:left; text-align: center;">
                        <button type="submit">등록</button>
                        <a href="list" class="btn btn-sm btn-secondary">취소</a>
                    </div>
                </div>
            </form> 
        </div>
    </div>
    
    <div>
        <c:import url="/WEB-INF/views/footer/footer.jsp"/>
    </div>
</body>
</html>