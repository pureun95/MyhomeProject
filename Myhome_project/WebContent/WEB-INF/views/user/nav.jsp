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
<link rel="stylesheet" href="../css/nav.css">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>

<style>
   .nav1-content {
          height: 50px;
   }


</style>
</head>
<body>
	<nav class="nav1">
		<div id="mypage-title">마이페이지</div>
		<div class="nav1-box1">
			<div class="nav1-content" id="nav1-content1">
				<div class="nav1-box1-content">
					<a href="" id="info"><span class="glyphicon glyphicon-user"></span> 회원 정보 수정</a>
				</div>
			</div>
			<div class="nav1-content" id="nav1-content2">
				<div class="nav1-box1-content">
					<a href ="" id="like"><span class="glyphicon glyphicon-bookmark"></span> 찜 목록 관리</a>
				</div>
			</div>
			<div class="nav1-content" id="nav1-content3">
				<div class="nav1-box1-content">
					<a href ="" id="mywrite"><span class="glyphicon glyphicon-pencil"></span> 내가 쓴 글 보기</a>
				</div>
			</div>
			<div class="nav1-content" id="nav1-content4">
				<div class="nav1-box1-content">
					<a href ="" id="orderlist"><span class="glyphicon glyphicon-align-justify"></span> 매물 거래 내역</a>
				</div>
			</div>
			<div class="nav1-content" id="nav1-content5">
				<div class="nav1-box1-content">
					<a href ="" id="matching"><span class="glyphicon glyphicon-resize-small"></span> 매칭 매물 관리</a>
				</div>
			</div>
			<div class="nav1-content" id="nav1-content6">
				<div class="nav1-box1-content">
					<a href ="" id="contract"><span class="glyphicon glyphicon-list-alt"></span> 전자 계약 관리</a>
				</div>
			</div>
			<div class="nav1-content" id="nav1-content7">
				<div class="nav1-box1-content">
					<a href ="" id="reservation"><span class="glyphicon glyphicon-calendar"></span> 이사 / 청소 예약</a>
				</div>
			</div>
		</div>
	</nav>
</body>
</html>