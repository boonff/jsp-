package net.servrlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.beans.LearnResources;
import net.daos.LearnResourcesDao;

/**
 * Servlet implementation class GetAllResources
 */
@WebServlet("/ser/GetAllResources")
public class GetAllResources extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetAllResources() {
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
		LearnResourcesDao learnResourcesDao = new LearnResourcesDao();
		try {
			List<LearnResources> resourcesList = learnResourcesDao.getAllResources();
			request.setAttribute("resources_list", resourcesList);
			System.out.println("文章获取成功");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/resources.jsp");
			requestDispatcher.forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("文章获取失败");
		}

	}

}
