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
    text-align: left;
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

<title>31page</title>
</head>
<body>
   <div id="myCenterDiv">
   <!-- 툴바 -->
	<%@include file="student-toolbar.jsp"%>

<!-- //툴바 -->
  	 <div data-role="header" data-theme="b" >
  	  <h1>내 정보</h1>
		</div>
		
		<table align="center" width="90%" style="margin-top:5%">
			<tr>
				<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 : 황개</font></td>
				
			</tr>
			<tr>
				<td><font style="margin-left:5%">ID : dddddd</font></td>
			</tr>
			<tr>
				<td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp&nbsp&nbsp사진 등록&nbsp&nbsp&nbsp</a></td><td> <font style="margin-left:5%">생년월일 : 910806</font></td>
			</tr>	
		</table>
		
		<table align="center" width="90%" style="margin-top:1%">
			<tr>
				<td>password</td><td colspan="3"><input type="password"/></td>
			</tr>
			<tr>
				<td>주소</td><td colspan="3"><textarea></textarea></td>
			</tr>
			
			<tr>
				<td>소속</td><td colspan="3"><input type="text"/></td>
			</tr>
			<tr>
				<td>연락처</td><td><input type="text" width="1%"/></td><td><input type="text"/></td><td><input type="text"/></td>
			</tr>
		</table>
		
		<div align="center" style="margin-top:1%">
			<a href="#" data-role="button" data-inline="true"  style="margin-right:8%">내 정보 수정</a>
		</div>
</div>
   


</body>
</html>