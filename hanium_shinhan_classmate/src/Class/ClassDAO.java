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
		
		String sql ="select * from CLASS where class_name like '%"+idx+"%'";
		
		try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				ClassDTO dto = new ClassDTO();
				dto.setCLASS_ID(rs.getInt("CLASS_ID"));
				dto.setCLASS_SCHOOL_NAME(rs.getString("CLASS_SCHOOL_NAME"));
				dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
				
				
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
}
