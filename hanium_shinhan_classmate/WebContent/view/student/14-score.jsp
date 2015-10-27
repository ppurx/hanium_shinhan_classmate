<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<title>scorecheck</title>
</head>
<body>
	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="student-toolbar.jsp"%>
<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>점수</h1>
	</div>
	<div style="margin-top:7%">
	<font size=3>너의 점수는?</font> <br>
	<font size=5><h1><%=request.getAttribute("score") %> 점</h1></font>
	<div>
		<img src="/hanium_shinhan_classmate/res/30.jpg" height=200>
	</div>
	
	<div style="margin-left:20%; margin-right:20%; margin-top:5%">
		<a data-ajax="false"  href="../student/12-study.jsp"><input type="button" value="돌아가기"/></a>
	</div>
	</div>
	</div>
</body>
</html>