<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">

$('document').ready(function(){
	$('#yes').click(function(){
		$('#del').submit();
		
	})
	
	$('#no').click(function(){
		alert("취소합니다.");
		javascript:history.back(-1);
	})
});
</script>
</head>
<body>
<form id="del" action="deleteOk.jsp" method="post">
	<%
		int i = Integer.parseInt(request.getParameter("number"));
	%>
	<input type="hidden" name="number" value="<%=i%>"/>



</form>
	<table>
	<tr>
	<td>지울꺼냐?</td>
	</tr>
	<tr>
	<td><input type="button" id="yes" value="예"/>
	<input type="button" id="no" value="아니오"/></td>
	</table>
</body>
</html>