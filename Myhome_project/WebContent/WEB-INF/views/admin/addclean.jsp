<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::청소업체등록</title>
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
	
	.boardcover{
		border: 1px solid tomato;
		float: left;
		width:900px;
		height: auto;
		margin-left: 30px; 
	}
	
	/* 타이틀 */
	#title {
		font-size: 24px;
		font-family: 'MaplestoryOTFLight';
		border-left: 5px solid #F1AEAE;
		margin: 30px 10px;
		padding : 0px 10px;
	}
	
	#subtitle{
		font-size: 24px;
		font-family: 'NanumBarunGothic';
		margin-bottom: 10px;
	}
	
	
	/* 본문 내용 */
	.container .add {
		margin: 0px auto;
		position: relative;
	}
	
	input {
		outline: none;
	}
	
	.add{ /* 파일태그 가운데정렬************************** */
		text-align: center;
	}
	
	.add input, .add textarea {
		width: 70%;
		margin : 5px 0px;
	}
	
	.txt {
		height :25px;
	}
	
	textarea {
		height : 200px;
		outline : none;
	}

	/* 버튼 */
   	.btns{
   		text-align :center;
   		margin: 10px 0px;
   	}   
   	   
   	   	
   	#button-addon1 {
	   	background-color: #f1aeae;
	   	color: white;
	   	outline: none !important;
	   	font-family: 'NanumBarunGothic';
	   	border: 1px solid #f1aeae;
   }
   	
	.btn {
		text-align : center;
	}



</style>
</head>
<body>
	<div class="wrap">

		<!-- header -->
		<%@include file="/WEB-INF/views/admin/header.jsp"%>

		<div class="container">
		<%@include file="/WEB-INF/views/admin/nav.jsp" %>
        <div class="boardcover">
			<div id="title">청소업체 관리</div>

			<div class="add">
				<div id="subtitle">청소업체 등록하기</div>
		
				<input type="text" class="txt" name="name" placeholder="업체명"> 
				<input type="text" class="txt" name="address" placeholder="주소"> 
				<input type="text" class="txt" name="tel" placeholder="전화번호"> 
				<input type="text" class="txt" name="businessnum" placeholder="사업자번호"> 
				<input type="text" class="txt" name="price" placeholder="가격">
				<textarea name="introduce" placeholder="소개"></textarea>
				<input type="file" name="img">

				
			</div>
			
			<div class="btns">		
				<button class="btn btn-outline-secondary" type="submit" id="button-addon1">등록하기</button>		
				<button class="btn btn-outline-secondary" type="button" id="button-addon1">취소하기</button>
			</div>

		</div>
		
	</div>
	</div>
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>