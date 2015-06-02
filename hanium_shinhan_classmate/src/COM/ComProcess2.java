package COM;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Member.MemberDTO;

public class ComProcess2 extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".com2"));
		
		if(command !=null &&command.trim().equals("boardWrite")){
			request.setCharacterEncoding("utf-8");
			
			
			String subject = request.getParameter("subject");
			String textarea = request.getParameter("textarea");
			HttpSession session = request.getSession();
			String ID = (String)session.getAttribute("ID");
			String ClassID = (String)session.getAttribute("ClassID");			
			
			ComDTO2 dto = new ComDTO2();
			
			dto.setTextarea(textarea);
			dto.setSubject(subject);
			dto.setUserID(ID);
			dto.setClassID(ClassID);
			
			ComDAO2 dao = new ComDAO2();
			
			boolean bool = dao.insertBoard(dto);
			
			if(bool){
				response.sendRedirect("../../Success.html");
			}else{
				response.sendRedirect("../../Fail.html");
			}
			
		}
		
		
		
	}
	
}
