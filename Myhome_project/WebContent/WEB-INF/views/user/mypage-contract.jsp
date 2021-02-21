<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::전자계약관리</title>

<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>
#header {
	background-color: white;
}

body, html {
	/* width: 100%; */
	height: 100%;
	margin: 0 auto;
	padding: 0;
}

.container {
	border: 0px;
	width: 1190px;
	margin: 0px auto;
	margin-top: 100px;
	position: relative;
	height: 1200px;
}


#section1 {
	/* border: 1px solid black; */
	float:left;
	width: 950px;
	font-family: 'NanumBarunGothic';
}
#section2 {
	/* border: 1px solid red; */
	text-align: center;
	font-size: 16px;
}
#explain {
	margin-top: 100px;
	margin-bottom: 20px;
	margin-right: 150px;
}
#maintitle {
	border-bottom: 1px solid #ccc;
	font-size: 24px;
	font-family: 'MaplestoryOTFLight';
	padding-right: 50px;
	position: relative;
	display: inline;
	left: 100px;
	top: 100px;
	text-align: left;
}
.tbl {
	/* border: 1px solid blue; */
	width: 850px;
	margin-left: 76px;
	
}

#tbl1 th {
	border-top: 1px solid #d4d4d4;
	text-align: center;
}

#tbl1 tr {
	border-bottom: 1px solid #d4d4d4;
	height: 50px;
}


#tbl1 tr:nth-child(odd) {
	background-color: #F9F9F9;
}

#tbl1 tr:hover {
	cursor: pointer;
	background-color: #ffe1e1;
	font-weight: bold;
	text-decoration:underline;
}
#tbl1 td:nth-child(5) {
	width: 352px;
}
.box {
	width: 250px;
	display: none;
}
</style>
</head>
<body>
<div class="wrap">

 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp"%>
 
    <div class="container">
    
    	<!-- nav -->
		 <%@include file="/WEB-INF/views/user/nav.jsp" %>
		 
		 <div id="section1">
		 	<div id="maintitle">전자 계약 관리</div>
		 	<div id="explain" style="text-align: right; font-size: 16px; color:#aaa">
		 		<span class="glyphicon glyphicon-triangle-bottom"></span> 모든 계약을 볼 수 있어요.
		 	</div>
		 	
		 	<div id="section2">
		 		
		 		<table class="tbl" id="tbl1">
					<tr class="tblheader">
						<th>계약서번호</th>
						<th>임대인</th>
						<th>임차인</th>
						<th>중개인</th>
						<th>계약상태</th>
					</tr>
		 			<tr class="contract">
		 				<td>2101859600</td>
		 				<td>남궁성</td>
		 				<td>홍진영</td>
		 				<td>이정재(이정재부동산)</td>
		 				<td>
		 					계약진행중
		 					<!-- <button type="button" class="btn btn-default" id="btn1">암호 입력하기</button>
		 					<div class="box" id="box1">
			 					<input type="text" placeholder="전자계약코드 입력." class="codetxt" id="txt1">
			 					<button type="submit" class="btn btn-default" id="sub1">전송하기</button>
		 					</div> -->
		 				</td>
		 			</tr>
		 			<tr class="contract">
		 				<td>2101891107</td>
		 				<td>김두한</td>
		 				<td>마동석</td>
		 				<td>김혜수(김혜수부동산)</td>
		 				<td>
		 					계약진행중
		 					<!-- <button type="button" class="btn btn-default" id="btn2">암호 입력하기</button>
		 					<div class="box" id="box2">
			 					<input type="text" placeholder="전자계약코드 입력" class="codetxt" id="txt2">
			 					<button type="submit" class="btn btn-default" id="sub2">전송하기</button>
		 					</div> -->
		 				</td>
		 			</tr>
		 			<tr class="contract">
		 				<td>2101130110</td>
		 				<td>홍길동</td>
		 				<td>김임차</td>
		 				<td>김한빛(한빛부동산)</td>
		 				<td>계약완료</td>
		 			</tr>
		 			<tr class="contract">
		 				<td>2101130100</td>
		 				<td>김동자</td>
		 				<td>김임차</td>
		 				<td>유산슬(유산슬부동산)</td>
		 				<td>계약취소</td>
		 			</tr>
		 		</table>
		 		
		 	
		 	
		 	</div>
		 	
		
		 </div>
		 
		 
		 
		 
		 
		 
		 
		 
    </div>
    
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>

</div>    

	<script>
		
		var btn1 = document.getElementById("btn1");
		var btn2 = document.getElementById("btn2");
		
		var sub1 = document.getElementById("sub1");
		var sub2 = document.getElementById("sub2");
		
		var contract = document.getElementsByClassName("contract");
		
		for (var i=0; i<contract.length; i++){
			contract[i].onclick = function() {
				location.href = '/Myhome_project/user/mypage-contract-detail.do';
			};
		}
		
		
		btn1.onclick = function() {
			document.getElementById("box1").style.display = 'inline';
			btn1.style.display = 'none';
		};
		btn2.onclick = function() {
			document.getElementById("box2").style.display = 'inline';
			btn2.style.display = 'none';
		};
		
		
	
		sub1.onclick = function() {
			document.getElementById("txt1").style.display = 'none';
			sub1.style.display = 'none';
			document.getElementById("box1").innerHTML = '계약완료'
		}
	
		sub2.onclick = function() {
			document.getElementById("txt2").style.display = 'none';
			sub2.style.display = 'none';
			document.getElementById("box2").innerHTML = '계약완료'
		}
	
	
	
	</script>
	


</body>
</html>