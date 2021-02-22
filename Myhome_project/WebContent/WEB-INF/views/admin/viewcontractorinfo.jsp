<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::회원정보관리</title>
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
		margin-bottom: 30px;
		text-align: center;
	}
	
	#subtitle #name {
		color : #F1AEAE;
		font-weight : bold;
	}
	
	
	/* 본문 내용 */
	.container .info {
		margin: 0px auto;
		width : 800px;
		padding : 0px 240px;
	}
	
	

	.info input {
		cursor: default !important;
		margin-bottom: 40px;
		dispaly: block;
		width : 300px;
	}
	
	.info span {
		display: block;
		width: 250px;
		font-weight: bold;
		margin-bottom : 5px;
	}
	
	.form-control {
		margin-bottom : 20px !important;
	}
	
	.ssn {
		width: 135px !important;
		display: inline !important;
		margin: 0px 10px;
	}
	
	#ssn1 {
		margin-left: 0px;
	}
	
	.tel {
		width: 80px !important;
		display: inline !important;
		margin: 0px 10px;
	}
	
	#tel1 {
		margin-left: 0px;
	}
	
/* 	.location {
		width: 150px !important;
		display: inline !important;
		margin: 0px 10px;
	}
	
	#location1 {
		margin-left: 0px;
	} */
	
	.readonly {
		cursor: auto !important;
	}
	

	
	

	/* 버튼 */
   	.btns{
   		text-align :center;
   		margin: 30px 0px;
   		padding : 10px;
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
			<div id="title">중개인정보관리</div>

			<div id="subtitle">
				<span id="name">중개인이름</span>님 회원정보</div>
			
		
			<div class="info">
			
				<span>회원번호</span>
				<input type="text" class="form-control" id="seq" value="123" readonly> 
				
				<span>아이디</span>
				<input type="text" class="form-control" id="id" value="아이디" readonly> 
				
				<span>이름</span>
				<input type="text" class="form-control" id="name" value="이름" readonly> 
				
				<span>공인중개소명</span>
				<input type="text" class="form-control" id="contractorname" value="닉네임" readonly> 
				
				<span>사업자번호</span> 
				<input type="text" class="form-control" id="contractornumber" value="123-456-7890" readonly >
				
				<span>비밀번호</span>
				<input type="text" class="form-control" id="password" value="비밀번호" readonly>
				
				<span>주소</span>
				<input type="text" class="form-control" id="address" value="주소" readonly>
				
				<span>전화번호</span> 
				<input type="text" class="form-control tel" id="tel1" value="010" maxlength=3 readonly> - 
				<input type="text" class="form-control tel" id="tel2" value="1234" maxlength=4 readonly> - 
				<input type="text" class="form-control tel" id="tel3" value="5678" maxlength=4 readonly>
				
<!-- 				<span>이메일</span>
				<input type="text" class="form-control" id="email" value="abc@gmail.com" readonly> -->
				
				<span>관심매물</span>
				<input type="text" class="form-control" id="roomtype" value="원룸" readonly>
				
				<span>관심지역</span>
				<input type="text" class="form-control location" id="location1" value="서울특별시" readonly>
				<input type="text" class="form-control location" id="location2" value="강남구" readonly>
				<input type="text" class="form-control location" id="location3" value="역삼동" readonly>
				 
				<span>계정상태</span>
				<input type="text" class="form-control" id="state" value="일반중개인" readonly>
				
				<span>신고횟수</span>
				<input type="text" class="form-control" id="reportcount" value="1회 (허위매물)" readonly>

				
			</div>
			
			<div class="btns">		
				<button class="btn btn-outline-secondary" type="submit" id="button-addon1">삭제</button>		
				<button class="btn btn-outline-secondary" type="button" id="button-addon1" onclick="location.href='/Myhome_project/Myhome/admin/membermanage-contractor.do';">목록</button>
			</div>

		</div>
		
	</div>
	</div>
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>