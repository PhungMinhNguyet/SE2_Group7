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

import com.models.VietNam;

/**
 * Servlet implementation class adminServlet
 */
@WebServlet("/admin")
public class adminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static String vnUrl = "http://localhost:8080/WebsiteProject/rest/vn";
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			viewAdmin(request, response);
		

	} catch (Exception e) {
		e.printStackTrace();

	}	
		}
	
	public void viewAdmin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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
		} catch (JSONException e) {
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
