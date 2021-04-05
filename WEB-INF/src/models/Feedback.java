package models;
class Feedback{
	private int feedback_Id;
	private String feedback;
	
	public Feedback(int feedback_Id, String feedback) {
		super();
		this.feedback_Id = feedback_Id;
		this.feedback = feedback;
	}

	public int getfeedback_Id() {
		return feedback_Id;
	}

	public void setfeedback_Id(int feedback_Id) {
		this.feedback_Id = feedback_Id;
	}

	public String getfeedback() {
		return feedback;
	}

	public void setfeedback(String feedback) {
		this.feedback = feedback;
	}
	
	
}