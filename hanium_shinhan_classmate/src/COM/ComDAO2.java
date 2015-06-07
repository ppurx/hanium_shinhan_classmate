package COM;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import COM.ComDTO2;
import Class.ClassDTO;

public class ComDAO2 {
	private static Connection conn;
	private String CLASS_ID;
	private int BoardID;
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
		String query = "Insert INTO BOARD(CLASS_ID,USER_ID,BOARD_SUBJECT,BOARD_CONTENT) values (?,?,?,?)";
		boolean check = false;
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);	
			
			
			pstmt.setString(1, dto.getCLASS_ID());
			pstmt.setString(2, dto.getUSER_ID());
			pstmt.setString(3, dto.getSubject());
			pstmt.setString(4, dto.getTextarea());
			
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
	
	
	public void updateBoard(ComDTO2 dto){
		String sql = "update BOARD set BOARD_SUBJECT=?,BOARD_CONTENT=? where BOARD_ID='"+dto.getBoardID()+"'" ;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getTextarea());
			pstmt.executeUpdate();
		}
		catch(SQLException ex) {
			System.out.println("SQL Insert 오류 : " + ex.getLocalizedMessage());
		}
		
		return ;
	}
	
	public void deleteBoard(ComDTO2 dto){
		String sql = "delete from BOARD where BOARD_ID='"+dto.getBoardID()+"'";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
		}
		catch(SQLException ex) {
			System.out.println("SQL Insert 오류 : " + ex.getLocalizedMessage());
		}
		
		return ;
	}
	
	
	public ComDTO2 selectTest(String idx){
		ComDTO2 dto = new ComDTO2();
		
		String sql = "select * from BOARD where BOARD_ID='"+idx+"'";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				dto.setUSER_ID(rs.getString("USER_ID"));
				dto.setSubject(rs.getString("BOARD_SUBJECT"));
				dto.setBoardID(rs.getInt("BOARD_ID"));
				dto.setWriter(rs.getString("CLASS_ID"));
				dto.setRegidate(rs.getString("BOARD_REGI_DATE").substring(0,10));
				dto.setTextarea(rs.getString("BOARD_CONTENT"));
				
				System.out.println(dto.getSubject());
				System.out.println(dto.getTextarea());
				System.out.println(dto.getWriter());
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return dto;
	}
	
	public ArrayList<ComDTO2> selectBoard(String idx){
		ArrayList<ComDTO2> selectList = new ArrayList<ComDTO2>();
		
		String sql = "select * from BOARD,CLASS,USER where BOARD.CLASS_ID=CLASS.CLASS_ID and CLASS.USER_ID=USER.USER_ID and CLASS.CLASS_ID='"+idx+"'";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				ComDTO2 dto = new ComDTO2();
				dto.setSubject(rs.getString("BOARD_SUBJECT"));
				dto.setBoardID(rs.getInt("BOARD_ID"));
				dto.setWriter(rs.getString("CLASS_ID"));
				dto.setDate(rs.getString("BOARD_REGI_DATE").substring(0, 10));
				dto.setUSER_ID(rs.getString("USER_ID"));
				selectList.add(dto);
				
				System.out.println(dto.getSubject());
				System.out.println(dto.getUSER_ID());
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return selectList;
	}
}
