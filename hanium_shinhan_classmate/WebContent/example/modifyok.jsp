<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
	#board{
		width:650px;
		height:auto;
		padding:5px 5px 5px 5px;
		background-color:#f2f2f2;
	}
</style>
<title>게시판</title>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$('document').ready(function(){
		alert("수정되었습니다.");
		location.href("view.jsp?i=<?=i?>");
	})
</script>

</head>
<body>
<form action="" method="post" id="modifyok">
<%
	Class.forName("com.mysql.jdbc.Driver");
	String dbUrl = "jdbc:mysql://127.0.0.1:3306/board";
	String id = "root";
	String pass = "7648";

	String subject = new String(request.getParameter("mod_subject").getBytes("ISO-8859-1"), "EUC-KR");
	String contents = new String(request.getParameter("mod_contents").getBytes("ISO-8859-1"), "EUC-KR");
	int i = Integer.parseInt(request.getParameter("number"));
	int idx = i;
	


	try{
	Connection conn = DriverManager.getConnection(dbUrl,id,pass);
	Statement stmt = conn.createStatement();
	
	String sql = "update noticeboard set SUBJECT='"+subject+"',CONTENTS='"+contents+"'where NUM='"+i+"'";
	stmt.executeUpdate(sql);
	
		
	}
	
	
	catch(SQLException e){
		out.println(e);
	}
	
%> 
			<script language=javascript>
				  	location.href="view.jsp?idx=<%=idx%>";
				  	</script>

</form>
</body>
</html>
