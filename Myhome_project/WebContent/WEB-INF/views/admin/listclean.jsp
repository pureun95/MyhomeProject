<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/board.css">
<link rel="stylesheet" href="/Myhome_project/css/moveclean-list.css">

<style>

@charset "UTF-8";

	.header {
		background-color : white;
	}
	
	.container {
        width: 1190px;
        margin: 0 auto;
        letter-spacing: -.2px;
        min-height:100%;
		padding-bottom:100px;
		border: 1px solid green;
		margin-top: 100px;
    }
    
/*     .imagelogo{
    	border : 1px solid black;
    	width: 280px;
        height: 180px;
    	float: left;
    	/* position: relative; */
    	background-image: url('../image/move_clean/1. 쌍용청소.jpg');
    	/* background-position: center center;  */
        /* background-size: contain; */
        /* background-repeat: no-repeat; */
        background-position: 0% 0px; 
        background-size: cover;
        margin: 0px 10px;
    } */
    
    
</style>

</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/admin/header.jsp" %>
 
     <div class="container">
     <%@include file="/WEB-INF/views/admin/nav.jsp" %>
        <div class="boardcover">
        
        
		<div id="title">청소업체관리</div>
			<div class="btns">
				<input type="button" value="등록">
				<input type="button" value="삭제">
			</div>
			<div class="list">
				<div class="listbox1">
					<input type="checkbox" class="check" style="float:left; zoom:1.5;">
					<div class="imagelogo">
						<span class="glyphicon glyphicon-star"></span>
						<span class="rating">3.0 / 5.0</span>
					</div>
					<div class="listbox2">
						<div class="name" style="font-weight:bold">청소업체명</div>
						<div class="content">
							<div class="tel">010-1234-5678</div>
							<div class="address">서울시 강남구 역삼동</div>
							<div class="businessnum">123-3456-7890</div>
							<div class="price">80,000원</div>
							<div class="introduce">청소업체소개글입니다</div>
						</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<div class="listbox1">
					<input type="checkbox" class="check" style="float:left; zoom:1.5;">
					<div class="imagelogo">
						<span class="glyphicon glyphicon-star"></span>
						<span class="rating">3.0 / 5.0</span>
					</div>
					<div class="listbox2">
						<div class="name" style="font-weight:bold">청소업체명</div>
						<div class="content">
							<div class="tel">010-1234-5678</div>
							<div class="address">서울시 강남구 역삼동</div>
							<div class="businessnum">123-3456-7890</div>
							<div class="price">80,000원</div>
							<div class="introduce">청소업체소개글입니다</div>
						</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<div class="listbox1">
					<input type="checkbox" class="check" style="float:left; zoom:1.5;">
					<div class="imagelogo">
						<div class="stars">
							<span class="glyphicon glyphicon-star"></span>
							<span class="rating">3.0 / 5.0</span>
						</div>
					</div>
					<div class="listbox2">
						<div class="name" style="font-weight:bold">청소업체명</div>
						<div class="content">
							<div class="tel">010-1234-5678</div>
							<div class="address">서울시 강남구 역삼동</div>
							<div class="businessnum">123-3456-7890</div>
							<div class="price">80,000원</div>
							<div class="introduce">청소업체소개글입니다</div>
						</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<div class="listbox1">
					<input type="checkbox" class="check" style="float:left; zoom:1.5;">
					<div class="imagelogo">
						<span class="glyphicon glyphicon-star"></span>
						<span class="rating">3.0 / 5.0</span>
					</div>
					<div class="listbox2">
						<div class="name" style="font-weight:bold">청소업체명</div>
						<div class="content">
							<div class="tel">010-1234-5678</div>
							<div class="address">서울시 강남구 역삼동</div>
							<div class="businessnum">123-3456-7890</div>
							<div class="price">80,000원</div>
							<div class="introduce">청소업체소개글입니다</div>
						</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<div class="listbox1">
					<input type="checkbox" class="check" style="float:left; zoom:1.5;">
					<div class="imagelogo">
						<span class="glyphicon glyphicon-star"></span>
						<span class="rating">3.0 / 5.0</span>
					</div>
					<div class="listbox2">
						<div class="name" style="font-weight:bold">청소업체명</div>
						<div class="content">
							<div class="tel">010-1234-5678</div>
							<div class="address">서울시 강남구 역삼동</div>
							<div class="businessnum">123-3456-7890</div>
							<div class="price">80,000원</div>
							<div class="introduce">청소업체소개글입니다</div>
						</div>
					</div>
				</div>	
			</div>
		

		
	</div>
	</div>
	</div>
	
	<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>

