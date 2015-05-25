<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page import="COM.ComDAO3"%>
    <%@page import="COM.ComDTO3"%>
    <%@ page import="java.util.ArrayList"%>  
    <!-- jstl taglig 선언 -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

.bubble{
	position:relative;
}
.bubble .label{
	color:#ffffff;
	background-color:grey;
	border-radius:5px;
	padding:10px;
}
.bubble .tail{
	left:50%;
	margin-left:-120px;
	border-right :18px solid transparent;
	border-bottom:18px solid grey;
	border-left : 18px solid transparent;
	position:absolute;
	top:-18px;
	width:0; height:0;
}

.pupple{
	position:relative;
}
.pupple .label{
	color:#ffffff;
	background-color:grey;
	border-radius:5px;
	padding:10px;
}
.pupple .tail{
	left:50%;
	margin-left:80px;
	border-right :18px solid transparent;
	border-bottom:18px solid grey;
	border-left : 18px solid transparent;
	position:absolute;
	top:-18px;
	width:0; height:0;
}
<script type="text/javascript">
	window.onload = function(){
		​$("textarea").​​​​​​height(400);
		
	};
</script>

</style>
<title>p33</title>
</head>
<body>
<%
		String idx = request.getParameter("idx");
		ComDAO3 dao = new ComDAO3();
		ComDTO3	dto = new ComDTO3();
		dto=dao.selectTest(idx);
	%>
<div id="myCenterDiv" class="content" style="overflow: scroll;overflow-x:hidden;" data-role="none">

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
			<li style="margin-top:8%"><a data-ajax="false"  href="../teacher/34-Notice(teacher)1.jsp">공지사항</a></li>
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
				<td align="center"><a data-ajax="false" style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;사진 등록&nbsp;&nbsp;&nbsp;</a></td><td align="center"><a data-ajax="false" style="margin-left:2%" href="../teacher/05-teacher_main.jsp" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;Main&nbsp;&nbsp;&nbsp;</a></td>
			</tr>	
			<tr>
				<td align="center" colspan="2"><a href="#popupDialog" data-rel="popup" data-position-to="window" data-transition="pop" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Logout</a></td></tr>
		</table>
		
        </form>
</div>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>QnA(답변보내기)</h1>
	</div>

<form id="login" action="quest2.com3" method="post">
<div style="margin-left:-201px; margin-top:30px;">
<img width="10%" height="10%"  src="/hanium_shinhan_classmate/res/Student.png"/>
 </div>
 
	<div class="bubble">
 <p class="label">
 <textarea style="color:#FFFFFF; background-color:transparent; color:whitegrey; text-align:center"  height:500px; margin-left:20px; margin-top:5px"  name="MEMO_Content" id="textarea"placeholder=<%=dto.getMEMO_Content()%>></textarea>
 </p>
 <div class="tail"></div>
 
 
</div>

<div style="margin-left:197px; margin-top:100px;">
<img width="35%" height="35%"  src="/hanium_shinhan_classmate/res/Teacher.png"/>
 </div>
 <div class="pupple">
 <p class="label">
 <textarea style="color:#FFFFFF; background-color:transparent; color:whitegrey; text-align:center"  height:500px; margin-left:20px; margin-top:5px" name="MEMO_Respond" id="textarea"placeholder="답변을 입력해주세요"></textarea>
 </p>
 <div class="tail"></div>
 
 
</div>
<div style="margin-top:12%; text-align: center;">
			<a data-role="button" data-inline="true" href="/hanium_shinhan_classmate/view/32-Q&A(teacher).html">답변보내기</a>
			
		</div>
		<input type="hidden" name="MEMO_ID" value="<%=idx %>" />
		</form>
</div>
</body>
</html>