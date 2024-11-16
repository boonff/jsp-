package net.servrlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.beans.Users;
import net.daos.UsersDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/ser/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String password_ = request.getParameter("password_");
		Users users = new Users(username, password, "user_read");
		UsersDao usersDao = new UsersDao();
		try {
			if (!password.equals(password_)) {
				System.err.println("密码不一致");
				request.setAttribute("errormessage", "密码不一致");
				RequestDispatcher dispatcher = request.getRequestDispatcher("../register.jsp");
				dispatcher.forward(request, response);
			}

			usersDao.register(users);
			response.sendRedirect("../login.jsp");
		} catch (SQLException e) {
			// 检查异常的 SQL 状态码，以确定是否为存储过程抛出的异常
			if ("45000".equals(e.getSQLState())) {
				// 存储过程抛出的异常
				if (e.getMessage().contains("Username already exists")) {
					System.err.println("Username already exists");
					request.setAttribute("errormessage", "用户名重复");
					RequestDispatcher dispatcher = request.getRequestDispatcher("../register.jsp");
					dispatcher.forward(request, response);
				} else
					System.err.println("我也不知道是什么错误");

			} else {
				// 其他类型的异常，进行相应的处理
				e.printStackTrace();
			}
		}

	}

}
