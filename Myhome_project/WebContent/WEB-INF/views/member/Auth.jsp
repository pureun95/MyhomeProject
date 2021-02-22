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

<style>
	<
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
	
	
	#auth {
		margin-left:350px;
		margin-top:300px;
	}
	
	.id_area, .pw_area {
		width: 400px;
		height: 29px;
		margin-bottom: 10px;
	}
	
	.login_button {
		margin-top: 10px;
		margin-left: 170px;
		margin-bottom: 10px;
	}
	
	.search {
		margin-left: 100px;
	}
	
	
</style>
</head>
<body>
	<div class="wrap">

		<!-- header -->
		<%@include file="/WEB-INF/views/inc/header.jsp"%>

		 <div class="container">
		 	<div id="auth">
				<form class="login_form" method="post" action="/Myhome_project/member/login.do">
					<input type="text" id="id" name="id" class="id_area" placeholder="아이디" required> 
					<br>
					<input type="text" id="pw" name="password" class="pw_area" placeholder="비밀번호" required> 
					<br> 
					<input type="submit" class="login_button" value="로그인">
					<br>
					<div class="search">
						<a href="/jsp/web/search_id.jsp">아이디 찾기</a>
						<span>|</span>              
						<a href="/jsp/web/search_pw.jsp">비밀번호 찾기</a>
					</div>
					<!-- 테스트용 -->
					<button type="button" onclick="test('ccu7678','ccu7678nt');">이제위</button>
				</form>
			</div>
		</div>
		
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>

	</div>
		<script>
    
		function test(id, pw) {
			$("#id").val(id);
			$("#pw").val(pw);
			$("#login_form").submit();//에뮬레이터 함수
		}
	
    </script>
</body>
</html>