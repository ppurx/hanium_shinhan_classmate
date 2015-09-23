<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
    <%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String realFolder="";
	String saveFolder = "usrImage";
	String encType="utf-8";
	int maxSize=5*1024*1024;
	
	ServletContext context = getServletContext();
	realFolder=context.getRealPath(saveFolder);
	out.println("the Realpath is : "+realFolder+"<br>");
	
	try{
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		Enumeration params = multi.getParameterNames();
		while(params.hasMoreElements()){
			String name = (String)params.nextElement();
			String value = multi.getParameter(name);
			out.println(name+"="+value+"<br>");
			
		}
		
		out.println("--------------------------------<br>");
		
		Enumeration files = multi.getFileNames();
		
		while(files.hasMoreElements()){
			String name=(String)files.nextElement();
			String filename=multi.getFilesystemName(name);
			String original = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			
			File file = multi.getFile(name);
			
			out.println("파라미터 이름 : "+name +"<br>");
			out.println("실제 파일 이름 : "+original +"<br>");
			out.println("지정된 파일 이름 : "+filename +"<br>");
			out.println("파일 타입 : "+ type +"<br>");
			
			if(file!=null){
				out.println("크기 : "+file.length());
				out.println("<br>");
			}
		}
	}catch(IOException ioe){
		System.out.println(ioe);
	}catch(Exception ex){
		System.out.println(ex);
	}
	

%>
</body>
</html>