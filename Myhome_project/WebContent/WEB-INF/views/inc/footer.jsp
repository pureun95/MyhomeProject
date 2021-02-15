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

</style>
<script>
    
   	/* footer함수 출처: https://nurilab.github.io/2020/04/27/follow_me_footer/ */
     /* function do_reposition_footer() {
        header_height = document.getElementsByTagName('header')[0].clientHeight + 2;
        content_height = document.getElementsByClassName('container')[0].clientHeight;
        footer_height = document.getElementsByTagName('footer')[0].clientHeight;

        body_height = header_height + content_height + footer_height;

        if (window.innerHeight > body_height) {
            t = window.innerHeight - header_height - footer_height - 2;
            document.getElementsByClassName('container')[0].style.height = t + 'px';
        }
    }
    
    
    window.addEventListener('DOMContentLoaded', function(event) {
        do_reposition_footer();
    });
    
    
    window.addEventListener('resize', function(event) {
        document.getElementsByClassName('container')[0].style.height = '';
        do_reposition_footer();
    });  */

</script>
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


    <div id="chat"></div>
</body>
</html>