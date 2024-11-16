package net.beans;

public class Questions {
	int question_id;
	String question_text;
	String option_a;
	String option_b;
	String option_c;
	String option_d;
	String correct_option;

	public Questions() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Questions(int question_id, String question_text, String option_a, String option_b, String option_c,
			String option_d, String correct_option) {
		super();
		this.question_id = question_id;
		this.question_text = question_text;
		this.option_a = option_a;
		this.option_b = option_b;
		this.option_c = option_c;
		this.option_d = option_d;
		this.correct_option = correct_option;
	}

	public Questions(String question_text, String option_a, String option_b, String option_c, String option_d,
			String correct_option) {
		super();
		this.question_text = question_text;
		this.option_a = option_a;
		this.option_b = option_b;
		this.option_c = option_c;
		this.option_d = option_d;
		this.correct_option = correct_option;
	}

	public int getQuestion_id() {
		return question_id;
	}

	public void setQuestion_id(int question_id) {
		this.question_id = question_id;
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
