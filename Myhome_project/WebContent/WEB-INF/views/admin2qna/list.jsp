<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::QnA</title>

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
	height: 1000px;
	width: 100%;
	margin: 0px;
	margin-top: -20px;
}

#navboardtbl .navboardtd:first-child {
	width: 200px;
}

.navboardtd {
	vertical-align: top;
}

/* 보더 수정 */
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


/* 셀렉트 버트 수정입니다. */
.boardwork>select {
	width:100px;
	font-size:16px;
	height: 34px;
	border: 0px solid #000;
	background-color: #F1AEAE;
    color: white;
    border-radius:20px;

    
}

.boardwork>select option{
	text-align:center;
}
.boardtr {
	display: none;
	
}

.Boardtdtitle a{
	text-overflow:ellipsis;
}


/* 토글 버튼 설정 모르겠다...

#boardstate{
	width:150px;
    float: right;
    margin-right: 200px;
    display: inline;
	border: 0px solid #000;
	background-color: #F1AEAE;
    color: white;
    border-radius:20px;
	font-size:16px;
	height: 30px;
	
}


#boardstate:after{
        content: "";
        display: block;
        clear: both;
	}
*/


</style>
</head>
<body>
	<div class="wrap">

		<!-- header -->
		<%@include file="/WEB-INF/views/admin/header.jsp"%>

		<div class="container">

			-
			<form action="" id="form1">

				<table id="navboardtbl">

					<tr id="navboardtr">
						<td class="navboardtd">
							<!-- nav --> <%@include file="/WEB-INF/views/admin/nav.jsp"%>

						</td>

						<!---->

						<td class="navboardtd">
							<div id="boardtitle" class="">QnA</div>

							<div class="boardcover">
								<table id="board"
									class="table table-hover table-striped table-condensed">

									<tr class="headtr">
										<!--  <th class="sixtd boardtd">선택</th> -->
										
										<th class="firtd boardtd">번호</th>
										<th class="sectd boardtd">제목</th>
										<th class="thitd boardtd">작성자</th>
										<!-- 답변이 있으면 완료 없으면 처리 중  -->
										<th class="fiftd boardtd">처리상태</th>
										<th class="fortd boardtd">작성일</th>
									</tr>


									<tr class="boardoption">
										<td colspan="5" style="text-align: center;">아래의 카테고리를 선택해
											주세요</td>
									</tr>

									<tr class="boardtr">
										<!-- 					<td class="sixtd boardtd"><input type="checkbox" name="seq" id="seq"></td>  -->
										<td class="firtd boardtd">1</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 
												<a href="/Myhome_project/admin2/qna/view.do;">화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic.</a>
												
												<span class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fiftd boardtd">미처리</td>
										<td class="fortd boardtd">2020-01-22</td>


									</tr>



								</table>
							</div>

	
							<div class="boardwork d-grid gap-2 d-md-block btn-group">
							<!-- 전체 혹은 미처리 내역을 선택하기  모르겠음..
									<button id="boardstate">이거버튼</button>
							text-overflow: ellipsis;
							-->
								  <select class="form-select boardworksel"
									aria-label="Default select example">
									<option selected value="0"> 카테고리</option>
									<option value="1"> 매물</option>
									<option value="2"> 중고장터</option>
									<option value="3"> 커뮤니티</option>
									<option value="4"> 전자계약</option>
									<option value="5"> 기타</option>
								</select>
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
		
	/*boardtr*/
    $(".boardwork").click(function(){
        if( $(".boardworksel option:selected").val()==0){
            
            $(".boardtr").css("display","none");
            $(".boardoption").css("display","table-row");         
        }else{
            console.log(1213);
            $(".boardtr").css("display","table-row");    
            $(".boardoption").css("display","none");    
        
        }

    });

	</script>



</body>
</html>