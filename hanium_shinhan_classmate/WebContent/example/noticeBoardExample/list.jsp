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
<title>�Խ��� ���</title>
<script>
	
	
	</script>
</head>

<body>
	<div id="board">
	<table border="1">
	
	<!-- �˻��� -->
		<p style="text-align:right">
			<select>
				<option value="��ü" id="all">��ü</option><option value="�ۼ���" id="writer">�ۼ���</option><option value="����" id="subject">����</option>
			</select>
			<input type="text" id="search"/><input type="button" value="�˻�" id="searchForm"/>
			
			</p>
	<!-- �Խ��Ǹ���Ʈ -->
 		<colgroup>
			<col width="100"><!-- ��ȣ num-->
			<col width="300"><!-- ���� subject-->
			<col width="100"><!-- �ۼ��� writher -->
			<col width="300"><!-- ����Ͻ� REGI_DATE -->
		</colgroup>
	
	<tr><td>��ȣ</td><td>����</td><td>�ۼ���</td><td>����Ͻ�</td></tr>
	<%
		
		//����¡--
		int count = 0;
		int block;
		int pageNum;
		//--����¡
	
		//DB����
		String dbURL = "jdbc:mysql://127.0.0.1:3306/board";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/board", "root", "7648");
		Statement stmt = conn.createStatement();
		//--DB����
		
		String sqlCount="select COUNT(*) from noticeboard";
		
		
		
		ResultSet rs = stmt.executeQuery(sqlCount);
		
		if(rs.next()){
			count = rs.getInt(1);
		}
		
		%>
			<p style="padding-right:20px;text-align:right">�Խñ� �� : <%=count %></p>
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
		out.println("�Խñ� �� : "+count);
		
		//����¡
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
	<p style="text-align:right"><a href="/noticeBoard/jsp/add.jsp"><input type="button" id="write" value="�۾���"/></a><a href="/noticeBoard/jsp/list.jsp"><input type="button" value="���" id="list"/></a></p>
</body>
</html>