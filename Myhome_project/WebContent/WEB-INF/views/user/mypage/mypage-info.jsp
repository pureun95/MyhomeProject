<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지 > 회원 정보 수정</title>

<%-- <%@include file="/WEB-INF/views/inc/asset.jsp" %> --%>

<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>

<style>
<
style>body, html {
	height: 100%;
	margin: 0 auto;
	padding: 0;
}

.container {
	width: 1190px;
	margin: 0px auto;
	margin-top: 100px;
	position: relative;
	height: 1000px;
	font-family: 'MaplestoryOTFLight';
	color: #333;
	margin-left: 500px;
	border: 0px;
}

.section1 {
	text-align: center;
	margin: 50px;
	margin-top: 50px;
	height: 800px;
}

.container .section2 {
	font-size: 18px;
	border: 2px solid #ffd3d3;
	border-radius: 5px;
	width: 730px;
	height: 600px;
	margin-left: 100px;
	padding: 50px 0px;
	float: left;
	
}

.teltxt {
	width: 66px;
}

.idnumber {
	width: 103px;
}

#tbl1 {
	/* border: 1px solid black; */
	text-align: left;
	height: 300px;
	margin: auto;
}

#pwcheck {
	color: tomato;
	visibility: hidden;
}

#title {
	margin-bottom: 50px;
	font-size: 30px;
}


</style>
</head>
<body>
	<div class="wrap">

		<!-- header -->
		<%@include file="/WEB-INF/views/inc/header.jsp"%>



		<div class="container">
			<form method="GET" action="/Myhome_project/user/mypage.do">
				<div class="section1">

					<!-- nav -->
					<%@include file="/WEB-INF/views/user/nav.jsp"%>

					<div class="section2">
						<div id="title">회원 정보 수정</div>
						<table id="tbl1">
							<tr>
								<td><label>아이디 : </label></td>
								<td><input type="text" id="id" name="id" readonly></td>
								<td><label for="address">주소 : </label></td>
								<td><input type="text" id="address" name="address"></td>
							</tr>
							<tr>
								<td><label for="nickname">닉네임 : </label></td>
								<td><input type="text" id="nickname" name="nickname">
								<button type="button" class="btn btn-default">중복검사</button></td>
								<td><label for="tel1">전화번호 : </label></td>
								<td><input type="text" id="tel1" name="tel1" class="teltxt"
									maxlength="3">-<input type="text" id="tel2" name="tel2"
									class="teltxt" maxlength="4">-<input type="text"
									id="tel3" name="tel3" class="teltxt" maxlength="4"></td>
							</tr>
							<tr>
								<td><label for="name">이름 : </label></td>
								<td><input type="text" id="name" name="name"></td>
								<td><label for="email">이메일 : </label></td>
								<td><input type="text" id="email" name="email"></td>
							</tr>
							<tr>
								<td><label for="idnumber1">주민번호 : </label></td>
								<td><input type="text" maxlength="6" id="idnumber1"
									name="idnumber1" class="idnumber">-<input
									type="password" maxlength="7" id="idnumber2" name="idnumber2"
									class="idnumber" readonly></td>
								<td><label for="roomtype">관심매물 : </label></td>
								<td><select name="roomtype">
										<option value="" selected>--종류 선택--</option>
										<option value="원룸">원룸</option>
										<option value="투룸">투룸</option>
										<option value="오피스텔">오피스텔</option>
								</select></td>
							</tr>
							<tr>
								<td><label for="password1">비밀번호 : </label></td>
								<td><input type="password" id="password1" name="password1"
									onchange="check_pw()"></td>
								<td><label for="location">관심지역 : </label></td>
								<td><input type="text" id="location" name="location"></td>
							</tr>
							<tr>
								<td><label for="password2">비밀번호 확인 : </label></td>
								<td colspan="2"><input type="password" id="password2"
									name="password2" onchange="check_pw()"> <span
									id="check"></span></td>
								<td></td>
						</table>
						<button type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-chevron-left"></span> 뒤로가기
						</button>
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-check"></span> 수정하기
						</button>
						<button type="button" class="btn btn-danger" id="removeuser">
							<span class="glyphicon glyphicon-remove"></span> 회원탈퇴
						</button>
					</div>
				</div>
			</form>
		</div>


		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>

	</div>

	<script>
        function check_pw(){
            var password1 = document.getElementById('password1').value;
            var password2 = document.getElementById('password2').value;
 
            if(document.getElementById('password1').value !='' && document.getElementById('password2').value!=''){
                if(document.getElementById('password1').value==document.getElementById('password2').value){
                    document.getElementById('check').innerHTML='비밀번호 일치'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호 불일치';
                    document.getElementById('check').style.color='red';
                }
            }
        }
    </script>



</body>
</html>