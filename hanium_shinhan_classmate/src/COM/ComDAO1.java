package COM;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import COM.ComDTO1;

public class ComDAO1 {
	private static Connection conn;
	public ComDAO1() {
				
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		}catch(ClassNotFoundException ex) {
			System.out.println("����̹��� ã�� �� ����ϴ�.");
		}

	
		try {	
			conn = DriverManager.getConnection("jdbc:mariadb://14.63.223.174:3306/shinhan","root","shinhan12");
		}catch(SQLException ex) {
			System.out.println("SQL���� : " + ex.getLocalizedMessage());
		}
	
	}
	
	
	public boolean insertBoard(ComDTO1 dto){
		String query = "Insert INTO NOTICE(NOTICE_TITLE,NOTICE_CONTENT) values (?,?)";
	    boolean check = false;
		
		try {
		PreparedStatement pstmt = conn.prepareStatement(query);	
		
		pstmt.setString(1,dto.getTitle());
		pstmt.setString(2,dto.getContent());
		
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

