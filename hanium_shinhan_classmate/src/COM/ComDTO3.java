package COM;

public class ComDTO3 {
	private int MEMO_ID;
	public int getMEMO_ID() {
		return MEMO_ID;
	}
	public void setMEMO_ID(int mEMO_ID) {
		MEMO_ID = mEMO_ID;
	}
	public String getResponse() {
		return response;
	}
	public void setResponse(String response) {
		this.response = response;
	}
	public String getSendUserID() {
		return SendUserID;
	}
	public void setSendUserID(String sendUserID) {
		SendUserID = sendUserID;
	}
	public String getBringUserID() {
		return BringUserID;
	}
	public void setBringUserID(String bringUserID) {
		BringUserID = bringUserID;
	}
	private String response;
	private String SendUserID;
	private String BringUserID;
	private String Datetime;

	public String getDatetime() {
		return Datetime;
	}
	public void setDatetime(String datetime) {
		Datetime = datetime;
	}
	private String Subject;
	public String getSubject() {
		return Subject;
	}
	public void setSubject(String subject) {
		Subject = subject;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	private String Title;
	private String Content;
	
}
