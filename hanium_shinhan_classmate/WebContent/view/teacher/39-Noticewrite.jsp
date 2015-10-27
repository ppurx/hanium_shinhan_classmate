<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="COM.ComDAO1"%>
     <%@page import="COM.ComDTO1"%>
    <%@ page import="java.util.ArrayList"%>  
<!DOCTYPE html>
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
			$('#Enrollment').click(function(){
				
				if($('#title').val()=='')$("#popTitle").popup("open");
				else if($('#content').val()=='')$("#popContent").popup("open");
				
			    else notice.submit();
				
					
			
			});
			$('#lo').click(function(){			
				logout.submit();
			});
	})
	
</script>

<title>p35</title>
</head>
<body>


	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>공지쓰기</h1>
</div>
	
<form name=notice action="Tnotice.com1" method="post">

	<table style="width:90%; margin:auto" >
	<tr>
		<td align="left"><img  width="70%"  src="/hanium_shinhan_classmate/res/25-1.PNG"/></td><td><input id="title" name="title" type="text" size="25" placeholder="제목을 입력하세요"></td>
	</tr>
    
	<tr>
		<td align="left"><img style="height:50%" src="/hanium_shinhan_classmate/res/25-2.PNG"/></td>
	</tr>	
	<tr>
	
	<td  colspan="2" ><textarea style="height:500px; margin-top:5px" name="content" id="content" placeholder="내용을 입력하세요" ></textarea></td>
	</tr>
	<tr >
		<td colspan="2">
		<a  data-ajax="false"style="margin-right:15%" href="../teacher/34-Notice(teacher)1.jsp" data-role="button" data-inline="true" >목록</a>
		<a data-ajax="false" style="margin-left:15%" href="#" data-role="button" data-inline="true" id="Enrollment" >등록</a></td>
		</tr>
	</table>
	</form>

	</div>
	
		<div data-role="popup" data-transition="pop"id="popTitle" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>제목을 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popContent" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>내용을 입력하시오.</p></div>
</body>
</html>