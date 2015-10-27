<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Class.ClassDAO"%>
     <%@page import="Class.ClassDTO"%>
    <%@ page import="java.util.ArrayList"%>  
    <!-- jstl taglig 선언 -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="utf-8">

<style type="text/css">
html, body {height:100%; margin:0; padding:0;}
#myCenterDiv {
    position:absolute; 
    left:0%;   
    text-align: center;
    top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}
@font-face {
  font-family: 'Nanum Brush Script';
  font-style: normal;
  font-weight: 400;
  src: url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.eot);
  src: url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.eot?#iefix) format('embedded-opentype'),
       url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.woff2) format('woff2'),
       url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.woff) format('woff'),
       url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.ttf) format('truetype');
}
</style>

<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>

<title>student main</title>
</head>
<body>
	<%
			ClassDAO dao = new ClassDAO();
			ArrayList<ClassDTO> List = dao.selectClassList((String)session.getAttribute("id"));
			request.setAttribute("List",List);
	%>	
		
		
	<div id="myCenterDiv">
	
	<%@include file="label.jsp" %>
	<div style="margin:15% 7% 0 7%">
	 <a data-ajax="false" href="../student/09-FindClass.jsp"><input type="button" value="반 검색" ></a>
	</div>
	<!-- 클래스 리스트 출력 -->
			 
		 		
	<c:if test="${List.size()>2 }">
		<div style="height:400px;overflow-x:hidden;overflow-y:auto">
		<table align="center" style="margin-top:10%;height:300px;overflow-y:scroll;" >	
				
			<c:forEach var="Lists"  items="${List}" varStatus="i">
			
				<c:if test="${i.index%2 == 0}">		
				<tr style="height:160px;">		
					<td width="230px" height="160px"style="background-repeat: no-repeat;background-size:100%; position:relative;background-image: url(/hanium_shinhan_classmate/res/chok3.png);  ">
					<div style="position:relative;">
					<a href="../student/11-main(student).jsp?idx=<c:out value="${Lists.getCLASS_ID()}"/>">
					<font size="6"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_SCHOOL_NAME()}"/></font></a> <br>
					<font size="4"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_NAME()}"/></font></div></td>
				
				</c:if>
				<c:if test="${i.index%2 != 0 }">
					<td width="230px" height="160px"style="background-repeat: no-repeat;background-size:100%; position:relative;background-image: url(/hanium_shinhan_classmate/res/chok3.png);  ">
					<div style="position:relative;">
					<a href="../student/11-main(student).jsp?idx=<c:out value="${Lists.getCLASS_ID()}"/>">
					<font size="6"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_SCHOOL_NAME()}"/></font></a> <br>
					<font size="4"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_NAME()}"/></font></div></td>
				
				</tr>
				</c:if>
			
			</c:forEach>
			
		</table>
		</div>
	</c:if>
	<c:if test="${List.size()==1 }">		
				<c:forEach var="Lists"  items="${List}" varStatus="i">
					<table align="center" style="margin-top:10%;height:160px;overflow-y:scroll;" >	
						<tr style="height:160px;">		
						<td width="230px" height="160px"style="background-repeat: no-repeat;background-size:100%; position:relative;background-image: url(/hanium_shinhan_classmate/res/chok3.png);  ">
						<div style="position:relative;"><a href="../student/11-main(student).jsp?idx=<c:out value="${Lists.getCLASS_ID()}"/>">
						<font size="6"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_SCHOOL_NAME()}"/></font></a> <br>
						<font size="4"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_NAME()}"/></font></div></td>
				
					</table>
						
				</c:forEach>
	</c:if>
	<c:if test="${List.size()==2 }">		
	<table align="center" style="margin-top:10%;height:160px;overflow-y:scroll;" >	
			<c:forEach var="Lists"  items="${List}" varStatus="i">
			
				<c:if test="${i.index%2 == 0}">		
				<tr style="height:160px;">		
					<td width="230px" height="160px"style="background-repeat: no-repeat;background-size:100%; position:relative;background-image: url(/hanium_shinhan_classmate/res/chok3.png);  ">
					<div style="position:relative;"><a href="../student/11-main(student).jsp?idx=<c:out value="${Lists.getCLASS_ID()}"/>">
					<font size="6"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_SCHOOL_NAME()}"/></font></a> <br>
					<font size="4"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_NAME()}"/></font></div></td>
				
				</c:if>
				<c:if test="${i.index%2 != 0 }">
					<td width="230px" height="160px"style="background-repeat: no-repeat;background-size:100%; position:relative;background-image: url(/hanium_shinhan_classmate/res/chok3.png);  ">
					<div style="position:relative;">
					<a href="../student/11-main(student).jsp?idx=<c:out value="${Lists.getCLASS_ID()}"/>">
					<font size="6"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_SCHOOL_NAME()}"/></font></a> <br>
					<font size="4"  style="color:white; font-family:Nanum Brush Script;"><c:out value="${Lists.getCLASS_NAME()}"/></font></div></td>
						</tr>
				</c:if>
			
			</c:forEach>
			</table>
	</c:if>
	
	
	
	</div>
</body>
</html>