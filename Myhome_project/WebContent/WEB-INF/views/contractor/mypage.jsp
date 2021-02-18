<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/contractor-mypage-main.css">
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>

	#header {
		background-color: white; 
	}
	
</style>
<body>


 <!--header -->
<%@include file="/WEB-INF/views/inc/header.jsp" %>

	<div class="section1">
        <div class="section1-box1">
            <span>마이페이지</span                                                                                                                                                                                                                  >
            <div class="section1-box2">
                <div class="main-box1" id="upload-property" onclick="location.href='mypage-myproperty.html'">
                    <div class="main-box1-img" id="main-img1"></div>
                    <div class="main-box1-title">올린매물관리</div>
                    <div class="main-box1-content">내가 올린매물을 확인하세요.</div>
                </div>
                <div class="main-box1" id="matching-property">
                    <div class="main-box1-img" id="main-img2"></div>
                    <div class="main-box1-title">매칭매물관리</div>
                    <div class="main-box1-content">나에게 들어온 매칭과 내가 보낸 매칭신청을 확인할 수 있어요.</div>
                </div>
                <div class="main-box1" id="contract">
                    <div class="main-box1-img" id="main-img3"></div>
                    <div class="main-box1-title">전자계약관리</div>
                    <div class="main-box1-content">전자계약서 승인 및 취소를 할 수 있어요.</div>
                </div>
                <div class="main-box1" id="edit-info">
                    <div class="main-box1-img" id="main-img4"></div>
                    <div class="main-box1-title">회원정보관리</div>
                    <div class="main-box1-content">회원정보를 수정할 수 있어요.</div>
                </div>
            </div>
        </div>
    </div>


<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>

</body>
</html>
