package models;
class City{
	private int city_Id;
	private String city;
	
	public City(int city_Id, String city) {
		super();
		this.city_Id = city_Id;
		this.city = city;
	}

	public int getCity_Id() {
		return city_Id;
	}

	public void setCity_Id(int city_Id) {
		this.city_Id = city_Id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	
}