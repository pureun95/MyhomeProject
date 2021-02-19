<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome</title>

<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/board.css">
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


.boardcover{
/* 	border: 1px solid tomato; */
	float: left;
	width:900px;
	height: auto;
	margin-left: 20px; 
}

#title {
	font-size: 24px;
	font-family: 'MaplestoryOTFLight';
	border-left: 5px solid #F1AEAE;
	margin: 30px 10px;
	padding : 0px 10px;
}

#tbl1, #tbl2{
	width:940px;
}

.table {
	position: absolute;
	left: 215px;
	top: 140px;
}

.delete, .search, .pagebar {
	position: relative;
	top: 390px;
}

input[type=submit], input[type=buttom]{
	border: none;
}

#tbl1 th, #tbl1 td, #tbl2 th, #tbl2 td {
	font-family: 'NanumBarunGothic';
	text-align: center;
}
#tbl1 th, #tbl2 td{
	font-size: 13px;
}


.mlist:nth-child(1) { width: 40px; }
.mlist:nth-child(2) { width: 80px; }
.mlist:nth-child(3) { width: 100px; }
.mlist:nth-child(4) { width: 90px; }
.mlist:nth-child(5) { width: 100px; }
.mlist:nth-child(6) { width: 140px; }
.mlist:nth-child(7) { width: 230px; }
.mlist:nth-child(8) { width: 160px; }

.clist:nth-child(1) { width: 40px; }
.clist:nth-child(2) { width: 60px; }
.clist:nth-child(3) { width: 60px; }
.clist:nth-child(4) { width: 60px; }
.clist:nth-child(5) { width: 80px; }
.clist:nth-child(6) { width: 100px; }
.clist:nth-child(7) { width: 110px; }
.clist:nth-child(8) { width: 120px; }
.clist:nth-child(9) { width: 190px; }
.clist:nth-child(10) { width: 130px; }




input, select {
	font-family: 'JSDongkang-Regular';
	outline: none;
}

.page, .search {
	text-align: center;
	margin: 10px 0px;
}

.page {
	text-align: left;
	margin: 10px;
}

.pagebar {
	float: left;
	text-align: center;
}

.page input, .pagebar{
	margin-top : 30px;
	text-align : center;
}

#member {
	margin: 10px;
	
}

#member input{
	border: none;
	background-color: transparent;

}

#member #user{
	font-size: 1.3em;
	font-weight: bold;
	color : #F1AEAE;
}

#member input:hover{
	color: #F1AEAE;
	text-decoration : none;
}


/* a {
	color:#202020;
	cursor: pointer;
} */

.paging_number {
	display: inline-block;
}

.paging_number>li>a, #member > a {
	position: relative;
	/* float: left; */
	text-decoration: none;
}


.paging_number > .active > a, .paging_number > .active > a:hover, #member > .active{
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

    
    .btn {
    	cursor: pointer;

    	margin-bottom: 20px;
    	margin-right : 10px;
    	padding : 6px 12px;
    	background-color: #F1AEAE;
    	border-radius: 4px;
    	/* outline: none; */
    	border : none;
    	color: aliceblue;
	
    }

    
    #tbl2 {
	visibility : hidden;
}





</style>
</head>
<body>
	<div class="boardwrap">

		<!-- header -->
		<%@include file="/WEB-INF/views/admin/header.jsp"%>

		<div class="container">
		<%@include file="/WEB-INF/views/admin/nav.jsp" %>
        <div class="boardcover">

			<div id="title">회원 정보 관리</div>

			<div id="member">
				<input type="button" id="user" value="일반회원" >
				<span class="bar"> ┃ </span> 
				<input type="button" id="contractor" value="중개인">
			</div>
			
				<table id="tbl1" class="table table-hover table-striped table-condensed">
    
                <tr class="headtr">
                	<th class="mlist">선택</th>
                    <th class="mlist">회원번호</th>
                    <th class="mlist">아이디</th>
                    <th class="mlist">이름</th>
                    <th class="mlist">생년월일</th>
                    <th class="mlist">전화번호</th>
                    <th class="mlist">주소</th>
                    <th class="mlist">신고횟수(신고사항)</th>
                </tr>
                
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0001</td>
                    <td class="mlist">아이디</td>
                    <td class="mlist">홍길동</td>
                    <td class="mlist">111111</td>
                    <td class="mlist">010-1234-5678</td>
                    <td class="mlist">서울시 강남구 역삼동</td>
                    <td class="mlist">1회(허위매물)</td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0002</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0003</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0004</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0005</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0006</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0007</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0008</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0009</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                <tr class="boardtr">
                	<td class="mlist"><input type="checkbox" name="seq" id="seq"></td>
                    <td class="mlist">0010</td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                    <td class="mlist"></td>
                </tr>
                
                
            </table>

			<table id="tbl2" class="table table-hover table-striped table-condensed">
				<tr>
					<th class="clist">선택</th>
					<th class="clist">회원번호</th>
					<th class="clist">아이디</th>
					<th class="clist">이름</th>
					<th class="clist">생년월일</th>
					<th class="clist">공인중개소명</th>
					<th class="clist">사업자등록번호</th>
					<th class="clist">전화번호</th>
					<th class="clist">주소</th>
					<th class="clist">신고횟수(신고사항)</th>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0001</td>
					<td class="clist">아이디</td>
					<td class="clist">홍길동</td>
					<td class="clist">111111</td>
					<td class="clist">햇살공인중개사</td>
					<td class="clist">사업자등록번호</td>
					<td class="clist">010-1234-5678</td>
					<td class="clist">서울시 강남구 역삼동</td>
					<td class="clist">1회(허위매물)</td>
				</tr>	
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0002</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>	
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0003</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0004</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0005</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0006</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0007</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0008</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0009</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>
				<tr>
					<td class="clist"><input type="checkbox"></td>
					<td class="clist">0010</td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
					<td class="clist"></td>
				</tr>		
			</table>

<!-- 충돌난 부분
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

			<span> 
			<input type="button" class="btn" value="선택한 회원 삭제" onclick="location.href='/jsp/project/communitywrite.jsp';">
			</span>
--!>

			<div class="delete"> 
			<input type="button" class="btn" value="선택한 회원 삭제" onclick="location.href='/jsp/project/communitywrite.jsp';">
			</div>
			
			<div class="search">
				<input type="text" placeholder="회원번호 / 아이디 / 이름" style="size: 10px;">
				<input type="submit" class="btn" value="검색">
			</div>


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


		</div>

	</div>

	</div>

	</div>
	<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	
	<script>

    

<!-- 충돌난 부분
		var user = document.getElementById("user");
		var contractor = document.getElementById("contractor");
		
		user.onclick = function() {
			document.getElementById("tbl1").style.visibility = 'visible';
			document.getElementById("tbl2").style.visibility = 'hidden';
			user.style.color = '#F1AEAE';
			user.style.fontWeight = 'bold';
			user.style.fontSize = '1.3em';
			contractor.style.color = '#202020';
			contractor.style.fontWeight = 'normal';
			contractor.style.fontSize = '1em';
		};
		

	
		contractor.onclick = function() {
			document.getElementById("tbl1").style.visibility = 'hidden';
			document.getElementById("tbl2").style.visibility = 'visible';
			user.style.color = '#202020';
			user.style.fontWeight = 'normal';
			user.style.fontSize = '1em';
			contractor.style.color = '#F1AEAE';
			contractor.style.fontWeight = 'bold';
			contractor.style.fontSize = '1.3em';
		};
		
		
	
--!>
	
	</script>


</body>
</html>