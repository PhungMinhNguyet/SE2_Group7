package com.servlets.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.models.User;
import com.service.UserService;

/**
 * Servlet implementation class updateUserServlet
 */
@WebServlet("/update")
public class updateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private UserService userService;
	
	public void init() {
		userService = new UserService();	
	}
   
    public updateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	private void updateUser(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException, SQLException {
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		int id = Integer.parseInt(request.getParameter("id"));
		User user = new User(id,fullname, email, password);
		
		userService.updateUser(user);
		
		response.sendRedirect("listuser");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			updateUser(request,response);
		} catch (IOException | SQLException e) {
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
