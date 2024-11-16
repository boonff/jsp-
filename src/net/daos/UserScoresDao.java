package net.daos;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import net.beans.UserScores;
import net.utils.C3P0Util;

public class UserScoresDao {
	public void addScore(UserScores userScores) throws SQLException {
		Connection conn = C3P0Util.getCon();
		String sql = "CALL add_score(?, ?, ?, ?)";
		// 使用 CallableStatement 调用存储过程
		try (CallableStatement stmt = conn.prepareCall(sql)) {
			// 设置存储过程的输入参数
			stmt.setInt(1, userScores.getUser_id());
			stmt.setInt(2, userScores.getTotal_questions());
			stmt.setInt(3, userScores.getCorrect_answers());
			stmt.setBigDecimal(4, userScores.getScore_percentage());
			// 执行存储过程
			stmt.execute();
			// 如果存储过程执行成功，继续执行其他逻辑
			System.out.println("UserScore registered successfully");
		} catch (SQLException e) {
			// 捕获存储过程中抛出的异常
			System.err.println("Error: " + e.getMessage());
			throw (e);
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public List<UserScores> GetAllByUserId(int user_id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT * FROM user_scores WHERE user_id = ?";
		try {
			return queryRunner.query(conn, sql, user_id, new BeanListHandler<UserScores>(UserScores.class));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw (e);
		} finally {
			C3P0Util.closeAll(conn);
		}
	}
}
