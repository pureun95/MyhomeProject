<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%-- <%@include file="/WEB-INF/views/inc/asset.jsp" %> --%>

<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>

<style>
body, html {
	height: 100%;
	margin: 0 auto;
	padding: 0;
}
.container {
	border: 0px;
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

.likebox {
	border: 2px solid #ffa9a9;
	border-radius: 5px;
	font-family: 'MaplestoryOTFLight';
	display: inline;
	position: relative;
	left: 60px;
	top: 100px;
	float: left;
	margin: 10px;
	width: 414px;
}

.like {
	border-top: 2px solid white;
	width: 150px;
	height: 150px;
	float: left;
}

.likeimg {
	margin-right: 10px;
	border-right: 1px dotted black;
	background-size: cover;
}

#propertyimg1 {
	background-image: url('/Myhome_project/image/3.jpg');
}

#propertyimg2 {
	background-image: url('/Myhome_project/image/4.jpg');
}

#usedimg1 {
	background-image: url('/Myhome_project/image/used/used01.jpg');
}

#usedimg2 {
	background-image: url('/Myhome_project/image/used/used02.jpg');
}

.likeinfo {
	background-color: #ffdfdf;
	padding-left: 30px;
	padding-top: 30px;
	width: 250px;
}

.innerbox {
	cursor: pointer;
}
.wrapbutton {
	display: inline;
	position: relative;
	left: 80px;
	top: 100px;
	margin-left: 220px;
}
#btn-use {
	margin-left: 50px;
}
#title {

	font-family: 'MaplestoryOTFLight';
	border-bottom: 1px dashed #ccc;
	font-size: 24px;
	margin-bottom: 30px;
	width: 200px;
	position: relative;
	left: 150px;
	top: -300px;
	float: left;
}
.tblinfo th {
	width : 70px;
}

</style>
</head>
<body>
	<div class="wrap">
		<div class="header-containerwrap">
			<!-- header -->
			<%@include file="/WEB-INF/views/inc/header.jsp"%>

			<div class="container">
			

				<!-- nav -->
				<%@include file="/WEB-INF/views/user/nav.jsp"%>

				<div class="likebox" id="property">
					<div style="background-color: white">매물 찜 목록</div>
					<div class="innerbox">
						<div class="like likeimg" id="propertyimg1"></div>
						<div class="like likeinfo">
							<table class="tblinfo" id="info1">
								<tr>
									<th>매물가격</th>
									<td>월 40 / 보증금 600</td>
								</tr>
								<tr>
									<th>매물종류</th>
									<td>원룸</td>
								</tr>
								<tr>
									<th>위치</th>
									<td>서울시 강남구 대치동</td>
								</tr>
								<tr>
									<th>크기</th>
									<td>11평</td>
								</tr>
								<tr>
									<th>층수</th>
									<td>2/5층</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="innerbox">
						<div class="like likeimg" id="propertyimg2"></div>
						<div class="like likeinfo">
							<table class="tblinfo" id="info1">
								<tr>
									<th>매물가격</th>
									<td>월 40 / 보증금 600</td>
								</tr>
								<tr>
									<th>매물종류</th>
									<td>원룸</td>
								</tr>
								<tr>
									<th>위치</th>
									<td>서울시 강남구 대치동</td>
								</tr>
								<tr>
									<th>크기</th>
									<td>11평</td>
								</tr>
								<tr>
									<th>층수</th>
									<td>2/5층</td>
								</tr>
							</table>
						</div>
					</div>
					<div style="clear: both;"></div>

				</div>
				


				<div class="likebox" id="used">
					<div style="background-color: white">중고물품 찜 목록</div>

					<div class="innerbox">
						<div class="like likeimg" id="usedimg1"></div>
						<div class="like likeinfo">
							<table class="tblinfo" id="info2">
								<tr>
									<th>글제목</th>
									<td>겨울옷 팝니다.</td>
								</tr>
								<tr>
									<th>가격</th>
									<td>5만원</td>
								</tr>
								<tr>
									<th>거래방식</th>
									<td>직거래</td>
								</tr>
								<tr>
									<th>작성일</th>
									<td>2021-01-31</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="innerbox">
						<div class="like likeimg" id="usedimg2"></div>
						<div class="like likeinfo">
							<table class="tblinfo" id="info2">
								<tr>
									<th>글제목</th>
									<td>아이폰 s20 팝니다.</td>
								</tr>
								<tr>
									<th>가격</th>
									<td>70만원</td>
								</tr>
								<tr>
									<th>거래방식</th>
									<td>직거래</td>
								</tr>
								<tr>
									<th>작성일</th>
									<td>2021-01-31</td>
								</tr>
							</table>
						</div>
					</div>

					<div style="clear: both;"></div>
				</div>

				<div class="wrapbutton">
					<button type="button" class="btn btn-default" id="btn-pro">
						<span class="glyphicon glyphicon-plus"></span> 매물 찜목록 더보기
					</button>

					<button type="button" class="btn btn-default" id="btn-use">
						<span class="glyphicon glyphicon-plus"></span> 중고물품 찜목록 더보기
					</button>
				</div>



			</div>



		</div>



		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	</div>
</body>
</html>