<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::공지사항</title>

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
	     background-color : white;
        
    }

    #navboardtbl{
        height: 800px;  
        width: 100%;  
        margin: 0px;
    }
    
    
    /*기존 200xp 삭제만 300px*/
    #navboardtbl .navboardtd:first-child{
    	width: 300px;

    }
    
	 .navboardtd{
	
	    vertical-align: top;
			
	}
	
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

/* 삭제 글 태그*/
						
	.boardalert{
	width:940px
	}
	
	.alert-danger{
		display:block;	
    	text-align:center;
    	width:800px;
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

					<!-- nav -->
					<%@include file="/WEB-INF/views/admin/nav.jsp"%>
				
						</td>

						<!--삭제입니다.-->

						<td class="navboardtd">
							<div id="boardtitle" class="">공지사항</div>
							
							<div class="boardcover">
								<table id="board"
									class="table table-hover table-striped table-condensed">

									<tr class="headtr">
										<th class="firtd boardtd">번호</th>
										<th class="sectd boardtd">제목</th>
										<th class="thitd boardtd">작성자(닉네임)</th>
										<th class="fortd boardtd">작성일</th>
										<th class="fiftd boardtd">조회수</th>
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
									</tr>


								</table>
							</div>

 						<!-- 삭제 항목 글 -->
 							<div class="boardalert">				
								<div class="alert alert-danger" role="alert">
								  <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
								  <span class="sr-only">경고!</span>
								  위의 항목(들)을 삭제하시겠습니까?삭제하시려면 아래의 delete 항목을 눌러 주세요.
								</div>
							</div>	
						<!-- 버튼 -->
						
							<div class="boardwork d-grid gap-2 d-md-block btn-group">
								<button class="btn btn-outline-secondary " type="button"
									id="button-addon2" onclick="location.href='/Myhome_project/admin2/notice/list.do';">
									목록</button>
								<button class="btn btn-outline-secondary " type="button"
									id="button-addon2" onclick="location.href='/Myhome_project/admin2/notice/deleteok.do';">
									삭제</button>
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

	</script>



</body>
</html>