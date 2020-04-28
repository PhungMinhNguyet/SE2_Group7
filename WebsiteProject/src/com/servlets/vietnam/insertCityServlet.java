package com.servlets.vietnam;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.models.VietNam;
import com.service.VietNamService;

/**
 * Servlet implementation class insertCityServlet
 */
@WebServlet("/insertCity")
public class insertCityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private VietNamService vn;

	public void init() {
		vn = new VietNamService();
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public insertCityServlet() {
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
			insertCity(request,response);
		} catch (IOException | SQLException e) {
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

	private void insertCity(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		String cityName = request.getParameter("cityName");
		int cityCases = Integer.parseInt(request.getParameter("cityCases"));
		int beingTreated = Integer.parseInt(request.getParameter("beingTreated"));
		int cityRecovered = Integer.parseInt(request.getParameter("cityRecovered"));
		int cityDeaths = Integer.parseInt(request.getParameter("cityDeaths"));
		VietNam city = new VietNam(cityName, cityCases, beingTreated, cityRecovered, cityDeaths);
		vn.insertCity(city);
		response.sendRedirect("vietnam");
	}

}
