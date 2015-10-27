package Study;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
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
		
		else if(command !=null &&command.trim().equals("study")){
			int[] ans = new int[11];
			int[] real = new int[Integer.parseInt(request.getParameter("count"))];
			float count = Float.parseFloat(request.getParameter("count"));
			HttpSession session = request.getSession();
			String study_id = request.getParameter("study_id");
			ans[1]=Integer.parseInt(request.getParameter("ans1"));
			ans[2]=Integer.parseInt(request.getParameter("ans2"));
			ans[3]=Integer.parseInt(request.getParameter("ans3"));
			ans[4]=Integer.parseInt(request.getParameter("ans4"));
			ans[5]=Integer.parseInt(request.getParameter("ans5"));
			ans[6]=Integer.parseInt(request.getParameter("ans6"));
			ans[7]=Integer.parseInt(request.getParameter("ans7"));
			ans[8]=Integer.parseInt(request.getParameter("ans8"));
			ans[9]=Integer.parseInt(request.getParameter("ans9"));
			ans[10]=Integer.parseInt(request.getParameter("ans10"));
			StudyDAO dao = new StudyDAO();
			
			
			System.arraycopy(ans, 1, real, 0, real.length);
			float result = (dao.countCorrectAnswer(real,study_id)/count)*100;
			
			dao.insertScore((int)result, study_id, (String)session.getAttribute("id"));
			
			request.setAttribute("score", (int)result);
			RequestDispatcher dispatcher = request.getRequestDispatcher("../student/14-score.jsp");
			dispatcher.forward(request, response);
		
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
		
		else if(command !=null &&command.trim().equals("homeworkCheck")){
			StudyDAO dao = new StudyDAO();
			HttpSession session = request.getSession();
			String user_id=(String) session.getAttribute("id");
			String study_id=request.getParameter("idx");
			int mes;
			PrintWriter out = response.getWriter();


			 response.setContentType("text/xml");
		        response.setHeader("Cache-Control", "no-cache");
		       
		        if(dao.homeworkCheck(study_id,user_id)){
		        	mes=1;
		        	
		        }
		        else{
		        	mes=0;
		        }
		        out.println("<response>");		        
		        out.println("<message>" + mes + "</message>");		      
		        out.println("</response>");		        
		        out.close();
		}

		}
	}
   

