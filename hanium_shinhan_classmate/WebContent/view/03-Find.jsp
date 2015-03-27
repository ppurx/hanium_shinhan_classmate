<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>

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

<title>FIND</title>
</head>
<body>
<div>

</div>




	<div id="myCenterDiv">
	
		
		<table style="margin-top:5%" align="center" >
		<colgroup width="80">
		<colgroup width="200">
		<tr>
			<td align="left" colspan="2"><H2>아이디 찾기</H2></td>
		</tr>
			<tr>
				<td align="left" >이름 : </td><td><input  data-mini="true" type="text"/>
			</tr>
			<tr>
				<td align="left">연락처 : </td><td><input data-mini="true" type="text"/>
			</tr>
			<tr>
				<td align="left">생년월일 : </td><td><input data-mini="true" type="text"/>
			</tr>
			<tr>
				<td></td><td align="right"><a href="#popupBasic" data-rel="popup" class="ui-btn ui-corner-all ui-shadow ui-btn-inline" data-transition="pop" data-mini="true">찾기</a>
			<div data-role="popup" id="popupBasic">
			<p>E-mail을 전송하였습니다.</p>
			</div></td>
			</tr>
		
		</table>
	
	
		
		<table align="center" >
		<colgroup width="80">
		<colgroup width="200">
		<tr>
			<td align="left" colspan="2"><h2>비밀번호 찾기</h2></td>
		</tr>
		
			<tr>
				<td align="left">ID : </td><td><input  data-mini="true" type="text"/>
			</tr>
			<tr>
				<td align="left">연락처 : </td><td><input data-mini="true" type="text"/>
			</tr>
			<tr>
				<td align="left">생년월일 : </td><td><input data-mini="true" type="text"/>
			</tr>
			<tr>
				<td></td><td align="right"><a href="#popupBasic" data-rel="popup" class="ui-btn ui-corner-all ui-shadow ui-btn-inline" data-transition="pop" data-mini="true">찾기</a>
			<div data-role="popup" id="popupBasic">
			<p>E-mail을 전송하였습니다.</p>
			</div></td>
			</tr>
		
		</table>
	
	</div>
	
		
</body>
</html>