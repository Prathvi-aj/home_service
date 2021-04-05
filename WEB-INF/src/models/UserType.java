package models;
class User_Type{
	private int user_Type_Id;
	private String user_Type;
	
	public User_Type(int user_Type_Id, String user_Type) {
		super();
		this.user_Type_Id = user_Type_Id;
		this.user_Type = user_Type;
	}

	public int getuser_Type_Id() {
		return user_Type_Id;
	}

	public void setuser_Type_Id(int user_Type_Id) {
		this.user_Type_Id = user_Type_Id;
	}

	public String getuser_Type() {
		return user_Type;
	}

	public void setuser_Type(String user_Type) {
		this.user_Type = user_Type;
	}
	
	
}