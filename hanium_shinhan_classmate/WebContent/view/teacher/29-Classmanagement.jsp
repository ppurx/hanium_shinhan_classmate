<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@page import="Class.ClassDAO"%>
     <%@page import="Class.ClassDTO"%>
    <%@ page import="java.util.ArrayList"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>

<meta charset="UTF-8">
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

<title>29page</title>
<script type="text/javascript">
$(function(){
	
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
	
		
	});
</script>
</head>


<body>
<%
ClassDAO dao = new ClassDAO();
ArrayList<ClassDTO> List= dao.selectCan((String)session.getAttribute("CLASS_ID"));

request.setAttribute("List",List);
//다시 배열 유지?
%>
	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>

<!-- //툴바 -->
	
<div data-role="header" data-theme="b" >
    <h1>가입승인</h1>
</div>
<div style="margin-top:70px">
<h1>가입 신청 현황</h1>
</div>
<!-- 여기부터 -->
		<div class="swiper-container">
        <div class="swiper-wrapper">
    
    <div class="swiper-slide">
		<table style="width:95%; margin:auto; margin-top:50px" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
			<thead>
				<tr>
					<th>신청자</th>
					<th>ID</th>
					<th>신청일</th>
					<th>승인</th>
				</tr>
		</thead>
			<tbody>
	
	<c:forEach var="Lists"  items="${List}" varStatus="i">
		
				<tr>
					<th><c:out value="${Lists.getCan_name()}"/></th> 
					<td><c:out value="${Lists.getCan_User()}"/></td>
					<td><c:out value="${Lists.getCan_Date()}"/></td>
					<td><a data-ajax="false" href="canOK.class?idx=<c:out value="${Lists.getCan_User()}"/>"><input type="button" data-mini="true" value="승인"/></a></td>
				</tr>	
				
				<c:if test="${i.index!=00&&i.index%4==0 }">
					</tbody>
					</table>
						</div>
						<div class="swiper-slide">
		<table style="width:95%; margin:auto; margin-top:50px" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
			<thead>
				<tr>
					<th>신청자</th>
					<th>ID</th>
					<th>신청일</th>
					<th>승인</th>
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
			
	<script src="../../view/swiper.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true
    });
    </script>
   <!-- 여기까지 -->
   
</body>
</html>