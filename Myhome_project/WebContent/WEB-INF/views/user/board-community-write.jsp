<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="/Myhome_project/css/boarduserver.css"> -->


<!-- 부트스트랩 사용가능한 템플릿 -->

<style>

	.container {
		border-color: transparent;
	}
	
	.boardwrap{
	    height: auto;
	    min-height: 100%;
	}
	
	.boardTitle {
		font-size: 24px;
		/* font-family: 'MaplestoryOTFLight'; */
		font-family: 'NanumBarunGothic', sans-serif;
		font-weight: bold;
		color: #202020;
		border-left : 3px solid #F1AEAE;
		margin: 30px 7px;
		padding-left: 10px;
	}
	
	.btn {
		background-color: #f1aeae;
        color: white;
        outline: none;
	}
	
	.btn:hover {
		background-color: #f1aeae;
		color: white;
	}
	
</style>


</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp" %>
 
     <div class="container">

        <div>
				<div class="boardTitle">커뮤니티</div>
                
				<form method="POST" action="/Myhome_project/Myhome/user/boardcommunitylwriteok.do">
                <table class="table write">
                    <tr>
                        <td>
                            <input type="text" class="form-control" placeholder="제목" id="title" name="title" required>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <textarea class="form-control" id="content" placeholder="내용" name="content" required></textarea>
                        </td>
                    </tr>                   
                </table>


                <div style="clear:both;"></div>

                <div class="btns btn-group">
                    <button type="button" class="btn btn-default" onclick="location.href='/Myhome_project/Myhome/user/boardcommunitylist.do';">뒤로가기</button>
                    <button type="submit" class="btn btn-default">글쓰기</button>
                </div>
                </form>
                <div style="clear:both;"></div>
			</div>
       
    </div>


</div> 
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>