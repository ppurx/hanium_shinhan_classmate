<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="Class.ClassDAO"%>
     <%@page import="Class.ClassDTO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
html, body {height:100%; margin:0; padding:0;}
#myCenterDiv {
    position:absolute; 
    left:0%;   
    text-align:center;
    position:fixed; top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}
</style>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
	$('#btn1').click(function(){			
		can.submit();
	});
	
		
	});
</script>
<title>first page</title>
</head>
<body>
<%
	String idx = request.getParameter("idx");
	ClassDTO dto = new ClassDTO();
	ClassDAO dao = new ClassDAO();
	dto = dao.selectClass(idx);
%>
	<div id="myCenterDiv">
	
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
                <li><a data-ajax="false"  href="../student/12-study.jsp">학습하기</a></li>
                <li><a data-ajax="false"  href="../student/15-QandA(student).jsp">Q&A</a></li>
                <li><a data-ajax="false"  href="../student/19-Stu_MyPage.jsp">My Page</a></li>
                <li><a data-ajax="false"  href="../student/22-notice1.jsp">공지사항</a></li>
                <li><a data-ajax="false"  href="../student/24-board2.jsp">자유게시판</a></li>
				<li style="margin-top:8%"><a data-ajax="false"  href="../student/36-Chat(student).jsp">반 채팅</a></li>
        </ul>

</div>
<div data-role="panel" data-position="left" data-display="overlay" data-theme="a" id="add-form">
        <form class="userform" method="post" action="logout.member" name="logout">
            <table align="center" width="95%" style="margin-top:7%">
			<tr>
				<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 :<%=(String)session.getAttribute("name") %><br><strong>&nbsp;<%=(String)session.getAttribute("job") %></strong></font></td>
				
			</tr>
			<tr>
			</tr>
			<tr>
				<td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;사진 등록&nbsp;&nbsp;&nbsp;</a></td><td align="center"><a style="margin-left:2%" href="../student/11-main(student).jsp" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;Main&nbsp;&nbsp;&nbsp;</a></td>
			</tr>	
			<tr>
				<td align="center" colspan="2"><a href="#popupDialog" data-rel="popup" data-position-to="window" data-transition="pop" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Logout</a></td></tr>
		</table>
		
        </form>
</div>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>반 정보</h1>
</div>

<form action="candidate.class" method="post" name="can">
	<div style="margin-top:5%">
	
		<table style="width:90%; margin-left:7%" align="left" >
			<tr>
				<td align="left" colspan="2"><font size="6" style="font-weight:bolder">학교 이름 : <%=dto.getCLASS_SCHOOL_NAME() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="6" style="font-weight:bolder">반 이름 : <%=dto.getCLASS_NAME() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="4" style="font-weight:bolder">선생님 : <%=dto.getTEACHER_NAME() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="4" style="font-weight:bolder">개설 날짜 : <%=dto.getCLASS_FOUND_DATE() %></font></td>
			</tr>
			<tr>
				<td align="left"colspan="2"><font size="4" style="font-weight:bolder">개요</font></td>
			</tr>			
			<tr>
				<td width="5%"></td><td align="left"><font size="3" > <%=dto.getCLASS_CONTENT() %></font></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><a href="#CpopupDialog" data-rel="popup" data-position-to="window" data-transition="pop" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">가입 신청</a></td>
			</tr>
	</table>
	
	
	</div>
	<input type="hidden" name="CLASS_ID" value="<%=idx %>" />
	</form>
	</div>

	<!-- 가입신청 확인-->
	<div data-role="popup" id="CpopupDialog" data-overlay-theme="b" data-theme="b" >
	
	    <div role="main" class="ui-content" style=" text-align: center;">		
			<h3 style="margin:auto">가입 신청 하시겠습니까?</h3>
			<p> </p>
				<a data-ajax="false" href="#" data-role="button" data-inline="true" style="margin-right:8%" id="btn1">&nbspYES&nbsp</a>
				<a data-ajax="false" href="#" data-role="button" data-inline="true" style="margin-left:8%" data-rel="back">&nbsp&nbspNO&nbsp&nbsp</a>
							        
	    </div>
	</div>
	<!-- //가입신청 확인 -->
</body>

</html>