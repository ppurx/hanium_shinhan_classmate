package Class;

import java.sql.*;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Member.MemberDTO;

public class ClassDAO {

	private static Connection conn;
public ClassDAO() {
				
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		}catch(ClassNotFoundException ex) {
			System.out.println("드라이버를 찾을 수 없습니다.");
		}

	
		try {	
			conn = DriverManager.getConnection("jdbc:mariadb://14.63.223.174:3306/shinhan","root","shinhan12");
		}catch(SQLException ex) {
			System.out.println("SQL오류 : " + ex.getLocalizedMessage());
		}
	
	}
	

public ArrayList<ClassDTO> selectClassList(String id){
	ArrayList<ClassDTO> classList = new ArrayList<ClassDTO>();
	
	String sql ="select * from CLASS,LIST where CLASS.CLASS_ID=LIST.CLASS_ID and LIST.USER_ID='"+id+"'";
	
	try {
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);			
		
		while(rs.next()){
			ClassDTO dto = new ClassDTO();
			dto.setCLASS_ID(rs.getInt("CLASS_ID"));
			dto.setCLASS_SCHOOL_NAME(rs.getString("CLASS_SCHOOL_NAME"));
			dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
			classList.add(dto);
			
		}
		
		
		
	}
	catch(SQLException e){
		System.out.println(e);
	}
	
	return classList;
}

public ArrayList<ClassDTO> selectClassList_Teacher(String id){
	ArrayList<ClassDTO> classList = new ArrayList<ClassDTO>();
	
	String sql ="select * from CLASS where CLASS.USER_ID='"+id+"'";
	
	try {
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);			
		
		while(rs.next()){
			ClassDTO dto = new ClassDTO();
			dto.setCLASS_ID(Integer.parseInt(rs.getString("CLASS_ID")));
			dto.setCLASS_SCHOOL_NAME(rs.getString("CLASS_SCHOOL_NAME"));
			dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
			classList.add(dto);
			
		}
		
		
		
	}
	catch(SQLException e){
		System.out.println(e);
	}
	
	return classList;
}
	
	public ArrayList<ClassDTO> searchClass(String idx){
		ArrayList<ClassDTO> searchClassList = new ArrayList<ClassDTO>();
	
		String sql ="select * from CLASS,USER where class_school_name like '%"+idx+"%' and CLASS.USER_ID=USER.USER_ID";
		
		try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				ClassDTO dto = new ClassDTO();
				dto.setCLASS_ID(rs.getInt("CLASS_ID"));
				dto.setCLASS_SCHOOL_NAME(rs.getString("CLASS_SCHOOL_NAME"));
				dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
				dto.setTEACHER_NAME(rs.getString("USER_NAME"));
				dto.setCLASS_FOUND_DATE(rs.getString("CLASS_FOUND_DATE").substring(0,10));
				
				
				System.out.println("학교명 : "+dto.getCLASS_SCHOOL_NAME()+" 반 이름 : "+dto.getCLASS_NAME());
				searchClassList.add(dto);
				
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return searchClassList;
	}
	
	public boolean createClass(ClassDTO dto){
		boolean check;
		check=false;
		String query = "Insert INTO CLASS(CLASS_SCHOOL_NAME,CLASS_NAME,CLASS_CONTENT,USER_ID) values (?,?,?,?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);	
			
			
			pstmt.setString(1,dto.getCLASS_SCHOOL_NAME());			
			pstmt.setString(2,dto.getCLASS_NAME());			
			pstmt.setString(3, "클래스컨텐트를넣어야한다");
			pstmt.setString(4, dto.getUSER_ID());
			
			
			int x = pstmt.executeUpdate();
			
			if(x<1) {
				System.out.println("정상적으로 저장되지 않았습니다.");
			} else {
				check = true;
			}
			
			pstmt.close();			
			
				check = true;
			}catch(SQLException ex) {
				System.out.println("SQL Insert 오류 : " + ex.getLocalizedMessage());
				check = false;
			}
		
		
		
		return check;
	}
	
	public ClassDTO selectClass(String idx){
			String sql = "select * from CLASS,USER where CLASS_ID='"+idx+"' and CLASS.USER_ID=USER.USER_ID";
			ClassDTO dto = new ClassDTO();
			try {
				
				Statement stmt = conn.createStatement();
				
				ResultSet rs = stmt.executeQuery(sql);			
				
				if(rs.next()){
					
					dto.setCLASS_ID(rs.getInt("CLASS_ID"));
					dto.setCLASS_SCHOOL_NAME(rs.getString("CLASS_SCHOOL_NAME"));
					dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
					dto.setTEACHER_NAME(rs.getString("USER_NAME"));
					dto.setCLASS_CONTENT(rs.getString("CLASS_CONTENT"));
					dto.setCLASS_FOUND_DATE(rs.getString("CLASS_FOUND_DATE").substring(0,10));
					
					
				}
				
				
				
			}
			catch(SQLException e){
				System.out.println(e);
			}
			
		return dto;
	}
	
	public boolean candidate(ClassDTO dto){
		String query = "insert into CANDIDATE(CLASS_ID,USER_ID) values(?,?);";
				
		boolean check;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);	
			
			
			pstmt.setInt(1,dto.getCLASS_ID());			
			pstmt.setString(2,dto.getUSER_ID());			
						
			
			int x = pstmt.executeUpdate();
			
			if(x<1) {
				System.out.println("정상적으로 저장되지 않았습니다.");
			} else {
				check = true;
			}
			
			pstmt.close();			
			
				check = true;
			}catch(SQLException ex) {
				System.out.println("SQL Insert 오류 : " + ex.getLocalizedMessage());
				check = false;
			}
		
		
		
		return check;
	}
}
