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

import net.beans.Questions;
import net.beans.RolePermissions;
import net.beans.Users;
import net.daos.QuestionsDao;
import net.daos.RolePermissionsDao;

/**
 * Servlet implementation class AddQuestions
 */
@WebServlet("/ser/AddQuestions")
public class AddQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddQuestions() {
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
		String question_txt = request.getParameter("question_text");
		String option_a = request.getParameter("option_a");
		String option_b = request.getParameter("option_b");
		String option_c = request.getParameter("option_c");
		String option_d = request.getParameter("option_d");
		String correct_option = request.getParameter("correct_option");
		Questions questions = new Questions(question_txt, option_a, option_b, option_c, option_d, correct_option);

		try {
			RolePermissions rolePermissions = rolePermissionsDao.getRolePermissionByUser(users);
			if (rolePermissions.isWrite_permission())// 权限检查
				try {
					QuestionsDao questionsDao = new QuestionsDao();
					questionsDao.addQuestion(questions);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("OpQuestions");
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
