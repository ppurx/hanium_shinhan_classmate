<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta charset="euc-kr">
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
			$('#Join_Button').click(function(){
				join.submit();
			});
			  
		});
</script>


<title>first page</title>
</head>
<body>
<form name="join" action="StuJoin.com" method="post">
	<div id="myCenterDiv">
	
	<div style="margin-left:7%; margin-top:6%">
	<table>
	<tr>
		<td align="left" colspan="2"><h2>회원 가입</h2></td>
	</tr>
		<tr>
			<td align="left">이름</td>
			<td rowspan="5"><input  data-mini="true" type="text" name="name"/><input  data-mini="true" type="text"name="birth"/><input  data-mini="true" type="text" name="email"/><input  data-mini="true" type="text" name="school"/><input  data-mini="true" type="text" name="address"/></td>
		</tr>
		<tr>
			<td align="left">생년월일
		</tr>
		<tr>
			<td align="left">E-mail
		</tr>
		<tr>
			<td align="left">학교
		</tr>
		<tr>
			<td align="left">주소
		</tr>
						
	</table>
	
	<table width="80%">
	<tr>
		<td align="left" width="13%">연락처</td><td width="15%"><input  data-mini="true" type="text" name="tel1"/></td><td width="1%">-</td><td width="15%"><input  data-mini="true" type="text" name="tel2"/></td><td width="1%">-</td><td width="15%"><input  data-mini="true" type="text" name="tel3"/></td>
	</tr>
	</table>
	
	<table style="margin-top:5%">
		<tr>
			<td align="left">ID</td>
			<td><input  data-mini="true" type="text" name="id"/></td><td><input type="button" data-mini="true"value="중복확인"/></td>
		</tr>
		<tr>
			<td align="left">비밀번호</td><td><input  data-mini="true" type="password" name="password"/></td>
		</tr>
		
						
	</table>
	</div>
	<input style="margin-right:5%"type="button" data-inline="true" value="가입" id="Join_Button"><a href="../student/1-FirstPage.html" data-role="button" data-inline="true" style="margin-left:5%">취소</a>
	</div>
	</form>
</body>
</html>