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
import net.daos.QuestionsDao;

/**
 * Servlet implementation class DeleteQuestion
 */
@WebServlet("/ser/DeleteQuestion")
public class DeleteQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteQuestion() {
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
		response.getWriter().append("Served at: ").append(request.getContextPath()).append("/ser/DeleteQuestion");
		HttpSession session = request.getSession();
		QuestionsDao questionsDao = new QuestionsDao();
		int question_id = Integer.parseInt(request.getParameter("id"));
		try {
			questionsDao.deleteQuestionById(question_id);// 删除数据库中的元素
			List<Questions> questionsList = questionsDao.textFilter((String) session.getAttribute("question_filter"));
			request.setAttribute("questions_list", questionsList);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/opQuestions.jsp");// 重新请求页面
			requestDispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}
