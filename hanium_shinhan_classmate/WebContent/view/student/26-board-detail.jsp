<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="COM.ComDAO2"%>
    <%@page import="COM.ComDTO2"%>
    <%@ page import="java.util.ArrayList"%>  
    <!-- jstl taglig 선언 -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
$(function(){
	$('#delete').click(function(){		
		board.submit();
			
	});
	$('#logoutOK').click(function(){			
		logout.submit();
	});
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
	<!-- 툴바 -->
	<%@include file="student-toolbar.jsp"%>
<!-- //툴바 -->
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
		<td><font id="writer" style="float:left"><%=dto.getUSER_ID() %></font></td>
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
	
	
	
	<a data-ajax="false"href="../student/26-board-alter.jsp?idx=<%=dto.getBoardID() %>" data-role="button" data-inline="true" style=" margin-top:30px">수정</a>
    <a id="delete" data-ajax="false" href="#" data-role="button" data-inline="true" style=" margin-top:30px">삭제</a>
    <a data-ajax="false"href="../student/24-board2.jsp" data-role="button" data-inline="true" style=" margin-top:30px">목록</a>
	
	
	</div>
	</form>
</body>
</html>