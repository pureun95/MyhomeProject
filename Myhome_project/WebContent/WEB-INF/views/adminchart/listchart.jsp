<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%



%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyHome::체크리스트 게시판 관리</title>

<link rel="stylesheet" href="/Myhome_project/css/template.css">
<link rel="stylesheet" href="/Myhome_project/css/bootstrap.css">
<link rel="stylesheet" href="/Myhome_project/css/board.css">
  
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>




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
	
/* ****************************************************************************** */	
.highcharts-figure, .highcharts-data-table table {
    min-width: 360px; 
    max-width: 800px;
    margin: 1em auto;
}

.highcharts-data-table table {
	font-family: 'NanumBarunGothic';
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}
.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}
.highcharts-data-table th {
	font-weight: 600;
    padding: 0.5em;
}
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
}
/* ****************************************************************************** */

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
			<figure class="highcharts-figure">
			    <div id="container"></div>
			</figure>
		</div>
		
		<div class="chartbox">
			<input type="checkbox" class="check" style="zoom:1.5;">
			<figure class="highcharts-figure">
			    <div id="container2"></div>
			</figure>
		</div>
		
		
            
            <div class="search">
            	<input type="button" class="btn" value="선택한 차트 수정" id="serch">
            </div>
            
			

	</div>
	</div>
	</div>
	
	<!-- footer -->
<%@include file="/WEB-INF/views/inc/footer.jsp" %>

<script type="text/javascript">
			
	
Highcharts.chart('container', {

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

    series: [
    
/*     <c:forEach>
    {
        name: '월세',
        data: [
        	<c:forEach>
        	43934,
        	</c:forEach>52503, 57177, 69658, 97031, 119931, 137133, 154175]
    }
    
    </c:foreach>, { */
    	{
            name: '월세',
            data: [43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175, 133144, 199999, 97031, 97031]
        }, {
        name: '전세',
        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434, 32323, 33333, 32490, 32490]
    }, {
        name: '매매',
        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387, 44444, 33333, 20185, 20185]
    }/* , {
        name: 'Project Development',
        data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
    }, {
        name: 'Other',
        data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
    } */],

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



Highcharts.chart('container2', {
	
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
    }/* , {
        name: 'Project Development',
        data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
    }, {
        name: 'Other',
        data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
    } */],

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