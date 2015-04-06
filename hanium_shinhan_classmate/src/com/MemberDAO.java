package com;

import java.sql.*;

public class MemberDAO {
	private static Connection conn;
	

	public MemberDAO() {
				
		
		try {
//mySQL			Class.forName("org.git.mm.mysql.Driver");
			Class.forName("org.mariadb.jdbc.Driver");
		}catch(ClassNotFoundException ex) {
			System.out.println("드라이버를 찾을 수 없습니다.");
		}

	
	try {
//mySQL		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MySQL","root","sds000");
		conn = DriverManager.getConnection("jdbc:mariadb://14.63.223.174:3306/shinhan","root","shinhan12");
	}catch(SQLException ex) {
		System.out.println("SQL오류 : " + ex.getLocalizedMessage());
	}
	
	}
	
	public boolean insertMember(MemberDTO dto){
		String query = "Insert INTO USER values (?,?,?,?,?,?,?,?,?)";
		String phone = Integer.toString(dto.getTel1()+dto.getTel2()+dto.getTel3());
		boolean check = false;
		try {
		PreparedStatement pstmt = conn.prepareStatement(query);	
		
		
		pstmt.setString(1,dto.getId());
		
		pstmt.setString(2,dto.getPassword());
		
		pstmt.setString(3, dto.getName());
		pstmt.setString(4, phone);
		pstmt.setString(5, dto.getBirth());
		pstmt.setString(6, dto.getSchool());
		pstmt.setString(7, dto.getEmail());
		pstmt.setInt(8, 1);
		pstmt.setString(9, dto.getAddr());
		
		
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

	public boolean updateMember(MemberDTO dto){
		return true;
	}

	public MemberDTO[] selectMember(){
		return null;
	}

}