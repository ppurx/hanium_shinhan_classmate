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
			
			if($('#name').val()=='')$("#popName").popup("open");
			if($('#birth').val()=='')$("#popBirth").popup("open");
			if($('#email').val()=='')$("#popEmail").popup("open");
			if($('#school').val()=='')$("#popSchool").popup("open");
			if($('#address').val()=='')$("#popAddress").popup("open");
			if(($('#tel1').val()=='')||($('#tel2').val()=='')||($('#tel3').val()==''))$("#popPhone").popup("open");
			if($('#id').val()=='')$("#popId").popup("open");
			if($('#password').val()=='')$("#popPassword").popup("open");
			else join.submit();
				
		
		})
		});
</script>


<title>first page</title>
</head>
<body>
<form name="join" action="StuJoin.member" method="post">
	<div id="myCenterDiv">
	
	<div style="margin-left:7%; margin-top:6%">
	<table>
	<tr>
		<td align="left" colspan="2"><h2>ȸ�� ����</h2></td>
	</tr>
		<tr>
			<td align="left">�̸�</td>
			<td rowspan="5"><input  data-mini="true" type="text" id="name" name="name"/><input  data-mini="true" id="birth" type="text"name="birth"/><input  data-mini="true" type="text"id="email" name="email"/><input  data-mini="true" type="text"id="school" name="school"/><input  data-mini="true" type="text"id="address" name="address"/></td>
		</tr>
		<tr>
			<td align="left">�������
		</tr>
		<tr>
			<td align="left">E-mail
		</tr>
		<tr>
			<td align="left">�б�
		</tr>
		<tr>
			<td align="left">�ּ�
		</tr>
						
	</table>
	
	<table width="80%">
	<tr>
		<td align="left" width="13%">����ó</td><td width="15%"><input  data-mini="true" type="text" name="tel1"id="tel1"/></td><td width="1%">-</td><td width="15%"><input  data-mini="true" type="text" name="tel2"id="tel2"/></td><td width="1%">-</td><td width="15%"><input  data-mini="true" type="text" name="tel3"id="tel3"/></td>
	</tr>
	</table>
	
	<table style="margin-top:5%">
		<tr>
			<td align="left">ID</td>
			<td><input id="id"  data-mini="true" type="text" name="id"/></td><td><input type="button" data-mini="true"value="�ߺ�Ȯ��"/></td>
		</tr>
		<tr>
			<td align="left">��й�ȣ</td><td><input id="password" data-mini="true" type="password" name="password"/></td>
		</tr>
		
						
	</table>
	</div>
	<input style="margin-right:5%"type="button" data-inline="true" value="����" id="Join_Button"><a href="../student/01-FirstPage.html" data-role="button" data-inline="true" style="margin-left:5%">���</a>
	</div>
	</form>
	
	
	<div data-role="popup" data-transition="pop"id="popName" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>�̸��� �Է��Ͻÿ�.</p></div>
	<div data-role="popup" data-transition="pop"id="popBirth" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>��������� �Է��Ͻÿ�.</p></div>
	<div data-role="popup" data-transition="pop"id="popEmail" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>Email�� �Է��Ͻÿ�.</p></div>
	<div data-role="popup" data-transition="pop"id="popSchool" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>�б��� �Է��Ͻÿ�.</p></div>
	<div data-role="popup" data-transition="pop"id="popAddress" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>�ּҸ� �Է��Ͻÿ�.</p></div>
	<div data-role="popup" data-transition="pop"id="popPhone" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>�޴�����ȣ �Է��Ͻÿ�.</p></div>
	<div data-role="popup" data-transition="pop"id="popId" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>ID�� �Է��Ͻÿ�.</p></div>
	<div data-role="popup" data-transition="pop"id="popPassword" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>��й�ȣ�� �Է��Ͻÿ�.</p></div>
</body>
</html>