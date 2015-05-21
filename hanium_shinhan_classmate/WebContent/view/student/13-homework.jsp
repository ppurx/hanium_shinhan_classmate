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

<title>Homework</title>
</head> 
<body>
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
    <h1>과제</h1>
	</div>
	<div style="margin-top:30px; margin-bottom:30px; "align="left">
	
	<table style="margin-left:5%;">
		<tr>
			<td align="left">1. 동물농장의 멤버가 아닌 것은?</td>
		</tr>
		<tr>
			<td>① 악어(김상현)</td>
		</tr>
		<tr>
			<td>② 개(황승현)</td>
		</tr>
		<tr>
			<td>③ 돼지(이재훈)</td>
		</tr>
		<tr>
			<td>④ 훈남(정동수)</td>
		</tr>
	</table>
	</div>
	<div style="margin-left:15px; margin-right:15px;">
	<table style="width:95%;" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
		<thead>
			<tr bgcolor=lightgray>
				<th><center>1</center></th>
				<th><center>2</center></th>
				<th><center>3</center></th>
				<th><center>4</center></th>
				<th><center>5</center></th>
			</tr>
		</thead>
			<tr>
				<td>
				<select data-mini="true" size="1">
				<option selected value="1">1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				</select>
				</td>
				<td>
				<select data-mini="true" size="1">
				<option selected value="1">1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				</select>
				</td>
				<td>
				<select data-mini="true" size="1">
				<option selected value="1">1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				</select>
				</td>
				<td>
				<select data-mini="true" size="1">
				<option selected value="1">1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				</select>
				</td>
				<td>
				<select data-mini="true" size="1">
				<option selected value="1">1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				</select>
				</td>
			</tr>
		<thead>
			<tr bgcolor=lightgray>
				<th><center>6</center></th>
				<th><center>7</center></th>
				<th><center>8</center></th>
				<th><center>9</center></th>
				<th><center>10</center></th>
			</tr>
		</thead>
			<tr>
				<td>
				<select data-mini="true" size="1">
				<option selected value="1">1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				</select>
				</td>
				<td>
				<select data-mini="true" size="1">
				<option selected value="1">1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				</select>
				</td>
				<td>
				<select data-mini="true" size="1">
				<option selected value="1">1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				</select>
				</td>
				<td>
				<select data-mini="true" size="1">
				<option selected value="1">1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				</select>
				</td>
				<td>
				<select data-mini="true" size="1">
				<option selected value="1">1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				</select>
				</td>
			</tr>
	</table>
	</div>
	<div style="margin-top:30px; margin-left:100px; margin-right:100px">
	<a href="../student/14-score.html"><input type="button" value="점수확인"></a>
	</div>
	</div>
</body>
</html>

	