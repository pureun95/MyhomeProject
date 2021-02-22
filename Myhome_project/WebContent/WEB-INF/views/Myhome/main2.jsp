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
	
	
	
	.header-ul > .header-ul3 {
		color: white;
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
	
	
	
	
	
	/* 매물 검색 창  */
	.search-room {
		border: 1px solid #9c9c9c;
		width: 850px;
		height: 350px;
		margin: 60px auto;
		padding: 50px 60px;
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
		width: 750px;
		height: 70px;
		margin-top: 20px;
		
	}
	
	.search-box2 {
		/* border: 1px solid white; */
		width: 340px;
		height: 50px;
		/* background-color: white; */
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
		width: 610px;
		height: 50px;
		float: left;
	}
	
	.btn {
		background-color: #f1aeae;
   		color: white;
   		outline: none !important;
   		font-family: 'NanumBarunGothic';
   		margin-right: 5px;
   		height: 50px;
   		font-size: 20px;
   		width: 106px;
   		/* margin-left: 20px; */
	}
	
	
	/* 첫 페이지에서 원룸, 월세만 빼고 버튼 하얀색 */
	#btn2, #btn3, #btn5, #btn6 {
		background-color: white;
		color: #202020;
	}
	
	#btn-search {
		margin-left: 10px;
	}
	
	
	/* 게시판 박스 */
	
	.container2 {
		border: 1px solid blue;
		width: 100%;
		height: 530px;
		padding: 20px 400px;
		background-color: white;
	}
	
	
	.contents {
		border: 1px solid black;
		width: 1100px;
		height: 300px;
		padding: 20px 70px;
		margin-top: 100px;
	}
	
	.contents-box {
		border: 1px solid black;
		width: 250px;
		height: 250px;
		float: left;
		text-align: left;
		box-shadow: 0px 7px 10px #dadada;
		margin-right: 100px;
		padding: 15px;
		font-family: 'NanumBarunGothic';
	}
	
	.contents-box > span {
		font-size: 24px;
		font-family: 'MaplestoryOTFLight';
		color: #f1aeae;
	}
	
	
	.contents-box1 {
		border: 1px solid black;
		witdh: 200px;
		height: 175px;
		margin-top: 20px;
		
	}
	
	ul {
		padding: 0px;
	}
	
	/* 목록 추가할 때마다 밑으로 */
	.contents-box1 > ul > li {
		display: block;
		margin-top: 5px;
		list-decoration: none;
		cursor: pointer;
	}
	
	.contents-box:nth-child(3) {
		margin-right: 0px;
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
     				<div class="btn btn-big" id="btn1">원룸</div>
     				<div class="btn btn-big" id="btn2">투룸</div>
     				<div class="btn btn-big" id="btn3">오피스텔</div>
     			</div>
     			
     			<div class="search-box2">
     				<div class="btn btn-big2" id="btn4">월세</div>
     				<div class="btn btn-big2" id="btn5">전세</div>
     				<div class="btn btn-big2" id="btn6">매매</div>
     			</div>
     			
     		</div>
     		
     		
     		<!-- 지하철역 검색 -->
     		<div class="search-box1">
     			<input type="text" class="form-control" placeholder="지역, 지하철역을 검색해주세요.">
     			<button class="btn btn-outline-secondary" type="button" id="btn-search">검색하기</button>
     		</div>
     	</div>
        
	
	<!-- container -->
    </div>
    
    
   
   <!-- 게시판 -->
    <div class="container2">
    	<div class="contents">
    		<div class="contents-box">
    			<span>공지사항</span>
    			<div class="contents-box1">
    				<ul>
    					<li>Lorem</li>
    					<li>Lorem</li>
    				</ul>
    			</div>
    		</div>
    		
    		<div class="contents-box">
    			<span>전자계약서 바로알기</span>
    			<div class="contents-box1">
    				<ul>
    					<li>Lorem</li>
    					<li>Lorem</li>
    				</ul>
    			</div>
    		</div>
    		
    		<div class="contents-box">
    			<span>부동산 체크리스트</span>
    			<div class="contents-box1">
    				<ul>
    					<li>Lorem</li>
    					<li>Lorem</li>
    				</ul>
    			</div>
    		</div>
    	
    	</div>
    </div>
</div> 
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>



<!--  -->
<script>
	
	/* 브라우저 창 띄우면 white로 나옴 -> 메인에서 transparent */
	$(document).ready(function() {
		$("header").hover(function() {
			$("#header").css("background-color", "transparent");})
	})
	
	
	/* 스크롤 시  */
	
	$(window).scroll(function() {
		
		if($(this).scrollTop() > 0) {
			$(".header-ul3").css("color", "#202020");
			$("#header").css("background-color", "white");
			$("header").hover(function() {
				$("#header").css("background-color", "white");
			});
		
		} else {
			$(".header-ul3").css("color", "white");
			$("#header").css("background-color", "transparent");
			$("header").hover(function() {
				$("#header").css("background-color", "transparent");})
		}
	});
	
	

</script>
 
</body>
</html>