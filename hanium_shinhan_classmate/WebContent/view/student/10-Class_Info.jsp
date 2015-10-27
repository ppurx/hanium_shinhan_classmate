<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Class.ClassDAO"%>
     <%@page import="Class.ClassDTO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

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
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
	$('#btn1').click(function(){			
		can.submit();
	});
	
		
	});
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
	
	<!-- 툴바 -->
	<%@include file="label.jsp" %>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>반 정보</h1>
</div>

<form action="candidate.class" method="post" name="can">
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
				<td colspan="2" align="right"><a href="#CpopupDialog" data-rel="popup" data-position-to="window" data-transition="pop" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">가입 신청</a></td>
			</tr>
	</table>
	
	
	</div>
	<input type="hidden" name="CLASS_ID" value="<%=idx %>" />
	</form>
	</div>

	<!-- 가입신청 확인-->
	<div data-role="popup" id="CpopupDialog" data-overlay-theme="b" data-theme="b" >
	
	    <div role="main" class="ui-content" style=" text-align: center;">		
			<h3 style="margin:auto">가입 신청 하시겠습니까?</h3>
			<p> </p>
				<a data-ajax="false" href="#" data-role="button" data-inline="true" style="margin-right:8%" id="btn1">&nbspYES&nbsp</a>
				<a data-ajax="false" href="#" data-role="button" data-inline="true" style="margin-left:8%" data-rel="back">&nbsp&nbspNO&nbsp&nbsp</a>
							        
	    </div>
	</div>
	<!-- //가입신청 확인 -->
</body>

</html>