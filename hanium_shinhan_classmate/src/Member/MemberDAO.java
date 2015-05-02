package Member;

import java.sql.*;
import java.util.ArrayList;

import javax.servlet.ServletResponse;
public class MemberDAO {
	 private static MemberDAO instance = new MemberDAO();
	    public static MemberDAO getInstance(){
	        return instance;
	    }
	
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
		String phone =dto.getTel1()+dto.getTel2()+dto.getTel3();
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
	
	public MemberDTO login(MemberDTO dto){
		
		String id = dto.getId();
		String pw = dto.getPassword();
		int job = dto.getToken();
		MemberDTO re_dto=new MemberDTO();
		
		String sql = "select * from USER where user_id='"+id+"' and user_password='"+pw+"'"+" and user_token='"+job+"'";
		
		try{
			Statement stmt = conn.createStatement();
						
			ResultSet rs = stmt.executeQuery(sql);
			
				if(rs.next()){
					String name = rs.getString("USER_NAME");
					
						if(rs.getInt("USER_TOKEN")==1)
						{
							re_dto.setJob("선생님");
						}
						else
						{
							re_dto.setJob("학생");
						}
						
						re_dto.setId(id);
						re_dto.setPassword(pw);						
						re_dto.setName(name);
					}
				else
					{				
					
						re_dto=null;
					}
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return re_dto;
	}

	public MemberDTO selectID(MemberDTO dto){
		String name=dto.getName();
		String birth=dto.getBirth();
		String phone =dto.getTel1()+dto.getTel2()+dto.getTel3();
		String id = dto.getId();
		
		
		String sql = "select * from USER where user_name='"+name+"' and user_birth='"+birth+"' and user_phone='"+phone+"'";
		
		
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				
				dto.setId(rs.getString("user_id"));	
				dto.setPassword(rs.getString("USER_PASSWORD"));
			}
			else
			{				
				dto.setId(null);
				dto.setPassword(null);
			}
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return dto;
	}
	
	public MemberDTO selectPW(MemberDTO dto){
		String name=dto.getName();
		String birth=dto.getBirth();
		String phone =dto.getTel1()+dto.getTel2()+dto.getTel3();
		String id = dto.getId();
		
		
		String sql = "select * from USER where user_id='"+id+"' and user_birth='"+birth+"' and user_phone='"+phone+"'";
		
		
		
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				
				dto.setId(rs.getString("user_id"));	
				dto.setPassword(rs.getString("USER_PASSWORD"));
			}
			else
			{				
				dto.setId(null);
				dto.setPassword(null);
			}
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return dto;
	}
	
	public ArrayList<MemberDTO> selectTest(){
		ArrayList<MemberDTO> selectList = new ArrayList<MemberDTO>();
		
		String sql = "select * from USER";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				MemberDTO dto = new MemberDTO();
				dto.setName(rs.getString("user_name"));
				selectList.add(dto);
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return selectList;
	}
	
	
	
	

}