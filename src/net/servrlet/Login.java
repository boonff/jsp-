package net.servrlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.daos.LearnResourcesDao;
import net.daos.UsersDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/ser/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
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
		UsersDao usersDao = new UsersDao();
		LearnResourcesDao learnResourcesDao = new LearnResourcesDao();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(usersDao.login(username, password));
		if (usersDao.login(username, password)) { // 登录成功
			HttpSession session = request.getSession();
			session.setAttribute("user", usersDao.getUsersByName(username));// 保存用户
			response.sendRedirect("../learningContent.jsp");// 跳转到主页
		} else {
			request.setAttribute("errorMessage", "用户名或密码错误");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
			requestDispatcher.forward(request, response);
		}
	}

}
