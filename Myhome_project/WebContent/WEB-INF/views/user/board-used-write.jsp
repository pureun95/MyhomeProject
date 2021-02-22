<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Myhome::중고장터</title>

<%-- <%@include file="/WEB-INF/views/inc/asset.jsp" %> --%>

<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/board.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
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

.section2 {
	font-family: 'MaplestoryOTFLight';
	display: inline;
	position: relative;
	left: 200px;
	top: 100px;
	float: left;
}

#title {
	border-bottom: 1px dashed #ccc;
	font-size: 24px;
	margin-bottom: 30px;
	width: 200px;
}

#tbl1 {
	font-size: 16px;
	color: #202020;
}

#tbl1 td {
	height: 50px;
}

.section3 {
	margin-top: 30px;
	text-align: center;
	/* border: 1px solid black; */
}

.header {
	background-color: white;
}

#navboardtbl {
	height: 800px;
	width: 100%;
	margin: 0px;
}

/*기존 200xp 삭제만 300px*/
#navboardtbl .navboardtd:first-child {
	width: 300px;
}

.navboardtd {
	vertical-align: top;
}

/*타이틀 태그 */

/*타이틀 태그 */
#boardtitle {
	font-size: 24px;
	margin: 30px 10px;
	padding: 0px 10px;
	color: black;
	font-family: 'MaplestoryOTFLight';
	border-left: 5px solid #F1AEAE;
}

#board {
	margin-left: 0px;
}

.boardtext {
	margin-top: 10px;
	margin-buttom: 100px;
}

.boardfile>input {
	background-color: #f1aeae;
	width: 400px;
	height: 40px;
	margin-left: 20px;
	text-align: center;
	color: white;
	outline: none;
	border: 0;
}

/*버트 새로 고침 */
.boardbutton {
	width: 940px;
	padding-right: 120px;
	float: right;
	text-align: right;
	margin-top: -50px;
}

.boardbutton:after {
	content: "";
	display: block;
	clear: both;
}

.boardbutton button {
	display: inline-block;
	outline: none;
	border: 0px solid #000;
	background-color: #f1aeae;
	color: white;
	width: 70px;
	height: 34px;
	margin-right: 5px;
	margin-bottom: 10px;
	border-radius: 3px;
	z-index: 99;
}

/* 댓글 css 입니다. */
.MyhomeCommentRow {
	width: 940px;
}

.commentinfo {
	width: 700px;
	border-bottom: 1px solid #f1aeae;
}

.commentinfo>textarea {
	outline: none;
	border: 0px;
	width: 520px;
	font-size: 12px;
	overflow: visible;
	resize: none;
}

.subinfo {
	float: right;
	margin-right: 10px;
	font-size: 11px;
	text-align: center;
}

.subinfo>::after {
	content: "";
	display: block;
	clear: both;
}

.subinfo>button {
	border: 0;
	background-color: #f1aeae;
	color: white;
	width: 70px;
	border-radius: 3px;
}

#commentname {
	vertical-align: top;
	width: 80px;
	text-align: center;
	border: 0;
	outline: none;
	font-family: 'MaplestoryOTFLight';
}

/*  테이블 크기 조절*/
#usedtitle{
	width:550px;
	outline: none;
    border: 0px solid #000;
}
#selcate, #selusedcate, #price{
	width:150px;
    outline: none;
    border: 0px solid #000;
}
</style>
</head>
<body>
	<div class="wrap">

		<!-- header -->
		<%@include file="/WEB-INF/views/user/bootstrap-header.jsp"%>

		<div class="container">

			<!-- <form action="" id="form1"> -->

				<table id="navboardtbl">

					<tr id="navboardtr">
						<td class="navboardtd">
							<!-- nav --> <%@include file="/WEB-INF/views/user/nav.jsp"%>

						</td>

						<!-- 상세 보기 입니다.-->

						<td class="navboardtd">
							<div id="boardtitle" class="">중고장터</div>

							<div class="boardcover">
								<table id="board"
									class="table table-hover table-striped table-condensed">
									<!--  ?는 데이터 직접 넣기  -->
									<tr class="headtr">
										<th class=" boardtd">제목</th>
										<td class=" boardtd" colspan="3">
										<input type="text" placeholder="제목을 입력해주세요" id="usedtitle">
										</td>
									</tr>
									<tr class="headtr">
										<th class="boardtd">판매자</th>
										<td class="boardtd"> 이름</td>
										<th class="boardtd">거래방법</th>
										<td class="boardtd">
										<select name="selcate" id="selcate">
												<option value="dil">택배</option>
												<option value="meet">직거래</option>
										</select>
										</td>
									</tr>
									<tr class="headtr">
										<th class=" boardtd">카테고리</th>
										<td class="boardtd">
										<select name="selcate"
											id="selusedcate">
												<option value="furniture">가구</option>
												<option value="beauty">뷰티</option>
												<option value="shoes">신발</option>
												<option value="cloth">의류</option>
												<option value="digit">디지털/가전</option>
												<option value="daily">생활용품</option>
												<option value="sport">스포츠</option>
												<option value="food">식품</option>
												<option value="book">도서</option>
												<option value="endso">기타</option>
										</select>
										</td>
										<th class=" boardtd">금액</th>
										<td class=" boardtd">
											<input type="number" step="100" name="price"
											id="price">원
										</td>
									</tr>

									<tr class="boardtr">
										<td class=" boardtd" colspan="4"><textarea
												class="form-control col-sm-5 boardtext"
												placeholder="여기에 게시글을 작성해주세요" rows="15" disabled>여기글들!!</textarea>
										</td>

									</tr>


								</table>
							</div> <!-- 버튼 -->
							<div class="boardbutton">
							<button type="submit" id="usedlist" onclick="history.back();">등록하기</button>
								<!-- <button id="usedlist"
									onclick="history.back();">
									목록보기</button>
								<button id="likebtn"
									onclick="alert('찜목록 추가 완료')">
									찜하기</button> -->
								<!-- <button id="communitydel"
									onclick="location.href='/Myhome-project/admin2/community/delete.do';">
									삭제</button> -->
								<!-- <button id="checkerr"
									onclick="location.href='/Myhome-project/admin2/community/check.do';">
									검열</button> -->

							</div> <!--  댓글  -->

							<!-- <div class="myhomecomment">
								여기 행을 움직이자
								<div class="MyhomeCommentRow">
									<div class="commentinfo">
										<input type="text" id="commentname" value="닉네임하하">
										<textarea name="" id="" cols="40" rows="2">까지등록할수할수까몇글자까지등록할수까몇글자까지록할수까몇글자까지록할수까몇글자까지록할수까몇글자까지등까지등록</textarea>
										<div class="subinfo">
											<span class="commentdate">2020-12-12</span>
											<button>삭제</button>
										</div>

									</div>

								</div>
							</div> --> <!-- 첨부파일  
							<div class="boardfile">
							  <input type="file" class="form-control " id="inputGroupFile02" disabled>
							  <label class="" for="inputGroupFile02"></label>
							</div>
						--> <!-- 버튼 --> <!-- 지금은 삭제? 아니면 안보이게? -->




						</td>
					</tr>
				</table>
			<!-- </form> -->



		</div>

	</div>

	<!-- footer -->
	<%@include file="/WEB-INF/views/inc/footer.jsp"%>


	<script>
		
	</script>



</body>
</html>