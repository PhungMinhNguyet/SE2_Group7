package com.servlets.news;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.models.News;
import com.service.NewService;


/**
 * Servlet implementation class editFormNewsServlet
 */
@WebServlet("/editNews")
public class editFormNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
private NewService newService;
	
	public void init() {
		newService = new NewService();	
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editFormNewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			showEditForm(request,response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	private void showEditForm (HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		News exist_new = newService.getNews(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-news.jsp");
		request.setAttribute("exist_new",exist_new );
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
