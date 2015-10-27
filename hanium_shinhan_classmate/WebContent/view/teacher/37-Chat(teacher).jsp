<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta charset="UTF-8">
<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<style type="text/css">
html, body {height:100%; margin:0; padding:0;}
#myCenterDiv {
    position:absolute; 
    left:0%;   
    text-align: center;
    position:fixed; top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}

#bringMessage{
	border-radius: 5px;
  	background: #BADA55;
  	text-align:left;
  	width:85%;
  	padding:2%;
  	float:left;
  	margin:2% 0 2% 0;
  	
}

#sendMessage{
	border-radius: 5px;
  	background: #BADA55;
  	text-align:left;
  	width:85%;
  	padding:2%;
  	float:right;
  	margin:2% 2% 2% 0;
}

</style>

<title>first page</title>
</head>
<body>
<div id="myCenterDiv">
<!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>

<!-- //툴바 -->
<div data-role="header" data-theme="b" >
    <h1>반 채팅</h1>
</div>

<!-- 채팅창 -->
	<div style="height:67%;width:90%;   margin:auto; margin-top:5%;overflow: scroll;overflow-x:hidden; ">
		<div id="bringMessage" >김상현 : 돼지꾸익</div>
		<div id="bringMessage">김상현 : 돼지꾸익</div>
		<div id="bringMessage">김상현 : 돼지꾸익</div><div id="bringMessage" style="text-align:left">김상현 : 돼지꾸익</div><div id="bringMessage" style="text-align:left">김상현 : 돼지꾸익</div><div id="bringMessage" style="text-align:left">김상현 : 돼지꾸익</div><div id="bringMessage" style="text-align:left">김상현 : 돼지꾸익</div><div id="bringMessage" style="text-align:left">김상현 : 돼지꾸익</div>
		<div id="sendMessage">asdofihawoeig</div>
		<div id="sendMessage">asdofihawoeig</div>
		<div id="sendMessage">asdofihawoeig</div>
	
	</div>
	<!-- 채팅 입력 -->
	
        <div style="width:90%; margin:auto" data-position="fixed">
		<div style="float:left; width:83%;">
			<input type="text" data-mini="true" data-inline="true" width="80%"/>
		</div>
		<div style="float:left; width:13%; margin-left:2%">
		<input data-inline="true" type="button" data-mini="true" width="10%" value="전송"data-mini="true" />
		</div>
		</div>	
    



	</div>
</body>
</html>