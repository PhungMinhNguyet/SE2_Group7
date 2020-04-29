package com.servlets.news;

import java.io.IOException;
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
 * Servlet implementation class readNewsFormServlet
 */
@WebServlet("/readNews")
public class readNewsFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
private NewService newService;
	
	public void init() {
		newService = new NewService();	
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public readNewsFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			showFormReadNews(request,response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void showFormReadNews (HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		News selected_News = newService.getNews(id);
		List<News> someNews = newService.getSomeNews(id);
		System.out.println(someNews);
		RequestDispatcher dispatcher = request.getRequestDispatcher("read-News.jsp");
	request.setAttribute("selected_News",selected_News );
		request.setAttribute("someNews",someNews );
		dispatcher.forward(request, response);
	} 

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
