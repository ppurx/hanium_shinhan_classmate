package Study;

import java.sql.Connection;
import java.sql.DriverManager;
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

import Study.StudyDTO;


public class StudyDAO {
	private static Connection conn;
	public StudyDAO() {
					
			
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
		
	
	public ArrayList<StudyDTO> selectStudyList(String CLASS_ID){
		
		ArrayList<StudyDTO> StudyList = new ArrayList<StudyDTO>();
		
		String sql ="select * from STUDY where CLASS_ID='"+CLASS_ID+"'";
		
		try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);	
			
			while(rs.next()){
				StudyDTO dto = new StudyDTO();
				dto.setSTUDY_ID(rs.getInt("STUDY_ID"));
				dto.setSTUDY_SUBJECT(rs.getString("STUDY_SUBJECT"));
				dto.setSTUDY_CHECK(rs.getString("STUDY_CHECK"));

				dto.setSTUDY_DATE(rs.getString("STUDY_DATE").substring(0,10));
				StudyList.add(dto);
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return StudyList;
	}
	
	public ArrayList<StudyDTO> selectQuestionList(String STUDY_ID){
		
		ArrayList<StudyDTO> QuestionList = new ArrayList<StudyDTO>();
		
		String sql ="select * from QUESTION,STUDY where QUESTION.STUDY_ID=STUDY.STUDY_ID and QUESTION.STUDY_ID='"+STUDY_ID+"' order by QUE_COUNT";
		
		try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);	
			
			while(rs.next()){
				StudyDTO dto = new StudyDTO();
				dto.setQUE_COUNT(rs.getInt("QUE_COUNT"));
				dto.setQUE_CONTENT_TXT(rs.getString("QUE_CONTENT_TXT"));
				dto.setQUE_ANSWER(rs.getInt("QUE_ANSWER"));
				dto.setSTUDY_SUBJECT(rs.getString("STUDY_SUBJECT"));

				QuestionList.add(dto);
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return QuestionList;
	}


}
