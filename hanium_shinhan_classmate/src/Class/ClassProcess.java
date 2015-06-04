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
			request.setCharacterEncoding("utf-8");
			
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
			//HttpSession session = request.getSession();
			//String idx1 = (String) session.getAttribute("CLASS_ID");
			 String idx = request.getParameter("x");	//검색어 idx로 받아옴
			 ClassDAO dao = new ClassDAO();
			 
			 ArrayList<ClassDTO> ClassList = new ArrayList<ClassDTO>();
			 ClassList = dao.searchClass(idx);
			 
			 request.setAttribute("ClassList", ClassList);
			//최종 연산된 값들을 url로 이동 전달
			 RequestDispatcher dispatcher = request.getRequestDispatcher("../student/09-FindClass_result.jsp");
			dispatcher.forward(request, response);
	        
			
		}
		else if(command !=null &&command.trim().equals("candidate")){
			boolean check;
			request.setCharacterEncoding("EUC-KR");
			ClassDAO dao = new ClassDAO();
			ClassDTO dto = new ClassDTO();
			HttpSession session = request.getSession();
	        dto.setUSER_ID((String)session.getAttribute("id"));
	        dto.setCLASS_ID(Integer.parseInt(request.getParameter("CLASS_ID")));
	        check=dao.candidate(dto);
	        response.sendRedirect("../student/08-Stu_main(1).jsp");
			
			
		}
		
		else if(command !=null &&command.trim().equals("Question")){
			request.setCharacterEncoding("utf-8");
			ClassDAO dao = new ClassDAO();
			ClassDTO dto = new ClassDTO();
			HttpSession session = request.getSession();
			 dto.setUSER_ID((String)session.getAttribute("id"));
			 dto.setCLASS_ID(Integer.parseInt((String)session.getAttribute("CLASS_ID")));
			 dto.setStudy_Subject(request.getParameter("subject"));
			 
			 ArrayList<String> questionList = new ArrayList<String>();
			 ArrayList<String> answerList = new ArrayList<String>();
			int count = Integer.parseInt(request.getParameter("count"));
			String[] que= { request.getParameter("que1"), request.getParameter("que2"), 
					request.getParameter("que3"), request.getParameter("que4"), request.getParameter("que5"), 
					request.getParameter("que6"), request.getParameter("que7"), request.getParameter("que8"), 
					request.getParameter("que9"), request.getParameter("que10")};
			
			String[] answer= { request.getParameter("yy1"), request.getParameter("yy2"), 
					request.getParameter("yy3"), request.getParameter("yy4"), request.getParameter("yy5"), 
					request.getParameter("yy6"), request.getParameter("yy7"), request.getParameter("yy8"), 
					request.getParameter("yy9"), request.getParameter("yy10")};
			int i;
			
			for(i=0;i<=count-1;i++){
				questionList.add(que[i]);
				answerList.add(answer[i]);
			}
			dao.insertQuestion(questionList,answerList,dto);
			
			
			
			
			
			 response.sendRedirect("../teacher/07-teacher_main.jsp");
			
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
		
		else if(command !=null &&command.trim().equals("canOK")){
			
			request.setCharacterEncoding("EUC-KR");
			String idx = request.getParameter("idx");
			HttpSession session = request.getSession();
			String idx2 = (String) session.getAttribute("CLASS_ID");
			
			ClassDAO dao = new ClassDAO();
			dao.CanOK(idx,idx2);
			response.sendRedirect("../teacher//29-Classmanagement.jsp");
	       
			
			
		}
		
		
		
		
		
    }		
}
