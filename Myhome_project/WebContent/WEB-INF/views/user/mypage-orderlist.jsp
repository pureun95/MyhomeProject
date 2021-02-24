<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::매물거래내역</title>

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
#tbl1{
	width: 860px;
}
#tbl1 tr{
	border-bottom: 1px solid #d4d4d4;
	height: 35px;
}
#tbl1 tr:nth-child(odd) {
	background-color: #F9F9F9;
}

#tbl1 th{
	border-top: 1px solid #d4d4d4;
	text-align: center;
}
#box1{
	/* border: 1px solid black; */
	float: left;
	margin-left: 75px;
}

tr td:nth-child(5) {
	color: #a5a5a5
}

#tbl1 tr:hover {
	cursor: pointer;
	background-color: #ffe1e1;
	font-weight: bold;
	text-decoration:underline;
}

#explain {
	color: #aaa;
	text-align: right;
	margin-bottom: 24px;
}
#comment {
	margin-right: 30px;
}
#title {
	text-align: left;
	border-bottom: 1px solid #ccc;
	font-family: 'MaplestoryOTFLight';
	font-size: 24px;
	float: left;
	width: 200px;
	margin-left: 100px;
	margin-top: 96px;
	
}

#section1 {
	text-align: center;
}
</style>
</head>
<body>
	<div class="wrap">
		<div class="header-containerwrap">
			<!-- header -->
		<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp"%>
		
			<div class="container">
					<!-- nav -->
					<%@include file="/WEB-INF/views/user/nav.jsp"%>

				<div id="section1">

					<div id="title">매물 거래 내역</div>
					<div class="box" id="box1">

						<div id="explain">작성하기 버튼을 누르면 후기작성 페이지로 이동합니다.</div>

						<table class="tbl" id="tbl1">
							<tr>
								<th>매물번호</th>
								<th>제목</th>
								<th>중개인</th>
								<th>계약일</th>
								<th>후기작성</th>
							</tr>
							<tr>
								<td>000001</td>
								<td>전망 좋은 남향방</td>
								<td>이수근(수근수근부동산)</td>
								<td>2020.02.18</td>
								<td>후기작성 기간 경과</td>
							</tr>
							<tr>
								<td>000002</td>
								<td>역세권 도보 5분 내에 살고싶다면 여기로</td>
								<td>김햇살(햇살중개사무소)</td>
								<td>2020.06.28</td>
								<td>후기작성 기간 경과</td>
							</tr>
							<tr>
								<td>000004</td>
								<td>정말 싸게 나온 좋은방</td>
								<td>유재석(114공인중개사무소)</td>
								<td>2021.01.08</td>
								<td>후기작성 완료</td>
							</tr>
							<tr>
								<td>000006</td>
								<td>[풀옵션]신축 원룸</td>
								<td>강호동(천하장사부동산)</td>
								<td>2021.02.18</td>
								<td>
									<button type="button" class="btn btn-default" id="btn-pro">
										작성하기</button>
								</td>
							</tr>
						</table>
						<div style="clear: both;"></div>
					</div>

				</div>
			</div>
		</div>


		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	</div>
</body>
</html>