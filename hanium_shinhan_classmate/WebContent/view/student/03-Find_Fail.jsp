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

<script type="text/javascript">
$( document ).ready(function() {
	$('#err').popup("open");


	
	$('#findId').click(function(){			
		findID.submit();
	});
	$('#findPass').click(function(){			
		findPW.submit();
	});
				
		
		});

</script>

<title>FIND</title>
</head>
<body>




	<div id="myCenterDiv">
	
		
		<form name="findID" action="findId.member" method="post">
		<table align="center" width="80%" >
		<colgroup width="80">
		<colgroup width="200">
		<tr>
			<td align="left" colspan="4"><h2>ID 찾기</h2></td>
		</tr>
		
			<tr>
				<td align="left" >이름 : </td><td><input name="name" data-mini="true" type="text"/>
			</tr>
			
			<tr>
				<td align="left" >생년월일 : </td><td><input name="birth" data-mini="true" type="text"/>
			</tr>
			</table>
			
			<table align="center"  width="80%">
			<tr>
				<td align="left" width="20%" >연락처 : </td><td width="15%"><input  data-mini="true" type="text" name="tel1"id="tel1"/></td><td width="1%">-</td><td width="15%"><input  data-mini="true" type="text" name="tel2"id="tel2"/></td><td width="1%">-</td><td width="15%"><input  data-mini="true" type="text" name="tel3"id="tel3"/></td>
			</tr>
			</table>
			
			<table>
			<tr>
				<td width="78%"></td><td style="margin-right:20%" ><a href="#" id="findId" class="ui-btn ui-corner-all ui-shadow ui-btn-inline" data-mini="true" >찾기</a>
			</td>
			</tr>
		
		</table>
	
	</form>
	
	<form name="findPW" action="findPass.member" method="post">
		<table align="center" width="80%" >
		<colgroup width="80">
		<colgroup width="200">
		<tr>
			<td align="left" colspan="4"><h2>비밀번호 찾기</h2></td>
		</tr>
		
			<tr>
				<td align="left" >ID : </td><td><input name="id" data-mini="true" type="text"/>
			</tr>
			
			<tr>
				<td align="left" >생년월일 : </td><td><input name="birth" data-mini="true" type="text"/>
			</tr>
			</table>
			
			<table align="center"  width="80%">
			<tr>
				<td align="left" width="20%">연락처 : </td><td width="15%"><input  data-mini="true" type="text" name="tel1"id="tel1"/></td><td width="1%">-</td><td width="15%"><input  data-mini="true" type="text" name="tel2"id="tel2"/></td><td width="1%">-</td><td width="15%"><input  data-mini="true" type="text" name="tel3"id="tel3"/></td>
			</tr>
			</table>
			
			<table>
			<tr>
				<td width="78%"></td><td style="margin-right:20%" ><a href="#" id="findPass" class="ui-btn ui-corner-all ui-shadow ui-btn-inline" data-mini="true" >찾기</a>
			</td>
			</tr>
		
		</table>
	
	
	
	</form>
	<div data-role="popup" data-transition="pop"id="err" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>일치하는 회원정보가 없습니다.</p></div>
		</div>
		
</body>
</html>