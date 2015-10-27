<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
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
<script type="text/javascript">
$(document).bind('pageinit', function() {
    $("#CHAT_CONTENT").on("change keyup", function() {
    	$('#chatting').css({'height':150+'px'});	
    });
  });
  
  
var cnt=0;
$(function(){
	select();
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	$('#btn').click(function(){
		if($('#CHAT_CONTENT').val()!=''){
			insert();
			$("#CHAT_CONTENT").val('');
			
		}
		
	});
	$('#CHAT_CONTENT').focus(function(){	
		});
	
	$('#CHAT_CONTENT').blur(function(){
		$('#CHAT_CONTENT').focus();		
	});		
	
	$('#chatting').click(function(){
		$('#chatting').css({'height':400+'px'});		
	});

		
});
	
function insert(){
	var str = $('#CHAT_CONTENT').val();
		str=encodeURIComponent(encodeURIComponent(str));
	$.ajax({
		url: "chat.class?idx="+str+"",
		method: 'post',		
		contentType: "application/x-www-form-urlencoded; charset=utf-8",
		success:function(data) {
		   
		},
		error:function() {
		   
		}
	}); 
}

var xmlHttp;
var MAX;
function createXMLHttpRequest() {
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    } 
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    }
}
    
function select() {
    createXMLHttpRequest();
    xmlHttp.onreadystatechange = handleStateChange;
    xmlHttp.open("GET", "chatSelect.class?idx="+MAX, true);
    xmlHttp.send(null);
}
    
function handleStateChange() {
    if(xmlHttp.readyState == 4) {
        if(xmlHttp.status == 200) {

        	var temp = xmlHttp.responseXML;
        	var nameList = temp.getElementsByTagName("USERNAME");   	
        	
        	var chatList = temp.getElementsByTagName("CONTENT");
        	if(nameList.length!=0){
        	for(var i=0;i<nameList.length;i++){
        		var name = decodeURIComponent(nameList[i].childNodes[0].nodeValue);   
            	var chat1 = decodeURIComponent(chatList[i].childNodes[0].nodeValue); 
            	var chat = chat1.split("+").join(" ");
        		$('#chatting').append("<div id='bringMessage' >"+name+" : "+chat+"</div>");        		
        	}
        	var objDiv = document.getElementById("chatting");
        	objDiv.scrollTop = objDiv.scrollHeight;
        	}
        	
        	setTimeout(select, 1000);
        	
        }
    }
}

</SCRIPT>

<title>first page</title>
</head>
<body>
<div id="myCenterDiv">
<!-- 툴바 -->
	<%@include file="student-toolbar.jsp"%>
<!-- //툴바 -->
<div data-role="header" data-theme="b" >
    <h1>반 채팅</h1>
</div>

<!-- 채팅창 -->
	<div class="demo" id="chatting" style="height:420px;;width:90%;   margin:auto; margin-top:5%;overflow: scroll;overflow-x:hidden; ">
		
		
	
	</div>
	<!-- 채팅 입력 -->
	
        <div id="UI" style="width:90%;  margin:auto; " data-position="fixed" >
		<div style="float:left; width:83%;  data-positon:fixed">
			<input type="text" data-mini="true" data-inline="true" width="80%" id="CHAT_CONTENT" name="CHAT_CONTENT"/>
		</div>
		<div style="float:left; width:13%; margin-left:2%">
		<input data-inline="true" type="button" data-mini="true" width="10%" id="btn" value="전송"data-mini="true" />
		</div>
		</div>	
    



	</div>
</body>
</html>