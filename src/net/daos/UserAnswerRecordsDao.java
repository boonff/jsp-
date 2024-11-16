package net.daos;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import net.beans.UserAnswerRecords;
import net.utils.C3P0Util;

public class UserAnswerRecordsDao {
	public void insertUserAnswer(int user_id, int question_id, String answer) throws SQLException {
		Connection conn = C3P0Util.getCon();
		String sql = "CALL insert_user_answer(?, ?, ?)";
		try (CallableStatement stmt = conn.prepareCall(sql)) {
			stmt.setInt(1, user_id);
			stmt.setInt(2, question_id);
			stmt.setString(3, answer);
			stmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
			throw (e);
			// TODO: handle exception
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public List<UserAnswerRecords> allAnswerRecords() throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT * FROM user_answer_records";
		try {
			return queryRunner.query(conn, sql, new BeanListHandler<UserAnswerRecords>(UserAnswerRecords.class));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw (e);
		} finally {
			C3P0Util.closeAll(conn);
		}
	}
}
