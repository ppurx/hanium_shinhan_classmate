<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta charset="utf-8">
 <style type="text/css">
html, body {height:100%; margin:0; padding:0;}
#myCenterDiv { 
    position:absolute; 
    left:0%;   
    text-align: center;
    top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}

</style>
<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<title>notice2</title>
</head>
<body>
<div id="myCenterDiv">
		<!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>
	
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

	<div data-role="header" data-theme="b" >
    <h1>공지사항</h1>
</div>
	


	<table style="width:90%" >
	<tr>
		<td><img style="margin-left:3px" width="70%" height="50%" src="/hanium_shinhan_classmate/res/26-1.PNG"/></td><td><input type="text" size="20" placeholder="제목을 입력하세요"></td>
	</tr>
    <tr >
		<td><img  width="72%" height="60%" src="/hanium_shinhan_classmate/res/26-2.PNG"/></td><td><input type="text" size="20" placeholder="작성자를 입력하세요"></td>
	</tr>
	<tr>
		<td><img style="margin-left:5px" width="70%" height="50%" src="/hanium_shinhan_classmate/res/26-3.PNG"/></td><td><input type="text" size="20" placeholder="작성일을 입력하세요"></td>
	</tr>
	<tr>
		<td><img style="margin-top:30px; margin-left:20px" width="50%" height="50%" src="/hanium_shinhan_classmate/res/25-2.PNG"/></td>
	</tr>	
	<tr>
	
	<td  colspan="2" ><textarea style="height:500px; margin-left:20px; margin-top:5px" name="textarea" id="textarea"placeholder="내용을 입력하세요"></textarea></td>
	</tr>
	 <tr><td colspan="3"><a data-ajax="false"href="../teacher/22-notice1.jsp" data-role="button" data-inline="true" style="margin-left:85%">목록</a></td></tr>
	</table>
	

	</div>
</body>
</html>