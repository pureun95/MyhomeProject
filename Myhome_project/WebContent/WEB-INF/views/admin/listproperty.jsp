<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::매물관리</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!-- <link rel="stylesheet" href="/Myhome_project/css/template.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<!-- <link rel="stylesheet" href="/Myhome_project/css/board.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/myproperty.css">

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
	

    
     .listbox{
     	width: 850px;
    	margin: 10px 10px;
    	height: 200px;
    } 
    
    .list {
	    float: left;
	    height: auto;
	    margin : 10px auto;
    	padding : 15px 0px;
   	
   	}
   	
   	.img-property {
        border: 1px solid black;
       	width: 280px;
        height: 180px;
        float: left;
       	background-image: url('../image/6.jpg');
        background-position: 0% 0px; 
        background-size: cover;
        cursor: pointer;
     }

	#checkbox {
		float: left;
		margin : 10px;
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
		color: white !important;
	}
	
	.btns {
    	cursor: pointer;
    	margin-bottom: 20px;
    	text-align : right;
    }
    
    .btn {
	    cursor: pointer;
    	margin-bottom: 20px;
    	margin-right : 10px;
    	padding : 6px 12px;
    	background-color: #F1AEAE;
    	border-radius: 4px;
    	outline: none !important;
    	border : none;
    	color: aliceblue;
	    
	}  
	
	
	.delete {
    	text-align : right;
    }
    
    
    .search{
		text-align:center;
	   	padding: 10px;
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
        
        
		<div id="title">매물관리</div>
		
		<div class="list">	

			<div class="listbox">
				<input type="checkbox" id="checkbox">
                    <div class="img-property"><div class="state">입주가능</div></div>
                    <div class="property-list2">
                        <div class="property-num">no.0001</div>
                        <div class="property-title">너무 좋은 방</div>
                        <div class="property-content" id="roomtype">
                            <span>방유형</span>
                            <div class="property-content2">원룸</div>
                        </div>
                        
                        <div class="property-content" id="floor">
                            <span>층</span>
                            <div class="property-content2">3/4</div>
                        </div>
                        
                        <div class="property-content" id="contract">
                            <span>계약유형</span>
                            <div class="property-content2">월세</div>
                        </div>
                        
                        <div class="property-content" id="price">
                            <span>가격</span>
                            <div class="property-content2">30,000원/월(24)</div>
                        </div>
                        
                        <div class="property-location">
                            <div class="location-icon" style="float: left;"></div>
                            <div class="location-detail">서울특별시 동작구 상도동</div>
                        </div>
                        
                    </div>
                </div>
                
                
                
                
                <div class="listbox">
                	<input type="checkbox" id="checkbox">
                    <div class="img-property"><div class="state">입주가능</div></div>
                    <div class="property-list2">
                        <div class="property-num">no.0001</div>
                        <div class="property-title">너무 좋은 방</div>
                        <div class="property-content" id="roomtype">
                            <span>방유형</span>
                            <div class="property-content2">원룸</div>
                        </div>
                        
                        <div class="property-content" id="floor">
                            <span>층</span>
                            <div class="property-content2">3/4</div>
                        </div>
                        
                        <div class="property-content" id="contract">
                            <span>계약유형</span>
                            <div class="property-content2">월세</div>
                        </div>
                        
                        <div class="property-content" id="price">
                            <span>가격</span>
                            <div class="property-content2">30,000원/월(24)</div>
                        </div>
                        
                        <div class="property-location">
                            <div class="location-icon" style="float: left;"></div>
                            <div class="location-detail">서울특별시 동작구 상도동</div>
                        </div>
                        
                    </div>
                </div>
                
                
                
                <div class="listbox">
                	<input type="checkbox" id="checkbox">
                    <div class="img-property"><div class="state">입주가능</div></div>
                    <div class="property-list2">
                        <div class="property-num">no.0001</div>
                        <div class="property-title">너무 좋은 방</div>
                        <div class="property-content" id="roomtype">
                            <span>방유형</span>
                            <div class="property-content2">원룸</div>
                        </div>
                        
                        <div class="property-content" id="floor">
                            <span>층</span>
                            <div class="property-content2">3/4</div>
                        </div>
                        
                        <div class="property-content" id="contract">
                            <span>계약유형</span>
                            <div class="property-content2">월세</div>
                        </div>
                        
                        <div class="property-content" id="price">
                            <span>가격</span>
                            <div class="property-content2">30,000원/월(24)</div>
                        </div>
                        
                        <div class="property-location">
                            <div class="location-icon" style="float: left;"></div>
                            <div class="location-detail">서울특별시 동작구 상도동</div>
                        </div>
                        
                    </div>
                </div>
            </div>
  
			
			<div class="btns">           	
            	<input type="button" class="btn" value="선택한 매물 삭제" id="delete">
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
	       	</div>
            
           	<div class="search">
            	<input type="text" class="form-control" placeholder="닉네임/매물번호" id="txt">
            	<input type="button" class="btn" value="검색" id="serch">
           	</div>
		

		
	</div>
	</div>
	</div>
	
	<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>

