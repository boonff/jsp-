package net.servrlet;

import java.io.IOException;
import java.util.Collections;
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
 * Servlet implementation class GetQuestions
 */
@WebServlet("/ser/GetQuestions")
public class GetQuestions extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetQuestions() {
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
		int num_question = Integer.parseInt(request.getParameter("num_question"));// 获取题目数量
		QuestionsDao questionsDao = new QuestionsDao();
		try {
			List<Questions> questionsList = questionsDao.getQuestionAll();
			Collections.shuffle(questionsList);
			try {
				HttpSession session = request.getSession();
				List<Questions> randomQuestionsList = questionsList.subList(0, num_question);
				session.setAttribute("questions_list", randomQuestionsList);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("/questions.jsp");
				requestDispatcher.forward(request, response);
				System.out.print("成功获取" + num_question + "个题目");
			} catch (IndexOutOfBoundsException e1) {
				e1.printStackTrace();
				System.err.println("请求题目数量超过数据库总量");
				response.sendRedirect("../learningContent.jsp");
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
