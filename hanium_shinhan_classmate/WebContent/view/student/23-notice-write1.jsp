<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="COM.ComDAO1"%>
     <%@page import="COM.ComDTO1"%>
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
	window.onload = function(){
		​$("textarea").​​​​​​height(400);
		
	};
</script>
<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<title>notice2</title>
</head>
<body>

	<%
	String idx = request.getParameter("idx");
	ComDTO1 dto = new ComDTO1();
	ComDAO1 dao = new ComDAO1();
	dto = dao.selectnot(idx);
%>	
	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="student-toolbar.jsp"%>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>공지사항</h1>
</div>
	


<div style="margin-top:20%">
<c:if test="${List.size() == 0 }">
<tfoot>
     <tr>
          <td colspan="3">현재 데이터가 없습니다.</td>
     </tr>
</tfoot>

</c:if>
	<table style="width:90%; margin-left:7%" align="left" >
			<tr>
				<td align="left" colspan="2"><font size="6" style="font-weight:bolder">제목 : <%=dto.getTitle() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="6" style="font-weight:bolder">작성자 : <%=dto.getClass_ID() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="4" style="font-weight:bolder">작성일 : <%=dto.getREGI_DATE() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="4" style="font-weight:bolder">내용 : <%=dto.getContent() %></font></td>
			</tr>
		    <tr>
		    <td colspan="2" align="right"><a data-ajax="false"href="/hanium_shinhan_classmate/view/student/22-notice1.jsp" margin-left="30px" data-role="button" data-inline="true" style=" margin-top:30px">목록</a></td>
		    </tr>		
		
	</table>
	
		
	
	
	</div>
	
	
	

	</div>
</body>
</html>