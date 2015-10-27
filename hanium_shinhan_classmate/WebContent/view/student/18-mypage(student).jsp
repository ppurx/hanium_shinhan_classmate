<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>

<title>My Page</title>
</head>
<body>
	<div id="myCenterDiv">
	
	<!-- 툴바 -->
	<%@include file="student-toolbar.jsp"%>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>My Page</h1>
	</div>
	<table>
   <tr><a data-ajax="false" href="../student/19-Stu_MyPage.jsp"><img style="margin-top:5%;" width="26%" height="14%" src="/hanium_shinhan_classmate/res/mf.PNG"/></a>
   </tr>
     <div style="margin:-5% 25% 0% 25%">
	 <a data-ajax="false"href="../student/19-Stu_MyPage.jsp"><input type="button" value="내 정보" style=" font-weight:bold; background-color:darkgray" data-mini="true"></a>
	</div>
    </table>
     <table>
   <tr>
   <a data-ajax="false" href="../student/20-study.jsp">
   <img style="margin-top:20px" width="26%" height="14%" src="/hanium_shinhan_classmate/res/achievement.PNG"/></a>
   </tr>
     <div style="margin:-5% 25% 0% 25%">
	 <input data-ajax="false" type="button" value="학업성취도" style="font-weight:bold; background-color:darkgray" data-mini="true" onclick="window.location.href='../student/20-study.jsp';">
	
	</div>
    </table>
    <table>
   <tr><a data-ajax="false" href="../student/21-joinsituation.jsp"><img style="margin-top:20px" width="26%" height="14%" src="/hanium_shinhan_classmate/res/join.PNG"/></a>
   </tr>
     <div style="margin:-5% 25% 0% 25%">
	 <a data-ajax="false"href="../student/21-joinsituation.jsp"><input type="button" value="가입 현황" style="font-weight:bold; background-color:darkgray " data-mini="true"></a>
	</div>
    </table>
	</div>
</body>
</html>