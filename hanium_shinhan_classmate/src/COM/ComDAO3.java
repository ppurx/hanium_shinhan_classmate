package COM;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import COM.ComDTO1;
import Class.ClassDTO;
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
		boolean check = false;
		String query = "INSERT INTO MEMO(MEMO_TITLE,MOMO_SUBJECT,MEMO_CONTENT,SEND_USER_ID,BRING_USER_ID) values (?,?,?,?,?)";
		
		try {
		PreparedStatement pstmt = conn.prepareStatement(query);	
		
		pstmt.setString(1,dto.getSubject());
		pstmt.setString(2,dto.getTitle());
		pstmt.setString(3,dto.getMEMO_Content());
		pstmt.setString(4,dto.getSEND_USER_ID());
		pstmt.setString(5,dto.getBRING_USER_ID());
		
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
 
	
	public ComDTO3 selectTest(String idx){
		ComDTO3 dto = new ComDTO3();
		
		
		String sql = "select * from MEMO where MEMO_ID ='"+idx+"' ";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				
				dto.setMEMO_Content(rs.getString("MEMO_CONTENT"));
				
				
			}
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return dto;
	}
	public ArrayList<ComDTO3> selectTest2(String id){
		ArrayList<ComDTO3> selectList = new ArrayList<ComDTO3>();
		String sql = "select * from MEMO where BRING_USER_ID='"+id+"'";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				ComDTO3 dto = new ComDTO3();
				dto.setMEMO_Content(rs.getString("MEMO_CONTENT"));
				dto.setBRING_USER_ID(rs.getString("BRING_USER_ID"));
				dto.setTitle(rs.getString("MEMO_TITLE"));
				dto.setSEND_USER_ID(rs.getString("SEND_USER_ID"));
				dto.setDatetime(rs.getString("MEMO_SEND_DATE").substring(0,10));
				dto.setMEMO_ID(rs.getInt("MEMO_ID"));
				selectList.add(dto);
				
				System.out.println(dto.getSEND_USER_ID());
				System.out.println(dto.getBRING_USER_ID());
				System.out.println(dto.getTitle());
			}
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return selectList;
	}
	
	public ArrayList<ComDTO3> selectTest3(String SEND_USER_ID){
		ArrayList<ComDTO3> selectList = new ArrayList<ComDTO3>();
		String sql = "select * from MEMO where SEND_USER_ID='"+SEND_USER_ID+"'";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				ComDTO3 dto = new ComDTO3();
				dto.setMEMO_Content(rs.getString("MEMO_CONTENT"));
				dto.setBRING_USER_ID(rs.getString("BRING_USER_ID"));
				dto.setTitle(rs.getString("MEMO_TITLE"));
				dto.setSEND_USER_ID(rs.getString("SEND_USER_ID"));
				dto.setDatetime(rs.getString("MEMO_SEND_DATE").substring(0,10));
				dto.setMEMO_ID(rs.getInt("MEMO_ID"));
				selectList.add(dto);
				
				System.out.println(dto.getSEND_USER_ID());
				System.out.println(dto.getBRING_USER_ID());
				System.out.println(dto.getTitle());
			}
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return selectList;
	}
	public boolean candidate(ComDTO3 dto){
		String query = "insert into CANDIDATE(CLASS_ID,USER_ID) values(?,?);";
				
		boolean check;
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);	
			
			
			pstmt.setInt(1,dto.getCLASS_ID());			
			pstmt.setString(2,dto.getUSER_ID());			
						
			
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
	
	public String bringUser_ID(String idx){
		String query ="select * from CLASS where CLASS_ID='"+idx+"'";
		String BringUserId = null;		
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);									
			ResultSet rs = pstmt.executeQuery(query);	
			
			if(rs.next()){
			BringUserId=rs.getString("USER_ID");		
			}
			pstmt.close();			
			
			}catch(SQLException ex) {
				System.out.println("SQL Insert ���� : " + ex.getLocalizedMessage());
			}
		System.out.println("브링유저테스트:"+idx+BringUserId);
		
		
		
		return BringUserId;
	}

}
