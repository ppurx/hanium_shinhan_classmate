<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="COM.ComDAO2"%>
    <%@page import="COM.ComDTO2"%>
    <%@ page import="java.util.ArrayList"%>  
    <!-- jstl taglig 선언 -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript">
	window.onload = function(){
		​$("textarea").​​​​​​height(400);
		
	};
	
	$('#delete').click(function(){
		
		board.submit();
		
	});
</script>
<title>board detail</title>
</head>
<body>
	<%
		String idx = request.getParameter("idx");
		ComDAO2 dao = new ComDAO2();
		ComDTO2	dto = new ComDTO2();
		dto=dao.selectTest(idx);
	%>		
    
    <form name="board" action="boardDelete.com2" method="post">
	<div id="myCenterDiv">
	<div data-role="header"style="background-color:#04B486;">
	<h1>CLASSMATE</h1>
	<a href="#add-form" data-icon="gear" data-iconpos="notext" style="background-color:#04B486;">Add</a>
		<a href="#nav-panel" data-icon="bars" data-iconpos="notext" style="background-color:#04B486;">Menu</a>
		
	</div><!-- /header -->
	<div data-role="panel" data-display="overlay" data-theme="b" id="nav-panel" data-position="right">
       
            <ul data-role="listview">
                <li><a data-ajax="false"  href="../student/12-study.html">학습하기</a></li>
                <li><a data-ajax="false"  href="../student/15-QandA(student).html">Q&A</a></li>
                <li><a data-ajax="false"  href="../student/19-Stu_MyPage.html">My Page</a></li>
                <li><a data-ajax="false"  href="../student/22-notice1.html">공지사항</a></li>
                <li><a data-ajax="false"  href="../student/24-board2.html">자유게시판</a></li>
				<li style="margin-top:8%"><a data-ajax="false"  href="../student/36-Chat(student).html">반 채팅</a></li>
        </ul>

</div>
<div data-role="panel" data-position="left" data-display="overlay" data-theme="a" id="add-form">
        <form class="userform">
            <table align="center" width="90%" style="margin-top:7%">
			<tr>
				<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 : 황개<br><strong>&nbsp;학생</strong></font></td>
				
			</tr>
			<tr>
			</tr>
			<tr>
				<td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;사진 등록&nbsp;&nbsp;&nbsp;</a></td><td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;Main&nbsp;&nbsp;&nbsp;</a></td>
			</tr>	
			<tr>
				<td align="center" colspan="2"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data_inline="true">LOGOUT</a></td></tr>
		</table>
		
        </form>
</div>
	<div data-role="header" data-theme="b" >
    <h1>자유게시판</h1>
</div>
	 
	<table style="width:100%; margin-top:10%">
	
	<tr>
		<td><font style="margin:auto" size="5" face="Impact"><b>제목 : </b></font></td>
		<td><font style="float:left"><%=dto.getSubject() %></font></td>
	</tr>
	<tr>
		<td><font size="5" face="Impact"><b>작성자 : </b></font></td>
		<td><font id="writer" style="float:left"><%=dto.getUserID() %></font></td>
	</tr>
	<tr>
		<td><font size="5" face="Impact"><b>작성일 : </b></font></td>
		<td><font id="date" style="float:left"><%=dto.getRegidate() %></font></td>
	</tr>
	<tr>
		<td><font size="5" face="Impact"><b>내용 : </b></font></td>
		<td><font style="float:left"><%=dto.getTextarea() %></font></td>
	</tr>
	
	</table>
	
	
	
	<a data-ajax="false"href="../student/26-board-alter.jsp" data-role="button" data-inline="true" style=" margin-top:30px">수정</a>
    <a id="delete" data-ajax="false" href="../student/24-board2.html" data-role="button" data-inline="true" style=" margin-top:30px">삭제</a>
    <a data-ajax="false"href="../student/24-board2.jsp" data-role="button" data-inline="true" style=" margin-top:30px">목록</a>
	

	</div>
	</form>
</body>
</html>