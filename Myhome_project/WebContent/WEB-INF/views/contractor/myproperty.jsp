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

<link rel="stylesheet" href="/team1_webproject/css/myproperty.css">

<style>

	#header {
		
		background-color: white;
	}
	
	body,html {
	    /* width: 100%; */
	    height: 100%;
	    margin: 0 auto;
	    padding: 0;
	}

	.container {
		border: 1px solid green;
		width: 1190px;
		margin: 0px auto;
		margin-top: 100px;
		position: relative;
		height: 1200px;
    }
    
</style>
</head>
<body>
	<div class="wrap">
	
	<!--header -->
	<%@include file="/WEB-INF/views/inc/header.jsp" %>


 	<div class="container">
 
	<!-- nav -->        
	<%@include file="/WEB-INF/views/inc/nav.jsp" %>

            <div class="section1-box3-box1">
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
                    <div class="img-property"><div class="state">계약완료</div></div>
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
                    <div class="img-property"><div class="state">게약완료</div></div>
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
    
    
    
    
    
</div>            

        

	<!-- footer -->
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>

	</div>   
</body>
</html>