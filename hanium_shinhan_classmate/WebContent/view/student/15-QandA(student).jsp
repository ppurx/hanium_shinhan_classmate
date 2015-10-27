<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page import="COM.ComDAO3"%>
     <%@page import="COM.ComDTO3"%>
  <%@ page import="java.util.ArrayList"%>  
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
<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
<title>Q & A(student)</title>
</head>
<body>
<%
	ComDAO3 dao = new ComDAO3();
	ArrayList<ComDTO3> List = dao.selectTest3((String)session.getAttribute("id"));
	request.setAttribute("List",List);

 %>
	<div id="myCenterDiv">
	<%@include file="student-toolbar.jsp"%>
	<div data-role="header" data-theme="b" >
    <h1>Q & A</h1>
	</div>
	
	
	<div class="swiper-container">
        <div class="swiper-wrapper">
    
    <div class="swiper-slide">
		<table style="width:95%; margin:auto; margin-top:50px" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
			<thead>
				<tr>
					<th>보낸이</th>
					<th>제목</th>
					<th>보낸날짜</th>
				</tr>
		</thead>
			<tbody>
	
	<c:forEach var="Lists"  items="${List}" varStatus="i">
		
				<tr>
					<td><c:out value="${Lists.getSEND_USER_ID()}"/></td> 
					<td><a data-ajax="false" href="../student/16-QandA-detail(student).jsp?idx=<c:out value="${Lists.getMEMO_ID()}"/>"><c:out value="${Lists.getTitle()}"/></a></td>
					<td><c:out value="${Lists.getDatetime()}"/></td>
				</tr>	
				
				<c:if test="${i.index!=00&&i.index%4==0 }">
					</tbody>
					</table>
						</div>
						<div class="swiper-slide">
		<table style="width:95%; margin:auto; margin-top:50px" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
			<thead>
			<tr>
					<th>보낸이</th>
					<th>제목</th>
					<th>보낸날짜</th>
				</tr>
				<tr>
					<td><c:out value="${Lists.getSEND_USER_ID()}"/></td> 
					<td><a data-ajax="false" href="../student/16-QandA-detail(student).jsp?idx=<c:out value="${Lists.getMEMO_ID()}"/>"><c:out value="${Lists.getTitle()}"/></a></td>
					<td><c:out value="${Lists.getDatetime()}"/></td>
				</tr>	
		</thead>
			<tbody>
				</c:if>
				
				<c:if test="${i.last}">
				</tbody>
					</table>
						</div>
				</c:if>
				
					
			
		</c:forEach>
			
	
			
			
			
			
	
            
            
        </div>
       <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
    </div>
	 
   <div style="float:right">
        <a data-ajax="false" href="../student/17-Question.jsp"><input type="button" data-inline="true" data-mini="true" value="쪽지보내기"></a>
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