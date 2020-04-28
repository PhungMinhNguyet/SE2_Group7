package com.servlets.news;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.models.News;
import com.service.NewService;


/**
 * Servlet implementation class insertNewServlet
 */
@WebServlet("/add")
public class insertNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NewService newService;

	public void init() {
		newService = new NewService();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertNewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			insertNew(request,response);
		} catch (IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
private void insertNew (HttpServletRequest request, HttpServletResponse response)  throws IOException, SQLException {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		
		News aNew = new News(title, content);
		
		 newService.insertNews(aNew);
		response.sendRedirect("listNew");
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
