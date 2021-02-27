<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::공지사항</title>
<%@include file="/WEB-INF/views/inc/asset.jsp"%>

<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">


<style>

	/* div {
		-webkit-box-sizing: border-box;
	    -moz-box-sizing: border-box;  
	    box-sizing: border-box; 
	} */

	.container {
		border-color: transparent;
		font-family: 'NanumBarunGothic', sans-serif;
		font-size: 16px;
		position: relative;
	}
	
	.boardwrap{
	    height: auto;
	    min-height: 100%;
	}
	
	.boardcover {
		float: left;
/* 		width: 900px; */
		width: 75%;

		
	}



	 #maintitle {
	   border-bottom: 1px solid #ccc;
	   font-size: 24px;
	   font-family: 'MaplestoryOTFLight';
	   /* padding-right: 50px; */
	   padding-bottom: 7px;
	   position: relative;
	   display: inline;
	/*    left: 100px;
	   top: 100px; */
	   text-align:left;
	
		/* font-weight: bold; */
		color: #202020;
		
		/* margin: 10px 7px; */
		/* padding-left: 10px; */
		top: 100px;
		left: 100px;
		
	} 
	
	.table {
		position: relative;
		top: 160px;
		left: 100px;
	}
	
	
	.table thead tr th {
		text-align: center;
	}
	
	.table td:nth-child(1) {
		text-align: center;
		width: 90px;
	}
	
	.table td:nth-child(2) {
		text-align: left;
		width: auto;
	}
	
	.table td:nth-child(3) {
		text-align: center;
		width: 130px;
	}
	
	.table td:nth-child(4) {
		text-align: center;
		width: 130px;
	}
	
	.table td:nth-child(5) {
		text-align: center;
		width: 90px;
	}
	
	
	.table tr {
		height: 40px;
	}
	
	.table>tbody>tr>td {
		vertical-align: middle !important;
	}
	
	#basic-addon2 {
		background-color: #f1aeae;
        color: white;
        outline: none;
	}
	
	.search {
		margin: 20px auto;
		width: 400px;
		positioin: relative;
		float: left;
		top: 90px;
		left: 350px;
		
	}


	.pagebar {
		margin: 0px auto;
		margin-bottom: 70px;
		float: left;
		text-align: center;
		position : relative;
		top: 170px;
		left: 500px;
	}
	
	#page_bar>.active>a, #page_bar>li>a:hover {
		background-color: #f1aeae;
		border-color : #f1aeae;
		color: white;
	}
	
	#page_bar>li>a {
		color: #202020;
	}
	
	/* .pagination>.active>a, .pagination>li>a:hover{
		background-color: #f1aeae;
		border-color : #f1aeae;
		color: white;
	}

	.pagination>li>a {
		color: #202020;
	} */
	
	#titlename {
		color: #202020;
	}

</style>
</head>
<body>
      <div class="boardwrap">
         <!-- header -->
         <%@include file="/WEB-INF/views/inc/bootstrap-header.jsp"%>

         <div class="container">
            
            <!-- nav -->
            <%@include file="/WEB-INF/views/user/nav-board.jsp"%>
            <!-- <div style="clear:both;"></div> -->
            
            <div id="maintitle">공지사항</div>
               
               
               <form action="" id="form1">
               		<div class="boardcover">
               			<table id="board" class="table table-hover table-striped table-condensed list">
               				<thead>
				                <tr class="headtr">
				                    <th class="sectd boardtd">번호</th>
				                    <th class="thitd boardtd">제목</th>
				                    <th class="thitd boardtd">작성자</th>
				                    <th class="fortd boardtd">작성일</th>
				                    <th class="fiftd boardtd">조회수</th>
				                </tr>
			                </thead>
               				<tbody>
               					<c:forEach items="${list}" var="dto">
	               					<tr>
	               						<td>${dto.seqNotice}</td>
	               						<td>
	               						<a href="/Myhome_project/Myhome/user/boardnoticeview.do?seq=${dto.seqNotice}&search=${search}&page=${nowPage}" id="titlename">${dto.title}</a>
	               						<!-- 최신글표시 -->
	               						<c:if test="${dto.gap < 1}">                         
			                           		<span class="label label-danger">new</span>
			                           	</c:if>
	               						</td>
	               						<td>${dto.id}</td>
	               						<td>${dto.writeDate}</td>
	               						<td>${dto.viewCount}</td>
	               					</tr>
               					</c:forEach>				
               				</tbody>
               			</table>
               			
               			
               			<nav class="pagebar">
			                <ul class="pagination" id="page_bar">
			                    ${pagebar}
			                </ul>
			            </nav>
			            <div style="clear:both;"></div>
			            
			            
			            <form id="searchForm" method="GET" action="/Myhome_project/Myhome/user/boardnoticelist.do">
				     		<div class="input-group search">
				     
					         	<input type="text" class="form-control" placeholder="제목, 내용을 입력해주세요." aria-describedby="basic-addon2" id="search" name="search" required value="${search}">
					         
					         	<span class="input-group-addon" id="basic-addon2" onclick="$('#searchForm').submit();"><span>검색</span></span>
					         <!-- stype="cursor:pointer;" -->
				     		</div>
			     		</form>
			     		<div style="clear:both;"></div>
            
            	</div>
               </form>
               
               </div>
           
           </div>



      <!-- footer -->
      <%@include file="/WEB-INF/views/inc/footer.jsp"%>
   
   
   <script>

   
   </script>
   
   
</body>
</html>