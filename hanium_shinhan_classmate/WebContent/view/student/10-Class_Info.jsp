<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
    <%@page import="Class.ClassDAO"%>
     <%@page import="Class.ClassDTO"%>
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
    text-align:center;
    position:fixed; top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}





</style>
<script type="text/javascript">
	window.onload = function(){
		​$("textarea").​​​​​​height(400);
		
	};
</script>
<title>first page</title>
</head>
<body>
<%
	String idx = request.getParameter("idx");
	ClassDTO dto = new ClassDTO();
	ClassDAO dao = new ClassDAO();
	dto = dao.selectClass(idx);
%>
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
    <h1>반 정보</h1>
</div>


	<div style="margin-top:5%">
	
		<table style="width:90%; margin-left:7%" align="left" >
			<tr>
				<td align="left" colspan="2"><font size="6" style="font-weight:bolder">학교 이름 : <%=dto.getCLASS_SCHOOL_NAME() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="6" style="font-weight:bolder">반 이름 : <%=dto.getCLASS_NAME() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="4" style="font-weight:bolder">선생님 : <%=dto.getTEACHER_NAME() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="4" style="font-weight:bolder">개설 날짜 : <%=dto.getCLASS_FOUND_DATE() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="4" style="font-weight:bolder">개요</font></td>
			</tr>			
			<tr>
				<td width="5%"></td><td align="left"><font size="3" > <%=dto.getCLASS_CONTENT() %></font></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><a href="#" data-role="button" data-inline="true" style="margin-top:15%">가입 신청</a></td>
			</tr>
	</table>
	
	
	</div>

	</div>
</body>
</html>