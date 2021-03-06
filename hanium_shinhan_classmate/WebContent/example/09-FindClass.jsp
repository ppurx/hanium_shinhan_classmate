<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta charset="euc-kr">

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
		var xmlHttp;
		function createXMLHttpRequest() {
		    if (window.ActiveXObject) {
		        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		    } 
		    else if (window.XMLHttpRequest) {
		        xmlHttp = new XMLHttpRequest();
		    }
		}
		    
		function startRequest() {
		    createXMLHttpRequest();
		    xmlHttp.onreadystatechange = handleStateChange;
		    xmlHttp.open("GET", "selectClass.class?idx="+$('#x').val(), true);
		    xmlHttp.send(null);
		}
		    
		function handleStateChange() {
		    if(xmlHttp.readyState == 4) {
		        if(xmlHttp.status == 200) {
		        	var value=xmlHttp.responseXML.getElementsByTagName("message")[0].firstChild.data
		        	alert(value);
		        }
		    }
		}
	

</script>
<title>Find Class</title>
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
				<td align="center"><a style="margin-left:2%" href="#" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;사진 등록&nbsp;&nbsp;&nbsp;</a></td><td align="center"><a style="margin-left:2%" href="../student/11-main(student).html" data-role="button" data-mini="true" data-inline="true" >&nbsp;&nbsp;&nbsp;Main&nbsp;&nbsp;&nbsp;</a></td>
			</tr>	
			<tr>
				<td align="center" colspan="2"><a href="#popupDialog" data-rel="popup" data-position-to="window" data-transition="pop" class="ui-btn ui-corner-all ui-shadow ui-btn-inline">Logout</a></td></tr>
		</table>
		
        </form>
</div>

<!-- //툴바 -->
<div data-role="header" data-theme="b" >
    <h1>반 검색</h1>
</div>

	<div style="width:85%;margin:20% 7% 0 7%">
	<table>
		<tr><td><input id="x" type="search" name="search-5" id="search-5" placeholder="학교 이름"></td><td><input data-mini="true" onclick="startRequest();" type="button" value="검색" id="search_btn"/></td></tr>
	</table>
	</div>
	
	<!-- 게시판 내부 -->
	<div class="swiper-container">
        <div class="swiper-wrapper">
            
            <!-- 페이지 슬라이더 한 디비전 -->
	<div class="swiper-slide">
		<table style="width:95%; margin:auto;" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
		<thead>
			<tr>
				<th >반 이름</th>
				<th >선생님</th>
				<th>가입 인원</th>
				<th>등록 일자</th>
			</tr>
		</thead>
			<tbody>
				<tr>
					<td><a href="/hanium_shinhan_classmate/view/10-Class_Info.html">신한대학교</a></th>
					<td align="center">김상현</td>
					<td align="center">41</td>
					<td>2014-2-1</td>
				</tr>
				<tr>
					<th><a href="/hanium_shinhan_classmate/view/10-Class_Info.html">신한대학교</a></th>
					<td>김상현</td>
					<td>41</td>
					<td>2014-2-1</td>
				</tr>
				<tr>
					<th><a href="/hanium_shinhan_classmate/view/10-Class_Info.html">신한대학교</a></th>
					<td>김상현</td>
					<td>41</td>
					<td>2014-2-1</td>
				</tr>
				<tr>
					<th><a href="/hanium_shinhan_classmate/view/10-Class_Info.html">신한대학교</a></th>
					<td>김상현</td>
					<td>41</td>
					<td>2014-2-1</td>
				</tr>
				</tbody>
			</table>
			</div>
			
			<div class="swiper-slide">
		<table style="width:95%; margin:auto;" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
		<thead>
			<tr>
				<th >반 이름</th>
				<th >선생님</th>
				<th>가입 인원</th>
				<th>등록 일자</th>
			</tr>
		</thead>
			<tbody>
				<tr>
					<td><a href="/hanium_shinhan_classmate/view/10-Class_Info.html">신한대학교</a></th>
					<td align="center">김상현</td>
					<td align="center">41</td>
					<td>2014-2-1</td>
				</tr>
				<tr>
					<th><a href="/hanium_shinhan_classmate/view/10-Class_Info.html">신한대학교</a></th>
					<td>김상현</td>
					<td>41</td>
					<td>2014-2-1</td>
				</tr>
				<tr>
					<th><a href="/hanium_shinhan_classmate/view/10-Class_Info.html">신한대학교</a></th>
					<td>김상현</td>
					<td>41</td>
					<td>2014-2-1</td>
				</tr>
				<tr>
					<th><a href="/hanium_shinhan_classmate/view/10-Class_Info.html">신한대학교</a></th>
					<td>김상현</td>
					<td>41</td>
					<td>2014-2-1</td>
				</tr>
				</tbody>
			</table>
			</div>
			
			
			</div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
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