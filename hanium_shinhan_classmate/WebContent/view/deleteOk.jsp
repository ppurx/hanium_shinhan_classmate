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
	alert("삭제되었습니다.");
	location="list.jsp";
});
</script>
</head>
<body>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://127.0.0.1:3306/board";
	String id = "root";
	String pass = "7648";
	int num = Integer.parseInt(request.getParameter("number"));
	
	try{
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		String sql = "delete from noticeboard where NUM="+num;
		stmt.executeUpdate(sql);
		
		
		stmt.close();
		conn.close();
		
	}
	catch(SQLException e){
		out.println(e);
		
	}
	
%>
	
</body>
</html>