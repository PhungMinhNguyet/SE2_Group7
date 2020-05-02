package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.client.ClientConfig;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.models.User;
import com.models.VietNam;
import com.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String vnUrl = "http://localhost:8080/WebsiteProject/rest/vn";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();

		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			
				viewLogin(request, response);
			

		} catch (Exception e) {
			e.printStackTrace();

		}
	}

	public void viewLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("log-in.jsp");
		dispatcher.forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = new User();
		user.setEmail(email);
		user.setPassword(password);

		try {
			if (UserService.validate(user)) {
				List<VietNam> listCity = new ArrayList<>();
				ClientConfig config = new ClientConfig();
				Client client = ClientBuilder.newClient(config);
				WebTarget target = client.target(vnUrl);
				String res = target.request().accept(MediaType.APPLICATION_JSON).get(String.class);
				try {
					JSONArray myResponse = new JSONArray(res.toString());
					for (int i = 0; i < 10; i++) {
						JSONObject json = new JSONObject(myResponse.get(i).toString());
						int cityId = (int) json.get("cityId");
						String cityName = (String) json.get("cityName");
						int beingTreated = (int) json.get("beingTreated");
						int cityCases = (int) json.get("cityCases");
						int cityRecovered = (int) json.get("cityRecovered");
						int cityDeaths = (int) json.get("cityDeath");
						VietNam vn1 = new VietNam(cityId, cityName, cityCases, beingTreated, cityRecovered, cityDeaths);
						listCity.add(vn1);
					}
					request.setAttribute("listCity", listCity);
					RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
					dispatcher.forward(request, response);
					HttpSession session = request.getSession();
					session.setAttribute("email", email);
				} catch (JSONException e) {
					e.printStackTrace();
				}

			} else {
				response.sendRedirect("login");
				String message = "Invalid email/password";
				request.setAttribute("message", message);

			}
		} catch (ClassNotFoundException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}


}