package com.servlets.news;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.models.News;
import com.models.User;
import com.service.NewService;
import com.service.UserService;

/**
 * Servlet implementation class UpdateNewsServlet
 */
@WebServlet("/updateNews")
public class UpdateNewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
private NewService newService;
	
	public void init() {
		newService = new NewService();	
	}

    /**
     * @see HttpServlet#HttpServlet()
     * 
     */
    public UpdateNewsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			updateNew(request,response);
		} catch (IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void updateNew(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException, SQLException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int id = Integer.parseInt(request.getParameter("id"));
		News exist_new = new News(id,title, content);
		newService.updateNews(exist_new);
	
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
