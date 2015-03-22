<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>


<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>

<meta charset="utf-8">
<script type="text/javascript" src="<c:url value='../view/jquery.touchSwipe.min.js'/>"></script>
<script type="text/javascript" src="<c:url value='../view/touchgallery.js'/>"></script>
<link rel="stylesheet" href="<c:url value='../view/touchgallery.css'/>" type="text/css" media="screen" />


<script>

jQuery(function(){ // on DOM load
		$('div#touchgallery1').touchgallery({  // initialize first demo
			width: 300,
			height: 230
		})
		
	})

</script>
<title>Make_Class</title>
</head>
<body>
<div style="position:absolute; 
    left:0%;   
    text-align: center;
     top:0; left:0; width:100%; height:100%;
    background-color:#fafbd3;">
    
    <div style="margin-left:10%; margin-right:10%; margin-top:25%">
    
    		<input type="text" placeholder="íêµì´ë¦">
    		<input type="text" placeholder="ë° ì´ë¦">
		
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
			<td width="30%" align="center"><a href="#" data-role="button" data-inline="true">ì¤ë³µíì¸</a></td>
			<td width="30%" align="center"><a href="#" data-role="button" data-inline="true">&nbsp&nbspê°&nbsp&nbspì¤&nbsp&nbsp</a></td>
		</tr>
		
	</table>
		
		
	Â 
	</div>
</div>
<br /><br />

   	
Â Â Â Â Â 



	
	
</body>
</html>