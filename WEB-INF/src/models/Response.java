package models;
class Response{
	private int response_Id;
	private String response;
	
	public Response(int response_Id, String response) {
		super();
		this.response_Id = response_Id;
		this.response = response;
	}

	public int getresponse_Id() {
		return response_Id;
	}

	public void setresponse_Id(int response_Id) {
		this.response_Id = response_Id;
	}

	public String getresponse() {
		return response;
	}

	public void setresponse(String response) {
		this.response = response;
	}
	
	
}