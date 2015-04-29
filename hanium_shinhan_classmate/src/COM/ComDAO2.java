package COM;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import COM.ComDTO1;

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
		String query = "Insert INTO USER(CLASS_ID,BOARD_WRITER,BOARD_CONTENT,BOARD_REGI_DATE,BOARD_HIT) values (?,?,?,?,?)";
		
		PreparedStatement pstmt = conn.prepareStatement(query);	
				
				
				pstmt.setString(1, );
				pstmt.setString(2, dto.getSubject());
				pstmt.setString(3, dto.getContent());
				pstmt.setString(4, );
				pstmt.setString(5, );
				
		return false;
		
	}
}
