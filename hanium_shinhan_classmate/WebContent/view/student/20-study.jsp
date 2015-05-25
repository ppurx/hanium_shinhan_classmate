<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<script>
var chart = AmCharts.makeChart("chartdiv", {
    "type": "serial",
    "theme": "none",
     "pathToImages":"http://www.amcharts.com/lib/3/images/",
    "dataProvider": [{
        "country": "1",
        "visits": 3025,
        "color": "#FF0F00"
    }, {
        "country": "2",
        "visits": 1882,
        "color": "#FF6600"
    }, {
        "country": "3",
        "visits": 1809,
        "color": "#FF9E01"
    }, {
        "country": "4",
        "visits": 1322,
        "color": "#FCD202"
    }, {
        "country": "5",
        "visits": 1122,
        "color": "#F8FF01"
    }, {
        "country": "6",
        "visits": 1114,
        "color": "#B0DE09"
    }, {
        "country": "7",
        "visits": 984,
        "color": "#04D215"
    }, {
        "country": "8",
        "visits": 711,
        "color": "#0D8ECF"
    }, {
        "country": "9",
        "visits": 665,
        "color": "#0D52D1"
    }, {
        "country": "10",
        "visits": 580,
        "color": "#2A0CD0"
    }, {
        "country": "11",
        "visits": 443,
        "color": "#8A0CCF"
    }, {
        "country": "12",
        "visits": 441,
        "color": "#CD0D74"
    }],
    
    "startDuration": 1,
    "graphs": [{
        "balloonText": "<b>[[category]]: [[value]]</b>",
        "colorField": "color",
        "fillAlphas": 0.9,
        "lineAlpha": 0.2,
        "type": "column",
        "valueField": "visits"
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
<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<title>Academic achievement</title>
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
                <li><a data-ajax="false"  href="../student/12-study.jsp">학습하기</a></li>
                <li><a data-ajax="false"  href="../student/15-QandA(student).jsp">Q&A</a></li>
                <li><a data-ajax="false"  href="../student/19-Stu_MyPage.jsp">My Page</a></li>
                <li><a data-ajax="false"  href="../student/22-notice1.jsp">공지사항</a></li>
                <li><a data-ajax="false"  href="../student/24-board2.jsp">자유게시판</a></li>
				<li style="margin-top:8%"><a data-ajax="false"  href="../student/36-Chat(student).jsp">반 채팅</a></li>
        </ul>

</div>
<div data-role="panel" data-position="left" data-display="overlay" data-theme="a" id="add-form">
        <form class="userform" method="post" action="logout.member" name="logout">
            <table align="center" width="95%" style="margin-top:7%">
			<tr>
				<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 :<%=(String)session.getAttribute("name") %><br><strong>&nbsp;<%=(String)session.getAttribute("job") %></strong></font></td>
				
			</tr>
			<tr>
			</tr>
			<tr>
				<td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;사진 등록&nbsp;&nbsp;&nbsp;</a></td><td align="center"><a style="margin-left:2%" href="../student/11-main(student).jsp" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;Main&nbsp;&nbsp;&nbsp;</a></td>
			</tr>	
			<tr>
				<td align="center" colspan="2"><a href="#popupDialog" data-rel="popup" data-position-to="window" data-transition="pop" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Logout</a></td></tr>
		</table>
		
        </form>
</div>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>학업성취도</h1>
</div>
	<FIELDSET style="float:left; margin-left:20px" data-role="controlgroup" data-type="horizontal">
	 <SELECT   > <OPTION selected value=1>소속 그룹</OPTION> 
	 <OPTION value=2>신한대학교</OPTION> <OPTION value=3>흥북대학교</OPTION> <OPTION value=4>흥신대학교</OPTION>
	 <OPTION value=5>한북대학교</OPTION>
	 </SELECT> </FIELDSET> 
	 
	
	<div id="chartdiv"></div>	
	<table><tr><td>
	<FIELDSET style="float:left; margin-left:20px" data-role="controlgroup" data-type="horizontal">
	 <SELECT  data-mini="true" > <OPTION selected value=1>월</OPTION> 
	 <OPTION value=2>1월</OPTION> <OPTION value=3>2월</OPTION> <OPTION value=4>3월</OPTION>
	 <OPTION value=5>4월</OPTION> <OPTION value=6>5월</OPTION> <OPTION value=7>6월</OPTION>
	 <OPTION value=8>7월</OPTION> <OPTION value=9>8월</OPTION> <OPTION value=10>9월</OPTION>
	 <OPTION value=11>10월</OPTION> <OPTION value=12>11월</OPTION> <OPTION value=13>12월</OPTION>
	 </SELECT> </FIELDSET> 
	 </td><td><h>에서의 내 위치는 상위n%</h></td></tr></table>
	</div>
	
</body>
</html>