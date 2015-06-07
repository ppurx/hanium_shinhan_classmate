package COM;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Member.MemberDTO;
import Member.MemberDAO;

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
			String id = (String)session.getAttribute("id");
			String CLASS_ID = (String)session.getAttribute("CLASS_ID");
						
			
			ComDTO2 dto = new ComDTO2();
			
			dto.setTextarea(textarea);
			dto.setSubject(subject);
			dto.setUSER_ID(id);
			dto.setCLASS_ID(CLASS_ID);
			
			
			ComDAO2 dao = new ComDAO2();
			
			boolean bool = dao.insertBoard(dto);
			
			if(bool){
				response.sendRedirect("../student/24-board2.jsp");
			}
			else{
				response.sendRedirect("../../Fail.html");
			}
			
		}
		else if(command !=null &&command.trim().equals("boardUpdate")){
			
			request.setCharacterEncoding("utf-8");
			
			String subject = request.getParameter("subject");
			String textarea = request.getParameter("textarea");
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			int boardID = Integer.parseInt(request.getParameter("BoardID"));
			
			ComDTO2 dto = new ComDTO2();
			
			dto.setSubject(subject);
			dto.setTextarea(textarea);
			dto.setUSER_ID(id);
			dto.setBoardID(boardID);
			
			ComDAO2 dao = new ComDAO2();
			
			dao.updateBoard(dto);
			
			response.sendRedirect("../student/24-board2.jsp");
		}
		else if(command !=null &&command.trim().equals("boardDelete")){
			
			request.setCharacterEncoding("utf-8");
			
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			int boardID = Integer.parseInt(request.getParameter("BoardID"));
			
			ComDTO2 dto = new ComDTO2();
			
			dto.setUSER_ID(id);
			dto.setBoardID(boardID);
			
			ComDAO2 dao = new ComDAO2();
			
			dao.deleteBoard(dto);
			
			response.sendRedirect("../student/24-board2.jsp");
		}
		
	}
	
}
