package COM;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import COM.ComDTO1;
import Member.MemberDAO;
import Member.MemberDTO;

public class ComDAO3 {
	private static ComDAO3 instance = new ComDAO3();
    public static ComDAO3 getInstance(){
        return instance;
    }
	private static Connection conn;
	
	public ComDAO3() {
				
		
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
	
	
	public boolean insertMEMO(ComDTO3 dto){
		String query = "Insert INTO MEMO(MEMO_TITLE,MOMO_SUBJECT,MEMO_CONTENT,SEND_USER_ID,BRING_USER_ID) values (?,?,?,1,1)";
		boolean check = false;
		
		try {
		PreparedStatement pstmt = conn.prepareStatement(query);	
		
		pstmt.setString(1,dto.getSubject());
		pstmt.setString(2,dto.getTitle());
		pstmt.setString(3,dto.getContent());
		
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
	public boolean updateCom(ComDTO3 dto){
		return true;
	}
}
