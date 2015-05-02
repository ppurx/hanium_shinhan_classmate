package Class;

public class ClassDTO {
	public int getCLASS_ID() {
		return CLASS_ID;
	}
	public void setCLASS_ID(int cLASS_ID) {
		CLASS_ID = cLASS_ID;
	}
	
	public String getCLASS_NAME() {
		return CLASS_NAME;
	}
	public void setCLASS_NAME(String cLASS_NAME) {
		CLASS_NAME = cLASS_NAME;
	}
	public String getCLASS_ICON_TYPE() {
		return CLASS_ICON_TYPE;
	}
	public void setCLASS_ICON_TYPE(String cLASS_ICON_TYPE) {
		CLASS_ICON_TYPE = cLASS_ICON_TYPE;
	}
	public String getCLASS_CONTENT() {
		return CLASS_CONTENT;
	}
	public void setCLASS_CONTENT(String cLASS_CONTENT) {
		CLASS_CONTENT = cLASS_CONTENT;
	}
	public String getCLASS_FOUND_DATE() {
		return CLASS_FOUND_DATE;
	}
	public void setCLASS_FOUND_DATE(String cLASS_FOUND_DATE) {
		CLASS_FOUND_DATE = cLASS_FOUND_DATE;
	}
	public String getTacher_ID() {
		return tacher_ID;
	}
	public void setTacher_ID(String tacher_ID) {
		this.tacher_ID = tacher_ID;
	}
	private int CLASS_ID;
	private String CLASS_SCHOOL_NAME;
	public String getCLASS_SCHOOL_NAME() {
		return CLASS_SCHOOL_NAME;
	}
	public void setCLASS_SCHOOL_NAME(String cLASS_SCHOOL_NAME) {
		CLASS_SCHOOL_NAME = cLASS_SCHOOL_NAME;
	}
	private String CLASS_NAME;
	private String CLASS_ICON_TYPE;
	private String CLASS_CONTENT;
	private String CLASS_FOUND_DATE;
	private String tacher_ID;
	
	
}
