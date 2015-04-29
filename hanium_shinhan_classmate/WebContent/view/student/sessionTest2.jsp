<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name="toolbar" action="toolbarGet.member" method="get">

결과창
<% 
String name = (String)session.getAttribute("name");
String pw = (String)session.getAttribute("pw");
String id = (String)session.getAttribute("id");
String job = (String)session.getAttribute("job");

%>
<%=name %>
</form>


</body>
</html>