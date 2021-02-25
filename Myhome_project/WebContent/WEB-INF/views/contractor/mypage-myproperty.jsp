<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::올린매물관리</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/contractor-mypage.css">
<link rel="stylesheet" href="/Myhome_project/css/myproperty.css">




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
    
    
     /* css 붙여넣기 */
     .property-list {
    	border-bottom: 1px solid rgb(185, 183, 183);
    	width: 830px;
    	height: 240px;
    	padding: 30px 0px;
    	font-family: 'NanumBarunGothic';
    	color: #424242;
	}
	
	.property-list2 {
		margin-left: 40px;
	}
    
    
    /* 게시판 이름 */
    
    .board-name {
    	border-left: 5px solid #f1aeae;
	    width: 810px;
	    /* height: 50px; */
	    padding-left: 10px;
	    font-size: 24px;
	    font-family: 'MaplestoryOTFLight';
	    color: #202020;
    }
    
    /* 네비 활성화 */
    
    #upload {
    	color: #f1acac;
    }
    
    
    /* 검색, 페이지바 */
    
    .search-paging {
    	/* border: 1px solid black; */
    	width: 800px;
    	height: 200px;
    	padding: 20px 0px; 
    	margin-top: 20px;
    }
    
    .paging {
  		/* border: 1px solid blue; */
  		width: 100%;
  		height: 75px;
  		padding: 0px 170px;
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
   		color: white;
   		outline: none !important;
   		font-family: 'NanumBarunGothic';
   	} 
   	
   	.btn:hover {
   		color: white; 
   	}
   	
   	.btn-contract {
   		position: relative;
	    top: 0px;
	    left: 700px;
	    margin-top: 20px;
   	}
    
    #search-box {
   		/* border: 1px solid black; */
   		width: 390px;
   		height: 60px;
   		margin: 10px 200px;
   		padding: 10px;
   }
   
   #search-text {
   		width: 300px;
   		outline: 0;
   		display: inline;
   		margin-right: 10px;
   
   }
   
   
    /* 매물리스트 체크박스 */
   
   .checkbox {
   		/* border: 1px solid black; */
   		float: left;
   		width: 16px;
   		height: 16px;
   		margin-top: 0px;
   		margin-right: 10px;
   	
   }
   
   #ck {
   		margin-left: 0px;
   		width: 16px;
   		height: 16px;
   		margin-top: 0px;
   }
    
    
    

</style>


</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp"%>
 
     <div class="container">
     <%@include file="/WEB-INF/views/contractor/nav.jsp" %>
        <div class="boardcover">
            
		 
		 <!-- 리스트 -->
		 <div class="property-box">
		 	<div class="board-name">올린매물관리</div>
		 		
		 		<c:forEach items="${list }" var="dto">
                <div class="property-list" onclick="location.href='/Myhome_project/contractor/search-property-detail.do';">
                
                	<!-- 전자계약 체크박스 -->
                	<div class="checkbox"><input type="checkbox" id="ck" value="${dto.seqProperty}"></div>    		     
                     
                    <div class="img-property">           
                  	
	                    <!--available 0: 입주가능 1: 계약완료 -->
	                   <c:if test="${dto.available eq '0' }">	           
	                    <div class="state">입주가능</div>             
	                    </c:if>
	                     
	                    <c:if test="${dto.available eq '1' }">
	                    <div class="state">계약완료</div>             
	                    </c:if>
                     
                    </div>
                
                    
                    <div class="property-list2">
                    
                        <div class="property-num">no. ${dto.seqProperty }</div>
                        <div class="property-title">${dto.title }</div>
                        <div class="property-content" id="roomtype">
                            <span>방유형</span>
                            <div class="property-content2">${dto.roomType }</div>
                        </div>
                            
                        <div class="property-content" id="floor">
                            <span>층</span>
                            <div class="property-content2">${dto.floor }</div>
                        </div>
                        
                        <div class="property-content" id="contract">
                            <span>계약유형</span>
                            <div class="property-content2">${dto.contractTypeDetail }</div>
                        </div>
                      
                       
                       
                        <c:if test="${dto.contractTypeDetail eq '월세'}">
	                        <div class="property-content" id="price">
	                            <span>가격</span>
	                            <div class="property-content2">${dto.monthlyRent }월(${dto.contractPeriod })</div>
	                        </div>
                        </c:if>
                        
                        <c:if test="${dto.contractTypeDetail eq '전세'}">
	                        <div class="property-content" id="price">
	                            <span>가격</span>
	                            <div class="property-content2">${dto.deposit }</div>
	                        </div>
                        </c:if>
                        
                         <c:if test="${dto.contractTypeDetail eq '매매'}">
	                        <div class="property-content" id="price">
	                            <span>가격</span>
	                            <div class="property-content2">${dto.dealing }</div>
	                        </div>
                        </c:if>
                     
                       	
                        <div class="property-location">
                            <div class="location-icon" style="float: left;"></div>
                            <div class="location-detail">${dto.location }</div>
                        </div>
               			 
               			 <input type="hidden" value="${dto.seqProperty }">
                    </div>  
                    
                   
                </div>
               
                
                                          
                <input type="submit" class="btn btn-outline-secondary btn-contract" value="전자계약하기">
                </c:forEach>      
                
        <!-- 검색, 페이지바 -->
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
	       		
	       		
	    	<div id="search-box">		
				<input type="text" class="form-control" id="search-text" placeholder="닉네임, 매물번호를 입력해주세요."> 		
				<button class="btn btn-outline-secondary" type="button" id="button-addon1">검색</button>
			</div>
       	<!-- search-paging -->
       	</div>         
              
                        
        <!-- property-box -->
        </div>
             

             
    <!-- container -->        
	</div>  
   
   		
   </div>
           
            
</div>


 <script>
 
 </script>
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>