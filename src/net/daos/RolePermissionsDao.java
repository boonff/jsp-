package net.daos;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import net.beans.RolePermissions;
import net.beans.Users;
import net.utils.C3P0Util;

public class RolePermissionsDao {
	public void createRole(RolePermissions role) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "CALL create_role(?, ?, ?, ?)";
		try (CallableStatement stmt = conn.prepareCall(sql)) {
			stmt.setString(1, role.getRole());
			stmt.setBoolean(2, role.isRead_permission());
			stmt.setBoolean(3, role.isWrite_permission());
			stmt.setBoolean(4, role.isDelete_permission());
			stmt.execute();
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println("我也不知道是什么错误");
			e.printStackTrace();
			throw (e);
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public void updateRole(RolePermissions role) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "CALL create_role(?, ?, ?, ?)";
		try (CallableStatement stmt = conn.prepareCall(sql)) {
			stmt.setString(1, role.getRole());
			stmt.setBoolean(2, role.isRead_permission());
			stmt.setBoolean(3, role.isWrite_permission());
			stmt.setBoolean(4, role.isDelete_permission());
			stmt.execute();
		} catch (Exception e) {
			// TODO: handle exception
			System.err.println("我也不知道是什么错误");
			e.printStackTrace();
			throw (e);
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public RolePermissions getRolePermissionByUser(Users users) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT * FROM role_permissions WHERE role=?";
		try {
			return queryRunner.query(conn, sql, users.getRole(),
					new BeanHandler<RolePermissions>(RolePermissions.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw (e);
			// TODO: handle exception
		} finally {
			C3P0Util.closeAll(conn);
		}
	}
}
