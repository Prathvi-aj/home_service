package models;
class Status{
	public int status_ID;
	public String status;
	
	public Status(int status_ID, String status) {
		super();
		this.status_ID = status_ID;
		this.status = status;
	}
	
	public int getStatus_ID() {
		return status_ID;
	}
	
	public void setStatus_ID(int status_ID) {
		this.status_ID = status_ID;
	}
	
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
}