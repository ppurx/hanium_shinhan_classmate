package COM;
/*==================================
주석입력부분
===================================*/
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
import Member.MemberDTO;

public class ComDAO1 {
	private static ComDAO1 instance = new ComDAO1();
    public static ComDAO1 getInstance(){
        return instance;
    }
	private static Connection conn;
	private String CLASS_ID;
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
	
	public String selectClass_ID(ComDTO1 dto){
		
		
		String sql = "select * from LIST where USER_ID ='"+dto.getUSER_ID()+"'";
			try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			System.out.println(rs.getString("CLASS_ID"));
			if(rs.next()){
				CLASS_ID=rs.getString("CLASS_ID");
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return CLASS_ID;
	}
	
	public boolean insertNOTICE(ComDTO1 dto){
		String query = "Insert INTO NOTICE(CLASS_ID,NOTICE_CONTENT,NOTICE_TITLE) values (?,?,?)";
	    boolean check = false;
		
		try {
		PreparedStatement pstmt = conn.prepareStatement(query);	
		ComDAO1 dao = new ComDAO1();
		System.out.println(dto.getUSER_ID());
		String y = dao.selectClass_ID(dto);
		System.out.println(y);
		pstmt.setString(1,dto.getClass_ID());
		pstmt.setString(2,dto.getContent());
		pstmt.setString(3,dto.getTitle());
		
		
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
	
	public ArrayList<ComDTO1> selectTest(){
		ArrayList<ComDTO1> selectList = new ArrayList<ComDTO1>();
		
		String sql = "select * from NOTICE";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				System.out.println("asdf");
				ComDTO1 dto = new ComDTO1();
				dto.setTitle(rs.getString("NOTICE_TITLE"));
				dto.setClass_ID(rs.getString("CLASS_ID"));
				selectList.add(dto);
							}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return selectList;
	}
	public ComDTO1 select(){
		ComDTO1 dto = new ComDTO1();
		String sql = "select * from NOTICE";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				
				dto.setTitle(rs.getString("NOTICE_TITLE"));
				dto.setContent(rs.getString("NOTICE_CONTENT"));
							}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return dto;
	}
	public ArrayList<ComDTO1> selectNotice(String idx){
		ArrayList<ComDTO1> selectList1 = new ArrayList<ComDTO1>();
		System.out.println(idx);
		String sql = "select * from NOTICE,CLASS,USER where NOTICE.CLASS_ID=CLASS.CLASS_ID and CLASS.USER_ID=USER.USER_ID and CLASS.CLASS_ID='"+idx+"'";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				ComDTO1 dto = new ComDTO1();
				dto.setTitle(rs.getString("NOTICE_TITLE"));
				dto.setClass_ID(rs.getString("CLASS_ID"));
				dto.setREGI_DATE(rs.getString("NOTICE_REGI_DATE").substring(0,10));
				dto.setNotice_ID(rs.getInt("NOTICE_ID"));
				System.out.println(dto.getREGI_DATE());
				System.out.println(rs.getString("NOTICE_TITLE"));
				dto.setUSER_ID(rs.getString("USER_ID"));	
				System.out.println(rs.getString("NOTICE_ID"));
				System.out.println(rs.getString("USER_ID"));
				dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
				selectList1.add(dto);
				}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return selectList1;
	}
	
	public ComDTO1 selectnot(String idx){
		String sql = "select * from NOTICE,CLASS,USER where NOTICE.CLASS_ID=CLASS.CLASS_ID and CLASS.USER_ID=USER.USER_ID and CLASS.CLASS_ID='"+idx+"'";
		ComDTO1 dto = new ComDTO1();
		try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				
				dto.setTitle(rs.getString("NOTICE_TITLE"));
				dto.setClass_ID(rs.getString("CLASS_ID"));
				dto.setREGI_DATE(rs.getString("NOTICE_REGI_DATE").substring(0,10));
				dto.setContent(rs.getString("NOTICE_CONTENT"));
				dto.setUSER_ID(rs.getString("USER_ID"));
				
				
				
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
	return dto;
	}
	public ComDTO1 selectnotice2(String idx){
		String sql = "select * from NOTICE,CLASS where NOTICE.CLASS_ID=CLASS.CLASS_ID and NOTICE_ID='"+idx+"'";
		ComDTO1 dto = new ComDTO1();
		try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				
				dto.setTitle(rs.getString("NOTICE_TITLE"));
				dto.setREGI_DATE(rs.getString("NOTICE_REGI_DATE").substring(0,10));
				dto.setNotice_ID(rs.getInt("notice_ID"));
				dto.setUSER_ID(rs.getString("USER_ID"));
				dto.setContent(rs.getString("NOTICE_CONTENT"));
				
				
				
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
	return dto;
	}
	public void updateNOTICE(ComDTO1 dto){
		String sql = "update NOTICE set NOTICE_TITLE=?,NOTICE_CONTENT=? where NOTICE_ID='"+dto.getNotice_ID()+"'" ;
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1, dto.getTitle());
			pstmt.setString(2,dto.getContent());
			pstmt.executeUpdate();
		}catch(SQLException ex) {
			System.out.println("SQL Insert 오류 : " + ex.getLocalizedMessage());			
		}
		
			
		
		return ;
	}
	public ArrayList<ComDTO1> selectscore(String idx){
		ArrayList<ComDTO1> selectList1 = new ArrayList<ComDTO1>();
		System.out.println(idx);
		String sql = "select MONTH(SCORE.SCORE_DATE),avg(SCORE.SCORE_SCORE),SCORE.USER_ID from SCORE,STUDY where SCORE.STUDY_ID=STUDY.STUDY_ID and SCORE.USER_ID='"+idx+"' group by MONTH(SCORE.SCORE_DATE) ";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				ComDTO1 dto = new ComDTO1();
				dto.setSCORE_DATE(rs.getString("SCORE_DATE"));
				dto.setSCORE(rs.getString("SCORE_SCORE"));
				dto.setREGI_DATE(rs.getString("NOTICE_REGI_DATE").substring(0,10));
				dto.setNotice_ID(rs.getInt("NOTICE_ID"));
				System.out.println(dto.getREGI_DATE());
				System.out.println(rs.getString("NOTICE_TITLE"));
					
		
				selectList1.add(dto);
				}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return selectList1;
	}
	public ArrayList<ComDTO1> selectClassname(String id){
		ArrayList<ComDTO1> selectList2 = new ArrayList<ComDTO1>();
		System.out.println(id);
		String sql = "select * from CLASS,LIST where CLASS.CLASS_ID = LIST.CLASS_ID and LIST.USER_ID='"+id+"'";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			while(rs.next()){
				ComDTO1 dto = new ComDTO1();
				dto.setClass_ID(rs.getString("CLASS_ID"));
				dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
				dto.setREGI_DATE(rs.getString("CLASS_FOUND_DATE").substring(0,10));
				dto.setUSER_ID(rs.getString("USER_ID"));
				
				System.out.println(dto.getREGI_DATE());
				System.out.println(rs.getString("CLASS_NAME"));
				System.out.println(rs.getString("USER_ID"));	
		
				selectList2.add(dto);
				}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return selectList2;
	}
	}

