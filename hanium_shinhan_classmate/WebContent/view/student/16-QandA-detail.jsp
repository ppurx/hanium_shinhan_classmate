<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Q & A detail</title>
</head>
<body>
<div id="myCenterDiv" class="content" style="overflow: scroll;" data-role="none">
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
				<li style="margin-top:8%"><a data-ajax="false"  href="../student/36-Chat(student)).html">반 채팅</a></li>
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
    <h1>Q & A(내용)</h1>
	</div>
	
<div style="margin-left:-201px; margin-top:30px;">
<img width="10%" height="10%"  src="/hanium_shinhan_classmate/res/Student.png"/>
 </div>
 
	<div class="bubble">
 <p class="label" style="margin-left:5%; margin-right:5%">
 <textarea style="color:#FFFFFF; background-color:transparent; color:whitegrey; text-align:center"  height:500px; margin-left:20px; margin-top:5px"  name="textarea" id="textarea"placeholder="질문내용"></textarea>
 </p>
 <div class="tail"></div>
 
 
</div>

<div style="margin-left:197px; margin-top:100px;">
<img width="35%" height="35%"  src="/hanium_shinhan_classmate/res/Teacher.png"/>
 </div>
 <div class="pupple">
 <p class="label" style="margin-left:5%; margin-right:5%">
 <textarea style="color:#FFFFFF; background-color:transparent; color:whitegrey; text-align:center"  height:500px; margin-left:20px; margin-top:5px" name="textarea" id="textarea"placeholder="답변내용"></textarea>
 </p>
 <div class="tail"></div>
 
 
</div>
</div>
</body>
<title>Insert title here</title>
</head>
<body>

</body>
</html>