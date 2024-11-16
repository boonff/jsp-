package net.daos;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import net.beans.Questions;
import net.utils.C3P0Util;

public class QuestionsDao {
	// public boolean userHasWritePermission()

	public void addQuestion(Questions question) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "CALL add_question(?, ?, ?, ?, ?, ?)";
		try (CallableStatement stmt = conn.prepareCall(sql)) {
			// 设置存储过程的输入参数
			stmt.setString(1, question.getQuestion_text());
			stmt.setString(2, question.getOption_a());
			stmt.setString(3, question.getOption_b());
			stmt.setString(4, question.getOption_c());
			stmt.setString(5, question.getOption_d());
			stmt.setString(6, question.getCorrect_option());
			// 执行存储过程
			stmt.execute();
			// 如果存储过程执行成功，继续执行其他逻辑
			System.out.println("User registered successfully");
		} catch (SQLException e) {
			System.err.println("我也不知道是什么错误");
			e.printStackTrace();
			throw (e);
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public void deleteQuestionById(int id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "CALL delete_question(?)";
		try (CallableStatement stmt = conn.prepareCall(sql)) {
			// 设置存储过程的输入参数
			stmt.setInt(1, id);
			// 执行存储过程
			stmt.execute();
			// 如果存储过程执行成功，继续执行其他逻辑
			System.out.println("User registered successfully");
		} catch (SQLException e) {
			System.err.println("我也不知道是什么错误");
			e.printStackTrace();
			throw (e);
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public List<Questions> getQuestionAll() throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT * FROM questions";
		try {
			return queryRunner.query(conn, sql, new BeanListHandler<Questions>(Questions.class));
		} catch (Exception e) {
			System.err.println("我也不知道是什么错误");
			e.printStackTrace();
			throw (e);
			// TODO: handle exception
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public List<Questions> textFilter(String text) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT * FROM questions WHERE question_text LIKE ? ";
		try {
			Object[] param = { "%" + text + "%" };
			return queryRunner.query(conn, sql, new BeanListHandler<Questions>(Questions.class), param);
		} catch (Exception e) {
			System.err.println("我也不知道是什么错误");
			e.printStackTrace();
			throw (e);
			// TODO: handle exception
		} finally {
			C3P0Util.closeAll(conn);
		}
	}
}
