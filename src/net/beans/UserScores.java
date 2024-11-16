package net.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class UserScores {
	int score_id;
	int user_id;
	int total_questions;// 用户回答的总题数
	int correct_answers;// 用户回答正确的题数
	BigDecimal score_percentage;// 成绩百分比
	Timestamp timestamp;

	public UserScores() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserScores(int score_id, int user_id, int total_questions, int correct_answers, BigDecimal score_percentage,
			Timestamp timestamp) {
		super();
		this.score_id = score_id;
		this.user_id = user_id;
		this.total_questions = total_questions;
		this.correct_answers = correct_answers;
		this.score_percentage = score_percentage;
		this.timestamp = timestamp;
	}

	public UserScores(int user_id, int total_questions, int correct_answers, BigDecimal score_percentage) {
		super();
		this.user_id = user_id;
		this.total_questions = total_questions;
		this.correct_answers = correct_answers;
		this.score_percentage = score_percentage;
	}

	public Timestamp getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Timestamp timestamp) {
		this.timestamp = timestamp;
	}

	public int getScore_id() {
		return score_id;
	}

	public void setScore_id(int score_id) {
		this.score_id = score_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getTotal_questions() {
		return total_questions;
	}

	public void setTotal_questions(int total_questions) {
		this.total_questions = total_questions;
	}

	public int getCorrect_answers() {
		return correct_answers;
	}

	public void setCorrect_answers(int correct_answers) {
		this.correct_answers = correct_answers;
	}

	public BigDecimal getScore_percentage() {
		return score_percentage;
	}

	public void setScore_percentage(BigDecimal score_percentage) {
		this.score_percentage = score_percentage;
	}

}
