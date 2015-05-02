<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="Class.ClassDAO"%>
     <%@page import="Class.ClassDTO"%>
    <%@ page import="java.util.ArrayList"%>  
    <!-- jstl taglig 선언 -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
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
@font-face {
  font-family: 'Nanum Pen Script';
  font-style: normal;
  font-weight: 400;
  src: url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.eot);
  src: url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.eot?#iefix) format('embedded-opentype'),
       url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.woff2) format('woff2'),
       url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.woff) format('woff'),
       url(//fonts.gstatic.com/ea/nanumpenscript/v4/NanumPenScript-Regular.ttf) format('truetype');
}
</style>

<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>

<title>student main</title>
</head>
<body>
	<%
			ClassDAO dao = new ClassDAO();
			ArrayList<ClassDTO> List = dao.selectClassList();
			request.setAttribute("List",List);
			
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
                <li><a data-ajax="false"  href="../student/12-study.html">학습하기</a></li>
                <li><a data-ajax="false"  href="../student/15-QandA(student).html">Q&A</a></li>
                <li><a data-ajax="false"  href="../student/19-Stu_MyPage.html">My Page</a></li>
                <li><a data-ajax="false"  href="../student/22-notice1.html">공지사항</a></li>
                <li><a data-ajax="false"  href="../student/24-board2.html">자유게시판</a></li>
				<li style="margin-top:8%"><a data-ajax="false"  href="../student/36-Chat(student).html">반 채팅</a></li>
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
				<td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;사진 등록&nbsp;&nbsp;&nbsp;</a></td><td align="center"><a style="margin-left:2%" href="../student/11-main(student).html" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;Main&nbsp;&nbsp;&nbsp;</a></td>
			</tr>	
			<tr>
				<td align="center" colspan="2"><a href="#popupDialog" data-rel="popup" data-position-to="window" data-transition="pop" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Logout</a></td></tr>
		</table>
		
        </form>
</div>

<!-- //툴바 -->
	<div style="margin:15% 7% 0 7%">
	 <a data-ajax="false" href="../student/09-FindClass.jsp"><input type="button" value="반 검색" ></a>
	</div>
	<!-- 클래스 리스트 출력 -->
			 
		 		
			 
	
	<table align="center" style="margin-top:10%" >		
		
		
			
		<c:forEach var="Lists"  items="${List}" varStatus="i">
		
			<c:if test="${i.index%2 == 0}">		
			<tr>		
				<td width="220px" height="150px"style="background-repeat: no-repeat;background-size:100%; position:relative;background-image: url(/hanium_shinhan_classmate/res/chok3.png);  "><div style="position:relative;"><p><font size="7"  style="color:white; font-family:Nanum Pen Script;"><c:out value="${Lists.getCLASS_SCHOOL_NAME()}"/></font></p><p><font size="5"  style="color:white; font-family:Nanum Pen Script;"><c:out value="${Lists.getCLASS_NAME()}"/></font></p></div></td>
			
			</c:if>
			<c:if test="${i.index%2 != 0 }">
				<td width="220px" height="150px"style="background-repeat: no-repeat;background-size:100%; position:relative;background-image: url(/hanium_shinhan_classmate/res/chok3.png);  "><div style="position:relative;"><p><font size="7"  style="color:white; font-family:Nanum Pen Script;"><c:out value="${Lists.getCLASS_SCHOOL_NAME()}"/></font></p><p><font size="5"  style="color:white; font-family:Nanum Pen Script;"><c:out value="${Lists.getCLASS_NAME()}"/></font></p></div></td>
			</tr>
			</c:if>
		
		</c:forEach>
		
	</table>
	
	</div>
</body>
</html>