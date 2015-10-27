<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="Study.StudyDAO"%>
     <%@page import="Study.StudyDTO"%>
    <%@ page import="java.util.ArrayList"%> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
  <meta name="description" content="jPaginate - jQuery Pagination Plugin" />
        <meta name="keywords" content="jquery, plugin, pagination, fancy" />
         
<meta charset="UTF-8">
<link rel="stylesheet" href="../../view/swiper.min.css">
<style>
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
	
	for(var x=1;x<=10;x++){
		$("#que"+x).hide();
		$("#x"+x).hide();
		$("#y"+x).hide();
	}
	
	
	$('#logoutOK').click(function(){			
		logout.submit();
	});
		$('#que').click(function(){		
			for(var x=1;x<10;x++){
				$("#que"+x).hide();
				$("#x"+x).hide();
				$("#y"+x).hide();
			}
			
			
				for(var i=1;i<=$("#que option:selected").val();i++){
					
					$("#que"+i).show();
					$("#x"+i).show();
					$("#y"+i).show();
					
			
					$('#count').val(i);
					
				}
				
		});
		
		$('#btn1').click(function(){
			if($('#que option:selected').val()==0)alert("최소한 한문제를 등록해야함");
			else question.submit();
		});
			
	});
</script>
<title>question</title>
</head>
<body>
<%
	StudyDAO dao = new StudyDAO();
	ArrayList<StudyDTO> List =new ArrayList<StudyDTO>();

	String CLASS_ID = (String)session.getAttribute("CLASS_ID");
	List = dao.selectStudyList2(CLASS_ID);
	request.setAttribute("List",List);

%>
	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>
<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>학습부여</h1>
</div>

<!-- 여기부터 -->
		<div class="swiper-container" style="margin-top:10%;">
        <div class="swiper-wrapper">
    
    <div class="swiper-slide">
		<table style="width:95%; margin:auto; margin-top:50px" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
			<colgroup>
				<col width="45px"/>
				<col width="40px"/>
				<col width="40px"/>
				<col width="40px"/>
			</colgroup>
			<thead>
				<tr>
					<th>과   목</th>
					<th>날   짜</th>
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
				</table></div>
	</c:when>
	<c:when test="${List.size()!=0 }">
	<c:forEach var="Lists"  items="${List}" varStatus="i">
		
				<tr>
					 
					<td><div style='width:80px;text-overflow:ellipsis; -o-text-overflow:ellipsis; overflow:hidden; word-wrap:break-word; white-space:nowrap;' ><a data-ajax="false" href="../teacher/27-QuestionDetail.jsp?idx=<c:out value="${Lists.getSTUDY_ID()}"/>"><c:out value="${Lists.getSTUDY_SUBJECT()}"/></a></div></td>
					<td><div style='width:90px;text-overflow:ellipsis; -o-text-overflow:ellipsis; overflow:hidden; word-wrap:break-word; white-space:nowrap;' ><c:out value="${Lists.getSTUDY_DATE()}"/></div></td>
					
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
						<table  style="width:95%; margin:auto; margin-top:50px" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
							
							<thead>
							
								<tr>
									<th >과   목</th>
									<th >날   짜</th>
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
	<div style="float:right; margin-right:5%;"><a data-ajax="false" href="../teacher/27-QuestionInsert.jsp"><input type="button" data-inline="true" type="button" value="학습 부여"/></a></div>
		</div>
		
		
		

</body>
</html>