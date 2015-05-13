<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.sql.DriverManager" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<style>
	#board{
		width:650px;
		height:auto;
		padding:5px 5px 5px 5px;
		background-color:#f2f2f2;
	}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 목록</title>
<script>
	
	
	</script>
</head>

<body>
	<div id="board">
	<table border="1">
	
	<!-- 검색폼 -->
		<p style="text-align:right">
			<select>
				<option value="전체" id="all">전체</option><option value="작성자" id="writer">작성자</option><option value="제목" id="subject">제목</option>
			</select>
			<input type="text" id="search"/><input type="button" value="검색" id="searchForm"/>
			
			</p>
	<!-- 게시판리스트 -->
 		<colgroup>
			<col width="100"><!-- 번호 num-->
			<col width="300"><!-- 제목 subject-->
			<col width="100"><!-- 작성자 writher -->
			<col width="300"><!-- 등록일시 REGI_DATE -->
		</colgroup>
	
	<tr><td>번호</td><td>제목</td><td>작성자</td><td>등록일시</td></tr>
	<%
		
		//페이징--
		int count = 0;
		int block;
		int pageNum;
		//--페이징
	
		//DB연결
		String dbURL = "jdbc:mysql://127.0.0.1:3306/board";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/board", "root", "7648");
		Statement stmt = conn.createStatement();
		//--DB연결
		
		String sqlCount="select COUNT(*) from noticeboard";
		
		
		
		ResultSet rs = stmt.executeQuery(sqlCount);
		
		if(rs.next()){
			count = rs.getInt(1);
		}
		
		%>
			<p style="padding-right:20px;text-align:right">게시글 수 : <%=count %></p>
		<%
		
		
		rs.close();
		
		
		String SQL = "select * from noticeboard";
		rs = stmt.executeQuery(SQL);
		
		while(rs.next()){
			int num=rs.getInt("NUM");
			int hit=rs.getInt("HIT");
			String subject=rs.getString("SUBJECT");
			String contents=rs.getString("CONTENTS");
			String writer=rs.getString("WRITER");
			String date=rs.getString("REGI_DATE");
							
		
		
		%>
			<tr><td><%=num %></td><td><a href="view.jsp?idx=<%=num%>">
			<%=subject %></a></td><td><%=writer %></td><td><%=date %></td></tr>
	
		<%--
		}	
		
		
		if(rs.next());
		{	
		int count =rs.getInt(1);
		out.println("게시글 수 : "+count);
		
		//페이징
		if(count%5==0){
		final int pageNum = count/5;
		}
		else{
			final int pagNum = (count/5)+1;
		}
		
		
		
		--%>
		
		
		
		<%
		}
		stmt.close();
		conn.close();
	
	%>	
		
		
	
	
	</table>
	
	<p style="text-align:center"><a href="#">1</a></p>
	<p style="text-align:right"><a href="/noticeBoard/jsp/add.jsp"><input type="button" id="write" value="글쓰기"/></a><a href="/noticeBoard/jsp/list.jsp"><input type="button" value="목록" id="list"/></a></p>
</body>
</html>