<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::커뮤니티</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="/Myhome_project/css/boarduserver.css"> -->


<!-- 부트스트랩 사용가능한 템플릿 -->

<style>

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
	   text-align:left;
		color: #202020;
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
	
	#basic-addon1 {
		background-color: #f1aeae;
        color: white;
        outline: none;
        
        position: relative;
		float: left;
		left: 35px;
		top: 640px;
	}
	
	#basic-addon2 {
		background-color: #f1aeae;
        color: white;
        outline: none;

	}
	
	.search {
		margin: 20px auto;
		width: 430px;
		positioin: relative;
		float: left;
		top: -340px;
		left: 500px;
		
	}


	.pagebar {
		margin: 0px auto;
		margin-bottom: 70px;
		float: left;
		text-align: center;
		position : relative;
		top: -250px;
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

	
	#titlename {
		color: #202020;
	}


	
</style>


</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp" %>
 
     <div class="container">
     
     <%@include file="/WEB-INF/views/user/nav-board.jsp"%>
     
     <div id="maintitle">커뮤니티</div>
     
     
     
     <c:if test="${not empty search}">
     <div class="message well well-sm">
         '${search}'(으)로 ${list.size()}건의 게시물을 검색했습니다.
         <!-- 어레이리스트가 아래 검색으로 출력되는 목록이므로 어레이리스트의 사이즈를 출력되게 함. -->
     </div>
     </c:if>
     
     
     
     
     <%-- <form id="searchForm" method="GET" action="/Myhome/user/boardcommunitylist.do">
     <div class="input-group search">
     
         <input type="text" class="form-control" placeholder="" aria-describedby="basic-addon2" id="search" name="search" required value="${search}">
         
         <span class="input-group-addon" id="basic-addon2" onclick="$('#searchForm').submit();"><span class="glyphicon glyphicon-search"></span></span>
         <!-- stype="cursor:pointer;" -->
     </div>
     </form>
     <div style="clear:both;"></div> --%>
     
     

        <form action="" id="form1">
            <div class="boardcover">
            <table id="board" class="table table-hover table-striped table-condensed list">
    			<thead>
	                <tr class="headtr">
	                    <th class="firtd boardtd">번호</th>
	                    <th class="sectd boardtd">제목</th>
	                    <th class="thitd boardtd">작성자(닉네임)</th>
	                    <th class="fortd boardtd">작성일</th>
	                    <th class="fiftd boardtd">조회수</th>
	                </tr>
                </thead>
                
                <tbody>
                
                	<c:if test="${list.size() == 0}">
                  		<tr>
                  			<td colspan="5" style="text-align:center;">게시물이 없습니다.</td>
                  		</tr>
                  	</c:if>
                  	
                  	<c:forEach items="${list}" var="dto">
                   	<!-- 여기서 list가 어레이리스트 디티오. var은 이걸 담아줄 변수.-->
                       <tr>
                           <td>${dto.seqCommunity}</td>
                           <td>
                           	<a href="/Myhome_project/Myhome/user/boardcommunitylview.do?seq=${dto.seqCommunity}&search=${search}&page=${nowPage}" id="titlename">${dto.title}</a>
                           	<!-- 뷰.java한테 검색어도 같이 들 고 간 것~ -->
                           	<%-- ${dto.gap} --%>
                           	
                           	<!-- 최신글 표시 -->
                           	<c:if test="${dto.gap < 1}">                         	
                           		<span class="label label-danger">new</span>
                           	</c:if>
                           	</td>
                           <td>${dto.nickName}</td>
                           <td>${dto.writeDate}</td>
                           <td>${dto.viewCount}</td>
                       </tr>
                  	</c:forEach>
                  	
                  	
                </tbody>
           
            </table>
            </div>
            
        <div class="btns btn-group" id="btnpost">
   
	        <!-- 로그인을 해야지만 글쓰기 버튼 출력하기 -->
 	        <c:if test="${not empty name}">
<%-- 	        <c:if test="${not empty id}"> --%>
	        	<button type="button" class="btn btn-default" id="basic-addon1" onclick="location.href='/Myhome_project/Myhome/user/boardcommunitylwrite.do';">글쓰기</button>
	        </c:if>
	        
	    </div>
	    <div style="clear:both;"></div>
            
            
        <nav class="pagebar">
           <ul class="pagination" id="page_bar">
               ${pagebar}
           </ul>
       </nav>
       <div style="clear:both;"></div>
       
       
       <form id="searchForm" method="GET" action="/Myhome_project/Myhome/user/boardcommunitylist.do">
	 		<div class="input-group search">
	 
	      	<input type="text" class="form-control" placeholder="제목, 내용, 작성자를 입력해주세요." aria-describedby="basic-addon2" id="search" name="search" required value="${search}">
	      
	      	<span class="input-group-addon" id="basic-addon2" onclick="$('#searchForm').submit();"><span>검색</span></span>
	      <!-- stype="cursor:pointer;" -->
	 		</div>
		</form>
		<div style="clear:both;"></div>
            
            
            
            
            
            
            
    
            <!-- <div class="boardwork d-grid gap-2 d-md-block">
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">Delete</button>
                <button class="btn btn-outline-secondary" type="button" id="button-addon2">Write</button>  
            </div> -->
    
    
           <!-- <div class="boardsearch">
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Recipient's username" aria-label="제목, 내용, 작성자를 입력해주세요." aria-describedby="button-addon2">
              
              </div>
              <button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>
            </div> -->
        
            
            
           <!--  <div class="Boardnext">
                <span class="tenplcount countbt ">◀</span>
                10개 이상일 경우에 1개씩 생기도록 화살표 태그에 개별 클래스를 입력하였습니다.!
                <span class="countbt" >1</span>
                <span class="tenmicount countbt">▶</span>
            </div> -->
            
           
            
        </form>
           
            
            
        </div>

    </div>
 
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>