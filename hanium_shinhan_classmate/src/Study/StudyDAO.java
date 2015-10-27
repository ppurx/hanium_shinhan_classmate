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
				System.out.println("����̹��� ã�� �� �����ϴ�.");
			}
	
		
			try {	
				conn = DriverManager.getConnection("jdbc:mariadb://14.63.223.174:3306/shinhan","root","shinhan12");
			}catch(SQLException ex) {
				System.out.println("SQL���� : " + ex.getLocalizedMessage());
			}
		
		}
		
	
	public ArrayList<StudyDTO> selectStudyList(String CLASS_ID,String USER_ID){
		
		ArrayList<StudyDTO> StudyList = new ArrayList<StudyDTO>();
		
		String sql ="select * from STUDY,SCORE where STUDY.STUDY_ID=SCORE.STUDY_ID and STUDY.CLASS_ID='"+CLASS_ID+"' and SCORE.USER_ID='"+USER_ID+"'";
		
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
	
public ArrayList<StudyDTO> selectStudyList2(String CLASS_ID){
		
		ArrayList<StudyDTO> StudyList = new ArrayList<StudyDTO>();
		
		String sql ="select * from STUDY where CLASS_ID='"+CLASS_ID+"'";
		
		try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);	
			
			while(rs.next()){
				StudyDTO dto = new StudyDTO();
				dto.setSTUDY_ID(rs.getInt("STUDY_ID"));
				dto.setSTUDY_SUBJECT(rs.getString("STUDY_SUBJECT"));

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
	
public ArrayList<StudyDTO> selectScoreAvgList(String CLASS_ID){
		
		ArrayList<StudyDTO> ScoreAvgList = new ArrayList<StudyDTO>();
		
		String sql ="select USER.USER_NAME,SCORE.USER_ID,avg(SCORE.SCORE_SCORE) as avg from SCORE,STUDY,USER where SCORE.STUDY_ID=STUDY.STUDY_ID and SCORE.USER_ID=USER.USER_ID and STUDY.CLASS_ID='"+CLASS_ID+"' group by SCORE.USER_ID order by avg(SCORE.SCORE_SCORE) desc";
		
		try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);	
			
			while(rs.next()){
				StudyDTO dto = new StudyDTO();
				dto.setUSER_NAME(rs.getString("USER_NAME"));
				dto.setAVG(rs.getString("avg"));

				ScoreAvgList.add(dto);
			}
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
		
		return ScoreAvgList;
	}


public ArrayList<StudyDTO> selectMonthAvg(String CLASS_ID){
	int i=0;
	ArrayList<StudyDTO> MonthList = new ArrayList<StudyDTO>();
	
	String sql ="select MONTH(SCORE.SCORE_DATE) as MONTH,avg(SCORE.SCORE_SCORE) as AVG from SCORE,STUDY where SCORE.STUDY_ID=STUDY.STUDY_ID and CLASS_ID='"+CLASS_ID+"' group by MONTH(SCORE.SCORE_DATE)";
	
	try {
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);	
		
		while(rs.next()){
			StudyDTO dto = new StudyDTO();
			
			dto.setMONTH(rs.getString("MONTH"));
			dto.setAVG(rs.getString("AVG"));
			MonthList.add(dto);
		}
		
		
		
	}
	catch(SQLException e){
		System.out.println(e);
	}
	
	return MonthList;
}

public String[] selectStudentAVG(String CLASS_ID, String USER_ID){
	String[] AvgScoreList = {"0","0","0","0","0","0","0","0","0","0","0","0","0"};
	int i;
	String sql = "select MONTH(SCORE.SCORE_DATE) as MONTH,avg(SCORE.SCORE_SCORE) as AVG,SCORE.USER_ID from SCORE,STUDY where SCORE.STUDY_ID=STUDY.STUDY_ID and SCORE.USER_ID='"+USER_ID+"' and STUDY.CLASS_ID='"+CLASS_ID+"' group by MONTH(SCORE.SCORE_DATE)";
try {
		
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery(sql);	
		
		while(rs.next()){			
			AvgScoreList[Integer.parseInt((rs.getString("MONTH")))]=rs.getString("AVG");
			
		}
		
		
		
	}
	catch(SQLException e){
		System.out.println(e);
	}

	return AvgScoreList;
}
	
public double selectPercent(String CLASS_ID,String USER_ID,int MONTH){
	ArrayList<String> studentList= new ArrayList<String>();
	int i=0;
	int x=0;
	double percent=0;
	String sql = "select MONTH(SCORE.SCORE_DATE) as MONTH,avg(SCORE.SCORE_SCORE) as AVG,SCORE.USER_ID from SCORE,STUDY where SCORE.STUDY_ID=STUDY.STUDY_ID and STUDY.CLASS_ID='"+CLASS_ID+"' and MONTH(SCORE.SCORE_DATE) in('"+MONTH+"') group by SCORE.USER_ID,MONTH order by AVG DESC";
	try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);	
			
			while(rs.next()){					
				studentList.add(rs.getString("USER_ID"));
										
			}
			
			while(true){
				if(studentList.get(i).equals(USER_ID))break;
				else i++;
			}
			i++;
			percent=(double)i/(double)studentList.size()*100;
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
	return percent;
}

public boolean homeworkCheck(String study_id,String user_id){
	boolean check=false;
	String sql = "select STUDY_CHECK from SCORE where STUDY_ID='"+study_id+"' and USER_ID='"+user_id+"'";
	try {
			
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);	
			
			while(rs.next()){					
				if(rs.getString("STUDY_CHECK").equals("O"))check=false;
				else check=true;
			}
			
			
			
			
		}
		catch(SQLException e){
			System.out.println(e);
		}
	return check;
}

public int countCorrectAnswer(int[] ans,String study_id){
	int cnt=0;
	int j=0;
	String sql = "select * from QUESTION where STUDY_ID='"+study_id+"'  order by QUE_COUNT";
	try {
			
			Statement stmt = conn.createStatement();			
			ResultSet rs = stmt.executeQuery(sql);	
			
			while(rs.next()){
				if(ans[j]==Integer.parseInt(rs.getString("QUE_ANSWER"))){
					cnt++;
					j++;
				}else{
					j++;
				}
			}
		}
		catch(SQLException e){
			System.out.println(e);
		}
	return cnt;
}

public void insertScore(int score,String study_id,String user_id){
	String sql = "update SCORE set SCORE_SCORE="+score+",STUDY_CHECK='O' where USER_ID='"+user_id+"' and STUDY_ID='"+study_id+"'";
	try{
		Statement stmt = conn.createStatement();			
		stmt.executeUpdate(sql);	
	}catch(Exception e){
		e.toString();
	}

}

}
