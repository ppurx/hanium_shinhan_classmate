package COM;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

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
		String query = "Insert INTO MEMO(MEMO_TITLE,MOMO_SUBJECT,MEMO_CONTENT,SEND_USER_ID,BRING_USER_ID) values (?,?,?,?,1)";
		boolean check = false;
		
		try {
		PreparedStatement pstmt = conn.prepareStatement(query);	
		
		pstmt.setString(1,dto.getSubject());
		pstmt.setString(2,dto.getTitle());
		pstmt.setString(3,dto.getContent());
		pstmt.setString(4,dto.getSendUserID());
		
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
	
	public ComDTO3 selectTest(){
		ComDTO3 dto = new ComDTO3();
		
		String sql = "select * from MEMO where MEMO_ID = 1";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				
				dto.setSubject(rs.getString("MEMO_SUBJECT"));
				dto.setContent(rs.getString("MEMO_CONTENT"));
				
				System.out.println(dto.getSubject());
				System.out.println(dto.getContent());
			}
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return dto;
	}
	
	public ArrayList<ComDTO3> selectTest3(){
		ArrayList<ComDTO3> selectList = new ArrayList<ComDTO3>();
		
		String sql = "select * from MEMO";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				ComDTO3 dto = new ComDTO3();
				dto.setTitle(rs.getString("MEMO_TITLE"));
				dto.setSendUserID(rs.getString("SEND_USER_ID"));
				dto.setDatetime(rs.getString("MEMO_SEND_DATE"));
				selectList.add(dto);
				
				System.out.println(dto.getTitle());
			}
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return selectList;
	}
	
	
}
