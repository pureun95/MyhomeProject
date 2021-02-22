<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::방올리기</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>


<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/contractor-mypage.css">
<link rel="stylesheet" href="/Myhome_project/css/myproperty.css">



<style>
	.header {
		background-color : white;
	}
	
	/* myproperty.css 덮어쓰기 */
	.container {
        width: 1190px;
        margin: 0 auto;
        letter-spacing: -.2px;
        min-height:100%;
		padding-bottom:100px;
		border: 1px solid green;
		margin-top: 100px;
		padding: 100px 200px;
		z-index: -1;
    }
    
    .board-name {
    	border-left: 3px solid #f1acac;
    	width: 810px;
    	height: 32px;
    	padding-left: 20px;
    	font-size: 24px;
    	font-family: 'MaplestoryOTFLight';
    	color: #202020;
    	margin-bottom: 20px;
    	
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
    
    .matching-option > a:nth-child(2) {
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
    	border: 1px solid blue;
    	width: 820px;
    	height: 600px;
    	margin-right: 50px;
    	margin-left: 60px;
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
   	
   	/* 전체 property list 박스 property.css 덮어쓰기 */
   	
   	.property-box {
   		border: 1px solid blue; */
	    float: left;
	    width: 900px;
	    height: auto;
	    margin-bottom: 50px;
	    margin-left: 0px;
	    padding-left: 0px;
	    padding-top: 0px;
   	
   	}
   	
   	.img-property {
        border: 1px solid black;
       	width: 280px;
        height: 180px;
        float: left;
       	background-image: url('../image/6.jpg');
        background-position: 0% 0px; 
        background-size: cover;
        cursor: pointer;
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
    	margin-top: 50px;
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
   	
   	.btn:active {
   		color: white;
   	}
   	
   	.btn:hover {
   		color: white;
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
   
   .ckbox {
   		width: 18px;
   		height: 18px;
   		position: relative;
   		left: 0px;
   		top: -4px;
   		
   }
   
   .nickname {
   		position: relative;
   		top: -30px;
   }
   
   /* 방올리기 버튼 */
   #btn-upload {
   		margin-left: 380px;
   		margin-top: 20px;
   }
   
   	
    

</style>


</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp" %>
 
 <!-- 임대인과 매칭된 매물 리스트만 보여주기 + 체크박스 > 방올리기 페이지 이동 -->
 
     <div class="container">
        <div class="boardcover">
            
		 
		 
		 <!-- 상단 게시판 타이틀 -->
		 <div class="board-name">방올리기</div>
		 	
		 	<div class="matching-option">
		 		<span>임대임과 매칭된 매물리스트입니다.</span>	 		 			
		 	</div>
                
         <!-- 리스트 -->
		 <div class="property-box">		 	
		 
		 <!-- form -->
		 <form action="POST">
                <div class="property-list">                		      
                    <div class="img-property">
                    	<input type="checkbox" class="ckbox">
                    	<div class="state nickname">닉네임</div>
                    </div>
                    <div class="property-list2">
                        <div class="property-num">no.0001</div>
                        <div class="property-title">너무 좋은 방</div>
                        <div class="property-content" id="roomtype">
                            <span>방유형</span>
                            <div class="property-content2">원룸</div>
                        </div>
                        
                        <div class="property-content" id="floor">
                            <span>층</span>
                            <div class="property-content2">3/4</div>
                        </div>
                        
                        <div class="property-content" id="contract">
                            <span>계약유형</span>
                            <div class="property-content2">월세</div>
                        </div>
                        
                        <div class="property-content" id="price">
                            <span>가격</span>
                            <div class="property-content2">30,000원/월(24)</div>
                        </div>
                        
                        <div class="property-location">
                            <div class="location-icon" style="float: left;"></div>
                            <div class="location-detail">서울특별시 동작구 상도동</div>
                        </div>
                        
                    </div>
                </div>
                
                
                
                
                <div class="property-list">
                    <div class="img-property">
                    	<input type="checkbox" class="ckbox">
                    	<div class="state nickname">닉네임</div>
                    </div>
                    <div class="property-list2">
                        <div class="property-num">no.0001</div>
                        <div class="property-title">너무 좋은 방</div>
                        <div class="property-content" id="roomtype">
                            <span>방유형</span>
                            <div class="property-content2">원룸</div>
                        </div>
                        
                        <div class="property-content" id="floor">
                            <span>층</span>
                            <div class="property-content2">3/4</div>
                        </div>
                        
                        <div class="property-content" id="contract">
                            <span>계약유형</span>
                            <div class="property-content2">월세</div>
                        </div>
                        
                        <div class="property-content" id="price">
                            <span>가격</span>
                            <div class="property-content2">30,000원/월(24)</div>
                        </div>
                        
                        <div class="property-location">
                            <div class="location-icon" style="float: left;"></div>
                            <div class="location-detail">서울특별시 동작구 상도동</div>
                        </div>
                        
                    </div>
                </div>
                
                
                
                <div class="property-list">
                    <div class="img-property">
                    	<input type="checkbox" class="ckbox">
                    	<div class="state nickname">닉네임</div>
                    </div>
                    <div class="property-list2">
                        <div class="property-num">no.0001</div>
                        <div class="property-title">너무 좋은 방</div>
                        <div class="property-content" id="roomtype">
                            <span>방유형</span>
                            <div class="property-content2">원룸</div>
                        </div>
                        
                        <div class="property-content" id="floor">
                            <span>층</span>
                            <div class="property-content2">3/4</div>
                        </div>
                        
                        <div class="property-content" id="contract">
                            <span>계약유형</span>
                            <div class="property-content2">월세</div>
                        </div>
                        
                        <div class="property-content" id="price">
                            <span>가격</span>
                            <div class="property-content2">30,000원/월(24)</div>
                        </div>
                        
                        <div class="property-location">
                            <div class="location-icon" style="float: left;"></div>
                            <div class="location-detail">서울특별시 동작구 상도동</div>
                        </div>
                        
                    </div>
                </div>
                
                
			<!-- 올리기 버튼 -->
			<button class="btn btn-outline-secondary" type="button" id="btn-upload">방올리기</button>
                
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


		<!-- form -->
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