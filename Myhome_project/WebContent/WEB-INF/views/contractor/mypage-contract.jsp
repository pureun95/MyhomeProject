<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/Myhome_project/css/template.css">
<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>

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

 <!-- header -->
	<%@include file="/WEB-INF/views/inc/header.jsp" %>
 
    <div class="container">
		 <%@include file="/WEB-INF/views/inc/nav.jsp" %>
    </div>
    
     <!-- footer -->
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>

</div>    
</body>
</html>