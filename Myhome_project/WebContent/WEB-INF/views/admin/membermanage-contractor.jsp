<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::회원정보관리</title>
<%@include file="/WEB-INF/views/inc/asset.jsp"%>

<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/board.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">


<style>

	style>body, html {
		/* width: 100%; */
		height: 100%;
		margin: 0 auto;
		padding: 0;
	}
	
	.container {
		border: 1px solid green;
		width: 1190px;
		margin: 0px auto;
		margin-top: 100px;
		position: relative;
		height: 1200px;
	}

/* ------------------------------------------- */


	.boardcover{
	/* 	border: 1px solid tomato; */
		float: left;
		width:900px;
		height: auto;
		margin-left: 20px; 
	}
	
	#title {
		font-size: 24px;
		font-family: 'MaplestoryOTFLight';
		border-bottom: 1px solid #eaecef;
		padding-bottom: 10px;
		margin: 30px 10px;
		padding : 0px 10px;
	}
	
	#tbl1 {
		width:940px;
	}



	#tbl1 th, #tbl1 td {
		font-family: 'NanumBarunGothic';
		text-align: center;
		font-size: 13px;
	}

	.clist:nth-child(1) { width: 40px; }
	.clist:nth-child(2) { width: 60px; }
	.clist:nth-child(3) { width: 60px; }
	.clist:nth-child(4) { width: 60px; }
	.clist:nth-child(5) { width: 80px; }
	.clist:nth-child(6) { width: 100px; }
	.clist:nth-child(7) { width: 110px; }
	.clist:nth-child(8) { width: 120px; }
	.clist:nth-child(9) { width: 190px; }
	.clist:nth-child(10) { width: 130px; }


	input, select {
		font-family: 'NanumBarunGothic';
		outline: none;
	}
	
	.page, .search {
		text-align: center;
		margin: 10px 0px;
	}
	
	.page {
		text-align: left;
		margin: 10px;
	}
	
	.pagebar {
		float: left;
		text-align: center;
	}
	
	.page input, .pagebar{
		margin-top : 30px;
		text-align : center;
	}
	
	#member {
		margin: 10px;
		
	}

	#member input{
		border: none;
		background-color: transparent;
	
	}
	
	#member #contractor{
		font-size: 1.3em;
		font-weight: bold;
		color : #F1AEAE;
	}
	
	#member #user:hover{
		color: #F1AEAE;
		text-decoration : none;
	}



	
	ul {
		padding: 0;
		margin: 0px 5px;
		margin-bottom: 15px;
		list-style: none;
	}
	
	li {
		float: left;
	}
	
	.paging {
		text-align : center;
	}
	
	.pagination > li > .page-a {
		color: #202020;
	}
	
	.pagination>.active>a, .pagination>li>a:hover{
		background-color: #f1aeae !important;
		border-color : #f1aeae !important;
		color: white !important;
	}

    
    .btn {
    	cursor: pointer;
    	margin-bottom: 20px;
    	margin-right : 10px;
    	padding : 6px 12px;
    	background-color: #F1AEAE;
    	border-radius: 4px;
    	outline: none !important;
    	border : none;
    	color: aliceblue;
	
    }

    .delete {
    	text-align : right;
    }

	.search {
		text-align:center;
	   	padding: 10px;
	}
	
	.search #txt {
		width: 200px;
		display: inline;
	}






</style>
</head>
<body>
	<div class="boardwrap">

		<!-- header -->
		<%@include file="/WEB-INF/views/admin/header.jsp"%>

		<div class="container">
		<%@include file="/WEB-INF/views/admin/nav.jsp" %>
        <div class="boardcover">

			<div id="title">회원 정보 관리</div>

			<div id="member">
				<input type="button" id="user" value="일반회원" onclick="location.href='/Myhome_project/Myhome/admin/membermanage-user.do';">
				<span class="bar"> ┃ </span> 
				<input type="button" id="contractor" value="중개인">
			</div>

			<table id="tbl1" class="table table-hover table-striped table-condensed">
				<tr>
					<th class="clist">선택</th>
					<th class="clist">회원번호</th>
					<th class="clist">아이디</th>
					<th class="clist">이름</th>
					<th class="clist">생년월일</th>
					<th class="clist">공인중개소명</th>
					<th class="clist">사업자등록번호</th>
					<th class="clist">전화번호</th>
					<th class="clist">주소</th>
					<th class="clist">신고횟수(신고사항)</th>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0001</td>
					<td class="clist">아이디</td>
					<td class="clist">홍길동</td>
					<td class="clist">111111</td>
					<td class="clist">햇살공인중개사</td>
					<td class="clist">사업자등록번호</td>
					<td class="clist">010-1234-5678</td>
					<td class="clist">서울시 강남구 역삼동</td>
					<td class="clist">1회(허위매물)</td>
				</tr>	
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0002</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>	
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0003</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0004</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0005</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0006</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0007</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0008</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0009</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0010</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>		
			</table>


			<!-- 삭제버튼 -->
			<div class="delete"> 
			<input type="button" class="btn" value="선택한 회원 삭제" onclick="location.href='/jsp/project/communitywrite.jsp';">
			</div>
			
			<!-- 페이징 -->
			<div class="search-paging">
	   		<div class="paging">
	       		<ul class="pagination">
					<li class="page-item"><a class="page-link page-a" href="">이전</a></li>
					<li class="page-item"><a class="page-link page-a" href="">1</a></li>
					<li class="page-item"><a class="page-link page-a" href="">2</a></li>
					<li class="page-item"><a class="page-link page-a" href="">3</a></li>
					<li class="page-item"><a class="page-link page-a" href="">4</a></li>
					<li class="page-item"><a class="page-link page-a" href="">5</a></li>
					<li class="page-item"><a class="page-link page-a" href="">6</a></li>
					<li class="page-item"><a class="page-link page-a" href="">7</a></li>
					<li class="page-item"><a class="page-link page-a" href="">8</a></li>
					<li class="page-item"><a class="page-link page-a" href="">9</a></li>
					<li class="page-item"><a class="page-link page-a" href="">10</a></li>
					<li><a class="page-link page-a" href="">다음</a></li>
				</ul>       		
	       	</div>
			
			<!-- 검색 -->
			<div class="search">
				<input type="text" class="form-control" placeholder="회원번호 / 아이디 / 이름" id="txt">
				<input type="submit" class="btn" value="검색">
			</div>





		</div>

	</div>

	</div>

	</div>
	<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	


</body>
</html>