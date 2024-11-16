package net.daos;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import net.beans.LearnResources;
import net.utils.C3P0Util;

public class LearnResourcesDao {
	public LearnResources getFirstResources() throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT * FROM learn_resources LIMIT 1";
		try {
			return queryRunner.query(conn, sql, new BeanHandler<LearnResources>(LearnResources.class));
		} catch (Exception e) {
			System.err.println("我也不知道是什么错误");
			e.printStackTrace();
			throw (e);
			// TODO: handle exception
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public List<LearnResources> getAllResources() throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT * FROM learn_resources";
		try {
			return queryRunner.query(conn, sql, new BeanListHandler<LearnResources>(LearnResources.class));
		} catch (Exception e) {
			System.err.println("我也不知道是什么错误");
			e.printStackTrace();
			throw (e);
			// TODO: handle exception
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public List<LearnResources> titleFilter(String title) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "SELECT * FROM learn_resources WHERE title LIKE ?";
		try {
			Object[] param = { "%" + title + "%" };
			return queryRunner.query(conn, sql, new BeanListHandler<LearnResources>(LearnResources.class), param);
		} catch (Exception e) {
			System.err.println("我也不知道是什么错误");
			e.printStackTrace();
			throw (e);
			// TODO: handle exception
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public void addResources(LearnResources learnResources) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "INSERT INTO learn_resources(title, content) VALUES(?, ?)";
		try {
			queryRunner.update(conn, sql, learnResources.getTitle(), learnResources.getContent());
		} catch (Exception e) {
			System.err.println("我也不知道是什么错误");
			e.printStackTrace();
			throw (e);
			// TODO: handle exception
		} finally {
			C3P0Util.closeAll(conn);
		}
	}

	public void deleteResourcesById(int resources_id) throws SQLException {
		QueryRunner queryRunner = new QueryRunner();
		Connection conn = C3P0Util.getCon();
		String sql = "DELETE FROM learn_resources WHERE resources_id = ?";
		try {
			queryRunner.update(conn, sql, resources_id);
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
