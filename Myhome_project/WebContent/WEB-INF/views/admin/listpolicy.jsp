<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%



%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::부동산 정책 게시판 관리</title>

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
	border-bottom: 1px solid #eaecef;
	padding-bottom: 10px;
	margin: 30px 10px;
	padding : 0px 10px;
}
#tbl {
	width:920px;
}

.list:nth-child(1) { width: 60px; }
.list:nth-child(2) { width: 100px; }
.list:nth-child(3) { width: 400px; }
.list:nth-child(4) { width: 150px; }
.list:nth-child(5) { width: 100px; }
.list:nth-child(6) { width: 100px; }

#tbl1 th, #tbl1 td {
	font-family: 'NanumBarunGothic';
	text-align: center;
}



input, select {
	font-family: 'JSDongkang-Regular';
	outline: none;
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
	margin : 20px;
}

#txt{
	margin-right: 10px;
	size: 100px;
}

.btns {
	text-align : right;
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
             
		<div id="title">부동산 정책 게시판 관리</div>
		
		<table id="tbl1" class="table table-hover table-striped table-condensed">
    
                <tr class="headtr">
                	<th class="list">선택</th>
                    <th class="list">번호</th>
                    <th class="list">제목</th>
                    <th class="list">작성자</th>
                    <th class="list">작성일</th>
                    <th class="list">조회수</th>
                </tr>
                
                <tr class="boardtr">
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">0001</td>
                    <td class="list">부동산 정책 게시판 제목</td>
                    <td class="list">관리자1</td>
                    <td class="list">2021-02-18</td>
                    <td class="list">123</td>
                    
                </tr>
                <tr class="boardtr">
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">0002</td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                </tr>
                <tr class="boardtr">
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">0003</td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                </tr>
                <tr class="boardtr">
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">0004</td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                </tr>
                <tr class="boardtr">
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">0005</td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                </tr>
                <tr class="boardtr">
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">0006</td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                </tr>
                <tr class="boardtr">
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">0007</td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                </tr>
                <tr class="boardtr">
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">0008</td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                </tr>
                <tr class="boardtr">
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">0009</td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                </tr>
                <tr class="boardtr">
                	<td class="list"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="list">0010</td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                    <td class="list"></td>
                </tr>
                
            </table>
            
            <div class="btns">
            	<input type="button" class="btn" value="등록" id="add">
            	<input type="button" class="btn" value="수정" id="update">
            	<input type="button" class="btn" value="삭제" id="delete">
            	<div class="search">
	            	<input type="text" placeholder="제목/내용" id="txt">
	            	<input type="button" class="btn" value="검색" id="serch">
            	</div>
            </div>
            
            <div>
            	페이징
            </div>
			

	</div>
	</div>
	</div>
	
	<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>