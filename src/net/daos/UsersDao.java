package net.daos;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import net.beans.Users;
import net.utils.C3P0Util;

public class UsersDao {
	public void register(Users users) throws SQLException {
		Connection conn = C3P0Util.getCon();
		String sql = "CALL user_register(?, ?, ?)";
		// 使用 CallableStatement 调用存储过程
		try (CallableStatement stmt = conn.prepareCall(sql)) {
			// 设置存储过程的输入参数
			stmt.setString(1, users.getUsername());
			stmt.setString(2, users.getPassword());
			stmt.setString(3, users.getRole());
			// 执行存储过程
			stmt.execute();
			// 如果存储过程执行成功，继续执行其他逻辑
			System.out.println("User registered successfully");
		} catch (SQLException e) {
			// 捕获存储过程中抛出的异常
			System.err.println("Error: " + e.getMessage());
			throw (e);
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public boolean login(String username, String password) {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "select user_login(?, ?)";
		try {
			Object[] params = { username, password };

			boolean canlogin = queryRunner.query(conn, sql, new ScalarHandler<Boolean>(), params);
			return canlogin;

		} catch (SQLException e) {

			// TODO Auto-generated catch block
			System.err.println("	public int register(Users users) {");
			e.printStackTrace();
		} finally {
			C3P0Util.closeAll(conn);
		}
		return false;
	}

	public Users getUsersByName(String name) {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT * FROM users WHERE username = ?";
		try {
			return queryRunner.query(conn, sql, name, new BeanHandler<Users>(Users.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.err.println("	public Users getUsersByName(String name) {");
			e.printStackTrace();
		} finally {
			C3P0Util.closeAll(conn);
		}
		return null;
	}

	public String getRoleByname(String name) {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT user_id FROM users WHERE username=?";
		try {
			Object[] params = { name };
			String role = queryRunner.query(sql, new ScalarHandler<String>(), params);
			return role;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.err.println("	public boolean getRoleByname(String name) {");
			e.printStackTrace();
		} finally {
			C3P0Util.closeAll(conn);
		}
		return null;
	}

	public void updateNameById(int id, String name) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "UPDATE user SET username= ? WHERE user_id=?";
		try {
			Object[] params = { name, id };
			queryRunner.update(conn, sql, params);
		} catch (SQLException e) {
			e.printStackTrace();
			throw (e);
		} finally {
			C3P0Util.closeAll(conn);
		}
	}
}
