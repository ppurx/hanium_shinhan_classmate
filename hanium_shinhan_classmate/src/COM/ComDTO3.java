package COM;

public class ComDTO3 {
	private String MEMO_RESPONDE;
	public String getMEMO_RESPONDE() {
		return MEMO_RESPONDE;
	}
	public void setMEMO_RESPONDE(String mEMO_RESPONDE) {
		MEMO_RESPONDE = mEMO_RESPONDE;
	}
	private int CLASS_ID;
	public int getCLASS_ID() {
		return CLASS_ID;
	}
	public void setCLASS_ID(int cLASS_ID) {
		CLASS_ID = cLASS_ID;
	}
	public String USER_ID;
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
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
	
	private String SEND_USER_ID;
	public String getSEND_USER_ID() {
		return SEND_USER_ID;
	}
	public void setSEND_USER_ID(String sEND_USER_ID) {
		SEND_USER_ID = sEND_USER_ID;
	}
	public String getBRING_USER_ID() {
		return BRING_USER_ID;
	}
	public void setBRING_USER_ID(String bRING_USER_ID) {
		BRING_USER_ID = bRING_USER_ID;
	}
	private String BRING_USER_ID;

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
	
	private String Title;
	
	private String MEMO_Content;
	
	public String getMEMO_Content() {
		return MEMO_Content;
	}
	public void setMEMO_Content(String mEMO_Content) {
		MEMO_Content = mEMO_Content;
	}
	
}
