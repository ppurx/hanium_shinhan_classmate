package Member;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.servlet.ServletResponse;
import javax.sql.DataSource;
public class MemberDAO {
	 private static MemberDAO instance = new MemberDAO();
	    public static MemberDAO getInstance(){
	        return instance;
	    }
	
	private static Connection conn;
	

	public MemberDAO() {
				
		
		try{
			   InitialContext ctx=new InitialContext();//���ؽ�Ʈ ���
			   DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/maria");  
			   conn=ds.getConnection();
			   System.out.println("ds 성공");
			  }catch(Exception ex){
			   System.out.println("ds 실패:"+ex);  
			  }
	
	}
	
	
	public boolean insertMember(MemberDTO dto){
		String query = "Insert INTO USER values (?,?,?,?,?,?,?,?,?,?)";
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
		pstmt.setInt(9,dto.getToken());
		pstmt.setString(10, dto.getAddr());
		
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

	public boolean updateMember(MemberDTO dto){
		String sql = "update USER set USER_PASSWORD=?,USER_ADDR=?,USER_BELONG=?,USER_PHONE=? where USER_ID='"+dto.getId()+"'" ;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1, dto.getPassword());
			pstmt.setString(2,dto.getAddr());
			pstmt.setString(3,dto.getSchool());
			pstmt.setInt(4, dto.getPhone());
			pstmt.executeUpdate();
		}catch(SQLException ex) {
			System.out.println("SQL Insert ���� : " + ex.getLocalizedMessage());			
		}
		
			
		
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
	
	public boolean checkID(String idx){
		
		String sql = "select * from USER where USER_ID='"+idx+"'";
		boolean check=false;
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				//�ߺ���
				check=false;
			}
			else{
				//���ߺ���
				check=true;
			}			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		return check;
	}
	
	public MemberDTO selectAll(String idx)
	{
		MemberDTO dto = new MemberDTO();
		String sql = "select * from USER where USER_ID='"+idx+"'";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
		
			if(rs.next()){
				dto.setId(rs.getString("USER_ID"));
				dto.setName(rs.getString("USER_NAME"));
				dto.setBirth(rs.getString("USER_BIRTH"));
				dto.setAddr(rs.getString("USER_ADDR"));
				dto.setSchool(rs.getString("USER_BELONG"));
				dto.setPhone(rs.getInt("USER_PHONE"));
				dto.setPassword(rs.getString("USER_PASSWORD"));
			}
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return dto;
	}
	
	
	
	
	

}