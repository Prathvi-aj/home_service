package models;
class Address{
	private int address_Id;
	private City city_Id;
	private String location;
	
	public Address(int address_Id, String city_Id, String location) {
		super();
		this.address_Id = address_Id;
		this.city_Id = city_Id;
		this.location = location;
	}

	public int getAddress_Id() {
		return address_Id;
	}

	public void setAddress_Id(int address_Id) {
		this.address_Id = address_Id;
	}

	public String getCity_Id() {
		return city_Id;
	}

	public void setCity_Id(City city_Id) {
		this.city_Id = city_Id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	
}