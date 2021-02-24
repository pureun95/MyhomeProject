<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::전자계약관리</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/contractor-mypage.css">
<link rel="stylesheet" href="/Myhome_project/css/myproperty.css">



<style>
	.header {
		background-color : white;
	}
	
	.container {
        width: 1190px;
        height: 800px;
        margin: 0 auto;
        letter-spacing: -.2px;
        min-height:100%;
		padding-bottom:100px;
		border: 1px solid green;
		margin-top: 100px;
		z-index: -1;
    }
    
    .board-name {
    	border-left: 5px solid #f1aeae;
	    width: 810px;
	    /* height: 50px; */
	    padding-left: 10px;
	    font-size: 24px;
	    font-family: 'MaplestoryOTFLight';
	    color: #202020;
    	
    }
    
    
   	
   	.btn {
   		background-color: #f1aeae;
   		color: white;
   		outline: none !important;
   		font-family: 'NanumBarunGothic';
   		margin-right: 5px;
   	} 
   	
   	.btn:hover {
   		color: white; 
   	}
   	
    
   
   .search-text {
   		width: 300px;
   		outline: 0;
   		display: inline;
   
   }
   

	/* Auth css */
	
	.start {
		border: 1px solid #d6d6d6;
	    height: 280px;
	    margin-top: 150px;
	    padding: 30px 40px;
	    width: 380px;
	    border-radius: 20px;
	    margin-left: 300px;
	}
	

	
	.start > input {
		margin-bottom: 20px;
	} 
	
	
	.form-weight {
		width: 300px !important;
	}
	
	
	#btn-login {
		margin-left: 120px;
		display: inline;
		margin-top: 20px;
	}
	
    
    .login-title {
    	/* border: 1px solid black; */
	    width: 300px;
	    height: 60px;
	    margin-bottom: 30px;
	    padding-left: 50px;
	    font-size: 24px;
	    font-family: 'MaplestoryOTFLight';
	    color: #f1aeae;
    	
    }
    
    .login-title > span {
    	display: block;
    	float: left;
    	margin-left: 10px;
   	 	margin-top: 10px;
    }
    
    
   
    
  
</style>


</head>
<body>
 

<!-- 임차인 아이디를 입력하는 창 -->		
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp"%>
 
     <div class="container">
        <div class="boardcover">
            
    
		<!-- 리스트 -->
		<div class="property-box">
		 
		 
		<!-- 임차인 아이디 보내고 번호 받기 -->
  		<form method="post" id="form1" action="/Myhome_project/contractor/mypage-contract-insertok.do">
   		
   		<!-- 시작 -->
 		
        <div class="start">  
           	<div class="login-title">
           		<span>임차인 아이디 입력</span>
           	</div>
		    	<input type="text" class="form-control form-weight readonly" id="id" name="id" placeholder="아이디를 입력해주세요." required>
			<div class="search">
			</div>	
				
				<input type="submit" class="btn btn-outline-secondary" type="button" id="btn-login" value="확인">       		
       	</div>
       		
       	</form>
       
        
          
          
       <!-- property-box -->
       </div>
             
             
             
             
             
    <!-- container -->        
	</div>  
   
    
  
   </div>
           
            
</div>

<script>
    
		function test(id, pw) {
			$("#id").val(id);
			$("#pw").val(pw);
			$("#login_form").submit();//에뮬레이터 함수
		}
	
</script>


 
<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>