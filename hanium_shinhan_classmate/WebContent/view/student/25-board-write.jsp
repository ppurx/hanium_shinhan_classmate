<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
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
    position:fixed; top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}





</style>
<script type="text/javascript">
$(function(){
	$('#write').click(function(){		
		
		if($('#subject').val()=='')$("#popTitle").popup("open");
		
		else if($('#textarea').val()=='')$("#popContent").popup("open");
		
		else board.submit();
			
	
	})
	});
</script>
<title>board write</title>
</head>
<body>
<form name="board" action="boardWrite.com2" method="post"> 
	<div id="myCenterDiv">
	<div data-role="header"style="background-color:#04B486;">
	<h1>CLASSMATE</h1>
	<a href="#add-form" data-icon="gear" data-iconpos="notext" style="background-color:#04B486;">Add</a>
		<a href="#nav-panel" data-icon="bars" data-iconpos="notext" style="background-color:#04B486;">Menu</a>
		
	</div><!-- /header -->
	<div data-role="panel" data-display="overlay" data-theme="b" id="nav-panel" data-position="right">
       
            <ul data-role="listview">
                <li><a data-ajax="false"  href="../student/12-study.html">학습하기</a></li>
                <li><a data-ajax="false"  href="../student/15-QandA(student).html">Q&A</a></li>
                <li><a data-ajax="false"  href="../student/19-Stu_MyPage.html">My Page</a></li>
                <li><a data-ajax="false"  href="../student/22-notice1.html">공지사항</a></li>
                <li><a data-ajax="false"  href="../student/24-board2.html">자유게시판</a></li>
				<li style="margin-top:8%"><a data-ajax="false"  href="../student/36-Chat(student).html">반 채팅</a></li>
        </ul>

</div>
<div data-role="panel" data-position="left" data-display="overlay" data-theme="a" id="add-form">
        <form class="userform">
            <table align="center" width="90%" style="margin-top:7%">
			<tr>
				<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 : 황개<br><strong>&nbsp;학생</strong></font></td>
				
			</tr>
			<tr>
			</tr>
			<tr>
				<td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;사진 등록&nbsp;&nbsp;&nbsp;</a></td><td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;Main&nbsp;&nbsp;&nbsp;</a></td>
			</tr>	
			<tr>
				<td align="center" colspan="2"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data_inline="true">LOGOUT</a></td></tr>
		</table>
		
        </form>
</div>
	<div data-role="header" data-theme="b" >
    <h1>글등록</h1>
</div>
	


	<table style="width:90%; margin:auto" >
	<tr>
		<td align="left"><img  width="70%"  src="/hanium_shinhan_classmate/res/25-1.PNG"/></td><td><input type="text" name="subject" size="25" placeholder="제목을 입력하세요"></td>
	</tr>
	<tr>
		<td align="left"><img style="height:50%" src="/hanium_shinhan_classmate/res/25-2.PNG"/></td>
	</tr>	
	<tr>
	
	<td  colspan="2" ><textarea style="height:500px; margin-top:5px" name="textarea" id="textarea" placeholder="내용을 입력하세요"></textarea></td>
	</tr>
	<tr >
		<td colspan="2">
		<a  data-ajax="false"style="margin-right:15%" href="../student/24-board2.jsp" data-role="button" data-inline="true" >목록</a>
		<a id="write" data-ajax="false" style="margin-left:15%" href="#" data-role="button" data-inline="true"  >등록</a></td>
		</tr>
	</table>
	

	</div>
	</form>
	<div data-role="popup" data-transition="pop"id="popTitle" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>제목을 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popContent" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>내용을 입력하시오.</p></div>
</body>
</html>