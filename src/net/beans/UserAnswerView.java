package net.beans;

import java.sql.Timestamp;

public class UserAnswerView {
	int record_id;
	int user_id;
	int question_id;
	String answer;
	Timestamp timestamp;
	String question_text;
	String option_a;
	String option_b;
	String option_c;
	String option_d;
	String correct_option;

	public UserAnswerView() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserAnswerView(int record_id, int user_id, int question_id, String answer, Timestamp timestamp,
			String question_text, String option_a, String option_b, String option_c, String option_d,
			String correct_option) {
		super();
		this.record_id = record_id;
		this.user_id = user_id;
		this.question_id = question_id;
		this.answer = answer;
		this.timestamp = timestamp;
		this.question_text = question_text;
		this.option_a = option_a;
		this.option_b = option_b;
		this.option_c = option_c;
		this.option_d = option_d;
		this.correct_option = correct_option;
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

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	public String getQuestion_text() {
		return question_text;
	}

	public void setQuestion_text(String question_text) {
		this.question_text = question_text;
	}

	public String getOption_a() {
		return option_a;
	}

	public void setOption_a(String option_a) {
		this.option_a = option_a;
	}

	public String getOption_b() {
		return option_b;
	}

	public void setOption_b(String option_b) {
		this.option_b = option_b;
	}

	public String getOption_c() {
		return option_c;
	}

	public void setOption_c(String option_c) {
		this.option_c = option_c;
	}

	public String getOption_d() {
		return option_d;
	}

	public void setOption_d(String option_d) {
		this.option_d = option_d;
	}

	public String getCorrect_option() {
		return correct_option;
	}

	public void setCorrect_option(String correct_option) {
		this.correct_option = correct_option;
	}

}
