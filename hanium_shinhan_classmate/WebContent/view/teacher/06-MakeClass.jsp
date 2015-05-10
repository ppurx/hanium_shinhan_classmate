<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

<title>Make_Class</title>
</head>
<body>
<div style="position:absolute; 
    left:0%;   
    text-align: center;
     top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;">
    
	<!-- 툴바 -->
	<div data-role="header"style="background-color:#04B486;">
	
	<!-- 로그아웃 확인-->
	<div data-role="popup" id="popupDialog" data-overlay-theme="b" data-theme="b" >
	
	    <div role="main" class="ui-content" style=" text-align: center;">		
			<h3 style="margin:auto">로그아웃 하시겠습니까?</h3>
			<p> </p>
				<a data-ajax="false" href="#" data-role="button" data-inline="true" style="margin-right:8%" id="logoutOK">&nbspYES&nbsp</a>
				<a data-ajax="false" href="#" data-role="button" data-inline="true" style="margin-left:8%" data-rel="back">&nbsp&nbspNO&nbsp&nbsp</a>
							        
	    </div>
	</div>
	<!-- //로그아웃 확인 -->
	<h1>CLASSMATE</h1>
	<a href="#add-form" data-icon="gear" data-iconpos="notext" style="background-color:#04B486;">Add</a>
		<a href="#nav-panel" data-icon="bars" data-iconpos="notext" style="background-color:#04B486;">Menu</a>
		
	</div><!-- /header -->
	<div data-role="panel" data-display="overlay" data-theme="b" id="nav-panel" data-position="right">
       
              <ul data-role="listview">
			<li style="margin-top:8%"><a  data-ajax="false" href="../teacher/27-Question.jsp">학습부여</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/32-Q&A(teacher).jsp">Q&A</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/28-twobutton.jsp">반 관리</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/34-Notice(teacher).jsp">공지사항</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/24-board2.jsp">자유게시판</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/31-MyInformation(teacher).jsp">내 정보</a></li>
			<li style="margin-top:8%"><a  data-ajax="false" href="../teacher/37-Chat(teacher).jsp">반 채팅</a></li>
			</ul>

	</div>
	
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
				<td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;사진 등록&nbsp;&nbsp;&nbsp;</a></td><td align="center"><a style="margin-left:2%" href="../student/11-main(student).html" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;Main&nbsp;&nbsp;&nbsp;</a></td>
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