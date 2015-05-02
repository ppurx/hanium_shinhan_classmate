<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="/hanium_shinhan_classmate/res/js/prototype.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
  function loading()
  {
   var url="/hanium_shinhan_classmate/example/AJAX_SAMPLE/ajax_Test";
   new Ajax.Request(url,
   {
    onLoading  : function() {
     document.getElementById("loadData").innerHTML += "<br> 로딩중입니다.";
    },
    onSuccess  : function(returnValue)
    {
     document.getElementById("loadData").innerHTML += "<br>"+returnValue.responseText;
    },
    onFailure: function() {
     document.getElementById("loadData").innerHTML += "<br>불러오기 실패!!";
    },
    onComplete : function() {
     document.getElementById("loadData").innerHTML += "<br>모든 것을 완료하였습니다!";
    }
   });
  }
 </script>
</head>
<body>
 <input type="button" value="로딩시작!!!" onClick="loading()">
  <div id="loadData"></div>
 
</body>
</html>