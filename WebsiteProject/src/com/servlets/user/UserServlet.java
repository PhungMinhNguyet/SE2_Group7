package com.servlets.user;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.models.User;
import com.service.UserService;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/listuser")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	public void init() {
		new UserService();	
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
				try {
					listUser(request, response);
				} catch (ServletException | IOException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
		}
	private void listUser(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException,SQLException {
		List<User> listUser = UserService.getAllUsers();
		request.setAttribute("listUser", listUser);
		RequestDispatcher dispatcher = request.getRequestDispatcher("userList.jsp");
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
