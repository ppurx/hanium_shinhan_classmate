<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<!-- 
<%
    String checkLevel = "";
    String checkId = "";
    
    checkLevel = (String)session.getAttribute("s_Level");
   
    if(checkLevel == null) // 세션이 없으면 로그인 페이지 이동
    {
        String login_url = "/pages/login/login.jsp";  //로그인페이지
        request.setAttribute("redirectURI", request.getRequestURI());
        RequestDispatcher dispatcher = request.getRequestDispatcher( login_url );
        dispatcher.forward(request, response); 
    }
    checkId = (String)session.getAttribute("s_Id");
%>


로그인이 필요한곳에 파일 인쿠르드

<%@include file="/login/login_check.jsp" %>
 -->