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
<title>twobutton</title>
</head>
<body>
	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>반 관리</h1>
</div>
   <table>
   <tr><a data-ajax="false" href="../teacher/29-Classmanagement.jsp"><img style="margin-top:60px; margin-right:11px" width="26%" height="14%" src="/hanium_shinhan_classmate/res/28--1.PNG"/></a>
   </tr>
     <div style="margin:0% 16% 0 16%">
	 <input  data-ajax="false"type="button" value="가입 승인" style=" font-weight:bold; background-color:darkgray " data-mini="true" onclick="location.href='../teacher/29-Classmanagement.jsp'">
	
	</div>
    </table>
     <table>
   <tr><a  data-ajax="false"href="../teacher/30-StudentManagement.jsp"><img style="margin-top:80px" width="26%" height="14%" src="/hanium_shinhan_classmate/res/28--2.PNG"/></a>
   </tr>
     <div style="margin:0% 16% 0 16%">
	 <input  data-ajax="false"type="button" value="학생 역량 관리" style="font-weight:bold; background-color:darkgray " data-mini="true" onclick="location.href='../teacher/30-StudentManagement.jsp'">
	</div>
    </table>
	</div>
</body>
</html>