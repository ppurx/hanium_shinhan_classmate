<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="Study.StudyDAO"%>
     <%@page import="Study.StudyDTO"%>
    <%@ page import="java.util.ArrayList"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	var x=1;
	for(x=1;x<=10;x++){
		$("#an"+x).hide();
		$("#ans"+x).hide();
	}

	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>

<title>Homework</title>
</head> 
<body>
<%
	ArrayList<StudyDTO> List =new ArrayList<StudyDTO>();
	String STUDY_ID = request.getParameter("idx");
	StudyDAO dao = new StudyDAO();
	List = dao.selectQuestionList(STUDY_ID);
	request.setAttribute("List",List);
%>
<script type="text/javascript">
$(function(){
	var x=1;
	for(x=1;x<=<%=List.size() %>;x++){
		$("#an"+x).show();
		$("#ans"+x).show();
	}

	});
</script>
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
    <h1>과제</h1>
	</div>
	<div style="margin-top:2%; margin-left:5%; margin-bottom:5%;"><font size="5" style="float:left;">과 목 : <%=List.get(0).getSTUDY_SUBJECT() %></font></div>
	<div style="margin-top:30px; margin-bottom:30px; "align="left">
	
	<div style="margin-top:15%; text-align:center; width:100%;height:350px; overflow-x:hidden; overflow:auto">
	
	<table style="text-align:left;background-color:white; width:90%;  margin:auto;">
		<c:forEach var="Lists"  items="${List}" varStatus="i">		
		<tr>	
			<td style="padding-left:3%;"><pre><c:out value="${Lists.getQUE_CONTENT_TXT()}"/></pre>			
		</tr>
		<tr>
			<td>답 : <c:out value="${Lists.getQUE_ANSWER() }"/></td>
		</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	<div style="margin-left:15px; margin-right:15px;">
	<div style="overflow:auto;">
	
	</div>
	</div>
	<div style="margin-left:100px; margin-right:100px">
		<a data-ajax="false" href="../teacher/27-Question.jsp"><input type="button" value="목록"></a>
	</div>
	</div>
</body>
</html>

