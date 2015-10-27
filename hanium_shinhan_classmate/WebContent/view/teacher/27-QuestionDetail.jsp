<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="Study.StudyDAO"%>
     <%@page import="Study.StudyDTO"%>
    <%@ page import="java.util.ArrayList"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta charset="UTF-8">

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
	var x=1;
	for(x=1;x<=10;x++){
		$("#an"+x).hide();
		$("#ans"+x).hide();
	}

	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>

<title>Homework</title>
</head> 
<body>
<%
	ArrayList<StudyDTO> List =new ArrayList<StudyDTO>();
	String STUDY_ID = request.getParameter("idx");
	StudyDAO dao = new StudyDAO();
	List = dao.selectQuestionList(STUDY_ID);
	request.setAttribute("List",List);
%>
<script type="text/javascript">
$(function(){
	var x=1;
	for(x=1;x<=<%=List.size() %>;x++){
		$("#an"+x).show();
		$("#ans"+x).show();
	}

	});
</script>
	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>
<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>과제</h1>
	</div>
	<div style="margin-top:2%; margin-left:5%; margin-bottom:5%;"><font size="5" style="float:left;">과 목 : <%=List.get(0).getSTUDY_SUBJECT() %></font></div>
	<div style="margin-top:30px; margin-bottom:30px; "align="left">
	
	<div style="margin-top:15%; text-align:center; width:100%;height:350px; overflow-x:hidden; overflow:auto">
	
	<table style="text-align:left;background-color:white; width:90%;  margin:auto;">
		<c:forEach var="Lists"  items="${List}" varStatus="i">		
		<tr>	
			<td style="padding-left:3%;"><pre><c:out value="${Lists.getQUE_CONTENT_TXT()}"/></pre>			
		</tr>
		<tr>
			<td>답 : <c:out value="${Lists.getQUE_ANSWER() }"/></td>
		</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	<div style="margin-left:15px; margin-right:15px;">
	<div style="overflow:auto;">
	
	</div>
	</div>
	<div style="margin-left:100px; margin-right:100px">
		<a data-ajax="false" href="../teacher/27-Question.jsp"><input type="button" value="목록"></a>
	</div>
	</div>
</body>
</html>

