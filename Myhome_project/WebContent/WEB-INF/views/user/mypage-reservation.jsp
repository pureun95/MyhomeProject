<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::이사청소예약</title>

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

.tbl {
	text-align: center;
	width: 500px;
}

.tbl tr:hover {
	cursor: pointer;
	background-color: #ffe1e1;
	font-weight: bold;
	text-decoration:underline;
}

.section1 {
	padding-left: 50px;
	/* border: 1px solid black; */
	font-size: 16px;
	font-family: 'NanumBarunGothic';
	float: left;
	width: 900px;
	height: 850px;
}

#tbl2 {
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
	color: #202020;
}

tr > td:nth-child(1) {
	border: 1px solid #f6afb3;
	width: 200px;
}
tr > td:nth-child(2) {
	width: 300px;
}

.info {
	height:168px;
	text-align:left;
	padding-left: 15px;
}

.info>div{
	margin:15px;
}
label {
	margin-right: 20px;
}
#boxclean {
	position: relative;
	top: -840px;
	visibility: hidden;
}

#pagebox {
	position: relative;
	top: 880px;
	display:inline; 
	
}
#pagebox .pagebtn {
	border: 1px solid #888888;
	border-radius: 3px;
	background-color: white;
	width: 30px;
	outline: none;
}
#pagebox .pagebtn:hover {
	background-color: #f6afb3;
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

				<div id="maintitle">이사 청소 예약</div>
				<div class="section1">
					<div style="margin-top: 50px; color: #ccc; text-align: right;">
						<span class="glyphicon glyphicon-triangle-bottom"></span> 이사 /청소 중 선택 > 지역 입력 > 검색하기 클릭.
					</div>
					<div style="text-align: right; margin: 19px;">
						<input type="radio" name="sel1" id="rdmove" value="move" checked><label for="btnmove">이사</label>
						<input type="radio" name="sel1" id="rdclean" value="clean"><label for="btnclean">청소</label>
						<input type="text" placeholder="지역(구)을 입력하세요. ex) 강남구 " style="width: 300px;">
						<button type="submit" class="btn btn-success" id="btnsearch">검색하기</button>
					</div>
	
					<a href='/Myhome_project/user/reservationlist.do' id="list-link">내 예약목록으로 이동하기</a>

					<div id="pagebox">
						<button class="pagebtn"><span class="glyphicon glyphicon-chevron-left"></span></button>
						<button class="pagebtn">1</button>
						<button class="pagebtn">2</button>
						<button class="pagebtn">3</button>
						<button class="pagebtn">4</button>
						<button class="pagebtn">5</button>
						<button class="pagebtn"><span class="glyphicon glyphicon-chevron-right"></span></button>
					</div>
	
					<div class="box" id="boxmove">
						<table class="tbl" id="tbl1">
							
							<!-- <tr> 업체 1개 -->
							<tr>
								<td><img src="/Myhome_project/image/move_clean/1. 쌍용이사.jpg" style="width: 200px;"></td>
								<td>
									<div class="info" style="border: 1px solid green;">
										<div style="font-weight: bold">쌍용24</div>
										<div>전국에서 가장 싼 가격으로 모십니다.</div>
										<div>80,000원</div>
										<div>02-111-4566</div>
									</div>
								</td>
							</tr>
							<tr>
								<td><img src="/Myhome_project/image/move_clean/7. 아현이사.jpg" style="width: 200px;"></td>
								<td>
									<div class="info" style="border: 1px solid black;">
										<div style="font-weight: bold">아현이삿짐센터</div>
										<div>싼 가격으로 모십니다.</div>
										<div>80,000원</div>
										<div>02-222-4566</div>
									</div>
								</td>
							</tr>
							<tr>
								<td><img src="/Myhome_project/image/move_clean/6. 광진이사.jpg" style="width: 200px;"></td>
								<td>
									<div class="info" style="border: 1px solid green;">
										<div style="font-weight: bold">광진24</div>
										<div>일 잘합니다.</div>
										<div>80,000원</div>
										<div>02-333-4566</div>
									</div>
								</td>
							</tr>
							<tr>
								<td><img src="/Myhome_project/image/move_clean/2. 82이사.jpg" style="width: 200px;"></td>
								<td>
									<div class="info" style="border: 1px solid green;">
										<div style="font-weight: bold">82이사</div>
										<div>일 잘합니다.</div>
										<div>80,000원</div>
										<div>02-444-4566</div>
									</div>
								</td>
							</tr>
							<tr>
								<td><img src="/Myhome_project/image/move_clean/3. 남목이사.jpg" style="width: 200px;"></td>
								<td>
									<div class="info" style="border: 1px solid green;">
										<div style="font-weight: bold">남목이삿짐센터</div>
										<div>일 잘합니다.</div>
										<div>80,000원</div>
										<div>02-355-4566</div>
									</div>
								</td>
							</tr>
							<tr>
								
							</tr>
						</table>
					</div>
					
					
					<div class="box" id="boxclean">
						<table class="tbl" id="tbl2">
							
								<!-- <tr> 업체 1개 -->
							<tr>
								<td><img src="/Myhome_project/image/move_clean/1. 쌍용청소.jpg" style="width: 200px;"></td>
								<td>
									<div class="info" style="border: 1px solid green;">
										<div style="font-weight: bold">쌍용크리닝</div>
										<div>전국에서 가장 싼 가격으로 모십니다.</div>
										<div>80,000원</div>
										<div>02-111-4566</div>
									</div>
								</td>
							</tr>
							<tr>
								<td><img src="/Myhome_project/image/move_clean/7. 아현청소.jpg" style="width: 200px;"></td>
								<td>
									<div class="info" style="border: 1px solid green;">
										<div style="font-weight: bold">아현청소센터</div>
										<div>싼 가격으로 모십니다.</div>
										<div>80,000원</div>
										<div>02-222-4566</div>
									</div>
								</td>
							</tr>
							<tr>
								<td><img src="/Myhome_project/image/move_clean/6. 광진청소.jpg" style="width: 200px;"></td>
								<td>
									<div class="info" style="border: 1px solid green;">
										<div style="font-weight: bold">광진청소</div>
										<div>일 잘합니다.</div>
										<div>80,000원</div>
										<div>02-333-4566</div>
									</div>
								</td>
							</tr>
							<tr>
								<td><img src="/Myhome_project/image/move_clean/2. 82청소.jpg" style="width: 200px;"></td>
								<td>
									<div class="info" style="border: 1px solid green;">
										<div style="font-weight: bold">8282청소센터</div>
										<div>싼 가격으로 모십니다.</div>
										<div>80,000원</div>
										<div>02-222-4566</div>
									</div>
								</td>
							</tr>
							<tr>
								<td><img src="/Myhome_project/image/move_clean/3. 남목청소.jpg" style="width: 200px;"></td>
								<td>
									<div class="info" style="border: 1px solid green;">
										<div style="font-weight: bold">남목청소</div>
										<div>일 잘합니다.</div>
										<div>80,000원</div>
										<div>02-333-4566</div>
									</div>
								</td>
							</tr>
							
						</table>

					</div><!-- boxclean -->
					
				</div>



			</div>
		</div>


		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	</div>
	
	<script>
		var tbl1 = document.getElementById("tbl1");
		var boxclean = document.getElementById("boxclean");
		
		var rdmove = document.getElementById("rdmove");
		var rdclean = document.getElementById("rdclean");
		
		var company = document.getElementsByTagName("tr")
		
		for (var i=0; i<company.length; i++) {
			company[i].onclick = function () {
				location.href = '/Myhome_project/user/cleanmovedetail.do';
			}
		}
		
		
		
		rdmove.onclick = function () {
			tbl1.style.visibility = 'visible';
			boxclean.style.visibility = 'hidden';
		}
		
		rdclean.onclick = function () {
			tbl1.style.visibility = 'hidden';
			boxclean.style.visibility = 'visible';
		}
		
		
	
	</script>
</body>
</html>