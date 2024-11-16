package net.servrlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.beans.UserAnswerView;
import net.beans.UserScores;
import net.beans.Users;
import net.daos.UserAnswerViewDao;
import net.daos.UserScoresDao;

/**
 * Servlet implementation class LoadScoreAndRecords
 */
@WebServlet("/ser/LoadScoreAndRecords")
public class LoadScoreAndRecords extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoadScoreAndRecords() {
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
		// 更新成绩session
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("user");
		UserScoresDao userScoresDao = new UserScoresDao();
		UserAnswerViewDao userAnswerViewDao = new UserAnswerViewDao();
		try {
			List<UserScores> scoresList = userScoresDao.GetAllByUserId(users.getUser_id());
			session.setAttribute("score_list", scoresList);
			List<UserAnswerView> viewList = userAnswerViewDao.getAllByUserId(users.getUser_id());
			System.out.println("userid: " + users.getUser_id());
			session.setAttribute("answer_view_list", viewList);
			System.out.println("答题记录加载成功");
			// 跳转到答题记录界面
			response.sendRedirect("../ScoreAndRecords.jsp");
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
