<%@page contentType="text/xml; charset=utf-8" %>
<%@ page language="java" import="java.sql.*"%>

<%
String driver="org.mariadb.jdbc.Driver";
String user="root";
String pass="shinhan12";
String dbURL="jdbc:mariadb://14.63.223.174:3306/shinhan";


String sql;
String rtn_xml;

Connection connection;
Statement stmt 	= null;
ResultSet rs 	= null;
rtn_xml = "";

try{
	Class.forName(driver);
	connection=DriverManager.getConnection(dbURL,user,pass);
	
	sql = "select * from CHAT";
	
	stmt = connection.createStatement();
	rs = stmt.executeQuery(sql);		
%>							
<chat>
<%
	while (rs.next()){	
		
		
		System.out.println(rs.getString("USER_ID")+":"+rs.getString("CHAT_CONTENT"));
		
	}		
%>
</chat>
<%
}
catch(ClassNotFoundException cne){
	
}catch(SQLException se){
}
%>