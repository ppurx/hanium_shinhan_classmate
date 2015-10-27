<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="Member.MemberDTO"%>
<%@page import="Member.MemberDAO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta charset="UTF-8">

<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	$('#update').click(function(){
		updateMember.submit();
	});
		
	});
</script>
<style type="text/css">
html, body {height:100%; margin:0; padding:0;}
#myCenterDiv {
    position:absolute; 
    left:0%;   
    text-align: left;
    position:fixed; top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}
</style>

<title>31page</title>
</head>
<body>
<%
	String idx = (String)session.getAttribute("id");
	MemberDTO dto = new MemberDTO();
	MemberDAO dao = new MemberDAO();
	dto=dao.selectAll(idx);

%>
   <div id="myCenterDiv">
  <!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>

<!-- //툴바 -->
  	 <div data-role="header" data-theme="b" >
  	  <h1>내 정보</h1>
		</div>
		
		<form name="updateMember" action="updateMember.member" method="post">
			<table align="center" width="90%" style="margin-top:5%">
				<tr>
					<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 : <%=dto.getName() %></font></td>
					
				</tr>
				<tr>
					<td><font style="margin-left:5%">ID : <%=dto.getId() %></font></td>
				</tr>
				<tr>
					<td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp&nbsp&nbsp사진 등록&nbsp&nbsp&nbsp</a></td><td> <font style="margin-left:5%">생년월일 : <%=dto.getBirth() %></font></td>
				</tr>	
			</table>
			
			<table align="center" width="90%" style="margin-top:1%">
				<tr>
					<td>password</td><td colspan="3"><input type="password" name="password" value="<%=dto.getPassword()%>"/></td>
				</tr>
				<tr>
					<td>주소</td><td colspan="3"><textarea name="address"><%=dto.getAddr() %></textarea></td>
				</tr>
				
				<tr>
					<td>소속</td><td colspan="3"><input name="school" type="text" value="<%=dto.getSchool()%>"/></td>
				</tr>
				<tr>
					<td>연락처</td><td colspan="3"><input name="phone" type="text" value="<%=dto.getPhone()%>"/></td>
				</tr>
			</table>
			
			<div align="center" style="margin-top:1%">
				<a href="#" data-role="button" id="update" data-inline="true" style="margin-right:8%">내 정보 수정</a>
			</div>
		
		</form>
</div>


</body>
</html>