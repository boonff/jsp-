package net.servrlet;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class OpQuestions
 */
@WebServlet("/ser/OpQuestions")
public class OpQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OpQuestions() {
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
		// 权限检查
		try {
			RolePermissions rolePermissions = rolePermissionsDao.getRolePermissionByUser(users);
			if (!(rolePermissions.isWrite_permission() | rolePermissions.isDelete_permission())) { // 权限认证失败
				System.out.println("权限不足");
				request.setAttribute("questions_permission_error", "权限不足");
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/learningContent.jsp");
				requestDispatcher.forward(request, response);
			} else {
				QuestionsDao questionsDao = new QuestionsDao();
				try {
					List<Questions> questionsList = (List<Questions>) questionsDao.getQuestionAll();
					request.setAttribute("questions_list", questionsList);
					RequestDispatcher requestDispatcher = request.getRequestDispatcher("/opQuestions.jsp");
					requestDispatcher.forward(request, response);
				} catch (Exception e1) {
					// TODO: handle exception
					e1.printStackTrace();
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
