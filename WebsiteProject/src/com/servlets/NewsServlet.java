package com.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.models.News;
import com.service.NewService;

/**
 * Servlet implementation class NewsServlet
 */
@WebServlet("/listNew")
public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NewService n;

	public void init() {
		n = new NewService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			listNews(request, response);
		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public void listNews(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		List<News> listNews = n.getAllNews();
		request.setAttribute("listNews", listNews);
		RequestDispatcher dispatcher = request.getRequestDispatcher("list-news.jsp");
		dispatcher.forward(request, response);
	}

//	public void showEditForm(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		int id = Integer.parseInt(request.getParameter("id"));
//		News exist_new = n.getNews(id);
//		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-news.jsp");
//		request.setAttribute("exist_new", exist_new);
//		dispatcher.forward(request, response);
//	}
//
//	public void showNewForm(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		RequestDispatcher dispatcher = request.getRequestDispatcher("add-news.jsp");
//		dispatcher.forward(request, response);
//	}
//
//	public void insertNew(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
//		String title = request.getParameter("title");
//		String content = request.getParameter("content");
//		News aNew = new News(title, content);
//		n.insertNews(aNew);
//		response.sendRedirect("listNew");
//	}
//
//	public void deleteNews(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException, SQLException {
//		int id = Integer.parseInt(request.getParameter("id"));
//		n.deleteNews(id);
//		response.sendRedirect("listNew");
//	}
//	public void updateNew(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException, SQLException {
//		String title = request.getParameter("title");
//		String content = request.getParameter("content");
//		int id = Integer.parseInt(request.getParameter("id"));
//		News exist_new = new News(id,title, content);
//		n.updateNews(exist_new);
//		response.sendRedirect("listNew");
//	}
}
