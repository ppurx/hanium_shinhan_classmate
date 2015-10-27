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
	$('#update').click(function(){		
		if($('#subject').val()=='')$("#popTitle").popup("open");
		
		else if($('#textarea').val()==''){
		$("#popContent").popup("open");}
		
		else board.submit();
			
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
<form name="board" action="boardUpdate.com2" method="post">
	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="student-toolbar.jsp"%>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>자유게시판</h1>
</div>

	
	<input type="hidden" name="BoardID" value="<%=idx %>">

	<table style="width:90%">
	<tr>
		<td><img style="margin-left:15px" width="60%" height="50%" src="/hanium_shinhan_classmate/res/26-1.PNG"/></td>
		<td><input name="subject"id="subject" type="text" size="20" value="<%=dto.getSubject() %>" placeholder="제목을 입력하세요"></td>
	</tr>
	<tr>
	</tr>
	<tr>
	</tr>
	<tr>
		<td><img  width="72%" height="100%" src="/hanium_shinhan_classmate/res/26-2.PNG"/></td>
		<td><font id="writer" style="float:left"><%=dto.getUSER_ID() %></font></td>
	</tr>
	<tr>
	</tr>
	<tr>
	</tr>
	<tr>
		<td><img style="margin-left:5px" width="73%" height="100%" src="/hanium_shinhan_classmate/res/26-3.PNG"/></td>
		<td><font id="date" style="float:left"><%=dto.getRegidate() %></font></td>
	</tr>
	<tr>
		<td><img style="margin-top:30px; margin-bottom:10px" width="50%" height="50%" src="/hanium_shinhan_classmate/res/25-2.PNG"/></td>
	</tr>	
	<tr>
	<td  colspan="2" ><textarea style="height:500px; margin-left:20px; margin-top:5px" name="textarea" id="textarea" placeholder="내용을 입력하세요"><%=dto.getTextarea() %></textarea></td>
	</tr>
	
	</table>
	
	
	<a data-ajax="false" href="../student/24-board2.jsp" data-role="button" data-inline="true" style=" margin-top:30px">목록</a>
    <a id="update" data-ajax="false" href="#" data-role="button" data-inline="true" style=" margin-top:30px">수정완료</a>
	
	</div>
	</form>
	
	<div data-role="popup" data-transition="pop"id="popTitle" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>제목을 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popContent" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>내용을 입력하시오.</p></div>
</body>
</html>