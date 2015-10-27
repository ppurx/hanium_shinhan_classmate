<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="COM.ComDAO1"%>
     <%@page import="COM.ComDTO1"%>
    <%@ page import="java.util.ArrayList"%> 
<!DOCTYPE html>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta charset="utf-8">
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
<title>join situation</title>
</head>
<body>
<%
			ComDAO1 dao = new ComDAO1();
			//ArrayList<ComDTO1> List = dao.selectTest();
			ArrayList<ComDTO1> List = dao.selectClassname((String)session.getAttribute("id"));
			request.setAttribute("List",List);
			
			
	%>	
	<div id="myCenterDiv">
		<!-- 툴바 -->
	<%@include file="student-toolbar.jsp"%>
<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>가입현황</h1>
</div>
	
 
 <!-- 여기부터 -->
		<div class="swiper-container">
        <div class="swiper-wrapper">
    
    <div class="swiper-slide">
		<table style="width:95%; margin:auto; margin-top:100px" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
			<colgroup>
				<col width="45px"/>
				<col width="40px"/>
				<col width="40px"/>
				<col width="40px"/>
			</colgroup>
			<thead>
				<tr>
					<th>반이름</th>
					<th>개설일</th>
					<th>개설일</th>
					<th>탈퇴하기</th>
				</tr>
		</thead>
			<tbody>
<c:choose>
	<c:when test="${List.size() == 0 }">
			<tfoot>
			     <tr>
			          <td colspan="3">현재 데이터가 없습니다.</td>
			     </tr>
			</tfoot>
			</tbody>
				</table>
					</div>
	</c:when>
	<c:when test="${List.size() != 0 }">
	<c:forEach var="Lists"  items="${List}" varStatus="i">
		
				<tr>
					<th><div style='width:65px;text-overflow:ellipsis; -o-text-overflow:ellipsis; overflow:hidden; word-wrap:break-word; white-space:nowrap; ' ><c:out value="${Lists.getCLASS_NAME()}"/></a></div></th>
					<td><div style='width:60px;text-overflow:ellipsis; -o-text-overflow:ellipsis; overflow:hidden; word-wrap:break-word; white-space:nowrap;' ><c:out value="${Lists.getUSER_ID()}"/></a></div></td>
					<td><div style='width:60px;text-overflow:ellipsis; -o-text-overflow:ellipsis; overflow:hidden; word-wrap:break-word; white-space:nowrap;' ><c:out value="${Lists.getREGI_DATE()}"/></div></td>
					<td><div style='width:90px;text-overflow:ellipsis; -o-text-overflow:ellipsis; overflow:hidden; word-wrap:break-word; white-space:nowrap;' ><a href="#"><c:out value="탈퇴"/></a></div></td>
				</tr>	
				
				<c:choose>
				<c:when test="${i.index%4==3 }">
				<c:choose>
					<c:when test="${i.last}">
					</tbody>
						</table>
							</div>
					</c:when>
					
					<c:when test="${i.index!=i.end }">
						</tbody>
						</table>
							</div>
							<div class="swiper-slide">
						<table style="width:95%; margin:auto; margin-top:100px" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
							
							<thead>
							
								<tr>
									<th>반이름</th>
									<th>개설자</th>
									<th>개설일</th>
									<th>탈퇴하기</th>
								</tr>
						</thead>
							<tbody>
						</c:when>
						</c:choose>
				</c:when>	
				
				<c:when test="${i.last }">
				</tbody>
						</table>
							</div>
				</c:when>
				
				</c:choose>
		</c:forEach>
		</c:when>
	</c:choose>
	          
            
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