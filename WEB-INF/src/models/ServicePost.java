package models;
class ServicePost{
	private int post_Id;
	private User user_Id;
	private Service service_Id;
	private String post;
	private Date post_date_time;
	private Status status_Id;
	private String response;
	
	public ServicePost(int post_Id, int user_Id, int service_Id, String post, String post_date_time, int status_Id,
			String response) {
		super();
		this.post_Id = post_Id;
		this.user_Id = user_Id;
		this.service_Id = service_Id;
		this.post = post;
		this.post_date_time = post_date_time;
		this.status_Id = status_Id;
		this.response = response;
	}

	public int getPost_Id() {
		return post_Id;
	}

	public void setPost_Id(int post_Id) {
		this.post_Id = post_Id;
	}

	public int getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(int user_Id) {
		this.user_Id = user_Id;
	}

	public int getService_Id() {
		return service_Id;
	}

	public void setService_Id(int service_Id) {
		this.service_Id = service_Id;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getPost_date_time() {
		return post_date_time;
	}

	public void setPost_date_time(String post_date_time) {
		this.post_date_time = post_date_time;
	}

	public int getStatus_Id() {
		return status_Id;
	}

	public void setStatus_Id(int status_Id) {
		this.status_Id = status_Id;
	}

	public String getResponse() {
		return response;
	}

	public void setResponse(String response) {
		this.response = response;
	}
	
}