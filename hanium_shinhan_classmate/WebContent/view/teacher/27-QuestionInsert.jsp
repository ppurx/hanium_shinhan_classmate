<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.4/jquery.mobile-1.4.4.min.js"></script>
<meta charset="UTF-8">

<style type="text/css">
html, body {height:100%; margin:0; padding:0;}
#myCenterDiv {
    position:absolute; 
    left:0%;   
    text-align: center;
    position:fixed; top:0; left:0; width:100%; height:200%;
    background-color:#fafbd3;
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
		$('#que').change(function(){		
			for(var x=1;x<=10;x++){
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
			if($('#que option:selected').val()==0) $("#popPassword").popup("open");
			else question.submit();
		});
			
	});
</script>
<title>question</title>
</head>
<body>

	<div id="myCenterDiv">
	<!-- 툴바 -->
	<%@include file="teacher-toolbar.jsp" %>
<!-- //툴바 -->
	<div data-role="header" data-theme="b" >
    <h1>학습부여</h1>
</div>
<form action="Question.class" method="post" name="question">
	<input type="hidden" id="count" name="count" value="0"/>

	<div id="context" class="content"  data-role="none">
    
	<table style="width:95%" align="center">
	<tr>
		<td>
	<img style="float:left" width="15%" src="/hanium_shinhan_classmate/res/27-1.PNG"/></td>
	</tr>
	<tr>
		
		<td colspan="2"><div style="margin-right:2%;"><input type="text" name="subject" placeholder="제목을 입력하세요"></div></td>
	</tr>
    <tr>
		<td>
	<img style="float:left" width="25%" src="/hanium_shinhan_classmate/res/27-2.PNG"/></td>
	</tr>
    </table>
    <table  style="width:95%" align="center">
	
	<tr align="right"><td colspan="2">
	 <SELECT id="que"> 
	 <OPTION selected value=0>문제 수</OPTION> 
	 <OPTION value=1 id="que">1문제</OPTION> <OPTION value=2 id="que">2문제</OPTION> <OPTION value=3 id="que">3문제</OPTION>
	 <OPTION value=4 id="que">4문제</OPTION><OPTION value=5 id="que">5문제</OPTION><OPTION value=6 id="que">6문제</OPTION>
	 <OPTION value=7 id="que">7문제</OPTION>
	 <OPTION value=8 id="que">8문제</OPTION><OPTION value=9 id="que">9문제</OPTION><OPTION value=10 id="que">10문제</OPTION>
	 </SELECT> 
	 
	 </td></tr>
	 </table>
    <div style="overflow:auto;overflow-x:hidden; height:140px; width:95%;">
    <table style="width:95%" align="center" id="test">
	<tr><td><textarea id=que1 name=que1>1.
1)
2)
3)
4)</textarea></td></tr>
	<tr><td><textarea id=que2 name=que2>2.
1)
2)
3)
4)</textarea></td></tr>
	<tr><td><textarea id=que3 name=que3>3.
1)
2)
3)
4)</textarea></td></tr>
	<tr><td><textarea id=que4 name=que4>4.
1)
2)
3)
4)</textarea></td></tr>
	<tr><td><textarea id=que5 name=que5>5.
1)
2)
3)
4)</textarea></td></tr>
	<tr><td><textarea id=que6 name=que6>6.
1)
2)
3)
4)</textarea></td></tr>
	<tr><td><textarea id=que7 name=que7>7.
1)
2)
3)
4)</textarea></td></tr>
	<tr><td><textarea id=que8 name=que8>8.
1)
2)
3)
4)</textarea></td></tr>
	<tr><td><textarea id=que9 name=que9>9.
1)
2)
3)
4)</textarea></td></tr>
	<tr><td><textarea id=que10 name=que10>10.
1)
2)
3)
4)</textarea></td></tr>
	</table>
	</div>
	
	<div style="overflow:auto;overflow-y:hidden; margin-top:2%">
	 <table  style="width:95%; margin:auto;" data-role="table" id="table-custom-2" data-mode="toggle" class="ui-body-d ui-shadow table-stripe ui-responsive" data-column-btn-theme="b" data-column-btn-text="Columns to display..." data-column-popup-theme="a">
		<thead>
			<tr bgcolor=lightgray style="text-align:right">
				<th id="x1">1</th>				
				<th id="x2">2</th>
				<th id="x3">3</th>				
				<th id="x4">4</th>
				<th id="x5">5</th>				
				<th id="x6">6</th>
				<th id="x7">7</th>				
				<th id="x8">8</th>
				<th id="x9">9</th>				
				<th id="x10">10</th>				
			</tr>
		</thead>
		<tbody>
			<tr>
			<td id="y1" ><select name="yy1" data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>
			<td id="y2"><select name="yy2" data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>
			<td id="y3"><select name="yy3" data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>
			<td id="y4"><select name="yy4" data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>
			<td id="y5"><select name="yy5" data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>
			<td id="y6"><select name="yy6" data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>
			<td id="y7"><select name="yy7" data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>
			<td id="y8"><select name="yy8" data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>
			<td id="y9"><select name="yy9" data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>
			<td id="y10"><select name="yy10" data-mini='true' size='1'><option selected value='1'>1</option><option>2</option><option>3</option><option>4</option></select></td>
				
			
			
			
			</tr>
		</tbody>
		</table>
	 </div>
	 </form>
	<a id="btn1" data-ajax="false" href="#" data-role="button" data-inline="true" style=" margin-left:10px">문제 등록</a>
	     
 
	
     
     </div>
	</div>
	<div data-role="popup" data-transition="pop"id="popPassword" data-overlay-theme="a" data-theme="a"class="ui-content"class="ui-corner-all" ><p>최소한 한문제 이상을 등록해야 합니다.</p></div>
</body>
</html>