package Member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberProcess extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".member"));
		
		
		if(command !=null &&command.trim().equals("toolbarGet")){
			
			
		}
		
		// TODO Auto-generated method stub
		
				
 
    }
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		HttpSession session = request.getSession();
		//String name = (String)session.getAttribute("name");
		response.setContentType("text/html; charset=UTF-8");
		*/
			
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".member"));
		/*
		if(command != null && command.trim().equals("register")){
			
			String num = request.getParameter("num");
			String name = request.getParameter("name");
			String tel = request.getParameter("tel");
			String addr = request.getParameter("addr");
			
			MemberDTO dto = new MemberDTO();
			dto.setNum(Integer.parseInt(num));
			dto.setName(name);
			dto.setTel(tel);
			dto.setAddr(addr);
			
			MemberDAO dao = new MemberDAO();
			boolean bool = dao.insertMember(dto);
			
			if(bool){
				response.sendRedirect("Success.html");
			} else
			{
				response.sendRedirect("Fail.html");
			}
			
			
			
			
		} else if (command.trim().equals("update")){
			
		}
		*/
		
		if(command !=null &&command.trim().equals("StuJoin")){
			request.setCharacterEncoding("euc-kr");
			
			int tel1 = Integer.parseInt(request.getParameter("tel1"));
			int tel2 = Integer.parseInt(request.getParameter("tel2"));
			int tel3 = Integer.parseInt(request.getParameter("tel3"));
			
		
			String name = request.getParameter("name");	
			String birth = request.getParameter("birth");
			String email = request.getParameter("email");
			String school = request.getParameter("school");
			String addr = request.getParameter("addr");
			String ID = request.getParameter("id");
			String password = request.getParameter("password");
			
			MemberDTO dto = new MemberDTO();
			
			dto.setAddr(addr);
			dto.setBirth(birth);
			dto.setEmail(email);
			dto.setId(ID);
			dto.setName(name);
			dto.setPassword(password);
			dto.setSchool(school);
			dto.setTel1(tel1);
			dto.setTel2(tel2);
			dto.setTel3(tel3);
			
			MemberDAO dao = new MemberDAO();
			
			boolean bool = dao.insertMember(dto);
			
			if(bool){
				response.sendRedirect("../../Success.html");
			} else
			{
				response.sendRedirect("../../Fail.html");
			}
			
		}
		
		else if(command !=null &&command.trim().equals("findId")){
			request.setCharacterEncoding("euc-kr");
			String name = request.getParameter("name");
			String birth = request.getParameter("birth");
			int tel1 = Integer.parseInt(request.getParameter("tel1"));
			int tel2 = Integer.parseInt(request.getParameter("tel2"));
			int tel3 = Integer.parseInt(request.getParameter("tel3"));
			
			MemberDTO dto = new MemberDTO();			
			
			dto.setBirth(birth);			
			dto.setName(name);		
			dto.setTel1(tel1);
			dto.setTel2(tel2);
			dto.setTel3(tel3);
			
			MemberDAO dao = new MemberDAO();
			//MemberDTO[] bool = dao.insertMember(dto);
			
		}
		else if(command !=null &&command.trim().equals("login")){
			request.setCharacterEncoding("euc-kr");
			
			String id=request.getParameter("id");
			String pw=request.getParameter("pw");
			
			MemberDTO dto = new MemberDTO();
			dto.setId(id);
			dto.setPassword(pw);
			
			MemberDAO dao = new MemberDAO();
			
			MemberDTO re_dto = dao.login(dto);
			
			
			
			HttpSession session = request.getSession();
			// setAttribute(String attr_name, Object attr_name) ¸Þ¼Òµå
			session.setAttribute("id", re_dto.getId());
			session.setAttribute("pw", re_dto.getPassword());
			session.setAttribute("name", re_dto.getName());
			session.setAttribute("job", re_dto.getJob());
			
			response.setContentType("text/html; charset=euc-kr");
			
			if(re_dto.getName()==null)response.sendRedirect("../student/02-Login_fail.html");
			else response.sendRedirect("../student/08-Stu_main(1).jsp");
			
				
	
		}		
		
		
		
	}

}

