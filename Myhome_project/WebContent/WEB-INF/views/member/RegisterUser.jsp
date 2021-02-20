<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


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
			
		<script>
 			var midArray = [];
			<c:forEach var="middle" items="${middle}">
			   midArray.push({"seq":"${middle.seq}", "mLocation":"${middle.mLocation}", "location":"${middle.location}"});
			</c:forEach>
			
			var endArray = [];
			<c:forEach var="end" items="${end}">
				endArray.push({"seq":"${end.seq}", "mLocation":"${end.mLocation}", "location":"${end.location}"});
			</c:forEach> 
			
			
			$(function() {
			   $("#frontsel").change(function(e) {
			      var frontsel = $(this).val();
			      midCreate(frontsel);
			   });
			   midCreate($("#frontsel").val());
			});
			
			function midCreate(frontsel) {
				$("#middlesel").children().remove();
				var html = "";
				$(midArray).each(function(i, elem) {
					//console.log(frontsel + " == " + elem.mseq);
					if(frontsel == elem.mLocation) {
				         html += "<option value='" + elem.location + "'>" + elem.location + "</option>";
				      }
					});
				$("#middlesel").html(html);
				endCreate($("#middlesel").val());
			}
			
			$(function() {
				$("#middlesel").change(function(e) {
					var middlesel = $(this).val();
					endCreate(middlesel);
				});
				endCreate($("#middlesel").val());
			});
				
			function endCreate(middlesel) {
				$("#endsel").children().remove();
				var html = "";
				$(endArray).each(function(i, elem) {
					if(middlesel == elem.mLocation) {
						html += "<option value='" + elem.location + "'>" + elem.location + "</option>";
					}
				});
				$("#endsel").html(html);
			} 
			
		</script>

			<div class="container">
			유저회원가입<br>
				<form class="register_form" method="post" action="/Myhome_project/member/RegisterUserOk.do">
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
					<input type="text" id="address" name="address" placeholder="주소" required>
					<br><hr>
					선호하는 지역(시)<br>
					<select id="frontsel" name="frontsel">
	 					<c:forEach var="front" items="${front }" varStatus="status">
							<option value="${front.location }">${front.location }</option>
						</c:forEach> 
					</select>
					<br>
					선호하는 지역(구)<br>
					<select id="middlesel" name="middlesel">
					</select>
					<br>
					선호하는 지역(동)<br>
					<select id="endsel" name="endsel">
					</select>
					<br>
					선호하는 방<br>
					<input type="radio" name="roomtype" value="1"><label for="one">원룸</label><!-- 원룸 -->
					<input type="radio" name="roomtype" value="2"><label for="two">투룸</label>	<!-- 투룸 -->
					<input type="radio" name="roomtype" value="3"><label for="three">오피스텔</label>  <!-- 오피스텔 -->
					<br>
					알람<br>
					<input type="radio" name="alarm" value="0"><label for="on">on</label>
					<input type="radio" name="alarm" value="1"><label for="off">off</label>
					<br>
					<input type="submit" value="가입">
					
				</form>
			</div>
		</div>


		<!-- footer -->
		<%@include file="/WEB-INF/views/inc/footer.jsp"%>
		
		<script>
		
		$("#frontsel").change(function() {
			console.log($("#frontsel option:selected").val());
		});
		</script>
		

</body>
</html>