<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
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





</style>

<title>Main</title>
</head>

<%
	String class_id = request.getParameter("idx");
	session.setAttribute("CLASS_ID",class_id);
%>
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
	<div style="margin-top:10%; margin-left:50px; margin-right:30px">
	<table id=movie-table class=ui-responsive data-role="table" data-mode="toggle">
	
		<tr>
			<td><a data-ajax="false"  href="../student/12-study.jsp"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Study.png" width=60px; height=60px;></a></td>
			<td><a data-ajax="false"  href="../student/12-study.jsp"><font color="skyblue"><H1>학습하기</H1></font></a></td>
		</tr>
			<td><a data-ajax="false"  href="../student/15-QandA(student).jsp"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Notice.png" width=60px; height=60px;></a></td>
			<td><a data-ajax="false"  href="../student/15-QandA(student).jsp"><font color="skyblue"><H1>Q & A</H1></font></a></td>
		<tr>
			<td><a data-ajax="false"  href="../student/18-mypage(student).jsp"><img src="/hanium_shinhan_classmate/res/Icon/Icon_MyPage.png" width=60px; height=60px;></a></td>
			<td><a  data-ajax="false" href="../student/18-mypage(student).jsp"><font color="skyblue"><H1>My Page</H1></font></a></td>
		</tr>
		<tr>
			<td><a data-ajax="false"  href="../student/22-notice1.jsp"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Teacher.png" width=60px; height=60px;></a></td>
			<td><a data-ajax="false"  href="../student/22-notice1.jsp"><font style="float:left" color="skyblue"><H1>공지사항</H1></font></a></td>
		</tr>
		<tr>
			<td><a data-ajax="false"  href="../student/24-board2.jsp"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Board.png" width=60px; height=60px;></a></td>
			<td><a data-ajax="false"  href="../student/24-board2.jsp"><font color="skyblue"><H1>자유게시판</H1></font></a></td>
		</tr>
		<tr>
			<td><a data-ajax="false"  href="../student/36-Chat(student).jsp"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Chat.PNG" width=60px; height=60px;></a></td>
			<td><a data-ajax="false"  href="../student/36-Chat(student).jsp"><font color="skyblue"><H1>반 채팅</H1></font></a></td>
		</tr>
	</table>
	</div>
	</div>
</body>
</html>