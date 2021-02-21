<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::전자계약</title>

<%-- <%@include file="/WEB-INF/views/inc/asset.jsp" %> --%>

<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="/Myhome_project/css/board.css"">
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

#navboardtbl .navboardtd:first-child {
	width: 200px;
}

.navboardtd {
	vertical-align: top;
}

/* 타이틀 수정 */
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

/* 검색, 페이지바 */
.search-paging {
	width: 800px;
	height: 200px;
	padding: 20px 0px;
}

.paging {
	width: 100%;
	height: 75px;
	padding: 0px 170px;
}

.pagination>li>.page-a {
	color: #202020;
}

.pagination>.active>a, .pagination>li>a:hover {
	background-color: #f1aeae;
	color: white !important;
}

.btn {
	background-color: #f1aeae;
	color: white;
	outline: none;
	font-family: 'NanumBarunGothic';
}

#search-box {
	/* border: 1px solid black; */
	width: 390px;
	height: 60px;
	margin: 10px 200px;
	padding: 10px;
}

#search-text {
	width: 300px;
	outline: 0;
	display: inline;
	margin-right: 10px;
}

	
	/*버트 새로 고침 */
	
	.boardbutton{
		width:940px;
		padding-right:120px;
	}
	.boardbutton button{
	
		float:right;
		display:inline-block;	
        outline: none;
        border: 0px solid #000;
        background-color: #f1aeae;
        color: white;
        width: 110px;
        height: 34px;
        margin-right:5px;
        margin-bottom:10px;
        border-radius: 3px;
	}

    .boardbutton button:after{
        content: "";
        display: block;
        clear: both;
	}
</style>
</head>
<body>
	<div class="wrap">

		<!-- header -->
		<%@include file="/WEB-INF/views/admin/header.jsp"%>

		<div class="container">

			<form action="" id="form1">

				<table id="navboardtbl">

					<tr id="navboardtr">
						<td class="navboardtd">
							<!-- nav --> <%@include file="/WEB-INF/views/admin/nav.jsp"%>

						</td>

						<!---->

						<td class="navboardtd">
							<div id="boardtitle" class="">전자계약게시판</div>

							<div class="boardcover">

								<table id="board"
									class="table table-hover table-striped table-condensed">

									<tr class="headtr">
										<!--<th class="firtd boardtd">계약번호</th>-->
										<!--<th class="sectd boardtd"></th>-->
										<!--<th class="thitd boardtd"></th>-->
										<th class="fiftd boardtd">계약번호</th>
										<th class="fortd boardtd">임차인</th>
										<th class="fortd boardtd">임대인</th>
										<th class="fortd boardtd">중개인</th>
										<th class="thitd boardtd">주소</th>
										<th class="fiftd boardtd">작성일</th>
										<th class="fiftd boardtd">계약상태</th>
										<th class="sixtd boardtd">암호</th>
									</tr>
									<!--  암호 입력에 대한 재발 송은 임대인 중개인이, 임차인의 암호가 단 한개라도 null 이면 입력 상태 재발송 안내 문구 -->
						
									<tr class="boardtr">
										<td class="fiftd boardtd">
										<a href="/Myhome_project/admin2/contract/view.do;"> 
											0000001
										</a>
										</td>
										<td class="thitd boardtd">아마홍길동</td>
										<td class="thitd boardtd">아마임대인</td>
										<td class="fortd boardtd">
											<div class="Boardtdtitle">아마홍길동</div>
										</td>
										<td class="fiftd boardtd">
											<div class="Boardtdtitle">
											주소 입니다. 블라 불르하하하핳하하ㅏㅎ하ㅏ하
											</div>
										</td>
										<td class="fortd boardtd">작성일</td>
										<td class="fiftd boardtd">계약상태</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>
									

								</table>
							</div>
						
						<div class="boardbutton">
							<button id="passwordupdate">
							암호재등록</button>
							<button id="statechange">
							상태변경</button>
						<!--  <button> 1234</button>-->	
						</div>
						
							
							<!-- 검색, 페이지바 -->
							<div class="search-paging">
								<div class="paging">
									<ul class="pagination">
										<li class="page-item"><a class="page-link page-a" href="">이전</a></li>
										<li class="page-item"><a class="page-link page-a" href="">1</a></li>
										<li class="page-item"><a class="page-link page-a" href="">2</a></li>
										<li class="page-item"><a class="page-link page-a" href="">3</a></li>
										<li class="page-item"><a class="page-link page-a" href="">4</a></li>
										<li class="page-item"><a class="page-link page-a" href="">5</a></li>
										<li class="page-item"><a class="page-link page-a" href="">6</a></li>
										<li class="page-item"><a class="page-link page-a" href="">7</a></li>
										<li class="page-item"><a class="page-link page-a" href="">8</a></li>
										<li class="page-item"><a class="page-link page-a" href="">9</a></li>
										<li class="page-item"><a class="page-link page-a" href="">10</a></li>
										<li><a class="page-link page-a" href="">다음</a></li>
									</ul>
								</div>


								<div id="search-box">
									<input type="text" class="form-control" id="search-text"
										placeholder="닉네임, 매물번호를 입력해주세요.">
									<button class="btn btn-outline-secondary" type="button"
										id="button-addon1">검색</button>
								</div>
								<!-- search-paging -->
							</div>
						
						</td>
					</tr>
				</table>
			</form>



		</div>

	</div>

	<!-- footer -->
	<%@include file="/WEB-INF/views/inc/footer.jsp"%>


	<script>

	$("input[type='checkbox'][name='seq']").click(function(){
        if($(this).prop('checked')){
            
            $('input[type="checkbox"][name="seq"]').prop('checked',false);
            $(this).prop('checked',true);
        }
    });
	
	$("#passwordupdate").click(function(){

	    var con_test = confirm("암호를 재입력 하시겠습니까??");
	    if(con_test == true){
	    	location.href='http://localhost:8090/Myhome_project/admin2/application/list.do';?
	    }

	});
	
	
	$("#statechange").click(function(){
		/*페이지 이동 어떻게 하지?*/
	    var con_test = confirm("계약 상태를 취소로 변경하시겠습니까??");
	    if(con_test == true){
	    	location.href='http://www.naver.com';?
	    }

	});
	
	
	</script>



</body>
</html>