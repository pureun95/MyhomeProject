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
<link rel="stylesheet" href="/Myhome_project/css/main.css">

<style>

</style>
</head>
<body>
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/header.jsp" %>
 
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
            <div id="search-title"><span>원하는 방을 검색해보세요.</span></div>
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
    
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
    
</body>
</html>