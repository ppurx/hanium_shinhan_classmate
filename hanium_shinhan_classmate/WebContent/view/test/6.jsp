<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/j6-Mak_Class.htmlstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>

<link rel="stylesheet" TYPE="text/css" href="../view/touchgallery.css">
<script type="text/javascript" src="../view/jquery.touchSwipe.min.js"></script>

<script type="text/javascript" src="../view/touchgallery.js">

/***********************************************
* Touch Image Gallery- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

</script>

<script>

jQuery(function(){ // on DOM load
		$('div#touchgallery1').touchgallery({  // initialize first demo
			width: 300,
			height: 230
		})
		
	})

</script>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script type="text/javascript" src="<c:url value='../view/touchgallery.js' />"></script>
<script type="text/javascript" src="<c:url value='../view/jquery.touchSwipe.min.js' />"></script>
<link rel="stylesheet" TYPE="text/css" href="<c:url ../view/touchgallery.css' />">
</head>
<body>
<div style="position:absolute; 
    left:0%;   
    text-align: center;
     top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;">
    
    <div style="margin-left:10%; margin-right:10%; margin-top:25%">
    
    		<input type="text" placeholder="학교이름">
    		<input type="text" placeholder="반 이름">
		
	</div>
	
<div id="touchgallery1" class="touchgallery" style="margin:auto">
	<ul>
		<li><img src="/hanium_shinhan_classmate/res/chok1.png" /></li>
		<li><img src="/hanium_shinhan_classmate/res/chok2.png" /></li>
		<li><img src="/hanium_shinhan_classmate/res/chok3.png" /></li>
		<li><img src="/hanium_shinhan_classmate/res/chok4.png" /></li>
		<li><img src="/hanium_shinhan_classmate/res/chok5.png" /></li>
		<li><img src="/hanium_shinhan_classmate/res/chok6.png" /></li>
	</ul>
</div>


	<div style="margin-top:5%">
	<table align="center" >
		<tr>
			<td width="30%" align="center"><a href="#" data-role="button" data-inline="true">중복확인</a></td>
			<td width="30%" align="center"><a href="#" data-role="button" data-inline="true">&nbsp&nbsp개&nbsp&nbsp설&nbsp&nbsp</a></td>
		</tr>
		
	</table>
		
		
	 
	</div>
</div>


</body>
</html>