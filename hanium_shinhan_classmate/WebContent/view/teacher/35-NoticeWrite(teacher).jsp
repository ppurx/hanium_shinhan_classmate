<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
	window.onload = function(){
		​$("textarea").​​​​​​height(400);
  $(function(){
			$('#Join_Button').click(function(){
				
				if($('#title').val()=='')$("#popTitle").popup("open");
				if($('#content').val()=='')$("#popContent").popup("open");
				
				else join.submit();
					
			
			})
			});
	};
</script>
<title>p35</title>
</head>
<body>
<form name="notice" action="Tnotice.com" method="post">
	<div id="myCenterDiv">
	<div data-role="header"style="background-color:#04B486;">
	<h1>CLASSMATE</h1>
	<a href="#add-form" data-icon="gear" data-iconpos="notext" style="background-color:#04B486;">Add</a>
		<a href="#nav-panel" data-icon="bars" data-iconpos="notext" style="background-color:#04B486;">Menu</a>
		
	</div><!-- /header -->
	<div data-role="panel" data-display="overlay" data-theme="b" id="nav-panel" data-position="right">
       
	
       
            <ul data-role="listview">
			<li style="margin-top:8%"><a  data-ajax="false" href="../teacher/27-Question.html">학습부여</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/32-Q&A(teacher).html">Q&A</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/28-twobutton.html">반 관리</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/34-Notice(teacher).html">공지사항</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/24-board2.html">자유게시판</a></li>
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/31-MyInformation(teacher).html">내 정보</a></li>
			<li style="margin-top:8%"><a  data-ajax="false" href="../teacher/37-Chat(teacher).html">반 채팅</a></li>
				
				
        </ul>
</div>
<div data-role="panel" data-position="left" data-display="overlay" data-theme="a" id="add-form">
        <form class="userform">
            <table align="center" width="90%" style="margin-top:7%">
			<tr>
				<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 : 황개<br><strong>&nbsp;선생님</strong></font></td>
				
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
    <h1>공지쓰기</h1>
</div>
	


	<table style="width:90%; margin:auto" >
	<tr>
		<td align="left"><img  width="70%"  src="/hanium_shinhan_classmate/res/25-1.PNG"/></td><td><input id="title" name="title" type="text" size="25" placeholder="제목을 입력하세요"></td>
	</tr>
    
	<tr>
		<td align="left"><img style="height:50%" src="/hanium_shinhan_classmate/res/25-2.PNG"/></td>
	</tr>	
	<tr>
	
	<td  colspan="2" ><textarea style="height:500px; margin-top:5px" name="content" id="content"placeholder="내용을 입력하세요"></textarea></td>
	</tr>
	<tr >
		<td colspan="2">
		<a  data-ajax="false"style="margin-right:15%" href="../teacher/34-Notice(teacher).html" data-role="button" data-inline="true" >목록</a>
		<a data-ajax="false" style="margin-left:15%" href="../teacher/34-Notice(teacher).html" data-role="button" data-inline="true"  >등록</a></td>
		</tr>
	</table>
	

	</div>
	</form>
		<div data-role="popup" data-transition="pop"id="poptitle" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>제목을 입력하시오.</p></div>
	<div data-role="popup" data-transition="pop"id="popcontent" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>내용을 입력하시오.</p></div>
</body>
</html>