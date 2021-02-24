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
		border-left: 5px solid #F1AEAE;
		margin: 30px 10px;
		padding : 0px 10px;
	}

	#tbl1 {
		width:940px;
	}

	
	#tbl1 th, #tbl1 td{
		font-family: 'NanumBarunGothic';
		text-align: center;
		font-size: 13px;
	}


	.mlist:nth-child(1) { width: 40px; }
	.mlist:nth-child(2) { width: 80px; }
	.mlist:nth-child(3) { width: 100px; }
	.mlist:nth-child(4) { width: 90px; }
	.mlist:nth-child(5) { width: 100px; }
	.mlist:nth-child(6) { width: 140px; }
	.mlist:nth-child(7) { width: 230px; }
	.mlist:nth-child(8) { width: 160px; }
	

	input, select {
		font-family: 'NanumBarunGothic';
		outline: none;
	}


	
	#member {
		margin: 10px;
		
	}

	#member input{
		border: none;
		background-color: transparent;
	
	}

	#member #user{
		font-size: 1.3em;
		font-weight: bold;
		color : #F1AEAE;
	}
	
	#member #contractor:hover{
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
				<input type="button" id="user" value="일반회원" >
				<span class="bar"> ┃ </span> 
				<input type="button" id="contractor" value="중개인" onclick="location.href='/Myhome_project/admin/membermanage/membermanage-contractor.do';">
			</div>
			
				<table id="tbl1" class="table table-hover table-striped table-condensed">
    
                <tr class="headtr">
                	<th class="mlist">선택</th>
                    <th class="mlist">회원번호</th>
                    <th class="mlist">아이디</th>
                    <th class="mlist">이름</th>
                    <th class="mlist">생년월일</th>
                    <th class="mlist">전화번호</th>
                    <th class="mlist">주소</th>
                    <th class="mlist">신고횟수(신고사항)</th>
                </tr>
                
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0001</td>
                    <td class="mlist">아이디</td>
                    <td class="mlist">홍길동</td>
                    <td class="mlist">111111</td>
                    <td class="mlist">010-1234-5678</td>
                    <td class="mlist">서울시 강남구 역삼동</td>
                    <td class="mlist">1회(허위매물)</td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0002</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0003</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0004</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0005</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0006</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0007</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0008</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0009</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0010</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
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