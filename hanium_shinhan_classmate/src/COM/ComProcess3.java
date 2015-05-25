package COM;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Class.ClassDAO;
import Class.ClassDTO;

public class ComProcess3 extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".com3"));
		
		if(command !=null &&command.trim().equals("quest")){
			request.setCharacterEncoding("utf-8");
			
			String subject = request.getParameter("subject");
			String title = request.getParameter("title");
			String MEMO_Content = request.getParameter("MEMO_Content");
			String SEND_USER_ID = request.getParameter("SEND_USER_ID");
			String BRING_USER_ID = request.getParameter("BRING_USER_ID");
			
			System.out.println(request.getParameter("subject"));
			System.out.println(request.getParameter("title"));
			System.out.println(request.getParameter("MEMO_Content"));
			System.out.println(request.getParameter("SEND_USER_ID"));
			System.out.println(request.getParameter("BRING_USER_ID"));
			
			ComDTO3 dto = new ComDTO3();
			
			dto.setMEMO_Content(MEMO_Content);
			dto.setSubject(subject);
			dto.setTitle(title);
			
			
			ComDAO3 dao = new ComDAO3();
			
			boolean bool = dao.insertMEMO(dto);
			
			if(bool){
				response.sendRedirect("../student/15-QandA(student).jsp");
			} else
			{
				response.sendRedirect("../../Fail.html");
			}
			
		}
		else if(command !=null &&command.trim().equals("candidate")){
			boolean check;
			request.setCharacterEncoding("EUC-KR");
			ComDAO3 dao = new ComDAO3();
			ComDTO3 dto = new ComDTO3();
			HttpSession session = request.getSession();
	        dto.setUSER_ID((String)session.getAttribute("id"));
	        dto.setCLASS_ID(Integer.parseInt(request.getParameter("CLASS_ID")));
	        check=dao.candidate(dto);
	        response.sendRedirect("../student/08-Stu_main(1).jsp");
			
			
		}
		
		
	}
	
}
