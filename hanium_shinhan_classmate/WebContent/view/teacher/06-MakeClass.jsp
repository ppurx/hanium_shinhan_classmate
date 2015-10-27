<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>

<meta charset="utf-8">
<link rel="stylesheet" TYPE="text/css" href="../../view/touchgallery.css">
<script type="text/javascript" src="../../view/jquery.touchSwipe.min.js"></script>

<script type="text/javascript" src="../../view/touchgallery.js">
/***********************************************
* Touch Image Gallery- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/
</script>
<script type="text/javascript" src="<c:url value='../../view/touchgallery.js' />"></script>
<script type="text/javascript" src="<c:url value='../../view/jquery.touchSwipe.min.js' />"></script>
<link rel="stylesheet" TYPE="text/css" href="<c:url ../../view/touchgallery.css' />">
<script>
jQuery(function(){ // on DOM load
		$('div#touchgallery1').touchgallery({  // initialize first demo
			width: 300,
			height: 230
		});
		
		$('#btn1').click(function(){			
			createClass.submit();
		});
		$('#logoutOK').click(function(){			
			logout.submit();
		});
		
		
	})
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





</style>

<title>Make_Class</title>
</head>
<body>
<div id="myCenterDiv">
    
	<!-- 툴바 -->
	<%@include file="../student/label.jsp" %>
	<!-- /툴바 -->
<div data-role="panel" data-position="left" data-display="overlay" data-theme="a" id="add-form">
        <form class="userform" method="post" action="logout.member" name="logout">
            <table align="center" width="95%" style="margin-top:7%">
			<tr>
				<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 :<%=(String)session.getAttribute("name") %><br><strong>&nbsp;<%=(String)session.getAttribute("job") %></strong></font></td>
				
			</tr>
			<tr>
			</tr>
			<tr>
				<td align="center"><a data-ajax="false" style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;사진 등록&nbsp;&nbsp;&nbsp;</a></td><td align="center"><a data-ajax="false" style="margin-left:2%" href="../teacher/05-teacher_main.jsp" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;Main&nbsp;&nbsp;&nbsp;</a></td>
			</tr>	
			<tr>
				<td align="center" colspan="2"><a href="#popupDialog" data-rel="popup" data-position-to="window" data-transition="pop" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Logout</a></td></tr>
		</table>
		
        </form>
</div>

<!-- //툴바 -->
<form id="createClass" action="createClass.class" method="post">
    <div style="margin-left:10%; margin-right:10%; margin-top:25%">
    
    		<input type="text" placeholder="학교이름" name="schoolName">
    		<input type="text" placeholder="반 이름" name="ClassName">
		
	</div>
	
<div id="touchgallery1" class="touchgallery" style="margin:auto">
	<ul>
		<li><img src="/hanium_shinhan_classmate/res/chok1.png" /></li>
		<li><img src="/hanium_shinhan_classmate/res/chok2.png" /></li>
		<li><img src="/hanium_shinhan_classmate/res/chok3.png" /></li>
		<li><img src="/hanium_shinhan_classmate/res/chok4.png" /></li>
		<li><img src="/hanium_shinhan_classmate/res/chok5.png" /></li>
		<li><img src="/hanium_shinhan_classmate/res/chok6.png" /></li>
	</ul>
</div>


	<div style="margin-top:5%">
	<table align="center" >
		<tr>
			<td width="30%" align="center"><a href="#" data-role="button" data-inline="true">중복확인</a></td>
			<td width="30%" align="center"><a id="btn1"href="#" data-role="button" data-inline="true">&nbsp&nbsp개&nbsp&nbsp설&nbsp&nbsp</a></td>
		</tr>
		
	</table>
		
		
	 
	</div>
</div>
<br /><br />

   	
     



	
	</form>
</body>
</html>