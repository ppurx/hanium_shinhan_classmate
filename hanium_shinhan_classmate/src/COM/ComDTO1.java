package COM;

public class ComDTO1 {
    
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	String content;
	private String title;
	private String subject;
	public String getREGI_DATE() {
		return REGI_DATE;
	}
	public void setREGI_DATE(String rEGI_DATE) {
		REGI_DATE = rEGI_DATE;
	}
	private String REGI_DATE;
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	private String USER_ID;
	public String getClass_ID() {
		return Class_ID;
	}
	public void setClass_ID(String class_ID) {
		Class_ID = class_ID;
	}
	private String Class_ID;
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
    private int Notice_ID;
	public int getNotice_ID() {
		return Notice_ID;
	}
	public void setNotice_ID(int notice_ID) {
		Notice_ID = notice_ID;
	}
}
