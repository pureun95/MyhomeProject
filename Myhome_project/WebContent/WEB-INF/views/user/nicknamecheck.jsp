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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>

<style>
#container {
	margin: 30px;
	width: 500px;
	height: 300px;
}

#box1 {
	
	margin: 30px 0px;
}
#check {
	width: 100px;
}

</style>
</head>
<body>
	<form method="POST" action="/Myhome_project/user/mypageinfo.do"></form>
	<div id="container">
		<div id="box1">
			<input type="text" value="" id="nicktxt" onchange="check_nick()"> 
			<button type="submit" id="btn-use" class="btn btn-primary">사용하기</button>
			<span id="check"></span>
		</div>
	</div>
	<script>
		function check_nick() {
			var nicktxt = document.getElementById('nicktxt').value;

			if (document.getElementById('nicktxt').value != '') {
				document.getElementById('check').innerHTML = '사용 가능한 닉네임입니다.'
				document.getElementById('check').style.color = 'blue';
			} else {
				document.getElementById('check').innerHTML = '중복된 닉네임 입니다.';
				document.getElementById('check').style.color = 'red';
			}
		}
		
		var btn = document.getElementById('btn-use');
		
		btn.onclick = function () {
			window.close();
		};
		
		
	</script>
	
</body>

</html>