<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
	#board{
		width:650px;
		height:auto;
		padding:5px 5px 5px 5px;
		background-color:#f2f2f2;
	}
</style>
<title>�Խ���</title>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$('document').ready(function(){
		$('#write').click(function(){
			if(($('#writer').val())==''){
				alert("�ۼ��ڸ� �Է��Ͻÿ�.");
				return;
				}
			
			if($('#subject').val()==''){
				alert("������ �Է��Ͻÿ�.");
				return;
			}
			if($('#contents').val()==''){
				alert("������ �Է��Ͻÿ�.");
				return;
			}
			else{
				$('#writeform').attr('action','writeok.jsp').submit();
			}
	
			
			  
		});
	})
</script>

</head>
<body>
<form action="writeok.jsp" id="writeform" method="post">
<div id="board">
<table border="1">
	
	
		<colgroup>
			<col width="250"><!--  -->
			<col width="400"><!--  -->
		</colgroup>
	
	<tr>		
		<td>�ۼ���</td><td><input type="text" id="writer" name="writer"/></td>
	</tr>
	<tr>		
		<td>����</td><td><input type="text" id="subject" name="subject"/></td>
	</tr>
	<tr>		
		<td>����</td><td><textarea id="contents" name="contents" cols="75" rows="15"></textarea></td>
	</tr>
	
	
	
	
	</table>
	
	<p style="text-align:right;"><input type="button" id="write" value="���"/><a href="/noticeBoard/jsp/list.jsp"><input type="button" id="list" value="���"/></a>
	
	</p>
	
</div>
</form>
</body>
</html>