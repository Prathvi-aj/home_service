package models;
class Service{
	public int service_ID;
	public String service;
	
	public Service(int service_ID, String service) {
		super();
		this.service_ID = service_ID;
		this.service = service;
	}
	
	public int getservice_ID() {
		return service_ID;
	}
	
	public void setservice_ID(int service_ID) {
		this.service_ID = service_ID;
	}
	
	public String getservice() {
		return service;
	}
	
	public void setservice(String service) {
		this.service = service;
	}
}