package Member;

import java.sql.*;

public class MemberDAO {
	private static Connection conn;
	

	public MemberDAO() {
				
		
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
		pstmt.setInt(8,1);
		pstmt.setInt(9,1);
		
		
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

	public MemberDTO[] selectMember(MemberDTO dto){
		String name=dto.getName();
		String birth=dto.getBirth();
		String phone = Integer.toString(dto.getTel1()+dto.getTel2()+dto.getTel3());
		
		
		String sql = "select * from USER where user_name=? and user_birth=? and user_phone=?";
		
		
		try {
			Statement stmt = conn.createStatement();
			
			((PreparedStatement) stmt).setString(1,name);
			((PreparedStatement) stmt).setString(2,birth);
			((PreparedStatement) stmt).setString(3,phone);
			ResultSet rs = stmt.executeQuery(sql);
			
			
			if(rs.next()){
				
			}
			else
			{				
				
			}
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return null;
	}

}