<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>

<html>
<head>
<style>
	#board{
		width:650px;
		height:auto;
		padding:5px 5px 5px 5px;
		background-color:#f2f2f2;
	}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판</title>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$('document').ready(function(){

		$('#del').click(function(){
			$('#delete').submit();
		})
			
			
	})
</script>

</head>
<body>

<%

	Class.forName("com.mysql.jdbc.Driver");

	String url = "jdbc:mysql://127.0.0.1:3306/board";

	String id = "root";

	String pass = "7648";

	int idx = Integer.parseInt(request.getParameter("idx"));


	try {


		Connection conn = DriverManager.getConnection(url,id,pass);

		Statement stmt = conn.createStatement();

		

		String sql = "SELECT WRITER, SUBJECT, CONTENTS, REGI_DATE, HIT, NUM FROM noticeboard WHERE NUM="+idx ;

		ResultSet rs = stmt.executeQuery(sql);

		 if(rs.next()){
				
			 	
			 	
			 	
				String writer = rs.getString(1);
				
				String subject = rs.getString(2);

				String contents = rs.getString(3);				

				String time = rs.getString(4);

				int hit = rs.getInt(5);
				
				int num = rs.getInt(6);
				
				hit++;
				
				
				
				%>
				<div id="board">


<form id="delete" action="dlelte.jsp" method="post">


<table border="1">
	
	<!-- 검색폼 -->
		<colgroup>
			<col width="100"><!--  -->
			<col width="550"><!--  -->
		</colgroup>
	<tr>
		<td>글번호</td><td><%=num %></td>
	</tr>
	<tr>
		<td>조회수</td><td><%=hit %></td>
	</tr>
	<tr>		
		<td>작성자</td><td><%=writer %></td>
	</tr>
	<tr>
		<td>등록일시</td><td><%=time %></td>
	</tr>
	<tr>		
		<td>제목</td><td><%=subject %></td>
	</tr>
	<tr>		
		<td style="vertical-align:top;">내용</td><td style="vertical-align:top; height:200px;"><%=contents %></td>
	</tr>
	
	
	</table>
	<!-- 수정 삭제 목록 -->
	
	<p style="text-align:right;">
	
	<a href="modify.jsp?number=<%=num%>"><input type="button" id="mod" value="수정"/></a>
	
	<input type="button" id="del" value="삭제"/>
	<a href="/noticeBoard/jsp/list.jsp"><input type="button" id="list" value="목록"/></a>
	<input type="hidden" name="number" value="<%=num %>"/>
	
	<%

	
	stmt.close();
	conn.close();
		 }
	}
	
	
	catch(SQLException e){
		out.println(e);
		
		
	}
	
	

%>
	
	</p>
	</form>
</div>
</body>

 </html>