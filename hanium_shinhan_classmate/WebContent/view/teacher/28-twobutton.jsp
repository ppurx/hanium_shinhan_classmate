<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    position:fixed; top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}





</style>

<title>twobutton</title>
</head>
<body>
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
    <h1>반 관리</h1>
</div>
   <table>
   <tr><a data-ajax="false" href="../teacher/29-Classmanagement.jsp"><img style="margin-top:60px; margin-right:11px" width="26%" height="14%" src="/hanium_shinhan_classmate/res/28--1.PNG"/></a>
   </tr>
     <div style="margin:0% 16% 0 16%">
	 <input  data-ajax="false"type="button" value="가입 승인" style=" font-weight:bold; background-color:darkgray " data-mini="true" onclick="location.href='../teacher/29-Classmanagement.jsp'">
	
	</div>
    </table>
     <table>
   <tr><a  data-ajax="false"href="../teacher/30-StudentManagement.jsp"><img style="margin-top:80px" width="26%" height="14%" src="/hanium_shinhan_classmate/res/28--2.PNG"/></a>
   </tr>
     <div style="margin:0% 16% 0 16%">
	 <input  data-ajax="false"type="button" value="학생 역량 관리" style="font-weight:bold; background-color:darkgray " data-mini="true" onclick="location.href='../teacher/30-StudentManagement.jsp'">
	</div>
    </table>
	</div>
</body>
</html>