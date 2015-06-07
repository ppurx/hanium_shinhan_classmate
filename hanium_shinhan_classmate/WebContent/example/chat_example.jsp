<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>

<script type="text/javascript">
$(function(){
$('#btn').click(function(){
	startRequest2();		
});
});
</script>

<script type="text/javascript">
		var xmlHttp;
		function createXMLHttpRequest() {
		    if (window.ActiveXObject) {
		        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		    } 
		    else if (window.XMLHttpRequest) {
		        xmlHttp = new XMLHttpRequest();
		    }
		}
		    
		function startRequest2() {
		    createXMLHttpRequest();
		    xmlHttp.onreadystatechange = handleStateChange;
		    xmlHttp.open("POST", "chat.class", true);
		    xmlHttp.send(null);
		}
		        
		function handleStateChange() {
		    if(xmlHttp.readyState == 4) {
		        if(xmlHttp.status == 200) {
		        	
		        	
		        }
		    }
		}
</script>
<title>Insert title here</title>
</head>
<body>

<input type="text" id="CHAT_CONTENT" name="CHAT_CONTENT"/>
<input type="button" value="입력" id="btn"/>
wtf
</body>
</html>