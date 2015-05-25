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
			ComDTO2 dto = new ComDTO2();
			
			dto.setTextarea(textarea);
			dto.setSubject(subject);
			dto.setClassID((String)session.getAttribute("CLASS_ID"));
			
			ComDAO2 dao = new ComDAO2();
			
			boolean bool = dao.insertBoard(dto);
			
			if(bool){
				response.sendRedirect("../../Success.html");
			}else{
				response.sendRedirect("../../Fail.html");
			}
			
		}
		
		else if(command !=null &&command.trim().equals("boardDelete")){
			request.setCharacterEncoding("utf-8");
			
			String subject2 = request.getParameter("subject2");
			String writer = request.getParameter("writer");
			String date = request.getParameter("date");
			String textarea2 = request.getParameter("textarea2");
			
			ComDTO2 dto = new ComDTO2();
			
			dto.setSubject2(subject2);
			dto.setTextarea2(textarea2);
			dto.setWriter(writer);
			dto.setDate(date);
		}
		
		else if(command !=null &&command.trim().equals("boardUpdate")){
			request.setCharacterEncoding("utf-8");
			
			String subject3 = request.getParameter("subject3");
			String writer2 = request.getParameter("writer2");
			String date2 = request.getParameter("date2");
			String textarea3 = request.getParameter("textarea3");
			
			ComDTO2 dto = new ComDTO2();
			
			dto.setSubject3(subject3);
			dto.setTextarea3(textarea3);
			dto.setWriter2(writer2);
			dto.setDate2(date2);
			
			ComDAO2 dao = new ComDAO2();
			
			boolean bool = dao.updateBoard(dto);
			
			if(bool){
				response.sendRedirect("../../Success.html");
			}else{
				response.sendRedirect("../../Fail.html");
			}
		}
		
		
		
	}
	
}
