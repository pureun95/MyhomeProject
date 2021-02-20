<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Myhome_project/css/footer.css">
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>

	#chatmode {
		border: 1px solid white;
		background-color: white;
		border-radius: 15px;
		width: 280px;
		height: 400px;
		position: fixed;
		right: 20px;
		bottom: 20px;
		box-shadow: 0px 1px 10px #c5c3c3;
		z-index: 1;
		visibility: hidden;
	}
	
	
	
	#chatstart {
		/* border: 1px solid white; */
		border-radius: 15px 15px 0px 0px;
		font-size: 20px;
		font-weight: bold;
		color: #202020;
		width: 270px;
		height: 60px;
		background-color: #f1aeae; 
		padding-left: 10px;
		box-shadow: 0px 5px 8px #b9b9b9;
		
				
	}
	
	
	#chat-logo {
		border: 1px solid black;
		width: 50px;
		height: 50px;
		float: left;
		background-image: url('../image/logo/5_1.png');
		background-size: cover;
    	background-position: 50% 50%;
    	margin-top: 5px;
    	float: left;
		
	}
	
	#chat-title {
		border: 1px solid black;
		width: 100px;
		margin-left: 20px;
		margin-top: 20px;
		float: left;
		font-family: 'MaplestoryOTFLight';
		font-size: 20px;
		color: #202020;
		
	}
	
	#chat-out {
		border: 1px solid black;
		width: 20px;
		height: 20px;
		float: left; 
		margin-top: 20px;
		margin-left: 55px;
		background-image: url('../image/out_white.png');
		background-size: cover;
    	background-position: 50% 50%;
		
	}
	
	
	#chat-out > span {
		font-size: 10px;
	}
	
	
	#chat-list {
		border-bottom: 1px solid #e6e5e5;
		width: 245px;
		height: 65px;
		background-color: white;
		margin-top: 10px;
		padding: 5px 15px;
		font-size: 14px;
	}
	

	.send {
		border: 1px solid black;
		font-weight: bold;
		font-size: 14px;
		float: left;
		
	}
	
	.date {
		border: 1px solid black;
		margin-left: 50px;
		text-align: right;
		font-size: 13px;
	}
	
	/* 미리보기 창 */
	.send-content {
		border: 1px solid black;
		margin-top: 10px;
		height: 30px;
		font-size: 14px;
	}
	
	
	
</style>

</head>
<body>
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


	<div id="chatmode">
   		<div id="chatstart">
   			<div id="chat-logo"></div>
   			<div id="chat-title">채팅하기</div>
   			<div class="icon-out" id="chat-out"></div>
   		</div>
   		<div id="chat-list">
	   		<div class="send">마이홈</div>
	   		<div class="date">2020-02-01</div>
	   		<div class="send-content">회원님...</div>
   		</div>
   		<div id="chat-list">
	   		<div class="send">왕만두</div>
	   		<div class="date">2020-02-01</div>
	   		<div class="send-content">왕만두 팔아요</div>
   		</div>
    </div>


    <div id="chat"></div>
    
    
<script>

	/* 채팅 */
	
	$("#chat").click(function() {
		$("#chatmode").css("visibility", "visible");
	});

</script>

</body>
</html>