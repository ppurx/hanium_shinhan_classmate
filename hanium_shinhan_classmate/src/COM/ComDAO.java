package COM;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import COM.ComDTO;

public class ComDAO {
	private static Connection conn;
	public ComDAO() {
				
		
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
	
	
	public boolean insertBoard(ComDTO dto){
		String query = "Insert INTO USER(CLASS_ID,BOARD_WRITER,BOARD_CONTENT,BOARD_REGI_DATE,BOARD_HIT) values (?,?,?,?,?)";
		
		
		return false;
	}
}
