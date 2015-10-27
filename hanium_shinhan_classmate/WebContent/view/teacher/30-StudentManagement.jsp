<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="Study.StudyDAO"%>
     <%@page import="Study.StudyDTO"%>
    <%@ page import="java.util.ArrayList"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/serial.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/none.js"></script>
<meta charset="UTF-8">

<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<style type="text/css">
html, body {height:100%; margin:0; padding:0;}
#myCenterDiv {
    left:0%;   
    text-align: left;
    top:0; left:0%; width:100%; height:100%;
    background-color:#fafbd3;
}
#chartdiv {
	width		: 100%;
	height		: 250px;
	font-size	: 11px;
}

</style>
<%
	StudyDAO dao = new StudyDAO();
	String CLASS_ID = (String)session.getAttribute("CLASS_ID");
	ArrayList<StudyDTO> List = dao.selectScoreAvgList(CLASS_ID);
	ArrayList<StudyDTO> month = dao.selectMonthAvg(CLASS_ID);
	request.setAttribute("MONTH",month);
	request.setAttribute("List",List);

%>
<script  type="text/javascript">
var MonthList = new Array(); 
var AvgList = new Array();
var resultList = new Array();
<c:forEach var="MONTHs"  items="${MONTH}" varStatus="i">	
	var x = '${MONTHs.getAVG()}';
	var y = '${MONTHs.getMONTH()}';
	AvgList.push(x);
	MonthList.push(y);
</c:forEach>
AvgList[MonthList]
for(i=0;i<12;i++){
	resultList[MonthList[i]]=AvgList[i];
	
}

var chart = AmCharts.makeChart("chartdiv", {
    "type": "serial",
    "theme": "none",
     "pathToImages":"http://www.amcharts.com/lib/3/images/",
    "dataProvider": [{
        "country": "1월",
        "score": resultList[1],
        "color": "#FF0F00"
    }, {
        "country": "2월",
        "score": resultList[2],
        "color": "#FF6600"
    }, {
        "country": "3월",
        "score": resultList[3],
        "color": "#FF9E01"
    }, {
        "country": "4월",
        "score": resultList[4],
        "color": "#FCD202"
    }, {
        "country": "5월",
        "score": resultList[5],
        "color": "#F8FF01"
    }, {
        "country": "6월",
        "score": resultList[6],
        "color": "#B0DE09"
    }, {
        "country": "7월",
        "score": resultList[7],
        "color": "#04D215"
    }, {
        "country": "8월",
        "score": resultList[8],
        "color": "#0D8ECF"
    }, {
        "country": "9월",
        "score": resultList[9],
        "color": "#0D52D1"
    }, {
        "country": "10월",
        "score": resultList[10],
        "color": "#2A0CD0"
    }, {
        "country": "11월",
        "score": resultList[11],
        "color": "#8A0CCF"
    }, {
        "country": "12월",
        "score": resultList[12],
        "color": "#CD0D74"
    }],
    
    "startDuration": 1,
    "graphs": [{
        "balloonText": "<b>[[category]]: [[value]]</b>",
        "colorField": "color",
        "fillAlphas": 0.9,
        "lineAlpha": 0.4,
        "type": "column",
        "valueField": "score"
    }],
    "chartCursor": {
        "categoryBalloonEnabled": false,
        "cursorAlpha": 0,
        "zoomable": false
    },
    "categoryField": "country",
    "categoryAxis": {
        "gridPosition": "start",
        "labelRotation": 45
    },
    "amExport":{}
     
});

</script>

<title>30page</title>
</head>
<body>
	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>학생 역량 관리</h1>
</div>
<div style="margin-top:5%; margin-left:20px">
 <h3>우리반 등수</h3>
</div>
<div id="context" class="content" style="overflow: scroll;overflow-x:hidden; height:150px" data-role="none" >

<table  style="width:95%; margin:auto;" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
     <thead>
       <tr>
         <th colspan=""style=text-align:center;>순위</th>
         <th colspan=""style=text-align:center;>이름</th>
         <th colspan=""style=text-align:center;>평균점수</th>
       </tr>
     </thead>
     <tbody>
     <c:forEach var="Lists"  items="${List}" varStatus="i">	
       <tr>
         <td><c:out value="${i.count }"/></td>   
         <td><c:out value="${Lists.getUSER_NAME() }"/></td>   
         <td><c:out value="${Lists.getAVG() }"/></td>
      
         </tr>
        </c:forEach>
       </tbody>
       </table>
       
       </div>
       
       <div id="context" class="content" style="" data-role="none">
<div style="margin-top:5%; margin-left:20px">
 <h3>월별 학생 평균점수</h3>
</div>
<div>
	<input type="hidden" value="70" id="month1"/>
</div>
<div id="chartdiv"></div>	
	</div>
	</div>
	
</body>
</html>