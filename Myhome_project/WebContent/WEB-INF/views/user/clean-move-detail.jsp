<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::업체상세페이지</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="/Myhome_project/css/nav.css">


<link rel="stylesheet" href="/Myhome_project/css/jquery-ui.css">
<script src="/Myhome_project/js/jquery-ui.js"></script>
<!-- 부트스트랩 사용가능한 템플릿 -->

<style>
	.container {
		font-size : 16px;
		font-family: 'NanumBarunGothic';
		border: 0px;
	}
	.boardwrap{
	    height: auto;
	    min-height: 100%;
	}
	.wrapbtn {
		margin-right: 30px;
	}
	.tbl {
		margin: auto;
		margin-top: 30px;
		width: 80%;
		text-align: center;
		height: 50px;
	}
	.tbl tr, .tbl td {
		border: 1px solid #ccc;
	}
	.img {
		width: 80%;
		border: 1px solid #ccc;
	}
	.tag {
		/* border-bottom: 1px solid #ccc  */
		font-weight: bold;
	}
	
.nanumbarungothic * {
font-family: 'NanumBarunGothic', sans-serif;
}

header {
    border-bottom: 1px solid #DBDCE0;
    width: 100%;
    height: 100px;
    margin: 0px auto;
    position: fixed;
    left: 0px;
    top: 0px;
 	z-index: 999;
 	
}

.header {
	background-color : white;
}

.header-ul {
    height: 100px;
    width: 1190px;
    margin: 0 auto;
    letter-spacing: -.2px;
    font-size: 19.2px;
    font-family: 'MaplestoryOTFLight';
}

.header-img {
    width: 70px;
    height: 70px;
    background-image: url('/Myhome_project/image/logo/5.png');
    background-size: cover;
    background-position: 50% 50%;
    float: left;
    cursor: pointer;
    position: relative;
    left: 30px;
    top: 20px;
}

.header-ul2 {
    width: 710px;
    height: 30px;
    color: #202020;
    position: relative;
    left: 460px;
    top: 55px;
    text-align: right;
    padding: 5px 0px;
}

.li-list {
    float: left;
    list-style: none;
    margin-right: 20px;
    cursor: pointer;
    position: relative;
    top: 3px;
    
}

li.header-li.li-list.header-li-scroll {
	font-size: 17.6px;
}


#last {
    clear: both;
} 
    

.li-list:last-child {
    margin-right: 0px;
}

.li-login {
    font-size: 14px;
    position: relative;
    left: 15px;
    top: 9px;
}



.li-list-hover {
    display:inline; 
    border-bottom: 3px solid #F1AEAE; 
    padding-bottom: 10px;
}




.li-list-scroll-hover {
    display:inline; 
    border-bottom: 3px solid #F1AEAE; 
    padding-bottom: 7px;
}

.header-scroll {
    height: 80px;
    background-color: white;
    
    /* font-size: 17.6px !important; */
}

.header-ul-scroll {
    height: 50px;
    /* font-size: 1.1em; */
}

.header-img-scroll {
    width: 55px;
    height: 55px;
    position: relative;
    left: 22px;
    top: 17px;
}

.header-ul2-scroll {
    color: #202020;
    position: relative;
    left: 450px;
    top: 36px;
    
    font-size: 17.6px;
}

#header:hover {
	background-color: white;
}

    #footer{
	    z-index: -1;
	    background-color: #F1AEAE;
	    text-align: center;
	    color: white;
	    line-height: 28px;
	    width: 100%;
	    margin: 0px auto;
	    height: 130px;
	    position: relative;
	    transform: translateY(-100%);    
	    transform: translateX(0%);
    }   
	


    #footer-content {
        position: relative;
        padding-top: 30px;
        font-family: 'NanumBarunGothic', sans-serif;
    }
    
    #footer-content2 > a {
        margin-right: 20px;
    }

    #chat {
        width: 80px;
        height: 80px;
        background-image: url('../image/chat.png');
        position: fixed;
        right: 20px;
        bottom: 20px;
        object-fit: cover;
        display: block;
        background-size: cover;
        background-position: 50% 50%;
    }
    
	.nav1-box1 {
		border: 0px;
	}
	
	
</style>



</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
 <header id="header">
    	<div class="header-wrap">
        <div class="header-ul">
            <div class="header-img"></div>
                <ul class="header-ul2">
                    <li class="header-li li-list">방찾기</li>
                    <li class="header-li li-list" onclick="location.href='/Myhome_project/user/uploadproperty.do';">방올리기</li>
                    <li class="header-li li-list">커뮤니티</li>
                    <li class="header-li li-list" onclick="location.href='/Myhome_project/user/boardusedlist.do';">중고장터</li>
                    <li class="header-li li-list" onclick="location.href='/Myhome_project/user/mypage.do';">마이페이지</li>
                    <li class="header-li li-list">고객센터</li>

                    <li id="logout" class="li-login li-list">로그아웃</li>
                </ul>
            </div>
            </div>
    </header> 
 
    <div class="container">
		
		
				<!-- nav -->
		<nav class="nav1">
	    	<div id="mypage-title">마이페이지</div>
	           <div class="nav1-box1">
	               <div class="nav1-content" id="nav1-content5">
	                   <div class="nav1-box1-img glyphicon glyphicon-user"></div>
	                   <div class="nav1-box1-content"><a id="myinfo" href="/Myhome_project/user/mypageinfo.do" class="nav-list">회원정보수정</a></div>
	               </div>
	               <div class="nav1-content" id="nav1-content6">
	                   <div class="nav1-box1-img glyphicon glyphicon-bookmark"></div>
	                   <div class="nav1-box1-content"><a id="mylike" href="/Myhome_project/user/mypagelike.do" class="nav-list">찜목록관리</a></div>
	               </div>
	               <div class="nav1-content" id="nav1-content7">
	                   <div class="nav1-box1-img glyphicon glyphicon-pencil"></div>
	                   <div class="nav1-box1-content"><a id="mywrite" href="/Myhome_project/user/mypagemywrite.do" class="nav-list">내가쓴글보기</a></div>
	               </div>
	                   <div class="nav1-content" id="nav1-content8">
	                   <div class="nav1-box1-img glyphicon glyphicon-align-justify"></div>
	                   <div class="nav1-box1-content"><a id="myorderlist" href="/Myhome_project/user/mypageorderlist.do" class="nav-list">매물거래내역</a></div>
	               </div>
	               <div class="nav1-content" id="nav1-content9">
	                   <div class="nav1-box1-img glyphicon glyphicon-resize-small"></div>
	                   <div class="nav1-box1-content"><a id="mymatching" href="/Myhome_project/user/mypagematching.do" class="nav-list">매칭매물관리</a></div>
	               </div>
	               <div class="nav1-content" id="nav1-content10">
	                   <div class="nav1-box1-img glyphicon glyphicon-list-alt"></div>
	                   <div class="nav1-box1-content"><a id="mycontract" href="/Myhome_project/user/mypagecontract.do" class="nav-list">전자계약관리</a></div>
	               </div>
	                   <div class="nav1-content" id="nav1-content11">
	                   <div class="nav1-box1-img glyphicon glyphicon-calendar"></div>
	                   <div class="nav1-box1-content"><a id="myreservation" href="/Myhome_project/user/mypagereservation.do" class="nav-list">이사청소예약</a></div>
	               </div>
	         </div>
	    </nav>
		<div id="infobox">
			<table class="tbl" id="tbl1">
				<tr>
					<td colspan="2" style="font-size: 24px; font-family: 'MaplestoryOTFLight';">이사/청소 업체 상세 페이지</td>
				</tr>
				<tr>
					<td rowspan="4"><img class="img" id="img1"src="../image/move_clean/3. 남목이사.jpg"></td>
					<td>
						<div class="tag">업체명</div>
						<div>남목24</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="tag">전화번호</div>
						<div>02-234-5566</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="tag">사업자등록번호</div>
						<div>212-12-11515</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="tag">가격</div>
						<div>80000원</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="tag">소개글</div>
						<div>안녕하세요 남목이사입니다.</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="tag">예약 가능일</div>
						<div>당일 불가.. 한달 뒤 까지 예약이 가능합니다.</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="tag">캘린더</div>
						<input type="text" style="width: 300px;" class="datepicker" id="datepicker" placeholder="박스를 클릭하여 날짜를 선택하세요.">
					</td>
				</tr>
				<tr>
					<td>
						<div class="tag">최근 후기 글</div>
						<div>1번 후기글입니다.</div>
						<div>2번 후기글입니다.</div>
						<div>3번 후기글입니다.</div>
					</td>
					<td>
						<div class="tag">평점</div>
						<div>2.5/5.0</div>
					</td>
				</tr>
			
			</table>
			
		</div>
		
		<div class="wrapbtn" style="text-align: right; margin-top: 40px;">
			<button type="button" class="btn btn-default" id="btn1" onclick="history.back()">이전화면</button>
			<button type="submit" class="btn btn-success" id="btn2">예약하기</button>
		</div>
       
    </div><!-- container -->


</div> 
    <!-- footer -->
	<div id="footer">
        <!-- <div id="footer-img"></div> -->
        <div id="footer-content">
            <div id="footer-content1">&copy; 2021</div>
            <div id="footer-content2">NOH PUREUN, PARK JIHYUN, LEE DAEHONG, LEE JUNOH, YUN JIHYUN, JANG JINYOUNG</div>
            <div id="footer-content2">
                <a>INFO</a>
                <a>HISTORY</a>
                <a>CONTACT</a>
            </div>
        </div>
    </div>


    <div id="chat"></div>

 	<script>
 		$('#datepicker').datepicker({
 			dateFormat: "yyyy-mm-dd",
            minDate: "+1",
            maxDate: "+1M"
 		});
 		
 		var btn2 = document.getElementById("btn2");
 		
 		btn2.onclick = function() {
 			location.href = '/Myhome_project/user/reservationlist.do';
 		};
 		
 	</script>
 	
</body>
</html>