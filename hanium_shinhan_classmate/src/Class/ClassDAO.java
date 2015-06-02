package Class;

import java.sql.*;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Member.MemberDTO;

public class ClassDAO {

	private static Connection conn;
public ClassDAO() {
				
		
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
	

public ArrayList<ClassDTO> selectClassList(String id){
	ArrayList<ClassDTO> classList = new ArrayList<ClassDTO>();
	
	String sql ="select * from CLASS,LIST where CLASS.CLASS_ID=LIST.CLASS_ID and LIST.USER_ID='"+id+"'";
	
	try {
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);			
		
		while(rs.next()){
			ClassDTO dto = new ClassDTO();
			dto.setCLASS_ID(rs.getInt("CLASS_ID"));
			dto.setCLASS_SCHOOL_NAME(rs.getString("CLASS_SCHOOL_NAME"));
			dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
			classList.add(dto);
			
		}
		
		
		
	}
	catch(SQLException e){
		System.out.println(e);
	}
	
	return classList;
}

public ArrayList<ClassDTO> selectClassList_Teacher(String id){
	ArrayList<ClassDTO> classList = new ArrayList<ClassDTO>();
	
	String sql ="select * from CLASS where CLASS.USER_ID='"+id+"'";
	
	try {
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);			
		
		while(rs.next()){
			ClassDTO dto = new ClassDTO();
			dto.setCLASS_ID(Integer.parseInt(rs.getString("CLASS_ID")));
			dto.setCLASS_SCHOOL_NAME(rs.getString("CLASS_SCHOOL_NAME"));
			dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
			classList.add(dto);
			
		}
		
		
		
	}
	catch(SQLException e){
		System.out.println(e);
	}
	
	return classList;
}
	
	public ArrayList<ClassDTO> searchClass(String idx){
		ArrayList<ClassDTO> searchClassList = new ArrayList<ClassDTO>();
	
		String sql ="select * from CLASS,USER where class_school_name like '%"+idx+"%' and CLASS.USER_ID=USER.USER_ID";
		
		try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				ClassDTO dto = new ClassDTO();
				dto.setCLASS_ID(rs.getInt("CLASS_ID"));
				dto.setCLASS_SCHOOL_NAME(rs.getString("CLASS_SCHOOL_NAME"));
				dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
				dto.setTEACHER_NAME(rs.getString("USER_NAME"));
				dto.setCLASS_FOUND_DATE(rs.getString("CLASS_FOUND_DATE").substring(0,10));
				
				
				System.out.println("�б��� : "+dto.getCLASS_SCHOOL_NAME()+" �� �̸� : "+dto.getCLASS_NAME());
				searchClassList.add(dto);
				
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return searchClassList;
	}
	
	public boolean createClass(ClassDTO dto){
		boolean check;
		check=false;
		String query = "Insert INTO CLASS(CLASS_SCHOOL_NAME,CLASS_NAME,CLASS_CONTENT,USER_ID) values (?,?,?,?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(query);	
			
			
			pstmt.setString(1,dto.getCLASS_SCHOOL_NAME());			
			pstmt.setString(2,dto.getCLASS_NAME());			
			pstmt.setString(3, "���� �⺻��");
			pstmt.setString(4, dto.getUSER_ID());
			
			
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
	
	public ClassDTO selectClass(String idx){
			String sql = "select * from CLASS,USER where CLASS_ID='"+idx+"' and CLASS.USER_ID=USER.USER_ID";
			ClassDTO dto = new ClassDTO();
			try {
				
				Statement stmt = conn.createStatement();
				
				ResultSet rs = stmt.executeQuery(sql);			
				
				if(rs.next()){
					
					dto.setCLASS_ID(rs.getInt("CLASS_ID"));
					dto.setCLASS_SCHOOL_NAME(rs.getString("CLASS_SCHOOL_NAME"));
					dto.setCLASS_NAME(rs.getString("CLASS_NAME"));
					dto.setTEACHER_NAME(rs.getString("USER_NAME"));
					dto.setCLASS_CONTENT(rs.getString("CLASS_CONTENT"));
					dto.setCLASS_FOUND_DATE(rs.getString("CLASS_FOUND_DATE").substring(0,10));
					
					
				}
				
				
				
			}
			catch(SQLException e){
				System.out.println(e);
			}
			
		return dto;
	}
	
	public boolean candidate(ClassDTO dto){
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
	
	public ArrayList<ClassDTO> selectCan(String idx){
		ArrayList<ClassDTO> searchClassList = new ArrayList<ClassDTO>();
		String can_name;
		String sql ="select * from CANDIDATE where CAN_APPROVAL=0 and CLASS_ID='"+idx+"'";
		
		try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				ClassDTO dto = new ClassDTO();
				dto.setCan_User(rs.getString("USER_ID"));
				dto.setCLASS_ID(rs.getInt("CLASS_ID"));				
				dto.setCan_Date(rs.getString("CAN_DATE").substring(0,10));
				can_name=selectTest(rs.getString("USER_ID"));
				dto.setCan_name(can_name);
				searchClassList.add(dto);
				
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return searchClassList;
	}
	
	public String selectTest(String idx){
		String user_name="";
		
		String sql = "select * from USER where USER_ID='"+idx+"'";
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);			
			
			if(rs.next()){
				user_name=rs.getString("USER_NAME");
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
				
		return user_name;
	}
	
	public void CanOK(String idx,String idx2){		
		String sql = "update CANDIDATE set CAN_APPROVAL=1 where CLASS_ID="+idx2+" and USER_ID='"+idx+"'";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);	
			
			pstmt.executeUpdate();
		}catch(SQLException ex) {
			System.out.println("SQL Insert ���� : " + ex.getLocalizedMessage());			
		}
		String sql2 = "insert into LIST values(?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql2);	
			pstmt.setString(1,idx2);
			pstmt.setString(2, idx);
			pstmt.executeUpdate();
		}catch(SQLException ex) {
			System.out.println("SQL Insert ���� : " + ex.getLocalizedMessage());			
		}
			
	}
	public void insertStudy(int CLASS_ID, String STUDY_SUBJECT,String USER_ID){
		String sql = "insert into STUDY(CLASS_ID,STUDY_SUBJECT,USER_ID) values(?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);	
			pstmt.setInt(1,CLASS_ID);
			pstmt.setString(2, STUDY_SUBJECT);
			pstmt.setString(3, USER_ID);
			
			
			pstmt.executeUpdate();
		}catch(SQLException ex) {
			System.out.println("SQL Insert ���� : " + ex.getLocalizedMessage());			
		}
	}
	
	public int selectStudyID(String USER_ID){
		String sql = "select STUDY_ID from STUDY where USER_ID='"+USER_ID+"' order by STUDY_DATE desc";
		int STUDY_ID = 0;
		try {
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);		
			
			if(rs.next()){
				STUDY_ID=rs.getInt("STUDY_ID");
				
			}
		}catch(SQLException ex) {
			System.out.println("SQL Insert ���� : " + ex.getLocalizedMessage());			
		}
		
		return STUDY_ID;
	}
	
	public void insertQuestion(ArrayList<String> questionList,ArrayList<String> answerList,ClassDTO dto){
		int i;
		
		String sql = "insert into QUESTION(STUDY_ID,QUE_CONTENT_TXT,QUE_COUNT,QUE_ANSWER) values(?,?,?,?)";
		int size = questionList.size();
		insertStudy(dto.getCLASS_ID(),dto.getStudy_Subject(),dto.getUSER_ID());
		int STUDY_ID = selectStudyID(dto.getUSER_ID());
		
		
		try {			
			
			for(i=0;i<size;i++){
				
			PreparedStatement pstmt = conn.prepareStatement(sql);	
			pstmt.setInt(1,STUDY_ID);
			pstmt.setString(2, questionList.get(i));
			pstmt.setInt(3, i+1);
			pstmt.setInt(4, Integer.parseInt(answerList.get(i)));
			
			pstmt.executeUpdate();
			}
			
		
		}catch(SQLException ex) {
			System.out.println("SQL Insert ���� : " + ex.getLocalizedMessage());			
		}
		
		
	}
	public void canS(String idx,String idx2){
		
		
	}
}
