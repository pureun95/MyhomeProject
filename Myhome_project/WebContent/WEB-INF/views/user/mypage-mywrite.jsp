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
}
.tbl th {
	text-align: center;
	background-color: #e2e2e2;
}

.tbl tr{
	border: 1px solid black;
}

.tbl tr:hover {
	cursor: pointer;
	background-color: #ffe1e1;
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
	background-color: cornflowerblue; 
}

#btncomment {
	background-color: white;
}

.tbl {
	position: absolute;
	left: 266px;
	top: 147px;
}

#tbl2 {
	visibility : hidden;
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
				
				<div class="section1">
					<div style="margin-top: 50px; color: gray; text-align: right;"><span class="glyphicon glyphicon-triangle-bottom"></span>   글 종류를 선택하세요.</div>
					<div style="text-align: right; margin: 20px;">
						<button type="button" class="btn btn-default" id="btnpost">글</button>
						<button type="button" class="btn btn-default" id="btncomment">댓글 & 후기</button>
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
				
										
				</div>
				
			</div>
		</div>


		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
	</div>
	
	<script>
		
		var btnpost = document.getElementById("btnpost");
		var btncomment = document.getElementById("btncomment");
		
		btnpost.onclick = function() {
			document.getElementById("tbl1").style.visibility = 'visible';
			document.getElementById("tbl2").style.visibility = 'hidden';
			btnpost.style.backgroundColor = 'cornflowerblue';
			btncomment.style.backgroundColor = 'white';
		};

		btncomment.onclick = function() {
			document.getElementById("tbl1").style.visibility = 'hidden';
			document.getElementById("tbl2").style.visibility = 'visible';
			btnpost.style.backgroundColor = 'white';
			btncomment.style.backgroundColor = 'cornflowerblue';
		};
	
	
	</script>
	
	
</body>
</html>