<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>

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
	
	 <%@include file="student-toolbar.jsp"%>
	
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
			<td><a data-ajax="false"  href="chatFirst.class"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Chat.PNG" width=60px; height=60px;></a></td>
			<td><a data-ajax="false"  href="chatFirst.class"><font color="skyblue"><H1>반 채팅</H1></font></a></td>
		</tr>
	</table>
	</div>
	</div>
</body>
</html>