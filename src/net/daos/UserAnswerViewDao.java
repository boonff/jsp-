package net.daos;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import net.beans.UserAnswerView;
import net.utils.C3P0Util;

public class UserAnswerViewDao {
	public List<UserAnswerView> getAllByUserId(int uer_id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT * FROM user_answer_view WHERE user_id = ?";
		try {
			return queryRunner.query(conn, sql, uer_id, new BeanListHandler<UserAnswerView>(UserAnswerView.class));
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			throw (e);
		} finally {
			C3P0Util.closeAll(conn);
		}
	}
}
