<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="/Myhome_project/css/nav.css">
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>

.nav1-box1 {
	border: none;		
	}

</style>
</head>
<body>
	<nav class="nav1">
    	<div id="mypage-title">관리자페이지</div>
           <div class="nav1-box1">
           	   <div class="nav1-content" id="nav1-content4">
                   <div class="nav1-box1-img glyphicon glyphicon-user"></div>
                   <div class="nav1-box1-content"><a id="membermanage" class="nav-list">회원정보관리</a></div>
               </div>
               <div class="nav1-content" id="nav1-content1">
                   <div class="nav1-box1-img glyphicon glyphicon-briefcase"></div>
                   <div class="nav1-box1-content"><a id="cleanmovemanage" class="nav-list">제휴업체관리</a></div>
               </div>
               <div class="nav1-content" id="nav1-content1">
                   <div class="nav1-box1-img glyphicon glyphicon-home"></div>
                   <div class="nav1-box1-content"><a id="propertymanage" class="nav-list">매물관리</a></div>
               </div>
               <div class="nav1-content" id="nav1-content2">
                   <div class="nav1-box1-img glyphicon glyphicon-list-alt"></div>
                   <div class="nav1-box1-content"><a id="boardmanage" class="nav-list">게시판관리</a></div>
               </div>
               <div class="nav1-content" id="nav1-content2">
                   <div class="nav1-box1-img glyphicon glyphicon-pencil"></div>
                   <div class="nav1-box1-content"><a id="contractmanage" class="nav-list">전자계약관리</a></div>
               </div>
               <div class="nav1-content" id="nav1-content3">
                   <div class="nav1-box1-img glyphicon glyphicon-heart"></div>
                   <div class="nav1-box1-content"><a id="mycontractmanage" class="nav-list">고객센터</a></div>
               </div>
               
         </div>
    </nav>
</body>
</html>