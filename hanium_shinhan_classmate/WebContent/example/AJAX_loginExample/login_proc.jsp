<%@ page contentType="text/html;charset=EUC-KR"%>
<%
    // 로그인 정보 설정
    String userID="";
    String userPWD="";
    String userLevel="";
    String loginMsg = "";
    String redirectURI ="";
    String level ="";
    
    // login.jsp로부터 form data를 받는다
    String id = request.getParameter("user");
    String pwd = request.getParameter("password");
    /*
    String member_select_query="select userid,level,userpw from Member where userid=\'"+id+"\'and userpw = \'"+pwd+"\';";
	  try {
	  	ResultSet member_info = stmt.executeQuery(member_select_query);
	  		while(member_info.next())
	  	{			
	  			userID=member_info.getString("userid");
	  			userLevel=member_info.getString("level");
	  			userPWD = member_info.getString("userpw");
	  	}
	  }
	  catch(Exception e)
	  {
	  	out.println("[ERROR] "+e.getMessage());
	  }
    
    // id, pwd가 맞을 경우 실행
    if(userID.equals(id) && userPWD.equals(pwd)) 
    {
        session.setAttribute("s_Level",userLevel);
        session.setAttribute("s_Id", userID);
        loginMsg ="성공";
        //response.sendRedirect("./main.jsp"); // main.jsp 에 session 정보를 보낸다
        redirectURI  = request.getParameter("redirectURI");
    }
    else
    {
        loginMsg ="로그인 실패";
       // response.sendRedirect("./main.jsp");
    }*/
%>
<!-- * 로 구분하여 다중 메세지 전송 -->
<%=redirectURI%>*<%=loginMsg%>
