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
		z-index: -1;
    }
    
    
</style>

</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/header.jsp" %>
 
     <div class="container">
     <%@include file="/WEB-INF/views/inc/nav.jsp" %>
        <div class="boardcover">
        
        
		<h1>청소업체관리</h1>
			<div class="btns">
				<input type="button" value="등록">
				<input type="button" value="삭제">
			</div>
			<div class="list">
				<div class="listbox1">
					<input type="checkbox" class="check" style="float:left; zoom:1.5;">
					<div class="imagelogo">
						<span class="rating_icon"></span>
						<span class="rating">3.0 / 5.0</span>
					</div>
				</div>
				<div class="listbox2">
					<div class="name" style="font-weight:bold">청소업체명</div>
					<div class="content">
						<div class="tel">010-1234-5678</div>
						<div class="address">서울시 강남구 역삼동</div>
						<div class="price">80,000원</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<div class="listbox1">
					<input type="checkbox" class="check" style="float:left; zoom:1.5;">
					<div class="imagelogo">
						<span class="rating_icon"></span>
						<span class="rating">3.0 / 5.0</span>
					</div>
				</div>
				<div class="listbox2">
					<div class="name" style="font-weight:bold">이사청소업체명</div>
					<div class="content">
						<div class="tel">010-1234-5678</div>
						<div class="address">서울시 강남구 역삼동</div>
						<div class="price">80,000원</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<div class="listbox1">
					<input type="checkbox" class="check" style="float:left; zoom:1.5;">
					<div class="imagelogo">
						<span class="rating_icon"></span>
						<span class="rating">3.0 / 5.0</span>
					</div>
				</div>
				<div class="listbox2">
					<div class="name" style="font-weight:bold">이사청소업체명</div>
					<div class="content">
						<div class="tel">010-1234-5678</div>
						<div class="address">서울시 강남구 역삼동</div>
						<div class="price">80,000원</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<div class="listbox1">
					<input type="checkbox" class="check" style="float:left; zoom:1.5;">
					<div class="imagelogo">
						<span class="rating_icon"></span>
						<span class="rating">3.0 / 5.0</span>
					</div>
				</div>
				<div class="listbox2">
					<div class="name" style="font-weight:bold">이사청소업체명</div>
					<div class="content">
						<div class="tel">010-1234-5678</div>
						<div class="address">서울시 강남구 역삼동</div>
						<div class="price">80,000원</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<div class="listbox1">
					<input type="checkbox" class="check" style="float:left; zoom:1.5;">
					<div class="imagelogo">
						<span class="rating_icon"></span>
						<span class="rating">3.0 / 5.0</span>
					</div>
				</div>
				<div class="listbox2">
					<div class="name" style="font-weight:bold">이사청소업체명</div>
					<div class="content">
						<div class="tel">010-1234-5678</div>
						<div class="address">서울시 강남구 역삼동</div>
						<div class="price">80,000원</div>
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

