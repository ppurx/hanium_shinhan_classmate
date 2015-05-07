<%@ page language="java" import="java.sql.*"%>
<%
String driver="com.mysql.jdbc.Driver";
String user="root";
String pass="1234";
String dbURL="jdbc:mysql://localhost/beom";


String sql;

Connection connection;
Statement stmt 	= null;

String name;
String age;
String tel;
String addr;

name = request.getParameter("name");
age = request.getParameter("age");
tel = request.getParameter("tel");
addr = request.getParameter("addr");


out.println("name=" + name + " / age=" + age + " / tel=" + tel + " / addr=" + addr);

try{
	Class.forName(driver);
	connection=DriverManager.getConnection(dbURL,user,pass);		
	
	sql = "insert into customer(name, age, tel, addr) values(";
	sql += "'" + name + "','" + age + "','" + tel + "','" + addr + "')";
	
	stmt = connection.createStatement();
	stmt.executeUpdate(sql);		

}
catch(ClassNotFoundException cne){
	
}catch(SQLException se){
}
%>