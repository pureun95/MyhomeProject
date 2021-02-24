<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::가격변화차트</title>

<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/board.css">


<%@include file="/WEB-INF/views/inc/asset.jsp" %>

<style>

	style>body, html {
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
	
	/* ------------------------------------------- */
	
	
	.boardcover{
	/* 	border: 1px solid tomato; */
		float: left;
		width:900px;
		height: auto;
		margin-left: 20px; 
	}
	
	#title {
		font-size: 24px;
		font-family: 'MaplestoryOTFLight';
		border-left: 5px solid #F1AEAE;
		margin: 30px 10px;
		padding : 0px 10px;
	}
	
	.chartbox{
		border : 1px solid black;
		margin-bottom : 10px;
	}
	
	.check{
		margin : 30px !important;
	}
	

	.btn {
	    cursor: pointer;
    	margin-bottom: 20px;
    	margin-right : 10px;
    	padding : 6px 12px;
    	background-color: #F1AEAE;
    	border-radius: 4px;
    	outline: none !important;
    	border : none;
    	color: aliceblue;
	    
	}   
	
	.search{
		text-align:center;
	   	padding: 10px;
	}
	
	#txt{
		margin-right: 10px;
		size: 100px;
	}
	
	
	.btns {
		text-align : right;
	}
	
	.search #txt {
		width: 200px;
		display: inline;
	}


</style>
</head>
<body>
    <div class="boardwrap">
 
 <!-- header -->
<%@include file="/WEB-INF/views/admin/header.jsp" %>
 
     <div class="container">
     <%@include file="/WEB-INF/views/admin/nav.jsp" %>
        <div class="boardcover">
             
		<div id="title">가격변화 차트 관리</div>
		
		
		<div class="chartbox">
			<input type="checkbox" class="check" style="zoom:1.5;">
			<div id="chart1"></div>
		</div>
		
		<div class="chartbox">
			<input type="checkbox" class="check" style="zoom:1.5;">
			<div id="chart2"></div>
		</div>
		
        <div class="search">
            	<input type="button" class="btn" value="선택한 차트 수정" id="serch">
            </div>
            
			

	</div>
	</div>
	</div>
	
	<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>

<script src="/Myhome_project//js/highcharts.js"></script>			
<script>
	
	Highcharts.chart('chart1', {
		
	    title: {
	        text: '매물종류별'
	    },
	
	    subtitle: {
	        text: '(월세, 전세, 매매)'
	    },
	
	    yAxis: {
	        title: {
	            text:'가격 (원)' 
	        }
	    },
	
	    xAxis: {
	        accessibility: {
	            rangeDescription: 'Range: 01월 to 12월'
	        },
	    	title: {
	    		text:'월'
	    	}
	    },
	
	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },
	
	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            },
	            pointStart: 01
	        }
	    },
	
	    series: [
	    	{
	            name: '월세',
	            data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175, 133144, 199999, 97031, 97031]
	        }, {
	        name: '전세',
	        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434, 32323, 33333, 32490, 32490]
	    }, {
	        name: '매매',
	        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387, 44444, 33333, 20185, 20185]
	    }],
	
	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }
	
	});
	
	
	
	Highcharts.chart('chart2', {
		
	    title: {
	        text: '방별'
	    },
	
	    subtitle: {
	        text: '(원룸, 투룸, 오피스텔)'
	    },
	
	    yAxis: {
	        title: {
	            text: '가격 (원)'
	        }
	    },
	
	    xAxis: {
	        accessibility: {
	            rangeDescription: 'Range: 01 to 12'
	        }
	    },
	
	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },
	
	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            },
	            pointStart: 01
	        }
	    },
	
	    series: [{
	        name: '원룸',
	        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175, 123745, 122345, 137133, 137133 ]
	    }, {
	        name: '투룸',
	        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434, 33333, 22222, 30282, 30282]
	    }, {
	        name: '오피스텔',
	        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387, 12345, 65432, 24377, 24377]
	    }],
	
	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }
	
	});
</script>
 
</body>
</html>