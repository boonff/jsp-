package net.beans;

import java.sql.Timestamp;

public class UserAnswerRecords {
	int record_id;
	int user_id;
	int question_id;
	String answer;
	// Timestamp timestamp = new Timestamp(System.currentTimeMillis());
	Timestamp timestep;

	public UserAnswerRecords() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserAnswerRecords(int record_id, int user_id, int question_id, String answer, Timestamp timestep) {
		super();
		this.record_id = record_id;
		this.user_id = user_id;
		this.question_id = question_id;
		this.answer = answer;
		this.timestep = timestep;
	}

	public int getRecord_id() {
		return record_id;
	}

	public void setRecord_id(int record_id) {
		this.record_id = record_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Timestamp getTimestep() {
		return timestep;
	}

	public void setTimestep(Timestamp timestep) {
		this.timestep = timestep;
	}

}
