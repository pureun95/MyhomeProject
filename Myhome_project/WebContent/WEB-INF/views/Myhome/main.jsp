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
	#header:hover {
		background-color: transparent !important;
	}

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
            <div class="sbox1">
                실시간매물
                <div class="xsbox1">35</div>
            </div>
            <div class="sbox1">
                전체매물
                <div class="xsbox1">250</div>
            </div>
            <div class="sbox1">
                계약완료
                <div class="xsbox1" id="xsbox1">130</div>
            </div>
        </div> 

        <!-- 검색 박스 -->
       <div class="search">
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
</body>
</html>