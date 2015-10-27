<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
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
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
	$('#btn1').click(function(){
		searchClass.submit()
	});
		
	});
</script>
<title>Find Class</title>
</head>
<body>

<div id="myCenterDiv">
<%@include file="label.jsp" %>
<div data-role="header" data-theme="b" >
    <h1>반 검색</h1>
</div>
<form id="searchClass" action="searchClass.class" method="post">
	<div style="width:85%;margin:20% 7% 0 7%">
	<table>
		<tr><td><input id="x" type="search" name="x" id="search-5" placeholder="학교 이름"></td><td><input data-mini="true" id="btn1" type="button" value="검색" id="search_btn"/></td></tr>
	</table>
	</div>
	</form>
	<!-- 게시판 내부 -->
	<div class="swiper-container">
        <div class="swiper-wrapper">
         
			</div>       
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