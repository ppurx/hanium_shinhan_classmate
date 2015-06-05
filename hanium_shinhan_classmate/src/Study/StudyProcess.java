package Study;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




import Member.MemberDAO;

public class StudyProcess extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".study"));
		
		if(command !=null &&command.trim().equals("StuJoin")){
		response.sendRedirect("../../Success.html");
		}
		
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".study"));
		
		
		if(command !=null &&command.trim().equals("graph")){
			String class_id=request.getParameter("idx");
			String[] AVGList={};
			StudyDAO dao = new StudyDAO();
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			AVGList = dao.selectStudentAVG(request.getParameter("idx"),id);
				
			int i;
			 
			
			PrintWriter out = response.getWriter();


			 response.setContentType("text/xml");
		        response.setHeader("Cache-Control", "no-cache");
		       
		        out.println("<response>");
		        for(i=1;i<13;i++){
		        out.println("<message>" + AVGList[i] + "</message>");
		      
		        }
		        out.println("</response>");
		        
		        
		        out.close();


			}
		
		else if(command !=null &&command.trim().equals("percent")){
			StudyDAO dao = new StudyDAO();
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			String CLASS_ID = request.getParameter("idx2");
			int MONTH = Integer.parseInt((String)request.getParameter("idx"));
			int percent = (int)dao.selectPercent(CLASS_ID,id,MONTH)/1;
		
			System.out.println(percent);
			
			PrintWriter out = response.getWriter();


			 response.setContentType("text/xml");
		        response.setHeader("Cache-Control", "no-cache");
		       
		        out.println("<response>");		        
		        out.println("<message>" + percent + "</message>");		      
		        out.println("</response>");		        
		        out.close();
		}

		}
	}
   

