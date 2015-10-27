<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="COM.ComDAO3"%>
    <%@page import="COM.ComDTO3"%>
    <%@ page import="java.util.ArrayList"%>  
    <!-- jstl taglig 선언 -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
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
	$('#btn1').click(function(){
		UpdateMEMO.submit();
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
	<%@include file="teacher-toolbar.jsp" %>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>QnA(답변보내기)</h1>
	</div>

<div style="margin-left:-201px; margin-top:30px;">
<img width="10%" height="10%"  src="/hanium_shinhan_classmate/res/Student.png"/>
 </div>
 
	<div class="bubble">
 <p class="label">
 <textarea style="color:#FFFFFF; background-color:transparent; color:whitegrey; text-align:center" disabled="true"  height:500px; margin-left:20px; margin-top:5px"  name="MEMO_Content" id="textarea" placeholder=<%=dto.getMEMO_Content()%>></textarea>
 </p>
 <div class="tail"></div>
 
 
</div>
<form name="UpdateMEMO" action="UpdateMEMO.com3" method="post">
<div style="margin-left:197px; margin-top:100px;">
<img width="35%" height="35%"  src="/hanium_shinhan_classmate/res/Teacher.png"/>
 </div>
 <div class="pupple">
 <p class="label">
 <textarea style="color:#FFFFFF; background-color:transparent; color:whitegrey; text-align:center"  height:500px; margin-left:20px; margin-top:5px" name="MEMO_Responde" id="textarea" placeholder="답변을 입력해주세요"></textarea>
 </p>
 <div class="tail"></div>
</div>
<div style="margin-top:12%; text-align: center;">
			<a data-role="button" data-inline="true" id="btn1" >답변보내기</a>
			
		</div>
		<input type="hidden" name="MEMO_ID" value="<%=idx %>" />
		</form>
</div>
</body>
</html>