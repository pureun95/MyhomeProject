<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 > 청약</title>

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
    
    
    /*기존 200xp 삭제만 300px*/
    #navboardtbl .navboardtd:first-child{
    	width: 300px;

    }
    
	 .navboardtd{
	
	    vertical-align: top;
			
	}
	
	/*타이틀 태그 */
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

	.boardtext{
		margin-top:10px;
	}
	
	.boardfile > input{
		background-color: #f1aeae;
		width:400px;
		height:40px;
		margin-left:20px;
    	text-align:center;
    	color:white;	
    	outline: none;
    	border: 0;
    	
	}
	
	.boardtitletext{
		width:790px
	}
	
	.boardtitletext>input{
		width:790px
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

						<!-- 글쓰기 입니다.-->

						<td class="navboardtd">
							<div id="boardtitle" class=" alert alert-success">청약안내게시판</div>
							
							<div class="boardcover">
								<table id="board"
									class="table table-hover table-striped table-condensed">
										<!--  ?는 데이터 직접 넣기  -->
									<tr class="headtr">
										<td class="boardtitletext"> <input type="text" placeholder="제목을 입력해주세요" class=""></td>
									</tr>

									<tr class="boardtr">
										<td class="firtd boardtd" colspan="5">
											<textarea class="form-control col-sm-5 boardtext"  
											placeholder="여기에 게시글을 작성해주세요" rows="15" ></textarea>
										</td>

									</tr>


								</table>
							</div>


 						<!-- 첨부파일  -->
							<div class="boardfile">
							  <input type="file" class="form-control " id="inputGroupFile02">
							  <label class="" for="inputGroupFile02"></label>
							</div>
						<!-- 버튼 -->
						
						<!-- 지금은 삭제? 아니면 안보이게? -->
							<div class="boardwork d-grid gap-2 d-md-block btn-group">
								<button class="btn btn-outline-secondary " type="button"
									id="button-addon2" onclick="location.href='/Myhome-project/admin2/application/deleteok.do';">
									Insert</button>
								<button class="btn btn-outline-secondary " type="button"
									id="button-addon2" onclick="location.href='/Myhome-project/admin2/application/list.do';">
									List</button>
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