<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/board.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">




<style>
	.header {
		background-color : white;
	}
	
	#header:hover {
		background-color: transparent !important;
	}
	
	.header-ul2 {
		color: white !important;
	}
	
	body {
		background-image: url("../image/8.jpg");
	}
	
	
	.container {
		height: 1100px;
	}
	/* main */
	
	.main-box1 {
		border: 1px solid black;
		width: 960px;
		height: 350px;
		margin-top: 200px;
		margin-left: 100px;
		padding: 30px 50px;
		font-family: 'MaplestoryOTFLight';
	}
	
	.count-box {
		float: left;
		padding: 0px 23px;
		text-align: center;
	}
	
	#count-sbox1, #count-sbox2 {
		border: 1px solid blue;
		width: 250px;
		height: 300px;
		margin-right: 50px;

	}
	
	#count-sbox3 {
		border: 1px solid blue;
		width: 250px;
		height: 300px;
		margin-right: 0px;
	}
	
	
	.cbox {
		/* border: 1px solid blue; */
		width: 200px;
		height: 200px;
		margin-top: 10px;
		border-radius: 20px;
		background-color: hsla(0, 71%, 81%, 0.4);
		padding: 45px;
		font-size: 5em;
		color: white;
		text-align: center;
	
	}
	
	.count-box > span {
		font-size: 30px;
		font-family: 'MaplestoryOTFLight';
	}
	
	.container2 {
		border: 1px solid blue;
		width: 100%;
		height: 530px;
		padding: 20px 200px;
		background-color: white;
	}
	
	
	.contents {
		border: 1px solid black;
	    width: 900px;
	    height: 300px;
	    margin: 100px auto;
	    text-align: center;
	}
	
	
	/* 매물 검색 창  */
	.search-room {
		border: 1px solid white;
		width: 850px;
		height: 300px;
		margin: 60px 140px;
		padding: 50px;
		border-radius: 10px;
	}	

	.search-title {
		font-size: 28px;
		color: white;
		font-family: 'MaplestoryOTFLight';
		text-align: center;
	}
	
	.search-box1 {
		border: 1px solid white;
		width: 800px;
		height: 70px;
		margin-top: 20px;
		
	}
	
	.search-box2 {
		/* border: 1px solid white; */
		width: 340px;
		height: 50px;
		background-color: white;
		float: left;
	}
	
	.search-box2 > div {
		border-right: 1px solid #e0e0e0;
		float: left;
		width: 106px;
		height: 50px;
		font-size: 20px;
		/* background-color: pink; */
		text-align: center;
		padding: 10px 0px;
		font-size: 20px;
		font-family: 'NanumBarunGothic';
	}
	
	.search-box2 > .search-last {
		border-right: 0px;
	}
	
	.search-box2:nth-child(2) {
		margin-left: 60px;
	}
	
	.form-control {
		width: 300px;
		height: 40px;
		float: left;
	}
	
	.btn {
		background-color: #f1aeae;
   		color: white;
   		outline: none !important;
   		font-family: 'NanumBarunGothic';
   		margin-right: 5px;
   		height: 40px;
   		/* margin-left: 20px; */
	}
	
	
	.btn-big {
		/* margin-right: 10px; */
	}
	
	
</style>


</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp" %>
 
     <div class="container">

      	<div class="main-box1">
      		<div class="count-box" id="count-sbox1">
      			<span>실시간 매물</span>
      			<div class="cbox">20</div>
      		</div>
      		<div class="count-box" id="count-sbox2">
      			<span>전체 매물</span>
      			<div class="cbox">320</div>
      		</div>
      		<div class="count-box" id="count-sbox3">
      			<span>계약완료</span>
      			<div class="cbox">220</div>
      		</div>
     	</div>
     	
     	
     	
     	<!-- 검색창 -->
     	<div class="search-room">
     		<div class="search-title"><span class="glyphicon glyphicon-search"></span> 원하는 방을 검색해보세요.</div>
     		
     		<!-- 원룸, 투룸, 전세, 월세 -->
     		<div class="search-box1">
     		
     			<div class="search-box2">
     				<div class="btn btn-big">원룸</div>
     				<div class="btn btn-big">투룸</div>
     				<div class="btn btn-big">오피스텔</div>
     			</div>
     			
     			<div class="search-box2">
     				<div class="btn btn-big2">전세</div>
     				<div class="btn btn-big2">월세</div>
     				<div class="btn btn-big2">매매</div>
     			</div>
     			
     		</div>
     		
     		
     		<!-- 지하철역 검색 -->
     		<div class="search-box1">
     			<input type="text" class="form-control" placeholder="지역, 지하철역을 검색해주세요.">
     			<button class="btn btn-outline-secondary" type="button" id="btn-edit">검색하기</button>
     		</div>
     	</div>
        
	
	<!-- container -->
    </div>
    
    
   
    <div class="container2">
    	<div class="contents">
    		
    	
    	</div>	
    
    </div>
</div> 
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>