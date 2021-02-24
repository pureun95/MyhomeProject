<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%

	// 부트스트랩 사용하는 템플릿의 경우 헤더.jsp를 이 파일로 연결해주세용!

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/Myhome_project/css/bootstrap-header.css">

<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>

</style>
</head>
<body>

<!-- 로그인 안한 유저 -->
<c:if test="${empty name}">
    <header id="header">
    	<div class="header-wrap">
        <div class="header-ul">
            <div class="header-img"></div>
                <ul class="header-ul2 header-ul3">
                    <li class="header-li li-list">방찾기</li>
                    <li class="header-li li-list">방올리기</li>
                    <li class="header-li li-list"><a href="/Myhome_project/Myhome/user/boardcommunitylist.do">게시판</a></li>
                    <li class="header-li li-list">중고장터</li>
                    <li class="header-li li-list">마이페이지</li>
                    <li class="header-li li-list">고객센터</li>
	                <li id="login" class="li-login li-list"><a href="/Myhome_project/member/Auth.do">로그인</a></li>
	                <li id="signup" class="li-login li-list">회원가입</li>
                </ul>
            </div>
            </div>
    </header> 
</c:if>

<!-- 로그인 한 유저 -->
<c:if test="${not empty name}">
<header id="header">
    	<div class="header-wrap">
        <div class="header-ul">
            <div class="header-img"></div>
                <ul class="header-ul2 header-ul3">
                    <li class="header-li li-list">방찾기</li>
                    <li class="header-li li-list">방올리기</li>
                    <li class="header-li li-list"><a href="/Myhome_project/Myhome/user/boardcommunitylist.do">게시판</a></li>
                    <li class="header-li li-list">중고장터</li>
                    <li class="header-li li-list">마이페이지</li>
                    <li class="header-li li-list">고객센터</li>
					<li id="logout" class="li-login li-list"><a href="/Myhome_project/member/logout.do">로그아웃</a></li>

                </ul>
            </div>
            </div>
    </header> 

</c:if>
</body>
</html>