<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%



%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::체크리스트 게시판 관리</title>
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
#tbl {
	width:920px;
}

#tbl1 td {
	font-family: 'NanumBarunGothic';
	font-size : 16px;
}



#tbl .name, #tbl .date, #tbl .count  {
	float : right;
	margin : 5px 10px;
}

#tbl .subject {
	font-weight : bold;
}

#tbl .seq, #tbl .subject{
	float: left;
	margin : 5px 10px;
}

#tbl .download span, #tbl .download a {
	margin : 5px 5px;
}

.content { 
	height: 500px;
	padding: 25px 15px; /* padding 적용 확인*************** */
}



input, select {
	font-family: 'JSDongkang-Regular';
	outline: none;
}

/* .btn {
    background-color: #f1aeae;
    color: aliceblue;
    display: inline;
    width: 70px;
    margin-right: 10px;
    
}  */ 


.btn {
	width: 70px;
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





</style>
</head>
<body>
    <div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/admin/header.jsp" %>
 
     <div class="container">
     <%@include file="/WEB-INF/views/admin/nav.jsp" %>
        <div class="boardcover">
             
		<div id="title">부동산 체크리스트 게시판 관리</div>
		
		<table id="tbl" class="table table-striped table-condensed">
    
                <tr class="title">
                	<td>
	                	<span class="seq">001</span>
	                    <span class="subject">부동산 체크리스트 게시판 제목</span>
	                    <span class="count">123</span>
	                    <span class="date">2021-02-20 12:12:12</span>
	                    <span class="name">관리자1</span>
                    </td>
                 </tr>
                 <tr>
                 	<td class="content">
                 		부동산 체크리스트 내용입니다. 부동산 체크리스트 내용입니다. 부동산 체크리스트 내용입니다. 부동산 체크리스트 내용입니다. 부동산 체크리스트 내용입니다. 부동산 체크리스트 내용입니다. 부동산 체크리스트 내용입니다. 부동산 체크리스트 내용입니다. 부동산 체크리스트 내용입니다. 부동산 체크리스트 내용입니다. 
                 
                 </tr>
          	
            </table>
            
            <div class="btns">
                    <button type="button" class="btn" onclick="location.href='/Myhome/admin1/checklist.do'">
                        목록
                    </button>
                    <button type="button" class="btn" onclick="location.href=''">
                        수정
                    </button>
                    <button type="button" class="btn" onclick="location.href=''">
                        삭제
                    </button>
              </div>
            
			

	</div>
	</div>
	</div>
	
	<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>