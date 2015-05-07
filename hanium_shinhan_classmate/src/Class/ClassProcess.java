package Class;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ClassProcess extends HttpServlet{
	private int counter = 1;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
			
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".class"));
		

		if(command !=null &&command.trim().equals("selectClass")){
			request.setCharacterEncoding("EUC-KR");
			 response.setContentType("EUC-KR");
			 String idx = request.getParameter("idx");	
			 idx = new String(idx.getBytes("8859_1"),"euc-kr");
			 		
			 ArrayList<ClassDTO> ClassList = new ArrayList<ClassDTO>();
			 ClassDAO dao = new ClassDAO();
			 ClassList=dao.searchClass(idx);
			
			
			String res = "";	      
	        String message = "";    	       
	        message=idx;
	        System.out.println(message);
	        
	        res = "<message>" + message + "</message>";
	        response.setContentType("text/html; charset=utf-8"); 
	        PrintWriter out = response.getWriter();
	        response.setContentType("text/xml; charset=utf-8");
	        response.setHeader("Cache-Control", "no-cache");
	        response.setCharacterEncoding("utf-8");
	        out.println("<response>");
	        out.println(res);
	        out.println("</response>");
	        out.close();
			
		}
		
    }
		
}
