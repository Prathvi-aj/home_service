package models;
import java.sql.*;
public class Users{
	private int user_Id;
	private String name;
	private String eMail;
    private String phone;
	private String password;
	private String address_Id;
	private String user_Type_Id;
	private String feedback_Id;
    private String service;
    private String city;
    private String area;
	
	public Users( String name, String eMail, String phone, String password, String address_Id, String user_Type_Id){
		this.name = name;
		this.eMail = eMail;
		this.password = password;
		this.address_Id = address_Id;
		this.user_Type_Id = user_Type_Id;
	}
    public Users(String name, String eMail, String phone, String password,String address_Id,String city,String area ,String user_Type_Id,String service){
		this.name = name;
		this.eMail = eMail;
        this.phone=phone;
		this.password = password;
		this.address_Id = address_Id;
        this.city=city;
        this.area=area;
		this.user_Type_Id = user_Type_Id;
        this.service=service;
	}
    public Users( int user_Id,String name, String eMail, String phone,  String address_Id, String user_Type_Id,String service){
        this.user_Id=user_Id;
		this.name = name;
		this.eMail = eMail;
        this.phone = phone;
		this.address_Id = address_Id;
		this.user_Type_Id = user_Type_Id;
        this.service = service;
	}
    public Users(String eMail,String password){
        this.eMail=eMail;
        this.password=password;
    }
     public Users(String service){
        this.service=service;
    }
    
    public Users(String service,String city,String area){
        this.service=service;
        this.city=city;
        this.area=area;
    }
    public java.util.ArrayList<Users> collectUsers(){
		Connection con = null;
		java.util.ArrayList<Users> users = new java.util.ArrayList<Users>();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/home_service?user=root&password=1234");

			String query = "select user_id,name,email,phone_no,address_id,user_type_id,service from users where (service=?) AND (city=?) AND (area=?)";
			PreparedStatement p = con.prepareStatement(query);
            p.setString(1,service);
            p.setString(2,city);
            p.setString(3,area);
			ResultSet r = p.executeQuery();

			while(r.next()){
				users.add(new Users(r.getInt(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5),r.getString(6),r.getString(7)));
			}
		}catch(SQLException x){
			x.printStackTrace();
		}catch(ClassNotFoundException x){
			x.printStackTrace();
		}finally{
			try{
				con.close();		
			}catch(SQLException x){
				x.printStackTrace();
			}
		}

		return users;
	}
    
    public java.util.ArrayList<Users> collectWorkers(){
		Connection con = null;
		java.util.ArrayList<Users> users = new java.util.ArrayList<Users>();
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/home_service?user=root&password=1234");

			String query = "select user_id,name,email,phone_no,address_id,user_type_id,service from users where service=\'"+service+"\'";
			PreparedStatement p = con.prepareStatement(query);
			ResultSet r = p.executeQuery();

			while(r.next()){
				users.add(new Users(r.getInt(1),r.getString(2),r.getString(3),r.getString(4),r.getString(5),r.getString(6),r.getString(7)));
			}
		}catch(SQLException x){
			x.printStackTrace();
		}catch(ClassNotFoundException x){
			x.printStackTrace();
		}finally{
			try{
				con.close();		
			}catch(SQLException x){
				x.printStackTrace();
			}
		}

		return users;
	}

    public boolean registerUser(){
		boolean flag = false;	

		Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/home_service?user=root&password=1234");

			String query = "insert into users(name,email,password,address_id,city,area,user_type_id,feedback_id,phone_no,service) value (?,?,?,?,?,?,?,?,?,?)";
			
			PreparedStatement p = con.prepareStatement(query);
			p.setString(1,name);
			p.setString(2,eMail);
            
			p.setString(3,password);
            p.setString(4,address_Id);
            p.setString(5,city);
            p.setString(6,area);
            p.setString(7,user_Type_Id);
            p.setString(8,feedback_Id);
            p.setString(9,phone);
            p.setString(10,service);
			int val = p.executeUpdate();
			
			if(val==1){
				flag = true;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}finally{
			try{
				con.close();
			}catch(SQLException e){
				e.printStackTrace();
			}
		}	

		return flag;
	}

    public boolean loginUser(){
		boolean flag = false;
		Connection con = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/home_service?user=root&password=1234");

			String query = "select user_id,name,phone_no,user_type_id,service,address_id from users where email=? and password=?";
			PreparedStatement p = con.prepareStatement(query);

			p.setString(1,eMail);
			p.setString(2,password);

			ResultSet r = p.executeQuery();

			if(r.next()){
				this.user_Id = r.getInt(1);
				this.name = r.getString(2);
				this.phone = r.getString(3);
                this.user_Type_Id = r.getString(4);
                this.service = r.getString(5);
				this.address_Id = r.getString(6);

				flag = true;
			}
		}catch(SQLException x){
			x.printStackTrace();
		}catch(ClassNotFoundException x){
			x.printStackTrace();
		}finally{
			try{
				con.close();		
			}catch(SQLException x){
				x.printStackTrace();
			}
		}

		return flag;
	}


	public int getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(int user_Id) {
		this.user_Id = user_Id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

    public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

    public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

    public String getPhone() {
		return phone;
	}
	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
    public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public String getAddress_Id() {
		return address_Id;
	}

	public void setAddress_Id(String address_Id) {
		this.address_Id = address_Id;
	}

	public String getUser_Type_Id() {
		return user_Type_Id;
	}

	public void setUser_Type_Id(String user_Type_Id) {
		this.user_Type_Id = user_Type_Id;
	}

	public String getFeedback_Id() {
		return feedback_Id;
	}

	public void setFeedback_Id(String feedback_Id) {
		this.feedback_Id = feedback_Id;
	}
	
	
	
}