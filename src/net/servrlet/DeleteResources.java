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

import net.beans.LearnResources;
import net.daos.LearnResourcesDao;

/**
 * Servlet implementation class DeleteResources
 */
@WebServlet("/ser/DeleteResources")
public class DeleteResources extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteResources() {
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
		HttpSession session = request.getSession();
		LearnResourcesDao learnResourcesDao = new LearnResourcesDao();
		int resources_id = Integer.parseInt(request.getParameter("id"));
		try {
			learnResourcesDao.deleteResourcesById(resources_id);
			List<LearnResources> ResourcesList = learnResourcesDao
					.titleFilter((String) session.getAttribute("resources_filter"));
			request.setAttribute("resources_list", ResourcesList);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/opResources.jsp");// 重新请求页面
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
