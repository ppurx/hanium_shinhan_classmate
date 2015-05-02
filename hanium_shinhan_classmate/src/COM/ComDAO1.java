package COM;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import COM.ComDTO1;

public class ComDAO1 {
	private static ComDAO1 instance = new ComDAO1();
    public static ComDAO1 getInstance(){
        return instance;
    }
	private static Connection conn;
	public ComDAO1() {
				
		
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
	
	
	public boolean insertNOTICE(ComDTO1 dto){
		String query = "Insert INTO NOTICE(CLASS_ID,NOTICE_REGI_DATE,NOTICE_HIT,NOTICE_CONTENT,NOTICE_TITLE) values (?,?,?,?,?)";
	    boolean check = false;
		
		try {
		PreparedStatement pstmt = conn.prepareStatement(query);	
		
		pstmt.setString(1,"1");
		pstmt.setString(2,"1");
		pstmt.setString(3,"1");
	
		pstmt.setString(4,dto.getContent());
		pstmt.setString(5,dto.getTitle());
		
		
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

