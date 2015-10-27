<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta charset="UTF-8">

<style type="text/css">
html, body {height:100%; margin:0; padding:0;}
#myCenterDiv {
    position:absolute; 
    left:0%;   
    text-align: center;
    position:fixed; top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}





</style>
<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<title>Main2</title>
</head>
<body>
<%
	String class_id = request.getParameter("idx");
	session.setAttribute("CLASS_ID",class_id);
%>
	<div id="myCenterDiv">
	<%@include file="teacher-toolbar.jsp" %>
	<div style="margin-top:3%; margin-left:50px; margin-right:30px">
	
	<table id=movie-table class=ui-responsive data-role="table" data-mode="toggle">
		<tr>
			<td><a data-ajax="false" href="../teacher/27-Question.jsp" data-ajax="false"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Study.png" width=60px; height=60px;></a></td>
			<td ><a data-ajax="false" href="../teacher/27-Question.jsp" data-ajax="false"><font color="skyblue"><H2>학습부여</H2></font></a></td>
		</tr>
		<tr>
			<td><a data-ajax="false" href="../teacher/32-Q&A(teacher).jsp" data-ajax="false"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Notice.png" width=60px; height=60px;></a></td>
			<td><a data-ajax="false" href="../teacher/32-Q&A(teacher).jsp" data-ajax="false"><font color="skyblue"><H2>Q & A</H2></font></a></td>
		</tr>
		
		<tr>
			<td><a data-ajax="false" href="../teacher/28-twobutton.jsp" data-ajax="false"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Class.png" width=60px; height=60px;></a></td>
			<td><a data-ajax="false" href="../teacher/28-twobutton.jsp" data-ajax="false"><font color="skyblue"><H2>반 관리</H2></font></a></td>
		</tr>
		<tr>
			<td><a data-ajax="false" href="../teacher/31-MyInformation(teacher).jsp" data-ajax="false"><img src="/hanium_shinhan_classmate/res/Icon/Icon_MyPage.png" width=60px; height=60px;></a></td>
			<td><a data-ajax="false" href="../teacher/31-MyInformation(teacher).jsp" data-ajax="false"><font color="skyblue"><H2>내 정보</H2></font></a></td>
		</tr>
		<tr>
			<td><a data-ajax="false" href="../teacher/34-Notice(teacher)1.jsp" data-ajax="false"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Teacher.png" width=60px; height=60px;></a></td>
			<td><a data-ajax="false" href="../teacher/34-Notice(teacher)1.jsp" data-ajax="false"><font color="skyblue"><H2>공지사항</H2></font></a></td>
		</tr>
		<tr>
			<td><a data-ajax="false" href="../student/24-board2.jsp" data-ajax="false"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Board.png" width=60px; height=60px;></a></td>
			<td><a data-ajax="false" href="../student/24-board2.jsp" data-ajax="false"><font color="skyblue"><H2>자유게시판</H2></font></a></td>
		</tr>
		<tr>
			<td><a data-ajax="false" href="chatFirst.class" data-ajax="false"><img src="/hanium_shinhan_classmate/res/Icon/Icon_Chat.PNG" width=60px; height=60px;></a></td>
			<td><a data-ajax="false" href="chatFirst.class" data-ajax="false"><font color="skyblue"><H2>반 채팅</H2></font></a></td>
		</tr>
	</table>
	</div>
	</div>
</body>
</html>