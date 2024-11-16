package net.servrlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.beans.Questions;
import net.beans.Users;
import net.daos.UserAnswerRecordsDao;
import net.daos.UserAnswerViewDao;

/**
 * Servlet implementation class UpdateRecords
 */
@WebServlet("/ser/UpdateRecords")
public class UpdateRecords extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateRecords() {
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
		List<Questions> questionsList = (List<Questions>) session.getAttribute("questions_list");
		List<String> answerList = (List<String>) request.getAttribute("answer_list");
		try {
			UserAnswerRecordsDao userAnswerRecordsDao = new UserAnswerRecordsDao();
			UserAnswerViewDao userAnswerViewDao = new UserAnswerViewDao();
			for (int i = 0; i < questionsList.size(); i++) {
				if (!questionsList.get(i).getCorrect_option().equals(answerList.get(i)))
					userAnswerRecordsDao.insertUserAnswer(users.getUser_id(), questionsList.get(i).getQuestion_id(),
							answerList.get(i));
			}
			// 返回主页
			response.sendRedirect("../learningContent.jsp");

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
