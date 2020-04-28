package com.servlets.vietnam;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.models.VietNam;
import com.service.VietNamService;

/**
 * Servlet implementation class editFormCityServlet
 */
@WebServlet("/editCity")
public class editFormCityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VietNamService vn;

	public void init() {
		vn = new VietNamService();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public editFormCityServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			showEditForm(request,response);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void showEditForm (HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		VietNam city = vn.selectCity(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("edit-city.jsp");
		request.setAttribute("city",city );
		dispatcher.forward(request, response);
		
	} 

}
