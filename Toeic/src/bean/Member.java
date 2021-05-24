package bean;

public class Member {
	private int mID;
	private String mFullName;
	private String mUser;
	private String mPass;
	private int ctlId;
	public int getmID() {
		return mID;
	}
	public void setmID(int mID) {
		this.mID = mID;
	}
	public String getmFullName() {
		return mFullName;
	}
	public void setmFullName(String mFullName) {
		this.mFullName = mFullName;
	}
	public String getmUser() {
		return mUser;
	}
	public void setmUser(String mUser) {
		this.mUser = mUser;
	}
	public String getmPass() {
		return mPass;
	}
	public void setmPass(String mPass) {
		this.mPass = mPass;
	}
	
	public int getCtlId() {
		return ctlId;
	}
	public void setCtlId(int ctlId) {
		this.ctlId = ctlId;
	}
	public Member() {
		super();
	}
	
}
