<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<link rel="stylesheet" href="../../view/swiper.min.css">
<style type="text/css">
 #myCenterDiv {
    position:absolute; 
    left:0%;   
    text-align: center;
    position:fixed; top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;
}

    html, body {
        position: relative;
        height: 100%;
    }
    
    .swiper-container {
        width: 100%;
        height: 50%;
    }
    .swiper-slide {
        text-align: center;
      
        background: #fafbd3;

        /* Center slide text vertically */
         display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
        
    }




</style>

<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<title>32p</title>
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
    <h1>QnA</h1>
	</div>
	
	<div class="swiper-container" style="margin-top:10%">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
	<table style="width:95%; margin-top:50px; "  data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
		<thead>
			<tr>
				<th style=text-align:center;>번호</th>
				<th style=text-align:center;>제목</th>
				<th style=text-align:center;>보낸이</th>
				<th style=text-align:center;>날짜</th>
			</tr>
</thead>
	<tbody>
		<tr>
			<th style=text-align:center;>BPM</th>
			<td style=text-align:center;><a href="/hanium_shinhan_classmate/view/33-Q&A(details).html">김상현</a></td>
			<td style=text-align:center;>41</td>
			<td style=text-align:center;>2014-2-1</td>
		</tr>
		<tr>
			<th style=text-align:center;>쿠익</th>
			<td style=text-align:center;><a href="/hanium_shinhan_classmate/view/33-Q&A(details).html">김상현</a></td>
			<td style=text-align:center;>41</td>
			<td style=text-align:center;>2014-2-1</td>
		</tr>
		<tr>
			<th style=text-align:center;>트롤</th>
			<td style=text-align:center;><a href="/hanium_shinhan_classmate/view/33-Q&A(details).html">김상현</a></td>
			<td style=text-align:center;>41</td>
			<td style=text-align:center;>2014-2-1</td>
		</tr>
		<tr>
			<th style=text-align:center;>콸콸</th>
			<td style=text-align:center;><a href="/hanium_shinhan_classmate/view/33-Q&A(details).html">김상현</a></td>
			<td style=text-align:center;>41</td>
			<td style=text-align:center;>2014-2-1</td>
		</tr>
		</tbody>
	</table>
	</div>
	  <div class="swiper-slide"></div>
	</div>
	<div class="swiper-pagination"></div>
	</div>
	
		
		<div style="margin-top:20%; float:right; margin-right:5%">
			<input type="button" data-inline="true" value="답변하기" onclick="location.href='/hanium_shinhan_classmate/view/33-Q&A(details).html'">
		</div>
		
	</div>
	<script src="../../view/swiper.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true
    });
    </script>
</body>
</html>