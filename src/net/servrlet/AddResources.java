package net.servrlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.beans.LearnResources;
import net.beans.RolePermissions;
import net.beans.Users;
import net.daos.LearnResourcesDao;
import net.daos.RolePermissionsDao;

/**
 * Servlet implementation class AddResources
 */
@WebServlet("/ser/AddResources")
public class AddResources extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddResources() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("user");
		RolePermissionsDao rolePermissionsDao = new RolePermissionsDao();
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		try {
			RolePermissions rolePermissions = rolePermissionsDao.getRolePermissionByUser(users);
			if (rolePermissions.isWrite_permission())// 权限检查
				try {
					LearnResourcesDao learnResourcesDao = new LearnResourcesDao();
					learnResourcesDao.addResources(new LearnResources(title, content));
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("OpResources");
					requestDispatcher.forward(request, response);
				} catch (SQLException e) {
					e.printStackTrace();
				}
			else {
				response.sendError(HttpServletResponse.SC_FORBIDDEN, "Permission Denied: Insufficient Privileges");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
