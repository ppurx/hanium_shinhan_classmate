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
    position:fixed; top:0; left:0; width:100%; height:200%;
    background-color:#fafbd3;
}





</style>

<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
		$('#que').click(function(){		
			$('#test').empty();
			$('#x').empty();
			$('#y').empty();
				for(var i=1;i<=$("#que option:selected").val();i++){
					$('#test').append("<tr><td><textarea id='"+que+i+"'>"+i+".\n①②③④</textarea></td></tr>").trigger('create');
					$('#x').append("<th>"+i+"<th>").trigger('create');
					$('#y').append("<td colspan='2'><select data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>").trigger('create');
			}
		});
	
	});
</script>
<title>question</title>
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
    <h1>학습부여</h1>
</div>
	<div id="context" class="content"  data-role="none">
    
	<table style="width:95%" align="center">
	<tr>
		<td>
	<img style="float:left" width="15%" src="/hanium_shinhan_classmate/res/27-1.PNG"/></td>
	</tr>
	<tr>
		
		<td colspan="2"><div style="margin-right:2%;"><input type="text" placeholder="제목을 입력하세요"></div></td>
	</tr>
    <tr>
		<td>
	<img style="float:left" width="25%" src="/hanium_shinhan_classmate/res/27-2.PNG"/></td>
	</tr>
    </table>
    <table  style="width:95%" align="center">
	
	<tr align="right"><td colspan="2">
	 <SELECT id="que"> <OPTION selected value=0>문제 수</OPTION> 
	 <OPTION value=1>1문제</OPTION> <OPTION value=2>2문제</OPTION> <OPTION value=3>3문제</OPTION>
	 <OPTION value=4>4문제</OPTION><OPTION value=5>5문제</OPTION><OPTION value=6>6문제</OPTION><OPTION value=7>7문제</OPTION>
	 <OPTION value=8>8문제</OPTION><OPTION value=9>9문제</OPTION><OPTION value=10>10문제</OPTION>
	 </SELECT> 
	 
	 </td></tr>
	 </table>
    <div style="overflow:auto;overflow-x:hidden; height:140px; width:95%;">
    <table style="width:95%" align="center" id="test">
	
	</table>
	</div>
	
	<div style="overflow:auto;overflow-y:hidden; margin-top:2%">
	 <table style="width:95%; margin:auto;" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
		<thead>
			<tr bgcolor=lightgray id="x" style="text-align:right">
				
			</tr>
		</thead>
		<tbody>
			<tr id="y">
			</tr>
		</tbody>
		</table>
	 </div>
	<a id="btn1" data-ajax="false" href="#" data-role="button" data-inline="true" style=" margin-left:10px">문제 등록</a>
	     
 

     
     </div>
	</div>
</body>
</html>