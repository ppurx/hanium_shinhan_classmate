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
	window.onload = function(){
		​$("textarea").​​​​​​height(400);
		
	};
</script>

<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<title>board write</title>
</head>
<body>
	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>글등록</h1>
</div>
	


	<table style="width:90%; margin:auto" >
	<tr>
		<td align="left"><img  width="70%"  src="/hanium_shinhan_classmate/res/25-1.PNG"/></td><td><input type="text" size="25" placeholder="제목을 입력하세요"></td>
	</tr>
    
	<tr>
		<td align="left"><img style="height:50%" src="/hanium_shinhan_classmate/res/25-2.PNG"/></td>
	</tr>	
	<tr>
	
	<td  colspan="2" ><textarea style="height:500px; margin-top:5px" name="textarea" id="textarea"placeholder="내용을 입력하세요"></textarea></td>
	</tr>
	<tr >
		<td colspan="2">
		<a  data-ajax="false"style="margin-right:15%" href="../student/24-board2.html" data-role="button" data-inline="true" >목록</a>
		<a data-ajax="false" style="margin-left:15%" href="../student/24-board2.html" data-role="button" data-inline="true"  >등록</a></td>
		</tr>
	</table>
	

	</div>
</body>
</html>