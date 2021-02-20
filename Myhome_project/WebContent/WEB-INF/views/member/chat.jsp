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
	
	
	.chat-list {
		border-bottom: 1px solid #e6e5e5;
		width: 245px;
		height: 65px;
		background-color: white;
		margin-top: 10px;
		padding: 5px 15px;
		font-size: 14px;
		cursor: pointer;
	}
	

	.send {
		/* border: 1px solid black; */
		font-weight: bold;
		font-size: 14px;
		float: left;
		
	}
	
	.date {
		/* border: 1px solid black; */
		margin-left: 50px;
		text-align: right;
		font-size: 13px;
	}
	
	/* 미리보기 창 */
	.send-content {
		/* border: 1px solid black; */
		margin-top: 10px;
		height: 30px;
		font-size: 14px;
	}
	
	
	
	/* 채팅상세 */
	
	#chat-box {
		/* border: 1px solid black; */
		width: 250px;
		height: 220px;
		margin: 10px;
		padding: 5px;
		background-color: white;
		font-family: 'NanumBarunGothic', sans-serif;
		visibility: hidden;
		position: absolute;
		top: 70px;
	}
	
	.send-date {
		/* border: 1px solid black; */
		min-width: 240px;
		min-height: 55px;
		
	}
	
	.sender, .fromme {
		/* border: 1px solid black; */
		font-weight: bold;
		font-size: 14px;
		
	}
	
	/* 텍스트창 길이에 맞게 따라가야 함 */
	.sendtime {
		/* border: 1px solid black; */
		margin-left: 5px;
		margin-top: 2px;
		width: 80px;
		font-size: 11px;
		color: #868686;
	}
	
	/* 텍스트 창
	텍스트 길이에 따라 width, height auto
	 */
	.send-content2 {
		border: 1px solid #f1aeae;
		margin-top: 10px;
		width: 200px;
		min-height: 20px;
		padding: 5px 10px; 
		font-size: 14px;
		border-radius: 10px;
		color: #202020;
		border-radius: 10px;
	}
	
	
	/* 텍스트창 & 보내기 버튼 */
	
	.text-submit {
		/* border: 1px solid black; */
		width: 280px;
		height: 100px;
		position: relative;
		top: 80px;
		visibility: hidden;
	}
	
	#chat-reply {
		border: 1px solid #afafaf;
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
	
	#chat-submit:active {
		border: 1px solid #f1aeae;
		background-color: white;
		color: #f1aeae;
	}
	
	#send-fromme {
		text-align: right;
		margin-top: 10px;
	}
	
	.send-content3 {
		border: 1px solid #f1aeae;
		margin-top: 10px;
		width: 100px;
		min-height: 20px;
		padding: 5px 10px; 
		font-size: 14px;
		border-radius: 10px;
		color: white;
		border-radius: 10px;
		background-color: #f1aeae;
		float: right;
		
	}
	
	
	
	
	
</style>
</head>
<body>
	
	<!-- 채팅창 -->
	<div id="chatmode">
		
		<!-- 채팅헤더 -->
   		<div id="chatstart">
   			<div id="chat-logo"></div>
   			<div id="chat-title">채팅하기</div>
   			<div class="icon-out" id="chat-out"></div>
   		</div>
   		
   		<!-- 채팅리스트 -->
   		<div class="chat-list">
	   		<div class="send">마이홈</div>
	   		<div class="date">2020-02-01</div>
	   		<div class="send-content">회원님...</div>
   		</div>
   		
   		<div class="chat-list">
	   		<div class="send">왕만두</div>
	   		<div class="date">2020-02-01</div>
	   		<div class="send-content">왕만두 팔아요</div>
   		</div>
   		
   		
   		<!-- 채팅 상세 -->
   		<div id="chat-box">
	   		<div class="sender">마이홈 <span class="sendtime">2021-02-20</span></div>
	   		<div class="send-content2">만두 아직 안팔렸어요.</div>
	   		
	   		
	   		<div class="fromme" id="send-fromme">삼다수<span class="sendtime">2021-02-20</span></div>
	   		<div class="send-content3">살게요.</div>
	   		
   		</div>
   		
   		
   		<!-- 텍스트 보내기  -->
   		<div class="text-submit">
   			<input type="text" id="chat-reply">
   			<input type="submit" id="chat-submit" value="보내기">
   		</div>
  
    </div>
    
    <script>
    
	/* 채팅 */
	
		/* 채팅창 클릭 시 리스트, 채팅창 띄우기 */
		$("#chat").click(function() {
			$(".chat-list").css("visibility", "visible");
			$("#chatmode").css("visibility", "visible");
		});

		/* 나가기 클릭 시 hidden */
    	$("#chat-out").click(function() {
			$("#chatmode").css("visibility", "hidden");
			$("#chat-box").css("visibility", "hidden");
			$(".text-submit").css("visibility", "hidden");
			$(".chat-list").css("visibility", "hidden");
		});
		
		/* 채팅 상세 클릭 시 리스트 hidden, 텍스트&submit 보이기 */
    	$(".chat-list").click(function() {
			$(".chat-list").css("visibility", "hidden");
			$("#chat-box").css("visibility", "visible");
			$(".text-submit").css("visibility", "visible");
		});
    	
    
    </script>
	
	
</body>
</html>