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
<!-- 채팅 직접 하는 창 -->

<style>


	#chatmode {
		/* border: 1px solid white; */
		background-color: #efefef;
		border-radius: 15px;
		width: 280px;
		height: 400px;
		position: fixed;
		right: 20px;
		bottom: 20px;
		box-shadow: 0px 1px 10px #c5c3c3;
		z-index: 1;
		/* visibility: hidden; */
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
		/* border: 1px solid black; */
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
		/* border: 1px solid black; */
		width: 100px;
		margin-left: 20px;
		margin-top: 20px;
		float: left;
		font-family: 'MaplestoryOTFLight';
		font-size: 20px;
		color: white;
		
	}
	
	#chat-out {
		/* border: 1px solid black; */
		width: 15px;
		height: 15px;
		float: left; 
		margin-top: 25px;
		margin-left: 65px;
		background-image: url('../image/out_white.png');
		background-size: cover;
    	background-position: 50% 50%;
    	cursor: pointer;
		
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
	
	.send-date {
		/* border: 1px solid black; */
		min-width: 240px;
		min-height: 55px;
		
	}
	

	.send {
		/* border: 1px solid black; */
		font-weight: bold;
		font-size: 14px;
		
	}
	
	/* 텍스트창 길이에 맞게 따라가야 함 */
	.date {
		/* border: 1px solid black; */
		margin-left: 140px;
		width: 80px;
		font-size: 13px;
	}
	
	/* 텍스트 창
	텍스트 길이에 따라 width, height auto
	 */
	.send-content {
		/* border: 1px solid black; */
		margin-top: 10px;
		width: 200px;
		min-height: 20px;
		padding: 4px 5px; 
		font-size: 14px;
		border-radius: 10px;
		background-color: #a98888;
		color: white;
		border-radius: 10px;
	}
	
	#chat-box {
		/* border: 1px solid black; */
		width: 250px;
		height: 220px;
		margin: 10px;
		padding: 5px;
		background-color: white;
		font-family: 'NanumBarunGothic', sans-serif;
	}
	
	#chat-reply {
		/* border: 1px solid black; */
		border: none;
		width: 180px;
		height: 65px;
		margin: 0px 10px;
		border-radius: 0px 0px 0px 10px;
		background-color: white;
		font-family: 'NanumBarunGothic', sans-serif;
		font-size: 14px;
		padding: 5px;
		outline: none;
	}
	
	#chat-submit {
		/* border: 1px solid black; */
		border: none;
		width: 53px;
		height: 77px;
		padding: 5px;
		border-radius: 0px 0px 10px 0px;
		outline: none;
		background-color: #f1aeae;
		color: white;
		font-family: 'NanumBarunGothic', sans-serif;
		font-weight: bold;
		cursor: pointer;
	}
	
	
</style>
</head>
<body>
	
	<div id="chatmode">
   		<div id="chatstart">
   			<div id="chat-logo"></div>
   			<div id="chat-title">채팅하기</div>
   			<div class="icon-out" id="chat-out"></div>
   		</div>
   		<div id="chat-box">
	   		<div class="send">마이홈</div>
	   			<div class="send-date">
	   			<div class="send-content">만두 아직 안팔렸어요.</div>
	   		<div class="date">2020-02-01</div>
	   		</div>
   		</div>
   		
   		<!-- 텍스트 보내기  -->
   		<input type="text" id="chat-reply">
   		<input type="submit" id="chat-submit" value="보내기">
   		
    </div>
	
	
</body>
</html>