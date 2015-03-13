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
		
		
	}

}
