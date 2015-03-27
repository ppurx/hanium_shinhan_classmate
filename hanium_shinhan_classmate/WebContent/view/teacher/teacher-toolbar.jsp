<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
</head>
<body>	
<div data-role="header"style="background-color:#04B486;">
	<h1>CLASSMATE</h1>
	<a href="#add-form" data-icon="gear" data-iconpos="notext" style="background-color:#04B486;">Add</a>
		<a href="#nav-panel" data-icon="bars" data-iconpos="notext" style="background-color:#04B486;">Menu</a>
		
	</div><!-- /header -->
	<div data-role="panel" data-display="overlay" data-theme="b" id="nav-panel" data-position="right">
       
            <ul data-role="listview">
                <li><a href="/hanium_shinhan_classmate/view/27-question.html">학습부여</a></li>
                <li><a href="/hanium_shinhan_classmate/view/32-Q&A(teacher).html">Q&A</a></li>
                <li><a href="/hanium_shinhan_classmate/view/29-Classmanagement.html">반 관리</a></li>
                <li><a href="/hanium_shinhan_classmate/view/34-Notice(teacher).html">공지사항</a></li>
                <li><a href="/hanium_shinhan_classmate/view/24-board1.html">자유게시판</a></li>
                <li><a href="/hanium_shinhan_classmate/view/31-MyInformation(teacher).html">내 정보</a></li>
				
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
</body>
</html>