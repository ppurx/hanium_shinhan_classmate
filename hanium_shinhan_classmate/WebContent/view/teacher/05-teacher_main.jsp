<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import="Class.ClassDAO"%>
     <%@page import="Class.ClassDTO"%>
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
    top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}
@font-face {
  font-family: 'Nanum Brush Script';
  font-style: normal;
  font-weight: 400;
  src: url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.eot);
  src: url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.eot?#iefix) format('embedded-opentype'),
       url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.woff2) format('woff2'),
       url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.woff) format('woff'),
       url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.ttf) format('truetype');
}
</style>

<script type="text/javascript">

</script>
<title>teacher main</title>
</head>
<body>
<%
			ClassDAO dao = new ClassDAO();
			ArrayList<ClassDTO> List = dao.selectClassList_Teacher((String)session.getAttribute("id"));
			request.setAttribute("List",List);
			
	%>	
	<div id="myCenterDiv">
	<div data-role="header"style="background-color:#04B486;">
	<h1>CLASSMATE</h1>
	<a href="#add-form" data-icon="gear" data-iconpos="notext" style="background-color:#04B486;">Add</a>
		<a href="#nav-panel" data-icon="bars" data-iconpos="notext" style="background-color:#04B486;">Menu</a>
		
	</div><!-- /header -->
	<div data-role="panel" data-display="overlay" data-theme="b" id="nav-panel" data-position="right">
       
	
       
            <ul data-role="listview">
			<li style="margin-top:8%"><a  data-ajax="false" href="../teacher/27-Question.html">학습부여</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/32-Q&A(teacher).html">Q&A</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/28-twobutton.html">반 관리</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/34-Notice(teacher)1.jsp">공지사항</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/24-board2.html">자유게시판</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/31-MyInformation(teacher).html">내 정보</a></li>
			<li style="margin-top:8%"><a  data-ajax="false" href="../teacher/37-Chat(teacher).html">반 채팅</a></li>
				
				
        </ul>
</div>
<div data-role="panel" data-position="left" data-display="overlay" data-theme="a" id="add-form">
        <form class="userform">
            <table align="center" width="90%" style="margin-top:7%">
			<tr>
				<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 : 황개<br><strong>&nbsp;선생님</strong></font></td>
				
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
	<table align="center" style="margin-top:20%">
		<c:forEach var="Lists"  items="${List}" varStatus="i">
		
			<c:if test="${i.index%2 == 0}">		
			<tr>		
				<td width="230px" height="150px"style="background-repeat: no-repeat;background-size:100%; position:relative;background-image: url(/hanium_shinhan_classmate/res/chok3.png);  ">
				<div style="position:relative;">
				<font size="6"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_SCHOOL_NAME()}"/></font> <br>
				<font size="4"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_NAME()}"/></font></div></td>
			
			</c:if>
			<c:if test="${i.index%2 != 0 }">
				<td width="230px" height="150px"style="background-repeat: no-repeat;background-size:100%; position:relative;background-image: url(/hanium_shinhan_classmate/res/chok3.png);  ">
				<div style="position:relative;">
				<font size="6"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_SCHOOL_NAME()}"/></font> <br>
				<font size="4"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_NAME()}"/></font></div></td>
			</tr>
			</c:if>
		
		</c:forEach>
	</table>
	
	
	 
	
	<div style="margin:15% 7% 0 7%">
	<a data-role="button" data-ajax="false" href="../teacher/06-MakeClass.jsp" id="btn1">반 개설</a>
	
	</div>
	</div>
</body>
</html>