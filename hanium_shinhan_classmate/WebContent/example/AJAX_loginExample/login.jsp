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
		alert("��� �ַ�");
	});

	$(".btn-login").click(function(e){
		//�Ʒ� �ڵ� ����
		 dataString = $("#login").serialize();
//form �� ����ȭ..
		$.ajaxSetup({
			url:"/login/login_proc.jsp",		 
			data : dataString,  // �Ѱ��� ����Ÿ 
		        type: "POST",
			success:function(result) {	
				
				var arr_data = result.split("*");
				
				var data1= arr_data[0];
				var data2= arr_data[1];
				if(trim(data1) == null || trim(data1) =="" ){
// �޾ƿ� ����� ������ �ƹ� �۾� ����
				}else{
					location.href=data1;
				}
// �޾ƿ� �޼��� ���� (���� �޼���..)
				$("#layer_ajax").html(data2);
// ���и� �н����� ����Ÿ ����� ��Ŀ�� �̵�
				$("input[name=password]").val('');
				$("input[name=password]").focus(); 
			}		 
		});	 
		 
		$.ajax();
		$("#layer_ajax").show();		
	}); 


});
	// ���� ���� 	
	function trim(txt)
	{
	 return txt.replace(/(^\s*)|(\s*$)/g, "");
	}
</script>

</head>
<body>

<form  id ="login" >
			<!-- �α��� ���� url �� �����ϱ� ���� �������� url �޾Ƶд� -->
			<input type="hidden"  name="redirectURI"  value="<%=(request.getAttribute("redirectURI"))==null?"/":request.getAttribute("redirectURI")%>" >
				<fieldset class="login-form">
					<p class="chk-p"><input type="radio" class="screen-out">
					<label for="" class="label-point"><span class="ir radio-box active"></span>����ȸ��</label><input type="radio" class="screen-out">
					<label for="" class="label-point"><span class="ir radio-box active"></span>����ȸ��</label></p>
					<p class="input"><input type="text"  name="user" class="input-text"></p>
					<p class="input"><input type="password" name="password"  class="input-text"></p>
					<button type="button" class="btn-login">�α���</button>
					<div id="layer_ajax"></div>
					<p class="chk-p"><input type="checkbox" class="screen-out"><label for="" class="label-point"><span class="ir check-box active"></span>���̵� ����</label></p>
				</fieldset>
			</form>
</body>
</html>