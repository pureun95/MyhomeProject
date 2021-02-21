<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::이사업체관리</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/board.css">
<!-- <link rel="stylesheet" href="/Myhome_project/css/moveclean-list.css"> -->

<style>
	.header {
		background-color : white;
	}
	
	.container {
        width: 1190px;
        margin: 0 auto;
        letter-spacing: -.2px;
        min-height:100%;
		padding-bottom:100px;
		border: 1px solid green;
		margin-top: 100px;
		z-index: -1;
    }
    
    .boardcover{
    	border: 1px solid tomato;
    	float: left;
    	width:900px;
    	height: auto;
    	margin-left: 30px; 
    }
    
	#title {
		font-size: 24px;
		font-family: 'MaplestoryOTFLight';
		border-bottom: 1px solid #eaecef;
		padding-bottom: 10px;
		margin: 30px 10px;
		padding : 0px 10px;
	}
	
	.list {
    	/* text-align : center; */
    	/* float: left; */
    	margin : 10px auto;
    	width: 80%;
    	height : 200px;
    	/* border : 5px solid black; */
    	padding : 15px 0px;
    }
    
    .imagelogo{
    	border : 1px solid black;
    	width: 280px;
        height: 180px;
    	float: left;
    	/* position: relative; */
    	background-image: url('../image/move_clean/1. 쌍용청소.jpg');
    	/* background-position: center center;  */
        /* background-size: contain; */
        /* background-repeat: no-repeat; */
        background-position: 0% 0px; 
        background-size: cover;
        margin: 0px 20px;
    }
    
    .listbox{
    	float: left;
    	width: 200px;
    	height: 180px;
    	margin-left : 30px;
    }

    
/*     .check, .imagelogo {
    	float: left;
    } */
    
    .btns {
    	position : relative;
    	cursor: pointer;
    	margin-left: 50px;
    	margin-bottom: 30px;
    }
    
    .btn {
	    background-color: #f1aeae;
	    color: aliceblue;
	    display: inline;
	    width: 70px;
	    margin-right: 10px;
	    outline: none !important;
	    
	}  

    
    .check {
    	size :2em;
    }
    
	
	.stars {
    	background-color: rgba( 255, 255, 255, 0.5 );
    }
	
    
    .glyphicon, .rating {
  
    	/* float: left; */
    	font-size : 16px;
    	padding-left : 10px;
    	padding-top: 10px;
    	margin : 0px;
    }
    
    .glyphicon {
    	color : #F1AEAE;
    }   
    
  
    
    .name{
    	font-size: 20px;
    	margin: 5px 0px;
    	border-bottom: 1px solid #eaecef;
    }
    
    .content{
    	font-size: 16px;
    }
    
    .address, .tel, .price, .businessnum, .introduce{
    	margin : 5px 0px;
    }
    
	.paging {
		text-align : center;
	}
	
	.pagination > li > .page-a {
		color: #202020;
	}
	
	.pagination>.active>a, .pagination>li>a:hover{
		background-color: #f1aeae !important;
		border-color : #f1aeae !important;
		
    }
    
    .search {
		text-align:center;
	   	padding: 10px;
	}
	
	.btns {
		text-align : right;
		
	}
	
	.search #txt {
		width: 150px;
		display: inline;
	}
    
    
</style>

</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/admin/header.jsp" %>
 
     <div class="container">
     <%@include file="/WEB-INF/views/admin/nav.jsp" %>
        <div class="boardcover">
        
        
		<div id="title">이사업체관리</div>
		
			<div class="list">
				<input type="checkbox" class="check" style="float:left; zoom:1.5;">
				<div class="imagelogo">
					<span class="glyphicon glyphicon-star"></span>
					<span class="rating">3.0 / 5.0</span>					
				</div>
				<div class="listbox">
					<div class="name" style="font-weight:bold">이사업체명</div>
					<div class="content">
						<div class="tel">010-1234-5678</div>
						<div class="address">서울시 강남구 역삼동</div>
						<div class="businessnum">123-3456-7890</div>
						<div class="price">80,000원</div>
						<div class="introduce">이사업체소개글입니다</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<input type="checkbox" class="check" style="float:left; zoom:1.5;">
				<div class="imagelogo">
					<span class="glyphicon glyphicon-star"></span>
					<span class="rating">3.0 / 5.0</span>					
				</div>
				<div class="listbox">
					<div class="name" style="font-weight:bold">이사업체명</div>
					<div class="content">
						<div class="tel">010-1234-5678</div>
						<div class="address">서울시 강남구 역삼동</div>
						<div class="businessnum">123-3456-7890</div>
						<div class="price">80,000원</div>
						<div class="introduce">이사업체소개글입니다</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<input type="checkbox" class="check" style="float:left; zoom:1.5;">
				<div class="imagelogo">
					<span class="glyphicon glyphicon-star"></span>
					<span class="rating">3.0 / 5.0</span>					
				</div>
				<div class="listbox">
					<div class="name" style="font-weight:bold">이사업체명</div>
					<div class="content">
						<div class="tel">010-1234-5678</div>
						<div class="address">서울시 강남구 역삼동</div>
						<div class="businessnum">123-3456-7890</div>
						<div class="price">80,000원</div>
						<div class="introduce">이사업체소개글입니다</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<input type="checkbox" class="check" style="float:left; zoom:1.5;">
				<div class="imagelogo">
					<span class="glyphicon glyphicon-star"></span>
					<span class="rating">3.0 / 5.0</span>					
				</div>
				<div class="listbox">
					<div class="name" style="font-weight:bold">이사업체명</div>
					<div class="content">
						<div class="tel">010-1234-5678</div>
						<div class="address">서울시 강남구 역삼동</div>
						<div class="businessnum">123-3456-7890</div>
						<div class="price">80,000원</div>
						<div class="introduce">이사업체소개글입니다</div>
					</div>
				</div>	
			</div>
			
			<div class="list">
				<input type="checkbox" class="check" style="float:left; zoom:1.5;">
				<div class="imagelogo">
					<span class="glyphicon glyphicon-star"></span>
					<span class="rating">3.0 / 5.0</span>					
				</div>
				<div class="listbox">
					<div class="name" style="font-weight:bold">이사업체명</div>
					<div class="content">
						<div class="tel">010-1234-5678</div>
						<div class="address">서울시 강남구 역삼동</div>
						<div class="businessnum">123-3456-7890</div>
						<div class="price">80,000원</div>
						<div class="introduce">이사업체소개글입니다</div>
					</div>
				</div>	
			</div>
			
			<div class="btns">
            	<input type="button" class="btn" value="등록" id="add" onclick="location.href='/Myhome_project/Myhome/admin/addclean.do';">
            	<input type="button" class="btn" value="수정" id="update" onclick="location.href='/Myhome_project/Myhome/admin/editclean.do';">
            	<input type="button" class="btn" value="삭제" id="delete">
            </div>
            
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
	       	
           	<div class="search">
            	<input type="text" class="form-control" placeholder="이사업체명" id="txt">
            	<input type="button" class="btn" value="검색" id="serch">
           	</div>
		

		
	</div>
	</div>
	</div>
	
	<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>

