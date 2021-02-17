<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 마이페이지 첫화면</title>

<%-- <%@include file="/WEB-INF/views/inc/asset.jsp" %> --%>

<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>


    

<style>

	body,html {
	    height: 100%;
	    margin: 0 auto;
	    padding: 0;
	}

	.container {
		width: 1190px;
		margin: 0px auto;
		margin-top: 100px;
		position: relative;
		height: 1000px;
	    font-family: 'MaplestoryOTFLight';
	    font-size: 50px;
	    background-image: url(../image/3.jpg);
	    background-size: cover;
	    color: #333;
	    		
    }
    
    .section1 {
    	text-align: center;
    	margin: 50px;
    	margin-top: 100px;
    	background-color: rgb(245, 245, 245, .6);
    }
    
    .section1 #title {
		border-bottom: 1px dashed black;
    	margin-bottom: 50px;
		padding: 40px;
		
		
		
    }
	
	.container .menu {		
		border-radius: 8px;
		width: 400px;
		height: 100px; 
		float: left;
		margin: 30px 50px;
		font-size: 30px;
		background-color: rgb(245, 245, 245);
	}
	
	.container .menu:hover {
		color: rgb(245, 245, 245);
		background-color: #F6ABAF;
		cursor: pointer;
	}
	
	.container .explain {
		font-size: 15px;
		background-color: #d7d7d7;
		height: 40px;
	}
	
	.container .image {
		border: 3px solid #F6ABAF;
		border-radius: 8px;
		height: 100px;
		width: 100px;
		float: left;
		font-size: 85px;
		background-color : white;
		margin-right: 20px;
		color: #F6ABAF;
		padding: 5px;
	}
	
</style>
</head>
<body>
	<div class="wrap">
	
	 <!-- header -->
	<%@include file="/WEB-INF/views/inc/header.jsp" %>
	 
	 
    <div class="container">
		<div class="section1">
			<div id="title">마이페이지</div>
			<div class="section2">
				<div class="menu" onclick="location.href='/Myhome_project/user/mypageinfo.do';">
					
					<div class="image">
						<span class="glyphicon glyphicon-user"></span>
					</div>
					
					<span>회원 정보 수정</span>
					<div class="explain">회원정보를 수정할 수 있어요.</div>
				</div>
				
				<div class="menu" onclick="location.href='/user/mypageinfo.do';">
				
					<div class="image">
						<span class="glyphicon glyphicon-bookmark"></span>
					</div>
					
					찜 목록 관리
					<div class="explain">찜 목록을 확인할 수 있어요.</div>
				</div>
				
				<div class="menu" onclick="location.href='/Myhome_project/user/mypageinfo.do';">
				
					<div class="image">
						<span class="glyphicon glyphicon-pencil"></span>
					</div>
					
					내가 쓴 글 보기
					<div class="explain">내가 작성한 모든 글을 확인 할 수 있어요.</div>
				</div>
				<div class="menu" onclick="location.href='/Myhome_project/user/mypageinfo.do';">
				
					<div class="image">
						<span class="glyphicon glyphicon-align-justify"></span>
					</div>
					
					매물 거래 내역
					<div class="explain">나의 매물 거래 내역을 조회 할 수 있어요.</div>
				</div>
				<div class="menu" onclick="location.href='/Myhome_project/user/mypageinfo.do';">
				
					<div class="image">
						<span class="glyphicon glyphicon-resize-small"></span>
					</div>
					
					매칭 매물 관리
					<div class="explain">모든 매물 매칭 상황을 확인할 수 있어요.</div>
				</div>
				
				<div class="menu" onclick="location.href='/Myhome_project/user/mypageinfo.do';">
				
					<div class="image">
						<span class="glyphicon glyphicon-list-alt"></span>
					</div>
					
					전자 계약 관리
					<div class="explain">전자계약서 승인 및 취소를 할 수 있어요.</div>
				</div>
				
				<div class="menu" onclick="location.href='/Myhome_project/user/mypageinfo.do';">
				
					<div class="image">
						<span class="glyphicon glyphicon-calendar"></span>
					</div>
					이사 / 청소 예약
					<div class="explain">이사 / 청소업체를 예약 할 수 있어요.</div>
				</div>
				<div style="clear: both;"></div>
			</div>
		</div>
    </div>
    
    
	     <!-- footer -->
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	
	</div>    
</body>
</html>