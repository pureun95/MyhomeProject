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

/* ------------------------------------------- */
@font-face {
	font-family: 'MapoPeacefull';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoPeacefullA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

/*정선동강체 Regular*/
@font-face {
	font-family: 'JSDongkang-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/JSDongkang-RegularA1.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

h1 {
	font-family: 'MapoPeacefull';
	border-left: 5px solid #F1AEAE;
	padding: 0px 10px;
}

.tbl, .tbl th, .tbl td {
	border: 1px solid #CCC;
	border-collapse: collapse;
	font-family: 'JSDongkang-Regular';
}

.list:nth-child(1) { width: 40px; }
.list:nth-child(2) { width: 100px; }
.list:nth-child(3) { width: 150px; }
.list:nth-child(4) { width: 150px; }
.list:nth-child(5) { width: 120px; }
.list:nth-child(6) { width: 180px; }
.list:nth-child(7) { width: 280px; }
.list:nth-child(8) { width: 170px; }

.tbl {
	width: 1190px;
	margin-bottom: 10px;
	margin: 0px auto;
}

.tbl td {
	text-align: center;
	height: 35px;
}

.tbl th {
	background-color: #F1AEAE;
	height: 40px;
}

input, select {
	font-family: 'JSDongkang-Regular';
	outline: none;
}

.btn {
	cursor: pointer;
}

.page, .search {
	text-align: center;
	margin: 20px 0px;
}

.page {
	text-align: left;
	margin: 10px;
}

.pagebar {
	float: left;
	text-align: center;
}

#member {
	margin: 10px;
}

a {
	color:#000000;
	cursor: pointer;
}

.paging_number {
	display: inline-block;
}

.paging_number>li>a {
	position: relative;
	/* float: left; */
	text-decoration: none;
}

/* .pagination > .active > a, .pagination > .active > span, .pagination > .active > a:hover, .pagination > .active > span:hover, .pagination > .active > a:focus, .pagination > .active > span:focus {*/
.paging_number > .active > a {
	color: #F1AEAE;
	font-weight: bold;
}
.paging_number>li>a:hover, ..paging_number>li>span:hover, ..paging_number>li>a:focus, .paging_number>li>span:focus {
	color: #F1AEAE;
}

ul {
	padding: 0;
	margin: 0px 5px;
	margin-bottom: 15px;
	list-style: none;
}

li {
	float: left;
}
</style>
</head>
<body>
	<div class="wrap">

		<!-- header -->
		<%@include file="/WEB-INF/views/inc/header.jsp"%>

		<div class="container">

			<h1>회원관리</h1>

			<div id="member">
				<a id="user"> <span>일반회원</span>
				</a> <span class="bar"> ┃ </span> <a id="contractor"> <span>중개인</span>
				</a>
			</div>

			<table id="tbl1" class="tbl">
				<tr>
					<th class="list"><input type="checkbox" name="allcheck"></th>
					<th class="list">회원번호</th>
					<th class="list">아이디</th>
					<th class="list">이름</th>
					<th class="list">생년월일</th>
					<th class="list">전화번호</th>
					<th class="list">주소</th>
					<th class="list">신고횟수(신고사항)</th>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0001</td>
					<td>아이디</td>
					<td>홍길동</td>
					<td>111111</td>
					<td>010-1234-5678</td>
					<td>서울시 강남구 역삼동</td>
					<td>1회(허위매물)</td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0002</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0003</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0004</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0005</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0006</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0007</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0008</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0009</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0010</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

			</table>

			<!-- 			<table id="tbl2" class="tbl">
				<tr>
					<th class="list"><input type="checkbox" name="allcheck"></th>
					<th class="list">회원번호</th>
					<th class="list">아이디</th>
					<th class="list">이름</th>
					<th class="list">생년월일</th>
					<th class="list">공인중개소명</th>
					<th class="list">사업자등록번호</th>
					<th class="list">전화번호</th>
					<th class="list">주소</th>
					<th class="list">신고횟수(신고사항)</th>
				</tr>
				<tr>
					<td><input type="checkbox"></td>
					<td>0001</td>
					<td>아이디</td>
					<td>홍길동</td>
					<td>111111</td>
					<td>햇살공인중개사</td>
					<td>사업자등록번호</td>
					<td>010-1234-5678</td>
					<td>서울시 강남구 역삼동</td>
					<td>1회(허위매물)</td>
				</tr>	
				<tr>
					<td><input type="checkbox"></td>
					<td>0002</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>			
			</table> -->

			<span class="page"> <input type="button" class="btn"
				id="delete" value="선택한 회원 삭제"
				onclick="location.href='/jsp/project/communitywrite.jsp';">
			</span>

			<nav class="pagebar">
				<ul class="paging_number">
					<li><a href="#" aria-label="Previous"> <span
							aria-hidden="true">◀</span>
					</a></li>
					<li class="active"><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">▶</span>
					</a></li>
				</ul>
			</nav>



			<div class="search">
				<input type="text" placeholder="회원번호 / 아이디 / 이름" style="size: 10px;">
				<input type="submit" class="btn" value="검색">
			</div>


		</div>



	</div>

	<%-- 	<!-- footer -->
	<%@include file="/WEB-INF/views/inc/footer.jsp"%> --%>

	</div>
</body>
</html>