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


<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/contractor-mypage.css">
<link rel="stylesheet" href="/Myhome_project/css/myproperty.css">




<style>
	.header {
		background-color : white;
	}
	
	.container {
        width: 1190px;
        margin: 0 auto;
        letter-spacing: -.2px;
        min-height:100%;
		padding-bottom:100px;
		border: 1px solid green;
		margin-top: 100px;
		z-index: -1;
    }
    
    
    .matching-option {
    	border: 1px solid blue;
    	width: 400px;
    	height: 100px;
    	padding: 40px 0px;
    	font-size: 16px;
    	font-family: 'NanumBarunGothic';
    	color: #202020;
    }
    
    .who-matching {
    	border: 1px solid black;
    	margin-right: 20px;
    	text-decoration: none;
    	color: #202020;
    	cursor: pointer;
    
    }
    
    .who-matching:hover {
    	text-decoration: none;
    	color: #f1acac;
    }
    
    .who-matching:active {
    	text-decoration: none;
    	color: #f1acac;
    }
    
    .matching-board {
    	border: 1px solid blue;
    	width: 100%;
    	height: 700px;
    }
    
    #board {
    	width: 810px;
    	margin-top: 0px;
    	margin-left: 0px;
    
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
    
   	.table > .headtr {
   		line-height: 3px;
   	
   	}
   	
   	.btn {
   		background-color: #f1aeae;
   		color: white;
   		outline: none !important;
   		font-family: 'NanumBarunGothic';
   	} 
   	
   	
   	#button-addon3 {
	   	background-color: white;
	   	color: #202020;
	   	outline: none !important;
	   	font-family: 'NanumBarunGothic';
	   	border: 1px solid #f1aeae;
   }
   
   #button-addon3:active {
	   	background-color: #f1aeae;
	   	color: white;
	   	outline: none !important;
	   	font-family: 'NanumBarunGothic';
	   	border: 1px solid #f1aeae;
   }
   
   input {
   		width: 400px;
   
   }
    
    
    

</style>


</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/header.jsp" %>
 
     <div class="container">
     <%@include file="/WEB-INF/views/contractor/nav.jsp" %>
        <div class="boardcover">
            
		 
		 <!-- 리스트 -->
		 <div class="property-box">
		 
		 	<div class="matching-option">
		 		<button class="btn btn-outline-secondary" type="button" id="button-addon3">나에게 들어온 매칭</button>
            	<button class="btn btn-outline-secondary" type="button" id="button-addon3">내가 신청한 매칭</button>
		 	</div>
                
          
          <!-- 게시판 -->
          <div class="matching-board">
         	 
         	 <form action="" id="form1">
   
        <table id="board" class="table table-hover table-striped table-condensed">

            <tr class="headtr">
                <th class="firtd boardtd">매물번호</th>
                <th class="sectd boardtd">제목</th>
                <th class="thitd boardtd">닉네임</th>
                <th class="fortd boardtd">매칭신청</th>
            </tr>
            
            <tr class="boardtr">
                <td class="firtd boardtd">1</td>
                <td class="sectd boardtd"><span class="boardspan headspan">정말 좋은 방</span></td>
                <td class="thitd boardtd">아이구</td>
                <td class="fortd boardtd">
                	<button class="btn btn-outline-secondary" type="button" id="button-addon2">매칭수락</button>
            		<button class="btn btn-outline-secondary" type="button" id="button-addon2">매칭거절</button>  
       			</td>
            </tr>
            
            <tr class="boardtr">
                <td class="firtd boardtd">2</td>
                <td class="sectd boardtd"><span class="boardspan headspan">정말 좋은 방</span></td>
                <td class="thitd boardtd">아이구</td>
                <td class="fortd boardtd">
                	<button class="btn btn-outline-secondary" type="button" id="button-addon2">방올리기</button>
            		<button class="btn btn-outline-secondary" type="button" id="button-addon2">매칭취소</button> 
            	</td>
            </tr>
            
            <tr class="boardtr">
                <td class="firtd boardtd">3</td>
                <td class="sectd boardtd"><span class="boardspan headspan">정말 좋은 방</span></td>
                <td class="thitd boardtd">아이구</td>
                <td class="fortd boardtd">
                	<span>매칭완료(2021-02-01)</span>
            	</td>
            </tr>
        </table>
       

        
           


       <div class="boardserch">
        <div class="input-group mb-3">
            <input type="text" class="form-control search" placeholder="닉네임, 매물번호를 입력해주세요.">
          </div>
          <button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>
        </div>
    
        
    </form>
         
          </div>      
                
          <!-- property-box -->
          </div>
             
             
             
             
             
    <!-- container -->        
	</div>  
   
    
  
   </div>
           
            
</div>


 
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>