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
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<!-- <link rel="stylesheet" href="/Myhome_project/css/boarduserver.css"> -->


<!-- 부트스트랩 사용가능한 템플릿 -->

<style>
	
	.boardwrap{
	    height: auto;
	    min-height: 100%;
	}
	
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
    	font-family: 'NanumBarunGothic';
    	color: #202020;
    	margin-bottom: 60px;
    	
    }
    
    /* myproperty css */
    .property-box {
    	border: 0px;
    	padding-left: 30px;
    }
    

   	/* 헤더 */
   	
	#mycontract {
		color: #f1acac;
	}   
	
	
	
	/* 전자계약 css */
	

    #adcontracttbl{
        width: 800px;
        margin-left: 20px;
        table-layout: fixed;
    }
    
    #adcontracttbl .headtr th {
        text-align: center;
        background-color: #ffe7e7;
        
    }

    .adcontacttd{
        text-align: center;
    }
    
    .info-color {
    	background-color: #ececec !important;
    }
    
    
    /*.adcontacttd>*/
    input[type="text"]{
        border: 0px solid #000;
        text-align: center;
        margin: 0px;
        padding: 0px;
        outline: none;
    }
    
    #adcontracttbl td{
       text-align: center;
    }

    #contractcontent{
        width: 700px;
        overflow: hidden;
        height:400px;
        resize: none;
        padding: 0px; 
    }
    
    .contractadd{
        overflow: hidden;
    }
    
    .low {
    	text-align: left;
    	padding: 30px 5px;
    
    }
    
    .low-title {
    	font-weight: bold;
    
    }
    
    
    .low > .underline {
    	text-decoration: underline;
    }
    
    .radio {
    	margin-left: 20px;
    }
    
    
    /* 암호입력 div 세로 크기 조절 */
    
    .vertical-align {
    	/* border: 1px solid black; */
   		width: 70px;
    	height: 30px;
    	padding: 5px 0px;
    }
    
    /* 계약하기/폐기하기 버튼 */
    
    
    .btn-contract {
   		/* border: 1px solid black; */
   		width: 850px;
   		height: 50px;
   		padding: 10px 330px;
   		margin-top: 70px;
   		float: left;
   }
   
   	 .btn-contract1  {
	  	background-color: #f1aeae;
	   	color: white;
	   	outline: none !important;
	   	font-family: 'NanumBarunGothic';
	   	border: 1px solid #f1aeae;
	   	margin-right: 15px;
   }
   
   .boardcover, .board-name{
		margin-left: 110px;
   }
 
	
	
</style>


</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp" %>
 
     <div class="container">
<%@include file="/WEB-INF/views/user/nav.jsp" %>
        <div class="boardcover">
            
		 
		 <!-- 리스트 -->
		 <div class="property-box">
		 	<div class="board-name">전자계약조회</div>		 	
         	 
        <form action="" id="form1">
   
   		<!-- 전자계약서 -->
        <div class="matching-board">
        
        	
			<div class="boardcover">
			
			<!-- 전세, 월세 라디오 버튼 -->
			<div class="radio">				
				<label class="custom-control-label" for="rd1">
					<input type="radio" name="rd1" id="rd1" class="">
					전세
				</label>
				
				<label class="custom-control-label" for="rd2">
					<input type="radio" name="rd1" id="rd2" class="">
					월세
				</label>
			<!-- radio 끝 -->
			</div>
				
				
				
			<table id="adcontracttbl" class="table table-condensed">					
				<tr class="headtr">
					<th class="adcontacttd title-color">계약번호</th>
					<td class="adcontacttd" colspan="2">123456</td>
					<th class="adcontacttd">계약일자</th>
					<td class="adcontacttd" colspan="3">2020-12-31</td>
					<th class="adcontacttd">계약상태</th>
					<td class="adcontacttd" colspan="2">계약완료</td>
				</tr>

				<tr class="headtr">
					<th class="adcontacttd info-color" colspan="10">부동산의 표시</th>
				</tr>
				
				<tr class="headtr">
					<th class="adcontacttd title-color">주소</th>
						<td class="adcontacttd" colspan="9" >서울특별시 강남구 역산동 테레란로 1324-1 1234호</td>
				</tr>
				
				<tr class="headtr">
					<th class="adcontacttd title-color">금액</th>
					<td class="adcontacttd" colspan="4" >1,100,000,000 원</td>
					<th class="adcontacttd title-color">계약금</th>
					<td class="adcontacttd" colspan="4" >100,000,000 원</td>
				</tr>
				
				
				<tr>
					<td class="adcontacttd" colspan="10">
										
						<!-- 법률 -->
						<div class="low">
											
						<span class="low-title">제 2조 (존속기간)</span> 임대인은 위 부동산을 임대차 목적대로 사용 수익할 수 있는 상태로 <span>2021년 00월 00일</span>
						까지 임차인에게 인도하며, 임대차 기간은 인도일로부터 <span class="underline">2021년 00월 00일</span>까지로 한다.<span class="underline">(00개월)</span>
						<br><br>
						<span class="low-title">제 3조 (용도변경 및 전대 등)</span> 임차인은 임대인의 동의없이 위 부동산의 용도나 구조를 변경하거나 전대 임차원 양도
						또는 담보 제공을 하지 못하게 하며 임대차 목적 이외의 용도로 사용할 수 없다.
						<br><br>
						<span class="low-title">제 4조 (계약의 해지)</span> 임차인이 제3조를 위반하였을 때 임대인은 즉시 본 계약을 해지할 수 있다.
						<br><br>
						<span class="low-title">제 5조 (계약의 종료)</span> 임대차계약이 종료된 경우에 임차인은 위 부동산을 원상으로 회복하여 임대인에게 반환한다. 
						<br><br>
						<span class="low-title">제 6조 (계약의 해제)</span> 임차인이 임대인에게 중도금(중도금이 없을 때는 잠금)을 지불하기 전까지,
						임대인은 계약금의 배액을 상환하고, 임차인은 계약금을 포기하고 본 계약을 해제할 수 있다.								
						<br><br>
						<span class="low-title">제 7조 (채무불이행과 손해배상)</span> 
						임대인 또는 임차인이 본 계약상의 내용에 대하여 불이행이 있을 경우 그 상대방은 불이행한 자에 대하여
						서면으로 최고하고 계약을 해제할 수 있다. 그리고 계약 당사자는 계약해제에 따른 손해배상을 각각 상대방에 대하여 청구할 수 있으며,
						손해배상에 대하여 별도의 약정이 없는 한 계약금을 손해배상의 기준으로 본다.
						<br><br>
						<span class="low-title">제 8조 (중개보수)</span> 
						개업공인중개사는 임대인과 임차인이 본 계약을 불이행함으로 인한 책임을 지지 않는다. 또한, 중개보수는 본 계약체결과 동시에
						계약 당사자 쌍방이 각각 지불하며, 개업공인중개사 고의나 과실없이 본 계약이 무효·취소 또는 해제되어도 중개보수는 지급한다.
						공동중개인 경우에 임대인과 임차인은 자신이 중개 의뢰한 개업공인중개사에게 각각 중개보수를 지급한다.
						(중개보수는 거래가액의<span class="underline">00%로</span> 한다.)
						<br><br>
						<span class="low-title">제 9조 (중개대상물확인·설명서 교부 등)</span> 
						개업공인중개사는 중개대상물 확인·설명서를 작성하고 업무보증관계증서(공제증서 등) 사본을 첨부하여 계약체결과 동시에
						거래당사자 쌍방에게 교부한다.
						</div>
										
					</td>
				</tr>

				
				<!-- 임차인 정보 -->
				<tr>
					<th class="adcontacttd info-color" colspan="10">임차인 정보 </th>
				</tr>


				<tr class="headtr">
					<th class="adcontacttd">계약자명</th>
					<td class="adcontacttd" colspan="3"><input type="text" style="width: 200px;" value="공인중개사사무소공인중개사"></td>
					<th class="adcontacttd" colspan="1">전화번호</th>
					<td class="adcontacttd" colspan="2"><input type="text" style="width: 140px;" value="010=1234-5678"></td>
					<th class="adcontacttd">주민번호</th>
					<td class="adcontacttd" colspan="2"><input type="text" value="123456-1234567"></td>					
				</tr>

							
					
				<tr class="headtr">
					<th class="adcontacttd" colspan="1">주소</th>
					<td class="adcontacttd" colspan="6"><input type="text" style="width: 450px;" value="서울특별시 영등포구 여의도동 여의도아파트 1234-123, 1234호"></td>
					<th class="adcontacttd" colspan="2">암호입력상태</th>
					<td class="adcontacttd" colspan="1"><input type="text" style="width: 80px; background-color: transparent;" value="해당무" disabled></td>
					<!-- 여기를  전자계약서 입력시에는 2,암호입력상태  조회시 1,암호임력  크기조절한다 -->
				</tr>		
				
				<!-- 암호입력 -->
				<tr class="headtr">
					<th class="adcontacttd" colspan="1"><div class="vertical-align">암호입력</div></th>
					<td class="adcontacttd" colspan="9"><input type="text" class="form-control" placeholder="암호를 입력해주세요."></td>
				</tr>		
					
					
									


			<!-- 임대인 정보 -->
				<tr>
					<th class="adcontacttd info-color" colspan="10">임대인 정보 </th>
				</tr>


				<tr class="headtr">
					<th class="adcontacttd">계약자명</th>
					<td class="adcontacttd" colspan="3"><input type="text" style="width: 200px;" value="공인중개사사무소공인중개사"></td>
					<th class="adcontacttd" colspan="1">전화번호</th>
					<td class="adcontacttd" colspan="2"><input type="text" style="width: 140px;" value="010=1234-5678"></td>
					<th class="adcontacttd">주민번호</th>
					<td class="adcontacttd" colspan="2"><input type="text" value="123456-1234567"></td>					
				</tr>

							
					
				<tr class="headtr">
					<th class="adcontacttd" colspan="1">주소</th>
					<td class="adcontacttd" colspan="6"><input type="text" style="width: 450px;" value="서울특별시 영등포구 여의도동 여의도아파트 1234-123, 1234호"></td>
					<th class="adcontacttd" colspan="2">암호입력상태</th>
					<td class="adcontacttd" colspan="1"><input type="text" style="width: 80px; background-color: transparent;" value="해당무" disabled></td>
					<!-- 여기를  전자계약서 입력시에는 2,암호입력상태  조회시 1,암호임력  크기조절한다 -->
				</tr>		
				
				
				<!-- 암호입력 -->
				<tr class="headtr">
					<th class="adcontacttd" colspan="1"><div class="vertical-align">암호입력</div></th>
					<td class="adcontacttd" colspan="9"><input type="text" class="form-control" placeholder="암호를 입력해주세요."></td>
				</tr>		
									
									
									
				<!-- 중개인 정보 -->
				<tr>
					<th class="adcontacttd info-color" colspan="10">중개인 정보 </th>
				</tr>


				<tr class="headtr">
					<th class="adcontacttd">계약자명</th>
					<td class="adcontacttd" colspan="3"><input type="text" style="width: 200px;" value="공인중개사사무소공인중개사"></td>
					<th class="adcontacttd" colspan="1">전화번호</th>
					<td class="adcontacttd" colspan="2"><input type="text" style="width: 140px;" value="010=1234-5678"></td>
					<th class="adcontacttd">주민번호</th>
					<td class="adcontacttd" colspan="2"><input type="text" value="123456-1234567"></td>					
				</tr>

							
					
				<tr class="headtr">
					<th class="adcontacttd" colspan="1">주소</th>
					<td class="adcontacttd" colspan="6"><input type="text" style="width: 450px;" value="서울특별시 영등포구 여의도동 여의도아파트 1234-123, 1234호"></td>
					<th class="adcontacttd" colspan="2">암호입력상태</th>
					<td class="adcontacttd" colspan="1"><input type="text" style="width: 80px; background-color: transparent;" value="해당무" disabled></td>
					<!-- 여기를  전자계약서 입력시에는 2,암호입력상태  조회시 1,암호임력  크기조절한다 -->
				</tr>							

				
				<!-- 암호입력 -->
				<tr class="headtr">				
					<th class="adcontacttd" colspan="1"><div class="vertical-align">암호입력</div></th>
					<td class="adcontacttd" colspan="9"><input type="text" class="form-control" placeholder="암호를 입력해주세요."></td>
				</tr>		
				
			</table>
							
				
       		<!-- boardcover  -->
       		</div>
       		
       	</div>
       		
       		
       		<!-- 계약하기 버튼 -->
       		<div class="btn-contract">
       			<input type="button" class="btn btn-contract1" value="계약하기">
       			<input type="button" class="btn btn-contract1" value="폐기하기">
       		</div>
       		
       	</form>
      

          <!-- property-box -->
         </div>
             
             
             
             
             
    <!-- container -->        
    </div>


</div> 
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>