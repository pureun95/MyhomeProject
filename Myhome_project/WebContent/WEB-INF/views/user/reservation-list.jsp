<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::내예약목록</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<!-- <link rel="stylesheet" href="/Myhome_project/css/boarduserver.css"> -->


<!-- 부트스트랩 사용가능한 템플릿 -->

<style>
	
	.boardwrap{
	    height: auto;
	    min-height: 100%;
	    font-size: 16px;
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
#tbl1{
	width: 860px;
	text-align: center;
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

tr td:nth-last-child(1) {
	color: #a5a5a5
}

#tbl1 tr:hover {
	cursor: pointer;
	background-color: #ffe1e1;
	font-weight: bold;
}

#explain {
	color: #aaa;
	text-align: right;
	margin-bottom: 24px;
}

</style>


</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp" %>
 
     <div class="container">
		<!-- nav -->
		<%@include file="/WEB-INF/views/user/nav.jsp"%>

		<div id="section1">

			<div id="title">내 예약 목록</div>
			<div class="box" id="box1">

				<div id="explain">작성하기 버튼을 누르면 후기작성 페이지로 이동합니다.</div>

				<table class="tbl" id="tbl1">
					<tr>
						<th>선택</th>
						<th>예약번호</th>
						<th>업체</th>
						<th>예약일</th>
						<th>예약상태</th>
						<th>가격</th>
						<th>후기작성</th>
					</tr>
					<tr>
						<td><input type="checkbox" name="" value=""></td>
						<td>00021</td>
						<td>영구24</td>
						<td>2020.02.18</td>
						<td>확정</td>
						<td>80,000원</td>
						<td><button type="button" class="btn btn-default" id="btn-pro">작성하기</button>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="" value=""></td>
						<td>00009</td>
						<td>영구크린</td>
						<td>2020.02.18</td>
						<td>확정</td>
						<td>80,000원</td>
						<td>
							<button type="button" class="btn btn-default" id="btn-pro">작성하기</button>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="" value=""></td>
						<td>00007</td>
						<td>조아24</td>
						<td>2020.02.18</td>
						<td>확정</td>
						<td>80,000원</td>
						<td>후기작성 완료</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="" value=""></td>
						<td>00002</td>
						<td>경규이삿짐센터</td>
						<td>2020.02.18</td>
						<td>확정</td>
						<td>80,000원</td>
						<td>후기작성 기간 경과</td>
					</tr>
					
				</table>
				<div style="clear: both;"></div>
			</div>

		</div>
       
    </div>


</div> 
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>