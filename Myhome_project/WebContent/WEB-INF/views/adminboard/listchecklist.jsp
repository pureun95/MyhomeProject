<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%



%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::체크리스트 게시판 관리</title>

<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/board.css">

<%@include file="/WEB-INF/views/inc/asset.jsp" %>

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
	#tbl {
		width:920px;
	}
	
	.list:nth-child(1) { width: 60px; }
	.list:nth-child(2) { width: 100px; }
	.list:nth-child(3) { width: 400px;  text-align : left !important;}
	.list:nth-child(4) { width: 150px; }
	.list:nth-child(5) { width: 100px; }
	.list:nth-child(6) { width: 100px; }
	
	#checklisttitle {
		cursor : pointer;
	}
	
	#tbl1 th, #tbl1 td {
		font-family: 'NanumBarunGothic';
		text-align: center;
	}
	
	
	
	input, select {
		font-family: 'JSDongkang-Regular';
		outline: none;
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
	    background-color: #f1aeae;
	    color: aliceblue;
	    display: inline;
	    width: 70px;
	    margin-right: 10px;
	    outline: none !important;
	    
	}  
	
	.search{
		text-align:center;
	   	padding: 10px;
	}
	
	#txt{
		margin-right: 10px;
		size: 100px;
	}
	
	
	.btns {
		text-align : right;
	}
	
	.search #txt {
		width: 200px;
		display: inline;
	}
	
	.boardtr:hover{
		color : #f1aeae;
	}


</style>
</head>
<body>
    <div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/admin/header.jsp" %>
 
     <div class="container">
     <%@include file="/WEB-INF/views/admin/nav.jsp" %>
        <div class="boardcover">
             
		<div id="title">체크리스트 게시판 관리</div>
		
		<table id="tbl1" class="table table-hover table-striped table-condensed">
    
                <tr class="headtr">
                	<th class="list">선택</th>
                    <th class="list">번호</th>
                    <th class="list">제목</th>
                    <th class="list">작성자</th>
                    <th class="list">작성일</th>
                    <th class="list">조회수</th>
                </tr>
                
                <c:forEach items="${listchecklist}" var="dto">
                <tr class="boardtr" >
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">${dto.seq}</td>
                    <td class="list" id="checklisttitle" onclick="location.href='/Myhome_project/admin/board/viewchecklist.do?seq=${dto.seq}';">${dto.title}</td>
                    <td class="list">${dto.id}</td>
                    <td class="list">${dto.writedate}</td>
                    <td class="list">${dto.viewcount}</td>
                    
                </tr>
                </c:forEach>
                
                
            </table>
            
            <div class="btns">
            	<input type="button" class="btn" value="등록" id="add" onclick="location.href='/Myhome_project/admin/board/addchecklist.do';">
            	<input type="button" class="btn" value="수정" id="edit" onclick="location.href='/Myhome_project/admin/board/editchecklist.do';">
            	<input type="button" class="btn" value="삭제" id="delete"  onclick="location.href='/Myhome_project/admin/board/deletechecklist.do';">
            </div>
            
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
            
            <form id="searchForm" method="GET" action="/admin/board/listpchecklist.do">
	            <div class="search">
	            	<input type="text" class="form-control" placeholder="제목/내용" id="txt">
	            	<input type="button" class="btn" value="검색" id="serch">
	            </div>
            </form>
            
			

	</div>
	</div>
	</div>
	
	<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>