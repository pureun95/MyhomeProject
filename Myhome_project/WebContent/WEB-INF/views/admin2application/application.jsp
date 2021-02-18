<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 -> testpage</title>

<%-- <%@include file="/WEB-INF/views/inc/asset.jsp" %> --%>

<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
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
	     background-color : white;
        
    }

    #navboardtbl{
        height: 800px;  
        width: 100%;  
        margin: 0px;
    }
    
    #navboardtbl .navboardtd:first-child{
    	width: 200px;

    }
    
	 .navboardtd{
	
	    vertical-align: top;
			
	}
	
	
	#boardtitle{
	
		width:300px;
		height:70px;
    	font-size:23px;
    	font-weight: bolder;	
    	margin:20px;
    	text-align:center;
    	color:white;
    	background-color:#f1aeae;
    	border-radius: 20px;
	}


</style>
</head>
<body>
	<div class="wrap">

		<!-- header -->
		<%@include file="/WEB-INF/views/inc/header.jsp"%>

		<div class="container">

			<form action="" id="form1">
				
				<table id="navboardtbl">

					<tr id="navboardtr">
						<td class="navboardtd">

					<!-- nav -->
					<%@include file="/WEB-INF/views/adminmenu/nav.jsp"%>
				
						</td>

						<!---->

						<td class="navboardtd">
						<div id="boardtitle" class=" alert alert-success">청약안내게시판</div>

							<div class="boardcover">
								<table id="board"
									class="table table-hover table-striped table-condensed">

									<tr class="headtr">
										<th class="firtd boardtd">번호</th>
										<th class="sectd boardtd">제목</th>
										<th class="thitd boardtd">작성자(닉네임)</th>
										<th class="fortd boardtd">작성일</th>
										<th class="fiftd boardtd">조회수</th>
										<th class="sixtd boardtd">선택</th>
									</tr>

									<tr class="boardtr">
										<td class="firtd boardtd">1</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic. <span
													class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fortd boardtd">2020-01-22</td>
										<td class="fiftd boardtd">11111</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>

									<tr class="boardtr">
										<td class="firtd boardtd">2</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic. <span
													class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fortd boardtd">2020-01-22</td>
										<td class="fiftd boardtd">11111</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>

									<tr class="boardtr">
										<td class="firtd boardtd">3</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic. <span
													class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fortd boardtd">2020-01-22</td>
										<td class="fiftd boardtd">11111</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>

									<tr class="boardtr">
										<td class="firtd boardtd">1</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic. <span
													class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fortd boardtd">2020-01-22</td>
										<td class="fiftd boardtd">11111</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>

									<tr class="boardtr">
										<td class="firtd boardtd">2</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic. <span
													class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fortd boardtd">2020-01-22</td>
										<td class="fiftd boardtd">11111</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>

									<tr class="boardtr">
										<td class="firtd boardtd">3</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic. <span
													class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fortd boardtd">2020-01-22</td>
										<td class="fiftd boardtd">11111</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>
									<tr class="boardtr">
										<td class="firtd boardtd">2</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic. <span
													class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fortd boardtd">2020-01-22</td>
										<td class="fiftd boardtd">11111</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>

									<tr class="boardtr">
										<td class="firtd boardtd">8</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic. <span
													class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fortd boardtd">2020-01-22</td>
										<td class="fiftd boardtd">11111</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>
									<tr class="boardtr">
										<td class="firtd boardtd">9</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic. <span
													class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fortd boardtd">2020-01-22</td>
										<td class="fiftd boardtd">11111</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>
									<tr class="boardtr">
										<td class="firtd boardtd">10</td>
										<td class="sectd boardtd">
											<div class="Boardtdtitle">
												<span class="boardspan headspan">[카테고리?]</span> 화이팅.. Lorem
												ipsum dolor sit amet consectetur, adipisicing elit. Maiores
												minus culpa? Officia dolorum ducimus hic. <span
													class="boardspan footspan">[댓글수]</span>
											</div>

										</td>
										<td class="thitd boardtd">길도이(닉네임)</td>
										<td class="fortd boardtd">2020-01-22</td>
										<td class="fiftd boardtd">11111</td>
										<td class="sixtd boardtd"><input type="checkbox"
											name="seq" id="seq"></td>
									</tr>

								</table>
							</div>

							<div class="boardwork d-grid gap-2 d-md-block btn-group">
								<button class="btn btn-outline-secondary " type="button"
									id="button-addon2" onclick="location.href='/Myhome-project/admin2/application/delete.do';">
									Delete</button>
								<button class="btn btn-outline-secondary " type="button"
									id="button-addon2">Write</button>
							</div>


							    <div class="boardserch">
							           <input type="text" class=""
							                placeholder="Recipient's username"
							                aria-label="Recipient's username"
							                aria-describedby="button-addon2">
							        <button class="btn btn-outline-secondary" type="button"
							            id="button-addon2">Button</button>
							    </div>



							<div class="Boardnext">
								<span class="tenplcount countbt ">◀</span>
								<!-- 10개 이상일 경우에 1개씩 생기도록 화살표 태그에 개별 클래스를 입력하였습니다.!-->
								<span class="countbt">1</span> <span class="tenmicount countbt">▶</span>
							</div>
					<tr>
						<td></td>
					</tr>
				</table>
			</form>



		</div>

	</div>

	<!-- footer -->
	<%@include file="/WEB-INF/views/inc/footer.jsp"%>


	<script>

	</script>



</body>
</html>