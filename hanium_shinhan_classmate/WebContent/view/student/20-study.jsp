<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="Class.ClassDAO"%>
     <%@page import="Class.ClassDTO"%>
     <%@page import="Study.StudyDAO"%>
     <%@page import="Study.StudyDTO"%>
    <%@ page import="java.util.ArrayList"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/serial.js"></script>
<script type="text/javascript" src="http://www.amcharts.com/lib/3/themes/none.js"></script>
<meta charset="utf-8">

<style type="text/css">
html, body {height:100%; margin:0; padding:0;}
#myCenterDiv {
    position:absolute; 
    left:0%;   
    text-align: center;
    position:fixed; top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}
#chartdiv {
	width		: 100%;
	height		: 400px;
	font-size	: 11px;
}



</style>
<script type="text/javascript">

$(function(){	
	
	$('#ClassGroup').change(function(){	
		if($("#ClassGroup option:selected").val()!=0) startRequest();			
	});
	
	$('#percent').change(function(){
		$('#result').empty();
		if($("#percent option:selected").val()!=0) startRequest2();	
	});
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<script type="text/javascript">
		var xmlHttp;
		function createXMLHttpRequest() {
		    if (window.ActiveXObject) {
		        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		    } 
		    else if (window.XMLHttpRequest) {
		        xmlHttp = new XMLHttpRequest();
		    }
		}
		    
		function startRequest() {
		    createXMLHttpRequest();
		    xmlHttp.onreadystatechange = handleStateChange;
		    xmlHttp.open("GET", "graph.study?idx="+$("#ClassGroup option:selected").val(), true);
		    xmlHttp.send(null);
		}
		
		function startRequest2() {
			var per=$("#percent option:selected").val();
			var cla=$("#ClassGroup option:selected").val();
		    createXMLHttpRequest();
		    xmlHttp.onreadystatechange = handleStateChange2;
		    xmlHttp.open("GET", "percent.study?idx="+per+"&idx2="+cla, true);
		    xmlHttp.send(null);
		}    
		function handleStateChange2() {
		    if(xmlHttp.readyState == 4) {
		        if(xmlHttp.status == 200) {
		        	
		        	var p = xmlHttp.responseXML.getElementsByTagName("message")[0].firstChild.data;
		        	
		        	$('#result').append(p+"%");
		        }
		    }
		}
		        
		function handleStateChange() {
		    if(xmlHttp.readyState == 4) {
		        if(xmlHttp.status == 200) {
		        	month1 = xmlHttp.responseXML.getElementsByTagName("message")[0].firstChild.data;
		        	month2 = xmlHttp.responseXML.getElementsByTagName("message")[1].firstChild.data;
		        	month3 = xmlHttp.responseXML.getElementsByTagName("message")[2].firstChild.data;
		        	month4 = xmlHttp.responseXML.getElementsByTagName("message")[3].firstChild.data;
		        	month5 = xmlHttp.responseXML.getElementsByTagName("message")[4].firstChild.data;
		        	month6 = xmlHttp.responseXML.getElementsByTagName("message")[5].firstChild.data;
		        	month7 = xmlHttp.responseXML.getElementsByTagName("message")[6].firstChild.data;
		        	month8 = xmlHttp.responseXML.getElementsByTagName("message")[7].firstChild.data;
		        	month9 = xmlHttp.responseXML.getElementsByTagName("message")[8].firstChild.data;
		        	month10 = xmlHttp.responseXML.getElementsByTagName("message")[9].firstChild.data;
		        	month11= xmlHttp.responseXML.getElementsByTagName("message")[10].firstChild.data;
		        	month12 = xmlHttp.responseXML.getElementsByTagName("message")[11].firstChild.data;
		        	
		        	var chart =  AmCharts.makeChart("chartdiv", {
		        	    "type": "serial",
		        	    "theme": "none",
		        	     "pathToImages":"http://www.amcharts.com/lib/3/images/",
		        	    "dataProvider": [{
		        	        "country": "1월",
		        	        "score": month1,
		        	        "color": "#FF0F00"
		        	    }, {
		        	        "country": "2월",
		        	        "score": month2,
		        	        "color": "#FF6600"
		        	    }, {
		        	        "country": "3월",
		        	        "score": month3,
		        	        "color": "#FF9E01"
		        	    }, {
		        	        "country": "4월",
		        	        "score": month4,
		        	        "color": "#FCD202"
		        	    }, {
		        	        "country": "5월",
		        	        "score": month5,
		        	        "color": "#F8FF01"
		        	    }, {
		        	        "country": "6월",
		        	        "score": month6,
		        	        "color": "#B0DE09"
		        	    }, {
		        	        "country": "7월",
		        	        "score": month7,
		        	        "color": "#04D215"
		        	    }, {
		        	        "country": "8월",
		        	        "score": month8,
		        	        "color": "#0D8ECF"
		        	    }, {
		        	        "country": "9월",
		        	        "score": month9,
		        	        "color": "#0D52D1"
		        	    }, {
		        	        "country": "10월",
		        	        "score": month10,
		        	        "color": "#2A0CD0"
		        	    }, {
		        	        "country": "11월",
		        	        "score": month11,
		        	        "color": "#8A0CCF"
		        	    }, {
		        	        "country": "12월",
		        	        "score": month12,
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
		        	
		        }
		    }
		}
</script>
<title>Academic achievement</title>
</head>
<body>

<%
	StudyDAO dao1 = new StudyDAO();
	ClassDAO dao = new ClassDAO();
	ArrayList<ClassDTO> ClassList = dao.selectClassList((String)session.getAttribute("id"));
	request.setAttribute("ClassList",ClassList);
%>
	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="student-toolbar.jsp"%>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>학업성취도</h1>
</div>
	<FIELDSET style="float:left; margin-left:20px" data-role="controlgroup" data-type="horizontal">
	 <SELECT id="ClassGroup"> <OPTION selected value=0>소속 그룹</OPTION> 
	 <c:forEach var="Lists"  items="${ClassList}" varStatus="i">	 	
	 	<OPTION value="${Lists.getCLASS_ID()}"><c:out value="${Lists.getCLASS_SCHOOL_NAME()}"/> / <c:out value="${Lists.getCLASS_NAME()}"/></OPTION>	 
	 </c:forEach>
	 	 </SELECT></FIELDSET>
	 
	
	<div id="chartdiv"></div>	
	
	<table><tr><td>
	<FIELDSET style="float:left; margin-left:20px" data-role="controlgroup" data-type="horizontal">
	 <SELECT id="percent" data-mini="true" > <OPTION selected value=0>월</OPTION> 
	 <OPTION value=1>1월</OPTION> <OPTION value=2>2월</OPTION> <OPTION value=3>3월</OPTION>
	 <OPTION value=5>4월</OPTION> <OPTION value=5>5월</OPTION> <OPTION value=6>6월</OPTION>
	 <OPTION value=7>7월</OPTION> <OPTION value=8>8월</OPTION> <OPTION value=9>9월</OPTION>
	 <OPTION value=10>10월</OPTION> <OPTION value=11>11월</OPTION> <OPTION value=12>12월</OPTION>
	 </SELECT> </FIELDSET> 
	 </td><td><h>에서의 내 위치는 상위 <font id="result"></font></h></td></tr></table>
	</div>
	
	
</body>
</html>