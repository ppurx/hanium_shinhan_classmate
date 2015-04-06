<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.Calendar"%>
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
	
	})
</script>

</head>
<body>

<div id="board">

<%
	request.setCharacterEncoding("euc-kr");
	String dbURL = "jdbc:mariadb://14.63.223.174:3306/shinhan";
	Class.forName("org.mariadb.jdbc.Driver");
	
	java.util.Calendar cal = java.util.Calendar.getInstance();
	int year=cal.get(Calendar.YEAR);
	int month=cal.get(Calendar.MONTH)+1;
	int date=cal.get(Calendar.DATE);
	
	
	
	String writer=request.getParameter("writer");
	String contents=request.getParameter("contents");
	String subject=request.getParameter("subject");
	String regi=year+"-"+month+"-"+date;
	
	
	try{
		Connection conn = DriverManager.getConnection("jdbc:mariadb://14.63.223.174:3306/shinhan", "root", "shinhan12");
		Statement stmt = conn.createStatement();
		
		String sql = "INSERT INTO USER(USER_ID) VALUES(?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,"aaa");
		
		pstmt.execute();
		conn.close();
		pstmt.close();
		
	}
	catch(SQLException e){
		out.println(e.toString());
		
	}
	
	
%>


	
	
	
	
	<p style="text-align:right;"><input type="button" id="write" value="글쓰기"/><a href="/noticeBoard/jsp/list.jsp"><input type="button" id="list" value="목록"/></a>
	
	</p>
	
</div>

</body>
</html>
