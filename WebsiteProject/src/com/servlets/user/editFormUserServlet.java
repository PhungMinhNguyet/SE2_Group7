package com.servlets.user;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.models.User;
import com.service.UserService;

/**
 * Servlet implementation class editUserServlet
 */
@WebServlet("/edit")
public class editFormUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private UserService userService;
	
	public void init() {
		userService = new UserService();	
	}
   
    public editFormUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	private void showEditForm (HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		User existUser = userService.selectUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-user.jsp");
		request.setAttribute("user", existUser);
		dispatcher.forward(request, response);
		
	} 
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			showEditForm(request,response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
