<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="Member.MemberDAO"%>
    <%@page import="Member.MemberDTO"%>
    <%@ page import="java.util.ArrayList"%>  
    <!-- jstl taglig ���� -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

		<%
			MemberDAO dao = new MemberDAO();
			ArrayList<MemberDTO> List = dao.selectTest();
			request.setAttribute("List",List);
			
			//Member.MemberDAO.selectTest()�Լ��� ����
		%>		
	
	<!-- example.C_tag ���� ���� -->
	 <c:set var="i" value="1"/>
	 <c:forEach var="Lists"  items="${List}" >
	 	<c:out value="${Lists.getName()}"/>
	 </c:forEach>

<input type="submit" value="Ȯ��"/>
	

</body>
</html>