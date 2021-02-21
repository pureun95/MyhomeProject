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