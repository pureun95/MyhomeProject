<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::당신이 찾는 모든방</title>
                                                 
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<!-- <link rel="stylesheet" href="/Myhome_project/css/main.css"> -->
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<style>

	.header-ul2 {
	    color: white !important;
	}
	
	.header-ul2-scroll {
    	color: #202020 !important;
    
	}
	
	/* 메인에서는 투명 */
	/* #header:hover {
		background-color: transparent !important;
	} */

	/* 부트스트랩 사용 설정 수정중... */
	/* 부트스트랩 사용하실분들은 아래 링크랑 밑의 설정들을 추가해서 이용해주세요~~(아직 쓰지말아주세요 수정중!) */
	/* <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> */
	/* .li-list{
    	font-size:19.2px;
    }
    
    .header-ul2 {
    	top: 55px !important;
    }
    
    .header-img {
    	position: relative;
    	left: 22px;
    	top: 20px !important;
    }
    
    .header-ul2-scroll {
	    left: 475px !important;
	    top: 25px !important;
	}

     
   .li-list-hover {
	    padding-bottom: 8px !important;
	    font-size: 17.6px;
	} */
	
	
	.box2 {
	    border: 1px solid rgb(255, 255, 255);
    	width: 900px;
   	 	height: 300px;
    	margin: 0 auto;
    	margin-top: 250px;
    	padding: 20px;
	}
	
	.xsbox1 {
	    background-color: hsla(0, 71%, 81%, 0.4);
	    width: 200px;
	    height: 200px;
	    padding: 20px;
	    padding-top: 60px;
	    border-radius: 30px;
	    font-size: 2em;
	    text-align: center;
	    margin: 0 auto;
	    margin-top: 10px;
	    /* float: left; */
	}
	
	
	
	body {

      margin: 0 auto;
      height: 100%;
      width: 100%;
        
    }
    
    html {
    	height: 100%;
    }
    

     /* .wrap {
    	min-height: 100%;
    	position: relative;
    	padding-bottom: 130px;
    } */
    
    .main-wrap {
        height: auto;
	    min-height: 100%;
	    position: relative;
	}
    

    /* main */
    
    .container {
        width: 100%;
        height: 100%;
    }

    .main1 {
        width: 100%;
        height: 1200px;
        border: 1px solid transparent;
        background-image: url(/Myhome_project/image/8.jpg);
        background-size: cover;
        background-position: 50% 50%;
    }

    .box2 {
        border: 1px solid rgb(255, 255, 255);
        width: 900px !important;
        height: 300px;
        margin: 0 auto;
        margin-top: 250px;
        padding: 20px;
        
    }


    .search {
        border: 1px solid white;
        margin: 0 auto;
        margin-top: 120px;
        text-align: center;
        
        padding: 20px;
		padding-top: 80px;
		height: 330px;
		width: 820px;
        
    }

    /* 텍스트, 버튼 공통 클래스 */
    .txt_btn1 {
        border-radius: 30px;
        height: 50px;
        border: 0px;
        outline: none;
        margin-top: 20px;
    }

    /* 버튼 공통 클래스 */
    .btn1 {
        background-color: #F1AEAE;
        color: white;
    }

    /* 검색창 공통 클래스 */
   .txt1 {
        background-color: white;
        width: 480px;
        padding-left: 20px;
        color: rgb(53, 52, 52);
        font-size: 1.1em;
    }

    /* 버튼 공통 클래스 */
    .btn1  {
        width: 100px;
        font-size: 1.1em;
    }

    .category {
        width: 300px;
        height: 52px;
        /* border: 1px solid black; */
        border-radius: 30px;
        background-color: white;
    }

    .btn2 {
        float: left;
        font-size: 1.1em;
        width: 100px;
        height: 52px;
        border-radius: 30px;
        text-align: center;
        padding: 10px;
        cursor: pointer;
        outline: none;
        border: 0px;
        background-color: transparent;
        z-index: 2;
    }

    .btn2:hover {
        background-color: #F1AEAE;
        color: white;
    }

    .btn2:nth-child(1) {
        background-color: #F1AEAE;
        color: white;
    }

    

    .category-room {
        position: relative;        
        left: 100px;
    }

    .category-contract {
        position: relative;
        top: -53px;
        left: 415px;
    }

    #box_category {
        border: 1px solid #F1AEAE;
        width: 100px;
        height: 50px;
        border-radius: 30px;
        background-color: transparent;
        position: relative;
        left: 90px;
        top: 53px;
        z-index: 1;
    }

     #btn1 {  
        margin-left: 10px;
    }

    .search-room {
        position: relative;
        top: -50px;
    }

    #search-title {
        font-size: 2em;
        font-family: 'MaplestoryOTFLight';
        margin-bottom: 50px;
        color: white;
    }


    .section1 {
        border: 1px solid transparent;
        height: 500px;
    }
   
    .content {
        border: 1px solid black; 
        border: 1px solid transparent;
        width: 1190px;
        height: 300px;        
        margin: 100px auto;
        text-align: center;
        position: relative;
        padding-left: 100px;
        padding-top: 30px;
    }

    .section1-content {
        background-color: rgb(255, 255, 255);
        width: 260px;
        height: 210px;
        padding: 20px 0;
        float: left;
        margin: 10px 50px;
        box-shadow: 0px 2px 4px #b8b8b8;
        color: rgb(63, 62, 62);
        position: relative;
        border: 1px solid #DBDCE0;
        font-size: 16px;
    }

   
    .section1-content > a {
        font-size: 1.5em;
        text-decoration: none;
        color: #F1AEAE;
        font-family: 'MaplestoryOTFLight';
    }
    
    a:hover {
    	text-decoration: none !important; 
    	color: #F1AEAE !important;
    }

    .section1-content2 {
        margin-top: 30px;
    }
    
    #content1 {
        font-family: 'NEXON Lv2 Gothic';
        line-height: 24px;        
    }

    #content2 {
        font-family: 'NanumBarunGothic', sans-serif;
        line-height: 24px;        
    }

    #content3 {
        font-family: 'InfinitySans-RegularA1';
        line-height: 24px;
    }
    
    
    
    /* 카운트 박스 */
    
    
	.count-box {
		float: left;
		padding: 0px 23px;
		text-align: center;
	}
	
	#count-sbox1, #count-sbox2 {
		border: 1px solid blue;
		width: 250px;
		height: 270px;
		margin-right: 50px;
		font-family: 'MaplestoryOTFLight';

	}
	
	#count-sbox3 {
		border: 1px solid blue;
		width: 250px;
		height: 270px;
		margin-right: 0px;
		font-family: 'MaplestoryOTFLight';
	}
	
	.count-box > span {
		font-size: 30px;
		font-family: 'MaplestoryOTFLight';
	}
	
	.cbox {
		/* border: 1px solid blue; */
		width: 200px;
		height: 200px;
		margin-top: 10px;
		border-radius: 20px;
		background-color: hsla(0, 71%, 81%, 0.4);
		padding: 45px;
		font-size: 5em;
		color: white;
		text-align: center;
	
	}
	
	
	/* 매물 검색 창  */
	.search-room {
		border: 1px solid #9c9c9c;
		width: 850px;
		height: 350px;
		margin: 100px auto;
		padding: 50px 60px;
		border-radius: 10px;
	}	

	.search-title {
		font-size: 28px;
		color: white;
		font-family: 'MaplestoryOTFLight';
		text-align: center;
	}
	
	.search-box1 {
		border: 1px solid white;
		width: 750px;
		height: 70px;
		margin-top: 20px;
		
	}
	
	.search-box2 {
		/* border: 1px solid white; */
		width: 340px;
		height: 50px;
		/* background-color: white; */
		float: left;
	}
	
	.search-box2 > div {
		border-right: 1px solid #e0e0e0;
		float: left;
		width: 106px;
		height: 50px;
		font-size: 20px;
		/* background-color: pink; */
		text-align: center;
		padding: 10px 0px;
		font-size: 20px;
		font-family: 'NanumBarunGothic';
	}
	
	.search-box2 > .search-last {
		border-right: 0px;
	}
	
	.search-box2:nth-child(2) {
		margin-left: 60px;
	}
	
	.form-control {
		width: 610px;
		height: 50px;
		float: left;
	}
	
	.btn {
		background-color: #f1aeae;
   		color: white;
   		outline: none !important;
   		font-family: 'NanumBarunGothic';
   		margin-right: 5px;
   		height: 50px;
   		font-size: 20px;
   		width: 106px;
   		/* margin-left: 20px; */
	}
	
	
	/* 첫 페이지에서 원룸, 월세만 빼고 버튼 하얀색 */
	#btn2, #btn3, #btn5, #btn6 {
		background-color: white;
		color: #202020;
	}
	
	#btn-search {
		margin-left: 10px;
	}
	
	
	
	

</style>
</head>
<body>
<!-- <div class="wrap">  -->
<div class="main-wrap">
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp" %>
 
    <div class="main1">
         
         <!-- 매물 카운트 박스 -->
        <div class="box2">
           <div class="count-box" id="count-sbox1">
      			<span>실시간 매물</span>
      			<div class="cbox">20</div>
      		</div>
      		<div class="count-box" id="count-sbox2">
      			<span>전체 매물</span>
      			<div class="cbox">320</div>
      		</div>
      		<div class="count-box" id="count-sbox3">
      			<span>계약완료</span>
      			<div class="cbox">220</div>
      		</div>
        </div> 

    <!-- 검색 박스 -->
     <!--  <div class="search">
            <div id="search-title"><span class="glyphicon glyphicon-search"></span><span>원하는 방을 검색해보세요.</span></div>
            <div class="category-room category">
                <input type="button" value="원룸" class="btn2">
                <input type="button" value="투룸" class="btn2">
                <input type="button" value="오피스텔" class="btn2">
            </div>
            <div class="category-contract category">
                <input type="button" value="전세" class="btn2">
                <input type="button" value="월세" class="btn2">
                <input type="button" value="매매" class="btn2">
            </div>
            <div class="search-room">
                <input class="txt_btn1 txt1" type="text" value="지역, 지하철역을 검색해주세요.">
                <input class="txt_btn1 btn1" id="btn1" type="submit" value="검색">
            </div>
        </div> -->
        
        
        
        
        <!-- 검색창 -->
     	<div class="search-room">
     		<div class="search-title"><span class="glyphicon glyphicon-search"></span> 원하는 방을 검색해보세요.</div>
     		
     		<!-- 원룸, 투룸, 전세, 월세 -->
     		<div class="search-box1">
     		
     			<div class="search-box2">
     				<div class="btn btn-big" id="btn1">원룸</div>
     				<div class="btn btn-big" id="btn2">투룸</div>
     				<div class="btn btn-big" id="btn3">오피스텔</div>
     			</div>
     			
     			<div class="search-box2">
     				<div class="btn btn-big2" id="btn4">월세</div>
     				<div class="btn btn-big2" id="btn5">전세</div>
     				<div class="btn btn-big2" id="btn6">매매</div>
     			</div>
     			
     		</div>
     		
     		
     		<!-- 지하철역 검색 -->
     		<div class="search-box1">
     			<input type="text" class="form-control" placeholder="지역, 지하철역을 검색해주세요.">
     			<button class="btn btn-outline-secondary" type="button" id="btn-search">검색하기</button>
     		</div>
     	</div>
     	
     	
     	
    
    </div>
            

    <div class="section1">
        <div class="content">
            <div id="content1" class="section1-content">
                <a href="">이용가이드</a>
                <div class="section1-content2">
                    이용가이드 1<br>
                    이용가이드 2<br>
                    이용가이드 3<br>
                    NEXON Lv2 Gothic<br>
                </div>
            </div>
            <div id="content2" class="section1-content">
                <a href="">전자계약서 바로알기</a>
                <div class="section1-content2">
                    전자계약서 바로알기1<br>
                    전자계약서 바로알기2<br>
                    전자계약서 바로알기3<br>
                    NanumBarunGothic<br>
                </div>
            </div>
            <div id="content3" class="section1-content">
                <a href="">공지사항</a>
                <div class="section1-content2">
                    공지사항1<br>
                    공지사항2<br>
                    공지사항3<br>
                    InfinitySans-RegularA1<br>
                </div>
            </div>
        </div>
    </div>
    
</div><!-- main-wrap -->
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
<!-- </div> -->


<script>

/* 브라우저 창 띄우면 white로 나옴 -> 메인에서 transparent */
$(document).ready(function() {
	$("header").hover(function() {
		$("#header").css("background-color", "transparent");})
})


/* 스크롤 시  */

$(window).scroll(function() {
	
	if($(this).scrollTop() > 0) {
		$(".header-ul3").css("color", "#202020");
		$("#header").css("background-color", "white");
		$("header").hover(function() {
			$("#header").css("background-color", "white");
		});
	
	} else {
		$(".header-ul3").css("color", "white");
		$("#header").css("background-color", "transparent");
		$("header").hover(function() {
			$("#header").css("background-color", "transparent");})
	}
});



</script>
</body>
</html>