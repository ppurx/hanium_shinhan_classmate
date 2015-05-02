package Class;

import java.sql.*;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletResponse;

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
	

	public ArrayList<ClassDTO> selectClassList(){
		ArrayList<ClassDTO> classList = new ArrayList<ClassDTO>();
		String sql ="select * from CLASS,LIST where CLASS.CLASS_ID=LIST.CLASS_ID and LIST.USER_ID='ppurx'";
		
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				ClassDTO dto = new ClassDTO();
				dto.setCLASS_SCHOOL_NALE(rs.getString("CLASS_SCHOOL_NALE"));
				classList.add(dto);
				
				System.out.println(dto.getCLASS_SCHOOL_NALE());
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return classList;
	}
}
