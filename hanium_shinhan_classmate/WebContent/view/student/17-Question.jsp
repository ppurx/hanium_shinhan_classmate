<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar"%>
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





</style>

<title>Question</title>
</head>
<body>
<form id="login" action="quest.com3" method="post">
	<div style=" position:absolute; 
    left:0%;   
    position:fixed; top:0; left:0; width:100%; height:100%;">
	<div style="margin-top:25%">
	<div data-role="main" class="ui-content">
      <div class="ui-field-contain">
      <%
      java.util.Calendar cal = java.util.Calendar.getInstance(); 
  		int year=cal.get(Calendar.YEAR);
  		int month=cal.get(Calendar.MONTH)+1;
  		int date=cal.get(Calendar.DATE);
  		String regi=year+"-"+month+"-"+date;
  	%>
      	<font>날짜 : <%=regi %></font>
      	</div>
      	<div class="ui-field-contain">
        <label for="subject">과목</label>
        <input type="text" name="subject" id="subject">       
        <label for="title">제목</label>
        <input type="text" name="title" id="title">
        <label for="content">내용</label>
        <textarea name="content" id="content"></textarea>
      </div>
      <div style="float:right">
      <a data-ajax="false" href="../student/15-QandA(student).jsp"><input type="button" data-inline="true" data-mini="true" value="취소"></a>
      <input data-ajax="false" type="submit" data-inline="true" data-mini="true" value="전송">
      </div>
  </div>
  </div>
</div>
</form>
</body>
</html>