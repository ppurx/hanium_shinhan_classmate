<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="utf-8">
<script type="text/javascript">
$(function(){
	$('#btn1').click(function(){
		$('#yourDiv').load("/hanium_shinhan_classmate/view/student/20-study.jsp" +  ' #chartdiv');
	});
});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form id="ff">
<div id="yourDiv">
<h2>div 1</h2>
<input type="button" id="btn1" value="test"/>
</div>
</form>
</body>
</html>