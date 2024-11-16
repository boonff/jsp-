package net.servrlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.beans.Questions;
import net.beans.UserScores;
import net.beans.Users;
import net.daos.UserScoresDao;

/**
 * Servlet implementation class UpdateScore
 */
@WebServlet("/ser/UpdateUserScore")
public class UpdateUserScore extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUserScore() {
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
		List<Questions> questionsList = (List<Questions>) session.getAttribute("questions_list");
		Users users = (Users) session.getAttribute("user");
		List<String> answerList = new ArrayList<String>();
		for (int i = 0; i < questionsList.size(); i++) {
			answerList.add(request.getParameter("answer_" + (questionsList.get(i).getQuestion_id())));
		}
		int total_counter = 0;
		for (int i = 0; i < questionsList.size(); i++) {
			String answer = questionsList.get(i).getCorrect_option();
			String user_answer = answerList.get(i);
			System.out.println(answer + ", " + user_answer);
			if (!answer.equals(user_answer))
				total_counter += 1;
		}
		double score = 100 / questionsList.size() * (questionsList.size() - total_counter);
		UserScores userScores = new UserScores(users.getUser_id(), total_counter, questionsList.size(),
				BigDecimal.valueOf(score));
		try {
			// 记录成绩
			UserScoresDao userScoresDao = new UserScoresDao();
			userScoresDao.addScore(userScores);
			// 更新答题记录
			request.setAttribute("answer_list", answerList);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/ser/UpdateRecords");
			requestDispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
