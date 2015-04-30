<%@page import="Member.MemberDTO"%>
<%@page import="Member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta charset="utf-8">

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

<title>first page</title>
</head>
<body>
	<div id="myCenterDiv">
	
	<div style="margin:auto; margin-top:50%;width:90%; padding:5% 0 5% 0;">
	
	<h2>귀하의 ID는 <%=request.getAttribute("id") %>입니다.</h2>
	<div style="width:80%; margin:auto; margin-top:10%">
		<input type="button" value="로 그 인" onClick="window.location.href='/hanium_shinhan_classmate/view/student/02-Login.html'"/>
	</div>
	
	</div>
	</div>
</body>
</html>