<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Myhome::회원정보수정</title>
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
        margin: 0 auto;
        letter-spacing: -.2px;
        min-height:100%;
		padding-bottom:100px;
		border: 1px solid green;
		margin-top: 100px;
		z-index: -1;
    }
    
    .board-name {
    	border-bottom: 1px solid #eaecef;
    	width: 810px;
    	height: 50px;
    	padding-bottom: 10px;
    	font-size: 24px;
    	font-family: 'MaplestoryOTFLight';
    	color: #202020;
    	margin-bottom: 20px;
    	
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
    
    
    
    .matching-option > a {
    	cursor: pointer;
    	color: #202020;
    	margin-right: 20px;
    	float: left;
    	margin-left: 0px;
    }
    
     .matching-option > a:hover {
    	color: #f1acac;    	
    	text-decoration: none;
    }
    
    .matching-option > a:nth-child(2) {
    	color: #f1acac;
    	display: inline;
    	border-bottom: 2px solid #f1acac;
    	padding-bottom: 4px;
    }
    
    
    #tome {
    	color: #f1acac;
    	display: inline; 
    	border-bottom: 3x solid #202020; 
    	padding-bottom: 5px;
    	text-decoration: none;
    }
    
    .matching-board {
    	border: 1px solid blue;
    	width: 820px;
    	height: auto;
    }
    
    #board {
    	width: 810px;
    	margin-top: 0px;
    	margin-left: 0px;
    
    }
    
   .boardtd {
	   	text-align: center;
	    vertical-align: middle;
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
    
   	.boardtd {
   		text-align: center;
    	vertical-align: middle;
   	
   	} 
   	
   	.btn {
   		background-color: #f1aeae;
   		color: white;
   		outline: none !important;
   		font-family: 'NanumBarunGothic';
   		margin-right: 5px;
   	} 
   	
   	
   	#button-addon1 {
	   	background-color: #f1aeae;
	   	color: white;
	   	outline: none !important;
	   	font-family: 'NanumBarunGothic';
	   	border: 1px solid #f1aeae;
   }
   
   #button-addon2 {
	   	background-color: #f1aeae;
	   	color: white;
	   	outline: none !important;
	   	font-family: 'NanumBarunGothic';
	   	border: 1px solid #f1aeae;
   }
   
    
   #search-box {
   		border: 1px solid black;
   		width: 390px;
   		height: 60px;
   		margin: 10px 200px;
   		padding: 10px;
   }
   
   #search-text {
   		width: 300px;
   		outline: 0;
   		display: inline;
   
   }
   
   .temp {
	   	min-height: 35px;
	   	border: 1px solid black;
	   	padding: 5px;
   
   }
   
   .paging {
  		border: 1px solid blue;
  		width: 810px;
  		height: 80px;
  		padding: 5px 250px;

   }

	
	.pagination > li > .page-a {
		color: #202020;
	                                                                 
	}
	
	
	/* info css */
	
	.start {
		border: 1px solid black;
		height: auto;
		margin-top: 40px;
		padding: 0px 240px;
		width: 800px;
	
	}
	
	.start > span {
		
		/* border: 1px solid black; */
		display: block;
		width: 250px;
		font-weight: bold;
	}
	
	.start > .desc {
		display: block;
		width: 200px;
		font-weight: bold;
		color: #pink;
	}
	
	.start > input {
		margin-bottom: 40px;
		dispaly: block;
	} 
	
	#nickname {
		margin-bottom: 2px;
	}
	
	.start > span > input:nth-child(1) {
		margin-left: 20px;
	}
	
	.form-weight {
		width: 300px !important;
	}
	
	.tel {
		width: 80px !important;
		display: inline !important;
		margin: 0px 10px;
	}
	
	#tel1 {
		margin-left: 0px;
	}
	
	.ssn {
		width: 135px !important;
		display: inline !important;
		margin: 0px 10px;
	}
	
	#ssn1 {
		margin-left: 0px;
	}
	
	.multiple {
		width: 300px !important; 
	}
	
	.form-control {
		margin-bottom: 20px !important;
	}
	
	.readonly {
		cursor: auto !important;
	}
	
	#btn-edit {
		margin-left: 70px;
		display: inline;
		margin-top: 30px;
	}
	
	#btn-out {
		background-color: white;
		border: 1px solid #f1aeae;
		color: #202020;
		margin-top: 30px;
	}
	
	#myinfo {
    	color: #f1acac;
    }
    
</style>


</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp" %>
 
     <div class="container">
     <%@include file="/WEB-INF/views/contractor/nav.jsp" %>
        <div class="boardcover">
            
    
    <!-- 관심지역 script -->        
	<script>
	
 			var midArray = [];
			<c:forEach var="middle" items="${middle}">
			   midArray.push({"seq":"${middle.seq}", "mLocation":"${middle.mLocation}", "location":"${middle.location}"});
			</c:forEach>
			
			var endArray = [];
			<c:forEach var="end" items="${end}">
				endArray.push({"seq":"${end.seq}", "mLocation":"${end.mLocation}", "location":"${end.location}"});
			</c:forEach> 
			
			
			$(function() {
			   $("#frontsel").change(function(e) {
			      var frontsel = $(this).val();
			      midCreate(frontsel);
			   });
			   midCreate($("#frontsel").val());
			});
			
			function midCreate(frontsel) {
				$("#middlesel").children().remove();
				var html = "";
				$(midArray).each(function(i, elem) {
					//console.log(frontsel + " == " + elem.mseq);
					if(frontsel == elem.mLocation) {
				         html += "<option value='" + elem.location + "'>" + elem.location + "</option>";
				      }
					});
				$("#middlesel").html(html);
				endCreate($("#middlesel").val());
			}
			
			$(function() {
				$("#middlesel").change(function(e) {
					var middlesel = $(this).val();
					endCreate(middlesel);
				});
				endCreate($("#middlesel").val());
			});
				
			function endCreate(middlesel) {
				$("#endsel").children().remove();
				var html = "";
				$(endArray).each(function(i, elem) {
					if(middlesel == elem.mLocation) {
						html += "<option value='" + elem.location + "'>" + elem.location + "</option>";
					}
				});
				$("#endsel").html(html);
			} 
			
		</script>


				 
		<!-- 리스트 -->
		<div class="property-box">
			<div class="board-name">회원정보수정</div>
		 	
		 	
  		<form method="post" id="form1" action="/Myhome_project/contractor/infoedit.do">
   		
   		<!-- 시작 -->
        <div class="start">
        	       	
	       <span>아이디</span>
	       <input type="text" class="form-control form-weight readonly" id="" readonly placeholder="your id" name="id"> 
			
			<span>공인중개소명</span> 			
			<input type="text" class="form-control form-weight readonly" id="" readonly placeholder="쌍용공인중개소" name="businessName">
			
			<span>사업자번호</span> 			
			<input type="text" class="form-control form-weight readonly" id="" readonly placeholder="210-123-4544" name="businessNum">		
			
			<span>비밀번호</span> 
	       	<input type="password" class="form-control form-weight" id="" name="password">
			
			<!-- 비밀번호 확인 제약 스크립트 만들기 -->
			<span>비밀번호확인</span>
			<input type="password" class="form-control form-weight" id="search-text" name="repassword">
			
			<span>주소</span>
			<input type="text" class="form-control" id="search-text" placeholder="서울시 동작구 상도동" name="address">
			
			<span>전화번호</span> 
			<input type="text" class="form-control tel" id="tel1" maxlength=3 name="tel1">-
			<input type="text" class="form-control tel" id="" maxlength=4 name="tel2">-
			<input type="text" class="form-control tel" id="" maxlength=4 name="tel3">
			
			<span>이메일</span>
			<input type="text" class="form-control" id="search-text" name="email">
			
			
			<!-- <span>관심매물</span>
			<select class="form-control multiple">
				<option>원룸</option>
				<option>투룸</option>
				<option>오피스텔</option>
			</select> -->
			
			
			<%-- <span><label for="siCode2">관심지역</label></span>
			<select title="시/도 선택" id="frontsel" name="frontsel" onchange="javascript:changeAreaList(1, this);" class="form-control multiple" id="frontsel" style="width:250px">
				<c:forEach var="front" items="${front}" varStatus="status">
					<option value="${front.location}">${front.location}</option>
				</c:forEach>
			</select>		
			
			
			<select title="시/군/구 선택"  name="middlesel" onchange="javascript:changeAreaList(1, this);" class="form-control multiple" id="middlesel" style="width:250px">
				<c:forEach var="front" items="${front}" varStatus="status">
					<option value="${front.location}">${front.location}</option>
				</c:forEach>
			</select>		
			
			
			<select title="동/읍/면 선택"  name="endsel" onchange="javascript:changeAreaList(1, this);" class="form-control multiple" id="endsel" style="width:250px">
				<c:forEach var="front" items="${front}" varStatus="status">
					<option value="${front.location}">${front.location}</option>
				</c:forEach>
			</select> --%>
			
			<input type="submit" class="btn btn-outline-secondary" type="button" id="btn-edit" value="수정하기">
			<input type="submit" class="btn btn-outline-secondary" type="button" id="btn-out" value="회원탈퇴">
       		
       		<!-- 회원번호 -->
       		<input type="hidden" name="seq" value="${dto.seq}">
       		
       	</div>
       		
       	</form>
       
        
       
		
        
        
    
         
              
          
          
          
          
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