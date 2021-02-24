<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::매칭매물관리</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>


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
    
    .board-name {
    	border-left: 5px solid #f1aeae;
	    width: 810px;
	    /* height: 50px; */
	    padding-left: 10px;
	    font-size: 24px;
	    font-family: 'MaplestoryOTFLight';
	    color: #202020;
    	
    }
    
    
    .matching-option {
    	/* border: 1px solid blue; */
    	width: 400px;
    	height: 100px;
    	padding: 40px 0px;
    	font-size: 16px;
    	font-family: 'NanumBarunGothic';
    	color: #202020;
    }
    
    
    
    .matching-option > a {
    	cursor: pointer;
    	color: #202020;
    	margin-right: 20px;
    	float: left;
    	margin-left: 0px;
    }
    
     .matching-option > a:hover {
    	color: #f1acac;    	
    	text-decoration: none;
    }
    
    .matching-option > a:nth-child(1) {
    	color: #f1acac;
    	display: inline;
    	border-bottom: 2px solid #f1acac;
    	padding-bottom: 4px;
    }
    
    
    #tome {
    	color: #f1acac;
    	display: inline; 
    	border-bottom: 3x solid #202020; 
    	padding-bottom: 5px;
    	text-decoration: none;
    }
    
    .matching-board {
    	/* border: 1px solid blue; */
    	width: 820px;
    	height: 550px;
    }
    
    #board {
    	width: 810px;
    	margin-top: 0px;
    	margin-left: 0px;
    
    }
    
   .boardtd {
	   	text-align: center;
	    vertical-align: middle;
   }
    
    .firtd {
    	width: 10px;
    }
    
    .sectd {
    	width: 20px;
    }
    
    .thitd {
    	width: 10px;
    }
    
    .fortd {
    	width: 20px;
    }
    
   	.boardtd {
   		text-align: center;
    	vertical-align: middle;
   	
   	} 
   	
   	
   	/* 헤더 */
   	
	#mymatching {
		color: #f1acac;
	}   
	
	
	/* 매칭버튼 */
	
	#button-addon1 {
	  	background-color: #f1aeae;
	   	color: white;
	   	outline: none !important;
	   	font-family: 'NanumBarunGothic';
	   	border: 1px solid #f1aeae;
   }
   
   #button-addon2 {
	   	background-color: #f1aeae;
	   	color: white;
	   	outline: none !important;
	   	font-family: 'NanumBarunGothic';
	   	border: 1px solid #f1aeae;
	   	margin-left: 5px;
   }
	 	

   
   /* 검색, 페이지바 */
    
    .search-paging {
    	border: 1px solid black;
    	width: 800px;
    	height: 200px;
    	padding: 20px 0px; 
    }
    
    .paging {
  		border: 1px solid blue;
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
    
   
   .temp {
	   	min-height: 35px;
	   	/* border: 1px solid black; */
	   	padding: 5px;
   
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
		 	<div class="board-name">매칭매물관리</div>
		 	
		 	<div class="matching-option">
		 			<a href="mypage-matching1.do">나에게 들어온 매칭</a>
		 			<a href="mypage-matching2.do">내가 신청한 매칭</a>		 		 			
		 	</div>
                
          
        
         	 
        <form action="" id="form1">
   
   		<!-- 게시판 -->
        <div class="matching-board">
        
	        <table id="board" class="table table-hover table-striped table-condensed">
	
	            <tr class="headtr">
	                <th class="firtd boardtd">매물번호</th>
	                <th class="sectd boardtd">제목</th>
	                <th class="thitd boardtd">닉네임</th>
	                <th class="fortd boardtd">매칭신청</th>
	            </tr>
	            
	            <tr class="boardtr">
	                <td class="firtd boardtd "><div class="temp">1</div></td>
	                <td class="sectd boardtd boardtext align-middle"><div class="temp">정말좋은방</div></td>
	                <td class="thitd boardtd align-middle"><div class="temp">아이구</div></td>
	                <td class="fortd boardtd">
	                	<button class="btn btn-outline-secondary" type="button" id="button-addon2">매칭수락</button>
	            		<button class="btn btn-outline-secondary" type="button" id="button-addon2">매칭거절</button>  
	       			</td>
	            </tr>
	            
	            <tr class="boardtr">
	                <td class="firtd boardtd"><div class="temp">2</div></td>
	                <td class="sectd boardtd"><div class="temp">정말좋은방</div></td>
	                <td class="thitd boardtd"><div class="temp">아이구</div></td>
	                <td class="fortd boardtd">                	
		                <button class="btn btn-outline-secondary" type="button" id="button-addon2">방올리기</button>
		            	<button class="btn btn-outline-secondary" type="button" id="button-addon2">매칭취소</button>                
	            	</td>
	            </tr>
	            
	            <tr class="boardtr">
	                <td class="firtd boardtd "><div class="temp">3</div></td>
	                <td class="sectd boardtd"><div class="temp">정말좋은방</div></td>
	                <td class="thitd boardtd"><div class="temp">아이구</div></td>
	                <td class="fortd boardtd">
	                	<div class="temp">매칭완료(2020-01-01)</div>
	            	</td>
	            </tr>
	            
	            <tr class="boardtr">
	                <td class="firtd boardtd "><div class="temp">4</div></td>
	                <td class="sectd boardtd"><div class="temp">정말좋은방</div></td>
	                <td class="thitd boardtd"><div class="temp">아이구</div></td>
	                <td class="fortd boardtd">
	                	<div class="temp">매칭완료(2020-01-01)</div>
	            	</td>
	            </tr>
	            
	            <tr class="boardtr">
	                <td class="firtd boardtd "><div class="temp">5</div></td>
	                <td class="sectd boardtd"><div class="temp">정말좋은방</div></td>
	                <td class="thitd boardtd"><div class="temp">아이구</div></td>
	                <td class="fortd boardtd">
	                	 <button class="btn btn-outline-secondary" type="button" id="button-addon2">방올리기</button>
		            	<button class="btn btn-outline-secondary" type="button" id="button-addon2">매칭취소</button>                
	            	</td>
	            </tr>
	            
	            <tr class="boardtr">
	                <td class="firtd boardtd "><div class="temp">7</div></td>
	                <td class="sectd boardtd"><div class="temp">정말좋은방</div></td>
	                <td class="thitd boardtd"><div class="temp">아이구</div></td>
	                <td class="fortd boardtd">
	                	<div class="temp">매칭완료(2020-01-01)</div>
	            	</td>
	            </tr>
	            
	            <tr class="boardtr">
	                <td class="firtd boardtd "><div class="temp">8</div></td>
	                <td class="sectd boardtd"><div class="temp">정말좋은방</div></td>
	                <td class="thitd boardtd"><div class="temp">아이구</div></td>
	                <td class="fortd boardtd">
	                	<div class="temp">매칭완료(2020-01-01)</div>
	            	</td>
	            </tr>
	            
	            <tr class="boardtr">
	                <td class="firtd boardtd "><div class="temp">9</div></td>
	                <td class="sectd boardtd"><div class="temp">정말좋은방</div></td>
	                <td class="thitd boardtd"><div class="temp">아이구</div></td>
	                <td class="fortd boardtd">
	                	<div class="temp">매칭완료(2020-01-01)</div>
	            	</td>
	            </tr>
	            
	            <tr class="boardtr">
	                <td class="firtd boardtd "><div class="temp">10</div></td>
	                <td class="sectd boardtd"><div class="temp">정말좋은방</div></td>
	                <td class="thitd boardtd"><div class="temp">아이구</div></td>
	                <td class="fortd boardtd">
	                	<div class="temp">매칭완료(2020-01-01)</div>
	            	</td>
	            </tr>
	            
	            <tr class="boardtr">
	                <td class="firtd boardtd "><div class="temp">6</div></td>
	                <td class="sectd boardtd"><div class="temp">정말좋은방</div></td>
	                <td class="thitd boardtd"><div class="temp">아이구</div></td>
	                <td class="fortd boardtd">
	                	<div class="temp">매칭완료(2020-01-01)</div>
	            	</td>
	            </tr>
	            
	           
	        </table>
       		
       		</div>
       	
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
       		</div>
       	
       	</form>
       
        
       
		
        
        
    
         
              
          
          
          
          
          <!-- property-box -->
          </div>
             
             
             
             
             
    <!-- container -->        
	</div>  
   
    
  
   </div>
           
            
</div>


 
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>