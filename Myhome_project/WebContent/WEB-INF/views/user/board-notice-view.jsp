<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/inc/asset.jsp" %>
<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">


<style>
	
	.boardwrap{
	    height: auto;
	    min-height: 100%;
	}
	
</style>


</head>
<body>
 
<div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/inc/bootstrap-header.jsp" %>
 
     <div class="container">

        <div class="content col-sm-12 col-md-9">
			<div>
				<h1>공지사항</small></h1>
                
                <table class="table view">
                    <tr>
                        <td>
                            <span class="seq">${dto.seqNotice}.</span>
                            <span class="subject">${dto.title}</span>
                            <span class="readcount">조회수(${dto.viewCount})</span>
                            <span class="date">작성일: ${dto.writeDate.substring(0,10)}</span>
                            <span class="name">작성자: ${dto.id}</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="content">                        	
                        	${dto.content}
                        </td>
                    </tr>
                    </table>
                    
                    
              </div>
         </div>
       
    </div>


</div> 
     <!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>
 
</body>
</html>