<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::매칭매물관리</title>

<%-- <%@include file="/WEB-INF/views/inc/asset.jsp" %> --%>

<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>

<style>
body, html {
	height: 100%;
	margin: 0 auto;
	padding: 0;
}

#header {
	background-color: white;
}

#header:hover {
	background-color: white;
}

.header-containerwrap {
	height: auto;
	min-height: 100%;
}

.container {
	font-family: 'NanumBarunGothic';
	font-size: 16px;
	border: 0px;
}


#btnget {
	background-color: #c3d9ff; 
}

#btnsend {
	background-color: white;
}
.tbl {
	text-align: center;
	width: 800px;
	margin-left: 256px;
}

.tbl th {
	text-align: center;
	border-top: 1px solid #d4d4d4;
}

.tbl tr{
	border-bottom: 1px solid #d4d4d4;
	height: 50px;
}

.tbl tr:nth-child(odd) {
	background-color: #F9F9F9;
}

.tbl tr:hover {
	cursor: pointer;
	background-color: #ffe1e1;
	font-weight: bold;
	text-decoration:underline;
}
#tbl1{
	margin-top: -3px;
}
#tbl2{
	position: relative;
	top: -201px; 
	visibility : hidden;
}



#title {

	font-family: 'MaplestoryOTFLight';
	border-bottom: 1px dashed #ccc;
	font-size: 24px;
	margin-bottom: 30px;
	width: 500px;
	float: left;
	text-align: left;
	margin-left: 100px;
	margin-top: 20px;
}

#contractor {
	position: relative;
	top: -100px; 
	visibility : hidden;
}

#tbl3 {
	
	text-align: center;
	width: 800px;
	margin:auto;
	margin-bottom: 20px;
}

#tbl3 th{
	text-align: center;
	border-top: 1px solid #d4d4d4;
}

#tbl3 tr {
	border-bottom: 1px solid #d4d4d4;
	height: 30px;
}
#tbl3 tr:hover {
	cursor: pointer;
	background-color: #ffe1e1;
	text-decoration:underline;
}
#tbl3 tr:nth-child(odd) {
	background-color: #F9F9F9;
}


#whiteboard {
	width: 820px;
	margin-left: 250px;
}
#section1 {
	text-align: center;
}

#maintitle {
	border-bottom: 1px solid #ccc;
	font-size: 24px;
	font-family: 'MaplestoryOTFLight';
	padding-right: 50px;
	position: relative;
	display: inline;
	left: -286px;
	top: 100px;
	text-align:left;
}

</style>
</head>
<body>
	<div class="wrap">
		<div class="header-containerwrap">
			<!-- header -->
			<%@include file="/WEB-INF/views/user/bootstrap-header.jsp"%>

			<div class="container">
				
					<!-- nav -->
					<%@include file="/WEB-INF/views/user/nav.jsp"%>
				
				<div id="section1">
					<div id="maintitle">매칭 매물 관리</div>
					
					<div style="margin-top: 50px; color: #aaa; text-align: right;">
						<span class="glyphicon glyphicon-triangle-bottom"></span> 매칭 종류를 선택하세요.
					</div>
					<div style="text-align: right; margin: 20px;">
						<button type="button" class="btn btn-default" id="btnget">나에게 들어온 매칭</button>
						<button type="button" class="btn btn-default" id="btnsend">내가 보낸 매칭</button>
					</div>
					<div id="box">
											
						<div class="matchingbox" id="send">
							<table class="tbl" id="tbl1">
								<tr>
									<th>매물번호</th>
									<th>제목</th>
									<th>중개인</th>
									<th>매칭신청</th>
								</tr>
								<tr>
									<td>00024</td>
									<td>전망 좋은 남향방</td>
									<td>김햇살(햇살중개사사무소)</td>
									<td>
										<div id="matchaccept">
											<button type="button" class="btn btn-default" id="btnok">매칭 수락</button>
											<button type="button" class="btn btn-default" id="btnno">매칭 거절</button> 
										</div>
									</td>
								</tr>
								<tr>
									<td>00013</td>
									<td>역세권 도보 5분 내에 살고싶다면 여기로</td>
									<td>김햇살(햇살중개사사무소)</td>
									<td>매칭완료(2021-02-05)</td>
								</tr>
								<tr>
									<td>00004</td>
									<td>좋은 방입니다.</td>
									<td>김햇살(햇살중개사사무소)</td>
									<td>매칭완료(2021-02-05)</td>
								</tr>
							</table>
						</div>

						<div class="matchingbox" id="get">
							<table class="tbl" id="tbl2">
								<tr>
									<th>매물번호</th>
									<th>제목</th>
									<th>중개인</th>
									<th>매칭신청</th>
								</tr>
								<tr>
									<td>00024</td>
									<td>전망 좋은 남향방</td>
									<td>아침햇살(달님중개사사무소)</td>
									<td>매칭거절됨 <button type="button" class="btn btn-default btncontr">중개사선택</button></td>
								</tr>
								<tr>
									<td>00014</td>
									<td>역세권 도보 15분 내에 살고싶다면 여기로</td>
									<td>반달곰(달님중개사사무소)</td>
									<td>매칭신청완료 <button type="button" class="btn btn-danger">취소하기</button></td>
								</tr>
								<tr>
									<td>00013</td>
									<td>역세권 도보 5분 내에 살고싶다면 여기로</td>
									<td></td>
									<td>매칭대기중 <button type="button" class="btn btn-default btncontr">중개사선택</button></td>
								</tr>
								<tr>
									<td>00004</td>
									<td>좋은 방입니다.</td>
									<td>아침햇살(달님중개사사무소)</td>
									<td>매칭완료(2021-02-05)</td>
								</tr>
							</table>
						</div>
						<div class="contractorbox" id="contractor">
							<div id="whiteboard" style=" border: 1px solid black; border-radius:5px; box-shadow: 5px 5px 5px gray inset;">
								<div id="title">중개사 목록  <span style=" font-size: 16px; color: #b7b7b7;">매칭을 보낼 중개사를 선택하세요.</span></div>
								<table class="ctbl" id="tbl3">
									<tr>
										<th>중개사이름</th>
										<th>사업자번호</th>
										<th>전화번호</th>
										<th>주소</th>
									</tr>
									<tr class="selcontractor">
										<td>광진부동산</td>
										<td>115-90-00111</td>
										<td>010-5933-5833</td>
										<td>서울특별시 강동구 강일동</td>
									</tr>
									<tr class="selcontractor">
										<td>쌍용부동산</td>
										<td>115-90-00158</td>
										<td>010-5933-5833</td>
										<td>서울특별시 강동구 강일동</td>
									</tr>
									<tr class="selcontractor">
										<td>81111부동산</td>
										<td>924-60-00020</td>
										<td>010-5933-5833</td>
										<td>서울특별시 강동구 강일동</td>
									</tr>

								</table>
							</div>
						</div>
						
						

					</div>
				</div>





			</div>
			
		</div>


		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	</div>
	
	
	<script>
		
		var btnget = document.getElementById("btnget");
		var btnsend = document.getElementById("btnsend");
		var btncontr = document.getElementsByClassName("btncontr");
		var selcontractor = document.getElementsByClassName("selcontractor")
		var btnok = document.getElementById("btnok");
		var btnno = document.getElementById("btnno");
		
		
		btnget.onclick = function() {
			document.getElementById("tbl1").style.visibility = 'visible';
			document.getElementById("tbl2").style.visibility = 'hidden';
			btnget.style.backgroundColor = '#c3d9ff';
			btnsend.style.backgroundColor = 'white';
		};

		btnsend.onclick = function() {
			document.getElementById("tbl1").style.visibility = 'hidden';
			document.getElementById("tbl2").style.visibility = 'visible';
			btnget.style.backgroundColor = 'white';
			btnsend.style.backgroundColor = '#c3d9ff';
		};
		
		for (var i=0; i<btncontr.length; i++){
			btncontr[i].onclick = function() {
				document.getElementById("contractor").style.visibility = 'visible';
			};
		}
		for (var i=0; i<btncontr.length; i++){
			selcontractor[i].onclick = function() {
				document.getElementById("contractor").style.visibility = 'hidden';
			};
		}
		
		btnok.onclick = function() {
			btnok.display = 'none'
			btnno.display = 'none'
			document.getElementById("matchaccept").innerHTML = '매칭완료(2021-02-18)';
		};
		
		btnno.onclick = function() {
			btnok.display = 'none'
			btnno.display = 'none'
			document.getElementById("matchaccept").innerHTML = '매칭거절(2021-02-18)';
		};
	
	</script>
	
	
	
</body>
</html>