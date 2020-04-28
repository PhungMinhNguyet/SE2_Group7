package com.servlets.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.service.UserService;
import com.models.User;

/**
 * Servlet implementation class insertUserServlet
 */
@WebServlet("/insert")
public class insertUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UserService userService;
	
	public void init() {
		userService = new UserService();	
	}
    
	
    public insertUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			insertUser(request,response);
		} catch (IOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void insertUser (HttpServletRequest request, HttpServletResponse response)  throws IOException, SQLException {
		
		String fullname = request.getParameter("fullname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User newUser = new User(fullname, email, password);
		
		 userService.insertUser(newUser);
		response.sendRedirect("listuser");
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
