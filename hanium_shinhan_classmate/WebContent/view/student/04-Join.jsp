<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    position: top:0; left:0; width:100%; height:200%;
    background-color:#fafbd3;
}

</style>

<script type="text/javascript">
	$(function(){
		check=0;
		
		$('#Join_Button').click(function(){
			
			if($('#name').val()=='')$("#popName").popup("open");
			else if($('#birth').val()=='')$("#popBirth").popup("open");
			else if($('#email').val()=='')$("#popEmail").popup("open");
			else if($('#school').val()=='')$("#popSchool").popup("open");
			else if($('#address').val()=='')$("#popAddress").popup("open");
			else if(($('#tel1').val()=='')||($('#tel2').val()=='')||($('#tel3').val()==''))$("#popPhone").popup("open");
			
			else if($('#password').val()=='')$("#popPassword").popup("open");
			else if(check==0)$("#popIDCheck").popup("open");
			else join.submit();
				
			
		
		})
		$('#checkID').click(function(){
			startRequest();
			
		})
		$('#cID').click(function(){
			check=1;
			$('#popupDialog').popup("close");	
		})
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
		    
		function startRequest() {
		    createXMLHttpRequest();
		    xmlHttp.onreadystatechange = handleStateChange;
		    xmlHttp.open("GET", "check.member?idx="+$('#id').val(), true);
		    xmlHttp.send(null);
		}
		    
		function handleStateChange() {
		    if(xmlHttp.readyState == 4) {
		        if(xmlHttp.status == 200) {
		        	var mes = xmlHttp.responseXML.getElementsByTagName("message")[0].firstChild.data;
		        	
		        	
		        	if(mes==1){
		        		$('#popupDialog').popup("open");		        		
		        		}
		        	else{
		        		$('#popIDCheckFail').popup("open");
		        		check=0;}
		        	
		        	
		        }
		    }
		}
	
</script>

<title>first page</title>
</head>
<body>
<%request.setAttribute("check",0); %>
<!-- 아이디 중복확인-->
	<div data-role="popup" id="popupDialog" data-overlay-theme="b" data-theme="b" >
	
	    <div role="main" class="ui-content" style=" text-align: center;">		
			<h3 style="margin:auto">이 아이디를 사용하시겠습니까?</h3>
			<p> </p>
				<a data-ajax="false" href="#" data-role="button" data-inline="true" style="margin-right:8%" id="cID">&nbspYES&nbsp</a>
				<a data-ajax="false" href="#" data-role="button" data-inline="true" style="margin-left:8%" data-rel="back">&nbsp&nbspNO&nbsp&nbsp</a>
							        
	    </div>
	</div>
<!-- //아이디 중복확인 -->
<form name="join" action="StuJoin.member" method="post">
	<div id="myCenterDiv">
	
	<div style="margin-left:7%; margin-top:0%">
	
	<table >
		<tr>
			<td align="left" ><h2>회원 가입</h2></td>
		</tr>
		<tr>
		<td></td><td width="65%" align="right"><fieldset data-role="controlgroup" data-type="horizontal" data-mini="true" id="job" name="job"> 
			
				<label for="am_h">학생</label> 
				<input type="radio" name="job" id="am_h" value="0" checked="checked"/> 
				<label for="pm_h" style="width:40px">선생님</label> 
				<input type="radio" name="job" id="pm_h" value=1 />
			</fieldset></td>
		</tr>
	</table>
	
	
	
	
	<table width="80%">
	
	
		
		<tr>
			<td align="left">이름</td><td><input  data-mini="true" type="text" id="name" name="name"/></td>
		
		</tr>
		<tr>
			<td align="left">생년월일</td><td> <input  data-mini="true" id="birth" type="text"name="birth"/></td>
		</tr>
		<tr>
			<td align="left">E-mail</td><td><input  data-mini="true" type="text"id="email" name="email"/></td>
		</tr>
		<tr>
			<td align="left">학교</td><td><input  data-mini="true" type="text"id="school" name="school"/></td>
		</tr>
		<tr>
			<td align="left">주소</td><td><input  data-mini="true" type="text"id="address" name="address"/></td>
		</tr>
						
	</table>
	
	<table width="80%">
	<tr>
		<td align="left" width="13%">연락처</td><td width="15%"><input  data-mini="true" type="text" name="tel1"id="tel1"/></td><td width="1%">-</td><td width="15%"><input  data-mini="true" type="text" name="tel2"id="tel2"/></td><td width="1%">-</td><td width="15%"><input  data-mini="true" type="text" name="tel3"id="tel3"/></td>
	</tr>
	</table>
	
	<table style="margin-top:5%">
		<tr>
			<td align="left">ID</td>
			
			<td><input id="id"  data-mini="true" type="text" name="id"/></td><td><input type="button" id="checkID" data-mini="true"value="중복확인"/></td>
		</tr>
		<tr>
			<td align="left">비밀번호</td><td><input id="password" data-mini="true" type="password" name="password"/></td>
		</tr>
		
						
	</table>
	</div>
	<input style="margin-right:5%"type="button" data-inline="true" value="가입" id="Join_Button"><a href="../student/01-FirstPage.html" data-role="button" data-inline="true" style="margin-left:5%">취소</a>
	</div>
	</form>
	<div data-role="popup" data-transition="pop"id="popIDCheckFail" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>다른 ID를 입력해주십시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popIDCheck" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>ID중복확인을 해주십시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popName" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>이름을 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popBirth" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>생년월일을 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popEmail" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>Email을 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popSchool" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>학교를 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popAddress" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>주소를 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popPhone" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>휴대폰번호 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popId" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>ID를 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popPassword" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>비밀번호를 입력하시오.</p></div>
</body>
</html>