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
			System.out.println("����̹��� ã�� �� �����ϴ�.");
		}

	
		try {	
			conn = DriverManager.getConnection("jdbc:mariadb://14.63.223.174:3306/shinhan","root","shinhan12");
		}catch(SQLException ex) {
			System.out.println("SQL���� : " + ex.getLocalizedMessage());
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
				System.out.println("���������� ������� �ʾҽ��ϴ�.");
			} else {
				check = true;
			}
			
			pstmt.close();
			
			
				check = true;
			}catch(SQLException ex) {
				System.out.println("SQL Insert ���� : " + ex.getLocalizedMessage());
				check = false;
			}
			return check;
		}
}
