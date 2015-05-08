package COM;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import COM.ComDTO1;
import Class.ClassDTO;

public class ComDAO2 {
	private static Connection conn;
	public ComDAO2() {
				
		
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
	
	
	public boolean insertBoard(ComDTO2 dto){
		String query = "Insert INTO BOARD(CLASS_ID,BOARD_WRITER,BOARD_CONTENT,BOARD_REGI_DATE,BOARD_HIT) values (?,?,?,?,?)";
		boolean check = false;
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);	
			
			
			pstmt.setString(1, "1");
			pstmt.setString(2, dto.getSubject());
			pstmt.setString(3, dto.getTextarea());
			pstmt.setString(4, "1");
			pstmt.setString(5, "1");
			
			int x = pstmt.executeUpdate();
			
			if(x<1) {
				System.out.println("정상적으로 저장되지 않았습니다.");
			} else {
				check = true;
			}
			
			pstmt.close();
			
			
				check = true;
		}
		catch(SQLException ex) {
				
			System.out.println("SQL Insert 오류 : " + ex.getLocalizedMessage());
				
			check = false;
		}
			return check;
	}
	
	
	public ComDTO2 selectTest(){
		ComDTO2 dto = new ComDTO2();
		
		String sql = "select * from BOARD where board_id = 30";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				
				dto.setSubject(rs.getString("BOARD_WRITER"));
				dto.setTextarea(rs.getString("BOARD_CONTENT"));
				
				System.out.println(dto.getSubject());
				System.out.println(dto.getTextarea());
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return dto;
	}
	
	
	public ArrayList<ComDTO2> selectTest2(){
		ArrayList<ComDTO2> selectList = new ArrayList<ComDTO2>();
		
		String sql = "select * from BOARD";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				ComDTO2 dto = new ComDTO2();
				dto.setSubject(rs.getString("BOARD_WRITER"));
				selectList.add(dto);
				
				System.out.println(dto.getSubject());
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return selectList;
	}
	
	
	public boolean deleteBoard(ComDTO2 dto){
		String query = "delete from BOARD(CLASS_ID,BOARD_WRITER,BOARD_CONTENT) values (?,?,?) where board_id = 30";
		boolean check = false;
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);	
			
			
			pstmt.setString(1, "1");
			pstmt.setString(1, dto.getSubject2());
			pstmt.setString(1, dto.getTextarea2());
			
			int x = pstmt.executeUpdate();
			
			if(x<1) {
				System.out.println("정상적으로 저장되지 않았습니다.");
			} else {
				check = true;
			}
			
			pstmt.close();
			
			
				check = true;
		}
		catch(SQLException ex) {
			
			System.out.println("SQL Insert 오류 : " + ex.getLocalizedMessage());
				
			check = false;
		}
			return check;
	}
	
	
	public boolean updateBoard(ComDTO2 dto){
		String query = "update set BOARD(CLASS_ID,BOARD_WRITER,BOARD_CONTENT) values (?,?,?) where board_id = 30";
		boolean check = false;
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);	
			
			
			pstmt.setString(1, "1");
			pstmt.setString(1, dto.getSubject3());
			pstmt.setString(1, dto.getTextarea3());
			
			int x = pstmt.executeUpdate();
			
			if(x<1) {
				System.out.println("정상적으로 저장되지 않았습니다.");
			} else {
				check = true;
			}
			
			pstmt.close();
			
			
				check = true;
		}
		catch(SQLException ex) {
			
			System.out.println("SQL Insert 오류 : " + ex.getLocalizedMessage());
				
			check = false;
		}
			return check;
	}
}
