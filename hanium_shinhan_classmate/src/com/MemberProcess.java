package com;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberProcess extends HttpServlet {
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
		String command = uri.substring(uri.lastIndexOf("/") + 1, uri.lastIndexOf(".kim"));
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
			/*
			if(bool){
				response.sendRedirect("../../Success.html");
			} else
			{
				response.sendRedirect("../../Fail.html");
			}
			*/
		}
		
		
		
	}

}
