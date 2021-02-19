<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::방찾기</title>

<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/contractor-mypage-main.css">
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>

	#header {
		background-color: white; 
	}
	
	.image-box {
		background-image: url('../image/8.jpg'); 
		
		
	}
	
	
</style>
<body>


 <!--header -->
<%@include file="/WEB-INF/views/inc/header.jsp" %>

	<div class="section1 image-box">
        <div class="section1-box1">
            <span>마이페이지</span                                                                                                                                                                                                                  >
            <div class="section1-box2">
                <div class="main-box1" id="upload-property" onclick="location.href='mypage-myproperty.html'">
                    <div class="main-box1-img" id="main-img1"></div>
                    <div class="main-box1-title">임대인이 올린 매물</div>
                    <div class="main-box1-content">임대인이 올린 매물을 확인하고 매칭신청하세요.</div>
                </div>
                <div class="main-box1" id="matching-property">
                    <div class="main-box1-img" id="main-img2"></div>
                    <div class="main-box1-title">중개인이 올린 매물</div>
                    <div class="main-box1-content">다른 중개인들이 올린 매물을 확인하세요.</div>
                </div>
            </div>
        </div>
    </div>


<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>

</body>
</html>
