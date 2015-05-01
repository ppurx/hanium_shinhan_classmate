package COM;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ComProcess3 extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".com"));
		
		if(command !=null &&command.trim().equals("quest")){
			request.setCharacterEncoding("euc-kr");
			
			String subject = request.getParameter("subject");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			ComDTO3 dto = new ComDTO3();
			
			dto.setContent(content);
			dto.setSubject(subject);
			dto.setTitle(title);
			
			
			ComDAO3 dao = new ComDAO3();
			
			boolean bool = dao.insertMEMO(dto);
			
			if(bool){
				response.sendRedirect("../../Success.html");
			} else
			{
				response.sendRedirect("../../Fail.html");
			}
			
		}
		
		
	}
	
}
