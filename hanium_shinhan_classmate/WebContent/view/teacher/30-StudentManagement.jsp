<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<meta charset="utf-8">

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
	<div data-role="header"style="background-color:#04B486;">
	
	<!-- 로그아웃 확인-->
	<div data-role="popup" id="popupDialog" data-overlay-theme="b" data-theme="b" >
	
	    <div role="main" class="ui-content" style=" text-align: center;">		
			<h3 style="margin:auto">로그아웃 하시겠습니까?</h3>
			<p> </p>
				<a data-ajax="false" href="#" data-role="button" data-inline="true" style="margin-right:8%" id="logoutOK">&nbspYES&nbsp</a>
				<a data-ajax="false" href="#" data-role="button" data-inline="true" style="margin-left:8%" data-rel="back">&nbsp&nbspNO&nbsp&nbsp</a>
							        
	    </div>
	</div>
	<!-- //로그아웃 확인 -->
	<h1>CLASSMATE</h1>
	<a href="#add-form" data-icon="gear" data-iconpos="notext" style="background-color:#04B486;">Add</a>
		<a href="#nav-panel" data-icon="bars" data-iconpos="notext" style="background-color:#04B486;">Menu</a>
		
	</div><!-- /header -->
	<div data-role="panel" data-display="overlay" data-theme="b" id="nav-panel" data-position="right">
       
              <ul data-role="listview">
			<li style="margin-top:8%"><a  data-ajax="false" href="../teacher/27-Question.jsp">학습부여</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/32-Q&A(teacher).jsp">Q&A</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/28-twobutton.jsp">반 관리</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/34-Notice(teacher)1.jsp">공지사항</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/24-board2.jsp">자유게시판</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/31-MyInformation(teacher).jsp">내 정보</a></li>
			<li style="margin-top:8%"><a  data-ajax="false" href="../teacher/37-Chat(teacher).jsp">반 채팅</a></li>
			</ul>

	</div>
	
	<!-- /툴바 -->
<div data-role="panel" data-position="left" data-display="overlay" data-theme="a" id="add-form">
        <form class="userform" method="post" action="logout.member" name="logout">
            <table align="center" width="95%" style="margin-top:7%">
			<tr>
				<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 :<%=(String)session.getAttribute("name") %><br><strong>&nbsp;<%=(String)session.getAttribute("job") %></strong></font></td>
				
			</tr>
			<tr>
			</tr>
			<tr>
				<td align="center"><a data-ajax="false" style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;사진 등록&nbsp;&nbsp;&nbsp;</a></td><td align="center"><a data-ajax="false" style="margin-left:2%" href="../teacher/05-teacher_main.jsp" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;Main&nbsp;&nbsp;&nbsp;</a></td>
			</tr>	
			<tr>
				<td align="center" colspan="2"><a href="#popupDialog" data-rel="popup" data-position-to="window" data-transition="pop" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Logout</a></td></tr>
		</table>
		
        </form>
</div>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>가입승인</h1>
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