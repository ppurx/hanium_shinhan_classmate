<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@page import="COM.ComDAO2"%>
     <%@page import="COM.ComDTO2"%>
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
    position: top:0; left:0; width:100%; height:200%;
    background-color:#fafbd3;
}





</style>
<script type="text/javascript">
$(function(){
	$('#write').click(function(){		
		if($('#subject').val()=='')$("#popTitle").popup("open");
		
		else if($('#textarea').val()==''){
		$("#popContent").popup("open");}
		
		else board.submit();
			
	});
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
	<%@include file="student-toolbar.jsp"%>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>글등록</h1>
</div>
	
	<form name="board" action="boardWrite.com2" method="post">

	<table style="width:90%; margin:auto" >
	<tr>
		<td align="left"><img  width="70%"  src="/hanium_shinhan_classmate/res/25-1.PNG"/></td><td><input type="text" name="subject" id="subject" size="25" placeholder="제목을 입력하세요"></td>
	</tr>
	<tr>
		<td align="left"><img width="55%" height="100%" src="/hanium_shinhan_classmate/res/25-2.PNG"/></td>
	</tr>	
	<tr>
	
	<td  colspan="2" ><textarea style="height:500px; margin-top:5px" id="textarea" name="textarea" placeholder="내용을 입력하세요"></textarea></td>
	</tr>
	<tr >
		<td colspan="2">
		<a  data-ajax="false"style="margin-right:15%" href="../student/24-board2.jsp" data-role="button" data-inline="true" >목록</a>
		<a id="write" data-ajax="false" style="margin-left:15%" href="#" data-role="button" data-inline="true"  >등록</a></td>
		</tr>
	</table>
	</form>

	</div>
	
	<div data-role="popup" data-transition="pop"id="popTitle" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>제목을 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popContent" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>내용을 입력하시오.</p></div>
</body>
</html>