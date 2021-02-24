<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::방찾기</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="/Myhome_project/css/myproperty.css">
<!-- <link rel="stylesheet" href="/Myhome_project/css/boarduserver.css"> -->


<!-- 부트스트랩 사용가능한 템플릿 -->

<style>

	.container {
		border-color: transparent;
		
		margin: 0 auto;
	    letter-spacing: -.2px;
	    min-height: 100%;
	    padding-bottom: 100px;
	    border: 1px solid green;
	    margin-top: 100px;
	    

		}
	
	.header-containerwrap{
	    height: auto;
	    min-height: 100%;
	    position: relative;
	}

	
	
	
/* 	#basic-addon1 {
		background-color: #f1aeae;
        color: white;
        outline: none;
        
        position: relative;
		float: left;
		left: 1060px;
		top: 10px;
	}
	
	.search {
		margin: 20px auto;
		width: 430px;
		positioin: relative;
		float: left;
		top: -70px;
		left: 390px;
		
	}
	
	.pagebar {
		margin: 0px auto;
		margin-bottom: 70px;
		float: left;
		text-align: center;
		position : relative;
		top: 20px;
		left: 400px;

	}
	
	.pagination>.active>a, .pagination>li>a:hover{
		background-color: #f1aeae;
		border-color : #f1aeae;
		color: white;
	}

	
	.pagination>li>a {
		color: #202020;
	} */
	

	
	#titlename {
		color: #202020;
	}
	

	.box1 {
		padding-left: 50px;
	   font-size: 16px;
	   font-family: 'NanumBarunGothic';
	}
	
	
	
	#maintitle {
	   /* margin: 30px 7px; */
	   font-size: 24px;
	   font-family: 'MaplestoryOTFLight';
	   padding:0 10px;
	   border-left: 5px solid #f1aeae;
   
		text-align: left;	    
	    float: left;
	    
	    margin-left: 100px;
	    margin-top: 96px;
	}
	
	
	
	
	
	
	.search-textbox {
            width: 100%;            
            border: none;
            outline: none;
            box-shadow: none;
            margin: 50px 0;
            position: relative;
            text-align: center;
            
            font-size: 14px;
            color: #202020;
        }


        #search1 {
            height: 40px;
            width: 500px;
            text-align: left;
            padding-left: 20px;
            border-radius: 30px;
            outline: none;
            border:solid 2px #F1AEAE;
            
            font-size: 14px;
            color: #ccc;
            
            left: 30px;
    		position: relative;
        }

        .btn-search {
            font-size: 14px;
            width: 90px;
            height: 40px;
            border-radius: 30px;
            text-align: center;
            padding: 13px 0;
            cursor: pointer;
            outline: none;
            border: 0px;
            background-color: #F1AEAE;
            color: white;
            
            position: relative;
            left: -60px;
            top: 3px;
        } 
        
        
    /*     .search {
        	margin: 20px auto;
 			width: 500px;
			width: 100%;
			positioin: relative;
			float: left;
			top: 50px;
			left: 200px;
			
			
			text-align: center;
			outline: none;
			
			border-radius: 30px;
			border: solid 2px #F1AEAE;
        } */
        
        /* #search {
        	border-radius: 30px;
			border: solid 2px #F1AEAE;
			height: 45px;
			width: 500px;
			
			margin: 20px auto;
        } */
        
        #basic-addon2 {
			background-color: #f1aeae;
	        color: white;
	        outline: none;
	        border-radius: 30px;
			border: solid 2px #F1AEAE;
			
			position: relative;
			left: -400px;
			width: 90px;
			height: 20px;
			
			z-index: 2;
		}
        
        
        
        


        .filter {
            height: 33px;
            width: 110px;
            font-size: 14px;
            text-align: center;
            padding-left: 5px;
            /* margin: 0px 3px; */
            margin-right: 25px;
            outline: none;
            
            float: left;
            position: relative;
            top: 4px;
            
        }
        
        .filtername {
        	float: left;
        	position: relative;
        	margin-right: 8px;
        	
        	top: 10px;
        }

        .filterlist {
            margin: 0px auto;
            text-align: center;
            
            padding: 0 100px;
           
        }

        .filterlist span {
            font-size: 14px;
            float: left;
            position: relative;
            height: 40px;
        }

        .option1 {
            /* margin: 10px auto; */
            font-size: 14px;
            text-align: center;
            /* padding-left: 148px; */
            
            position: relative;
            /* left: -60px; */
            float: left;
            
            margin: 0px auto;
            margin-top: 10px; 
            
            
            padding: 0 100px;
        }
        
        .option1 label {
        	margin-right: 30px;
        	font-size: 14px;
        	font-weight: normal;
        }
        
        .optionbox {
        	position: relative;
        	float: left;
        	top: 8px;
        }

        
        .filter_type {
        	margin-right: 20px;
        	border: 0;
        	background-color: #F1AEAE;
        	border-radius: 30px;
        	color: white;
        	padding: 13px 10px;
        	vertical-align: middle;
        	
        	font-size: 14px;
            width: 90px;
            height: 40px;
            float: left;
            position: relative;
            
        	
        }
        
        /* .map {
        	text-align: center;
        	margin-top: 50px;
        } */
        
        .temppicture {
        	width: 100%;
        	height: 600px; /*나중엔 오토로 바꾸기 */
        	background-color: #ccc;
        	float: left;
        	margin: 30px auto;
        	text-align: center;
        	position: relative;
        	/* left: 25px; */
        }
        
        .section3 {
			padding: 0 100px;
   		}
        
        hr {
        	margin-top: 20px;
		    margin-bottom: 20px;
		    border: 0;
		    border-top: 1px solid #eee;
		    height: 0;
        }
        
        
        /* 팀장님 소스 */
        
        .board-name {
    	border-left: 3px solid #f1acac;
    	width: 810px;
    	height: 32px;
    	padding-left: 20px;
    	font-size: 24px;
    	font-family: 'NanumBarunGothic';
    	color: #202020;
    	margin-bottom: 20px;
    	
    }
    
    
    .matching-option {
    	/* border: 1px solid blue; */
    	width: 400px;
    	height: 100px;
    	padding: 40px 0px;
    	font-size: 16px;
    	font-family: 'NanumBarunGothic';
    	color: #202020;
    }
    
    
    
    .matching-option > a {
    	cursor: pointer;
    	color: #202020;
    	margin-right: 20px;
    	float: left;
    	margin-left: 0px;
    }
    
     .matching-option > a:hover {
    	color: #f1acac;    	
    	text-decoration: none;
    }
    
    .matching-option > a:nth-child(2) {
    	color: #f1acac;
    	display: inline;
    	border-bottom: 2px solid #f1acac;
    	padding-bottom: 4px;
    }
    
    
    #tome {
    	color: #f1acac;
    	display: inline; 
    	border-bottom: 3x solid #202020; 
    	padding-bottom: 5px;
    	text-decoration: none;
    }
    
    .matching-board {
    	border: 1px solid blue;
    	width: 820px;
    	height: 600px;
    	margin-right: 50px;
    	margin-left: 60px;
    }
    
    #board {
    	width: 810px;
    	margin-top: 0px;
    	margin-left: 0px;
    
    }
    
   .boardtd {
	   	text-align: center;
	    vertical-align: middle;
   }
    
    .firtd {
    	width: 10px;
    }
    
    .sectd {
    	width: 20px;
    }
    
    .thitd {
    	width: 10px;
    }
    
    .fortd {
    	width: 20px;
    }
    
   	.boardtd {
   		text-align: center;
    	vertical-align: middle;
   	
   	} 
   	
   	/* 전체 property list 박스 property.css 덮어쓰기 */
   	
   	.property-box {
   		border: 1px solid blue; */
	    float: left;
/* 	    width: 900px; */
	    width: 100%;
	    height: auto;
	    margin-bottom: 50px;
	    margin-left: 0px;
	    /* padding-left: 0px;
	    padding-top: 0px; */
	    
	    padding: 0 100px;
	    position: relative;
	    margin: 20px auto;
	    
	    
   	
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
   	
   	
   	
   	
   	/* 헤더 */
   	
	#mymatching {
		color: #f1acac;
	}   
	

	
	/* 매칭버튼 */
	
	#button-addon1 {
	  	background-color: #f1aeae;
	   	color: white;
	   	outline: none !important;
	   	font-family: 'NanumBarunGothic';
	   	border: 1px solid #f1aeae;
   }
   
   #button-addon2 {
	   	background-color: #f1aeae;
	   	color: white;
	   	outline: none !important;
	   	font-family: 'NanumBarunGothic';
	   	border: 1px solid #f1aeae;
	   	margin-left: 5px;
   }
	 	

   
   /* 검색, 페이지바 */
    
    .search-paging {
    	border: 1px solid black;
    	width: 800px;
    	height: 200px;
    	padding: 20px 0px; 
    	margin-top: 50px;
    }
    
    .paging {
  		border: 1px solid blue;
  		width: 100%;
  		height: 75px;
  		padding: 0px 170px;
   	}
    
    .pagination > li > .page-a {
		color: #202020;
	
	}
    
    .pagination>.active>a, .pagination>li>a:hover{
		background-color: #f1aeae !important;
		border-color : #f1aeae !important;
		color: white !important;
	}
	
    
    .btn {
   		background-color: #f1aeae;
   		color: white;
   		outline: none !important;
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
    
   
   .temp {
	   	min-height: 35px;
	   	/* border: 1px solid black; */
	   	padding: 5px;
   
   }
   
   
	
	
</style>


</head>
<body>
 

<!-- <div class="wrap"> -->
<div class="header-containerwrap">
 
 <!-- header -->
		<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp"%>
 
     <div class="container">
     
     <div id="maintitle">방찾기</div>
     <div style="clear:both;"></div>
     
     <hr>
            
            <!-- <div class="section1">    -->   
        <form action="" id="form1">     
                 
            <div class="section2">
            <div class="search-textbox">
                <input type="text" placeholder="지역, 지하철역 검색" id="search1">
                <input class="btn-search" type="submit" value="검색">
            </div>
            
             <!-- <form id="searchForm" method="GET" action="">
	     		<div class="input-group search">
	     
		         	<input type="text" class="form-control" placeholder="지역, 지하철역을 입력해주세요." aria-describedby="basic-addon2" id="search" name="search" required value="">
		         
		         	<span class="input-group-addon" id="basic-addon2" onclick="$('#searchForm').submit();"><span>검색</span></span> -->
		         <!-- stype="cursor:pointer;" -->
	     		</div>
     		</form>
     		<div style="clear:both;"></div>
            
            
            <div class="filterlist">
	            <div class="filter_type">필터 옵션</div>
                <span class="filtername">매물유형</span>
                <select name="roomtype" class="filter">
                    <option>원룸</option>
                    <option>투룸</option>
                    <option>오피스텔</option>
                </select>

                <span class="filtername">거래유형</span>
                <select name="propertytype" class="filter">
                    <option>월세</option>
                    <option>전세</option>
                    <option>매매</option>
                </select>

                <span class="filtername">관리비</span>
                <select name="maintenance" class="filter">
                    <option>~5만원</option>
                    <option>~10만원</option>
                    <option>10만원 이상</option>
                </select>
                
                <span class="filtername">보증금</span>
                <select name="maintenance" class="filter">
                    <option>~500만원</option>
                    <option>~1천만원</option>
                    <option>~5천만원</option>
                    <option>~1억원</option>
                    <option>2.5억원 이상</option>
                </select>
                
            </div>
            <div style="clear:both;"></div>
            

            <div class="option1">
            	<span class="filter_type">건물 옵션</span>
            	<div class="optionbox">
	                <input type="checkbox" name="건물옵션" id="op1">
	                <label for="op1">주차가능</label>
	                <input type="checkbox" name="건물옵션" id="op2">
	                <label for="op2">반려동물</label>
	                <input type="checkbox" name="건물옵션" id="op3">
	                <label for="op3">베란다/발코니</label>
	                <input type="checkbox" name="건물옵션" id="op4">
	                <label for="op4">엘리베이터</label>
                </div>
				<div style="clear:both;"></div>
            </div>
            
            
            <div class = "section3">
            	<div class = "map">
            		<div class="temppicture"></div>
             		<!-- <img src="/Myhome_project/Myhome/image/location.png" width="1190px"> -->
            		<!-- <img src="\Myhome_project\WebContent\image\map_1.png" width="1190px"> -->
            	</div>
            </div>
            <div style="clear:both;"></div>
            
            
            
            
            
            
            
            
            
            <div class="property-box">		 	
		 
		 <!-- form -->
		 <form action="POST">
                <div class="property-list">
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
                
                
                
                
                <div class="property-list">
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
                
                
                
                <div class="property-list">
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
	       		
	       		
	    	
       	<!-- search-paging -->
       	</div>         


		<!-- form -->
		</form>
                
        <!-- property-box -->
        </div>
        <div style="clear:both;"></div>
            	


        </div>
               
       

             <nav class="pagebar">
                <ul class="pagination" id="page_bar">
                    ${pagebar}
                </ul>
            </nav>
            <div style="clear:both;"></div>

        </div>

      <!-- </div> -->
      <!-- footer -->
      <%@include file="/WEB-INF/views/inc/footer.jsp"%>

 
 
</body>
</html>