package Class;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
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
		
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".class"));
		// TODO Auto-generated method stub
		if(command !=null &&command.trim().equals("createClass")){
			request.setCharacterEncoding("EUC-KR");
			
			//현재 존재하는 세션을 가져오거나 없다면 새로 생성
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			ClassDTO dto = new ClassDTO();
			dto.setCLASS_SCHOOL_NAME(request.getParameter("schoolName"));
			dto.setCLASS_NAME(request.getParameter("ClassName"));
			dto.setUSER_ID(id);
			
			ClassDAO dao = new ClassDAO();
			dao.createClass(dto);
			
			response.sendRedirect("../teacher/05-teacher_main.jsp");
			
		}
		
		else if(command !=null &&command.trim().equals("searchClass")){
			request.setCharacterEncoding("EUC-KR");
			 String idx = request.getParameter("x");	
			 ClassDAO dao = new ClassDAO();
			 ArrayList<ClassDTO> ClassList = new ArrayList<ClassDTO>();
			 ClassList = dao.searchClass(idx);
			 
			 request.setAttribute("ClassList", ClassList);
			 RequestDispatcher dispatcher = request.getRequestDispatcher("../student/09-FindClass_result.jsp");
			dispatcher.forward(request, response);
	        
			
		}
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
	        
			
		}
		
		
		
    }		
}
