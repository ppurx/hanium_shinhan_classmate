<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="/js/jquery-1.8.3.min.js"></script>
<script src="/js/jquery.form.min.js"></script>

<script type="text/javascript">

	$(document).ready(function() {
		
	$("#layer_ajax").hide();
	$("#layer_ajax").ajaxStart(function(){
		$("#wait").css("display","block");
	});
 	$("#layer_ajax").ajaxComplete(function(){
		$("#wait").css("display","none");
	});
	$("#layer_ajax").ajaxError(function(){
		alert("통신 애러");
	});

	$(".btn-login").click(function(e){
		//아래 코드 실행
		 dataString = $("#login").serialize();
//form 과 직렬화..
		$.ajaxSetup({
			url:"/login/login_proc.jsp",		 
			data : dataString,  // 넘겨질 데이타 
		        type: "POST",
			success:function(result) {	
				
				var arr_data = result.split("*");
				
				var data1= arr_data[0];
				var data2= arr_data[1];
				if(trim(data1) == null || trim(data1) =="" ){
// 받아온 결과가 없으면 아무 작업 안함
				}else{
					location.href=data1;
				}
// 받아온 메세지 전달 (실패 메세지..)
				$("#layer_ajax").html(data2);
// 실패면 패스워드 데이타 지우고 포커스 이동
				$("input[name=password]").val('');
				$("input[name=password]").focus(); 
			}		 
		});	 
		 
		$.ajax();
		$("#layer_ajax").show();		
	}); 


});
	// 공백 제거 	
	function trim(txt)
	{
	 return txt.replace(/(^\s*)|(\s*$)/g, "");
	}
</script>

</head>
<body>

<form  id ="login" >
			<!-- 로그인 전에 url 을 전달하기 위해 히든으로 url 받아둔다 -->
			<input type="hidden"  name="redirectURI"  value="<%=(request.getAttribute("redirectURI"))==null?"/":request.getAttribute("redirectURI")%>" >
				<fieldset class="login-form">
					<p class="chk-p"><input type="radio" class="screen-out">
					<label for="" class="label-point"><span class="ir radio-box active"></span>개인회원</label><input type="radio" class="screen-out">
					<label for="" class="label-point"><span class="ir radio-box active"></span>법인회원</label></p>
					<p class="input"><input type="text"  name="user" class="input-text"></p>
					<p class="input"><input type="password" name="password"  class="input-text"></p>
					<button type="button" class="btn-login">로그인</button>
					<div id="layer_ajax"></div>
					<p class="chk-p"><input type="checkbox" class="screen-out"><label for="" class="label-point"><span class="ir check-box active"></span>아이디 저장</label></p>
				</fieldset>
			</form>
</body>
</html>