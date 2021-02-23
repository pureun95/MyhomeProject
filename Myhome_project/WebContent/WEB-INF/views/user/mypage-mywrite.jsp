<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::내가쓴글보기</title>

<!-- <%@include file="/WEB-INF/views/inc/asset.jsp" %> -->

<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
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

.tbl {
	text-align: center;
	width: 800px;
	margin: auto;
}

.tbl th {
	text-align: center;
	border-top: 1px solid #d4d4d4;
}

.tbl tr {
	border-bottom: 1px solid #d4d4d4;
	height: 35px;
}

.tbl tr:nth-child(odd) {
	background-color: #F9F9F9;
}

.tbl tr:hover {
	cursor: pointer;
	background-color: #ffe1e1;
	font-weight: bold;
	text-decoration: underline;
}

.section1 {
	padding-left: 50px;
	/* border: 1px solid black; */
	font-size: 16px;
	font-family: 'NanumBarunGothic';
	float: left;
	width: 900px;
}

#btnpost {
	background-color: #F1AEAE;
}

#btncomment {
	background-color: white;
}

#tbl2 {
	position: relative;
	top: -351px;
	visibility: hidden;

#tbl3 {
   position: relative;
   top: -701px;
   visibility : hidden;
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

				<div id="maintitle">내가 쓴 글 보기</div>
				<div class="section1">
					<div style="margin-top: 50px; color: #ccc; text-align: right;">
						<span class="glyphicon glyphicon-triangle-bottom"></span> 글 종류를
						선택하세요.
					</div>
					<div style="text-align: right; margin: 19px;">
						<button type="button" class="btn btn-default" id="btnpost">글</button>
						<button type="button" class="btn btn-default" id="btncomment">댓글
							& 후기</button>
						<button type="button" class="btn btn-default" id="btnreport">신고</button>
					</div>


					<div class="box1">
						<table class="tbl" id="tbl1">
							<tr>
								<th>게시판</th>
								<th>글번호</th>
								<th>제목</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
							<tr>
								<td>중고장터</td>
								<td>000001</td>
								<td>1인용 쇼파 팝니다.</td>
								<td>2021-01-31</td>
								<td>1</td>
							</tr>
							<tr>
								<td>방올리기</td>
								<td>000012</td>
								<td>원룸 싸게 내놔요</td>
								<td>2021-01-28</td>
								<td>3</td>
							</tr>
							<tr>
								<td>커뮤니티</td>
								<td>000010</td>
								<td>층간소음 문제 어떡하죠?</td>
								<td>2021-01-20</td>
								<td>2</td>
							</tr>
							<tr>
								<td>중고장터</td>
								<td>000001</td>
								<td>1인용 쇼파 팝니다.</td>
								<td>2021-01-31</td>
								<td>1</td>
							</tr>
							<tr>
								<td>방올리기</td>
								<td>000012</td>
								<td>원룸 싸게 내놔요</td>
								<td>2021-01-28</td>
								<td>3</td>
							</tr>
							<tr>
								<td>커뮤니티</td>
								<td>000010</td>
								<td>층간소음 문제 어떡하죠?</td>
								<td>2021-01-20</td>
								<td>2</td>
							</tr>
							<tr>
								<td>중고장터</td>
								<td>000001</td>
								<td>1인용 쇼파 팝니다.</td>
								<td>2021-01-31</td>
								<td>1</td>
							</tr>
							<tr>
								<td>방올리기</td>
								<td>000012</td>
								<td>원룸 싸게 내놔요</td>
								<td>2021-01-28</td>
								<td>3</td>
							</tr>
							<tr>
								<td>커뮤니티</td>
								<td>000010</td>
								<td>층간소음 문제 어떡하죠?</td>
								<td>2021-01-20</td>
								<td>2</td>
							</tr>
						</table>
					</div>
					<div class="box2">
						<table class="tbl" id="tbl2">
							<tr>
								<th>게시판</th>
								<th>댓글번호</th>
								<th>댓글</th>
								<th>작성일</th>
							</tr>
							<tr>
								<td>중고장터</td>
								<td>000002</td>
								<td>팔렸어요??</td>
								<td>2021-01-31</td>
							</tr>
							<tr>
								<td>방찾기</td>
								<td>000013</td>
								<td>아 중개사 완전 사기꾼이에요!!</td>
								<td>2021-01-28</td>
							</tr>
							<tr>
								<td>커뮤니티</td>
								<td>000011</td>
								<td>그럴 때는 검색을 해보세요</td>
								<td>2021-01-20</td>
							</tr>
							<tr>
								<td>중고장터</td>
								<td>000002</td>
								<td>팔렸어요??</td>
								<td>2021-01-31</td>
							</tr>
							<tr>
								<td>방찾기</td>
								<td>000013</td>
								<td>아 중개사 완전 사기꾼이에요!!</td>
								<td>2021-01-28</td>
							</tr>
							<tr>
								<td>커뮤니티</td>
								<td>000011</td>
								<td>그럴 때는 검색을 해보세요</td>
								<td>2021-01-20</td>
							</tr>
							<tr>
								<td>중고장터</td>
								<td>000002</td>
								<td>팔렸어요??</td>
								<td>2021-01-31</td>
							</tr>
							<tr>
								<td>방찾기</td>
								<td>000013</td>
								<td>아 중개사 완전 사기꾼이에요!!</td>
								<td>2021-01-28</td>
							</tr>
							<tr>
								<td>커뮤니티</td>
								<td>000011</td>
								<td>그럴 때는 검색을 해보세요</td>
								<td>2021-01-20</td>
							</tr>
						</table>

					</div>
					<div class="box3">
						<table class="tbl" id="tbl3">
							<tr>
								<th>게시판</th>
								<th>글번호</th>
								<th>신고사유</th>
								<th>신고일</th>
								<th>처리상태</th>
							</tr>
							<tr>
								<td>중고장터</td>
								<td>000002</td>
								<td>상습 사기꾼이에요</td>
								<td>2021-01-31</td>
								<td>완료</td>
							</tr>
							<tr>
								<td>방찾기</td>
								<td>000013</td>
								<td>아 중개사 완전 사기꾼이에요!!</td>
								<td>2021-01-28</td>
								<td>처리중</td>
							</tr>
							<tr>
								<td>커뮤니티</td>
								<td>000011</td>
								<td>홍보글을 도배합니다.</td>
								<td>2021-01-20</td>
								<td>완료</td>
							</tr>
							<tr>
								<td>중고장터</td>
								<td>000002</td>
								<td>돈 입금 안해요;;</td>
								<td>2021-01-31</td>
								<td>완료</td>
							</tr>
							<tr>
								<td>방찾기</td>
								<td>000013</td>
								<td>허위매물이에요</td>
								<td>2021-01-28</td>
								<td>처리중</td>
							</tr>
							<tr>
								<td>커뮤니티</td>
								<td>000011</td>
								<td>글에 욕설 가득해서 신고요</td>
								<td>2021-01-20</td>
								<td>완료</td>
							</tr>
							<tr>
								<td>중고장터</td>
								<td>000002</td>
								<td>돈만 받고 물건을 안보내요</td>
								<td>2021-01-31</td>
								<td>처리중</td>
							</tr>
							<tr>
								<td>방찾기</td>
								<td>000013</td>
								<td>직접 가봤더니 완전 다른 매물</td>
								<td>2021-01-28</td>
								<td>처리중</td>
							</tr>
							<tr>
								<td>커뮤니티</td>
								<td>000011</td>
								<td>허위정보 유포하네요</td>
								<td>2021-01-20</td>
								<td>완료</td>
							</tr>
						</table>
					</div>

				</div>

			</div>
		</div>


		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	</div>

	<script>
		var btnpost = document.getElementById("btnpost");
		var btncomment = document.getElementById("btncomment");
		var btnreport = document.getElementById("btnreport");

		btnpost.onclick = function() {
			document.getElementById("tbl1").style.visibility = 'visible';
			document.getElementById("tbl2").style.visibility = 'hidden';
			document.getElementById("tbl3").style.visibility = 'hidden';
			btnpost.style.backgroundColor = '#F1AEAE';
			btncomment.style.backgroundColor = 'white';
			btnreport.style.backgroundColor = 'white';
		};

		btncomment.onclick = function() {
			document.getElementById("tbl1").style.visibility = 'hidden';
			document.getElementById("tbl2").style.visibility = 'visible';
			document.getElementById("tbl3").style.visibility = 'hidden';
			btnpost.style.backgroundColor = 'white';
			btncomment.style.backgroundColor = '#F1AEAE';
			btnreport.style.backgroundColor = 'white';
		};

		btnreport.onclick = function() {
			document.getElementById("tbl1").style.visibility = 'hidden';
			document.getElementById("tbl2").style.visibility = 'hidden';
			document.getElementById("tbl3").style.visibility = 'visible';
			btnpost.style.backgroundColor = 'white';
			btncomment.style.backgroundColor = 'white';
			btnreport.style.backgroundColor = '#F1AEAE';
		};
	</script>


</body>
</html>