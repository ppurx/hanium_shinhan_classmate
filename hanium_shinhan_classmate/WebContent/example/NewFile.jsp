<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<title>Insert title here</title>
</head>
<script type="text/javascript">
$(function(){
	
	
	
	$('#btn1').click(function(){			
		alert("Asdfa");
		$('#x').append("<textarea>키키키</textarea>")
	});
	
	
		
	});
</script>
<body>

<p id='x'></p>
<input type="button" id="btn1" value="확인"/>
</body>
</html>