package COM;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ComProcess1 extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".com1"));
		
		if(command !=null &&command.trim().equals("Tnotice")){
			request.setCharacterEncoding("utf-8");
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			ComDTO1 dto = new ComDTO1();
			
			dto.setUSER_ID(id);
			dto.setContent(content);
			dto.setTitle(title);
			
			ComDAO1 dao = new ComDAO1();  
			
			boolean bool = dao.insertNOTICE(dto);
			
			if(bool){
				response.sendRedirect("../../Success.html");
			}
			else
			{
				response.sendRedirect("../../Fail.html");
			}
			
			
		}
		
		
		
	}
	
}
