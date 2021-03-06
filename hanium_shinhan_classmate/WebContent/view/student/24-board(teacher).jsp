<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
        height: 45%;
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
<title>board</title>
</head>
<body>
	<div id="myCenterDiv" >
	<!-- 툴바 -->
<%@include file="student-toolbar.jsp"%>

<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>자유게시판</h1>
</div>
  <div class="swiper-container" style="margin-top:20%">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
<table style="width:95%; margin:auto;" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
		<thead>
			<tr>
				<th >제목</th>
				<th >등록자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
</thead>
	<tbody>
		<tr>
			<td><a href="/hanium_shinhan_classmate/view/26-board-detail1.html">신한대학교</a></td>
			<td align="center">황승현</td>
			<td align="center">2014-03-11</td>
			<td>20</td>
		</tr>
		<tr>
			<td><a href="/hanium_shinhan_classmate/view/26-board-detail1.html">신한대학교</a></td>
			<td align="center">황승현</td>
			<td align="center">2014-03-11</td>
			<td>20</td>
		</tr>
		<tr>
			<td><a href="/hanium_shinhan_classmate/view/26-board-detail1.html">신한대학교</a></td>
			<td align="center">황승현</td>
			<td align="center">2014-03-11</td>
			<td>20</td>
		</tr>
		<tr>
		<td><a href="/hanium_shinhan_classmate/view/26-board-detail1.html">신한대학교</a></td>
			<td align="center">황승현</td>
			<td align="center">2014-03-11</td>
			<td>20</td>
		</tr>
		</tbody>
	</table>	
	</div>
	<div class="swiper-slide"></div>
	
	</div>
	<div class="swiper-pagination"></div>
	</div>
	
           
		<a href="/hanium_shinhan_classmate/view/25-board-write.html" data-role="button" data-inline="true" style="margin-left:70%; margin-top:20%">글쓰기</a>
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