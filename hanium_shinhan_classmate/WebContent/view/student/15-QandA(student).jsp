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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="description" content="jPaginate - jQuery Pagination Plugin" />
        <meta name="keywords" content="jquery, plugin, pagination, fancy" />
        
        
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

<title>Q & A(student)</title>
</head>
<body>
	<div id="myCenterDiv">
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
				<td align="center" rowspan="2"><img width="70%"src="/hanium_shinhan_classmate/res/myinfo.PNG"></td><td> <font style="margin-left:5%">이름 : 황개<br><strong>&nbsp;학습</strong></font></td>
				
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
    <h1>Q & A</h1>
	</div>
	
	
	<div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
	
	<table style="width:95%; margin:auto; margin-top:70px" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>날짜</th>
			</tr>
</thead>
	<tbody>
		<tr>
			<th><a href="/hanium_shinhan_classmate/view/16-QandA-detail(student).html">1</a></th>
			<td>질문있어요</td>
			<td>2015-01-01</td>
		</tr>
		<tr>
			<th><a href="/hanium_shinhan_classmate/view/16-QandA-detail(student).html">2</a></th>
			<td>ㅎㅇ</td>
			<td>2015-01-01</td>
		</tr>
		<tr>
			<th><a href="/hanium_shinhan_classmate/view/16-QandA-detail(student).html">3</a></th>
			<td>제곧내</td>
			<td>2015-01-01</td>
		</tr>
		<tr>
			<th><a href="/hanium_shinhan_classmate/view/16-QandA-detail(student).html">4</a></th>
			<td>냉무</td>
			<td>2015-01-01</td>
		</tr>
		</tbody>
	</table>
	
	</div>
	
	<div class="swiper-slide">
	
	</div>
	</div>
	<div class="swiper-pagination"></div>
	</div>
	
	<div style="float:right"><a href="../student/17-question.html" role="button" class="ui-shadow ui-btn ui-corner-all ui-btn-inline" data-transition="flip">쪽지 보내기</a></div>
	
        
		
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