<%@ page contentType="text/html;charset=EUC-KR"%>
<%
    // �α��� ���� ����
    String userID="";
    String userPWD="";
    String userLevel="";
    String loginMsg = "";
    String redirectURI ="";
    String level ="";
    
    // login.jsp�κ��� form data�� �޴´�
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
    
    // id, pwd�� ���� ��� ����
    if(userID.equals(id) && userPWD.equals(pwd)) 
    {
        session.setAttribute("s_Level",userLevel);
        session.setAttribute("s_Id", userID);
        loginMsg ="����";
        //response.sendRedirect("./main.jsp"); // main.jsp �� session ������ ������
        redirectURI  = request.getParameter("redirectURI");
    }
    else
    {
        loginMsg ="�α��� ����";
       // response.sendRedirect("./main.jsp");
    }*/
%>
<!-- * �� �����Ͽ� ���� �޼��� ���� -->
<%=redirectURI%>*<%=loginMsg%>
