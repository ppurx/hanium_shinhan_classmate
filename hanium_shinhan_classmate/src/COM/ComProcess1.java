package COM;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ComProcess1 extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".com"));
		
		if(command !=null &&command.trim().equals("boardWrite")){
			ComDTO1 dto = new ComDTO1();
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			
			dto.setContent(content);
			dto.setSubject(subject);
			
			
			
			response.sendRedirect("../../Success.html");
		}
		
		
	}
	
}
