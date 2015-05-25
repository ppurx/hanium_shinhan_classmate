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
			HttpSession session = request.getSession();
			
			String subject = request.getParameter("subject");
			String title = request.getParameter("title");
			String MEMO_Content = request.getParameter("MEMO_Content");
			String SEND_USER_ID = (String) session.getAttribute("id");
			
			String idx = (String) session.getAttribute("CLASS_ID");
			
			ComDAO3 dao = new ComDAO3();
			String BRING_USER_ID = dao.bringUser_ID(idx);
			
			
			ComDTO3 dto = new ComDTO3();
			
			dto.setMEMO_Content(MEMO_Content);
			dto.setSubject(subject);
			dto.setTitle(title);
			dto.setSEND_USER_ID(SEND_USER_ID);
			dto.setBRING_USER_ID(BRING_USER_ID);
			
			
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
