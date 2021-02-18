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

#header {
	background-color: white;
}

#header:hover {
	background-color: white;
}


</style>
</head>
<body>
		<div class="header-containerwrap">
			<!-- header -->
			<%@include file="/WEB-INF/views/inc/header.jsp"%>

			<div class="container">
			중개인회원가입<br>
				<form class="register_form" method="post" action="/Myhome_project/member/RegisterContractorOk.do">
					<input type="text" id="id" name="id" placeholder="아이디" required>
					<br>
					<input type="text" id="pw" name="pw" placeholder="비밀번호" required>
					<br>
					<input type="text" id="cpw" name="cpw" placeholder="비밀번호 확인" required>
					<br>			
					<input type="text" id="name" name="name" placeholder="이름" required>
					<br>
					<input type="text" id="idnumber" name="idnumber" placeholder="주민번호" required>
					<br>
					<input type="text" id="nickname" name="nickname" placeholder="닉네임" required>
					<br>
					<input type="text" id="email" name="email" placeholder="이메일" required>
					<br>
					<input type="text" id="tel" name="tel" placeholder="전화번호" required>
					<br>
					<input type="text" id="companyname" name="companyname" placeholder="사업체명" required>
					<br>
					<input type="text" id="companynumber" name="companynumber" placeholder="사업자번호" required>
					<br>
					<input type="text" id="address" name="address" placeholder="주소" required>
					<br>
					<input type="submit" value="회원가입">
				</form>
			</div>
		</div>


		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>

</body>
</html>