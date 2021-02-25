<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::방상세보기</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="/Myhome_project/css/myproperty.css">
<!-- <link rel="stylesheet" href="/Myhome_project/css/boarduserver.css"> -->


<!-- 부트스트랩 사용가능한 템플릿 -->

<style>

	.container {
		border-color: transparent;
		
		margin: 0 auto;
	    letter-spacing: -.2px;
	    min-height: 100%;
	    padding-bottom: 100px;
	    border: 1px solid green;
	    margin-top: 100px;
	    

		}
	
	.header-containerwrap{
	    height: auto;
	    min-height: 100%;
	    position: relative;
	}


	
	#maintitle {
	   /* margin: 30px 7px; */
	   font-size: 24px;
	   font-family: 'MaplestoryOTFLight';
	   padding:0 10px;
	   border-left: 5px solid #f1aeae;
   
		text-align: left;	    
	    float: left;
	    
	    margin-left: 100px;
	    margin-top: 96px;
	}
	

        
        hr {
        	margin-top: 20px;
		    margin-bottom: 20px;
		    border: 0;
		    border-top: 1px solid #eee;
		    height: 0;
        }
        
        
        /* 팀장님 소스 */
        
   
   	
   	/* 전체 property list 박스 property.css 덮어쓰기 */
   	
   	.property-box {
   		border: 1px solid transparent;
	    float: left;
/* 	    width: 900px; */
	    width: 100%;
	    height: auto;
	    margin-bottom: 50px;
	    margin-left: 0px;
	    /* padding-left: 0px;
	    padding-top: 0px; */
	    
	    padding: 0 100px;
	    position: relative;
	    margin: 20px auto;
	    
	    
   	
   	}
   	
   	.property-list {
   		width: 100%;
   		border-bottom: 0;
	    
	    height: auto;
   	}
   	
   	.img-property {
        border: 1px solid black;
       	width: 450px;
        height: 250px;
        float: left;
       	background-image: url('../image/6.jpg');
        background-position: 0% 0px; 
        background-size: cover;
        cursor: pointer;
        
        background-color: #ccc;
     }
     
     
     .imgsmall-property {
     	border: 1px solid black;
     	float: left;
     	background-color: #ccc;
     	cursor: pointer;
     	position: relative;
     	margin-right: 5px;
     	width: 147px;
     	height: 73px;
     	
     	left: -450px;
     	top: 260px;
     	
     }
     
     
     .property-list2 {
     	width: 430px;
     	position: relative;
     	float: left;
     	height: auto;	
     	padding: 0px 5px;
     	
     	border: solid 1px transparent;
     	top: -74px;
     	margin-left: 50px;
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
    
   .state {
	   	position: relative;
	   	float: left;
	   	left: 348px;
	   	
   
   }
   
   .property-title {
   		margin-bottom: 10px;
   }
   
   .contractor-name {
   	margin-bottom: 8px;
   }
   
   .contractor-phone {
   		margin-bottom: 15px;
   }
   
   .optionname {
   		margin-bottom: 8px;
   		font-weight: bold;
   }
   
   .option1 sapn, .option2 sapn {
   		background-color: #f1aeae;
   		padding: 5px 8px;
   		margin-right: 6px;
   		margin-top: 8px;
   		color: white;
   }
   
   .option1, .option2 {
   		margin-bottom: 20px;
   }
   
   .option-type {
   		margin-bottom: 10px;
   }
   
   .informtype {
   		font-weight: bold;
   		margin-bottom: 6px;
   }
   
   .informtype span {
   		font-weight: normal;
   		margin-left: 7px;
   }
   
   .inform2-1 {
   		font-size: 20px;
   		font-weight: bold;
   		margin-bottom: 10px;
   }
   
   .inform2-2 {
   		margin-bottom: 7px;
   }
   
   .top-inform {
   	 width: 450px;
   }
   
   .count2 {
   		margin-left: 4px;
   }
   
   #viewcount, #likecount {
   		font-weight: bold;
   		border : 1px #ccc solid;
   		padding: 3px 4px;
   		text-align: center;
   		width: auto;
   		position: relative;
   		float: left;
   		top: 3px;
   }
   
   #report {
   		border : 1px #ccc solid;
   		padding: 3px 4px;
   		text-align: center;
   		width: auto;
   		position: relative;
   		float: left;
   		
   		top: 3px;
   }
   
   .countbox {
   		left: 195px;
    	position: relative;
   }
   
   
   
   
	
	
</style>


</head>
<body>
 

<!-- <div class="wrap"> -->
<div class="header-containerwrap">
 
 <!-- header -->
		<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp"%>
 
     <div class="container">
     
     <div id="maintitle">방 상세보기</div>
     <div style="clear:both;"></div>
     
     <hr>
            
      
         <div class="property-box">		 	
		 
		 <!-- form -->
		 <form action="POST">
		 	<div class="top-inform">
			 	<div id="report">허위매물신고</div>
			 	<div class="countbox">
				 	<div id="viewcount">조회수 <span class="count2">45</span></div>
				 	<div id="likecount">찜하기 <span class="glyphicon glyphicon-heart" style="color: red"></span><span class="count2">21</span></div>
			 	</div>
		 	</div>
                <div class="property-list">
                	<div class="img-box">
	                    <div class="img-property"><div class="state">입주가능</div></div>
	                    <div class="imgsmall-property"></div>
	                    <div class="imgsmall-property"></div>
	                    <div class="imgsmall-property"></div>
                    </div>
                   	<!-- <div style="clear:both;"></div> -->
                    
                    <div class="property-list2">
                        <div class="property-num">no.0001</div>
                        <div class="property-title">월 40 / 보증금 1000</div>
                        <div class="contractor-name"><b>햇살공인중개사</b></div>
                        <div class="contractor-phone">전화) 010-5555-9999 / 02-222-3333</div>
                        
                        <div class="option-type" id="option-type1">
                        	<div class="optionname" id="optionname1">건물옵션</div>
                        	<div class="option1">
                        		<sapn>주차장</sapn>
                        		<sapn>엘리베이터</sapn>
                        		<sapn>발코니</sapn>
                        		<sapn>반려동물</sapn>
                        	</div>
                        </div>
                        
                        <div class="option-type" id="option-type2">
                        	<div class="optionname" id="optionname2">방옵션</div>
                        	<div class="option1">
                        		<sapn>세탁기</sapn>
                        		<sapn>냉장고</sapn>
                        		<sapn>에어컨</sapn>
                        	</div>
                        </div>
                        
                        <div class="option-type" id="option-type3">
                        	<div class="optionname" id="optionname3">관리비옵션</div>
	                        <div class="option2">
	                        		<sapn>인터넷</sapn>
	                        		<sapn>유선TV</sapn>
	                        		<sapn>청소비</sapn>
	                        		<sapn>수도세</sapn>
	                        </div>
	                    </div>
	                    
	                    <div class="informcontent1">
	                    	<div class="informtype">주소:  <span class="inform" id="inform1">서울특별시 동작구 상도4동</span></div>
	                    	<div class="informtype">매물계약종류:  <span class="inform" id="inform2">월세</span></div>
	                    	<div class="informtype">월세:  <span class="inform" id="inform3">300,000원</span></div>
	                    	<div class="informtype">보증금:  <span class="inform" id="inform4">20,000,000원</span></div>
	                    	<div class="informtype">관리비:  <span class="inform" id="inform5">50,000원</span></div>
	                    	<div class="informtype">계약기간:  <span class="inform" id="inform6">24개월</span></div>
	                    	<div class="informtype">해당층/건물수:  <span class="inform" id="inform7">13층/15층</span></div>
	                    	<div class="informtype">전용/공급면적:  <span class="inform" id="inform8">56.47/80m^2</span></div>
	                    	<div class="informtype">구조:  <span class="inform" id="inform9">원룸</span></div>
	                    	<div class="informtype">입주가능일:  <span class="inform" id="inform10">즉시입주</span></div>
	                    	<div class="informtype">반려동물:  <span class="inform" id="inform11">가능</span></div>
	                    	<div class="informtype">올린날짜:  <span class="inform" id="inform12">2021.01.21</span></div>
	                    	
	                    </div>
	                    
	                    <hr>
	                    
	                    <div class="informcontent2">
	                    	<div class="inform2-1">상세정보</div>
	                    	<div class="inform2-2">제목 : 전망 아주 좋은 방입니다~~~</div>
	                    	<div class="inform2-3">설명 : 이 가격에 이 정도 집이면 바로 입주하셔야 합니다. <br>문의 전화가 많아 전화 연결이 불가능 할 때가 있습니다.</div>
	                    </div>
                        
                        
                        <!-- <div class="property-content" id="floor">
                            <span></span>
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
                        </div> -->
                        
                    </div>
                    <div style="clear:both;"></div>
                </div>
                
		<!-- form -->
		</form>
                
        <!-- property-box -->
        </div>
<!--         <div style="clear:both;"></div> -->
            	


        </div>

        </div>

      <!-- </div> -->
      <!-- footer -->
      <%@include file="/WEB-INF/views/inc/footer.jsp"%>

 
 
</body>
</html>